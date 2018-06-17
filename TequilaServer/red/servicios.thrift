typedef i32 int 

//Aqui se definen las estructuras que se van a utilizar
struct Cancion{
   1 : i32 idCancion,
   2 : string titulo,
   3 : string ruta,
   4 : string idAlbum
}

// Aqui vamos a definir todos los servicios que se exponen al cliente
// Los escribi en lowerCamelCase, aunque en ruby se van a ver raros 
service servicios {
	//Servicio para obtener canciones
	list<Cancion> obtenerCanciones(1:string criterio),
}

