/**
 * Autogenerated by Thrift Compiler (0.11.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
@SuppressWarnings({"cast", "rawtypes", "serial", "unchecked", "unused"})
@javax.annotation.Generated(value = "Autogenerated by Thrift Compiler (0.11.0)", date = "2018-06-28")
public class Contenido implements org.apache.thrift.TBase<Contenido, Contenido._Fields>, java.io.Serializable, Cloneable, Comparable<Contenido> {
  private static final org.apache.thrift.protocol.TStruct STRUCT_DESC = new org.apache.thrift.protocol.TStruct("Contenido");

  private static final org.apache.thrift.protocol.TField ID_CANCION_FIELD_DESC = new org.apache.thrift.protocol.TField("idCancion", org.apache.thrift.protocol.TType.I32, (short)1);
  private static final org.apache.thrift.protocol.TField ID_PLAYLIST_FIELD_DESC = new org.apache.thrift.protocol.TField("idPlaylist", org.apache.thrift.protocol.TType.I32, (short)2);

  private static final org.apache.thrift.scheme.SchemeFactory STANDARD_SCHEME_FACTORY = new ContenidoStandardSchemeFactory();
  private static final org.apache.thrift.scheme.SchemeFactory TUPLE_SCHEME_FACTORY = new ContenidoTupleSchemeFactory();

  public int idCancion; // required
  public int idPlaylist; // required

  /** The set of fields this struct contains, along with convenience methods for finding and manipulating them. */
  public enum _Fields implements org.apache.thrift.TFieldIdEnum {
    ID_CANCION((short)1, "idCancion"),
    ID_PLAYLIST((short)2, "idPlaylist");

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
        case 1: // ID_CANCION
          return ID_CANCION;
        case 2: // ID_PLAYLIST
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
  private static final int __IDCANCION_ISSET_ID = 0;
  private static final int __IDPLAYLIST_ISSET_ID = 1;
  private byte __isset_bitfield = 0;
  public static final java.util.Map<_Fields, org.apache.thrift.meta_data.FieldMetaData> metaDataMap;
  static {
    java.util.Map<_Fields, org.apache.thrift.meta_data.FieldMetaData> tmpMap = new java.util.EnumMap<_Fields, org.apache.thrift.meta_data.FieldMetaData>(_Fields.class);
    tmpMap.put(_Fields.ID_CANCION, new org.apache.thrift.meta_data.FieldMetaData("idCancion", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.FieldValueMetaData(org.apache.thrift.protocol.TType.I32)));
    tmpMap.put(_Fields.ID_PLAYLIST, new org.apache.thrift.meta_data.FieldMetaData("idPlaylist", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.FieldValueMetaData(org.apache.thrift.protocol.TType.I32)));
    metaDataMap = java.util.Collections.unmodifiableMap(tmpMap);
    org.apache.thrift.meta_data.FieldMetaData.addStructMetaDataMap(Contenido.class, metaDataMap);
  }

  public Contenido() {
  }

  public Contenido(
    int idCancion,
    int idPlaylist)
  {
    this();
    this.idCancion = idCancion;
    setIdCancionIsSet(true);
    this.idPlaylist = idPlaylist;
    setIdPlaylistIsSet(true);
  }

  /**
   * Performs a deep copy on <i>other</i>.
   */
  public Contenido(Contenido other) {
    __isset_bitfield = other.__isset_bitfield;
    this.idCancion = other.idCancion;
    this.idPlaylist = other.idPlaylist;
  }

  public Contenido deepCopy() {
    return new Contenido(this);
  }

  @Override
  public void clear() {
    setIdCancionIsSet(false);
    this.idCancion = 0;
    setIdPlaylistIsSet(false);
    this.idPlaylist = 0;
  }

  public int getIdCancion() {
    return this.idCancion;
  }

  public Contenido setIdCancion(int idCancion) {
    this.idCancion = idCancion;
    setIdCancionIsSet(true);
    return this;
  }

  public void unsetIdCancion() {
    __isset_bitfield = org.apache.thrift.EncodingUtils.clearBit(__isset_bitfield, __IDCANCION_ISSET_ID);
  }

  /** Returns true if field idCancion is set (has been assigned a value) and false otherwise */
  public boolean isSetIdCancion() {
    return org.apache.thrift.EncodingUtils.testBit(__isset_bitfield, __IDCANCION_ISSET_ID);
  }

  public void setIdCancionIsSet(boolean value) {
    __isset_bitfield = org.apache.thrift.EncodingUtils.setBit(__isset_bitfield, __IDCANCION_ISSET_ID, value);
  }

  public int getIdPlaylist() {
    return this.idPlaylist;
  }

  public Contenido setIdPlaylist(int idPlaylist) {
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
    case ID_CANCION:
      if (value == null) {
        unsetIdCancion();
      } else {
        setIdCancion((java.lang.Integer)value);
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
    case ID_CANCION:
      return getIdCancion();

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
    case ID_CANCION:
      return isSetIdCancion();
    case ID_PLAYLIST:
      return isSetIdPlaylist();
    }
    throw new java.lang.IllegalStateException();
  }

  @Override
  public boolean equals(java.lang.Object that) {
    if (that == null)
      return false;
    if (that instanceof Contenido)
      return this.equals((Contenido)that);
    return false;
  }

  public boolean equals(Contenido that) {
    if (that == null)
      return false;
    if (this == that)
      return true;

    boolean this_present_idCancion = true;
    boolean that_present_idCancion = true;
    if (this_present_idCancion || that_present_idCancion) {
      if (!(this_present_idCancion && that_present_idCancion))
        return false;
      if (this.idCancion != that.idCancion)
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

    hashCode = hashCode * 8191 + idCancion;

    hashCode = hashCode * 8191 + idPlaylist;

    return hashCode;
  }

  @Override
  public int compareTo(Contenido other) {
    if (!getClass().equals(other.getClass())) {
      return getClass().getName().compareTo(other.getClass().getName());
    }

    int lastComparison = 0;

    lastComparison = java.lang.Boolean.valueOf(isSetIdCancion()).compareTo(other.isSetIdCancion());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetIdCancion()) {
      lastComparison = org.apache.thrift.TBaseHelper.compareTo(this.idCancion, other.idCancion);
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
    java.lang.StringBuilder sb = new java.lang.StringBuilder("Contenido(");
    boolean first = true;

    sb.append("idCancion:");
    sb.append(this.idCancion);
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

  private static class ContenidoStandardSchemeFactory implements org.apache.thrift.scheme.SchemeFactory {
    public ContenidoStandardScheme getScheme() {
      return new ContenidoStandardScheme();
    }
  }

  private static class ContenidoStandardScheme extends org.apache.thrift.scheme.StandardScheme<Contenido> {

    public void read(org.apache.thrift.protocol.TProtocol iprot, Contenido struct) throws org.apache.thrift.TException {
      org.apache.thrift.protocol.TField schemeField;
      iprot.readStructBegin();
      while (true)
      {
        schemeField = iprot.readFieldBegin();
        if (schemeField.type == org.apache.thrift.protocol.TType.STOP) { 
          break;
        }
        switch (schemeField.id) {
          case 1: // ID_CANCION
            if (schemeField.type == org.apache.thrift.protocol.TType.I32) {
              struct.idCancion = iprot.readI32();
              struct.setIdCancionIsSet(true);
            } else { 
              org.apache.thrift.protocol.TProtocolUtil.skip(iprot, schemeField.type);
            }
            break;
          case 2: // ID_PLAYLIST
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

    public void write(org.apache.thrift.protocol.TProtocol oprot, Contenido struct) throws org.apache.thrift.TException {
      struct.validate();

      oprot.writeStructBegin(STRUCT_DESC);
      oprot.writeFieldBegin(ID_CANCION_FIELD_DESC);
      oprot.writeI32(struct.idCancion);
      oprot.writeFieldEnd();
      oprot.writeFieldBegin(ID_PLAYLIST_FIELD_DESC);
      oprot.writeI32(struct.idPlaylist);
      oprot.writeFieldEnd();
      oprot.writeFieldStop();
      oprot.writeStructEnd();
    }

  }

  private static class ContenidoTupleSchemeFactory implements org.apache.thrift.scheme.SchemeFactory {
    public ContenidoTupleScheme getScheme() {
      return new ContenidoTupleScheme();
    }
  }

  private static class ContenidoTupleScheme extends org.apache.thrift.scheme.TupleScheme<Contenido> {

    @Override
    public void write(org.apache.thrift.protocol.TProtocol prot, Contenido struct) throws org.apache.thrift.TException {
      org.apache.thrift.protocol.TTupleProtocol oprot = (org.apache.thrift.protocol.TTupleProtocol) prot;
      java.util.BitSet optionals = new java.util.BitSet();
      if (struct.isSetIdCancion()) {
        optionals.set(0);
      }
      if (struct.isSetIdPlaylist()) {
        optionals.set(1);
      }
      oprot.writeBitSet(optionals, 2);
      if (struct.isSetIdCancion()) {
        oprot.writeI32(struct.idCancion);
      }
      if (struct.isSetIdPlaylist()) {
        oprot.writeI32(struct.idPlaylist);
      }
    }

    @Override
    public void read(org.apache.thrift.protocol.TProtocol prot, Contenido struct) throws org.apache.thrift.TException {
      org.apache.thrift.protocol.TTupleProtocol iprot = (org.apache.thrift.protocol.TTupleProtocol) prot;
      java.util.BitSet incoming = iprot.readBitSet(2);
      if (incoming.get(0)) {
        struct.idCancion = iprot.readI32();
        struct.setIdCancionIsSet(true);
      }
      if (incoming.get(1)) {
        struct.idPlaylist = iprot.readI32();
        struct.setIdPlaylistIsSet(true);
      }
    }
  }

  private static <S extends org.apache.thrift.scheme.IScheme> S scheme(org.apache.thrift.protocol.TProtocol proto) {
    return (org.apache.thrift.scheme.StandardScheme.class.equals(proto.getScheme()) ? STANDARD_SCHEME_FACTORY : TUPLE_SCHEME_FACTORY).getScheme();
  }
}

