require_relative 'datos/Conexion' 
#require '/home/esmeralda/Documentos/TequilaServer/TequilaServer/gen-rb/servicios_types.rb'
require '/Users/alan/Documents/GitHub/TequilaServer/TequilaServer/gen-rb/servicios_types.rb'

class MapperPlaylist
	def obtener_playlists(correo) 
		playlists = [] 
		begin
			conexion = Conexion.new
			con = conexion.conectar
			consulta = con.prepare("select * from Playlist where correo = ?")
			resultado = consulta.execute(correo)
			
			resultado.each do |registro|
				registro["nombre"] = "NULL" if registro["nombre"].nil?
				registro["descripcion"] = "NULL" if registro["descripcion"].nil?
				registro["imagen"] = "NULL" if registro["imagen"].nil?
				registro["correo"] = "NULL" if registro["correo"].nil?
				registro["idPlaylist"] = "NULL" if registro["idPlaylist"].nil?


				playlist = Playlist.new 

				playlist.nombre = registro["nombre"]
				playlist.descripcion = registro["descripcion"]
				playlist.imagen = registro["imagen"]
				playlist.correo = registro["correo"]
				playlist.idPlaylist = registro["idPlaylist"]
				playlists << playlist
			end

	   		resultado.free

   		rescue Mysql2::Error => e
   			puts "Error code: #{e.errno}"
		    puts "Error message: #{e.error}"
	   	ensure
	   		con.close if con
	   	end
	   	playlists 
	end

	def obtener_canciones_playlist(idPlaylist) 
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
				and Album.correo = Usuario.correo and Cancion.idCancion = Contenido.idCancion and 
				Contenido.idPlaylist = Playlist.idPlaylist and Contenido.idPlaylist = ?")
			resultado = consulta.execute(idPlaylist)
			
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
	def insertar_playlist(playlist) 
			var = false
			begin 
				conexion = Conexion.new
				con = conexion.conectar
				consulta = con.prepare("insert into Playlist(nombre,descripcion,imagen,correo) values (?,?,?,?)")
				consulta.execute(playlist.nombre, playlist.descripcion, playlist.imagen, playlist.correo)
		   		
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

	def actualizar_playlist(playlist) 
			var = false
			begin 
				conexion = Conexion.new
				con = conexion.conectar
				consulta = con.prepare("update Playlist set nombre = ?, descripcion = ?, imagen = ?, correo = ? where idPlaylist = ?")
				consulta.execute(playlist.nombre, playlist.descripcion, playlist.imagen, playlist.correo, playlist.idPlaylist)
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

	def eliminar_playlist(idPlaylist) 
		var = false
		begin 
			conexion = Conexion.new
			con = conexion.conectar
			consulta = con.prepare("delete from Playlist where idPlaylist = ?")
			consulta.execute(idPlaylist)
	   		
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

	def insertar_cancion_playlist(contenido) 
			var = false
			begin 
				conexion = Conexion.new
				con = conexion.conectar
				consulta = con.prepare("insert into Contenido values (?,?)")
				consulta.execute(contenido.idPlaylist, contenido.idCancion)
		   		
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

	def eliminar_cancion_playlist(idCancion) 
		var = false
		begin 
			conexion = Conexion.new
			con = conexion.conectar
			consulta = con.prepare("delete from Contenido where idCancion = ?")
			consulta.execute(idCancion)
	   		
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
