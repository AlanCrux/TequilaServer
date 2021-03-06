/**
 * Autogenerated by Thrift Compiler (0.11.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
package servicios;

@SuppressWarnings({"cast", "rawtypes", "serial", "unchecked", "unused"})
@javax.annotation.Generated(value = "Autogenerated by Thrift Compiler (0.11.0)", date = "2018-06-29")
public class Genero implements org.apache.thrift.TBase<Genero, Genero._Fields>, java.io.Serializable, Cloneable, Comparable<Genero> {
  private static final org.apache.thrift.protocol.TStruct STRUCT_DESC = new org.apache.thrift.protocol.TStruct("Genero");

  private static final org.apache.thrift.protocol.TField ID_GENERO_FIELD_DESC = new org.apache.thrift.protocol.TField("idGenero", org.apache.thrift.protocol.TType.I32, (short)1);
  private static final org.apache.thrift.protocol.TField NOMBRE_GENERO_FIELD_DESC = new org.apache.thrift.protocol.TField("nombreGenero", org.apache.thrift.protocol.TType.STRING, (short)2);

  private static final org.apache.thrift.scheme.SchemeFactory STANDARD_SCHEME_FACTORY = new GeneroStandardSchemeFactory();
  private static final org.apache.thrift.scheme.SchemeFactory TUPLE_SCHEME_FACTORY = new GeneroTupleSchemeFactory();

  public int idGenero; // required
  public java.lang.String nombreGenero; // required

  /** The set of fields this struct contains, along with convenience methods for finding and manipulating them. */
  public enum _Fields implements org.apache.thrift.TFieldIdEnum {
    ID_GENERO((short)1, "idGenero"),
    NOMBRE_GENERO((short)2, "nombreGenero");

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
        case 1: // ID_GENERO
          return ID_GENERO;
        case 2: // NOMBRE_GENERO
          return NOMBRE_GENERO;
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
  private static final int __IDGENERO_ISSET_ID = 0;
  private byte __isset_bitfield = 0;
  public static final java.util.Map<_Fields, org.apache.thrift.meta_data.FieldMetaData> metaDataMap;
  static {
    java.util.Map<_Fields, org.apache.thrift.meta_data.FieldMetaData> tmpMap = new java.util.EnumMap<_Fields, org.apache.thrift.meta_data.FieldMetaData>(_Fields.class);
    tmpMap.put(_Fields.ID_GENERO, new org.apache.thrift.meta_data.FieldMetaData("idGenero", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.FieldValueMetaData(org.apache.thrift.protocol.TType.I32)));
    tmpMap.put(_Fields.NOMBRE_GENERO, new org.apache.thrift.meta_data.FieldMetaData("nombreGenero", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.FieldValueMetaData(org.apache.thrift.protocol.TType.STRING)));
    metaDataMap = java.util.Collections.unmodifiableMap(tmpMap);
    org.apache.thrift.meta_data.FieldMetaData.addStructMetaDataMap(Genero.class, metaDataMap);
  }

  public Genero() {
  }

  public Genero(
    int idGenero,
    java.lang.String nombreGenero)
  {
    this();
    this.idGenero = idGenero;
    setIdGeneroIsSet(true);
    this.nombreGenero = nombreGenero;
  }

  /**
   * Performs a deep copy on <i>other</i>.
   */
  public Genero(Genero other) {
    __isset_bitfield = other.__isset_bitfield;
    this.idGenero = other.idGenero;
    if (other.isSetNombreGenero()) {
      this.nombreGenero = other.nombreGenero;
    }
  }

  public Genero deepCopy() {
    return new Genero(this);
  }

  @Override
  public void clear() {
    setIdGeneroIsSet(false);
    this.idGenero = 0;
    this.nombreGenero = null;
  }

  public int getIdGenero() {
    return this.idGenero;
  }

  public Genero setIdGenero(int idGenero) {
    this.idGenero = idGenero;
    setIdGeneroIsSet(true);
    return this;
  }

  public void unsetIdGenero() {
    __isset_bitfield = org.apache.thrift.EncodingUtils.clearBit(__isset_bitfield, __IDGENERO_ISSET_ID);
  }

  /** Returns true if field idGenero is set (has been assigned a value) and false otherwise */
  public boolean isSetIdGenero() {
    return org.apache.thrift.EncodingUtils.testBit(__isset_bitfield, __IDGENERO_ISSET_ID);
  }

  public void setIdGeneroIsSet(boolean value) {
    __isset_bitfield = org.apache.thrift.EncodingUtils.setBit(__isset_bitfield, __IDGENERO_ISSET_ID, value);
  }

  public java.lang.String getNombreGenero() {
    return this.nombreGenero;
  }

  public Genero setNombreGenero(java.lang.String nombreGenero) {
    this.nombreGenero = nombreGenero;
    return this;
  }

  public void unsetNombreGenero() {
    this.nombreGenero = null;
  }

  /** Returns true if field nombreGenero is set (has been assigned a value) and false otherwise */
  public boolean isSetNombreGenero() {
    return this.nombreGenero != null;
  }

  public void setNombreGeneroIsSet(boolean value) {
    if (!value) {
      this.nombreGenero = null;
    }
  }

  public void setFieldValue(_Fields field, java.lang.Object value) {
    switch (field) {
    case ID_GENERO:
      if (value == null) {
        unsetIdGenero();
      } else {
        setIdGenero((java.lang.Integer)value);
      }
      break;

    case NOMBRE_GENERO:
      if (value == null) {
        unsetNombreGenero();
      } else {
        setNombreGenero((java.lang.String)value);
      }
      break;

    }
  }

  public java.lang.Object getFieldValue(_Fields field) {
    switch (field) {
    case ID_GENERO:
      return getIdGenero();

    case NOMBRE_GENERO:
      return getNombreGenero();

    }
    throw new java.lang.IllegalStateException();
  }

  /** Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise */
  public boolean isSet(_Fields field) {
    if (field == null) {
      throw new java.lang.IllegalArgumentException();
    }

    switch (field) {
    case ID_GENERO:
      return isSetIdGenero();
    case NOMBRE_GENERO:
      return isSetNombreGenero();
    }
    throw new java.lang.IllegalStateException();
  }

  @Override
  public boolean equals(java.lang.Object that) {
    if (that == null)
      return false;
    if (that instanceof Genero)
      return this.equals((Genero)that);
    return false;
  }

  public boolean equals(Genero that) {
    if (that == null)
      return false;
    if (this == that)
      return true;

    boolean this_present_idGenero = true;
    boolean that_present_idGenero = true;
    if (this_present_idGenero || that_present_idGenero) {
      if (!(this_present_idGenero && that_present_idGenero))
        return false;
      if (this.idGenero != that.idGenero)
        return false;
    }

    boolean this_present_nombreGenero = true && this.isSetNombreGenero();
    boolean that_present_nombreGenero = true && that.isSetNombreGenero();
    if (this_present_nombreGenero || that_present_nombreGenero) {
      if (!(this_present_nombreGenero && that_present_nombreGenero))
        return false;
      if (!this.nombreGenero.equals(that.nombreGenero))
        return false;
    }

    return true;
  }

  @Override
  public int hashCode() {
    int hashCode = 1;

    hashCode = hashCode * 8191 + idGenero;

    hashCode = hashCode * 8191 + ((isSetNombreGenero()) ? 131071 : 524287);
    if (isSetNombreGenero())
      hashCode = hashCode * 8191 + nombreGenero.hashCode();

    return hashCode;
  }

  @Override
  public int compareTo(Genero other) {
    if (!getClass().equals(other.getClass())) {
      return getClass().getName().compareTo(other.getClass().getName());
    }

    int lastComparison = 0;

    lastComparison = java.lang.Boolean.valueOf(isSetIdGenero()).compareTo(other.isSetIdGenero());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetIdGenero()) {
      lastComparison = org.apache.thrift.TBaseHelper.compareTo(this.idGenero, other.idGenero);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = java.lang.Boolean.valueOf(isSetNombreGenero()).compareTo(other.isSetNombreGenero());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetNombreGenero()) {
      lastComparison = org.apache.thrift.TBaseHelper.compareTo(this.nombreGenero, other.nombreGenero);
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
    java.lang.StringBuilder sb = new java.lang.StringBuilder("Genero(");
    boolean first = true;

    sb.append("idGenero:");
    sb.append(this.idGenero);
    first = false;
    if (!first) sb.append(", ");
    sb.append("nombreGenero:");
    if (this.nombreGenero == null) {
      sb.append("null");
    } else {
      sb.append(this.nombreGenero);
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

  private static class GeneroStandardSchemeFactory implements org.apache.thrift.scheme.SchemeFactory {
    public GeneroStandardScheme getScheme() {
      return new GeneroStandardScheme();
    }
  }

  private static class GeneroStandardScheme extends org.apache.thrift.scheme.StandardScheme<Genero> {

    public void read(org.apache.thrift.protocol.TProtocol iprot, Genero struct) throws org.apache.thrift.TException {
      org.apache.thrift.protocol.TField schemeField;
      iprot.readStructBegin();
      while (true)
      {
        schemeField = iprot.readFieldBegin();
        if (schemeField.type == org.apache.thrift.protocol.TType.STOP) { 
          break;
        }
        switch (schemeField.id) {
          case 1: // ID_GENERO
            if (schemeField.type == org.apache.thrift.protocol.TType.I32) {
              struct.idGenero = iprot.readI32();
              struct.setIdGeneroIsSet(true);
            } else { 
              org.apache.thrift.protocol.TProtocolUtil.skip(iprot, schemeField.type);
            }
            break;
          case 2: // NOMBRE_GENERO
            if (schemeField.type == org.apache.thrift.protocol.TType.STRING) {
              struct.nombreGenero = iprot.readString();
              struct.setNombreGeneroIsSet(true);
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

    public void write(org.apache.thrift.protocol.TProtocol oprot, Genero struct) throws org.apache.thrift.TException {
      struct.validate();

      oprot.writeStructBegin(STRUCT_DESC);
      oprot.writeFieldBegin(ID_GENERO_FIELD_DESC);
      oprot.writeI32(struct.idGenero);
      oprot.writeFieldEnd();
      if (struct.nombreGenero != null) {
        oprot.writeFieldBegin(NOMBRE_GENERO_FIELD_DESC);
        oprot.writeString(struct.nombreGenero);
        oprot.writeFieldEnd();
      }
      oprot.writeFieldStop();
      oprot.writeStructEnd();
    }

  }

  private static class GeneroTupleSchemeFactory implements org.apache.thrift.scheme.SchemeFactory {
    public GeneroTupleScheme getScheme() {
      return new GeneroTupleScheme();
    }
  }

  private static class GeneroTupleScheme extends org.apache.thrift.scheme.TupleScheme<Genero> {

    @Override
    public void write(org.apache.thrift.protocol.TProtocol prot, Genero struct) throws org.apache.thrift.TException {
      org.apache.thrift.protocol.TTupleProtocol oprot = (org.apache.thrift.protocol.TTupleProtocol) prot;
      java.util.BitSet optionals = new java.util.BitSet();
      if (struct.isSetIdGenero()) {
        optionals.set(0);
      }
      if (struct.isSetNombreGenero()) {
        optionals.set(1);
      }
      oprot.writeBitSet(optionals, 2);
      if (struct.isSetIdGenero()) {
        oprot.writeI32(struct.idGenero);
      }
      if (struct.isSetNombreGenero()) {
        oprot.writeString(struct.nombreGenero);
      }
    }

    @Override
    public void read(org.apache.thrift.protocol.TProtocol prot, Genero struct) throws org.apache.thrift.TException {
      org.apache.thrift.protocol.TTupleProtocol iprot = (org.apache.thrift.protocol.TTupleProtocol) prot;
      java.util.BitSet incoming = iprot.readBitSet(2);
      if (incoming.get(0)) {
        struct.idGenero = iprot.readI32();
        struct.setIdGeneroIsSet(true);
      }
      if (incoming.get(1)) {
        struct.nombreGenero = iprot.readString();
        struct.setNombreGeneroIsSet(true);
      }
    }
  }

  private static <S extends org.apache.thrift.scheme.IScheme> S scheme(org.apache.thrift.protocol.TProtocol proto) {
    return (org.apache.thrift.scheme.StandardScheme.class.equals(proto.getScheme()) ? STANDARD_SCHEME_FACTORY : TUPLE_SCHEME_FACTORY).getScheme();
  }
}

