/* file: rule_software_definition.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY rule_software_definition
    SUBTYPE OF ( product_definition );
  END_ENTITY; -- rule_software_definition (line:28363 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	product_definition
    ATTR:  id,	TYPE: identifier -- EXPLICIT

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT

    ATTR:  formation,	TYPE: product_definition_formation -- EXPLICIT
      -- observed by
        ENTITY(1): final_solution,	ATTR: specification,	TYPE: SET [1 : ?] OF product_definition
      -- possibly overriden by
          ENTITY: collection_view_definition,	TYPE: collection_version

    ATTR:  frame_of_reference,	TYPE: product_definition_context -- EXPLICIT

    ATTR:  name,	TYPE: label -- DERIVED
      := get_name_value( SELF )


  ENTITY(SELF)	rule_software_definition
    (no local attributes)

  SUB- ENTITY(3)	forward_chaining_rule
    (no local attributes)

  SUB- ENTITY(4)	back_chaining_rule
    (no local attributes)

  SUB- ENTITY(5)	rule_definition
    (no local attributes)

  SUB- ENTITY(6)	rule_set_group
    (no local attributes)

  SUB- ENTITY(7)	rule_set
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _rule_software_definition : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eRULE_SOFTWARE_DEFINITION.self
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
  ENTITY rule_software_definition
    SUBTYPE OF ( product_definition );
  END_ENTITY; -- rule_software_definition (line:28363 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eRULE_SOFTWARE_DEFINITION : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _rule_software_definition.self
    }
    public let partialEntity: _rule_software_definition

    //MARK: SUPERTYPES
    public let super_ePRODUCT_DEFINITION: ePRODUCT_DEFINITION 	// [1]
    public var super_eRULE_SOFTWARE_DEFINITION: eRULE_SOFTWARE_DEFINITION { return self } 	// [2]

    //MARK: SUBTYPES
    public var sub_eFORWARD_CHAINING_RULE: eFORWARD_CHAINING_RULE? {	// [3]
      return self.complexEntity.entityReference(eFORWARD_CHAINING_RULE.self)
    }

    public var sub_eBACK_CHAINING_RULE: eBACK_CHAINING_RULE? {	// [4]
      return self.complexEntity.entityReference(eBACK_CHAINING_RULE.self)
    }

    public var sub_eRULE_DEFINITION: eRULE_DEFINITION? {	// [5]
      return self.complexEntity.entityReference(eRULE_DEFINITION.self)
    }

    public var sub_eRULE_SET_GROUP: eRULE_SET_GROUP? {	// [6]
      return self.complexEntity.entityReference(eRULE_SET_GROUP.self)
    }

    public var sub_eRULE_SET: eRULE_SET? {	// [7]
      return self.complexEntity.entityReference(eRULE_SET.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``ePRODUCT_DEFINITION`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        return super_ePRODUCT_DEFINITION.partialEntity._description
      }
      set(newValue) {
        let partial = super_ePRODUCT_DEFINITION.partialEntity
        partial._description = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``ePRODUCT_DEFINITION`` )
    public var ID: tIDENTIFIER {
      get {
        return SDAI.UNWRAP( super_ePRODUCT_DEFINITION.partialEntity._id )
      }
      set(newValue) {
        let partial = super_ePRODUCT_DEFINITION.partialEntity
        partial._id = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``ePRODUCT_DEFINITION`` )
    public var FRAME_OF_REFERENCE: ePRODUCT_DEFINITION_CONTEXT {
      get {
        return SDAI.UNWRAP( super_ePRODUCT_DEFINITION.partialEntity._frame_of_reference )
      }
      set(newValue) {
        let partial = super_ePRODUCT_DEFINITION.partialEntity
        partial._frame_of_reference = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``ePRODUCT_DEFINITION`` )
    public var NAME: tLABEL?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"NAME") {
          return cached.value as! tLABEL? 
        }
        let origin = super_ePRODUCT_DEFINITION
        let value = tLABEL(origin.partialEntity._name__getter(SELF: origin))
        updateCache(derivedAttributeName:"NAME", value:value)
        return value
      }
    }

    /// __EXPLICIT(OBSERVED)__ attribute
    /// - origin: SUPER( ``ePRODUCT_DEFINITION`` )
    public var FORMATION: ePRODUCT_DEFINITION_FORMATION {
      get {
        return SDAI.UNWRAP( super_ePRODUCT_DEFINITION.partialEntity._formation )
      }
      set(newValue) {
        let partial = super_ePRODUCT_DEFINITION.partialEntity
        partial._formation = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_rule_software_definition.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(ePRODUCT_DEFINITION.self) else { return nil }
      self.super_ePRODUCT_DEFINITION = super1

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "RULE_SOFTWARE_DEFINITION", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: ePRODUCT_DEFINITION.self)
      entityDef.add(supertype: eRULE_SOFTWARE_DEFINITION.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eRULE_SOFTWARE_DEFINITION.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ID", keyPath: \eRULE_SOFTWARE_DEFINITION.ID, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "FRAME_OF_REFERENCE", keyPath: \eRULE_SOFTWARE_DEFINITION.FRAME_OF_REFERENCE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eRULE_SOFTWARE_DEFINITION.NAME, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "FORMATION", keyPath: \eRULE_SOFTWARE_DEFINITION.FORMATION, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
