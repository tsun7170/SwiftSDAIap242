/* file: basic_sparse_matrix.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY basic_sparse_matrix
    SUBTYPE OF ( explicit_table_function, multiple_arity_generic_expression );
      SELF\multiple_arity_generic_expression.operands : LIST [3 : 3] OF maths_function;
      default_entry                   : maths_value;
      order                           : ordering_type;
    DERIVE
      index  : maths_function := SELF\multiple_arity_generic_expression.operands[1];
      loc    : maths_function := SELF\multiple_arity_generic_expression.operands[2];
      val    : maths_function := SELF\multiple_arity_generic_expression.operands[3];
    WHERE
      wr1: function_is_1d_table( index );
      wr2: function_is_1d_table( loc );
      wr3: function_is_1d_table( val );
      wr4: check_sparse_index_domain( index.domain, index_base, shape, order );
      wr5: check_sparse_index_to_loc( index.range, loc.domain );
      wr6: ( loc.domain = val.domain );
      wr7: check_sparse_loc_range( loc.range, index_base, shape, order );
      wr8: member_of( default_entry, val.range );
  END_ENTITY; -- basic_sparse_matrix (line:7964 file:ap242ed2_mim_lf_v1.101.TY.exp)

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


  SUPER- ENTITY(4)	multiple_arity_generic_expression
    ATTR:  operands,	TYPE: LIST [2 : ?] OF generic_expression -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: series_composed_function,	TYPE: LIST [2 : ?] OF maths_function
          ENTITY: concat_expression,	TYPE: LIST [2 : ?] OF string_expression
          ENTITY: multiple_arity_numeric_expression,	TYPE: LIST [2 : ?] OF numeric_expression
          ENTITY: multiple_arity_boolean_expression,	TYPE: LIST [2 : ?] OF boolean_expression
      *** ENTITY: basic_sparse_matrix,	TYPE: LIST [3 : 3] OF maths_function
          ENTITY: parallel_composed_function,	TYPE: LIST [2 : ?] OF generic_expression	(as DERIVED)
          ENTITY: function_application,	TYPE: LIST [2 : ?] OF generic_expression	(as DERIVED)


  ENTITY(SELF)	basic_sparse_matrix
    REDCR: operands,	TYPE: LIST [3 : 3] OF maths_function -- EXPLICIT
      -- OVERRIDING ENTITY: multiple_arity_generic_expression

    ATTR:  default_entry,	TYPE: maths_value -- EXPLICIT

    ATTR:  order,	TYPE: ordering_type -- EXPLICIT

    ATTR:  index,	TYPE: maths_function -- DERIVED
      := SELF\multiple_arity_generic_expression.operands[1]

    ATTR:  loc,	TYPE: maths_function -- DERIVED
      := SELF\multiple_arity_generic_expression.operands[2]

    ATTR:  val,	TYPE: maths_function -- DERIVED
      := SELF\multiple_arity_generic_expression.operands[3]


*/


