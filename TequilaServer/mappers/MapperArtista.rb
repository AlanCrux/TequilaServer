
# Requiere la clase conexión 
require_relative 'datos/Conexion' 
# Requiere la clase tipos generada por Thrift, aqui estan los objetos del dominio
require '/Users/alan/Documents/GitHub/TequilaServer/TequilaServer/gen-rb/servicios_types.rb'

class MapperConsumidor

def obtener_consumidor(criterio) 

		# Igualamos una variable con un objeto conexion de la clase conexión
		conexion = Conexion.new
		# Invocamos el método conectar de la clase con, abre una conexión a la BD
		con = conexion.conectar
		# Preparamos la consulta 
		consulta = con.prepare("select * from Artista where correo = ?")
		# Pasamos los parametros a la consulta y ejecutamos, el resultado se guarda en una variable
		resultado = consulta.execute(criterio)
		
		# Iniciamos un ciclo donde se procesa cada registro de la consulta
		resultado.each do |registro|
	      registro["correo"] = "NULL" if registro["correo"].nil?
	      registro["nombre"] = "NULL" if registro["nombre"].nil?
	      registro["clave"] = "NULL" if registro["clave"].nil?

	      # Creamos un objeto canción para almacenar los datos recuperados de la consulta
	      artista = Artista.new
	      artista.correo = registro["correo"],
	      artista.nombre = registro["nombre"],
	      artista.clave = registro["clave"]

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
	   	return artista 
	end

def insertar_artista(artista) 
		conexion = Conexion.new
		con = conexion.conectar

		consulta = con.prepare("insert into Artista values (?,?,?)")

		consulta.execute(artista.correo, artista.nombre, artista.clave)
		
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