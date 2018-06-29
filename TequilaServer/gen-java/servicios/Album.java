/**
 * Autogenerated by Thrift Compiler (0.11.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
package servicios;

@SuppressWarnings({"cast", "rawtypes", "serial", "unchecked", "unused"})
@javax.annotation.Generated(value = "Autogenerated by Thrift Compiler (0.11.0)", date = "2018-06-29")
public class Album implements org.apache.thrift.TBase<Album, Album._Fields>, java.io.Serializable, Cloneable, Comparable<Album> {
  private static final org.apache.thrift.protocol.TStruct STRUCT_DESC = new org.apache.thrift.protocol.TStruct("Album");

  private static final org.apache.thrift.protocol.TField ID_ALBUM_FIELD_DESC = new org.apache.thrift.protocol.TField("idAlbum", org.apache.thrift.protocol.TType.I32, (short)1);
  private static final org.apache.thrift.protocol.TField TITULO_FIELD_DESC = new org.apache.thrift.protocol.TField("titulo", org.apache.thrift.protocol.TType.STRING, (short)2);
  private static final org.apache.thrift.protocol.TField IMAGEN_ALBUM_FIELD_DESC = new org.apache.thrift.protocol.TField("imagenAlbum", org.apache.thrift.protocol.TType.STRING, (short)3);
  private static final org.apache.thrift.protocol.TField CORREO_FIELD_DESC = new org.apache.thrift.protocol.TField("correo", org.apache.thrift.protocol.TType.STRING, (short)4);
  private static final org.apache.thrift.protocol.TField ANIO_LANZAMIENTO_FIELD_DESC = new org.apache.thrift.protocol.TField("anioLanzamiento", org.apache.thrift.protocol.TType.STRING, (short)5);
  private static final org.apache.thrift.protocol.TField COMPANIA_DISCOGRAFICA_FIELD_DESC = new org.apache.thrift.protocol.TField("companiaDiscografica", org.apache.thrift.protocol.TType.STRING, (short)6);

  private static final org.apache.thrift.scheme.SchemeFactory STANDARD_SCHEME_FACTORY = new AlbumStandardSchemeFactory();
  private static final org.apache.thrift.scheme.SchemeFactory TUPLE_SCHEME_FACTORY = new AlbumTupleSchemeFactory();

  public int idAlbum; // required
  public java.lang.String titulo; // required
  public java.nio.ByteBuffer imagenAlbum; // required
  public java.lang.String correo; // required
  public java.lang.String anioLanzamiento; // required
  public java.lang.String companiaDiscografica; // required

  /** The set of fields this struct contains, along with convenience methods for finding and manipulating them. */
  public enum _Fields implements org.apache.thrift.TFieldIdEnum {
    ID_ALBUM((short)1, "idAlbum"),
    TITULO((short)2, "titulo"),
    IMAGEN_ALBUM((short)3, "imagenAlbum"),
    CORREO((short)4, "correo"),
    ANIO_LANZAMIENTO((short)5, "anioLanzamiento"),
    COMPANIA_DISCOGRAFICA((short)6, "companiaDiscografica");

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
        case 1: // ID_ALBUM
          return ID_ALBUM;
        case 2: // TITULO
          return TITULO;
        case 3: // IMAGEN_ALBUM
          return IMAGEN_ALBUM;
        case 4: // CORREO
          return CORREO;
        case 5: // ANIO_LANZAMIENTO
          return ANIO_LANZAMIENTO;
        case 6: // COMPANIA_DISCOGRAFICA
          return COMPANIA_DISCOGRAFICA;
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
  private static final int __IDALBUM_ISSET_ID = 0;
  private byte __isset_bitfield = 0;
  public static final java.util.Map<_Fields, org.apache.thrift.meta_data.FieldMetaData> metaDataMap;
  static {
    java.util.Map<_Fields, org.apache.thrift.meta_data.FieldMetaData> tmpMap = new java.util.EnumMap<_Fields, org.apache.thrift.meta_data.FieldMetaData>(_Fields.class);
    tmpMap.put(_Fields.ID_ALBUM, new org.apache.thrift.meta_data.FieldMetaData("idAlbum", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.FieldValueMetaData(org.apache.thrift.protocol.TType.I32)));
    tmpMap.put(_Fields.TITULO, new org.apache.thrift.meta_data.FieldMetaData("titulo", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.FieldValueMetaData(org.apache.thrift.protocol.TType.STRING)));
    tmpMap.put(_Fields.IMAGEN_ALBUM, new org.apache.thrift.meta_data.FieldMetaData("imagenAlbum", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.FieldValueMetaData(org.apache.thrift.protocol.TType.STRING        , true)));
    tmpMap.put(_Fields.CORREO, new org.apache.thrift.meta_data.FieldMetaData("correo", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.FieldValueMetaData(org.apache.thrift.protocol.TType.STRING)));
    tmpMap.put(_Fields.ANIO_LANZAMIENTO, new org.apache.thrift.meta_data.FieldMetaData("anioLanzamiento", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.FieldValueMetaData(org.apache.thrift.protocol.TType.STRING)));
    tmpMap.put(_Fields.COMPANIA_DISCOGRAFICA, new org.apache.thrift.meta_data.FieldMetaData("companiaDiscografica", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.FieldValueMetaData(org.apache.thrift.protocol.TType.STRING)));
    metaDataMap = java.util.Collections.unmodifiableMap(tmpMap);
    org.apache.thrift.meta_data.FieldMetaData.addStructMetaDataMap(Album.class, metaDataMap);
  }

  public Album() {
  }

  public Album(
    int idAlbum,
    java.lang.String titulo,
    java.nio.ByteBuffer imagenAlbum,
    java.lang.String correo,
    java.lang.String anioLanzamiento,
    java.lang.String companiaDiscografica)
  {
    this();
    this.idAlbum = idAlbum;
    setIdAlbumIsSet(true);
    this.titulo = titulo;
    this.imagenAlbum = org.apache.thrift.TBaseHelper.copyBinary(imagenAlbum);
    this.correo = correo;
    this.anioLanzamiento = anioLanzamiento;
    this.companiaDiscografica = companiaDiscografica;
  }

  /**
   * Performs a deep copy on <i>other</i>.
   */
  public Album(Album other) {
    __isset_bitfield = other.__isset_bitfield;
    this.idAlbum = other.idAlbum;
    if (other.isSetTitulo()) {
      this.titulo = other.titulo;
    }
    if (other.isSetImagenAlbum()) {
      this.imagenAlbum = org.apache.thrift.TBaseHelper.copyBinary(other.imagenAlbum);
    }
    if (other.isSetCorreo()) {
      this.correo = other.correo;
    }
    if (other.isSetAnioLanzamiento()) {
      this.anioLanzamiento = other.anioLanzamiento;
    }
    if (other.isSetCompaniaDiscografica()) {
      this.companiaDiscografica = other.companiaDiscografica;
    }
  }

  public Album deepCopy() {
    return new Album(this);
  }

  @Override
  public void clear() {
    setIdAlbumIsSet(false);
    this.idAlbum = 0;
    this.titulo = null;
    this.imagenAlbum = null;
    this.correo = null;
    this.anioLanzamiento = null;
    this.companiaDiscografica = null;
  }

  public int getIdAlbum() {
    return this.idAlbum;
  }

  public Album setIdAlbum(int idAlbum) {
    this.idAlbum = idAlbum;
    setIdAlbumIsSet(true);
    return this;
  }

  public void unsetIdAlbum() {
    __isset_bitfield = org.apache.thrift.EncodingUtils.clearBit(__isset_bitfield, __IDALBUM_ISSET_ID);
  }

  /** Returns true if field idAlbum is set (has been assigned a value) and false otherwise */
  public boolean isSetIdAlbum() {
    return org.apache.thrift.EncodingUtils.testBit(__isset_bitfield, __IDALBUM_ISSET_ID);
  }

  public void setIdAlbumIsSet(boolean value) {
    __isset_bitfield = org.apache.thrift.EncodingUtils.setBit(__isset_bitfield, __IDALBUM_ISSET_ID, value);
  }

  public java.lang.String getTitulo() {
    return this.titulo;
  }

  public Album setTitulo(java.lang.String titulo) {
    this.titulo = titulo;
    return this;
  }

  public void unsetTitulo() {
    this.titulo = null;
  }

  /** Returns true if field titulo is set (has been assigned a value) and false otherwise */
  public boolean isSetTitulo() {
    return this.titulo != null;
  }

  public void setTituloIsSet(boolean value) {
    if (!value) {
      this.titulo = null;
    }
  }

  public byte[] getImagenAlbum() {
    setImagenAlbum(org.apache.thrift.TBaseHelper.rightSize(imagenAlbum));
    return imagenAlbum == null ? null : imagenAlbum.array();
  }

  public java.nio.ByteBuffer bufferForImagenAlbum() {
    return org.apache.thrift.TBaseHelper.copyBinary(imagenAlbum);
  }

  public Album setImagenAlbum(byte[] imagenAlbum) {
    this.imagenAlbum = imagenAlbum == null ? (java.nio.ByteBuffer)null : java.nio.ByteBuffer.wrap(imagenAlbum.clone());
    return this;
  }

  public Album setImagenAlbum(java.nio.ByteBuffer imagenAlbum) {
    this.imagenAlbum = org.apache.thrift.TBaseHelper.copyBinary(imagenAlbum);
    return this;
  }

  public void unsetImagenAlbum() {
    this.imagenAlbum = null;
  }

  /** Returns true if field imagenAlbum is set (has been assigned a value) and false otherwise */
  public boolean isSetImagenAlbum() {
    return this.imagenAlbum != null;
  }

  public void setImagenAlbumIsSet(boolean value) {
    if (!value) {
      this.imagenAlbum = null;
    }
  }

  public java.lang.String getCorreo() {
    return this.correo;
  }

  public Album setCorreo(java.lang.String correo) {
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

  public java.lang.String getAnioLanzamiento() {
    return this.anioLanzamiento;
  }

  public Album setAnioLanzamiento(java.lang.String anioLanzamiento) {
    this.anioLanzamiento = anioLanzamiento;
    return this;
  }

  public void unsetAnioLanzamiento() {
    this.anioLanzamiento = null;
  }

  /** Returns true if field anioLanzamiento is set (has been assigned a value) and false otherwise */
  public boolean isSetAnioLanzamiento() {
    return this.anioLanzamiento != null;
  }

  public void setAnioLanzamientoIsSet(boolean value) {
    if (!value) {
      this.anioLanzamiento = null;
    }
  }

  public java.lang.String getCompaniaDiscografica() {
    return this.companiaDiscografica;
  }

  public Album setCompaniaDiscografica(java.lang.String companiaDiscografica) {
    this.companiaDiscografica = companiaDiscografica;
    return this;
  }

  public void unsetCompaniaDiscografica() {
    this.companiaDiscografica = null;
  }

  /** Returns true if field companiaDiscografica is set (has been assigned a value) and false otherwise */
  public boolean isSetCompaniaDiscografica() {
    return this.companiaDiscografica != null;
  }

  public void setCompaniaDiscograficaIsSet(boolean value) {
    if (!value) {
      this.companiaDiscografica = null;
    }
  }

  public void setFieldValue(_Fields field, java.lang.Object value) {
    switch (field) {
    case ID_ALBUM:
      if (value == null) {
        unsetIdAlbum();
      } else {
        setIdAlbum((java.lang.Integer)value);
      }
      break;

    case TITULO:
      if (value == null) {
        unsetTitulo();
      } else {
        setTitulo((java.lang.String)value);
      }
      break;

    case IMAGEN_ALBUM:
      if (value == null) {
        unsetImagenAlbum();
      } else {
        if (value instanceof byte[]) {
          setImagenAlbum((byte[])value);
        } else {
          setImagenAlbum((java.nio.ByteBuffer)value);
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

    case ANIO_LANZAMIENTO:
      if (value == null) {
        unsetAnioLanzamiento();
      } else {
        setAnioLanzamiento((java.lang.String)value);
      }
      break;

    case COMPANIA_DISCOGRAFICA:
      if (value == null) {
        unsetCompaniaDiscografica();
      } else {
        setCompaniaDiscografica((java.lang.String)value);
      }
      break;

    }
  }

  public java.lang.Object getFieldValue(_Fields field) {
    switch (field) {
    case ID_ALBUM:
      return getIdAlbum();

    case TITULO:
      return getTitulo();

    case IMAGEN_ALBUM:
      return getImagenAlbum();

    case CORREO:
      return getCorreo();

    case ANIO_LANZAMIENTO:
      return getAnioLanzamiento();

    case COMPANIA_DISCOGRAFICA:
      return getCompaniaDiscografica();

    }
    throw new java.lang.IllegalStateException();
  }

  /** Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise */
  public boolean isSet(_Fields field) {
    if (field == null) {
      throw new java.lang.IllegalArgumentException();
    }

    switch (field) {
    case ID_ALBUM:
      return isSetIdAlbum();
    case TITULO:
      return isSetTitulo();
    case IMAGEN_ALBUM:
      return isSetImagenAlbum();
    case CORREO:
      return isSetCorreo();
    case ANIO_LANZAMIENTO:
      return isSetAnioLanzamiento();
    case COMPANIA_DISCOGRAFICA:
      return isSetCompaniaDiscografica();
    }
    throw new java.lang.IllegalStateException();
  }

  @Override
  public boolean equals(java.lang.Object that) {
    if (that == null)
      return false;
    if (that instanceof Album)
      return this.equals((Album)that);
    return false;
  }

  public boolean equals(Album that) {
    if (that == null)
      return false;
    if (this == that)
      return true;

    boolean this_present_idAlbum = true;
    boolean that_present_idAlbum = true;
    if (this_present_idAlbum || that_present_idAlbum) {
      if (!(this_present_idAlbum && that_present_idAlbum))
        return false;
      if (this.idAlbum != that.idAlbum)
        return false;
    }

    boolean this_present_titulo = true && this.isSetTitulo();
    boolean that_present_titulo = true && that.isSetTitulo();
    if (this_present_titulo || that_present_titulo) {
      if (!(this_present_titulo && that_present_titulo))
        return false;
      if (!this.titulo.equals(that.titulo))
        return false;
    }

    boolean this_present_imagenAlbum = true && this.isSetImagenAlbum();
    boolean that_present_imagenAlbum = true && that.isSetImagenAlbum();
    if (this_present_imagenAlbum || that_present_imagenAlbum) {
      if (!(this_present_imagenAlbum && that_present_imagenAlbum))
        return false;
      if (!this.imagenAlbum.equals(that.imagenAlbum))
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

    boolean this_present_anioLanzamiento = true && this.isSetAnioLanzamiento();
    boolean that_present_anioLanzamiento = true && that.isSetAnioLanzamiento();
    if (this_present_anioLanzamiento || that_present_anioLanzamiento) {
      if (!(this_present_anioLanzamiento && that_present_anioLanzamiento))
        return false;
      if (!this.anioLanzamiento.equals(that.anioLanzamiento))
        return false;
    }

    boolean this_present_companiaDiscografica = true && this.isSetCompaniaDiscografica();
    boolean that_present_companiaDiscografica = true && that.isSetCompaniaDiscografica();
    if (this_present_companiaDiscografica || that_present_companiaDiscografica) {
      if (!(this_present_companiaDiscografica && that_present_companiaDiscografica))
        return false;
      if (!this.companiaDiscografica.equals(that.companiaDiscografica))
        return false;
    }

    return true;
  }

  @Override
  public int hashCode() {
    int hashCode = 1;

    hashCode = hashCode * 8191 + idAlbum;

    hashCode = hashCode * 8191 + ((isSetTitulo()) ? 131071 : 524287);
    if (isSetTitulo())
      hashCode = hashCode * 8191 + titulo.hashCode();

    hashCode = hashCode * 8191 + ((isSetImagenAlbum()) ? 131071 : 524287);
    if (isSetImagenAlbum())
      hashCode = hashCode * 8191 + imagenAlbum.hashCode();

    hashCode = hashCode * 8191 + ((isSetCorreo()) ? 131071 : 524287);
    if (isSetCorreo())
      hashCode = hashCode * 8191 + correo.hashCode();

    hashCode = hashCode * 8191 + ((isSetAnioLanzamiento()) ? 131071 : 524287);
    if (isSetAnioLanzamiento())
      hashCode = hashCode * 8191 + anioLanzamiento.hashCode();

    hashCode = hashCode * 8191 + ((isSetCompaniaDiscografica()) ? 131071 : 524287);
    if (isSetCompaniaDiscografica())
      hashCode = hashCode * 8191 + companiaDiscografica.hashCode();

    return hashCode;
  }

  @Override
  public int compareTo(Album other) {
    if (!getClass().equals(other.getClass())) {
      return getClass().getName().compareTo(other.getClass().getName());
    }

    int lastComparison = 0;

    lastComparison = java.lang.Boolean.valueOf(isSetIdAlbum()).compareTo(other.isSetIdAlbum());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetIdAlbum()) {
      lastComparison = org.apache.thrift.TBaseHelper.compareTo(this.idAlbum, other.idAlbum);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = java.lang.Boolean.valueOf(isSetTitulo()).compareTo(other.isSetTitulo());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetTitulo()) {
      lastComparison = org.apache.thrift.TBaseHelper.compareTo(this.titulo, other.titulo);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = java.lang.Boolean.valueOf(isSetImagenAlbum()).compareTo(other.isSetImagenAlbum());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetImagenAlbum()) {
      lastComparison = org.apache.thrift.TBaseHelper.compareTo(this.imagenAlbum, other.imagenAlbum);
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
    lastComparison = java.lang.Boolean.valueOf(isSetAnioLanzamiento()).compareTo(other.isSetAnioLanzamiento());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetAnioLanzamiento()) {
      lastComparison = org.apache.thrift.TBaseHelper.compareTo(this.anioLanzamiento, other.anioLanzamiento);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = java.lang.Boolean.valueOf(isSetCompaniaDiscografica()).compareTo(other.isSetCompaniaDiscografica());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetCompaniaDiscografica()) {
      lastComparison = org.apache.thrift.TBaseHelper.compareTo(this.companiaDiscografica, other.companiaDiscografica);
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
    java.lang.StringBuilder sb = new java.lang.StringBuilder("Album(");
    boolean first = true;

    sb.append("idAlbum:");
    sb.append(this.idAlbum);
    first = false;
    if (!first) sb.append(", ");
    sb.append("titulo:");
    if (this.titulo == null) {
      sb.append("null");
    } else {
      sb.append(this.titulo);
    }
    first = false;
    if (!first) sb.append(", ");
    sb.append("imagenAlbum:");
    if (this.imagenAlbum == null) {
      sb.append("null");
    } else {
      org.apache.thrift.TBaseHelper.toString(this.imagenAlbum, sb);
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
    sb.append("anioLanzamiento:");
    if (this.anioLanzamiento == null) {
      sb.append("null");
    } else {
      sb.append(this.anioLanzamiento);
    }
    first = false;
    if (!first) sb.append(", ");
    sb.append("companiaDiscografica:");
    if (this.companiaDiscografica == null) {
      sb.append("null");
    } else {
      sb.append(this.companiaDiscografica);
    }
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

  private static class AlbumStandardSchemeFactory implements org.apache.thrift.scheme.SchemeFactory {
    public AlbumStandardScheme getScheme() {
      return new AlbumStandardScheme();
    }
  }

  private static class AlbumStandardScheme extends org.apache.thrift.scheme.StandardScheme<Album> {

    public void read(org.apache.thrift.protocol.TProtocol iprot, Album struct) throws org.apache.thrift.TException {
      org.apache.thrift.protocol.TField schemeField;
      iprot.readStructBegin();
      while (true)
      {
        schemeField = iprot.readFieldBegin();
        if (schemeField.type == org.apache.thrift.protocol.TType.STOP) { 
          break;
        }
        switch (schemeField.id) {
          case 1: // ID_ALBUM
            if (schemeField.type == org.apache.thrift.protocol.TType.I32) {
              struct.idAlbum = iprot.readI32();
              struct.setIdAlbumIsSet(true);
            } else { 
              org.apache.thrift.protocol.TProtocolUtil.skip(iprot, schemeField.type);
            }
            break;
          case 2: // TITULO
            if (schemeField.type == org.apache.thrift.protocol.TType.STRING) {
              struct.titulo = iprot.readString();
              struct.setTituloIsSet(true);
            } else { 
              org.apache.thrift.protocol.TProtocolUtil.skip(iprot, schemeField.type);
            }
            break;
          case 3: // IMAGEN_ALBUM
            if (schemeField.type == org.apache.thrift.protocol.TType.STRING) {
              struct.imagenAlbum = iprot.readBinary();
              struct.setImagenAlbumIsSet(true);
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
          case 5: // ANIO_LANZAMIENTO
            if (schemeField.type == org.apache.thrift.protocol.TType.STRING) {
              struct.anioLanzamiento = iprot.readString();
              struct.setAnioLanzamientoIsSet(true);
            } else { 
              org.apache.thrift.protocol.TProtocolUtil.skip(iprot, schemeField.type);
            }
            break;
          case 6: // COMPANIA_DISCOGRAFICA
            if (schemeField.type == org.apache.thrift.protocol.TType.STRING) {
              struct.companiaDiscografica = iprot.readString();
              struct.setCompaniaDiscograficaIsSet(true);
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

    public void write(org.apache.thrift.protocol.TProtocol oprot, Album struct) throws org.apache.thrift.TException {
      struct.validate();

      oprot.writeStructBegin(STRUCT_DESC);
      oprot.writeFieldBegin(ID_ALBUM_FIELD_DESC);
      oprot.writeI32(struct.idAlbum);
      oprot.writeFieldEnd();
      if (struct.titulo != null) {
        oprot.writeFieldBegin(TITULO_FIELD_DESC);
        oprot.writeString(struct.titulo);
        oprot.writeFieldEnd();
      }
      if (struct.imagenAlbum != null) {
        oprot.writeFieldBegin(IMAGEN_ALBUM_FIELD_DESC);
        oprot.writeBinary(struct.imagenAlbum);
        oprot.writeFieldEnd();
      }
      if (struct.correo != null) {
        oprot.writeFieldBegin(CORREO_FIELD_DESC);
        oprot.writeString(struct.correo);
        oprot.writeFieldEnd();
      }
      if (struct.anioLanzamiento != null) {
        oprot.writeFieldBegin(ANIO_LANZAMIENTO_FIELD_DESC);
        oprot.writeString(struct.anioLanzamiento);
        oprot.writeFieldEnd();
      }
      if (struct.companiaDiscografica != null) {
        oprot.writeFieldBegin(COMPANIA_DISCOGRAFICA_FIELD_DESC);
        oprot.writeString(struct.companiaDiscografica);
        oprot.writeFieldEnd();
      }
      oprot.writeFieldStop();
      oprot.writeStructEnd();
    }

  }

  private static class AlbumTupleSchemeFactory implements org.apache.thrift.scheme.SchemeFactory {
    public AlbumTupleScheme getScheme() {
      return new AlbumTupleScheme();
    }
  }

  private static class AlbumTupleScheme extends org.apache.thrift.scheme.TupleScheme<Album> {

    @Override
    public void write(org.apache.thrift.protocol.TProtocol prot, Album struct) throws org.apache.thrift.TException {
      org.apache.thrift.protocol.TTupleProtocol oprot = (org.apache.thrift.protocol.TTupleProtocol) prot;
      java.util.BitSet optionals = new java.util.BitSet();
      if (struct.isSetIdAlbum()) {
        optionals.set(0);
      }
      if (struct.isSetTitulo()) {
        optionals.set(1);
      }
      if (struct.isSetImagenAlbum()) {
        optionals.set(2);
      }
      if (struct.isSetCorreo()) {
        optionals.set(3);
      }
      if (struct.isSetAnioLanzamiento()) {
        optionals.set(4);
      }
      if (struct.isSetCompaniaDiscografica()) {
        optionals.set(5);
      }
      oprot.writeBitSet(optionals, 6);
      if (struct.isSetIdAlbum()) {
        oprot.writeI32(struct.idAlbum);
      }
      if (struct.isSetTitulo()) {
        oprot.writeString(struct.titulo);
      }
      if (struct.isSetImagenAlbum()) {
        oprot.writeBinary(struct.imagenAlbum);
      }
      if (struct.isSetCorreo()) {
        oprot.writeString(struct.correo);
      }
      if (struct.isSetAnioLanzamiento()) {
        oprot.writeString(struct.anioLanzamiento);
      }
      if (struct.isSetCompaniaDiscografica()) {
        oprot.writeString(struct.companiaDiscografica);
      }
    }

    @Override
    public void read(org.apache.thrift.protocol.TProtocol prot, Album struct) throws org.apache.thrift.TException {
      org.apache.thrift.protocol.TTupleProtocol iprot = (org.apache.thrift.protocol.TTupleProtocol) prot;
      java.util.BitSet incoming = iprot.readBitSet(6);
      if (incoming.get(0)) {
        struct.idAlbum = iprot.readI32();
        struct.setIdAlbumIsSet(true);
      }
      if (incoming.get(1)) {
        struct.titulo = iprot.readString();
        struct.setTituloIsSet(true);
      }
      if (incoming.get(2)) {
        struct.imagenAlbum = iprot.readBinary();
        struct.setImagenAlbumIsSet(true);
      }
      if (incoming.get(3)) {
        struct.correo = iprot.readString();
        struct.setCorreoIsSet(true);
      }
      if (incoming.get(4)) {
        struct.anioLanzamiento = iprot.readString();
        struct.setAnioLanzamientoIsSet(true);
      }
      if (incoming.get(5)) {
        struct.companiaDiscografica = iprot.readString();
        struct.setCompaniaDiscograficaIsSet(true);
      }
    }
  }

  private static <S extends org.apache.thrift.scheme.IScheme> S scheme(org.apache.thrift.protocol.TProtocol proto) {
    return (org.apache.thrift.scheme.StandardScheme.class.equals(proto.getScheme()) ? STANDARD_SCHEME_FACTORY : TUPLE_SCHEME_FACTORY).getScheme();
  }
}
