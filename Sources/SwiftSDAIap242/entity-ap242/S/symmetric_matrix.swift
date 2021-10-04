/* file: symmetric_matrix.swift 	 generated: Sat Aug 14 13:46:02 2021 */

/* This file was generated by the EXPRESS to Swift translator "exp2swift", 
    derived from STEPcode (formerly NIST's SCL).
 exp2swift version: v.1.0.0, derived from stepcode v0.8 as of 2019/11/23 
 WARNING: You probably don't want to edit it since your modifications 
    will be lost if exp2swift is used to regenerate it.
 */

 
import SwiftSDAIcore

extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF {
//MARK: -ENTITY DEFINITION in EXPRESS
/*

  ENTITY symmetric_matrix
    SUBTYPE OF ( linearized_table_function );
      symmetry  : symmetry_type;
      triangle  : lower_upper;
      order     : ordering_type;
    WHERE
      wr1: ( SIZEOF( SELF\explicit_table_function.shape ) = 2 );
      wr2: ( SELF\explicit_table_function.shape[1] = SELF\explicit_table_function.shape[2] );
      wr3: ( ( NOT ( symmetry = symmetry_type.skew ) ) OR ( ( space_dimension( SELF\linearized_table_function
               .source.range ) = 1 ) AND subspace_of_es( factor1( SELF\linearized_table_function.source.range ), 
               es_numbers ) ) );
      wr4: ( ( NOT ( ( symmetry = symmetry_type.hermitian ) OR ( symmetry = symmetry_type.skew_hermitian ) ) ) 
               OR ( ( space_dimension( SELF\linearized_table_function.source.range ) = 1 ) AND 
               subspace_of_es( factor1( SELF\linearized_table_function.source.range ), es_complex_numbers ) ) );
  END_ENTITY; -- symmetric_matrix (line:31519 file:ap242ed2_mim_lf_v1.101.TY.exp)

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


  SUPER- ENTITY(3)	explicit_table_function
    ATTR:  index_base,	TYPE: zero_or_one -- EXPLICIT

    ATTR:  shape,	TYPE: LIST [1 : ?] OF positive_integer -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: listed_integer_data,	TYPE: LIST [1 : ?] OF positive_integer	(as DERIVED)
          ENTITY: listed_data,	TYPE: LIST [1 : ?] OF positive_integer	(as DERIVED)
          ENTITY: listed_string_data,	TYPE: LIST [1 : ?] OF positive_integer	(as DERIVED)
          ENTITY: listed_logical_data,	TYPE: LIST [1 : ?] OF positive_integer	(as DERIVED)
          ENTITY: listed_complex_number_data,	TYPE: LIST [1 : ?] OF positive_integer	(as DERIVED)
          ENTITY: listed_real_data,	TYPE: LIST [1 : ?] OF positive_integer	(as DERIVED)


  SUPER- ENTITY(4)	unary_generic_expression
    ATTR:  operand,	TYPE: generic_expression -- EXPLICIT
      -- possibly overriden by
      *** ENTITY: linearized_table_function,	TYPE: maths_function
          ENTITY: restriction_function,	TYPE: maths_space
          ENTITY: repackaging_function,	TYPE: maths_function
          ENTITY: not_expression,	TYPE: boolean_expression
          ENTITY: value_function,	TYPE: string_expression
          ENTITY: reindexed_array_function,	TYPE: maths_function
          ENTITY: homogeneous_linear_function,	TYPE: maths_function
          ENTITY: b_spline_function,	TYPE: maths_function
          ENTITY: length_function,	TYPE: string_expression
          ENTITY: partial_derivative_function,	TYPE: maths_function
          ENTITY: odd_function,	TYPE: numeric_expression
          ENTITY: rationalize_function,	TYPE: maths_function
          ENTITY: general_linear_function,	TYPE: maths_function
          ENTITY: unary_numeric_expression,	TYPE: numeric_expression
          ENTITY: definite_integral_function,	TYPE: maths_function


  SUPER- ENTITY(5)	linearized_table_function
    REDCR: operand,	TYPE: maths_function -- EXPLICIT
      -- OVERRIDING ENTITY: unary_generic_expression

    ATTR:  first,	TYPE: INTEGER -- EXPLICIT

    ATTR:  source,	TYPE: maths_function -- DERIVED
      := SELF\unary_generic_expression.operand


  ENTITY(SELF)	symmetric_matrix
    ATTR:  symmetry,	TYPE: symmetry_type -- EXPLICIT

    ATTR:  triangle,	TYPE: lower_upper -- EXPLICIT

    ATTR:  order,	TYPE: ordering_type -- EXPLICIT


  SUB- ENTITY(7)	symmetric_banded_matrix
    ATTR:  default_entry,	TYPE: maths_value -- EXPLICIT

    ATTR:  above,	TYPE: nonnegative_integer -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _symmetric_matrix : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eSYMMETRIC_MATRIX.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _symmetry: nSYMMETRY_TYPE // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _triangle: nLOWER_UPPER // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _order: nORDERING_TYPE // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._symmetry.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._triangle.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._order.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._symmetry.value.isValueEqualOptionally(to: rhs._symmetry.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._triangle.value.isValueEqualOptionally(to: rhs._triangle.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._order.value.isValueEqualOptionally(to: rhs._order.value, visited: &comppairs)	{
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
      if let comp = self._symmetry.value.isValueEqualOptionally(to: rhs._symmetry.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._triangle.value.isValueEqualOptionally(to: rhs._triangle.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._order.value.isValueEqualOptionally(to: rhs._order.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eSYMMETRIC_MATRIX?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.GROUP_REF(eEXPLICIT_TABLE_FUNCTION.self)
      let _TEMP2 = _TEMP1?.SHAPE
      let _TEMP3 = SDAI.SIZEOF(_TEMP2)
      let _TEMP4 = _TEMP3 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(2))
      return _TEMP4
    }
    public static func WHERE_wr2(SELF: eSYMMETRIC_MATRIX?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.GROUP_REF(eEXPLICIT_TABLE_FUNCTION.self)
      let _TEMP2 = _TEMP1?.SHAPE
      let _TEMP3 = _TEMP2?[1]
      let _TEMP4 = SELF.GROUP_REF(eEXPLICIT_TABLE_FUNCTION.self)
      let _TEMP5 = _TEMP4?.SHAPE
      let _TEMP6 = _TEMP5?[2]
      let _TEMP7 = _TEMP3 .==. _TEMP6
      return _TEMP7
    }
    public static func WHERE_wr3(SELF: eSYMMETRIC_MATRIX?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = nSYMMETRY_TYPE.SKEW
      let _TEMP2 = SDAI.FORCE_OPTIONAL(SELF.SYMMETRY) .==. SDAI.FORCE_OPTIONAL(_TEMP1)
      let _TEMP3 =  !_TEMP2
      let _TEMP4 = SELF.GROUP_REF(eLINEARIZED_TABLE_FUNCTION.self)
      let _TEMP5 = _TEMP4?.SOURCE
      let _TEMP6 = _TEMP5?.RANGE
      let _TEMP7 = SPACE_DIMENSION(_TEMP6)
      let _TEMP8 = _TEMP7 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      let _TEMP9 = SELF.GROUP_REF(eLINEARIZED_TABLE_FUNCTION.self)
      let _TEMP10 = _TEMP9?.SOURCE
      let _TEMP11 = _TEMP10?.RANGE
      let _TEMP12 = FACTOR1(_TEMP11)
      let _TEMP13 = SUBSPACE_OF_ES(SPC: _TEMP12, 
                                   ES: ES_NUMBERS)
      let _TEMP14 = _TEMP8 && _TEMP13
      let _TEMP15 = _TEMP3 || _TEMP14
      return _TEMP15
    }
    public static func WHERE_wr4(SELF: eSYMMETRIC_MATRIX?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = nSYMMETRY_TYPE.HERMITIAN
      let _TEMP2 = SDAI.FORCE_OPTIONAL(SELF.SYMMETRY) .==. SDAI.FORCE_OPTIONAL(_TEMP1)
      let _TEMP3 = nSYMMETRY_TYPE.SKEW_HERMITIAN
      let _TEMP4 = SDAI.FORCE_OPTIONAL(SELF.SYMMETRY) .==. SDAI.FORCE_OPTIONAL(_TEMP3)
      let _TEMP5 = _TEMP2 || _TEMP4
      let _TEMP6 =  !_TEMP5
      let _TEMP7 = SELF.GROUP_REF(eLINEARIZED_TABLE_FUNCTION.self)
      let _TEMP8 = _TEMP7?.SOURCE
      let _TEMP9 = _TEMP8?.RANGE
      let _TEMP10 = SPACE_DIMENSION(_TEMP9)
      let _TEMP11 = _TEMP10 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      let _TEMP12 = SELF.GROUP_REF(eLINEARIZED_TABLE_FUNCTION.self)
      let _TEMP13 = _TEMP12?.SOURCE
      let _TEMP14 = _TEMP13?.RANGE
      let _TEMP15 = FACTOR1(_TEMP14)
      let _TEMP16 = SUBSPACE_OF_ES(SPC: _TEMP15, 
                                   ES: ES_COMPLEX_NUMBERS)
      let _TEMP17 = _TEMP11 && _TEMP16
      let _TEMP18 = _TEMP6 || _TEMP17
      return _TEMP18
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(SYMMETRY: nSYMMETRY_TYPE, TRIANGLE: nLOWER_UPPER, ORDER: nORDERING_TYPE) {
      self._symmetry = SYMMETRY
      self._triangle = TRIANGLE
      self._order = ORDER
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 3
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: nSYMMETRY_TYPE.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: nLOWER_UPPER.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p2) = exchangeStructure.recoverRequiredParameter(as: nORDERING_TYPE.self, from: parameters[2])
      else { exchangeStructure.add(errorContext: "while recovering parameter #2 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( SYMMETRY: p0, TRIANGLE: p1, ORDER: p2 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY symmetric_matrix
    SUBTYPE OF ( linearized_table_function );
      symmetry  : symmetry_type;
      triangle  : lower_upper;
      order     : ordering_type;
    WHERE
      wr1: ( SIZEOF( SELF\explicit_table_function.shape ) = 2 );
      wr2: ( SELF\explicit_table_function.shape[1] = SELF\explicit_table_function.shape[2] );
      wr3: ( ( NOT ( symmetry = symmetry_type.skew ) ) OR ( ( space_dimension( SELF\linearized_table_function
               .source.range ) = 1 ) AND subspace_of_es( factor1( SELF\linearized_table_function.source.range ), 
               es_numbers ) ) );
      wr4: ( ( NOT ( ( symmetry = symmetry_type.hermitian ) OR ( symmetry = symmetry_type.skew_hermitian ) ) ) 
               OR ( ( space_dimension( SELF\linearized_table_function.source.range ) = 1 ) AND 
               subspace_of_es( factor1( SELF\linearized_table_function.source.range ), es_complex_numbers ) ) );
  END_ENTITY; -- symmetric_matrix (line:31519 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eSYMMETRIC_MATRIX : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _symmetric_matrix.self
    }
    public let partialEntity: _symmetric_matrix

    //MARK: SUPERTYPES
    public let super_eGENERIC_EXPRESSION: eGENERIC_EXPRESSION 	// [1]
    public let super_eMATHS_FUNCTION: eMATHS_FUNCTION 	// [2]
    public let super_eEXPLICIT_TABLE_FUNCTION: eEXPLICIT_TABLE_FUNCTION 	// [3]
    public let super_eUNARY_GENERIC_EXPRESSION: eUNARY_GENERIC_EXPRESSION 	// [4]
    public let super_eLINEARIZED_TABLE_FUNCTION: eLINEARIZED_TABLE_FUNCTION 	// [5]
    public var super_eSYMMETRIC_MATRIX: eSYMMETRIC_MATRIX { return self } 	// [6]

    //MARK: SUBTYPES
    public var sub_eSYMMETRIC_BANDED_MATRIX: eSYMMETRIC_BANDED_MATRIX? {	// [7]
      return self.complexEntity.entityReference(eSYMMETRIC_BANDED_MATRIX.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT(DYNAMIC)__ attribute
    /// - origin: SUPER( ``eEXPLICIT_TABLE_FUNCTION`` )
    public var SHAPE: SDAI.LIST<tPOSITIVE_INTEGER>/*[1:nil]*/  {
      get {
        if let resolved = _explicit_table_function._shape__provider(complex: self.complexEntity) {
          let value = resolved._shape__getter(complex: self.complexEntity)
          return value
        }
        else {
          return SDAI.UNWRAP( super_eEXPLICIT_TABLE_FUNCTION.partialEntity._shape )
        }
      }
      set(newValue) {
        if let _ = _explicit_table_function._shape__provider(complex: self.complexEntity) { return }

        let partial = super_eEXPLICIT_TABLE_FUNCTION.partialEntity
        partial._shape = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eSYMMETRIC_BANDED_MATRIX`` )
    public var DEFAULT_ENTRY: sMATHS_VALUE?  {
      get {
        return sub_eSYMMETRIC_BANDED_MATRIX?.partialEntity._default_entry
      }
      set(newValue) {
        guard let partial = sub_eSYMMETRIC_BANDED_MATRIX?.super_eSYMMETRIC_BANDED_MATRIX.partialEntity
          else { return }
        partial._default_entry = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eSYMMETRIC_MATRIX`` )
    public var SYMMETRY: nSYMMETRY_TYPE {
      get {
        return SDAI.UNWRAP( self.partialEntity._symmetry )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._symmetry = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eEXPLICIT_TABLE_FUNCTION`` )
    public var INDEX_BASE: tZERO_OR_ONE {
      get {
        return SDAI.UNWRAP( super_eEXPLICIT_TABLE_FUNCTION.partialEntity._index_base )
      }
      set(newValue) {
        let partial = super_eEXPLICIT_TABLE_FUNCTION.partialEntity
        partial._index_base = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eSYMMETRIC_MATRIX`` )
    public var ORDER: nORDERING_TYPE {
      get {
        return SDAI.UNWRAP( self.partialEntity._order )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._order = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eLINEARIZED_TABLE_FUNCTION`` )
    public var FIRST: SDAI.INTEGER {
      get {
        return SDAI.UNWRAP( super_eLINEARIZED_TABLE_FUNCTION.partialEntity._first )
      }
      set(newValue) {
        let partial = super_eLINEARIZED_TABLE_FUNCTION.partialEntity
        partial._first = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eLINEARIZED_TABLE_FUNCTION`` )
    public var SOURCE: eMATHS_FUNCTION?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"SOURCE") {
          return cached.value as! eMATHS_FUNCTION? 
        }
        let origin = super_eLINEARIZED_TABLE_FUNCTION
        let value = eMATHS_FUNCTION(origin.partialEntity._source__getter(SELF: origin))
        updateCache(derivedAttributeName:"SOURCE", value:value)
        return value
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SUPER( ``eLINEARIZED_TABLE_FUNCTION`` )
    public var OPERAND: eMATHS_FUNCTION {
      get {
        return SDAI.UNWRAP( eMATHS_FUNCTION( super_eUNARY_GENERIC_EXPRESSION.partialEntity._operand ) )
      }
      set(newValue) {
        let partial = super_eUNARY_GENERIC_EXPRESSION.partialEntity
        partial._operand = SDAI.UNWRAP(
          eGENERIC_EXPRESSION(newValue))
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eSYMMETRIC_BANDED_MATRIX`` )
    public var ABOVE: tNONNEGATIVE_INTEGER?  {
      get {
        return sub_eSYMMETRIC_BANDED_MATRIX?.partialEntity._above
      }
      set(newValue) {
        guard let partial = sub_eSYMMETRIC_BANDED_MATRIX?.super_eSYMMETRIC_BANDED_MATRIX.partialEntity
          else { return }
        partial._above = SDAI.UNWRAP(newValue)
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
    /// - origin: SELF( ``eSYMMETRIC_MATRIX`` )
    public var TRIANGLE: nLOWER_UPPER {
      get {
        return SDAI.UNWRAP( self.partialEntity._triangle )
      }
      set(newValue) {
        let partial = self.partialEntity
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
      guard let partial = complexEntity?.partialEntityInstance(_symmetric_matrix.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eGENERIC_EXPRESSION.self) else { return nil }
      self.super_eGENERIC_EXPRESSION = super1

      guard let super2 = complexEntity?.entityReference(eMATHS_FUNCTION.self) else { return nil }
      self.super_eMATHS_FUNCTION = super2

      guard let super3 = complexEntity?.entityReference(eEXPLICIT_TABLE_FUNCTION.self) else { return nil }
      self.super_eEXPLICIT_TABLE_FUNCTION = super3

      guard let super4 = complexEntity?.entityReference(eUNARY_GENERIC_EXPRESSION.self) else { return nil }
      self.super_eUNARY_GENERIC_EXPRESSION = super4

      guard let super5 = complexEntity?.entityReference(eLINEARIZED_TABLE_FUNCTION.self) else { return nil }
      self.super_eLINEARIZED_TABLE_FUNCTION = super5

      super.init(complex: complexEntity)
    }

    public required convenience init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let entityRef = generic?.entityReference else { return nil }
      self.init(complex: entityRef.complexEntity)
    }

    public convenience init?<S: SDAISelectType>(_ select: S?) { self.init(possiblyFrom: select) }
    public convenience init?(_ complex: SDAI.ComplexEntity?) { self.init(complex: complex) }


    //MARK: WHERE RULE VALIDATION (ENTITY)
    public override class func validateWhereRules(instance:SDAI.EntityReference?, prefix:SDAI.WhereLabel) -> [SDAI.WhereLabel:SDAI.LOGICAL] {
      guard let instance = instance as? Self else { return [:] }

      let prefix2 = prefix + " \(instance)"

      var result = super.validateWhereRules(instance:instance, prefix:prefix2)
      result[prefix2 + " .WHERE_wr1"] = _symmetric_matrix.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _symmetric_matrix.WHERE_wr2(SELF: instance)
      result[prefix2 + " .WHERE_wr3"] = _symmetric_matrix.WHERE_wr3(SELF: instance)
      result[prefix2 + " .WHERE_wr4"] = _symmetric_matrix.WHERE_wr4(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "SYMMETRIC_MATRIX", type: self, explicitAttributeCount: 3)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eGENERIC_EXPRESSION.self)
      entityDef.add(supertype: eMATHS_FUNCTION.self)
      entityDef.add(supertype: eEXPLICIT_TABLE_FUNCTION.self)
      entityDef.add(supertype: eUNARY_GENERIC_EXPRESSION.self)
      entityDef.add(supertype: eLINEARIZED_TABLE_FUNCTION.self)
      entityDef.add(supertype: eSYMMETRIC_MATRIX.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "SHAPE", keyPath: \eSYMMETRIC_MATRIX.SHAPE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DEFAULT_ENTRY", keyPath: \eSYMMETRIC_MATRIX.DEFAULT_ENTRY, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "SYMMETRY", keyPath: \eSYMMETRIC_MATRIX.SYMMETRY, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "INDEX_BASE", keyPath: \eSYMMETRIC_MATRIX.INDEX_BASE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ORDER", keyPath: \eSYMMETRIC_MATRIX.ORDER, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "FIRST", keyPath: \eSYMMETRIC_MATRIX.FIRST, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SOURCE", keyPath: \eSYMMETRIC_MATRIX.SOURCE, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "OPERAND", keyPath: \eSYMMETRIC_MATRIX.OPERAND, 
        kind: .explicitRedeclaring, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ABOVE", keyPath: \eSYMMETRIC_MATRIX.ABOVE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DOMAIN", keyPath: \eSYMMETRIC_MATRIX.DOMAIN, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "TRIANGLE", keyPath: \eSYMMETRIC_MATRIX.TRIANGLE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "RANGE", keyPath: \eSYMMETRIC_MATRIX.RANGE, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
