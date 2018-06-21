$:.push('gen-rb')
$:.push('mappers')
$:.unshift '../../lib/rb/lib'

require 'thrift'
require 'servicios'
require 'MapperCancion'
require 'MapperUsuario'

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

end

control = ControlServicios.new()
processor = Servicios::Processor.new(control)
transport = Thrift::ServerSocket.new(9090)
transportFactory = Thrift::BufferedTransportFactory.new()
server = Thrift::ThreadPoolServer.new(processor, transport, transportFactory)

puts "--- Servidor en línea ---"
server.serve()
puts "Termiando." 

