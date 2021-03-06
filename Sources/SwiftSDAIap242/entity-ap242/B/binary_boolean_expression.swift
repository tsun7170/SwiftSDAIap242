/* file: binary_boolean_expression.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY binary_boolean_expression
    ABSTRACT SUPERTYPE OF ( 
        ONEOF ( 
            xor_expression, 
            equals_expression ) )
    SUBTYPE OF ( boolean_expression, binary_generic_expression );
  END_ENTITY; -- binary_boolean_expression (line:8208 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	generic_expression
    (no local attributes)

  SUPER- ENTITY(2)	expression
    (no local attributes)

  SUPER- ENTITY(3)	boolean_expression
    (no local attributes)

  SUPER- ENTITY(4)	binary_generic_expression
    ATTR:  operands,	TYPE: LIST [2 : 2] OF generic_expression -- EXPLICIT
      -- possibly overriden by
          ENTITY: binary_numeric_expression,	TYPE: LIST [2 : 2] OF numeric_expression
          ENTITY: xor_expression,	TYPE: LIST [2 : 2] OF boolean_expression
          ENTITY: comparison_expression,	TYPE: LIST [2 : 2] OF expression


  ENTITY(SELF)	binary_boolean_expression
    (no local attributes)

  SUB- ENTITY(6)	equals_expression
    (no local attributes)

  SUB- ENTITY(7)	xor_expression
    REDCR: operands,	TYPE: LIST [2 : 2] OF boolean_expression -- EXPLICIT
      -- OVERRIDING ENTITY: binary_generic_expression


*/


//MARK: - Partial Entity
  public final class _binary_boolean_expression : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eBINARY_BOOLEAN_EXPRESSION.self
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
  ENTITY binary_boolean_expression
    ABSTRACT SUPERTYPE OF ( 
        ONEOF ( 
            xor_expression, 
            equals_expression ) )
    SUBTYPE OF ( boolean_expression, binary_generic_expression );
  END_ENTITY; -- binary_boolean_expression (line:8208 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eBINARY_BOOLEAN_EXPRESSION : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _binary_boolean_expression.self
    }
    public let partialEntity: _binary_boolean_expression

    //MARK: SUPERTYPES
    public let super_eGENERIC_EXPRESSION: eGENERIC_EXPRESSION 	// [1]
    public let super_eEXPRESSION: eEXPRESSION 	// [2]
    public let super_eBOOLEAN_EXPRESSION: eBOOLEAN_EXPRESSION 	// [3]
    public let super_eBINARY_GENERIC_EXPRESSION: eBINARY_GENERIC_EXPRESSION 	// [4]
    public var super_eBINARY_BOOLEAN_EXPRESSION: eBINARY_BOOLEAN_EXPRESSION { return self } 	// [5]

    //MARK: SUBTYPES
    public var sub_eEQUALS_EXPRESSION: eEQUALS_EXPRESSION? {	// [6]
      return self.complexEntity.entityReference(eEQUALS_EXPRESSION.self)
    }

    public var sub_eXOR_EXPRESSION: eXOR_EXPRESSION? {	// [7]
      return self.complexEntity.entityReference(eXOR_EXPRESSION.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eBINARY_GENERIC_EXPRESSION`` )
    public var OPERANDS: SDAI.LIST<eGENERIC_EXPRESSION>/*[2:2]*/  {
      get {
        return SDAI.UNWRAP( super_eBINARY_GENERIC_EXPRESSION.partialEntity._operands )
      }
      set(newValue) {
        let partial = super_eBINARY_GENERIC_EXPRESSION.partialEntity
        partial._operands = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_binary_boolean_expression.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eGENERIC_EXPRESSION.self) else { return nil }
      self.super_eGENERIC_EXPRESSION = super1

      guard let super2 = complexEntity?.entityReference(eEXPRESSION.self) else { return nil }
      self.super_eEXPRESSION = super2

      guard let super3 = complexEntity?.entityReference(eBOOLEAN_EXPRESSION.self) else { return nil }
      self.super_eBOOLEAN_EXPRESSION = super3

      guard let super4 = complexEntity?.entityReference(eBINARY_GENERIC_EXPRESSION.self) else { return nil }
      self.super_eBINARY_GENERIC_EXPRESSION = super4

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "BINARY_BOOLEAN_EXPRESSION", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eGENERIC_EXPRESSION.self)
      entityDef.add(supertype: eEXPRESSION.self)
      entityDef.add(supertype: eBOOLEAN_EXPRESSION.self)
      entityDef.add(supertype: eBINARY_GENERIC_EXPRESSION.self)
      entityDef.add(supertype: eBINARY_BOOLEAN_EXPRESSION.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "OPERANDS", keyPath: \eBINARY_BOOLEAN_EXPRESSION.OPERANDS, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
