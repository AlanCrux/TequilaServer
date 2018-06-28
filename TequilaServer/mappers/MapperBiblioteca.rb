require_relative 'datos/Conexion' 
#require '/home/esmeralda/Documentos/TequilaServer/TequilaServer/gen-rb/servicios_types.rb'
require '/Users/alan/Documents/GitHub/TequilaServer/TequilaServer/gen-rb/servicios_types.rb'

class MapperBiblioteca

	def insertar_cancion_biblioteca(biblioteca) 
			var = false
			begin 
				conexion = Conexion.new
				con = conexion.conectar
				consulta = con.prepare("insert into Biblioteca values (?,?)")
				consulta.execute(biblioteca.correo, biblioteca.idCancion)
		   		var = true
	   		rescue Mysql2::Error => e
	   			puts e
	   			puts "Error code: #{e.errno}"
			    puts "Error message: #{e.error}"
			    var = false
		   	ensure
		   		con.close if con
			end 
			var
	end

	def eliminar_cancion_biblioteca(idCancion) 
		var = false
		begin 
			conexion = Conexion.new
			con = conexion.conectar
			consulta = con.prepare("delete from Biblioteca where idCancion = ?")
			consulta.execute(idCancion)
	   		
	   		var = true
   		rescue Mysql2::Error => e
   			puts e
   			puts "Error code: #{e.errno}"
		    puts "Error message: #{e.error}"
		    var = false
	   	ensure
	   		con.close if con
		end 
		var
	end

end
