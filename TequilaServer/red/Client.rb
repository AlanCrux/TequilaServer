$:.push('gen-rb')
$:.unshift '../../lib/rb/lib'

require 'thrift'
require 'servicios'

begin

  transport = Thrift::BufferedTransport.new(Thrift::Socket.new('localhost', 9090))
  protocol = Thrift::BinaryProtocol.new(transport)
  client = Servicios::Client.new(protocol)

  transport.open()
  lista = []
  lista = client.obtenerCanciones("La cumbia")
  puts lista
  
  transport.close()

rescue Thrift::Exception => tx
  puts tx
  print 'Thrift::Exception: ', tx.message, "\n"
end