#
# Autogenerated by Thrift Compiler (0.11.0)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

require 'thrift'
require 'servicios_types'

module Servicios
  class Client
    include ::Thrift::Client

    def obtenerCancionesFiltradas(criterio)
      send_obtenerCancionesFiltradas(criterio)
      return recv_obtenerCancionesFiltradas()
    end

    def send_obtenerCancionesFiltradas(criterio)
      send_message('obtenerCancionesFiltradas', ObtenerCancionesFiltradas_args, :criterio => criterio)
    end

    def recv_obtenerCancionesFiltradas()
      result = receive_message(ObtenerCancionesFiltradas_result)
      return result.success unless result.success.nil?
      raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'obtenerCancionesFiltradas failed: unknown result')
    end

    def obtenerUsuario(correo)
      send_obtenerUsuario(correo)
      return recv_obtenerUsuario()
    end

    def send_obtenerUsuario(correo)
      send_message('obtenerUsuario', ObtenerUsuario_args, :correo => correo)
    end

    def recv_obtenerUsuario()
      result = receive_message(ObtenerUsuario_result)
      return result.success unless result.success.nil?
      raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'obtenerUsuario failed: unknown result')
    end

    def insertarUsuario(usuario)
      send_insertarUsuario(usuario)
      return recv_insertarUsuario()
    end

    def send_insertarUsuario(usuario)
      send_message('insertarUsuario', InsertarUsuario_args, :usuario => usuario)
    end

    def recv_insertarUsuario()
      result = receive_message(InsertarUsuario_result)
      return result.success unless result.success.nil?
      raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'insertarUsuario failed: unknown result')
    end

    def obtenerCancionesBiblioteca(correo)
      send_obtenerCancionesBiblioteca(correo)
      return recv_obtenerCancionesBiblioteca()
    end

    def send_obtenerCancionesBiblioteca(correo)
      send_message('obtenerCancionesBiblioteca', ObtenerCancionesBiblioteca_args, :correo => correo)
    end

    def recv_obtenerCancionesBiblioteca()
      result = receive_message(ObtenerCancionesBiblioteca_result)
      return result.success unless result.success.nil?
      raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'obtenerCancionesBiblioteca failed: unknown result')
    end

    def bajarCancion(ruta)
      send_bajarCancion(ruta)
      return recv_bajarCancion()
    end

    def send_bajarCancion(ruta)
      send_message('bajarCancion', BajarCancion_args, :ruta => ruta)
    end

    def recv_bajarCancion()
      result = receive_message(BajarCancion_result)
      return result.success unless result.success.nil?
      raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'bajarCancion failed: unknown result')
    end

    def obtenerPlaylists(correo)
      send_obtenerPlaylists(correo)
      return recv_obtenerPlaylists()
    end

    def send_obtenerPlaylists(correo)
      send_message('obtenerPlaylists', ObtenerPlaylists_args, :correo => correo)
    end

    def recv_obtenerPlaylists()
      result = receive_message(ObtenerPlaylists_result)
      return result.success unless result.success.nil?
      raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'obtenerPlaylists failed: unknown result')
    end

    def obtenerCancionesPlaylist(idPlaylist)
      send_obtenerCancionesPlaylist(idPlaylist)
      return recv_obtenerCancionesPlaylist()
    end

    def send_obtenerCancionesPlaylist(idPlaylist)
      send_message('obtenerCancionesPlaylist', ObtenerCancionesPlaylist_args, :idPlaylist => idPlaylist)
    end

    def recv_obtenerCancionesPlaylist()
      result = receive_message(ObtenerCancionesPlaylist_result)
      return result.success unless result.success.nil?
      raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'obtenerCancionesPlaylist failed: unknown result')
    end

    def insertarPlaylist(playlist)
      send_insertarPlaylist(playlist)
      return recv_insertarPlaylist()
    end

    def send_insertarPlaylist(playlist)
      send_message('insertarPlaylist', InsertarPlaylist_args, :playlist => playlist)
    end

    def recv_insertarPlaylist()
      result = receive_message(InsertarPlaylist_result)
      return result.success unless result.success.nil?
      raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'insertarPlaylist failed: unknown result')
    end

    def actualizarPlaylist(playlist)
      send_actualizarPlaylist(playlist)
      return recv_actualizarPlaylist()
    end

    def send_actualizarPlaylist(playlist)
      send_message('actualizarPlaylist', ActualizarPlaylist_args, :playlist => playlist)
    end

    def recv_actualizarPlaylist()
      result = receive_message(ActualizarPlaylist_result)
      return result.success unless result.success.nil?
      raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'actualizarPlaylist failed: unknown result')
    end

    def elimnarPlaylist(idPlaylist)
      send_elimnarPlaylist(idPlaylist)
      return recv_elimnarPlaylist()
    end

    def send_elimnarPlaylist(idPlaylist)
      send_message('elimnarPlaylist', ElimnarPlaylist_args, :idPlaylist => idPlaylist)
    end

    def recv_elimnarPlaylist()
      result = receive_message(ElimnarPlaylist_result)
      return result.success unless result.success.nil?
      raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'elimnarPlaylist failed: unknown result')
    end

    def insertarCancionPlaylist(contenido)
      send_insertarCancionPlaylist(contenido)
      return recv_insertarCancionPlaylist()
    end

    def send_insertarCancionPlaylist(contenido)
      send_message('insertarCancionPlaylist', InsertarCancionPlaylist_args, :contenido => contenido)
    end

    def recv_insertarCancionPlaylist()
      result = receive_message(InsertarCancionPlaylist_result)
      return result.success unless result.success.nil?
      raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'insertarCancionPlaylist failed: unknown result')
    end

    def elimnarCancionPlaylist(idCancion)
      send_elimnarCancionPlaylist(idCancion)
      return recv_elimnarCancionPlaylist()
    end

    def send_elimnarCancionPlaylist(idCancion)
      send_message('elimnarCancionPlaylist', ElimnarCancionPlaylist_args, :idCancion => idCancion)
    end

    def recv_elimnarCancionPlaylist()
      result = receive_message(ElimnarCancionPlaylist_result)
      return result.success unless result.success.nil?
      raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'elimnarCancionPlaylist failed: unknown result')
    end

    def obtenerHistorial(correo)
      send_obtenerHistorial(correo)
      return recv_obtenerHistorial()
    end

    def send_obtenerHistorial(correo)
      send_message('obtenerHistorial', ObtenerHistorial_args, :correo => correo)
    end

    def recv_obtenerHistorial()
      result = receive_message(ObtenerHistorial_result)
      return result.success unless result.success.nil?
      raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'obtenerHistorial failed: unknown result')
    end

    def insertarCancionHistorial(historial)
      send_insertarCancionHistorial(historial)
      return recv_insertarCancionHistorial()
    end

    def send_insertarCancionHistorial(historial)
      send_message('insertarCancionHistorial', InsertarCancionHistorial_args, :historial => historial)
    end

    def recv_insertarCancionHistorial()
      result = receive_message(InsertarCancionHistorial_result)
      return result.success unless result.success.nil?
      raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'insertarCancionHistorial failed: unknown result')
    end

    def eliminarCancionHistorial(idCancion)
      send_eliminarCancionHistorial(idCancion)
      return recv_eliminarCancionHistorial()
    end

    def send_eliminarCancionHistorial(idCancion)
      send_message('eliminarCancionHistorial', EliminarCancionHistorial_args, :idCancion => idCancion)
    end

    def recv_eliminarCancionHistorial()
      result = receive_message(EliminarCancionHistorial_result)
      return result.success unless result.success.nil?
      raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'eliminarCancionHistorial failed: unknown result')
    end

    def insertarCancionBiblioteca(biblioteca)
      send_insertarCancionBiblioteca(biblioteca)
      return recv_insertarCancionBiblioteca()
    end

    def send_insertarCancionBiblioteca(biblioteca)
      send_message('insertarCancionBiblioteca', InsertarCancionBiblioteca_args, :biblioteca => biblioteca)
    end

    def recv_insertarCancionBiblioteca()
      result = receive_message(InsertarCancionBiblioteca_result)
      return result.success unless result.success.nil?
      raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'insertarCancionBiblioteca failed: unknown result')
    end

    def eliminarCancionBiblioteca(idCancion)
      send_eliminarCancionBiblioteca(idCancion)
      return recv_eliminarCancionBiblioteca()
    end

    def send_eliminarCancionBiblioteca(idCancion)
      send_message('eliminarCancionBiblioteca', EliminarCancionBiblioteca_args, :idCancion => idCancion)
    end

    def recv_eliminarCancionBiblioteca()
      result = receive_message(EliminarCancionBiblioteca_result)
      return result.success unless result.success.nil?
      raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'eliminarCancionBiblioteca failed: unknown result')
    end

  end

  class Processor
    include ::Thrift::Processor

    def process_obtenerCancionesFiltradas(seqid, iprot, oprot)
      args = read_args(iprot, ObtenerCancionesFiltradas_args)
      result = ObtenerCancionesFiltradas_result.new()
      result.success = @handler.obtenerCancionesFiltradas(args.criterio)
      write_result(result, oprot, 'obtenerCancionesFiltradas', seqid)
    end

    def process_obtenerUsuario(seqid, iprot, oprot)
      args = read_args(iprot, ObtenerUsuario_args)
      result = ObtenerUsuario_result.new()
      result.success = @handler.obtenerUsuario(args.correo)
      write_result(result, oprot, 'obtenerUsuario', seqid)
    end

    def process_insertarUsuario(seqid, iprot, oprot)
      args = read_args(iprot, InsertarUsuario_args)
      result = InsertarUsuario_result.new()
      result.success = @handler.insertarUsuario(args.usuario)
      write_result(result, oprot, 'insertarUsuario', seqid)
    end

    def process_obtenerCancionesBiblioteca(seqid, iprot, oprot)
      args = read_args(iprot, ObtenerCancionesBiblioteca_args)
      result = ObtenerCancionesBiblioteca_result.new()
      result.success = @handler.obtenerCancionesBiblioteca(args.correo)
      write_result(result, oprot, 'obtenerCancionesBiblioteca', seqid)
    end

    def process_bajarCancion(seqid, iprot, oprot)
      args = read_args(iprot, BajarCancion_args)
      result = BajarCancion_result.new()
      result.success = @handler.bajarCancion(args.ruta)
      write_result(result, oprot, 'bajarCancion', seqid)
    end

    def process_obtenerPlaylists(seqid, iprot, oprot)
      args = read_args(iprot, ObtenerPlaylists_args)
      result = ObtenerPlaylists_result.new()
      result.success = @handler.obtenerPlaylists(args.correo)
      write_result(result, oprot, 'obtenerPlaylists', seqid)
    end

    def process_obtenerCancionesPlaylist(seqid, iprot, oprot)
      args = read_args(iprot, ObtenerCancionesPlaylist_args)
      result = ObtenerCancionesPlaylist_result.new()
      result.success = @handler.obtenerCancionesPlaylist(args.idPlaylist)
      write_result(result, oprot, 'obtenerCancionesPlaylist', seqid)
    end

    def process_insertarPlaylist(seqid, iprot, oprot)
      args = read_args(iprot, InsertarPlaylist_args)
      result = InsertarPlaylist_result.new()
      result.success = @handler.insertarPlaylist(args.playlist)
      write_result(result, oprot, 'insertarPlaylist', seqid)
    end

    def process_actualizarPlaylist(seqid, iprot, oprot)
      args = read_args(iprot, ActualizarPlaylist_args)
      result = ActualizarPlaylist_result.new()
      result.success = @handler.actualizarPlaylist(args.playlist)
      write_result(result, oprot, 'actualizarPlaylist', seqid)
    end

    def process_elimnarPlaylist(seqid, iprot, oprot)
      args = read_args(iprot, ElimnarPlaylist_args)
      result = ElimnarPlaylist_result.new()
      result.success = @handler.elimnarPlaylist(args.idPlaylist)
      write_result(result, oprot, 'elimnarPlaylist', seqid)
    end

    def process_insertarCancionPlaylist(seqid, iprot, oprot)
      args = read_args(iprot, InsertarCancionPlaylist_args)
      result = InsertarCancionPlaylist_result.new()
      result.success = @handler.insertarCancionPlaylist(args.contenido)
      write_result(result, oprot, 'insertarCancionPlaylist', seqid)
    end

    def process_elimnarCancionPlaylist(seqid, iprot, oprot)
      args = read_args(iprot, ElimnarCancionPlaylist_args)
      result = ElimnarCancionPlaylist_result.new()
      result.success = @handler.elimnarCancionPlaylist(args.idCancion)
      write_result(result, oprot, 'elimnarCancionPlaylist', seqid)
    end

    def process_obtenerHistorial(seqid, iprot, oprot)
      args = read_args(iprot, ObtenerHistorial_args)
      result = ObtenerHistorial_result.new()
      result.success = @handler.obtenerHistorial(args.correo)
      write_result(result, oprot, 'obtenerHistorial', seqid)
    end

    def process_insertarCancionHistorial(seqid, iprot, oprot)
      args = read_args(iprot, InsertarCancionHistorial_args)
      result = InsertarCancionHistorial_result.new()
      result.success = @handler.insertarCancionHistorial(args.historial)
      write_result(result, oprot, 'insertarCancionHistorial', seqid)
    end

    def process_eliminarCancionHistorial(seqid, iprot, oprot)
      args = read_args(iprot, EliminarCancionHistorial_args)
      result = EliminarCancionHistorial_result.new()
      result.success = @handler.eliminarCancionHistorial(args.idCancion)
      write_result(result, oprot, 'eliminarCancionHistorial', seqid)
    end

    def process_insertarCancionBiblioteca(seqid, iprot, oprot)
      args = read_args(iprot, InsertarCancionBiblioteca_args)
      result = InsertarCancionBiblioteca_result.new()
      result.success = @handler.insertarCancionBiblioteca(args.biblioteca)
      write_result(result, oprot, 'insertarCancionBiblioteca', seqid)
    end

    def process_eliminarCancionBiblioteca(seqid, iprot, oprot)
      args = read_args(iprot, EliminarCancionBiblioteca_args)
      result = EliminarCancionBiblioteca_result.new()
      result.success = @handler.eliminarCancionBiblioteca(args.idCancion)
      write_result(result, oprot, 'eliminarCancionBiblioteca', seqid)
    end

  end

  # HELPER FUNCTIONS AND STRUCTURES

  class ObtenerCancionesFiltradas_args
    include ::Thrift::Struct, ::Thrift::Struct_Union
    CRITERIO = 1

    FIELDS = {
      CRITERIO => {:type => ::Thrift::Types::STRING, :name => 'criterio'}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class ObtenerCancionesFiltradas_result
    include ::Thrift::Struct, ::Thrift::Struct_Union
    SUCCESS = 0

    FIELDS = {
      SUCCESS => {:type => ::Thrift::Types::LIST, :name => 'success', :element => {:type => ::Thrift::Types::STRUCT, :class => ::CancionSL}}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class ObtenerUsuario_args
    include ::Thrift::Struct, ::Thrift::Struct_Union
    CORREO = 1

    FIELDS = {
      CORREO => {:type => ::Thrift::Types::STRING, :name => 'correo'}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class ObtenerUsuario_result
    include ::Thrift::Struct, ::Thrift::Struct_Union
    SUCCESS = 0

    FIELDS = {
      SUCCESS => {:type => ::Thrift::Types::STRUCT, :name => 'success', :class => ::Usuario}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class InsertarUsuario_args
    include ::Thrift::Struct, ::Thrift::Struct_Union
    USUARIO = 1

    FIELDS = {
      USUARIO => {:type => ::Thrift::Types::STRUCT, :name => 'usuario', :class => ::Usuario}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class InsertarUsuario_result
    include ::Thrift::Struct, ::Thrift::Struct_Union
    SUCCESS = 0

    FIELDS = {
      SUCCESS => {:type => ::Thrift::Types::BOOL, :name => 'success'}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class ObtenerCancionesBiblioteca_args
    include ::Thrift::Struct, ::Thrift::Struct_Union
    CORREO = 1

    FIELDS = {
      CORREO => {:type => ::Thrift::Types::STRING, :name => 'correo'}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class ObtenerCancionesBiblioteca_result
    include ::Thrift::Struct, ::Thrift::Struct_Union
    SUCCESS = 0

    FIELDS = {
      SUCCESS => {:type => ::Thrift::Types::LIST, :name => 'success', :element => {:type => ::Thrift::Types::STRUCT, :class => ::CancionSL}}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class BajarCancion_args
    include ::Thrift::Struct, ::Thrift::Struct_Union
    RUTA = 1

    FIELDS = {
      RUTA => {:type => ::Thrift::Types::STRING, :name => 'ruta'}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class BajarCancion_result
    include ::Thrift::Struct, ::Thrift::Struct_Union
    SUCCESS = 0

    FIELDS = {
      SUCCESS => {:type => ::Thrift::Types::STRING, :name => 'success', :binary => true}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class ObtenerPlaylists_args
    include ::Thrift::Struct, ::Thrift::Struct_Union
    CORREO = 1

    FIELDS = {
      CORREO => {:type => ::Thrift::Types::STRING, :name => 'correo'}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class ObtenerPlaylists_result
    include ::Thrift::Struct, ::Thrift::Struct_Union
    SUCCESS = 0

    FIELDS = {
      SUCCESS => {:type => ::Thrift::Types::LIST, :name => 'success', :element => {:type => ::Thrift::Types::STRUCT, :class => ::Playlist}}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class ObtenerCancionesPlaylist_args
    include ::Thrift::Struct, ::Thrift::Struct_Union
    IDPLAYLIST = 1

    FIELDS = {
      IDPLAYLIST => {:type => ::Thrift::Types::I32, :name => 'idPlaylist'}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class ObtenerCancionesPlaylist_result
    include ::Thrift::Struct, ::Thrift::Struct_Union
    SUCCESS = 0

    FIELDS = {
      SUCCESS => {:type => ::Thrift::Types::LIST, :name => 'success', :element => {:type => ::Thrift::Types::STRUCT, :class => ::CancionSL}}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class InsertarPlaylist_args
    include ::Thrift::Struct, ::Thrift::Struct_Union
    PLAYLIST = 1

    FIELDS = {
      PLAYLIST => {:type => ::Thrift::Types::STRUCT, :name => 'playlist', :class => ::Playlist}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class InsertarPlaylist_result
    include ::Thrift::Struct, ::Thrift::Struct_Union
    SUCCESS = 0

    FIELDS = {
      SUCCESS => {:type => ::Thrift::Types::BOOL, :name => 'success'}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class ActualizarPlaylist_args
    include ::Thrift::Struct, ::Thrift::Struct_Union
    PLAYLIST = 1

    FIELDS = {
      PLAYLIST => {:type => ::Thrift::Types::STRUCT, :name => 'playlist', :class => ::Playlist}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class ActualizarPlaylist_result
    include ::Thrift::Struct, ::Thrift::Struct_Union
    SUCCESS = 0

    FIELDS = {
      SUCCESS => {:type => ::Thrift::Types::BOOL, :name => 'success'}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class ElimnarPlaylist_args
    include ::Thrift::Struct, ::Thrift::Struct_Union
    IDPLAYLIST = 1

    FIELDS = {
      IDPLAYLIST => {:type => ::Thrift::Types::I32, :name => 'idPlaylist'}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class ElimnarPlaylist_result
    include ::Thrift::Struct, ::Thrift::Struct_Union
    SUCCESS = 0

    FIELDS = {
      SUCCESS => {:type => ::Thrift::Types::BOOL, :name => 'success'}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class InsertarCancionPlaylist_args
    include ::Thrift::Struct, ::Thrift::Struct_Union
    CONTENIDO = 1

    FIELDS = {
      CONTENIDO => {:type => ::Thrift::Types::STRUCT, :name => 'contenido', :class => ::Contenido}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class InsertarCancionPlaylist_result
    include ::Thrift::Struct, ::Thrift::Struct_Union
    SUCCESS = 0

    FIELDS = {
      SUCCESS => {:type => ::Thrift::Types::BOOL, :name => 'success'}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class ElimnarCancionPlaylist_args
    include ::Thrift::Struct, ::Thrift::Struct_Union
    IDCANCION = 1

    FIELDS = {
      IDCANCION => {:type => ::Thrift::Types::I32, :name => 'idCancion'}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class ElimnarCancionPlaylist_result
    include ::Thrift::Struct, ::Thrift::Struct_Union
    SUCCESS = 0

    FIELDS = {
      SUCCESS => {:type => ::Thrift::Types::BOOL, :name => 'success'}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class ObtenerHistorial_args
    include ::Thrift::Struct, ::Thrift::Struct_Union
    CORREO = 1

    FIELDS = {
      CORREO => {:type => ::Thrift::Types::STRING, :name => 'correo'}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class ObtenerHistorial_result
    include ::Thrift::Struct, ::Thrift::Struct_Union
    SUCCESS = 0

    FIELDS = {
      SUCCESS => {:type => ::Thrift::Types::LIST, :name => 'success', :element => {:type => ::Thrift::Types::STRUCT, :class => ::CancionSL}}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class InsertarCancionHistorial_args
    include ::Thrift::Struct, ::Thrift::Struct_Union
    HISTORIAL = 1

    FIELDS = {
      HISTORIAL => {:type => ::Thrift::Types::STRUCT, :name => 'historial', :class => ::Historial}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class InsertarCancionHistorial_result
    include ::Thrift::Struct, ::Thrift::Struct_Union
    SUCCESS = 0

    FIELDS = {
      SUCCESS => {:type => ::Thrift::Types::BOOL, :name => 'success'}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class EliminarCancionHistorial_args
    include ::Thrift::Struct, ::Thrift::Struct_Union
    IDCANCION = 1

    FIELDS = {
      IDCANCION => {:type => ::Thrift::Types::I32, :name => 'idCancion'}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class EliminarCancionHistorial_result
    include ::Thrift::Struct, ::Thrift::Struct_Union
    SUCCESS = 0

    FIELDS = {
      SUCCESS => {:type => ::Thrift::Types::BOOL, :name => 'success'}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class InsertarCancionBiblioteca_args
    include ::Thrift::Struct, ::Thrift::Struct_Union
    BIBLIOTECA = 1

    FIELDS = {
      BIBLIOTECA => {:type => ::Thrift::Types::STRUCT, :name => 'biblioteca', :class => ::Biblioteca}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class InsertarCancionBiblioteca_result
    include ::Thrift::Struct, ::Thrift::Struct_Union
    SUCCESS = 0

    FIELDS = {
      SUCCESS => {:type => ::Thrift::Types::BOOL, :name => 'success'}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class EliminarCancionBiblioteca_args
    include ::Thrift::Struct, ::Thrift::Struct_Union
    IDCANCION = 1

    FIELDS = {
      IDCANCION => {:type => ::Thrift::Types::I32, :name => 'idCancion'}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class EliminarCancionBiblioteca_result
    include ::Thrift::Struct, ::Thrift::Struct_Union
    SUCCESS = 0

    FIELDS = {
      SUCCESS => {:type => ::Thrift::Types::BOOL, :name => 'success'}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

end

