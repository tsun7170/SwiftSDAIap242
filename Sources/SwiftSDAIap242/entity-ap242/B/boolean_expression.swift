/* file: boolean_expression.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  ENTITY boolean_expression
    ABSTRACT SUPERTYPE OF ( 
        ONEOF ( 
            simple_boolean_expression, 
            unary_boolean_expression, 
            binary_boolean_expression, 
            multiple_arity_boolean_expression, 
            comparison_expression, 
            interval_expression, 
            boolean_defined_function ) )
    SUBTYPE OF ( expression );
  END_ENTITY; -- boolean_expression (line:8247 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	generic_expression
    (no local attributes)

  SUPER- ENTITY(2)	expression
    (no local attributes)

  ENTITY(SELF)	boolean_expression
    (no local attributes)

  SUB- ENTITY(4)	interval_expression
    ATTR:  interval_low,	TYPE: generic_expression -- DERIVED
      := SELF\multiple_arity_generic_expression.operands[1]

    ATTR:  interval_item,	TYPE: generic_expression -- DERIVED
      := SELF\multiple_arity_generic_expression.operands[2]

    ATTR:  interval_high,	TYPE: generic_expression -- DERIVED
      := SELF\multiple_arity_generic_expression.operands[3]


  SUB- ENTITY(5)	not_expression
    REDCR: operand,	TYPE: boolean_expression -- EXPLICIT
      -- OVERRIDING ENTITY: unary_generic_expression


  SUB- ENTITY(6)	odd_function
    REDCR: operand,	TYPE: numeric_expression -- EXPLICIT
      -- OVERRIDING ENTITY: unary_generic_expression


  SUB- ENTITY(7)	unary_boolean_expression
    (no local attributes)

  SUB- ENTITY(8)	boolean_defined_function
    (no local attributes)

  SUB- ENTITY(9)	boolean_representation_item
    (no local attributes)

  SUB- ENTITY(10)	boolean_literal
    ATTR:  the_value,	TYPE: BOOLEAN -- EXPLICIT


  SUB- ENTITY(11)	maths_boolean_variable
    (no local attributes)

  SUB- ENTITY(12)	boolean_variable
    (no local attributes)

  SUB- ENTITY(13)	simple_boolean_expression
    (no local attributes)

  SUB- ENTITY(14)	equals_expression
    (no local attributes)

  SUB- ENTITY(15)	xor_expression
    REDCR: operands,	TYPE: LIST [2 : 2] OF boolean_expression -- EXPLICIT	(AMBIGUOUS/MASKED)
      -- OVERRIDING ENTITY: binary_generic_expression


  SUB- ENTITY(16)	binary_boolean_expression
    (no local attributes)

  SUB- ENTITY(17)	or_expression
    (no local attributes)

  SUB- ENTITY(18)	and_expression
    (no local attributes)

  SUB- ENTITY(19)	multiple_arity_boolean_expression
    REDCR: operands,	TYPE: LIST [2 : ?] OF boolean_expression -- EXPLICIT	(AMBIGUOUS/MASKED)
      -- OVERRIDING ENTITY: multiple_arity_generic_expression


  SUB- ENTITY(20)	comparison_not_equal
    (no local attributes)

  SUB- ENTITY(21)	comparison_greater
    (no local attributes)

  SUB- ENTITY(22)	comparison_greater_equal
    (no local attributes)

  SUB- ENTITY(23)	comparison_less_equal
    (no local attributes)

  SUB- ENTITY(24)	like_expression
    (no local attributes)

  SUB- ENTITY(25)	comparison_equal
    (no local attributes)

  SUB- ENTITY(26)	comparison_less
    (no local attributes)

  SUB- ENTITY(27)	comparison_expression
    REDCR: operands,	TYPE: LIST [2 : 2] OF expression -- EXPLICIT	(AMBIGUOUS/MASKED)
      -- OVERRIDING ENTITY: binary_generic_expression


*/


