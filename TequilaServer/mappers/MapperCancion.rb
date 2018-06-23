require_relative 'datos/Conexion' 
require '/home/esmeralda/Documentos/TequilaServer/TequilaServer/gen-rb/servicios_types.rb'
#require '/Users/alan/Documents/GitHub/TequilaServer/TequilaServer/gen-rb/servicios_types.rb'

class MapperCancion
	def obtener_canciones_filtradas(criterio) 
		canciones = [] 
		begin
			criterio = "%"+criterio+"%"
			conexion = Conexion.new
			con = conexion.conectar
			consulta = con.prepare("SELECT Cancion.idCancion, Cancion.titulo as nombreCancion, 
				Cancion.ruta,  Album.titulo as nombreAlbum, Album.idAlbum, Album.imagenAlbum, 
				Usuario.nombre as nombreUsuario,  Genero.idGenero, Genero.nombreGenero,  
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
				registro["puntuacion"] = "NULL" if registro["puntuacion"].nil?


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
				cancion.puntuacion = registro["puntuacion"]
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
			con = Conexion.new
			consulta = con.prepare("SELECT Cancion.idCancion, Cancion.titulo as nombreCancion, Cancion.ruta, 
				Album.titulo as nombreAlbum, Album.idAlbum, Album.imagenAlbum, Usuario.nombre as nombreUsuario, Genero.idGenero, Genero.nombreGenero, 
				Usuario.correo, Puntuacion.puntuacion from Cancion join Album join Usuario join Genero join Puntuacion  
				where Cancion.idAlbum = Album.idAlbum and Album.correo = Usuario.correo and 
				Usuario.correo = Biblioteca.correo and Cancion.idCancion = Biblioteca.idCancion and 
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
				registro["puntuacion"] = "NULL" if registro["puntuacion"].nil?
				
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
				cancion.puntuacion = registro["puntuacion"]
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



end
