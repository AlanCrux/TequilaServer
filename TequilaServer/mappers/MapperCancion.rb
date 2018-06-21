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
			consulta = con.prepare("SELECT Cancion.idCancion, Cancion.titulo as nombreCancion, Cancion.ruta, 
				Album.titulo as nombreAlbum, Album.idAlbum, Artista.nombre as nombreArtista, Genero.idGenero, Genero.nombreGenero, 
				Artista.correo from Cancion join Album join Artista join Genero 
				where Cancion.idAlbum = Album.idAlbum and Album.correo = Artista.correo and Cancion.titulo LIKE ?")
			resultado = consulta.execute(criterio)
			
			resultado.each do |registro|
				registro["idCancion"] = "NULL" if registro["idCancion"].nil?
				registro["nombreCancion"] = "NULL" if registro["nombreCancion"].nil?
				registro["ruta"] = "NULL" if registro["ruta"].nil?
				registro["nombreAlbum"] = "NULL" if registro["nombreAlbum"].nil?
				registro["idAlbum"] = "NULL" if registro["idAlbum"].nil?
				registro["nombreArtista"] = "NULL" if registro["nombreArtista"].nil?
				registro["idGenero"] = "NULL" if registro["idGenero"].nil?
				registro["nombreGenero"] = "NULL" if registro["nombreGenero"].nil?
				registro["correo"] = "NULL" if registro["correo"].nil?

				cancion = CancionSL.new 
				cancion.idCancion = registro["idCancion"]
				cancion.titulo = registro["nombreCancion"]
				cancion.ruta = registro["ruta"]
				cancion.genero = registro["genero"]
				cancion.album = registro["nombreAlbum"]
				cancion.artista = registro["nombreArtista"]
				cancion.correoArtista = registro["correo"]
				cancion.idAlbum = registro["idAlbum"]
				cancion.idGenero = registro["idGenero"]
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


	def obtener_canciones_biblioteca(criterio) 
		canciones = [] 
		begin
			con = Conexion.new
			consulta = con.prepare("SELECT Cancion.idCancion, Cancion.titulo as nombreCancion, Cancion.ruta, 
				Album.titulo as nombreAlbum, Album.idAlbum, Artista.nombre as nombreArtista, Genero.idGenero, Genero.nombreGenero, 
				Artista.correo from Cancion join Album join Artista join Genero 
				where Cancion.idAlbum = Album.idAlbum and Album.correo = Artista.correo 
				Consumidor.correo = Biblioteca.correo and Cancion.idCancion = Biblioteca.idCancion and 
				Biblioteca.correo = ?")
			resultado = consulta.execute(criterio)
			
			resultado.each do |registro|
				registro["idCancion"] = "NULL" if registro["idCancion"].nil?
				registro["nombreCancion"] = "NULL" if registro["nombreCancion"].nil?
				registro["ruta"] = "NULL" if registro["ruta"].nil?
				registro["nombreAlbum"] = "NULL" if registro["nombreAlbum"].nil?
				registro["idAlbum"] = "NULL" if registro["idAlbum"].nil?
				registro["nombreArtista"] = "NULL" if registro["nombreArtista"].nil?
				registro["idGenero"] = "NULL" if registro["idGenero"].nil?
				registro["nombreGenero"] = "NULL" if registro["nombreGenero"].nil?
				registro["correo"] = "NULL" if registro["correo"].nil?

				cancion = CancionSL.new 
				cancion.idCancion = registro["idCancion"]
				cancion.titulo = registro["nombreCancion"]
				cancion.ruta = registro["ruta"]
				cancion.genero = registro["genero"]
				cancion.album = registro["nombreAlbum"]
				cancion.artista = registro["nombreArtista"]
				cancion.correoArtista = registro["correo"]
				cancion.idAlbum = registro["idAlbum"]
				cancion.idGenero = registro["idGenero"]
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