//MARK: - Partial Entity
  public final class _boolean_expression : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eBOOLEAN_EXPRESSION.self
    }

    //ATTRIBUTES
    // (no local attributes)

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      return true
    }

    public override func isValueEqualOptionally(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      guard let rhs = rhs as? Self else { return false }
      var result: Bool? = true
      if let comp = super.isValueEqualOptionally(to: rhs, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init() {
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 0
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      self.init( )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY boolean_expression
    ABSTRACT SUPERTYPE OF ( 
        ONEOF ( 
            simple_boolean_expression, 
            unary_boolean_expression, 
            binary_boolean_expression, 
            multiple_arity_boolean_expression, 
            comparison_expression, 
            interval_expression, 
            boolean_defined_function ) )
    SUBTYPE OF ( expression );
  END_ENTITY; -- boolean_expression (line:8247 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eBOOLEAN_EXPRESSION : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _boolean_expression.self
    }
    public let partialEntity: _boolean_expression

    //MARK: SUPERTYPES
    public let super_eGENERIC_EXPRESSION: eGENERIC_EXPRESSION 	// [1]
    public let super_eEXPRESSION: eEXPRESSION 	// [2]
    public var super_eBOOLEAN_EXPRESSION: eBOOLEAN_EXPRESSION { return self } 	// [3]

    //MARK: SUBTYPES
    public var sub_eINTERVAL_EXPRESSION: eINTERVAL_EXPRESSION? {	// [4]
      return self.complexEntity.entityReference(eINTERVAL_EXPRESSION.self)
    }

    public var sub_eNOT_EXPRESSION: eNOT_EXPRESSION? {	// [5]
      return self.complexEntity.entityReference(eNOT_EXPRESSION.self)
    }

    public var sub_eODD_FUNCTION: eODD_FUNCTION? {	// [6]
      return self.complexEntity.entityReference(eODD_FUNCTION.self)
    }

    public var sub_eUNARY_BOOLEAN_EXPRESSION: eUNARY_BOOLEAN_EXPRESSION? {	// [7]
      return self.complexEntity.entityReference(eUNARY_BOOLEAN_EXPRESSION.self)
    }

    public var sub_eBOOLEAN_DEFINED_FUNCTION: eBOOLEAN_DEFINED_FUNCTION? {	// [8]
      return self.complexEntity.entityReference(eBOOLEAN_DEFINED_FUNCTION.self)
    }

    public var sub_eBOOLEAN_REPRESENTATION_ITEM: eBOOLEAN_REPRESENTATION_ITEM? {	// [9]
      return self.complexEntity.entityReference(eBOOLEAN_REPRESENTATION_ITEM.self)
    }

    public var sub_eBOOLEAN_LITERAL: eBOOLEAN_LITERAL? {	// [10]
      return self.complexEntity.entityReference(eBOOLEAN_LITERAL.self)
    }

    public var sub_eMATHS_BOOLEAN_VARIABLE: eMATHS_BOOLEAN_VARIABLE? {	// [11]
      return self.complexEntity.entityReference(eMATHS_BOOLEAN_VARIABLE.self)
    }

    public var sub_eBOOLEAN_VARIABLE: eBOOLEAN_VARIABLE? {	// [12]
      return self.complexEntity.entityReference(eBOOLEAN_VARIABLE.self)
    }

    public var sub_eSIMPLE_BOOLEAN_EXPRESSION: eSIMPLE_BOOLEAN_EXPRESSION? {	// [13]
      return self.complexEntity.entityReference(eSIMPLE_BOOLEAN_EXPRESSION.self)
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

    public var sub_eOR_EXPRESSION: eOR_EXPRESSION? {	// [17]
      return self.complexEntity.entityReference(eOR_EXPRESSION.self)
    }

    public var sub_eAND_EXPRESSION: eAND_EXPRESSION? {	// [18]
      return self.complexEntity.entityReference(eAND_EXPRESSION.self)
    }

    public var sub_eMULTIPLE_ARITY_BOOLEAN_EXPRESSION: eMULTIPLE_ARITY_BOOLEAN_EXPRESSION? {	// [19]
      return self.complexEntity.entityReference(eMULTIPLE_ARITY_BOOLEAN_EXPRESSION.self)
    }

    public var sub_eCOMPARISON_NOT_EQUAL: eCOMPARISON_NOT_EQUAL? {	// [20]
      return self.complexEntity.entityReference(eCOMPARISON_NOT_EQUAL.self)
    }

    public var sub_eCOMPARISON_GREATER: eCOMPARISON_GREATER? {	// [21]
      return self.complexEntity.entityReference(eCOMPARISON_GREATER.self)
    }

    public var sub_eCOMPARISON_GREATER_EQUAL: eCOMPARISON_GREATER_EQUAL? {	// [22]
      return self.complexEntity.entityReference(eCOMPARISON_GREATER_EQUAL.self)
    }

    public var sub_eCOMPARISON_LESS_EQUAL: eCOMPARISON_LESS_EQUAL? {	// [23]
      return self.complexEntity.entityReference(eCOMPARISON_LESS_EQUAL.self)
    }

    public var sub_eLIKE_EXPRESSION: eLIKE_EXPRESSION? {	// [24]
      return self.complexEntity.entityReference(eLIKE_EXPRESSION.self)
    }

    public var sub_eCOMPARISON_EQUAL: eCOMPARISON_EQUAL? {	// [25]
      return self.complexEntity.entityReference(eCOMPARISON_EQUAL.self)
    }

    public var sub_eCOMPARISON_LESS: eCOMPARISON_LESS? {	// [26]
      return self.complexEntity.entityReference(eCOMPARISON_LESS.self)
    }

    public var sub_eCOMPARISON_EXPRESSION: eCOMPARISON_EXPRESSION? {	// [27]
      return self.complexEntity.entityReference(eCOMPARISON_EXPRESSION.self)
    }


    //MARK: ATTRIBUTES
    // OPERANDS: (3 AMBIGUOUS REFs)

    /// __DERIVE__ attribute
    /// - origin: SUB( ``eINTERVAL_EXPRESSION`` )
    public var INTERVAL_HIGH: eGENERIC_EXPRESSION?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"INTERVAL_HIGH") {
          return cached.value as! eGENERIC_EXPRESSION? 
        }
        guard let origin = sub_eINTERVAL_EXPRESSION else { return nil }
        let value = eGENERIC_EXPRESSION(origin.partialEntity._interval_high__getter(SELF: origin))
        updateCache(derivedAttributeName:"INTERVAL_HIGH", value:value)
        return value
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUB( ``eINTERVAL_EXPRESSION`` )
    public var INTERVAL_LOW: eGENERIC_EXPRESSION?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"INTERVAL_LOW") {
          return cached.value as! eGENERIC_EXPRESSION? 
        }
        guard let origin = sub_eINTERVAL_EXPRESSION else { return nil }
        let value = eGENERIC_EXPRESSION(origin.partialEntity._interval_low__getter(SELF: origin))
        updateCache(derivedAttributeName:"INTERVAL_LOW", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eBOOLEAN_LITERAL`` )
    public var THE_VALUE: SDAI.BOOLEAN?  {
      get {
        return sub_eBOOLEAN_LITERAL?.partialEntity._the_value
      }
      set(newValue) {
        guard let partial = sub_eBOOLEAN_LITERAL?.super_eBOOLEAN_LITERAL.partialEntity else { return }
        partial._the_value = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SUB( ``eNOT_EXPRESSION`` )
    public var OPERAND: eBOOLEAN_EXPRESSION?  {
      get {
        return eBOOLEAN_EXPRESSION( sub_eNOT_EXPRESSION?.super_eUNARY_GENERIC_EXPRESSION.partialEntity
          ._operand )
      }
      set(newValue) {
        guard let partial = sub_eNOT_EXPRESSION?.super_eUNARY_GENERIC_EXPRESSION.partialEntity
          else { return }
        partial._operand = SDAI.UNWRAP(
          eGENERIC_EXPRESSION(newValue))
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUB( ``eINTERVAL_EXPRESSION`` )
    public var INTERVAL_ITEM: eGENERIC_EXPRESSION?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"INTERVAL_ITEM") {
          return cached.value as! eGENERIC_EXPRESSION? 
        }
        guard let origin = sub_eINTERVAL_EXPRESSION else { return nil }
        let value = eGENERIC_EXPRESSION(origin.partialEntity._interval_item__getter(SELF: origin))
        updateCache(derivedAttributeName:"INTERVAL_ITEM", value:value)
        return value
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_boolean_expression.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eGENERIC_EXPRESSION.self) else { return nil }
      self.super_eGENERIC_EXPRESSION = super1

      guard let super2 = complexEntity?.entityReference(eEXPRESSION.self) else { return nil }
      self.super_eEXPRESSION = super2

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "BOOLEAN_EXPRESSION", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eGENERIC_EXPRESSION.self)
      entityDef.add(supertype: eEXPRESSION.self)
      entityDef.add(supertype: eBOOLEAN_EXPRESSION.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "INTERVAL_HIGH", keyPath: \eBOOLEAN_EXPRESSION.INTERVAL_HIGH, 
        kind: .derived, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "INTERVAL_LOW", keyPath: \eBOOLEAN_EXPRESSION.INTERVAL_LOW, 
        kind: .derived, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "THE_VALUE", keyPath: \eBOOLEAN_EXPRESSION.THE_VALUE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "OPERAND", keyPath: \eBOOLEAN_EXPRESSION.OPERAND, 
        kind: .explicitRedeclaring, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "INTERVAL_ITEM", keyPath: \eBOOLEAN_EXPRESSION.INTERVAL_ITEM, 
        kind: .derived, source: .subEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
