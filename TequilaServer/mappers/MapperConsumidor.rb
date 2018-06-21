require_relative 'datos/Conexion' 
#require '/home/esmeralda/Documentos/TequilaServer/TequilaServer/gen-rb/servicios_types.rb'
require '/Users/alan/Documents/GitHub/TequilaServer/TequilaServer/gen-rb/servicios_types.rb'

class MapperConsumidor
	def obtener_consumidor(correo) 
		consumidor = Consumidor.new
		begin
			conexion = Conexion.new
			con = conexion.conectar 
			consulta = con.prepare("select * from Consumidor where correo = ?")
			resultado = consulta.execute(correo)
			
			resultado.each do |registro|
		      registro["correo"] = "NULL" if registro["correo"].nil?
		      registro["nombre"] = "NULL" if registro["nombre"].nil?
		      registro["clave"] = "NULL" if registro["clave"].nil?

		      consumidor.correo = registro["correo"]
		      consumidor.nombre = registro["nombre"]
		      consumidor.clave = registro["clave"]
	   		end

	   		resultado.free

   		rescue Mysql2::Error => e
   			puts e
   			puts "Error code: #{e.errno}"
		    puts "Error message: #{e.error}"
	   	ensure
	   		con.close if con
	   	end
	   	consumidor	
	end

	def insertar_consumidor(consumidor) 
		begin 
			conexion = Conexion.new
			con = conexion.conectar
			consulta = con.prepare("insert into Consumidor values (?,?,?)")
			consulta.execute(consumidor.correo, consumidor.nombre, consumidor.clave)
	   		consulta.free
	   		true
   		rescue Mysql2::Error => e
   			puts e
   			puts "Error code: #{e.errno}"
		    puts "Error message: #{e.error}"
		    false
	   	ensure
	   		con.close if con
		end 
	end
end
