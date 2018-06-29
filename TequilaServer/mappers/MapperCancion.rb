require_relative 'datos/Conexion' 
#require '/home/esmeralda/Documentos/TequilaServer/TequilaServer/gen-rb/servicios_types.rb'
require '/Users/alan/Documents/GitHub/TequilaServer/TequilaServer/gen-rb/servicios_types.rb'

class MapperCancion
	def obtener_canciones_filtradas(criterio) 
		canciones = [] 
		begin
			criterio = "%"+criterio+"%"
			conexion = Conexion.new
			con = conexion.conectar
			consulta = con.prepare("SELECT Cancion.idCancion, Cancion.titulo as nombreCancion, 
				Cancion.ruta,  Album.titulo as nombreAlbum, Album.idAlbum, Album.anioLanzamiento,
				Album.companiaDiscografica, Album.imagenAlbum, 
				Usuario.nombre as nombreUsuario, Genero.idGenero, Genero.nombreGenero,  
				Usuario.correo from Cancion join Album join Usuario join Genero  
				where Cancion.idAlbum = Album.idAlbum and Genero.idGenero = Cancion.idGenero 
				and Album.correo = Usuario.correo and Cancion.titulo LIKE ?")
			resultado = consulta.execute(criterio)
			
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


	def obtener_canciones_biblioteca(correo) 
		canciones = [] 
		begin
			conexion = Conexion.new
			con = conexion.conectar
			consulta = con.prepare("SELECT Cancion.idCancion, Cancion.titulo as nombreCancion, 
				Cancion.ruta,  Album.titulo as nombreAlbum, Album.idAlbum, Album.anioLanzamiento,
				Album.companiaDiscografica, Album.imagenAlbum, 
				Usuario.nombre as nombreUsuario,  Genero.idGenero, Genero.nombreGenero,	Usuario.correo, 
				Biblioteca.puntuacion, Biblioteca.descargada  
				from Cancion join Album join Usuario join Genero join Biblioteca
				where Cancion.idAlbum = Album.idAlbum and Genero.idGenero = Cancion.idGenero 
				and Album.correo = Usuario.correo and Cancion.idCancion = Biblioteca.idCancion and 
				Biblioteca.correo = ?")
			resultado = consulta.execute(correo)
			
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

	def obtener_canciones_del_artista(correo) 
		canciones = [] 
		begin
			conexion = Conexion.new
			con = conexion.conectar
			consulta = con.prepare("SELECT Cancion.idCancion, Cancion.titulo as nombreCancion, 
				Cancion.ruta,  Album.titulo as nombreAlbum, Album.idAlbum, Album.anioLanzamiento,
				Album.companiaDiscografica, Album.imagenAlbum, 
				Usuario.nombre as nombreUsuario,  Genero.idGenero, Genero.nombreGenero,	Usuario.correo
				from Cancion join Album join Usuario join Genero
				where Cancion.idAlbum = Album.idAlbum and Genero.idGenero = Cancion.idGenero 
				and Album.correo = Usuario.correo and Usuario.correo = ?")
			resultado = consulta.execute(correo)
			
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

	def insertar_cancion(cancion) 
		var = false
		begin 
			conexion = Conexion.new
			con = conexion.conectar
			consulta = con.prepare("insert into Cancion (titulo, ruta, idAlbum, idGenero)values (?,?,?,?)")
			consulta.execute(cancion.titulo, cancion.ruta, cancion.idAlbum, cancion.idGenero)
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


end
