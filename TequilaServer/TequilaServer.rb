$:.push('gen-rb')
$:.push('mappers')
$:.unshift '../../lib/rb/lib'

require 'thrift'
require 'servicios'
require 'MapperCancion'
require 'MapperConsumidor'
require 'MapperArtista'

# En esta clase se define el comportamiento de todos los métodos expuestos en Thrift
class ControlServicios
	def obtenerCancionesFiltradas(criterio)
		mapper = MapperCancion.new 
		canciones = mapper.obtener_canciones_filtradas(criterio)
	end

	def obtenerConsumidor(correo)
		mapper = MapperConsumidor.new
		consumidor = mapper.obtener_consumidor(correo)
	end

	def insertarConsumidor(consumidor)
		mapper = MapperConsumidor.new
		mapper.insertar_consumidor(consumidor) 
	end

	def insertarArtista(artista)
		mapper = MapperArtista.new
		resultado = mapper.insertar_artista(artista) 
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

