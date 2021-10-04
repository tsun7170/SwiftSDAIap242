/* file: verification_relationship.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY verification_relationship
    SUBTYPE OF ( group_relationship );
      SELF\group_relationship.relating_group : verification;
      SELF\group_relationship.related_group : verification;
  END_ENTITY; -- verification_relationship (line:33676 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	group_relationship
    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT

    ATTR:  relating_group,	TYPE: group -- EXPLICIT
      -- possibly overriden by
          ENTITY: change_composition_relationship,	TYPE: change_group
      *** ENTITY: verification_relationship,	TYPE: verification
          ENTITY: change_element_sequence,	TYPE: change_element

    ATTR:  related_group,	TYPE: group -- EXPLICIT
      -- possibly overriden by
          ENTITY: change_composition_relationship,	TYPE: change_element
      *** ENTITY: verification_relationship,	TYPE: verification
          ENTITY: change_element_sequence,	TYPE: change_element


  ENTITY(SELF)	verification_relationship
    REDCR: relating_group,	TYPE: verification -- EXPLICIT
      -- OVERRIDING ENTITY: group_relationship

    REDCR: related_group,	TYPE: verification -- EXPLICIT
      -- OVERRIDING ENTITY: group_relationship


*/


//MARK: - Partial Entity
  public final class _verification_relationship : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eVERIFICATION_RELATIONSHIP.self
    }

    //ATTRIBUTES
    /* override var _relating_group: eVERIFICATION	//EXPLICIT REDEFINITION(eGROUP_RELATIONSHIP) */

    /* override var _related_group: eVERIFICATION	//EXPLICIT REDEFINITION(eGROUP_RELATIONSHIP) */

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sDATE_AND_TIME_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sMULTI_LANGUAGE_ATTRIBUTE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sIDENTIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sACTION_ITEMS.typeName)) // -> sIDENTIFICATION_ITEM
      members.insert(SDAI.STRING(sCHANGE_MANAGEMENT_OBJECT.typeName)) // -> sACTION_ITEMS
      members.insert(SDAI.STRING(sIR_USAGE_ITEM.typeName)) // -> sIDENTIFICATION_ITEM
      members.insert(SDAI.STRING(sTIME_INTERVAL_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sDATE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sANALYSED_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sDESCRIPTION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sDOCUMENT_REFERENCE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sGROUPABLE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sEFFECTIVITY_ITEM.typeName)) // -> Self
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
  ENTITY verification_relationship
    SUBTYPE OF ( group_relationship );
      SELF\group_relationship.relating_group : verification;
      SELF\group_relationship.related_group : verification;
  END_ENTITY; -- verification_relationship (line:33676 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eVERIFICATION_RELATIONSHIP : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _verification_relationship.self
    }
    public let partialEntity: _verification_relationship

    //MARK: SUPERTYPES
    public let super_eGROUP_RELATIONSHIP: eGROUP_RELATIONSHIP 	// [1]
    public var super_eVERIFICATION_RELATIONSHIP: eVERIFICATION_RELATIONSHIP { return self } 	// [2]

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
    /// - origin: SELF( ``eVERIFICATION_RELATIONSHIP`` )
    public var RELATED_GROUP: eVERIFICATION {
      get {
        return SDAI.UNWRAP( eVERIFICATION( super_eGROUP_RELATIONSHIP.partialEntity._related_group ) )
      }
      set(newValue) {
        let partial = super_eGROUP_RELATIONSHIP.partialEntity
        partial._related_group = SDAI.UNWRAP(
          eGROUP(newValue))
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SELF( ``eVERIFICATION_RELATIONSHIP`` )
    public var RELATING_GROUP: eVERIFICATION {
      get {
        return SDAI.UNWRAP( eVERIFICATION( super_eGROUP_RELATIONSHIP.partialEntity._relating_group ) )
      }
      set(newValue) {
        let partial = super_eGROUP_RELATIONSHIP.partialEntity
        partial._relating_group = SDAI.UNWRAP(
          eGROUP(newValue))
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
      guard let partial = complexEntity?.partialEntityInstance(_verification_relationship.self) else { return nil }
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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "VERIFICATION_RELATIONSHIP", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eGROUP_RELATIONSHIP.self)
      entityDef.add(supertype: eVERIFICATION_RELATIONSHIP.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eVERIFICATION_RELATIONSHIP.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "RELATED_GROUP", keyPath: \eVERIFICATION_RELATIONSHIP.RELATED_GROUP, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RELATING_GROUP", keyPath: \eVERIFICATION_RELATIONSHIP.RELATING_GROUP, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eVERIFICATION_RELATIONSHIP.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}