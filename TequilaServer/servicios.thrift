typedef i64 int 

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
   10 : binary imagenAlbum,
   11 : i32 puntuacion,
   12 : string anioLanzamiento,
   13 : string companiaDiscografica,
   14 : string fecha,
   15 : string descargada
}

struct Usuario{
	1 : string correo,
	2 : string nombre,
	3 : string clave,
	4 : string tipo,
	5 : binary foto
}

struct Playlist{
	1 : string nombre,
	2 : string descripcion,
	3 : binary imagen,
	4 : string correo,
	5 : i32 idPlaylist
}

struct Historial{
	1 : i32 idCancion,
	2 : string correo, 
	3 : string fecha
}

struct Biblioteca{
	1 : i32 idCancion,
	2 : string correo,
	3 : i32 puntuacion,
	4 : string descargada
}

struct Contenido{
	1 : i32 idCancion,
	2 : i32 idPlaylist
}

struct AlbumSL{
	1 : i32 idAlbum,
	2 : string titulo,
	3 : binary imagenAlbum,
	4 : string nombreArtista,
	5 : string correo,
	6 : string anioLanzamiento,
	7 : string companiaDiscografica
}

struct Genero{
	1 : i32 idGenero,
	2 : string nombreGenero
}


service servicios {
	list<CancionSL> obtenerCancionesFiltradas(1:string criterio),
	Usuario obtenerUsuario(1:string correo),
	bool insertarUsuario(1:Usuario usuario),
	list<CancionSL> obtenerCancionesBiblioteca(1:string correo),

	list<Playlist> obtenerPlaylists(1:string correo),
	list<CancionSL> obtenerCancionesPlaylist(1:i32 idPlaylist),
	bool insertarPlaylist(1:Playlist playlist),
	bool actualizarPlaylist(1:Playlist playlist),
	bool elimnarPlaylist(1:i32 idPlaylist),
	bool insertarCancionPlaylist(1:Contenido contenido),
	bool eliminarCancionPlaylist(1:i32 idCancion),

	list<CancionSL> obtenerHistorial(1:string correo),

	bool insertarCancionHistorial(1:Historial historial),
	bool eliminarCancionHistorial(1:i32 idCancion)

	bool insertarCancionBiblioteca(1:Biblioteca biblioteca),
	bool eliminarCancionBiblioteca(1:i32 idCancion),

	list<AlbumSL> obtenerAlbumesUsuario(1:string correo),
	list<CancionSL> obtenerCancionesAlbum(1:i32 idAlbum),

	list<Usuario> obtenerArtistasUsuario(1:string correo),
	list<CancionSL> obtenerCancionesArtista(1:string correo),

	list<Genero> obtenerGenerosUsuario(1:string correo),
	list<CancionSL> obtenerCancionesGenero(1:i32 idGenero),
	list<CancionSL> crearRadio(1:i32 idGenero)






}

