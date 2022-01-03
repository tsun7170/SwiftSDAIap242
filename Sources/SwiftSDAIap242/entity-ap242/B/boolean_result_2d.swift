/* file: boolean_result_2d.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY boolean_result_2d
    SUBTYPE OF ( boolean_result );
      SELF\boolean_result.first_operand : boolean_operand_2d;
      SELF\boolean_result.second_operand : boolean_operand_2d;
  END_ENTITY; -- boolean_result_2d (line:8285 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(2)	geometric_representation_item
    ATTR:  dim,	TYPE: dimension_count -- DERIVED
      := dimension_of( SELF )


  SUPER- ENTITY(3)	boolean_result
    ATTR:  operator,	TYPE: boolean_operator -- EXPLICIT

    ATTR:  first_operand,	TYPE: boolean_operand -- EXPLICIT
      -- possibly overriden by
      *** ENTITY: boolean_result_2d,	TYPE: boolean_operand_2d

    ATTR:  second_operand,	TYPE: boolean_operand -- EXPLICIT
      -- possibly overriden by
      *** ENTITY: boolean_result_2d,	TYPE: boolean_operand_2d


  ENTITY(SELF)	boolean_result_2d
    REDCR: first_operand,	TYPE: boolean_operand_2d -- EXPLICIT
      -- OVERRIDING ENTITY: boolean_result

    REDCR: second_operand,	TYPE: boolean_operand_2d -- EXPLICIT
      -- OVERRIDING ENTITY: boolean_result


*/


//MARK: - Partial Entity
  public final class _boolean_result_2d : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eBOOLEAN_RESULT_2D.self
    }

    //ATTRIBUTES
    /* override var _first_operand: sBOOLEAN_OPERAND_2D	//EXPLICIT REDEFINITION(eBOOLEAN_RESULT) */

    /* override var _second_operand: sBOOLEAN_OPERAND_2D	//EXPLICIT REDEFINITION(eBOOLEAN_RESULT) */

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sCSG_SELECT_2D.typeName)) // -> Self
      members.insert(SDAI.STRING(sBOOLEAN_OPERAND_2D.typeName)) // -> Self
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
  ENTITY boolean_result_2d
    SUBTYPE OF ( boolean_result );
      SELF\boolean_result.first_operand : boolean_operand_2d;
      SELF\boolean_result.second_operand : boolean_operand_2d;
  END_ENTITY; -- boolean_result_2d (line:8285 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eBOOLEAN_RESULT_2D : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _boolean_result_2d.self
    }
    public let partialEntity: _boolean_result_2d

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_eBOOLEAN_RESULT: eBOOLEAN_RESULT 	// [3]
    public var super_eBOOLEAN_RESULT_2D: eBOOLEAN_RESULT_2D { return self } 	// [4]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eBOOLEAN_RESULT`` )
    public var OPERATOR: nBOOLEAN_OPERATOR {
      get {
        return SDAI.UNWRAP( super_eBOOLEAN_RESULT.partialEntity._operator )
      }
      set(newValue) {
        let partial = super_eBOOLEAN_RESULT.partialEntity
        partial._operator = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SELF( ``eBOOLEAN_RESULT_2D`` )
    public var SECOND_OPERAND: sBOOLEAN_OPERAND_2D {
      get {
        return SDAI.UNWRAP( sBOOLEAN_OPERAND_2D( super_eBOOLEAN_RESULT.partialEntity._second_operand ) )
      }
      set(newValue) {
        let partial = super_eBOOLEAN_RESULT.partialEntity
        partial._second_operand = SDAI.UNWRAP(
          sBOOLEAN_OPERAND(newValue))
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

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SELF( ``eBOOLEAN_RESULT_2D`` )
    public var FIRST_OPERAND: sBOOLEAN_OPERAND_2D {
      get {
        return SDAI.UNWRAP( sBOOLEAN_OPERAND_2D( super_eBOOLEAN_RESULT.partialEntity._first_operand ) )
      }
      set(newValue) {
        let partial = super_eBOOLEAN_RESULT.partialEntity
        partial._first_operand = SDAI.UNWRAP(
          sBOOLEAN_OPERAND(newValue))
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eGEOMETRIC_REPRESENTATION_ITEM`` )
    public var DIM: tDIMENSION_COUNT?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"DIM") {
          return cached.value as! tDIMENSION_COUNT? 
        }
        let origin = super_eGEOMETRIC_REPRESENTATION_ITEM
        let value = tDIMENSION_COUNT(origin.partialEntity._dim__getter(SELF: origin))
        updateCache(derivedAttributeName:"DIM", value:value)
        return value
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_boolean_result_2d.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(eBOOLEAN_RESULT.self) else { return nil }
      self.super_eBOOLEAN_RESULT = super3

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "BOOLEAN_RESULT_2D", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eBOOLEAN_RESULT.self)
      entityDef.add(supertype: eBOOLEAN_RESULT_2D.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "OPERATOR", keyPath: \eBOOLEAN_RESULT_2D.OPERATOR, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SECOND_OPERAND", keyPath: \eBOOLEAN_RESULT_2D.SECOND_OPERAND, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eBOOLEAN_RESULT_2D.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "FIRST_OPERAND", keyPath: \eBOOLEAN_RESULT_2D.FIRST_OPERAND, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DIM", keyPath: \eBOOLEAN_RESULT_2D.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
