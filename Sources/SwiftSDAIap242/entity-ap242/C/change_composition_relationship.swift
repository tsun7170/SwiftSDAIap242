/* file: change_composition_relationship.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY change_composition_relationship
    SUBTYPE OF ( group_relationship );
      SELF\group_relationship.relating_group : change_group;
      SELF\group_relationship.related_group : change_element;
    DERIVE
      composition  : change_group := SELF\group_relationship.relating_group;
      element      : change_element := SELF\group_relationship.related_group;
  END_ENTITY; -- change_composition_relationship (line:9135 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	group_relationship
    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT

    ATTR:  relating_group,	TYPE: group -- EXPLICIT
      -- possibly overriden by
      *** ENTITY: change_composition_relationship,	TYPE: change_group
          ENTITY: verification_relationship,	TYPE: verification
          ENTITY: change_element_sequence,	TYPE: change_element

    ATTR:  related_group,	TYPE: group -- EXPLICIT
      -- possibly overriden by
      *** ENTITY: change_composition_relationship,	TYPE: change_element
          ENTITY: verification_relationship,	TYPE: verification
          ENTITY: change_element_sequence,	TYPE: change_element


  ENTITY(SELF)	change_composition_relationship
    REDCR: relating_group,	TYPE: change_group -- EXPLICIT
      -- OVERRIDING ENTITY: group_relationship

    REDCR: related_group,	TYPE: change_element -- EXPLICIT
      -- OVERRIDING ENTITY: group_relationship

    ATTR:  composition,	TYPE: change_group -- DERIVED
      := SELF\group_relationship.relating_group

    ATTR:  element,	TYPE: change_element -- DERIVED
      := SELF\group_relationship.related_group


*/


//MARK: - Partial Entity
  public final class _change_composition_relationship : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eCHANGE_COMPOSITION_RELATIONSHIP.self
    }

    //ATTRIBUTES
    /* override var _relating_group: eCHANGE_GROUP	//EXPLICIT REDEFINITION(eGROUP_RELATIONSHIP) */

    /* override var _related_group: eCHANGE_ELEMENT	//EXPLICIT REDEFINITION(eGROUP_RELATIONSHIP) */

    /// DERIVE ATTRIBUTE
    internal func _composition__getter(SELF: eCHANGE_COMPOSITION_RELATIONSHIP) -> eCHANGE_GROUP?  {

      let _TEMP1 = SELF.GROUP_REF(eGROUP_RELATIONSHIP.self)
      let _TEMP2 = _TEMP1?.RELATING_GROUP
      return eCHANGE_GROUP(/*eGROUP*/_TEMP2)
    }

    /// DERIVE ATTRIBUTE
    internal func _element__getter(SELF: eCHANGE_COMPOSITION_RELATIONSHIP) -> eCHANGE_ELEMENT?  {

      let _TEMP1 = SELF.GROUP_REF(eGROUP_RELATIONSHIP.self)
      let _TEMP2 = _TEMP1?.RELATED_GROUP
      return eCHANGE_ELEMENT(/*eGROUP*/_TEMP2)
    }

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
  ENTITY change_composition_relationship
    SUBTYPE OF ( group_relationship );
      SELF\group_relationship.relating_group : change_group;
      SELF\group_relationship.related_group : change_element;
    DERIVE
      composition  : change_group := SELF\group_relationship.relating_group;
      element      : change_element := SELF\group_relationship.related_group;
  END_ENTITY; -- change_composition_relationship (line:9135 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eCHANGE_COMPOSITION_RELATIONSHIP : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _change_composition_relationship.self
    }
    public let partialEntity: _change_composition_relationship

    //MARK: SUPERTYPES
    public let super_eGROUP_RELATIONSHIP: eGROUP_RELATIONSHIP 	// [1]
    public var super_eCHANGE_COMPOSITION_RELATIONSHIP: eCHANGE_COMPOSITION_RELATIONSHIP { return self } 	// [2]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eGROUP_RELATIONSHIP`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        return super_eGROUP_RELATIONSHIP.partialEntity._description
      }
      set(newValue) {
        let partial = super_eGROUP_RELATIONSHIP.partialEntity
        partial._description = newValue
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SELF( ``eCHANGE_COMPOSITION_RELATIONSHIP`` )
    public var RELATED_GROUP: eCHANGE_ELEMENT {
      get {
        return SDAI.UNWRAP( eCHANGE_ELEMENT( super_eGROUP_RELATIONSHIP.partialEntity._related_group ) )
      }
      set(newValue) {
        let partial = super_eGROUP_RELATIONSHIP.partialEntity
        partial._related_group = SDAI.UNWRAP(
          eGROUP(newValue))
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SELF( ``eCHANGE_COMPOSITION_RELATIONSHIP`` )
    public var ELEMENT: eCHANGE_ELEMENT?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"ELEMENT") {
          return cached.value as! eCHANGE_ELEMENT? 
        }
        let origin = self
        let value = origin.partialEntity._element__getter(SELF: origin)
        updateCache(derivedAttributeName:"ELEMENT", value:value)
        return value
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SELF( ``eCHANGE_COMPOSITION_RELATIONSHIP`` )
    public var RELATING_GROUP: eCHANGE_GROUP {
      get {
        return SDAI.UNWRAP( eCHANGE_GROUP( super_eGROUP_RELATIONSHIP.partialEntity._relating_group ) )
      }
      set(newValue) {
        let partial = super_eGROUP_RELATIONSHIP.partialEntity
        partial._relating_group = SDAI.UNWRAP(
          eGROUP(newValue))
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SELF( ``eCHANGE_COMPOSITION_RELATIONSHIP`` )
    public var COMPOSITION: eCHANGE_GROUP?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"COMPOSITION") {
          return cached.value as! eCHANGE_GROUP? 
        }
        let origin = self
        let value = origin.partialEntity._composition__getter(SELF: origin)
        updateCache(derivedAttributeName:"COMPOSITION", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eGROUP_RELATIONSHIP`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( super_eGROUP_RELATIONSHIP.partialEntity._name )
      }
      set(newValue) {
        let partial = super_eGROUP_RELATIONSHIP.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_change_composition_relationship.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eGROUP_RELATIONSHIP.self) else { return nil }
      self.super_eGROUP_RELATIONSHIP = super1

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "CHANGE_COMPOSITION_RELATIONSHIP", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eGROUP_RELATIONSHIP.self)
      entityDef.add(supertype: eCHANGE_COMPOSITION_RELATIONSHIP.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eCHANGE_COMPOSITION_RELATIONSHIP.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "RELATED_GROUP", keyPath: \eCHANGE_COMPOSITION_RELATIONSHIP.RELATED_GROUP, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ELEMENT", keyPath: \eCHANGE_COMPOSITION_RELATIONSHIP.ELEMENT, 
        kind: .derived, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RELATING_GROUP", keyPath: \eCHANGE_COMPOSITION_RELATIONSHIP.RELATING_GROUP, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "COMPOSITION", keyPath: \eCHANGE_COMPOSITION_RELATIONSHIP.COMPOSITION, 
        kind: .derived, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eCHANGE_COMPOSITION_RELATIONSHIP.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
