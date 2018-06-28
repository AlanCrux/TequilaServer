/**
 * Autogenerated by Thrift Compiler (0.11.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
@SuppressWarnings({"cast", "rawtypes", "serial", "unchecked", "unused"})
@javax.annotation.Generated(value = "Autogenerated by Thrift Compiler (0.11.0)", date = "2018-06-23")
public class Playlist implements org.apache.thrift.TBase<Playlist, Playlist._Fields>, java.io.Serializable, Cloneable, Comparable<Playlist> {
  private static final org.apache.thrift.protocol.TStruct STRUCT_DESC = new org.apache.thrift.protocol.TStruct("Playlist");

  private static final org.apache.thrift.protocol.TField NOMBRE_FIELD_DESC = new org.apache.thrift.protocol.TField("nombre", org.apache.thrift.protocol.TType.STRING, (short)1);
  private static final org.apache.thrift.protocol.TField DESCRIPCION_FIELD_DESC = new org.apache.thrift.protocol.TField("descripcion", org.apache.thrift.protocol.TType.STRING, (short)2);
  private static final org.apache.thrift.protocol.TField IMAGEN_FIELD_DESC = new org.apache.thrift.protocol.TField("imagen", org.apache.thrift.protocol.TType.STRING, (short)3);
  private static final org.apache.thrift.protocol.TField CORREO_FIELD_DESC = new org.apache.thrift.protocol.TField("correo", org.apache.thrift.protocol.TType.STRING, (short)4);
  private static final org.apache.thrift.protocol.TField ID_PLAYLIST_FIELD_DESC = new org.apache.thrift.protocol.TField("idPlaylist", org.apache.thrift.protocol.TType.I32, (short)5);

  private static final org.apache.thrift.scheme.SchemeFactory STANDARD_SCHEME_FACTORY = new PlaylistStandardSchemeFactory();
  private static final org.apache.thrift.scheme.SchemeFactory TUPLE_SCHEME_FACTORY = new PlaylistTupleSchemeFactory();

  public java.lang.String nombre; // required
  public java.lang.String descripcion; // required
  public java.nio.ByteBuffer imagen; // required
  public java.lang.String correo; // required
  public int idPlaylist; // required

  /** The set of fields this struct contains, along with convenience methods for finding and manipulating them. */
  public enum _Fields implements org.apache.thrift.TFieldIdEnum {
    NOMBRE((short)1, "nombre"),
    DESCRIPCION((short)2, "descripcion"),
    IMAGEN((short)3, "imagen"),
    CORREO((short)4, "correo"),
    ID_PLAYLIST((short)5, "idPlaylist");

    private static final java.util.Map<java.lang.String, _Fields> byName = new java.util.HashMap<java.lang.String, _Fields>();

    static {
      for (_Fields field : java.util.EnumSet.allOf(_Fields.class)) {
        byName.put(field.getFieldName(), field);
      }
    }

    /**
     * Find the _Fields constant that matches fieldId, or null if its not found.
     */
    public static _Fields findByThriftId(int fieldId) {
      switch(fieldId) {
        case 1: // NOMBRE
          return NOMBRE;
        case 2: // DESCRIPCION
          return DESCRIPCION;
        case 3: // IMAGEN
          return IMAGEN;
        case 4: // CORREO
          return CORREO;
        case 5: // ID_PLAYLIST
          return ID_PLAYLIST;
        default:
          return null;
      }
    }

    /**
     * Find the _Fields constant that matches fieldId, throwing an exception
     * if it is not found.
     */
    public static _Fields findByThriftIdOrThrow(int fieldId) {
      _Fields fields = findByThriftId(fieldId);
      if (fields == null) throw new java.lang.IllegalArgumentException("Field " + fieldId + " doesn't exist!");
      return fields;
    }

    /**
     * Find the _Fields constant that matches name, or null if its not found.
     */
    public static _Fields findByName(java.lang.String name) {
      return byName.get(name);
    }

    private final short _thriftId;
    private final java.lang.String _fieldName;

    _Fields(short thriftId, java.lang.String fieldName) {
      _thriftId = thriftId;
      _fieldName = fieldName;
    }

    public short getThriftFieldId() {
      return _thriftId;
    }

    public java.lang.String getFieldName() {
      return _fieldName;
    }
  }

  // isset id assignments
  private static final int __IDPLAYLIST_ISSET_ID = 0;
  private byte __isset_bitfield = 0;
  public static final java.util.Map<_Fields, org.apache.thrift.meta_data.FieldMetaData> metaDataMap;
  static {
    java.util.Map<_Fields, org.apache.thrift.meta_data.FieldMetaData> tmpMap = new java.util.EnumMap<_Fields, org.apache.thrift.meta_data.FieldMetaData>(_Fields.class);
    tmpMap.put(_Fields.NOMBRE, new org.apache.thrift.meta_data.FieldMetaData("nombre", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.FieldValueMetaData(org.apache.thrift.protocol.TType.STRING)));
    tmpMap.put(_Fields.DESCRIPCION, new org.apache.thrift.meta_data.FieldMetaData("descripcion", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.FieldValueMetaData(org.apache.thrift.protocol.TType.STRING)));
    tmpMap.put(_Fields.IMAGEN, new org.apache.thrift.meta_data.FieldMetaData("imagen", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.FieldValueMetaData(org.apache.thrift.protocol.TType.STRING        , true)));
    tmpMap.put(_Fields.CORREO, new org.apache.thrift.meta_data.FieldMetaData("correo", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.FieldValueMetaData(org.apache.thrift.protocol.TType.STRING)));
    tmpMap.put(_Fields.ID_PLAYLIST, new org.apache.thrift.meta_data.FieldMetaData("idPlaylist", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.FieldValueMetaData(org.apache.thrift.protocol.TType.I32)));
    metaDataMap = java.util.Collections.unmodifiableMap(tmpMap);
    org.apache.thrift.meta_data.FieldMetaData.addStructMetaDataMap(Playlist.class, metaDataMap);
  }

  public Playlist() {
  }

  public Playlist(
    java.lang.String nombre,
    java.lang.String descripcion,
    java.nio.ByteBuffer imagen,
    java.lang.String correo,
    int idPlaylist)
  {
    this();
    this.nombre = nombre;
    this.descripcion = descripcion;
    this.imagen = org.apache.thrift.TBaseHelper.copyBinary(imagen);
    this.correo = correo;
    this.idPlaylist = idPlaylist;
    setIdPlaylistIsSet(true);
  }

  /**
   * Performs a deep copy on <i>other</i>.
   */
  public Playlist(Playlist other) {
    __isset_bitfield = other.__isset_bitfield;
    if (other.isSetNombre()) {
      this.nombre = other.nombre;
    }
    if (other.isSetDescripcion()) {
      this.descripcion = other.descripcion;
    }
    if (other.isSetImagen()) {
      this.imagen = org.apache.thrift.TBaseHelper.copyBinary(other.imagen);
    }
    if (other.isSetCorreo()) {
      this.correo = other.correo;
    }
    this.idPlaylist = other.idPlaylist;
  }

  public Playlist deepCopy() {
    return new Playlist(this);
  }

  @Override
  public void clear() {
    this.nombre = null;
    this.descripcion = null;
    this.imagen = null;
    this.correo = null;
    setIdPlaylistIsSet(false);
    this.idPlaylist = 0;
  }

  public java.lang.String getNombre() {
    return this.nombre;
  }

  public Playlist setNombre(java.lang.String nombre) {
    this.nombre = nombre;
    return this;
  }

  public void unsetNombre() {
    this.nombre = null;
  }

  /** Returns true if field nombre is set (has been assigned a value) and false otherwise */
  public boolean isSetNombre() {
    return this.nombre != null;
  }

  public void setNombreIsSet(boolean value) {
    if (!value) {
      this.nombre = null;
    }
  }

  public java.lang.String getDescripcion() {
    return this.descripcion;
  }

  public Playlist setDescripcion(java.lang.String descripcion) {
    this.descripcion = descripcion;
    return this;
  }

  public void unsetDescripcion() {
    this.descripcion = null;
  }

  /** Returns true if field descripcion is set (has been assigned a value) and false otherwise */
  public boolean isSetDescripcion() {
    return this.descripcion != null;
  }

  public void setDescripcionIsSet(boolean value) {
    if (!value) {
      this.descripcion = null;
    }
  }

  public byte[] getImagen() {
    setImagen(org.apache.thrift.TBaseHelper.rightSize(imagen));
    return imagen == null ? null : imagen.array();
  }

  public java.nio.ByteBuffer bufferForImagen() {
    return org.apache.thrift.TBaseHelper.copyBinary(imagen);
  }

  public Playlist setImagen(byte[] imagen) {
    this.imagen = imagen == null ? (java.nio.ByteBuffer)null : java.nio.ByteBuffer.wrap(imagen.clone());
    return this;
  }

  public Playlist setImagen(java.nio.ByteBuffer imagen) {
    this.imagen = org.apache.thrift.TBaseHelper.copyBinary(imagen);
    return this;
  }

  public void unsetImagen() {
    this.imagen = null;
  }

  /** Returns true if field imagen is set (has been assigned a value) and false otherwise */
  public boolean isSetImagen() {
    return this.imagen != null;
  }

  public void setImagenIsSet(boolean value) {
    if (!value) {
      this.imagen = null;
    }
  }

  public java.lang.String getCorreo() {
    return this.correo;
  }

  public Playlist setCorreo(java.lang.String correo) {
    this.correo = correo;
    return this;
  }

  public void unsetCorreo() {
    this.correo = null;
  }

  /** Returns true if field correo is set (has been assigned a value) and false otherwise */
  public boolean isSetCorreo() {
    return this.correo != null;
  }

  public void setCorreoIsSet(boolean value) {
    if (!value) {
      this.correo = null;
    }
  }

  public int getIdPlaylist() {
    return this.idPlaylist;
  }

  public Playlist setIdPlaylist(int idPlaylist) {
    this.idPlaylist = idPlaylist;
    setIdPlaylistIsSet(true);
    return this;
  }

  public void unsetIdPlaylist() {
    __isset_bitfield = org.apache.thrift.EncodingUtils.clearBit(__isset_bitfield, __IDPLAYLIST_ISSET_ID);
  }

  /** Returns true if field idPlaylist is set (has been assigned a value) and false otherwise */
  public boolean isSetIdPlaylist() {
    return org.apache.thrift.EncodingUtils.testBit(__isset_bitfield, __IDPLAYLIST_ISSET_ID);
  }

  public void setIdPlaylistIsSet(boolean value) {
    __isset_bitfield = org.apache.thrift.EncodingUtils.setBit(__isset_bitfield, __IDPLAYLIST_ISSET_ID, value);
  }

  public void setFieldValue(_Fields field, java.lang.Object value) {
    switch (field) {
    case NOMBRE:
      if (value == null) {
        unsetNombre();
      } else {
        setNombre((java.lang.String)value);
      }
      break;

    case DESCRIPCION:
      if (value == null) {
        unsetDescripcion();
      } else {
        setDescripcion((java.lang.String)value);
      }
      break;

    case IMAGEN:
      if (value == null) {
        unsetImagen();
      } else {
        if (value instanceof byte[]) {
          setImagen((byte[])value);
        } else {
          setImagen((java.nio.ByteBuffer)value);
        }
      }
      break;

    case CORREO:
      if (value == null) {
        unsetCorreo();
      } else {
        setCorreo((java.lang.String)value);
      }
      break;

    case ID_PLAYLIST:
      if (value == null) {
        unsetIdPlaylist();
      } else {
        setIdPlaylist((java.lang.Integer)value);
      }
      break;

    }
  }

  public java.lang.Object getFieldValue(_Fields field) {
    switch (field) {
    case NOMBRE:
      return getNombre();

    case DESCRIPCION:
      return getDescripcion();

    case IMAGEN:
      return getImagen();

    case CORREO:
      return getCorreo();

    case ID_PLAYLIST:
      return getIdPlaylist();

    }
    throw new java.lang.IllegalStateException();
  }

  /** Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise */
  public boolean isSet(_Fields field) {
    if (field == null) {
      throw new java.lang.IllegalArgumentException();
    }

    switch (field) {
    case NOMBRE:
      return isSetNombre();
    case DESCRIPCION:
      return isSetDescripcion();
    case IMAGEN:
      return isSetImagen();
    case CORREO:
      return isSetCorreo();
    case ID_PLAYLIST:
      return isSetIdPlaylist();
    }
    throw new java.lang.IllegalStateException();
  }

  @Override
  public boolean equals(java.lang.Object that) {
    if (that == null)
      return false;
    if (that instanceof Playlist)
      return this.equals((Playlist)that);
    return false;
  }

  public boolean equals(Playlist that) {
    if (that == null)
      return false;
    if (this == that)
      return true;

    boolean this_present_nombre = true && this.isSetNombre();
    boolean that_present_nombre = true && that.isSetNombre();
    if (this_present_nombre || that_present_nombre) {
      if (!(this_present_nombre && that_present_nombre))
        return false;
      if (!this.nombre.equals(that.nombre))
        return false;
    }

    boolean this_present_descripcion = true && this.isSetDescripcion();
    boolean that_present_descripcion = true && that.isSetDescripcion();
    if (this_present_descripcion || that_present_descripcion) {
      if (!(this_present_descripcion && that_present_descripcion))
        return false;
      if (!this.descripcion.equals(that.descripcion))
        return false;
    }

    boolean this_present_imagen = true && this.isSetImagen();
    boolean that_present_imagen = true && that.isSetImagen();
    if (this_present_imagen || that_present_imagen) {
      if (!(this_present_imagen && that_present_imagen))
        return false;
      if (!this.imagen.equals(that.imagen))
        return false;
    }

    boolean this_present_correo = true && this.isSetCorreo();
    boolean that_present_correo = true && that.isSetCorreo();
    if (this_present_correo || that_present_correo) {
      if (!(this_present_correo && that_present_correo))
        return false;
      if (!this.correo.equals(that.correo))
        return false;
    }

    boolean this_present_idPlaylist = true;
    boolean that_present_idPlaylist = true;
    if (this_present_idPlaylist || that_present_idPlaylist) {
      if (!(this_present_idPlaylist && that_present_idPlaylist))
        return false;
      if (this.idPlaylist != that.idPlaylist)
        return false;
    }

    return true;
  }

  @Override
  public int hashCode() {
    int hashCode = 1;

    hashCode = hashCode * 8191 + ((isSetNombre()) ? 131071 : 524287);
    if (isSetNombre())
      hashCode = hashCode * 8191 + nombre.hashCode();

    hashCode = hashCode * 8191 + ((isSetDescripcion()) ? 131071 : 524287);
    if (isSetDescripcion())
      hashCode = hashCode * 8191 + descripcion.hashCode();

    hashCode = hashCode * 8191 + ((isSetImagen()) ? 131071 : 524287);
    if (isSetImagen())
      hashCode = hashCode * 8191 + imagen.hashCode();

    hashCode = hashCode * 8191 + ((isSetCorreo()) ? 131071 : 524287);
    if (isSetCorreo())
      hashCode = hashCode * 8191 + correo.hashCode();

    hashCode = hashCode * 8191 + idPlaylist;

    return hashCode;
  }

  @Override
  public int compareTo(Playlist other) {
    if (!getClass().equals(other.getClass())) {
      return getClass().getName().compareTo(other.getClass().getName());
    }

    int lastComparison = 0;

    lastComparison = java.lang.Boolean.valueOf(isSetNombre()).compareTo(other.isSetNombre());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetNombre()) {
      lastComparison = org.apache.thrift.TBaseHelper.compareTo(this.nombre, other.nombre);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = java.lang.Boolean.valueOf(isSetDescripcion()).compareTo(other.isSetDescripcion());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetDescripcion()) {
      lastComparison = org.apache.thrift.TBaseHelper.compareTo(this.descripcion, other.descripcion);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = java.lang.Boolean.valueOf(isSetImagen()).compareTo(other.isSetImagen());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetImagen()) {
      lastComparison = org.apache.thrift.TBaseHelper.compareTo(this.imagen, other.imagen);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = java.lang.Boolean.valueOf(isSetCorreo()).compareTo(other.isSetCorreo());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetCorreo()) {
      lastComparison = org.apache.thrift.TBaseHelper.compareTo(this.correo, other.correo);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = java.lang.Boolean.valueOf(isSetIdPlaylist()).compareTo(other.isSetIdPlaylist());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetIdPlaylist()) {
      lastComparison = org.apache.thrift.TBaseHelper.compareTo(this.idPlaylist, other.idPlaylist);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    return 0;
  }

  public _Fields fieldForId(int fieldId) {
    return _Fields.findByThriftId(fieldId);
  }

  public void read(org.apache.thrift.protocol.TProtocol iprot) throws org.apache.thrift.TException {
    scheme(iprot).read(iprot, this);
  }

  public void write(org.apache.thrift.protocol.TProtocol oprot) throws org.apache.thrift.TException {
    scheme(oprot).write(oprot, this);
  }

  @Override
  public java.lang.String toString() {
    java.lang.StringBuilder sb = new java.lang.StringBuilder("Playlist(");
    boolean first = true;

    sb.append("nombre:");
    if (this.nombre == null) {
      sb.append("null");
    } else {
      sb.append(this.nombre);
    }
    first = false;
    if (!first) sb.append(", ");
    sb.append("descripcion:");
    if (this.descripcion == null) {
      sb.append("null");
    } else {
      sb.append(this.descripcion);
    }
    first = false;
    if (!first) sb.append(", ");
    sb.append("imagen:");
    if (this.imagen == null) {
      sb.append("null");
    } else {
      org.apache.thrift.TBaseHelper.toString(this.imagen, sb);
    }
    first = false;
    if (!first) sb.append(", ");
    sb.append("correo:");
    if (this.correo == null) {
      sb.append("null");
    } else {
      sb.append(this.correo);
    }
    first = false;
    if (!first) sb.append(", ");
    sb.append("idPlaylist:");
    sb.append(this.idPlaylist);
    first = false;
    sb.append(")");
    return sb.toString();
  }

  public void validate() throws org.apache.thrift.TException {
    // check for required fields
    // check for sub-struct validity
  }

  private void writeObject(java.io.ObjectOutputStream out) throws java.io.IOException {
    try {
      write(new org.apache.thrift.protocol.TCompactProtocol(new org.apache.thrift.transport.TIOStreamTransport(out)));
    } catch (org.apache.thrift.TException te) {
      throw new java.io.IOException(te);
    }
  }

  private void readObject(java.io.ObjectInputStream in) throws java.io.IOException, java.lang.ClassNotFoundException {
    try {
      // it doesn't seem like you should have to do this, but java serialization is wacky, and doesn't call the default constructor.
      __isset_bitfield = 0;
      read(new org.apache.thrift.protocol.TCompactProtocol(new org.apache.thrift.transport.TIOStreamTransport(in)));
    } catch (org.apache.thrift.TException te) {
      throw new java.io.IOException(te);
    }
  }

  private static class PlaylistStandardSchemeFactory implements org.apache.thrift.scheme.SchemeFactory {
    public PlaylistStandardScheme getScheme() {
      return new PlaylistStandardScheme();
    }
  }

  private static class PlaylistStandardScheme extends org.apache.thrift.scheme.StandardScheme<Playlist> {

    public void read(org.apache.thrift.protocol.TProtocol iprot, Playlist struct) throws org.apache.thrift.TException {
      org.apache.thrift.protocol.TField schemeField;
      iprot.readStructBegin();
      while (true)
      {
        schemeField = iprot.readFieldBegin();
        if (schemeField.type == org.apache.thrift.protocol.TType.STOP) { 
          break;
        }
        switch (schemeField.id) {
          case 1: // NOMBRE
            if (schemeField.type == org.apache.thrift.protocol.TType.STRING) {
              struct.nombre = iprot.readString();
              struct.setNombreIsSet(true);
            } else { 
              org.apache.thrift.protocol.TProtocolUtil.skip(iprot, schemeField.type);
            }
            break;
          case 2: // DESCRIPCION
            if (schemeField.type == org.apache.thrift.protocol.TType.STRING) {
              struct.descripcion = iprot.readString();
              struct.setDescripcionIsSet(true);
            } else { 
              org.apache.thrift.protocol.TProtocolUtil.skip(iprot, schemeField.type);
            }
            break;
          case 3: // IMAGEN
            if (schemeField.type == org.apache.thrift.protocol.TType.STRING) {
              struct.imagen = iprot.readBinary();
              struct.setImagenIsSet(true);
            } else { 
              org.apache.thrift.protocol.TProtocolUtil.skip(iprot, schemeField.type);
            }
            break;
          case 4: // CORREO
            if (schemeField.type == org.apache.thrift.protocol.TType.STRING) {
              struct.correo = iprot.readString();
              struct.setCorreoIsSet(true);
            } else { 
              org.apache.thrift.protocol.TProtocolUtil.skip(iprot, schemeField.type);
            }
            break;
          case 5: // ID_PLAYLIST
            if (schemeField.type == org.apache.thrift.protocol.TType.I32) {
              struct.idPlaylist = iprot.readI32();
              struct.setIdPlaylistIsSet(true);
            } else { 
              org.apache.thrift.protocol.TProtocolUtil.skip(iprot, schemeField.type);
            }
            break;
          default:
            org.apache.thrift.protocol.TProtocolUtil.skip(iprot, schemeField.type);
        }
        iprot.readFieldEnd();
      }
      iprot.readStructEnd();

      // check for required fields of primitive type, which can't be checked in the validate method
      struct.validate();
    }

    public void write(org.apache.thrift.protocol.TProtocol oprot, Playlist struct) throws org.apache.thrift.TException {
      struct.validate();

      oprot.writeStructBegin(STRUCT_DESC);
      if (struct.nombre != null) {
        oprot.writeFieldBegin(NOMBRE_FIELD_DESC);
        oprot.writeString(struct.nombre);
        oprot.writeFieldEnd();
      }
      if (struct.descripcion != null) {
        oprot.writeFieldBegin(DESCRIPCION_FIELD_DESC);
        oprot.writeString(struct.descripcion);
        oprot.writeFieldEnd();
      }
      if (struct.imagen != null) {
        oprot.writeFieldBegin(IMAGEN_FIELD_DESC);
        oprot.writeBinary(struct.imagen);
        oprot.writeFieldEnd();
      }
      if (struct.correo != null) {
        oprot.writeFieldBegin(CORREO_FIELD_DESC);
        oprot.writeString(struct.correo);
        oprot.writeFieldEnd();
      }
      oprot.writeFieldBegin(ID_PLAYLIST_FIELD_DESC);
      oprot.writeI32(struct.idPlaylist);
      oprot.writeFieldEnd();
      oprot.writeFieldStop();
      oprot.writeStructEnd();
    }

  }

  private static class PlaylistTupleSchemeFactory implements org.apache.thrift.scheme.SchemeFactory {
    public PlaylistTupleScheme getScheme() {
      return new PlaylistTupleScheme();
    }
  }

  private static class PlaylistTupleScheme extends org.apache.thrift.scheme.TupleScheme<Playlist> {

    @Override
    public void write(org.apache.thrift.protocol.TProtocol prot, Playlist struct) throws org.apache.thrift.TException {
      org.apache.thrift.protocol.TTupleProtocol oprot = (org.apache.thrift.protocol.TTupleProtocol) prot;
      java.util.BitSet optionals = new java.util.BitSet();
      if (struct.isSetNombre()) {
        optionals.set(0);
      }
      if (struct.isSetDescripcion()) {
        optionals.set(1);
      }
      if (struct.isSetImagen()) {
        optionals.set(2);
      }
      if (struct.isSetCorreo()) {
        optionals.set(3);
      }
      if (struct.isSetIdPlaylist()) {
        optionals.set(4);
      }
      oprot.writeBitSet(optionals, 5);
      if (struct.isSetNombre()) {
        oprot.writeString(struct.nombre);
      }
      if (struct.isSetDescripcion()) {
        oprot.writeString(struct.descripcion);
      }
      if (struct.isSetImagen()) {
        oprot.writeBinary(struct.imagen);
      }
      if (struct.isSetCorreo()) {
        oprot.writeString(struct.correo);
      }
      if (struct.isSetIdPlaylist()) {
        oprot.writeI32(struct.idPlaylist);
      }
    }

    @Override
    public void read(org.apache.thrift.protocol.TProtocol prot, Playlist struct) throws org.apache.thrift.TException {
      org.apache.thrift.protocol.TTupleProtocol iprot = (org.apache.thrift.protocol.TTupleProtocol) prot;
      java.util.BitSet incoming = iprot.readBitSet(5);
      if (incoming.get(0)) {
        struct.nombre = iprot.readString();
        struct.setNombreIsSet(true);
      }
      if (incoming.get(1)) {
        struct.descripcion = iprot.readString();
        struct.setDescripcionIsSet(true);
      }
      if (incoming.get(2)) {
        struct.imagen = iprot.readBinary();
        struct.setImagenIsSet(true);
      }
      if (incoming.get(3)) {
        struct.correo = iprot.readString();
        struct.setCorreoIsSet(true);
      }
      if (incoming.get(4)) {
        struct.idPlaylist = iprot.readI32();
        struct.setIdPlaylistIsSet(true);
      }
    }
  }

  private static <S extends org.apache.thrift.scheme.IScheme> S scheme(org.apache.thrift.protocol.TProtocol proto) {
    return (org.apache.thrift.scheme.StandardScheme.class.equals(proto.getScheme()) ? STANDARD_SCHEME_FACTORY : TUPLE_SCHEME_FACTORY).getScheme();
  }
}

