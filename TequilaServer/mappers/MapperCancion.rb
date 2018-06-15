require_relative '/home/alan/Documents/Git/TequilaServer/TequilaServer/datos/Conexion.rb' 
require '/home/alan/Documents/Git/TequilaServer/TequilaServer/red/gen-rb/servicios_types.rb'

class MapperCancion < Conexion
	
	def obtener_canciones 
		# Definimos una lista que contendra los resultados de la consulta 
		canciones = [] 
		# Igualamos una variable con el método query heredado de la clase Conexión
		# pasando como parametro la consulta que deseamos realizar. 
		consulta = @@conexion.query("SELECT * from Cancion")
		
		# Iniciamos un ciclo donde se procesa cada registro de la consulta
		consulta.each do |registro|
	      registro["idCancion"] = "NULL" if registro["idCancion"].nil?
	      registro["titulo"] = "NULL" if registro["titulo"].nil?
	      registro["ruta"] = "NULL" if registro["ruta"].nil?
	      registro["idAlbum"] = "NULL" if registro["idAlbum"].nil?
	      # Creamos un objeto canción para almacenar los datos recuperados de la consulta
	      cancion = Services::Cancion.new 
	      cancion.idCancion = registro["idCancion"]
	      cancion.titulo = registro["titulo"]
	      cancion.ruta = registro["ruta"]
	      cancion.idAlbum = registro["idAlbum"]
	      #Agregamos la canción a la lista
	      canciones << cancion
   		end

   		consulta.free

   		rescue Mysql2::Error => e
   			puts e
   			puts "Error code: #{e.errno}"
		    puts "Error message: #{e.error}"
		    reconnect!
	   	ensure
	   	@@conexion.close if @@conexion
	   	# Retornamos la lista con las canciones recuperadas
	   	return canciones 
	end
end
