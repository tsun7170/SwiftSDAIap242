/* file: explicit_table_function.swift 	 generated: Mon Jan  3 16:32:52 2022 */

/* This file was generated by the EXPRESS to Swift translator "exp2swift", 
    derived from STEPcode (formerly NIST's SCL).
 exp2swift version: v.1.0.1, derived from stepcode v0.8 as of 2019/11/23 
 WARNING: You probably don't want to edit it since your modifications 
    will be lost if exp2swift is used to regenerate it.
 */

 
import SwiftSDAIcore

extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF {
//MARK: -ENTITY DEFINITION in EXPRESS
/*

  ENTITY explicit_table_function
    ABSTRACT SUPERTYPE OF ( 
        ONEOF ( 
            listed_real_data, 
            listed_integer_data, 
            listed_logical_data, 
            listed_string_data, 
            listed_complex_number_data, 
            listed_data, 
            externally_listed_data, 
            linearized_table_function, 
            basic_sparse_matrix ) )
    SUBTYPE OF ( maths_function );
      index_base  : zero_or_one;
      shape       : LIST [1 : ?] OF positive_integer;
  END_ENTITY; -- explicit_table_function (line:14236 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	generic_expression
    (no local attributes)

  SUPER- ENTITY(2)	maths_function
    ATTR:  domain,	TYPE: tuple_space -- DERIVED
      := derive_function_domain( SELF )

    ATTR:  range,	TYPE: tuple_space -- DERIVED
      := derive_function_range( SELF )


  ENTITY(SELF)	explicit_table_function
    ATTR:  index_base,	TYPE: zero_or_one -- EXPLICIT

    ATTR:  shape,	TYPE: LIST [1 : ?] OF positive_integer -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: listed_integer_data,	TYPE: LIST [1 : ?] OF positive_integer	(as DERIVED)
          ENTITY: listed_data,	TYPE: LIST [1 : ?] OF positive_integer	(as DERIVED)
          ENTITY: listed_string_data,	TYPE: LIST [1 : ?] OF positive_integer	(as DERIVED)
          ENTITY: listed_logical_data,	TYPE: LIST [1 : ?] OF positive_integer	(as DERIVED)
          ENTITY: listed_complex_number_data,	TYPE: LIST [1 : ?] OF positive_integer	(as DERIVED)
          ENTITY: listed_real_data,	TYPE: LIST [1 : ?] OF positive_integer	(as DERIVED)


  SUB- ENTITY(4)	standard_table_function
    ATTR:  order,	TYPE: ordering_type -- EXPLICIT	(AMBIGUOUS/MASKED)


  SUB- ENTITY(5)	regular_table_function
    ATTR:  increments,	TYPE: LIST [1 : ?] OF INTEGER -- EXPLICIT


  SUB- ENTITY(6)	strict_triangular_matrix
    ATTR:  main_diagonal_value,	TYPE: maths_value -- EXPLICIT


  SUB- ENTITY(7)	triangular_matrix
    ATTR:  default_entry,	TYPE: maths_value -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  lo_up,	TYPE: lower_upper -- EXPLICIT

    ATTR:  order,	TYPE: ordering_type -- EXPLICIT	(AMBIGUOUS/MASKED)


  SUB- ENTITY(8)	symmetric_banded_matrix
    ATTR:  default_entry,	TYPE: maths_value -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  above,	TYPE: nonnegative_integer -- EXPLICIT	(AMBIGUOUS/MASKED)


  SUB- ENTITY(9)	symmetric_matrix
    ATTR:  symmetry,	TYPE: symmetry_type -- EXPLICIT

    ATTR:  triangle,	TYPE: lower_upper -- EXPLICIT

    ATTR:  order,	TYPE: ordering_type -- EXPLICIT	(AMBIGUOUS/MASKED)


  SUB- ENTITY(10)	banded_matrix
    ATTR:  default_entry,	TYPE: maths_value -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  below,	TYPE: INTEGER -- EXPLICIT

    ATTR:  above,	TYPE: INTEGER -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  order,	TYPE: ordering_type -- EXPLICIT	(AMBIGUOUS/MASKED)


  SUB- ENTITY(11)	linearized_table_function
    REDCR: operand,	TYPE: maths_function -- EXPLICIT
      -- OVERRIDING ENTITY: unary_generic_expression

    ATTR:  first,	TYPE: INTEGER -- EXPLICIT

    ATTR:  source,	TYPE: maths_function -- DERIVED
      := SELF\unary_generic_expression.operand


  SUB- ENTITY(12)	listed_integer_data
    ATTR:  values,	TYPE: LIST [1 : ?] OF INTEGER -- EXPLICIT	(AMBIGUOUS/MASKED)

    REDCR: shape,	TYPE: LIST [1 : ?] OF positive_integer -- DERIVED (DYNAMIC)
      := [SIZEOF( values )]
      -- OVERRIDING ENTITY: explicit_table_function


  SUB- ENTITY(13)	listed_data
    ATTR:  values,	TYPE: LIST [1 : ?] OF maths_value -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  value_range,	TYPE: maths_space -- EXPLICIT	(AMBIGUOUS/MASKED)

    REDCR: shape,	TYPE: LIST [1 : ?] OF positive_integer -- DERIVED (DYNAMIC)
      := [SIZEOF( values )]
      -- OVERRIDING ENTITY: explicit_table_function


  SUB- ENTITY(14)	listed_string_data
    ATTR:  values,	TYPE: LIST [1 : ?] OF STRING -- EXPLICIT	(AMBIGUOUS/MASKED)

    REDCR: shape,	TYPE: LIST [1 : ?] OF positive_integer -- DERIVED (DYNAMIC)
      := [SIZEOF( values )]
      -- OVERRIDING ENTITY: explicit_table_function


  SUB- ENTITY(15)	listed_real_data
    ATTR:  values,	TYPE: LIST [1 : ?] OF REAL -- EXPLICIT	(AMBIGUOUS/MASKED)

    REDCR: shape,	TYPE: LIST [1 : ?] OF positive_integer -- DERIVED (DYNAMIC)
      := [SIZEOF( values )]
      -- OVERRIDING ENTITY: explicit_table_function


  SUB- ENTITY(16)	listed_logical_data
    ATTR:  values,	TYPE: LIST [1 : ?] OF LOGICAL -- EXPLICIT	(AMBIGUOUS/MASKED)

    REDCR: shape,	TYPE: LIST [1 : ?] OF positive_integer -- DERIVED (DYNAMIC)
      := [SIZEOF( values )]
      -- OVERRIDING ENTITY: explicit_table_function


  SUB- ENTITY(17)	listed_complex_number_data
    ATTR:  values,	TYPE: LIST [2 : ?] OF REAL -- EXPLICIT	(AMBIGUOUS/MASKED)

    REDCR: shape,	TYPE: LIST [1 : ?] OF positive_integer -- DERIVED (DYNAMIC)
      := [SIZEOF( values ) DIV 2]
      -- OVERRIDING ENTITY: explicit_table_function


  SUB- ENTITY(18)	externally_listed_data
    ATTR:  value_range,	TYPE: maths_space -- EXPLICIT	(AMBIGUOUS/MASKED)


  SUB- ENTITY(19)	basic_sparse_matrix
    REDCR: operands,	TYPE: LIST [3 : 3] OF maths_function -- EXPLICIT
      -- OVERRIDING ENTITY: multiple_arity_generic_expression

    ATTR:  default_entry,	TYPE: maths_value -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  order,	TYPE: ordering_type -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  index,	TYPE: maths_function -- DERIVED
      := SELF\multiple_arity_generic_expression.operands[1]

    ATTR:  loc,	TYPE: maths_function -- DERIVED
      := SELF\multiple_arity_generic_expression.operands[2]

    ATTR:  val,	TYPE: maths_function -- DERIVED
      := SELF\multiple_arity_generic_expression.operands[3]


*/


//MARK: - Partial Entity
  public final class _explicit_table_function : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eEXPLICIT_TABLE_FUNCTION.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _index_base: tZERO_OR_ONE // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    /// - see the corresponding attribute accesser in the entity reference definition for the attribute value dynamic lookup logic
    public internal(set) var _shape: (SDAI.LIST<tPOSITIVE_INTEGER>/*[1:nil]*/ )?  // PLAIN EXPLICIT ATTRIBUTE

    internal static func _shape__provider(complex: SDAI.ComplexEntity) -> eEXPLICIT_TABLE_FUNCTION__SHAPE__provider? {
      let resolved = complex.resolvePartialEntityInstance(from: [_listed_integer_data.typeIdentity, 
        _listed_data.typeIdentity, _listed_string_data.typeIdentity, _listed_logical_data.typeIdentity, 
        _listed_complex_number_data.typeIdentity, _listed_real_data.typeIdentity])
      return resolved as? eEXPLICIT_TABLE_FUNCTION__SHAPE__provider
    }

    //PARTIAL COMPLEX ENTITY SUPPORT
    final public override class func fixupPartialComplexEntityAttributes(partialComplex: SDAI.ComplexEntity, baseComplex: SDAI.ComplexEntity) {
      guard let pe = partialComplex.partialEntityInstance(_explicit_table_function.self) else { return }

      if pe._shape == nil, self._shape__provider(complex: partialComplex) == nil, 
        let base__shape__provider = self._shape__provider(complex: baseComplex) {
        pe._shape = base__shape__provider._shape__getter(complex: baseComplex)
      }
    }
    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._index_base.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._shape?.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._index_base.value.isValueEqualOptionally(to: rhs._index_base.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._shape?.value.isValueEqualOptionally(to: rhs._shape?.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      return true
    }

    public override func isValueEqualOptionally(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      guard let rhs = rhs as? Self else { return false }
      var result: Bool? = true
      if let comp = super.isValueEqualOptionally(to: rhs, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._index_base.value.isValueEqualOptionally(to: rhs._index_base.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._shape?.value.isValueEqualOptionally(to: rhs._shape?.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(INDEX_BASE: tZERO_OR_ONE, SHAPE: (SDAI.LIST<tPOSITIVE_INTEGER>/*[1:nil]*/ )? ) {
      self._index_base = INDEX_BASE
      self._shape = SHAPE
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: tZERO_OR_ONE.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverOmittableParameter(as: SDAI.LIST<
        tPOSITIVE_INTEGER>.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( INDEX_BASE: p0, SHAPE: p1 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY explicit_table_function
    ABSTRACT SUPERTYPE OF ( 
        ONEOF ( 
            listed_real_data, 
            listed_integer_data, 
            listed_logical_data, 
            listed_string_data, 
            listed_complex_number_data, 
            listed_data, 
            externally_listed_data, 
            linearized_table_function, 
            basic_sparse_matrix ) )
    SUBTYPE OF ( maths_function );
      index_base  : zero_or_one;
      shape       : LIST [1 : ?] OF positive_integer;
  END_ENTITY; -- explicit_table_function (line:14236 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eEXPLICIT_TABLE_FUNCTION : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _explicit_table_function.self
    }
    public let partialEntity: _explicit_table_function

    //MARK: SUPERTYPES
    public let super_eGENERIC_EXPRESSION: eGENERIC_EXPRESSION 	// [1]
    public let super_eMATHS_FUNCTION: eMATHS_FUNCTION 	// [2]
    public var super_eEXPLICIT_TABLE_FUNCTION: eEXPLICIT_TABLE_FUNCTION { return self } 	// [3]

    //MARK: SUBTYPES
    public var sub_eSTANDARD_TABLE_FUNCTION: eSTANDARD_TABLE_FUNCTION? {	// [4]
      return self.complexEntity.entityReference(eSTANDARD_TABLE_FUNCTION.self)
    }

    public var sub_eREGULAR_TABLE_FUNCTION: eREGULAR_TABLE_FUNCTION? {	// [5]
      return self.complexEntity.entityReference(eREGULAR_TABLE_FUNCTION.self)
    }

    public var sub_eSTRICT_TRIANGULAR_MATRIX: eSTRICT_TRIANGULAR_MATRIX? {	// [6]
      return self.complexEntity.entityReference(eSTRICT_TRIANGULAR_MATRIX.self)
    }

    public var sub_eTRIANGULAR_MATRIX: eTRIANGULAR_MATRIX? {	// [7]
      return self.complexEntity.entityReference(eTRIANGULAR_MATRIX.self)
    }

    public var sub_eSYMMETRIC_BANDED_MATRIX: eSYMMETRIC_BANDED_MATRIX? {	// [8]
      return self.complexEntity.entityReference(eSYMMETRIC_BANDED_MATRIX.self)
    }

    public var sub_eSYMMETRIC_MATRIX: eSYMMETRIC_MATRIX? {	// [9]
      return self.complexEntity.entityReference(eSYMMETRIC_MATRIX.self)
    }

    public var sub_eBANDED_MATRIX: eBANDED_MATRIX? {	// [10]
      return self.complexEntity.entityReference(eBANDED_MATRIX.self)
    }

    public var sub_eLINEARIZED_TABLE_FUNCTION: eLINEARIZED_TABLE_FUNCTION? {	// [11]
      return self.complexEntity.entityReference(eLINEARIZED_TABLE_FUNCTION.self)
    }

    public var sub_eLISTED_INTEGER_DATA: eLISTED_INTEGER_DATA? {	// [12]
      return self.complexEntity.entityReference(eLISTED_INTEGER_DATA.self)
    }

    public var sub_eLISTED_DATA: eLISTED_DATA? {	// [13]
      return self.complexEntity.entityReference(eLISTED_DATA.self)
    }

    public var sub_eLISTED_STRING_DATA: eLISTED_STRING_DATA? {	// [14]
      return self.complexEntity.entityReference(eLISTED_STRING_DATA.self)
    }

    public var sub_eLISTED_REAL_DATA: eLISTED_REAL_DATA? {	// [15]
      return self.complexEntity.entityReference(eLISTED_REAL_DATA.self)
    }

    public var sub_eLISTED_LOGICAL_DATA: eLISTED_LOGICAL_DATA? {	// [16]
      return self.complexEntity.entityReference(eLISTED_LOGICAL_DATA.self)
    }

    public var sub_eLISTED_COMPLEX_NUMBER_DATA: eLISTED_COMPLEX_NUMBER_DATA? {	// [17]
      return self.complexEntity.entityReference(eLISTED_COMPLEX_NUMBER_DATA.self)
    }

    public var sub_eEXTERNALLY_LISTED_DATA: eEXTERNALLY_LISTED_DATA? {	// [18]
      return self.complexEntity.entityReference(eEXTERNALLY_LISTED_DATA.self)
    }

    public var sub_eBASIC_SPARSE_MATRIX: eBASIC_SPARSE_MATRIX? {	// [19]
      return self.complexEntity.entityReference(eBASIC_SPARSE_MATRIX.self)
    }


    //MARK: ATTRIBUTES
    // VALUE_RANGE: (2 AMBIGUOUS REFs)

    // DEFAULT_ENTRY: (4 AMBIGUOUS REFs)

    // ORDER: (5 AMBIGUOUS REFs)

    // VALUES: (6 AMBIGUOUS REFs)

    // ABOVE: (2 AMBIGUOUS REFs)

    /// __EXPLICIT(DYNAMIC)__ attribute
    /// - origin: SELF( ``eEXPLICIT_TABLE_FUNCTION`` )
    public var SHAPE: SDAI.LIST<tPOSITIVE_INTEGER>/*[1:nil]*/  {
      get {
        if let resolved = _explicit_table_function._shape__provider(complex: self.complexEntity) {
          let value = resolved._shape__getter(complex: self.complexEntity)
          return value
        }
        else {
          return SDAI.UNWRAP( self.partialEntity._shape )
        }
      }
      set(newValue) {
        if let _ = _explicit_table_function._shape__provider(complex: self.complexEntity) { return }

        let partial = self.partialEntity
        partial._shape = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eREGULAR_TABLE_FUNCTION`` )
    public var INCREMENTS: (SDAI.LIST<SDAI.INTEGER>/*[1:nil]*/ )?  {
      get {
        return sub_eREGULAR_TABLE_FUNCTION?.partialEntity._increments
      }
      set(newValue) {
        guard let partial = sub_eREGULAR_TABLE_FUNCTION?.super_eREGULAR_TABLE_FUNCTION.partialEntity
          else { return }
        partial._increments = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eTRIANGULAR_MATRIX`` )
    public var LO_UP: nLOWER_UPPER?  {
      get {
        return sub_eTRIANGULAR_MATRIX?.partialEntity._lo_up
      }
      set(newValue) {
        guard let partial = sub_eTRIANGULAR_MATRIX?.super_eTRIANGULAR_MATRIX.partialEntity else { return }
        partial._lo_up = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eSYMMETRIC_MATRIX`` )
    public var SYMMETRY: nSYMMETRY_TYPE?  {
      get {
        return sub_eSYMMETRIC_MATRIX?.partialEntity._symmetry
      }
      set(newValue) {
        guard let partial = sub_eSYMMETRIC_MATRIX?.super_eSYMMETRIC_MATRIX.partialEntity else { return }
        partial._symmetry = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eEXPLICIT_TABLE_FUNCTION`` )
    public var INDEX_BASE: tZERO_OR_ONE {
      get {
        return SDAI.UNWRAP( self.partialEntity._index_base )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._index_base = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eBANDED_MATRIX`` )
    public var BELOW: SDAI.INTEGER?  {
      get {
        return sub_eBANDED_MATRIX?.partialEntity._below
      }
      set(newValue) {
        guard let partial = sub_eBANDED_MATRIX?.super_eBANDED_MATRIX.partialEntity else { return }
        partial._below = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUB( ``eBASIC_SPARSE_MATRIX`` )
    public var VAL: eMATHS_FUNCTION?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"VAL") {
          return cached.value as! eMATHS_FUNCTION? 
        }
        guard let origin = sub_eBASIC_SPARSE_MATRIX else { return nil }
        let value = eMATHS_FUNCTION(origin.partialEntity._val__getter(SELF: origin))
        updateCache(derivedAttributeName:"VAL", value:value)
        return value
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUB( ``eBASIC_SPARSE_MATRIX`` )
    public var LOC: eMATHS_FUNCTION?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"LOC") {
          return cached.value as! eMATHS_FUNCTION? 
        }
        guard let origin = sub_eBASIC_SPARSE_MATRIX else { return nil }
        let value = eMATHS_FUNCTION(origin.partialEntity._loc__getter(SELF: origin))
        updateCache(derivedAttributeName:"LOC", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eLINEARIZED_TABLE_FUNCTION`` )
    public var FIRST: SDAI.INTEGER?  {
      get {
        return sub_eLINEARIZED_TABLE_FUNCTION?.partialEntity._first
      }
      set(newValue) {
        guard let partial = sub_eLINEARIZED_TABLE_FUNCTION?.super_eLINEARIZED_TABLE_FUNCTION.partialEntity
          else { return }
        partial._first = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT REDEF(DYNAMIC)__ attribute
    /// - origin: SUB( ``eBASIC_SPARSE_MATRIX`` )
    public var OPERANDS: (SDAI.LIST<eMATHS_FUNCTION>/*[3:3]*/ )?  {
      get {
        if let resolved = _multiple_arity_generic_expression._operands__provider(complex: self.complexEntity) {
          let value = SDAI.LIST<eMATHS_FUNCTION>(resolved._operands__getter(complex: self.complexEntity))
          return value
        }
        else {
          return SDAI.LIST<eMATHS_FUNCTION>(sub_eBASIC_SPARSE_MATRIX?.super_eMULTIPLE_ARITY_GENERIC_EXPRESSION
            .partialEntity._operands)
        }
      }
      set(newValue) {
        if let _ = _multiple_arity_generic_expression._operands__provider(complex: self.complexEntity) { return }

        guard let partial = sub_eBASIC_SPARSE_MATRIX?.super_eMULTIPLE_ARITY_GENERIC_EXPRESSION.partialEntity
          else { return }
        partial._operands = SDAI.UNWRAP(
          SDAI.LIST<eGENERIC_EXPRESSION>(newValue))
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUB( ``eBASIC_SPARSE_MATRIX`` )
    public var INDEX: eMATHS_FUNCTION?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"INDEX") {
          return cached.value as! eMATHS_FUNCTION? 
        }
        guard let origin = sub_eBASIC_SPARSE_MATRIX else { return nil }
        let value = eMATHS_FUNCTION(origin.partialEntity._index__getter(SELF: origin))
        updateCache(derivedAttributeName:"INDEX", value:value)
        return value
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUB( ``eLINEARIZED_TABLE_FUNCTION`` )
    public var SOURCE: eMATHS_FUNCTION?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"SOURCE") {
          return cached.value as! eMATHS_FUNCTION? 
        }
        guard let origin = sub_eLINEARIZED_TABLE_FUNCTION else { return nil }
        let value = eMATHS_FUNCTION(origin.partialEntity._source__getter(SELF: origin))
        updateCache(derivedAttributeName:"SOURCE", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eSTRICT_TRIANGULAR_MATRIX`` )
    public var MAIN_DIAGONAL_VALUE: sMATHS_VALUE?  {
      get {
        return sub_eSTRICT_TRIANGULAR_MATRIX?.partialEntity._main_diagonal_value
      }
      set(newValue) {
        guard let partial = sub_eSTRICT_TRIANGULAR_MATRIX?.super_eSTRICT_TRIANGULAR_MATRIX.partialEntity
          else { return }
        partial._main_diagonal_value = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SUB( ``eLINEARIZED_TABLE_FUNCTION`` )
    public var OPERAND: eMATHS_FUNCTION?  {
      get {
        return eMATHS_FUNCTION( sub_eLINEARIZED_TABLE_FUNCTION?.super_eUNARY_GENERIC_EXPRESSION.partialEntity
          ._operand )
      }
      set(newValue) {
        guard let partial = sub_eLINEARIZED_TABLE_FUNCTION?.super_eUNARY_GENERIC_EXPRESSION.partialEntity
          else { return }
        partial._operand = SDAI.UNWRAP(
          eGENERIC_EXPRESSION(newValue))
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eMATHS_FUNCTION`` )
    public var DOMAIN: sTUPLE_SPACE?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"DOMAIN") {
          return cached.value as! sTUPLE_SPACE? 
        }
        let origin = super_eMATHS_FUNCTION
        let value = sTUPLE_SPACE(origin.partialEntity._domain__getter(SELF: origin))
        updateCache(derivedAttributeName:"DOMAIN", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eSYMMETRIC_MATRIX`` )
    public var TRIANGLE: nLOWER_UPPER?  {
      get {
        return sub_eSYMMETRIC_MATRIX?.partialEntity._triangle
      }
      set(newValue) {
        guard let partial = sub_eSYMMETRIC_MATRIX?.super_eSYMMETRIC_MATRIX.partialEntity else { return }
        partial._triangle = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eMATHS_FUNCTION`` )
    public var RANGE: sTUPLE_SPACE?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"RANGE") {
          return cached.value as! sTUPLE_SPACE? 
        }
        let origin = super_eMATHS_FUNCTION
        let value = sTUPLE_SPACE(origin.partialEntity._range__getter(SELF: origin))
        updateCache(derivedAttributeName:"RANGE", value:value)
        return value
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_explicit_table_function.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eGENERIC_EXPRESSION.self) else { return nil }
      self.super_eGENERIC_EXPRESSION = super1

      guard let super2 = complexEntity?.entityReference(eMATHS_FUNCTION.self) else { return nil }
      self.super_eMATHS_FUNCTION = super2

      super.init(complex: complexEntity)
    }

    public required convenience init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let entityRef = generic?.entityReference else { return nil }
      self.init(complex: entityRef.complexEntity)
    }

    public convenience init?<S: SDAISelectType>(_ select: S?) { self.init(possiblyFrom: select) }
    public convenience init?(_ complex: SDAI.ComplexEntity?) { self.init(complex: complex) }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "EXPLICIT_TABLE_FUNCTION", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eGENERIC_EXPRESSION.self)
      entityDef.add(supertype: eMATHS_FUNCTION.self)
      entityDef.add(supertype: eEXPLICIT_TABLE_FUNCTION.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "SHAPE", keyPath: \eEXPLICIT_TABLE_FUNCTION.SHAPE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "INCREMENTS", keyPath: \eEXPLICIT_TABLE_FUNCTION.INCREMENTS, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "LO_UP", keyPath: \eEXPLICIT_TABLE_FUNCTION.LO_UP, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SYMMETRY", keyPath: \eEXPLICIT_TABLE_FUNCTION.SYMMETRY, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "INDEX_BASE", keyPath: \eEXPLICIT_TABLE_FUNCTION.INDEX_BASE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "BELOW", keyPath: \eEXPLICIT_TABLE_FUNCTION.BELOW, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "VAL", keyPath: \eEXPLICIT_TABLE_FUNCTION.VAL, 
        kind: .derived, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "LOC", keyPath: \eEXPLICIT_TABLE_FUNCTION.LOC, 
        kind: .derived, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "FIRST", keyPath: \eEXPLICIT_TABLE_FUNCTION.FIRST, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "OPERANDS", keyPath: \eEXPLICIT_TABLE_FUNCTION.OPERANDS, 
        kind: .explicitRedeclaring, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "INDEX", keyPath: \eEXPLICIT_TABLE_FUNCTION.INDEX, 
        kind: .derived, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "SOURCE", keyPath: \eEXPLICIT_TABLE_FUNCTION.SOURCE, 
        kind: .derived, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "MAIN_DIAGONAL_VALUE", keyPath: \eEXPLICIT_TABLE_FUNCTION.MAIN_DIAGONAL_VALUE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "OPERAND", keyPath: \eEXPLICIT_TABLE_FUNCTION.OPERAND, 
        kind: .explicitRedeclaring, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DOMAIN", keyPath: \eEXPLICIT_TABLE_FUNCTION.DOMAIN, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "TRIANGLE", keyPath: \eEXPLICIT_TABLE_FUNCTION.TRIANGLE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "RANGE", keyPath: \eEXPLICIT_TABLE_FUNCTION.RANGE, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}

//MARK: - Entity Dynamic Attribute Protocols
internal protocol eEXPLICIT_TABLE_FUNCTION__SHAPE__provider {
  func _shape__getter(complex: SDAI.ComplexEntity) -> SDAI.LIST<
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tPOSITIVE_INTEGER>/*[1:nil]*/ 
}
