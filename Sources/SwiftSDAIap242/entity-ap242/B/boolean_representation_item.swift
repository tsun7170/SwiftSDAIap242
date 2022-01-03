/* file: boolean_representation_item.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY boolean_representation_item
    SUBTYPE OF ( representation_item, boolean_literal );
  END_ENTITY; -- boolean_representation_item (line:8274 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(2)	generic_expression
    (no local attributes)

  SUPER- ENTITY(3)	expression
    (no local attributes)

  SUPER- ENTITY(4)	boolean_expression
    (no local attributes)

  SUPER- ENTITY(5)	simple_generic_expression
    (no local attributes)

  SUPER- ENTITY(6)	simple_boolean_expression
    (no local attributes)

  SUPER- ENTITY(7)	generic_literal
    (no local attributes)

  SUPER- ENTITY(8)	boolean_literal
    ATTR:  the_value,	TYPE: BOOLEAN -- EXPLICIT


  ENTITY(SELF)	boolean_representation_item
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _boolean_representation_item : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eBOOLEAN_REPRESENTATION_ITEM.self
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
  ENTITY boolean_representation_item
    SUBTYPE OF ( representation_item, boolean_literal );
  END_ENTITY; -- boolean_representation_item (line:8274 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eBOOLEAN_REPRESENTATION_ITEM : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _boolean_representation_item.self
    }
    public let partialEntity: _boolean_representation_item

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGENERIC_EXPRESSION: eGENERIC_EXPRESSION 	// [2]
    public let super_eEXPRESSION: eEXPRESSION 	// [3]
    public let super_eBOOLEAN_EXPRESSION: eBOOLEAN_EXPRESSION 	// [4]
    public let super_eSIMPLE_GENERIC_EXPRESSION: eSIMPLE_GENERIC_EXPRESSION 	// [5]
    public let super_eSIMPLE_BOOLEAN_EXPRESSION: eSIMPLE_BOOLEAN_EXPRESSION 	// [6]
    public let super_eGENERIC_LITERAL: eGENERIC_LITERAL 	// [7]
    public let super_eBOOLEAN_LITERAL: eBOOLEAN_LITERAL 	// [8]
    public var super_eBOOLEAN_REPRESENTATION_ITEM: eBOOLEAN_REPRESENTATION_ITEM { return self } 	// [9]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eBOOLEAN_LITERAL`` )
    public var THE_VALUE: SDAI.BOOLEAN {
      get {
        return SDAI.UNWRAP( super_eBOOLEAN_LITERAL.partialEntity._the_value )
      }
      set(newValue) {
        let partial = super_eBOOLEAN_LITERAL.partialEntity
        partial._the_value = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eREPRESENTATION_ITEM`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( super_eREPRESENTATION_ITEM.partialEntity._name )
      }
      set(newValue) {
        let partial = super_eREPRESENTATION_ITEM.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_boolean_representation_item.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eGENERIC_EXPRESSION.self) else { return nil }
      self.super_eGENERIC_EXPRESSION = super2

      guard let super3 = complexEntity?.entityReference(eEXPRESSION.self) else { return nil }
      self.super_eEXPRESSION = super3

      guard let super4 = complexEntity?.entityReference(eBOOLEAN_EXPRESSION.self) else { return nil }
      self.super_eBOOLEAN_EXPRESSION = super4

      guard let super5 = complexEntity?.entityReference(eSIMPLE_GENERIC_EXPRESSION.self) else { return nil }
      self.super_eSIMPLE_GENERIC_EXPRESSION = super5

      guard let super6 = complexEntity?.entityReference(eSIMPLE_BOOLEAN_EXPRESSION.self) else { return nil }
      self.super_eSIMPLE_BOOLEAN_EXPRESSION = super6

      guard let super7 = complexEntity?.entityReference(eGENERIC_LITERAL.self) else { return nil }
      self.super_eGENERIC_LITERAL = super7

      guard let super8 = complexEntity?.entityReference(eBOOLEAN_LITERAL.self) else { return nil }
      self.super_eBOOLEAN_LITERAL = super8

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "BOOLEAN_REPRESENTATION_ITEM", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGENERIC_EXPRESSION.self)
      entityDef.add(supertype: eEXPRESSION.self)
      entityDef.add(supertype: eBOOLEAN_EXPRESSION.self)
      entityDef.add(supertype: eSIMPLE_GENERIC_EXPRESSION.self)
      entityDef.add(supertype: eSIMPLE_BOOLEAN_EXPRESSION.self)
      entityDef.add(supertype: eGENERIC_LITERAL.self)
      entityDef.add(supertype: eBOOLEAN_LITERAL.self)
      entityDef.add(supertype: eBOOLEAN_REPRESENTATION_ITEM.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "THE_VALUE", keyPath: \eBOOLEAN_REPRESENTATION_ITEM.THE_VALUE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eBOOLEAN_REPRESENTATION_ITEM.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
