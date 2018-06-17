typedef i64 int 

//Aqui se definen las estructuras que se van a utilizar
struct CancionSL{
   1 : i32 idCancion,
   2 : string titulo,
   3 : string ruta,
   4 : string album,
   5 : string artista,
   6 : string genero,
   7 : string correoArtista,
   8 : i64 idAlbum,
   9 : i64 idGenero
}

struc Consumidor{
	1 : string correo,
	2 : string nombre,
	3 : string clave
}

struc Artista{
	1 : string correo,
	2 : string nombre,
	3 : string clave
}

// Aqui vamos a definir todos los servicios que se exponen al cliente
// Los escribi en lowerCamelCase, aunque en ruby se van a ver raros 
service servicios {
	//Servicio para obtener canciones
	list<Cancion> obtenerCancionesFiltradas(1:string criterio),
	Consumidor obtenerConsumidor(1:string correo),
	Artista obtenerArtista(1:string correo),
	bool insertarConsumidor(1:Consumidor consumidor),
	bool insertarArtista(1:Artista artista),

	list<Cancion> obtenerCancionesBiblioteca(1:string correo),

}

