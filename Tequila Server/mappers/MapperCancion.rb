require 'mysql'

class MapperCancion
	# Ubicación de la BD, Usuario, Password, Nombre de la base de datos
	conexion = Mysql.real_connect("localhost", "tequilaAdmin", "potorricodebules", "TequilaDB")

	def obtener_canciones 
		puts "Ejecutando obtener canciones"
		puts "Versión del servidor: " + conexion.get_server_info
		consulta = conexion.query("SELECT * from Cancion")
		
		consulta.each_hash do |registro|
	      registro["idCancion"] = "NULL" if registro["idCancion"].nil?
	      registro["titulo"] = "NULL" if registro["titulo"].nil?
	      registro["ruta"] = "NULL" if registro["ruta"].nil?
	      registro["idAlbum"] = "NULL" if registro["idAlbum"].nil?
	      puts "id: #{registro["titulo"]}"
   		end

   		puts "Registros obtenidos: #{consulta.num_rows}"
   		consulta.free

   		rescue Mysql::Error => e
	    puts "Error code: #{e.errno}"
	    puts "Error message: #{e.error}"
	   	ensure
	   	conexion.close if conexion
	end
end

prueba = MapperCancion.new 
prueba.obtener_canciones
