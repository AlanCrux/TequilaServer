$:.push('gen-rb')
$:.unshift '../../lib/rb/lib'

require 'thrift'
require 'servicios'
require 'servicios_types'

begin

  transport = Thrift::BufferedTransport.new(Thrift::Socket.new('localhost', 9090))
  protocol = Thrift::BinaryProtocol.new(transport)
  client = Servicios::Client.new(protocol)

  transport.open()
  lista = []
  lista = client.obtenerCancionesFiltradas("La cumbia")
  puts lista

  consumidor = client.obtenerConsumidor("alancrux_@hotmail.com")
  puts consumidor.correo
  
  transport.close()

rescue Thrift::Exception => tx
  print 'Thrift::Exception: ', tx.message, "\n"
end