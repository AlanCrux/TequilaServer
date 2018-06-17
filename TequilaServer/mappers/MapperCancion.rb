
# Requiere la clase conexión 
require '/Users/alan/Documents/GitHub/TequilaServer/TequilaServer/datos/Conexion.rb' 
# Requiere la clase tipos generada por Thrift, aqui estan los objetos del dominio
require '/Users/alan/Documents/GitHub/TequilaServer/TequilaServer/red/gen-rb/servicios_types.rb'

class MapperCancion

	#Devuelve una lista de canciones cuyo titulo coincida con un criterio
	def obtener_canciones(criterio) 
		criterio = "%"+criterio+"%"
		# Definimos una lista que contendra los resultados de la consulta 
		canciones = [] 
		# Igualamos una variable con un objeto conexion de la clase conexión
		conexion = Conexion.new
		# Invocamos el método conectar de la clase con, abre una conexión a la BD
		con = conexion.conectar
		# Preparamos la consulta 
		consulta = con.prepare("SELECT * from Cancion where titulo LIKE ?")
		# Pasamos los parametros a la consulta y ejecutamos, el resultado se guarda en una variable
		resultado = consulta.execute(criterio)
		
		# Iniciamos un ciclo donde se procesa cada registro de la consulta
		resultado.each do |registro|
	      registro["idCancion"] = "NULL" if registro["idCancion"].nil?
	      registro["titulo"] = "NULL" if registro["titulo"].nil?
	      registro["ruta"] = "NULL" if registro["ruta"].nil?
	      registro["idAlbum"] = "NULL" if registro["idAlbum"].nil?
	      
	      # Creamos un objeto canción para almacenar los datos recuperados de la consulta
	      cancion = Cancion.new 
	      cancion.idCancion = registro["idCancion"]
	      cancion.titulo = registro["titulo"]
	      cancion.ruta = registro["ruta"]
	      cancion.idAlbum = "1"
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
