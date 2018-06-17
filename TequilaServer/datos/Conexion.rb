require 'mysql2'

class Conexion 
	# Devuelve una conexión a la base de datos
	def conectar
		conexion = Mysql2::Client.new(
			:host => "localhost", 
			:username => "tequilaAdmin",
			:password => "potorricodebules", 
			:database => "TequilaDB")
		return conexion
	end

	
end
