$:.push('gen-rb')
$:.unshift '../../lib/rb/lib'

require 'thrift'
require 'servicio_canciones'
require '/home/alan/Documents/Git/TequilaServer/TequilaServer/mappers/MapperCancion.rb'

class CancionesHandler
	def initialize()
		@log = {}
	end

	def ping()
		puts "ping()"
	end

	def obtenerCanciones(criterio)
		mapperCancion = MapperCancion.new 
		return mapperCancion.obtener_canciones
	end

end

handler = CancionesHandler.new()
processor = Services::ServicioCanciones::Processor.new(handler)
transport = Thrift::ServerSocket.new(9090)
transportFactory = Thrift::BufferedTransportFactory.new()
server = Thrift::SimpleServer.new(processor, transport, transportFactory)

puts "Starting the server..."
server.serve()
puts "done." 

