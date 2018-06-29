require_relative 'datos/Conexion' 
#require '/home/esmeralda/Documentos/TequilaServer/TequilaServer/gen-rb/servicios_types.rb'
require '/Users/alan/Documents/GitHub/TequilaServer/TequilaServer/gen-rb/servicios_types.rb'

class MapperHistorial

	def obtener_canciones_historial(correo) 
		canciones = [] 
		begin
			conexion = Conexion.new
			con = conexion.conectar
			consulta = con.prepare("SELECT Cancion.idCancion, Cancion.titulo as nombreCancion, Cancion.ruta,  Album.titulo as nombreAlbum, 
			Album.idAlbum, Album.anioLanzamiento, Album.companiaDiscografica, Album.imagenAlbum, Historial.fecha, 
			Usuario.nombre as nombreUsuario,  Genero.idGenero, Genero.nombreGenero, Usuario.correo 
			from Cancion join Album join Usuario join Genero join Historial where Cancion.idAlbum = Album.idAlbum 
			and Genero.idGenero = Cancion.idGenero and Album.correo = Usuario.correo and 
			Cancion.idCancion = Historial.idCancion and Historial.correo = ? order by Historial.fecha DESC")
			resultado = consulta.execute(correo)
			
			resultado.each do |registro|
				registro["idCancion"] = "NULL" if registro["idCancion"].nil?
				registro["nombreCancion"] = "NULL" if registro["nombreCancion"].nil?
				registro["ruta"] = "NULL" if registro["ruta"].nil?
				registro["nombreAlbum"] = "NULL" if registro["nombreAlbum"].nil?
				registro["idAlbum"] = "NULL" if registro["idAlbum"].nil?
				registro["imagenAlbum"] = "NULL" if registro["imagenAlbum"].nil?
				registro["nombreUsuario"] = "NULL" if registro["nombreUsuario"].nil?
				registro["idGenero"] = "NULL" if registro["idGenero"].nil?
				registro["nombreGenero"] = "NULL" if registro["nombreGenero"].nil?
				registro["correo"] = "NULL" if registro["correo"].nil?
				registro["fecha"] = "NULL" if registro["fecha"].nil?


				cancion = CancionSL.new 
				cancion.idCancion = registro["idCancion"]
				cancion.titulo = registro["nombreCancion"]
				cancion.ruta = registro["ruta"]
				cancion.album = registro["nombreAlbum"]
				cancion.artista = registro["nombreUsuario"]
				cancion.correoArtista = registro["correo"]
				cancion.idAlbum = registro["idAlbum"]
				cancion.idGenero = registro["idGenero"]
				cancion.genero = registro["nombreGenero"]
				cancion.imagenAlbum = registro["imagenAlbum"]
				cancion.fecha = registro["fecha"]
				canciones << cancion
	   		end

	   		resultado.free

   		rescue Mysql2::Error => e
   			puts "Error code: #{e.errno}"
		    puts "Error message: #{e.error}"
	   	ensure
	   		con.close if con
	   	end
	   	canciones 
	end

	def insertar_cancion_historial(historial) 
			var = false
			begin 
				conexion = Conexion.new
				con = conexion.conectar
				consulta = con.prepare("insert into Historial values (?,?,?)")
				consulta.execute(historial.idCancion, historial.correo, historial.fecha)
		   		
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

	def eliminar_cancion_historial(idCancion) 
		var = false
		begin 
			conexion = Conexion.new
			con = conexion.conectar
			consulta = con.prepare("delete from Historial where idCancion = ?")
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
