# Requiere la clase conexión 
require_relative 'datos/Conexion' 
# Requiere la clase tipos generada por Thrift, aqui estan los objetos del dominio
require '/Users/alan/Documents/GitHub/TequilaServer/TequilaServer/gen-rb/servicios_types.rb'

class MapperConsumidor

	def obtener_consumidor(correo) 

		# Igualamos una variable con un objeto conexion de la clase conexión
		conexion = Conexion.new
		# Invocamos el método conectar de la clase con, abre una conexión a la BD
		con = conexion.conectar
		# Preparamos la consulta 
		consulta = con.prepare("select * from Consumidor where correo = ?")
		# Pasamos los parametros a la consulta y ejecutamos, el resultado se guarda en una variable
		resultado = consulta.execute(correo)
		
		# Iniciamos un ciclo donde se procesa cada registro de la consulta
		consumidor = Consumidor.new
		resultado.each do |registro|
	      registro["correo"] = "NULL" if registro["correo"].nil?
	      registro["nombre"] = "NULL" if registro["nombre"].nil?
	      registro["clave"] = "NULL" if registro["clave"].nil?

	      # Creamos un objeto canción para almacenar los datos recuperados de la consulta
	      consumidor.correo = registro["correo"]
	      consumidor.nombre = registro["nombre"]
	      consumidor.clave = registro["clave"]
   		end

   		consulta.free

   		rescue Mysql2::Error => e
   			puts e
   			puts "Error code: #{e.errno}"
		    puts "Error message: #{e.error}"
	   	ensure
	   		# Cerramos la conexión
	   		con.close if con
	   		# Retornamos el objeto consumidor
	   	return consumidor 
	end

	def insertar_consumidor(consumidor) 
		conexion = Conexion.new
		con = conexion.conectar

		consulta = con.prepare("insert into Consumidor values (?,?,?)")

		consulta.execute(consumidor.correo, consumidor.nombre, consumidor.clave)
		
   		consulta.free

   		rescue Mysql2::Error => e
   			puts e
   			puts "Error code: #{e.errno}"
		    puts "Error message: #{e.error}"
	   	ensure
	   		# Cerramos la conexión
	   		con.close if con
	   		# Retornamos 
	   	return true 
	end

end