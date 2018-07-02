require_relative 'datos/Conexion' 
#require '/home/esmeralda/Documentos/TequilaServer/TequilaServer/gen-rb/servicios_types.rb'
require '/Users/alan/Documents/GitHub/TequilaServer/TequilaServer/gen-rb/servicios_types.rb'

class MapperAlbum
	def obtener_albumes_usuario(correo) 
		albumes = [] 
		begin
			conexion = Conexion.new
			con = conexion.conectar
			consulta = con.prepare("SELECT Album.idAlbum, Album.titulo, Album.imagenAlbum, Album.correo, 
				Album.anioLanzamiento, Album.companiaDiscografica, Usuario.nombre 
				from Album join Cancion join Biblioteca join Usuario 
				where Usuario.correo = Album.correo and Cancion.idAlbum = Album.idAlbum and 
				Cancion.idCancion = Biblioteca.idCancion and Biblioteca.correo = ?")
			resultado = consulta.execute(correo)
			
			resultado.each do |registro|
				registro["idAlbum"] = "NULL" if registro["idAlbum"].nil?
				registro["titulo"] = "NULL" if registro["titulo"].nil?
				registro["imagenAlbum"] = "NULL" if registro["imagenAlbum"].nil?
				registro["correo"] = "NULL" if registro["correo"].nil?
				registro["anioLanzamiento"] = "NULL" if registro["anioLanzamiento"].nil?
				registro["companiaDiscografica"] = "NULL" if registro["companiaDiscografica"].nil?
				registro["nombre"] = "NULL" if registro["nombre"].nil?

				album = AlbumSL.new 
				album.idAlbum = registro["idAlbum"]
				album.titulo = registro["titulo"]
				album.imagenAlbum = registro["imagenAlbum"]
				album.nombreArtista = registro["nombre"]
				album.correo = registro["correo"]
				album.anioLanzamiento = registro["anioLanzamiento"]
				album.companiaDiscografica = registro["companiaDiscografica"]
				albumes << album
	   		end

	   		resultado.free

   		rescue Mysql2::Error => e
   			puts "Error code: #{e.errno}"
		    puts "Error message: #{e.error}"
	   	ensure
	   		con.close if con
	   	end
	   	albumes 
	end


	def obtener_canciones_album(idAlbum) 
		canciones = [] 
		begin
			conexion = Conexion.new
			con = conexion.conectar
			consulta = con.prepare("SELECT Cancion.idCancion, Cancion.titulo as nombreCancion, 
			Cancion.ruta,  Album.titulo as nombreAlbum, Album.idAlbum, Album.anioLanzamiento, 
			Album.companiaDiscografica, Album.imagenAlbum, Usuario.nombre as nombreUsuario, 
			Genero.idGenero, Genero.nombreGenero, Usuario.correo, 
			Biblioteca.puntuacion, Biblioteca.descargada  
			from Cancion join Album join Usuario join Genero join Biblioteca
			where Cancion.idAlbum = Album.idAlbum and Genero.idGenero = Cancion.idGenero 
			and Album.correo = Usuario.correo and Cancion.idCancion = Biblioteca.idCancion and 
			Cancion.idAlbum = ?")
			resultado = consulta.execute(idAlbum)
			
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

	   		consulta.free

   		rescue Mysql2::Error => e
   			puts "Error code: #{e.errno}"
		    puts "Error message: #{e.error}"
	   	ensure
	   		con.close if con
	   	end 
	   	canciones 
	end

	def obtener_albumes_artista(correo) 
		albumes = [] 
		begin
			conexion = Conexion.new
			con = conexion.conectar
			consulta = con.prepare("SELECT Album.idAlbum, Album.titulo, Album.imagenAlbum, Album.correo, 
				Album.anioLanzamiento, Album.companiaDiscografica
				from Album join Usuario 
				where Album.correo = ? group by Album.idAlbum")
			resultado = consulta.execute(correo)
			
			resultado.each do |registro|
				registro["idAlbum"] = "NULL" if registro["idAlbum"].nil?
				registro["titulo"] = "NULL" if registro["titulo"].nil?
				registro["imagenAlbum"] = "NULL" if registro["imagenAlbum"].nil?
				registro["correo"] = "NULL" if registro["correo"].nil?
				registro["anioLanzamiento"] = "NULL" if registro["anioLanzamiento"].nil?
				registro["companiaDiscografica"] = "NULL" if registro["companiaDiscografica"].nil?

				album = AlbumSL.new 
				album.idAlbum = registro["idAlbum"]
				album.titulo = registro["titulo"]
				album.imagenAlbum = registro["imagenAlbum"]
				album.correo = registro["correo"]
				album.anioLanzamiento = registro["anioLanzamiento"]
				album.companiaDiscografica = registro["companiaDiscografica"]
				albumes << album
	   		end

	   		resultado.free

   		rescue Mysql2::Error => e
   			puts "Error code: #{e.errno}"
		    puts "Error message: #{e.error}"
	   	ensure
	   		con.close if con
	   	end
	   	albumes 
	end

	def obtener_canciones_album_artista(idAlbum) 
		canciones = [] 
		begin
			conexion = Conexion.new
			con = conexion.conectar
			consulta = con.prepare("SELECT Cancion.idCancion, Cancion.titulo as nombreCancion, 
			Cancion.ruta,  Album.titulo as nombreAlbum, Album.idAlbum, Album.anioLanzamiento, 
			Album.companiaDiscografica, Album.imagenAlbum, Genero.idGenero, Genero.nombreGenero, 
			Usuario.correo from Cancion join Album join Usuario join Genero join Biblioteca
			where Cancion.idAlbum = Album.idAlbum and Genero.idGenero = Cancion.idGenero 
			and Album.correo = Usuario.correo and 
			Cancion.idAlbum = ?")
			resultado = consulta.execute(idAlbum)
			
			resultado.each do |registro|
				registro["idCancion"] = "NULL" if registro["idCancion"].nil?
				registro["nombreCancion"] = "NULL" if registro["nombreCancion"].nil?
				registro["ruta"] = "NULL" if registro["ruta"].nil?
				registro["nombreAlbum"] = "NULL" if registro["nombreAlbum"].nil?
				registro["idAlbum"] = "NULL" if registro["idAlbum"].nil?
				registro["imagenAlbum"] = "NULL" if registro["imagenAlbum"].nil?
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

	def insertar_album(album) 
		var = false
		begin 
			conexion = Conexion.new
			con = conexion.conectar
			consulta = con.prepare("insert into Album (titulo, imagenAlbum, correo, anioLanzamiento, companiaDiscografica)values (?,?,?,?,?)")
			consulta.execute(album.titulo, album.imagenAlbum, album.correo, album.anioLanzamiento, album.companiaDiscografica)
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
