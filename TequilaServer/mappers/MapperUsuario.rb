require_relative 'datos/Conexion' 
#require '/home/esmeralda/Documentos/TequilaServer/TequilaServer/gen-rb/servicios_types.rb'
require '/Users/alan/Documents/GitHub/TequilaServer/TequilaServer/gen-rb/servicios_types.rb'

class MapperUsuario
	def obtener_usuario(correo) 
		usuario = Usuario.new
		begin
			conexion = Conexion.new
			con = conexion.conectar 
			consulta = con.prepare("select * from Usuario where correo = ?")
			resultado = consulta.execute(correo)
			
			resultado.each do |registro|
		      registro["correo"] = "NULL" if registro["correo"].nil?
		      registro["nombre"] = "NULL" if registro["nombre"].nil?
		      registro["clave"] = "NULL" if registro["clave"].nil?
		      registro["tipo"] = "NULL" if registro["tipo"].nil?
		      registro["foto"] = "NULL" if registro["foto"].nil?

		      usuario.correo = registro["correo"]
		      usuario.nombre = registro["nombre"]
		      usuario.clave = registro["clave"]
		      usuario.tipo = registro["tipo"]
		      usuario.foto = registro["foto"]
	   		end

	   		resultado.free

   		rescue Mysql2::Error => e
   			puts e
   			puts "Error code: #{e.errno}"
		    puts "Error message: #{e.error}"
	   	ensure
	   		con.close if con
	   	end
	   	usuario	
	end

	def insertar_usuario(usuario) 
		var = false
		begin 
			conexion = Conexion.new
			con = conexion.conectar
			consulta = con.prepare("insert into Usuario values (?,?,?,?,?)")
			consulta.execute(usuario.correo, usuario.nombre, usuario.clave, usuario.tipo, usuario.foto)
	   		
	   		var = true
   		rescue Mysql2::Error => e
   			puts e
   			puts "Error code: #{e.errno}"
		    puts "Error message: #{e.error}"
		    var = false
	   	ensure
	   		con.close if con
		end 
		var
	end

def obtener_artistas_usuario(correo) 
		artistas = [] 
		begin
			conexion = Conexion.new
			con = conexion.conectar
			consulta = con.prepare("select Usuario.correo, Usuario.nombre, Usuario.foto
				from Usuario join Album join Cancion join Biblioteca
				where Usuario.correo = Album.correo and Album.idAlbum = Cancion.idAlbum and 
				Cancion.idCancion = Biblioteca.idCancion and Biblioteca.correo = ?")
			resultado = consulta.execute(correo)
			
			resultado.each do |registro|
				registro["nombre"] = "NULL" if registro["nombre"].nil?
				registro["foto"] = "NULL" if registro["foto"].nil?
				registro["correo"] = "NULL" if registro["correo"].nil?

				usuario = Usuario.new 
				usuario.nombre = registro["nombre"]
				usuario.foto = registro["foto"]
				usuario.correo = registro["correo"]

				artistas << usuario
			end

	   		resultado.free

   		rescue Mysql2::Error => e
   			puts "Error code: #{e.errno}"
		    puts "Error message: #{e.error}"
	   	ensure
	   		con.close if con
	   	end
	   	artistas 
	end

	def obtener_canciones_artista(correoCliente, correoArtista) 
		canciones = [] 
		begin
			conexion = Conexion.new
			con = conexion.conectar
			consulta = con.prepare("SELECT Cancion.idCancion, Cancion.titulo as nombreCancion, 
			Cancion.ruta,  Album.titulo as nombreAlbum, Album.idAlbum, Album.anioLanzamiento,
			Album.companiaDiscografica, Album.imagenAlbum, 
			Usuario.nombre as nombreUsuario,  Genero.idGenero, Genero.nombreGenero,	Usuario.correo
			from Cancion join Album join Usuario join Genero join Biblioteca
			where Cancion.idAlbum = Album.idAlbum and Genero.idGenero = Cancion.idGenero and 
			Cancion.idCancion = Biblioteca.idCancion and Album.correo = Usuario.correo and Album.correo = ?
			And Biblioteca.correo = ?")
			resultado = consulta.execute(correoArtista, correoCliente)
			
			resultado.each do |registro|
				registro["idCancion"] = "NULL" if registro["idCancion"].nil?
				registro["nombreCancion"] = "NULL" if registro["nombreCancion"].nil?
				registro["ruta"] = "NULL" if registro["ruta"].nil?
				registro["nombreAlbum"] = "NULL" if registro["nombreAlbum"].nil?
				registro["idAlbum"] = "NULL" if registro["idAlbum"].nil?
				registro["imagenAlbum"] = "NULL" if registro["imagenAlbum"].nil?
				registro["nombreUsuario"] = "NULL" if registro["nombreUsuario"].nil?
				registro["idGenero"] = "NULL" if registro["idGenero"].nil?
				registro["nombreGenero"] = "NULL" if registro["nombreGenero"].nil?
				registro["correo"] = "NULL" if registro["correo"].nil?
				registro["anioLanzamiento"] = "NULL" if registro["anioLanzamiento"].nil?
				registro["companiaDiscografica"] = "NULL" if registro["companiaDiscografica"].nil?
				registro["puntuacion"] = "NULL" if registro["puntuacion"].nil?
				registro["descargada"] = "NULL" if registro["descargada"].nil?

				cancion = CancionSL.new 
				cancion.idCancion = registro["idCancion"]
				cancion.titulo = registro["nombreCancion"]
				cancion.ruta = registro["ruta"]
				cancion.album = registro["nombreAlbum"]
				cancion.artista = registro["nombreUsuario"]
				cancion.correoArtista = registro["correo"]
				cancion.idAlbum = registro["idAlbum"]
				cancion.idGenero = registro["idGenero"]
				cancion.genero = registro["nombreGenero"]
				cancion.imagenAlbum = registro["imagenAlbum"]
				cancion.anioLanzamiento = registro["anioLanzamiento"]
				cancion.companiaDiscografica = registro["companiaDiscografica"]
				cancion.puntuacion = registro["puntuacion"]
				cancion.descargada = registro["descargada"]
				canciones << cancion
	   		end

	   		resultado.free

   		rescue Mysql2::Error => e
   			puts "Error code: #{e.errno}"
		    puts "Error message: #{e.error}"
	   	ensure
	   		con.close if con
	   	end 
	   	canciones 
	end


end
