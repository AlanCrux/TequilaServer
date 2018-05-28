require_relative '/Users/alan/Documents/GitHub/TequilaServer/TequilaServer/datos/Conexion.rb' 

class MapperCancion < Conexion
	
	def obtener_canciones 
		consulta = @@conexion.query("SELECT * from Cancion")
		
		consulta.each do |registro|
	      registro["idCancion"] = "NULL" if registro["idCancion"].nil?
	      registro["titulo"] = "NULL" if registro["titulo"].nil?
	      registro["ruta"] = "NULL" if registro["ruta"].nil?
	      registro["idAlbum"] = "NULL" if registro["idAlbum"].nil?
	      puts "id: #{registro["idCancion"]}"
	      puts "Nombre: #{registro["titulo"]}"
	      puts "ruta: #{registro["ruta"]}"
	      puts "idAlbum: #{registro["idAlbum"]}"
   		end

   		consulta.free

   		rescue Mysql2::Error => e
   			puts "Error code: #{e.errno}"
		    puts "Error message: #{e.error}"
	   	ensure
	   	@@conexion.close if @@conexion
	end
end

prueba = MapperCancion.new 
prueba.obtener_canciones
