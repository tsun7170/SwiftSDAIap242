/* file: comparison_greater_equal.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY comparison_greater_equal
    SUBTYPE OF ( comparison_expression );
  END_ENTITY; -- comparison_greater_equal (line:9764 file:ap242ed2_mim_lf_v1.101.TY.exp)

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
      *** ENTITY: comparison_expression,	TYPE: LIST [2 : 2] OF expression


  SUPER- ENTITY(5)	comparison_expression
    REDCR: operands,	TYPE: LIST [2 : 2] OF expression -- EXPLICIT
      -- OVERRIDING ENTITY: binary_generic_expression


  ENTITY(SELF)	comparison_greater_equal
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _comparison_greater_equal : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eCOMPARISON_GREATER_EQUAL.self
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
  ENTITY comparison_greater_equal
    SUBTYPE OF ( comparison_expression );
  END_ENTITY; -- comparison_greater_equal (line:9764 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eCOMPARISON_GREATER_EQUAL : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _comparison_greater_equal.self
    }
    public let partialEntity: _comparison_greater_equal

    //MARK: SUPERTYPES
    public let super_eGENERIC_EXPRESSION: eGENERIC_EXPRESSION 	// [1]
    public let super_eEXPRESSION: eEXPRESSION 	// [2]
    public let super_eBOOLEAN_EXPRESSION: eBOOLEAN_EXPRESSION 	// [3]
    public let super_eBINARY_GENERIC_EXPRESSION: eBINARY_GENERIC_EXPRESSION 	// [4]
    public let super_eCOMPARISON_EXPRESSION: eCOMPARISON_EXPRESSION 	// [5]
    public var super_eCOMPARISON_GREATER_EQUAL: eCOMPARISON_GREATER_EQUAL { return self } 	// [6]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT REDEF__ attribute
    /// - origin: SUPER( ``eCOMPARISON_EXPRESSION`` )
    public var OPERANDS: SDAI.LIST<eEXPRESSION>/*[2:2]*/  {
      get {
        return SDAI.UNWRAP( SDAI.LIST<eEXPRESSION>( super_eBINARY_GENERIC_EXPRESSION.partialEntity
          ._operands ) )
      }
      set(newValue) {
        let partial = super_eBINARY_GENERIC_EXPRESSION.partialEntity
        partial._operands = SDAI.UNWRAP(
          SDAI.LIST<eGENERIC_EXPRESSION>(newValue))
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_comparison_greater_equal.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eGENERIC_EXPRESSION.self) else { return nil }
      self.super_eGENERIC_EXPRESSION = super1

      guard let super2 = complexEntity?.entityReference(eEXPRESSION.self) else { return nil }
      self.super_eEXPRESSION = super2

      guard let super3 = complexEntity?.entityReference(eBOOLEAN_EXPRESSION.self) else { return nil }
      self.super_eBOOLEAN_EXPRESSION = super3

      guard let super4 = complexEntity?.entityReference(eBINARY_GENERIC_EXPRESSION.self) else { return nil }
      self.super_eBINARY_GENERIC_EXPRESSION = super4

      guard let super5 = complexEntity?.entityReference(eCOMPARISON_EXPRESSION.self) else { return nil }
      self.super_eCOMPARISON_EXPRESSION = super5

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "COMPARISON_GREATER_EQUAL", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eGENERIC_EXPRESSION.self)
      entityDef.add(supertype: eEXPRESSION.self)
      entityDef.add(supertype: eBOOLEAN_EXPRESSION.self)
      entityDef.add(supertype: eBINARY_GENERIC_EXPRESSION.self)
      entityDef.add(supertype: eCOMPARISON_EXPRESSION.self)
      entityDef.add(supertype: eCOMPARISON_GREATER_EQUAL.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "OPERANDS", keyPath: \eCOMPARISON_GREATER_EQUAL.OPERANDS, 
        kind: .explicitRedeclaring, source: .superEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
