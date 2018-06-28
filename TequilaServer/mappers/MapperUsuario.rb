require_relative 'datos/Conexion' 
#require '/home/esmeralda/Documentos/TequilaServer/TequilaServer/gen-rb/servicios_types.rb'
require '/Users/alan/Documents/GitHub/TequilaServer/TequilaServer/gen-rb/servicios_types.rb'

class MapperUsuario
	def obtener_usuario(correo) 
		usuario = Usuario.new
		begin
			conexion = Conexion.new
			con = conexion.conectar 
			consulta = con.prepare("select * from Usuario where correo = ?")
			resultado = consulta.execute(correo)
			
			resultado.each do |registro|
		      registro["correo"] = "NULL" if registro["correo"].nil?
		      registro["nombre"] = "NULL" if registro["nombre"].nil?
		      registro["clave"] = "NULL" if registro["clave"].nil?
		      registro["tipo"] = "NULL" if registro["tipo"].nil?
		      registro["foto"] = "NULL" if registro["foto"].nil?

		      usuario.correo = registro["correo"]
		      usuario.nombre = registro["nombre"]
		      usuario.clave = registro["clave"]
		      usuario.tipo = registro["tipo"]
		      usuario.foto = registro["foto"]
	   		end

	   		resultado.free

   		rescue Mysql2::Error => e
   			puts e
   			puts "Error code: #{e.errno}"
		    puts "Error message: #{e.error}"
	   	ensure
	   		con.close if con
	   	end
	   	usuario	
	end

	def insertar_usuario(usuario) 
		var = false
		begin 
			conexion = Conexion.new
			con = conexion.conectar
			consulta = con.prepare("insert into Usuario values (?,?,?,?,?)")
			consulta.execute(usuario.correo, usuario.nombre, usuario.clave, usuario.tipo, usuario.foto)
	   		
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
