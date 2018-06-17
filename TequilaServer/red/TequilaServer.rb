$:.push('gen-rb')
$:.unshift '../../lib/rb/lib'

require 'thrift'
require 'servicios'
require '/Users/alan/Documents/GitHub/TequilaServer/TequilaServer/mappers/MapperCancion.rb'

# En esta clase se define el comportamiento de todos los métodos expuestos en Thrift
class ControlServicios
	def obtenerCanciones(criterio)
		mapperCancion = MapperCancion.new 
		canciones = mapperCancion.obtener_canciones(criterio)
		return canciones
	end

end

control = ControlServicios.new()
processor = Servicios::Processor.new(control)
transport = Thrift::ServerSocket.new(9090)
transportFactory = Thrift::BufferedTransportFactory.new()
server = Thrift::SimpleServer.new(processor, transport, transportFactory)

puts "--- Servidor en línea ---"
server.serve()
puts "Termiando." 

