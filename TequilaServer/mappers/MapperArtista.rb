require_relative 'datos/Conexion' 
#require '/home/esmeralda/Documentos/TequilaServer/TequilaServer/gen-rb/servicios_types.rb'
require '/Users/alan/Documents/GitHub/TequilaServer/TequilaServer/gen-rb/servicios_types.rb'

class MapperArtista

	def obtener_artista(correo) 
		artista = Artista.new
		begin
			conexion = Conexion.new
			con = conexion.conectar
			consulta = con.prepare("select * from Artista where correo = ?")
			resultado = consulta.execute(correo)

			resultado.each do |registro|
		      registro["correo"] = "NULL" if registro["correo"].nil?
		      registro["nombre"] = "NULL" if registro["nombre"].nil?
		      registro["clave"] = "NULL" if registro["clave"].nil?

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
	   		con.close if con
	   	end
	   	artista
	end

	def insertar_artista(artista) 
		begin
			conexion = Conexion.new
			con = conexion.conectar
			consulta = con.prepare("insert into Artista values (?,?,?)")
			consulta.execute(artista.correo, artista.nombre, artista.clave)
	   		consulta.free
   			true
   		rescue Mysql2::Error => e
   			puts "Error code: #{e.errno}"
		    puts "Error message: #{e.error}"
		    false
	   	ensure
	   		con.close if con
	   	end
	end
end