/**
 * Autogenerated by Thrift Compiler (0.11.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
@SuppressWarnings({"cast", "rawtypes", "serial", "unchecked", "unused"})
@javax.annotation.Generated(value = "Autogenerated by Thrift Compiler (0.11.0)", date = "2018-06-28")
public class Biblioteca implements org.apache.thrift.TBase<Biblioteca, Biblioteca._Fields>, java.io.Serializable, Cloneable, Comparable<Biblioteca> {
  private static final org.apache.thrift.protocol.TStruct STRUCT_DESC = new org.apache.thrift.protocol.TStruct("Biblioteca");

  private static final org.apache.thrift.protocol.TField ID_CANCION_FIELD_DESC = new org.apache.thrift.protocol.TField("idCancion", org.apache.thrift.protocol.TType.I32, (short)1);
  private static final org.apache.thrift.protocol.TField CORREO_FIELD_DESC = new org.apache.thrift.protocol.TField("correo", org.apache.thrift.protocol.TType.STRING, (short)2);
  private static final org.apache.thrift.protocol.TField PUNTUACION_FIELD_DESC = new org.apache.thrift.protocol.TField("puntuacion", org.apache.thrift.protocol.TType.I32, (short)3);
  private static final org.apache.thrift.protocol.TField DESCARGADA_FIELD_DESC = new org.apache.thrift.protocol.TField("descargada", org.apache.thrift.protocol.TType.STRING, (short)4);

  private static final org.apache.thrift.scheme.SchemeFactory STANDARD_SCHEME_FACTORY = new BibliotecaStandardSchemeFactory();
  private static final org.apache.thrift.scheme.SchemeFactory TUPLE_SCHEME_FACTORY = new BibliotecaTupleSchemeFactory();

  public int idCancion; // required
  public java.lang.String correo; // required
  public int puntuacion; // required
  public java.lang.String descargada; // required

  /** The set of fields this struct contains, along with convenience methods for finding and manipulating them. */
  public enum _Fields implements org.apache.thrift.TFieldIdEnum {
    ID_CANCION((short)1, "idCancion"),
    CORREO((short)2, "correo"),
    PUNTUACION((short)3, "puntuacion"),
    DESCARGADA((short)4, "descargada");

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
        case 2: // CORREO
          return CORREO;
        case 3: // PUNTUACION
          return PUNTUACION;
        case 4: // DESCARGADA
          return DESCARGADA;
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
  private static final int __PUNTUACION_ISSET_ID = 1;
  private byte __isset_bitfield = 0;
  public static final java.util.Map<_Fields, org.apache.thrift.meta_data.FieldMetaData> metaDataMap;
  static {
    java.util.Map<_Fields, org.apache.thrift.meta_data.FieldMetaData> tmpMap = new java.util.EnumMap<_Fields, org.apache.thrift.meta_data.FieldMetaData>(_Fields.class);
    tmpMap.put(_Fields.ID_CANCION, new org.apache.thrift.meta_data.FieldMetaData("idCancion", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.FieldValueMetaData(org.apache.thrift.protocol.TType.I32)));
    tmpMap.put(_Fields.CORREO, new org.apache.thrift.meta_data.FieldMetaData("correo", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.FieldValueMetaData(org.apache.thrift.protocol.TType.STRING)));
    tmpMap.put(_Fields.PUNTUACION, new org.apache.thrift.meta_data.FieldMetaData("puntuacion", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.FieldValueMetaData(org.apache.thrift.protocol.TType.I32)));
    tmpMap.put(_Fields.DESCARGADA, new org.apache.thrift.meta_data.FieldMetaData("descargada", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.FieldValueMetaData(org.apache.thrift.protocol.TType.STRING)));
    metaDataMap = java.util.Collections.unmodifiableMap(tmpMap);
    org.apache.thrift.meta_data.FieldMetaData.addStructMetaDataMap(Biblioteca.class, metaDataMap);
  }

  public Biblioteca() {
  }

  public Biblioteca(
    int idCancion,
    java.lang.String correo,
    int puntuacion,
    java.lang.String descargada)
  {
    this();
    this.idCancion = idCancion;
    setIdCancionIsSet(true);
    this.correo = correo;
    this.puntuacion = puntuacion;
    setPuntuacionIsSet(true);
    this.descargada = descargada;
  }

  /**
   * Performs a deep copy on <i>other</i>.
   */
  public Biblioteca(Biblioteca other) {
    __isset_bitfield = other.__isset_bitfield;
    this.idCancion = other.idCancion;
    if (other.isSetCorreo()) {
      this.correo = other.correo;
    }
    this.puntuacion = other.puntuacion;
    if (other.isSetDescargada()) {
      this.descargada = other.descargada;
    }
  }

  public Biblioteca deepCopy() {
    return new Biblioteca(this);
  }

  @Override
  public void clear() {
    setIdCancionIsSet(false);
    this.idCancion = 0;
    this.correo = null;
    setPuntuacionIsSet(false);
    this.puntuacion = 0;
    this.descargada = null;
  }

  public int getIdCancion() {
    return this.idCancion;
  }

  public Biblioteca setIdCancion(int idCancion) {
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

  public java.lang.String getCorreo() {
    return this.correo;
  }

  public Biblioteca setCorreo(java.lang.String correo) {
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

  public int getPuntuacion() {
    return this.puntuacion;
  }

  public Biblioteca setPuntuacion(int puntuacion) {
    this.puntuacion = puntuacion;
    setPuntuacionIsSet(true);
    return this;
  }

  public void unsetPuntuacion() {
    __isset_bitfield = org.apache.thrift.EncodingUtils.clearBit(__isset_bitfield, __PUNTUACION_ISSET_ID);
  }

  /** Returns true if field puntuacion is set (has been assigned a value) and false otherwise */
  public boolean isSetPuntuacion() {
    return org.apache.thrift.EncodingUtils.testBit(__isset_bitfield, __PUNTUACION_ISSET_ID);
  }

  public void setPuntuacionIsSet(boolean value) {
    __isset_bitfield = org.apache.thrift.EncodingUtils.setBit(__isset_bitfield, __PUNTUACION_ISSET_ID, value);
  }

  public java.lang.String getDescargada() {
    return this.descargada;
  }

  public Biblioteca setDescargada(java.lang.String descargada) {
    this.descargada = descargada;
    return this;
  }

  public void unsetDescargada() {
    this.descargada = null;
  }

  /** Returns true if field descargada is set (has been assigned a value) and false otherwise */
  public boolean isSetDescargada() {
    return this.descargada != null;
  }

  public void setDescargadaIsSet(boolean value) {
    if (!value) {
      this.descargada = null;
    }
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

    case CORREO:
      if (value == null) {
        unsetCorreo();
      } else {
        setCorreo((java.lang.String)value);
      }
      break;

    case PUNTUACION:
      if (value == null) {
        unsetPuntuacion();
      } else {
        setPuntuacion((java.lang.Integer)value);
      }
      break;

    case DESCARGADA:
      if (value == null) {
        unsetDescargada();
      } else {
        setDescargada((java.lang.String)value);
      }
      break;

    }
  }

  public java.lang.Object getFieldValue(_Fields field) {
    switch (field) {
    case ID_CANCION:
      return getIdCancion();

    case CORREO:
      return getCorreo();

    case PUNTUACION:
      return getPuntuacion();

    case DESCARGADA:
      return getDescargada();

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
    case CORREO:
      return isSetCorreo();
    case PUNTUACION:
      return isSetPuntuacion();
    case DESCARGADA:
      return isSetDescargada();
    }
    throw new java.lang.IllegalStateException();
  }

  @Override
  public boolean equals(java.lang.Object that) {
    if (that == null)
      return false;
    if (that instanceof Biblioteca)
      return this.equals((Biblioteca)that);
    return false;
  }

  public boolean equals(Biblioteca that) {
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

    boolean this_present_correo = true && this.isSetCorreo();
    boolean that_present_correo = true && that.isSetCorreo();
    if (this_present_correo || that_present_correo) {
      if (!(this_present_correo && that_present_correo))
        return false;
      if (!this.correo.equals(that.correo))
        return false;
    }

    boolean this_present_puntuacion = true;
    boolean that_present_puntuacion = true;
    if (this_present_puntuacion || that_present_puntuacion) {
      if (!(this_present_puntuacion && that_present_puntuacion))
        return false;
      if (this.puntuacion != that.puntuacion)
        return false;
    }

    boolean this_present_descargada = true && this.isSetDescargada();
    boolean that_present_descargada = true && that.isSetDescargada();
    if (this_present_descargada || that_present_descargada) {
      if (!(this_present_descargada && that_present_descargada))
        return false;
      if (!this.descargada.equals(that.descargada))
        return false;
    }

    return true;
  }

  @Override
  public int hashCode() {
    int hashCode = 1;

    hashCode = hashCode * 8191 + idCancion;

    hashCode = hashCode * 8191 + ((isSetCorreo()) ? 131071 : 524287);
    if (isSetCorreo())
      hashCode = hashCode * 8191 + correo.hashCode();

    hashCode = hashCode * 8191 + puntuacion;

    hashCode = hashCode * 8191 + ((isSetDescargada()) ? 131071 : 524287);
    if (isSetDescargada())
      hashCode = hashCode * 8191 + descargada.hashCode();

    return hashCode;
  }

  @Override
  public int compareTo(Biblioteca other) {
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
    lastComparison = java.lang.Boolean.valueOf(isSetPuntuacion()).compareTo(other.isSetPuntuacion());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetPuntuacion()) {
      lastComparison = org.apache.thrift.TBaseHelper.compareTo(this.puntuacion, other.puntuacion);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = java.lang.Boolean.valueOf(isSetDescargada()).compareTo(other.isSetDescargada());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetDescargada()) {
      lastComparison = org.apache.thrift.TBaseHelper.compareTo(this.descargada, other.descargada);
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
    java.lang.StringBuilder sb = new java.lang.StringBuilder("Biblioteca(");
    boolean first = true;

    sb.append("idCancion:");
    sb.append(this.idCancion);
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
    sb.append("puntuacion:");
    sb.append(this.puntuacion);
    first = false;
    if (!first) sb.append(", ");
    sb.append("descargada:");
    if (this.descargada == null) {
      sb.append("null");
    } else {
      sb.append(this.descargada);
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

  private static class BibliotecaStandardSchemeFactory implements org.apache.thrift.scheme.SchemeFactory {
    public BibliotecaStandardScheme getScheme() {
      return new BibliotecaStandardScheme();
    }
  }

  private static class BibliotecaStandardScheme extends org.apache.thrift.scheme.StandardScheme<Biblioteca> {

    public void read(org.apache.thrift.protocol.TProtocol iprot, Biblioteca struct) throws org.apache.thrift.TException {
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
          case 2: // CORREO
            if (schemeField.type == org.apache.thrift.protocol.TType.STRING) {
              struct.correo = iprot.readString();
              struct.setCorreoIsSet(true);
            } else { 
              org.apache.thrift.protocol.TProtocolUtil.skip(iprot, schemeField.type);
            }
            break;
          case 3: // PUNTUACION
            if (schemeField.type == org.apache.thrift.protocol.TType.I32) {
              struct.puntuacion = iprot.readI32();
              struct.setPuntuacionIsSet(true);
            } else { 
              org.apache.thrift.protocol.TProtocolUtil.skip(iprot, schemeField.type);
            }
            break;
          case 4: // DESCARGADA
            if (schemeField.type == org.apache.thrift.protocol.TType.STRING) {
              struct.descargada = iprot.readString();
              struct.setDescargadaIsSet(true);
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

    public void write(org.apache.thrift.protocol.TProtocol oprot, Biblioteca struct) throws org.apache.thrift.TException {
      struct.validate();

      oprot.writeStructBegin(STRUCT_DESC);
      oprot.writeFieldBegin(ID_CANCION_FIELD_DESC);
      oprot.writeI32(struct.idCancion);
      oprot.writeFieldEnd();
      if (struct.correo != null) {
        oprot.writeFieldBegin(CORREO_FIELD_DESC);
        oprot.writeString(struct.correo);
        oprot.writeFieldEnd();
      }
      oprot.writeFieldBegin(PUNTUACION_FIELD_DESC);
      oprot.writeI32(struct.puntuacion);
      oprot.writeFieldEnd();
      if (struct.descargada != null) {
        oprot.writeFieldBegin(DESCARGADA_FIELD_DESC);
        oprot.writeString(struct.descargada);
        oprot.writeFieldEnd();
      }
      oprot.writeFieldStop();
      oprot.writeStructEnd();
    }

  }

  private static class BibliotecaTupleSchemeFactory implements org.apache.thrift.scheme.SchemeFactory {
    public BibliotecaTupleScheme getScheme() {
      return new BibliotecaTupleScheme();
    }
  }

  private static class BibliotecaTupleScheme extends org.apache.thrift.scheme.TupleScheme<Biblioteca> {

    @Override
    public void write(org.apache.thrift.protocol.TProtocol prot, Biblioteca struct) throws org.apache.thrift.TException {
      org.apache.thrift.protocol.TTupleProtocol oprot = (org.apache.thrift.protocol.TTupleProtocol) prot;
      java.util.BitSet optionals = new java.util.BitSet();
      if (struct.isSetIdCancion()) {
        optionals.set(0);
      }
      if (struct.isSetCorreo()) {
        optionals.set(1);
      }
      if (struct.isSetPuntuacion()) {
        optionals.set(2);
      }
      if (struct.isSetDescargada()) {
        optionals.set(3);
      }
      oprot.writeBitSet(optionals, 4);
      if (struct.isSetIdCancion()) {
        oprot.writeI32(struct.idCancion);
      }
      if (struct.isSetCorreo()) {
        oprot.writeString(struct.correo);
      }
      if (struct.isSetPuntuacion()) {
        oprot.writeI32(struct.puntuacion);
      }
      if (struct.isSetDescargada()) {
        oprot.writeString(struct.descargada);
      }
    }

    @Override
    public void read(org.apache.thrift.protocol.TProtocol prot, Biblioteca struct) throws org.apache.thrift.TException {
      org.apache.thrift.protocol.TTupleProtocol iprot = (org.apache.thrift.protocol.TTupleProtocol) prot;
      java.util.BitSet incoming = iprot.readBitSet(4);
      if (incoming.get(0)) {
        struct.idCancion = iprot.readI32();
        struct.setIdCancionIsSet(true);
      }
      if (incoming.get(1)) {
        struct.correo = iprot.readString();
        struct.setCorreoIsSet(true);
      }
      if (incoming.get(2)) {
        struct.puntuacion = iprot.readI32();
        struct.setPuntuacionIsSet(true);
      }
      if (incoming.get(3)) {
        struct.descargada = iprot.readString();
        struct.setDescargadaIsSet(true);
      }
    }
  }

  private static <S extends org.apache.thrift.scheme.IScheme> S scheme(org.apache.thrift.protocol.TProtocol proto) {
    return (org.apache.thrift.scheme.StandardScheme.class.equals(proto.getScheme()) ? STANDARD_SCHEME_FACTORY : TUPLE_SCHEME_FACTORY).getScheme();
  }
}

