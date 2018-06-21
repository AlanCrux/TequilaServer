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
   8 : i32 idAlbum,
   9 : i32 idGenero,
   10 : binary imagenAlbum
}

struct Usuario{
	1 : string correo,
	2 : string nombre,
	3 : string clave,
	4 : string tipo,
	5 : binary foto
}

service servicios {
	list<CancionSL> obtenerCancionesFiltradas(1:string criterio),
	Usuario obtenerUsuario(1:string correo),
	bool insertarUsuario(1:Usuario usuario),
	list<CancionSL> obtenerCancionesBiblioteca(1:string correo)
}