//MARK: - Partial Entity
  public final class _basic_sparse_matrix : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eBASIC_SPARSE_MATRIX.self
    }

    //ATTRIBUTES
    /* override var _operands: SDAI.LIST<eMATHS_FUNCTION>[3:3] 	//EXPLICIT REDEFINITION(eMULTIPLE_ARITY_GENERIC_EXPRESSION) */

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _default_entry: sMATHS_VALUE // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _order: nORDERING_TYPE // PLAIN EXPLICIT ATTRIBUTE

    /// DERIVE ATTRIBUTE
    internal func _index__getter(SELF: eBASIC_SPARSE_MATRIX) -> eMATHS_FUNCTION?  {

      let _TEMP1 = SELF.GROUP_REF(eMULTIPLE_ARITY_GENERIC_EXPRESSION.self)
      let _TEMP2 = _TEMP1?.OPERANDS
      let _TEMP3 = _TEMP2?[1]
      return eMATHS_FUNCTION(/*eGENERIC_EXPRESSION*/_TEMP3)
    }

    /// DERIVE ATTRIBUTE
    internal func _loc__getter(SELF: eBASIC_SPARSE_MATRIX) -> eMATHS_FUNCTION?  {

      let _TEMP1 = SELF.GROUP_REF(eMULTIPLE_ARITY_GENERIC_EXPRESSION.self)
      let _TEMP2 = _TEMP1?.OPERANDS
      let _TEMP3 = _TEMP2?[2]
      return eMATHS_FUNCTION(/*eGENERIC_EXPRESSION*/_TEMP3)
    }

    /// DERIVE ATTRIBUTE
    internal func _val__getter(SELF: eBASIC_SPARSE_MATRIX) -> eMATHS_FUNCTION?  {

      let _TEMP1 = SELF.GROUP_REF(eMULTIPLE_ARITY_GENERIC_EXPRESSION.self)
      let _TEMP2 = _TEMP1?.OPERANDS
      let _TEMP3 = _TEMP2?[3]
      return eMATHS_FUNCTION(/*eGENERIC_EXPRESSION*/_TEMP3)
    }

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._default_entry.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._order.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._default_entry.value.isValueEqualOptionally(to: rhs._default_entry.value, visited: &comppairs)	{
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
      if let comp = self._order.value.isValueEqualOptionally(to: rhs._order.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eBASIC_SPARSE_MATRIX?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = FUNCTION_IS_1D_TABLE(SELF.INDEX)
      return SDAI.LOGICAL(/*SDAI.BOOLEAN*/_TEMP1)
    }
    public static func WHERE_wr2(SELF: eBASIC_SPARSE_MATRIX?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = FUNCTION_IS_1D_TABLE(SELF.LOC)
      return SDAI.LOGICAL(/*SDAI.BOOLEAN*/_TEMP1)
    }
    public static func WHERE_wr3(SELF: eBASIC_SPARSE_MATRIX?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = FUNCTION_IS_1D_TABLE(SELF.VAL)
      return SDAI.LOGICAL(/*SDAI.BOOLEAN*/_TEMP1)
    }
    public static func WHERE_wr4(SELF: eBASIC_SPARSE_MATRIX?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.INDEX?.DOMAIN
      let _TEMP2 = CHECK_SPARSE_INDEX_DOMAIN(
        IDXDOM: _TEMP1, BASE: SELF.INDEX_BASE, 
        SHAPE: SELF.SHAPE, ORDER: SELF.ORDER)
      return SDAI.LOGICAL(/*SDAI.BOOLEAN*/_TEMP2)
    }
    public static func WHERE_wr5(SELF: eBASIC_SPARSE_MATRIX?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.INDEX?.RANGE
      let _TEMP2 = SELF.LOC?.DOMAIN
      let _TEMP3 = CHECK_SPARSE_INDEX_TO_LOC(
        INDEX_RANGE: _TEMP1, LOC_DOMAIN: _TEMP2)
      return SDAI.LOGICAL(/*SDAI.BOOLEAN*/_TEMP3)
    }
    public static func WHERE_wr6(SELF: eBASIC_SPARSE_MATRIX?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.LOC?.DOMAIN
      let _TEMP2 = SELF.VAL?.DOMAIN
      let _TEMP3 = _TEMP1 .==. _TEMP2
      return _TEMP3
    }
    public static func WHERE_wr7(SELF: eBASIC_SPARSE_MATRIX?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.LOC?.RANGE
      let _TEMP2 = CHECK_SPARSE_LOC_RANGE(
        LOCRNG: _TEMP1, BASE: SELF.INDEX_BASE, 
        SHAPE: SELF.SHAPE, ORDER: SELF.ORDER)
      return SDAI.LOGICAL(/*SDAI.BOOLEAN*/_TEMP2)
    }
    public static func WHERE_wr8(SELF: eBASIC_SPARSE_MATRIX?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.VAL?.RANGE
      let _TEMP2 = MEMBER_OF(VAL: SELF.DEFAULT_ENTRY, 
                             SPC: eMATHS_SPACE(/*sTUPLE_SPACE*/_TEMP1))
      return _TEMP2
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(DEFAULT_ENTRY: sMATHS_VALUE, ORDER: nORDERING_TYPE) {
      self._default_entry = DEFAULT_ENTRY
      self._order = ORDER
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: sMATHS_VALUE.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: nORDERING_TYPE.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( DEFAULT_ENTRY: p0, ORDER: p1 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY basic_sparse_matrix
    SUBTYPE OF ( explicit_table_function, multiple_arity_generic_expression );
      SELF\multiple_arity_generic_expression.operands : LIST [3 : 3] OF maths_function;
      default_entry                   : maths_value;
      order                           : ordering_type;
    DERIVE
      index  : maths_function := SELF\multiple_arity_generic_expression.operands[1];
      loc    : maths_function := SELF\multiple_arity_generic_expression.operands[2];
      val    : maths_function := SELF\multiple_arity_generic_expression.operands[3];
    WHERE
      wr1: function_is_1d_table( index );
      wr2: function_is_1d_table( loc );
      wr3: function_is_1d_table( val );
      wr4: check_sparse_index_domain( index.domain, index_base, shape, order );
      wr5: check_sparse_index_to_loc( index.range, loc.domain );
      wr6: ( loc.domain = val.domain );
      wr7: check_sparse_loc_range( loc.range, index_base, shape, order );
      wr8: member_of( default_entry, val.range );
  END_ENTITY; -- basic_sparse_matrix (line:7964 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eBASIC_SPARSE_MATRIX : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _basic_sparse_matrix.self
    }
    public let partialEntity: _basic_sparse_matrix

    //MARK: SUPERTYPES
    public let super_eGENERIC_EXPRESSION: eGENERIC_EXPRESSION 	// [1]
    public let super_eMATHS_FUNCTION: eMATHS_FUNCTION 	// [2]
    public let super_eEXPLICIT_TABLE_FUNCTION: eEXPLICIT_TABLE_FUNCTION 	// [3]
    public let super_eMULTIPLE_ARITY_GENERIC_EXPRESSION: eMULTIPLE_ARITY_GENERIC_EXPRESSION 	// [4]
    public var super_eBASIC_SPARSE_MATRIX: eBASIC_SPARSE_MATRIX { return self } 	// [5]

    //MARK: SUBTYPES

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
    /// - origin: SELF( ``eBASIC_SPARSE_MATRIX`` )
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
    /// - origin: SELF( ``eBASIC_SPARSE_MATRIX`` )
    public var ORDER: nORDERING_TYPE {
      get {
        return SDAI.UNWRAP( self.partialEntity._order )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._order = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SELF( ``eBASIC_SPARSE_MATRIX`` )
    public var VAL: eMATHS_FUNCTION?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"VAL") {
          return cached.value as! eMATHS_FUNCTION? 
        }
        let origin = self
        let value = origin.partialEntity._val__getter(SELF: origin)
        updateCache(derivedAttributeName:"VAL", value:value)
        return value
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SELF( ``eBASIC_SPARSE_MATRIX`` )
    public var LOC: eMATHS_FUNCTION?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"LOC") {
          return cached.value as! eMATHS_FUNCTION? 
        }
        let origin = self
        let value = origin.partialEntity._loc__getter(SELF: origin)
        updateCache(derivedAttributeName:"LOC", value:value)
        return value
      }
    }

    /// __EXPLICIT REDEF(DYNAMIC)__ attribute
    /// - origin: SELF( ``eBASIC_SPARSE_MATRIX`` )
    public var OPERANDS: SDAI.LIST<eMATHS_FUNCTION>/*[3:3]*/  {
      get {
        if let resolved = _multiple_arity_generic_expression._operands__provider(complex: self.complexEntity) {
          let value = SDAI.UNWRAP( SDAI.LIST<eMATHS_FUNCTION>(resolved._operands__getter(
            complex: self.complexEntity)) )
          return value
        }
        else {
          return SDAI.UNWRAP( SDAI.LIST<eMATHS_FUNCTION>(super_eMULTIPLE_ARITY_GENERIC_EXPRESSION
            .partialEntity._operands) )
        }
      }
      set(newValue) {
        if let _ = _multiple_arity_generic_expression._operands__provider(complex: self.complexEntity) { return }

        let partial = super_eMULTIPLE_ARITY_GENERIC_EXPRESSION.partialEntity
        partial._operands = SDAI.UNWRAP(
          SDAI.LIST<eGENERIC_EXPRESSION>(newValue))
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SELF( ``eBASIC_SPARSE_MATRIX`` )
    public var INDEX: eMATHS_FUNCTION?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"INDEX") {
          return cached.value as! eMATHS_FUNCTION? 
        }
        let origin = self
        let value = origin.partialEntity._index__getter(SELF: origin)
        updateCache(derivedAttributeName:"INDEX", value:value)
        return value
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
      guard let partial = complexEntity?.partialEntityInstance(_basic_sparse_matrix.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eGENERIC_EXPRESSION.self) else { return nil }
      self.super_eGENERIC_EXPRESSION = super1

      guard let super2 = complexEntity?.entityReference(eMATHS_FUNCTION.self) else { return nil }
      self.super_eMATHS_FUNCTION = super2

      guard let super3 = complexEntity?.entityReference(eEXPLICIT_TABLE_FUNCTION.self) else { return nil }
      self.super_eEXPLICIT_TABLE_FUNCTION = super3

      guard let super4 = complexEntity?.entityReference(eMULTIPLE_ARITY_GENERIC_EXPRESSION.self) else { return nil }
      self.super_eMULTIPLE_ARITY_GENERIC_EXPRESSION = super4

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
      result[prefix2 + " .WHERE_wr1"] = _basic_sparse_matrix.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _basic_sparse_matrix.WHERE_wr2(SELF: instance)
      result[prefix2 + " .WHERE_wr3"] = _basic_sparse_matrix.WHERE_wr3(SELF: instance)
      result[prefix2 + " .WHERE_wr4"] = _basic_sparse_matrix.WHERE_wr4(SELF: instance)
      result[prefix2 + " .WHERE_wr5"] = _basic_sparse_matrix.WHERE_wr5(SELF: instance)
      result[prefix2 + " .WHERE_wr6"] = _basic_sparse_matrix.WHERE_wr6(SELF: instance)
      result[prefix2 + " .WHERE_wr7"] = _basic_sparse_matrix.WHERE_wr7(SELF: instance)
      result[prefix2 + " .WHERE_wr8"] = _basic_sparse_matrix.WHERE_wr8(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "BASIC_SPARSE_MATRIX", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eGENERIC_EXPRESSION.self)
      entityDef.add(supertype: eMATHS_FUNCTION.self)
      entityDef.add(supertype: eEXPLICIT_TABLE_FUNCTION.self)
      entityDef.add(supertype: eMULTIPLE_ARITY_GENERIC_EXPRESSION.self)
      entityDef.add(supertype: eBASIC_SPARSE_MATRIX.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "SHAPE", keyPath: \eBASIC_SPARSE_MATRIX.SHAPE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DEFAULT_ENTRY", keyPath: \eBASIC_SPARSE_MATRIX.DEFAULT_ENTRY, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "INDEX_BASE", keyPath: \eBASIC_SPARSE_MATRIX.INDEX_BASE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ORDER", keyPath: \eBASIC_SPARSE_MATRIX.ORDER, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "VAL", keyPath: \eBASIC_SPARSE_MATRIX.VAL, 
        kind: .derived, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "LOC", keyPath: \eBASIC_SPARSE_MATRIX.LOC, 
        kind: .derived, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "OPERANDS", keyPath: \eBASIC_SPARSE_MATRIX.OPERANDS, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "INDEX", keyPath: \eBASIC_SPARSE_MATRIX.INDEX, 
        kind: .derived, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DOMAIN", keyPath: \eBASIC_SPARSE_MATRIX.DOMAIN, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RANGE", keyPath: \eBASIC_SPARSE_MATRIX.RANGE, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}