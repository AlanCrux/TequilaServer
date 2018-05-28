require 'Mysql2'

class Conexion 
	# Ubicación de la BD, Usuario, Password, Nombre de la base de datos
	@@conexion = Mysql2::Client.new(
		:host => "localhost", 
		:username => "tequilaAdmin",
		:password => "potorricodebules", 
		:database => "TequilaDB"
	)
end
