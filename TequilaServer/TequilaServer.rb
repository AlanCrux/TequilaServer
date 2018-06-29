$:.push('gen-rb')
$:.push('mappers')
$:.unshift '../../lib/rb/lib'

require 'thrift'
require 'servicios'
require 'MapperCancion'
require 'MapperUsuario'
require 'MapperPlaylist'
require 'MapperHistorial'
require 'MapperBiblioteca'
require 'MapperAlbum'
require 'MapperGenero'



# En esta clase se define el comportamiento de todos los métodos expuestos en Thrift
class ControlServicios
	def obtenerCancionesFiltradas(criterio)
		mapper = MapperCancion.new 
		canciones = mapper.obtener_canciones_filtradas(criterio)
	end

	def obtenerUsuario(correo)
		mapper = MapperUsuario.new
		usuario = mapper.obtener_usuario(correo)
	end

	def insertarUsuario(usuario)
		mapper = MapperUsuario.new
		mapper.insertar_usuario(usuario) 
	end

	def bajarCancion(ruta)
		 var = File.read(ruta)  
		 var.bytes.to_a
	end

	def obtenerPlaylists(correo)
		mapper = MapperPlaylist.new	
		mapper.obtener_playlists(correo)
	end

	def obtenerCancionesPlaylist(idPlaylist)
		mapper = MapperPlaylist.new	
		mapper.obtener_canciones_playlist(idPlaylist)
	end

	def insertarPlaylist(playlist)
		mapper = MapperPlaylist.new	
		mapper.insertar_playlist(playlist)
	end

	def actualizarPlaylist(playlist)
		mapper = MapperPlaylist.new	
		mapper.actualizar_playlist(playlist)
	end

	def elimnarPlaylist(idPlaylist)
		mapper = MapperPlaylist.new	
		mapper.eliminar_playlist(idPlaylist)
	end

	def insertarCancionPlaylist(contenido)
		mapper = MapperPlaylist.new	
		mapper.insertar_cancion_playlist(contenido)
	end

	def elimnarCancionPlaylist(idCancion)
		mapper = MapperPlaylist.new	
		mapper.eliminar_cancion_playlist(idCancion)
	end

	def obtenerHistorial(correo)
		mapper = MapperHistorial.new	
		mapper.obtener_canciones_historial(correo) 
	end

	def insertarCancionHistorial(historial)
		mapper = MapperHistorial.new	
		mapper.insertar_cancion_historial(historial)
	end

	def eliminarCancionHistorial(idCancion)
		mapper = MapperHistorial.new	
		mapper.eliminar_cancion_historial(idCancion)
	end

	def insertarCancionBiblioteca(biblioteca)
		mapper = MapperBiblioteca.new	
		mapper.insertar_cancion_biblioteca(biblioteca)
	end

	def eliminarCancionBiblioteca(idCancion)
		mapper = MapperBiblioteca.new	
		mapper.eliminar_cancion_biblioteca(idCancion)
	end

	def obtenerAlbumesUsuario(correo)
		mapper = MapperAlbum.new	
		mapper.obtener_albumes_usuario(correo) 
	end

	def obtenerCancionesAlbum(idAlbum)
		mapper = MapperAlbum.new	
		mapper.obtener_canciones_album(idAlbum) 
	end

	def obtenerArtistasUsuario(correo)
		mapper = MapperUsuario.new	
		mapper.obtener_artistas_usuario(correo) 
	end

	def obtenerCancionesArtista(correo)
		mapper = MapperUsuario.new	
		mapper.obtener_canciones_artista(correo) 
	end

	def obtenerGenerosUsuario(correo)
		mapper = MapperGenero.new	
		mapper.obtener_generos_usuario(correo) 
	end

	def obtenerCancionesGenero(idGenero)
		mapper = MapperGenero.new	
		mapper.obtener_canciones_genero(idGenero) 
	end

	def crearRadio(idGenero)
		mapper = MapperGenero.new	
		mapper.crear_radio(idGenero)
	end

	def obtenerCancionesDelArtista(correo)
		mapper = MapperCancion.new	
		mapper.obtener_canciones_del_artista(correo) 
	end

	def obtenerAlbumesArtista(correo)
		mapper = MapperAlbum.new	
		mapper.obtener_albumes_artista(correo)
	end

	def obtenerCancionesAlbumArtista(idAlbum)
		mapper = MapperAlbum.new	
		mapper.obtener_canciones_album_artista(idAlbum)
	end

	def insertarAlbum(album)
		mapper = MapperAlbum.new	
		mapper.insertar_album(album) 
	end

	def insertarCancion(cancion)
		mapper = MapperCancion.new	
		mapper.insertar_cancion(cancion) 
	end
end

control = ControlServicios.new()
processor = Servicios::Processor.new(control)
transport = Thrift::ServerSocket.new(9090)
transportFactory = Thrift::BufferedTransportFactory.new()
server = Thrift::ThreadPoolServer.new(processor, transport, transportFactory)

puts "--- Servidor en línea ---"
server.serve()
puts "Termiando." 

