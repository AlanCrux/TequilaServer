#
# Autogenerated by Thrift Compiler (0.11.0)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

require 'thrift'

class Cancion
  include ::Thrift::Struct, ::Thrift::Struct_Union
  IDCANCION = 1
  TITULO = 2
  RUTA = 3
  IDALBUM = 4

  FIELDS = {
    IDCANCION => {:type => ::Thrift::Types::I32, :name => 'idCancion'},
    TITULO => {:type => ::Thrift::Types::STRING, :name => 'titulo'},
    RUTA => {:type => ::Thrift::Types::STRING, :name => 'ruta'},
    IDALBUM => {:type => ::Thrift::Types::STRING, :name => 'idAlbum'}
  }

  def struct_fields; FIELDS; end

  def validate
  end

  ::Thrift::Struct.generate_accessors self
end
