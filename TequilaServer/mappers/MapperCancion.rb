
# Requiere la clase conexión 
require_relative 'datos/Conexion' 
# Requiere la clase tipos generada por Thrift, aqui estan los objetos del dominio
require '/home/esmeralda/Documentos/TequilaServer/TequilaServer/gen-rb/servicios_types.rb'

class MapperCancion

	#Devuelve una lista de canciones cuyo titulo coincida con un criterio
	def obtener_canciones_filtradas(criterio) 
		criterio = "%"+criterio+"%"
		# Definimos una lista que contendra los resultados de la consulta 
		canciones = [] 
		# Igualamos una variable con un objeto conexion de la clase conexión
		conexion = Conexion.new
		# Invocamos el método conectar de la clase con, abre una conexión a la BD
		con = conexion.conectar
		# Preparamos la consulta 
		consulta = con.prepare("SELECT Cancion.idCancion, Cancion.titulo as nombreCancion, Cancion.ruta, 
			Album.titulo as nombreAlbum, Album.idAlbum, Artista.nombre as nombreArtista, Genero.idGenero, Genero.nombreGenero, 
			Artista.correo from Cancion join Album join Artista join Genero 
			where Cancion.idAlbum = Album.idAlbum and Album.correo = Artista.correo and Cancion.titulo LIKE ?")
		# Pasamos los parametros a la consulta y ejecutamos, el resultado se guarda en una variable
		resultado = consulta.execute(criterio)
		
		# Iniciamos un ciclo donde se procesa cada registro de la consulta
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

	      # Creamos un objeto canción para almacenar los datos recuperados de la consulta
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

	      #Agregamos la canción a la lista
	      canciones << cancion
   		end

   		consulta.free

   		rescue Mysql2::Error => e
   			puts e
   			puts "Error code: #{e.errno}"
		    puts "Error message: #{e.error}"
	   	ensure
	   		# Cerramos la conexión
	   		con.close if con
	   		# Retornamos la lista con las canciones recuperadas
	   	return canciones 
	end


	def obtener_canciones_biblioteca(criterio) 
		# Definimos una lista que contendra los resultados de la consulta 
		canciones = [] 
		# Igualamos una variable con un objeto conexion de la clase conexión
		conexion = Conexion.new
		# Invocamos el método conectar de la clase con, abre una conexión a la BD
		con = conexion.conectar
		# Preparamos la consulta 
		consulta = con.prepare("SELECT Cancion.idCancion, Cancion.titulo as nombreCancion, Cancion.ruta, 
			Album.titulo as nombreAlbum, Album.idAlbum, Artista.nombre as nombreArtista, Genero.idGenero, Genero.nombreGenero, 
			Artista.correo from Cancion join Album join Artista join Genero 
			where Cancion.idAlbum = Album.idAlbum and Album.correo = Artista.correo 
			Consumidor.correo = Biblioteca.correo and Cancion.idCancion = Biblioteca.idCancion and 
			Biblioteca.correo = ?")
		# Pasamos los parametros a la consulta y ejecutamos, el resultado se guarda en una variable
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

	      # Creamos un objeto canción para almacenar los datos recuperados de la consulta
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

	      #Agregamos la canción a la lista
	      canciones << cancion
   		end

   		consulta.free

   		rescue Mysql2::Error => e
   			puts e
   			puts "Error code: #{e.errno}"
		    puts "Error message: #{e.error}"
	   	ensure
	   		# Cerramos la conexión
	   		con.close if con
	   		# Retornamos la lista con las canciones recuperadas
	   	return canciones 
	end

end
