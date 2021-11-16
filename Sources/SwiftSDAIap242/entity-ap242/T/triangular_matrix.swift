/* file: triangular_matrix.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY triangular_matrix
    SUBTYPE OF ( linearized_table_function );
      default_entry  : maths_value;
      lo_up          : lower_upper;
      order          : ordering_type;
    WHERE
      wr1: ( SIZEOF( SELF\explicit_table_function.shape ) = 2 );
      wr2: member_of( default_entry, SELF\maths_function.range );
  END_ENTITY; -- triangular_matrix (line:32918 file:ap242ed2_mim_lf_v1.101.TY.exp)

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


  ENTITY(SELF)	triangular_matrix
    ATTR:  default_entry,	TYPE: maths_value -- EXPLICIT

    ATTR:  lo_up,	TYPE: lower_upper -- EXPLICIT

    ATTR:  order,	TYPE: ordering_type -- EXPLICIT


  SUB- ENTITY(7)	strict_triangular_matrix
    ATTR:  main_diagonal_value,	TYPE: maths_value -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _triangular_matrix : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eTRIANGULAR_MATRIX.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _default_entry: sMATHS_VALUE // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _lo_up: nLOWER_UPPER // PLAIN EXPLICIT ATTRIBUTE

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
      self._default_entry.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._lo_up.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._order.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._default_entry.value.isValueEqualOptionally(to: rhs._default_entry.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._lo_up.value.isValueEqualOptionally(to: rhs._lo_up.value, visited: &comppairs)	{
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
      if let comp = self._default_entry.value.isValueEqualOptionally(to: rhs._default_entry.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._lo_up.value.isValueEqualOptionally(to: rhs._lo_up.value, visited: &comppairs) {
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
    public static func WHERE_wr1(SELF: eTRIANGULAR_MATRIX?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.GROUP_REF(eEXPLICIT_TABLE_FUNCTION.self)
      let _TEMP2 = _TEMP1?.SHAPE
      let _TEMP3 = SDAI.SIZEOF(_TEMP2)
      let _TEMP4 = _TEMP3 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(2))
      return _TEMP4
    }
    public static func WHERE_wr2(SELF: eTRIANGULAR_MATRIX?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.GROUP_REF(eMATHS_FUNCTION.self)
      let _TEMP2 = _TEMP1?.RANGE
      let _TEMP3 = MEMBER_OF(VAL: SELF.DEFAULT_ENTRY, 
                             SPC: eMATHS_SPACE(/*sTUPLE_SPACE*/_TEMP2))
      return _TEMP3
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(DEFAULT_ENTRY: sMATHS_VALUE, LO_UP: nLOWER_UPPER, ORDER: nORDERING_TYPE) {
      self._default_entry = DEFAULT_ENTRY
      self._lo_up = LO_UP
      self._order = ORDER
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 3
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: sMATHS_VALUE.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: nLOWER_UPPER.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p2) = exchangeStructure.recoverRequiredParameter(as: nORDERING_TYPE.self, from: parameters[2])
      else { exchangeStructure.add(errorContext: "while recovering parameter #2 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( DEFAULT_ENTRY: p0, LO_UP: p1, ORDER: p2 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY triangular_matrix
    SUBTYPE OF ( linearized_table_function );
      default_entry  : maths_value;
      lo_up          : lower_upper;
      order          : ordering_type;
    WHERE
      wr1: ( SIZEOF( SELF\explicit_table_function.shape ) = 2 );
      wr2: member_of( default_entry, SELF\maths_function.range );
  END_ENTITY; -- triangular_matrix (line:32918 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eTRIANGULAR_MATRIX : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _triangular_matrix.self
    }
    public let partialEntity: _triangular_matrix

    //MARK: SUPERTYPES
    public let super_eGENERIC_EXPRESSION: eGENERIC_EXPRESSION 	// [1]
    public let super_eMATHS_FUNCTION: eMATHS_FUNCTION 	// [2]
    public let super_eEXPLICIT_TABLE_FUNCTION: eEXPLICIT_TABLE_FUNCTION 	// [3]
    public let super_eUNARY_GENERIC_EXPRESSION: eUNARY_GENERIC_EXPRESSION 	// [4]
    public let super_eLINEARIZED_TABLE_FUNCTION: eLINEARIZED_TABLE_FUNCTION 	// [5]
    public var super_eTRIANGULAR_MATRIX: eTRIANGULAR_MATRIX { return self } 	// [6]

    //MARK: SUBTYPES
    public var sub_eSTRICT_TRIANGULAR_MATRIX: eSTRICT_TRIANGULAR_MATRIX? {	// [7]
      return self.complexEntity.entityReference(eSTRICT_TRIANGULAR_MATRIX.self)
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
    /// - origin: SELF( ``eTRIANGULAR_MATRIX`` )
    public var DEFAULT_ENTRY: sMATHS_VALUE {
      get {
        return SDAI.UNWRAP( self.partialEntity._default_entry )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._default_entry = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eTRIANGULAR_MATRIX`` )
    public var LO_UP: nLOWER_UPPER {
      get {
        return SDAI.UNWRAP( self.partialEntity._lo_up )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._lo_up = SDAI.UNWRAP(newValue)
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
    /// - origin: SELF( ``eTRIANGULAR_MATRIX`` )
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
      guard let partial = complexEntity?.partialEntityInstance(_triangular_matrix.self) else { return nil }
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
      result[prefix2 + " .WHERE_wr1"] = _triangular_matrix.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _triangular_matrix.WHERE_wr2(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "TRIANGULAR_MATRIX", type: self, explicitAttributeCount: 3)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eGENERIC_EXPRESSION.self)
      entityDef.add(supertype: eMATHS_FUNCTION.self)
      entityDef.add(supertype: eEXPLICIT_TABLE_FUNCTION.self)
      entityDef.add(supertype: eUNARY_GENERIC_EXPRESSION.self)
      entityDef.add(supertype: eLINEARIZED_TABLE_FUNCTION.self)
      entityDef.add(supertype: eTRIANGULAR_MATRIX.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "SHAPE", keyPath: \eTRIANGULAR_MATRIX.SHAPE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DEFAULT_ENTRY", keyPath: \eTRIANGULAR_MATRIX.DEFAULT_ENTRY, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "LO_UP", keyPath: \eTRIANGULAR_MATRIX.LO_UP, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "INDEX_BASE", keyPath: \eTRIANGULAR_MATRIX.INDEX_BASE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ORDER", keyPath: \eTRIANGULAR_MATRIX.ORDER, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "FIRST", keyPath: \eTRIANGULAR_MATRIX.FIRST, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SOURCE", keyPath: \eTRIANGULAR_MATRIX.SOURCE, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "MAIN_DIAGONAL_VALUE", keyPath: \eTRIANGULAR_MATRIX.MAIN_DIAGONAL_VALUE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "OPERAND", keyPath: \eTRIANGULAR_MATRIX.OPERAND, 
        kind: .explicitRedeclaring, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DOMAIN", keyPath: \eTRIANGULAR_MATRIX.DOMAIN, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RANGE", keyPath: \eTRIANGULAR_MATRIX.RANGE, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
