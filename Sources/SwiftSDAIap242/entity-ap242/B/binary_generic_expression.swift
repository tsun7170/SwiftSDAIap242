/* file: binary_generic_expression.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY binary_generic_expression
    ABSTRACT SUPERTYPE
    SUBTYPE OF ( generic_expression );
      operands  : LIST [2 : 2] OF generic_expression;
  END_ENTITY; -- binary_generic_expression (line:8218 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	generic_expression
    (no local attributes)

  ENTITY(SELF)	binary_generic_expression
    ATTR:  operands,	TYPE: LIST [2 : 2] OF generic_expression -- EXPLICIT
      -- possibly overriden by
          ENTITY: binary_numeric_expression,	TYPE: LIST [2 : 2] OF numeric_expression
          ENTITY: xor_expression,	TYPE: LIST [2 : 2] OF boolean_expression
          ENTITY: comparison_expression,	TYPE: LIST [2 : 2] OF expression


  SUB- ENTITY(3)	minus_expression
    (no local attributes)

  SUB- ENTITY(4)	div_expression
    (no local attributes)

  SUB- ENTITY(5)	mod_expression
    (no local attributes)

  SUB- ENTITY(6)	rational_representation_item
    (no local attributes)

  SUB- ENTITY(7)	slash_expression
    (no local attributes)

  SUB- ENTITY(8)	power_expression
    (no local attributes)

  SUB- ENTITY(9)	atan_function
    (no local attributes)

  SUB- ENTITY(10)	binary_function_call
    (no local attributes)

  SUB- ENTITY(11)	binary_numeric_expression
    REDCR: operands,	TYPE: LIST [2 : 2] OF numeric_expression -- EXPLICIT
      -- OVERRIDING ENTITY: binary_generic_expression


  SUB- ENTITY(12)	index_expression
    ATTR:  operand,	TYPE: generic_expression -- DERIVED
      := SELF\binary_generic_expression.operands[1]

    ATTR:  index,	TYPE: generic_expression -- DERIVED
      := SELF\binary_generic_expression.operands[2]


  SUB- ENTITY(13)	format_function
    ATTR:  value_to_format,	TYPE: generic_expression -- DERIVED
      := SELF\binary_generic_expression.operands[1]

    ATTR:  format_string,	TYPE: generic_expression -- DERIVED
      := SELF\binary_generic_expression.operands[2]


  SUB- ENTITY(14)	equals_expression
    (no local attributes)

  SUB- ENTITY(15)	xor_expression
    REDCR: operands,	TYPE: LIST [2 : 2] OF boolean_expression -- EXPLICIT
      -- OVERRIDING ENTITY: binary_generic_expression


  SUB- ENTITY(16)	binary_boolean_expression
    (no local attributes)

  SUB- ENTITY(17)	comparison_not_equal
    (no local attributes)

  SUB- ENTITY(18)	comparison_greater
    (no local attributes)

  SUB- ENTITY(19)	comparison_greater_equal
    (no local attributes)

  SUB- ENTITY(20)	comparison_less_equal
    (no local attributes)

  SUB- ENTITY(21)	like_expression
    (no local attributes)

  SUB- ENTITY(22)	comparison_equal
    (no local attributes)

  SUB- ENTITY(23)	comparison_less
    (no local attributes)

  SUB- ENTITY(24)	comparison_expression
    REDCR: operands,	TYPE: LIST [2 : 2] OF expression -- EXPLICIT
      -- OVERRIDING ENTITY: binary_generic_expression


*/


