require "socket"
 
# Crear el socket que escucha
servers = Socket.tcp_server_sockets(4481)

puts "Servidor corriendo"

Socket.accept_loop(servers) do |connection|
	puts "Se conecto un cliente"
	connection.puts("Hola cliente")
end

connection.close
 