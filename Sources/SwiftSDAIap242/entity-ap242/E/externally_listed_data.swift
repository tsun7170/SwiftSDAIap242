/* file: externally_listed_data.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY externally_listed_data
    SUBTYPE OF ( explicit_table_function, generic_literal, externally_defined_item );
      value_range  : maths_space;
    WHERE
      wr1: expression_is_constant( value_range );
  END_ENTITY; -- externally_listed_data (line:14996 file:ap242ed2_mim_lf_v1.101.TY.exp)

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


  SUPER- ENTITY(4)	simple_generic_expression
    (no local attributes)

  SUPER- ENTITY(5)	generic_literal
    (no local attributes)

  SUPER- ENTITY(6)	externally_defined_item
    ATTR:  item_id,	TYPE: source_item -- EXPLICIT

    ATTR:  source,	TYPE: external_source -- EXPLICIT


  ENTITY(SELF)	externally_listed_data
    ATTR:  value_range,	TYPE: maths_space -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _externally_listed_data : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eEXTERNALLY_LISTED_DATA.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _value_range: eMATHS_SPACE // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._value_range.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._value_range.value.isValueEqualOptionally(to: rhs._value_range.value, visited: &comppairs)	{
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
      if let comp = self._value_range.value.isValueEqualOptionally(to: rhs._value_range.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eEXTERNALLY_LISTED_DATA?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = EXPRESSION_IS_CONSTANT(eGENERIC_EXPRESSION(/*eMATHS_SPACE*/SELF.VALUE_RANGE))
      return SDAI.LOGICAL(_TEMP1)
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(VALUE_RANGE: eMATHS_SPACE) {
      self._value_range = VALUE_RANGE
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: eMATHS_SPACE.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( VALUE_RANGE: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY externally_listed_data
    SUBTYPE OF ( explicit_table_function, generic_literal, externally_defined_item );
      value_range  : maths_space;
    WHERE
      wr1: expression_is_constant( value_range );
  END_ENTITY; -- externally_listed_data (line:14996 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eEXTERNALLY_LISTED_DATA : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _externally_listed_data.self
    }
    public let partialEntity: _externally_listed_data

    //MARK: SUPERTYPES
    public let super_eGENERIC_EXPRESSION: eGENERIC_EXPRESSION 	// [1]
    public let super_eMATHS_FUNCTION: eMATHS_FUNCTION 	// [2]
    public let super_eEXPLICIT_TABLE_FUNCTION: eEXPLICIT_TABLE_FUNCTION 	// [3]
    public let super_eSIMPLE_GENERIC_EXPRESSION: eSIMPLE_GENERIC_EXPRESSION 	// [4]
    public let super_eGENERIC_LITERAL: eGENERIC_LITERAL 	// [5]
    public let super_eEXTERNALLY_DEFINED_ITEM: eEXTERNALLY_DEFINED_ITEM 	// [6]
    public var super_eEXTERNALLY_LISTED_DATA: eEXTERNALLY_LISTED_DATA { return self } 	// [7]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eEXTERNALLY_DEFINED_ITEM`` )
    public var ITEM_ID: sSOURCE_ITEM {
      get {
        return SDAI.UNWRAP( super_eEXTERNALLY_DEFINED_ITEM.partialEntity._item_id )
      }
      set(newValue) {
        let partial = super_eEXTERNALLY_DEFINED_ITEM.partialEntity
        partial._item_id = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eEXTERNALLY_LISTED_DATA`` )
    public var VALUE_RANGE: eMATHS_SPACE {
      get {
        return SDAI.UNWRAP( self.partialEntity._value_range )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._value_range = SDAI.UNWRAP(newValue)
      }
    }

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
    /// - origin: SUPER( ``eEXTERNALLY_DEFINED_ITEM`` )
    public var SOURCE: eEXTERNAL_SOURCE {
      get {
        return SDAI.UNWRAP( super_eEXTERNALLY_DEFINED_ITEM.partialEntity._source )
      }
      set(newValue) {
        let partial = super_eEXTERNALLY_DEFINED_ITEM.partialEntity
        partial._source = SDAI.UNWRAP(newValue)
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
      guard let partial = complexEntity?.partialEntityInstance(_externally_listed_data.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eGENERIC_EXPRESSION.self) else { return nil }
      self.super_eGENERIC_EXPRESSION = super1

      guard let super2 = complexEntity?.entityReference(eMATHS_FUNCTION.self) else { return nil }
      self.super_eMATHS_FUNCTION = super2

      guard let super3 = complexEntity?.entityReference(eEXPLICIT_TABLE_FUNCTION.self) else { return nil }
      self.super_eEXPLICIT_TABLE_FUNCTION = super3

      guard let super4 = complexEntity?.entityReference(eSIMPLE_GENERIC_EXPRESSION.self) else { return nil }
      self.super_eSIMPLE_GENERIC_EXPRESSION = super4

      guard let super5 = complexEntity?.entityReference(eGENERIC_LITERAL.self) else { return nil }
      self.super_eGENERIC_LITERAL = super5

      guard let super6 = complexEntity?.entityReference(eEXTERNALLY_DEFINED_ITEM.self) else { return nil }
      self.super_eEXTERNALLY_DEFINED_ITEM = super6

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
      result[prefix2 + " .WHERE_wr1"] = _externally_listed_data.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "EXTERNALLY_LISTED_DATA", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eGENERIC_EXPRESSION.self)
      entityDef.add(supertype: eMATHS_FUNCTION.self)
      entityDef.add(supertype: eEXPLICIT_TABLE_FUNCTION.self)
      entityDef.add(supertype: eSIMPLE_GENERIC_EXPRESSION.self)
      entityDef.add(supertype: eGENERIC_LITERAL.self)
      entityDef.add(supertype: eEXTERNALLY_DEFINED_ITEM.self)
      entityDef.add(supertype: eEXTERNALLY_LISTED_DATA.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "ITEM_ID", keyPath: \eEXTERNALLY_LISTED_DATA.ITEM_ID, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "VALUE_RANGE", keyPath: \eEXTERNALLY_LISTED_DATA.VALUE_RANGE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "SHAPE", keyPath: \eEXTERNALLY_LISTED_DATA.SHAPE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "INDEX_BASE", keyPath: \eEXTERNALLY_LISTED_DATA.INDEX_BASE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SOURCE", keyPath: \eEXTERNALLY_LISTED_DATA.SOURCE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DOMAIN", keyPath: \eEXTERNALLY_LISTED_DATA.DOMAIN, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RANGE", keyPath: \eEXTERNALLY_LISTED_DATA.RANGE, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