//MARK: - Partial Entity
  public final class _binary_generic_expression : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eBINARY_GENERIC_EXPRESSION.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _operands: SDAI.LIST<eGENERIC_EXPRESSION>/*[2:2]*/  // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._operands.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._operands.value.isValueEqualOptionally(to: rhs._operands.value, visited: &comppairs)	{
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
      if let comp = self._operands.value.isValueEqualOptionally(to: rhs._operands.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(OPERANDS: SDAI.LIST<eGENERIC_EXPRESSION>/*[2:2]*/ ) {
      self._operands = OPERANDS
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: SDAI.LIST<
        eGENERIC_EXPRESSION>.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( OPERANDS: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY binary_generic_expression
    ABSTRACT SUPERTYPE
    SUBTYPE OF ( generic_expression );
      operands  : LIST [2 : 2] OF generic_expression;
  END_ENTITY; -- binary_generic_expression (line:8218 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eBINARY_GENERIC_EXPRESSION : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _binary_generic_expression.self
    }
    public let partialEntity: _binary_generic_expression

    //MARK: SUPERTYPES
    public let super_eGENERIC_EXPRESSION: eGENERIC_EXPRESSION 	// [1]
    public var super_eBINARY_GENERIC_EXPRESSION: eBINARY_GENERIC_EXPRESSION { return self } 	// [2]

    //MARK: SUBTYPES
    public var sub_eMINUS_EXPRESSION: eMINUS_EXPRESSION? {	// [3]
      return self.complexEntity.entityReference(eMINUS_EXPRESSION.self)
    }

    public var sub_eDIV_EXPRESSION: eDIV_EXPRESSION? {	// [4]
      return self.complexEntity.entityReference(eDIV_EXPRESSION.self)
    }

    public var sub_eMOD_EXPRESSION: eMOD_EXPRESSION? {	// [5]
      return self.complexEntity.entityReference(eMOD_EXPRESSION.self)
    }

    public var sub_eRATIONAL_REPRESENTATION_ITEM: eRATIONAL_REPRESENTATION_ITEM? {	// [6]
      return self.complexEntity.entityReference(eRATIONAL_REPRESENTATION_ITEM.self)
    }

    public var sub_eSLASH_EXPRESSION: eSLASH_EXPRESSION? {	// [7]
      return self.complexEntity.entityReference(eSLASH_EXPRESSION.self)
    }

    public var sub_ePOWER_EXPRESSION: ePOWER_EXPRESSION? {	// [8]
      return self.complexEntity.entityReference(ePOWER_EXPRESSION.self)
    }

    public var sub_eATAN_FUNCTION: eATAN_FUNCTION? {	// [9]
      return self.complexEntity.entityReference(eATAN_FUNCTION.self)
    }

    public var sub_eBINARY_FUNCTION_CALL: eBINARY_FUNCTION_CALL? {	// [10]
      return self.complexEntity.entityReference(eBINARY_FUNCTION_CALL.self)
    }

    public var sub_eBINARY_NUMERIC_EXPRESSION: eBINARY_NUMERIC_EXPRESSION? {	// [11]
      return self.complexEntity.entityReference(eBINARY_NUMERIC_EXPRESSION.self)
    }

    public var sub_eINDEX_EXPRESSION: eINDEX_EXPRESSION? {	// [12]
      return self.complexEntity.entityReference(eINDEX_EXPRESSION.self)
    }

    public var sub_eFORMAT_FUNCTION: eFORMAT_FUNCTION? {	// [13]
      return self.complexEntity.entityReference(eFORMAT_FUNCTION.self)
    }

    public var sub_eEQUALS_EXPRESSION: eEQUALS_EXPRESSION? {	// [14]
      return self.complexEntity.entityReference(eEQUALS_EXPRESSION.self)
    }

    public var sub_eXOR_EXPRESSION: eXOR_EXPRESSION? {	// [15]
      return self.complexEntity.entityReference(eXOR_EXPRESSION.self)
    }

    public var sub_eBINARY_BOOLEAN_EXPRESSION: eBINARY_BOOLEAN_EXPRESSION? {	// [16]
      return self.complexEntity.entityReference(eBINARY_BOOLEAN_EXPRESSION.self)
    }

    public var sub_eCOMPARISON_NOT_EQUAL: eCOMPARISON_NOT_EQUAL? {	// [17]
      return self.complexEntity.entityReference(eCOMPARISON_NOT_EQUAL.self)
    }

    public var sub_eCOMPARISON_GREATER: eCOMPARISON_GREATER? {	// [18]
      return self.complexEntity.entityReference(eCOMPARISON_GREATER.self)
    }

    public var sub_eCOMPARISON_GREATER_EQUAL: eCOMPARISON_GREATER_EQUAL? {	// [19]
      return self.complexEntity.entityReference(eCOMPARISON_GREATER_EQUAL.self)
    }

    public var sub_eCOMPARISON_LESS_EQUAL: eCOMPARISON_LESS_EQUAL? {	// [20]
      return self.complexEntity.entityReference(eCOMPARISON_LESS_EQUAL.self)
    }

    public var sub_eLIKE_EXPRESSION: eLIKE_EXPRESSION? {	// [21]
      return self.complexEntity.entityReference(eLIKE_EXPRESSION.self)
    }

    public var sub_eCOMPARISON_EQUAL: eCOMPARISON_EQUAL? {	// [22]
      return self.complexEntity.entityReference(eCOMPARISON_EQUAL.self)
    }

    public var sub_eCOMPARISON_LESS: eCOMPARISON_LESS? {	// [23]
      return self.complexEntity.entityReference(eCOMPARISON_LESS.self)
    }

    public var sub_eCOMPARISON_EXPRESSION: eCOMPARISON_EXPRESSION? {	// [24]
      return self.complexEntity.entityReference(eCOMPARISON_EXPRESSION.self)
    }


    //MARK: ATTRIBUTES
    /// __DERIVE__ attribute
    /// - origin: SUB( ``eFORMAT_FUNCTION`` )
    public var FORMAT_STRING: eGENERIC_EXPRESSION?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"FORMAT_STRING") {
          return cached.value as! eGENERIC_EXPRESSION? 
        }
        guard let origin = sub_eFORMAT_FUNCTION else { return nil }
        let value = eGENERIC_EXPRESSION(origin.partialEntity._format_string__getter(SELF: origin))
        updateCache(derivedAttributeName:"FORMAT_STRING", value:value)
        return value
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUB( ``eFORMAT_FUNCTION`` )
    public var VALUE_TO_FORMAT: eGENERIC_EXPRESSION?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"VALUE_TO_FORMAT") {
          return cached.value as! eGENERIC_EXPRESSION? 
        }
        guard let origin = sub_eFORMAT_FUNCTION else { return nil }
        let value = eGENERIC_EXPRESSION(origin.partialEntity._value_to_format__getter(SELF: origin))
        updateCache(derivedAttributeName:"VALUE_TO_FORMAT", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eBINARY_GENERIC_EXPRESSION`` )
    public var OPERANDS: SDAI.LIST<eGENERIC_EXPRESSION>/*[2:2]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._operands )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._operands = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUB( ``eINDEX_EXPRESSION`` )
    public var INDEX: eGENERIC_EXPRESSION?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"INDEX") {
          return cached.value as! eGENERIC_EXPRESSION? 
        }
        guard let origin = sub_eINDEX_EXPRESSION else { return nil }
        let value = eGENERIC_EXPRESSION(origin.partialEntity._index__getter(SELF: origin))
        updateCache(derivedAttributeName:"INDEX", value:value)
        return value
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUB( ``eINDEX_EXPRESSION`` )
    public var OPERAND: eGENERIC_EXPRESSION?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"OPERAND") {
          return cached.value as! eGENERIC_EXPRESSION? 
        }
        guard let origin = sub_eINDEX_EXPRESSION else { return nil }
        let value = eGENERIC_EXPRESSION(origin.partialEntity._operand__getter(SELF: origin))
        updateCache(derivedAttributeName:"OPERAND", value:value)
        return value
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_binary_generic_expression.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eGENERIC_EXPRESSION.self) else { return nil }
      self.super_eGENERIC_EXPRESSION = super1

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "BINARY_GENERIC_EXPRESSION", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eGENERIC_EXPRESSION.self)
      entityDef.add(supertype: eBINARY_GENERIC_EXPRESSION.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "FORMAT_STRING", keyPath: \eBINARY_GENERIC_EXPRESSION.FORMAT_STRING, 
        kind: .derived, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "VALUE_TO_FORMAT", keyPath: \eBINARY_GENERIC_EXPRESSION.VALUE_TO_FORMAT, 
        kind: .derived, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "OPERANDS", keyPath: \eBINARY_GENERIC_EXPRESSION.OPERANDS, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "INDEX", keyPath: \eBINARY_GENERIC_EXPRESSION.INDEX, 
        kind: .derived, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "OPERAND", keyPath: \eBINARY_GENERIC_EXPRESSION.OPERAND, 
        kind: .derived, source: .subEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
