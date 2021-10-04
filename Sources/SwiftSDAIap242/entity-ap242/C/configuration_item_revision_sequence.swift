/* file: configuration_item_revision_sequence.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY configuration_item_revision_sequence
    SUBTYPE OF ( configuration_item_relationship );
  END_ENTITY; -- configuration_item_revision_sequence (line:10297 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	configuration_item_relationship
    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT

    ATTR:  relating_configuration_item,	TYPE: configuration_item -- EXPLICIT

    ATTR:  related_configuration_item,	TYPE: configuration_item -- EXPLICIT


  ENTITY(SELF)	configuration_item_revision_sequence
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _configuration_item_revision_sequence : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eCONFIGURATION_ITEM_REVISION_SEQUENCE.self
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
  ENTITY configuration_item_revision_sequence
    SUBTYPE OF ( configuration_item_relationship );
  END_ENTITY; -- configuration_item_revision_sequence (line:10297 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eCONFIGURATION_ITEM_REVISION_SEQUENCE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _configuration_item_revision_sequence.self
    }
    public let partialEntity: _configuration_item_revision_sequence

    //MARK: SUPERTYPES
    public let super_eCONFIGURATION_ITEM_RELATIONSHIP: eCONFIGURATION_ITEM_RELATIONSHIP 	// [1]
    public var super_eCONFIGURATION_ITEM_REVISION_SEQUENCE: eCONFIGURATION_ITEM_REVISION_SEQUENCE { return self } 	// [2]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eCONFIGURATION_ITEM_RELATIONSHIP`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        return super_eCONFIGURATION_ITEM_RELATIONSHIP.partialEntity._description
      }
      set(newValue) {
        let partial = super_eCONFIGURATION_ITEM_RELATIONSHIP.partialEntity
        partial._description = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eCONFIGURATION_ITEM_RELATIONSHIP`` )
    public var RELATING_CONFIGURATION_ITEM: eCONFIGURATION_ITEM {
      get {
        return SDAI.UNWRAP( super_eCONFIGURATION_ITEM_RELATIONSHIP.partialEntity._relating_configuration_item )
      }
      set(newValue) {
        let partial = super_eCONFIGURATION_ITEM_RELATIONSHIP.partialEntity
        partial._relating_configuration_item = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eCONFIGURATION_ITEM_RELATIONSHIP`` )
    public var RELATED_CONFIGURATION_ITEM: eCONFIGURATION_ITEM {
      get {
        return SDAI.UNWRAP( super_eCONFIGURATION_ITEM_RELATIONSHIP.partialEntity._related_configuration_item )
      }
      set(newValue) {
        let partial = super_eCONFIGURATION_ITEM_RELATIONSHIP.partialEntity
        partial._related_configuration_item = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eCONFIGURATION_ITEM_RELATIONSHIP`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( super_eCONFIGURATION_ITEM_RELATIONSHIP.partialEntity._name )
      }
      set(newValue) {
        let partial = super_eCONFIGURATION_ITEM_RELATIONSHIP.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_configuration_item_revision_sequence.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eCONFIGURATION_ITEM_RELATIONSHIP.self) else { return nil }
      self.super_eCONFIGURATION_ITEM_RELATIONSHIP = super1

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "CONFIGURATION_ITEM_REVISION_SEQUENCE", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eCONFIGURATION_ITEM_RELATIONSHIP.self)
      entityDef.add(supertype: eCONFIGURATION_ITEM_REVISION_SEQUENCE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eCONFIGURATION_ITEM_REVISION_SEQUENCE.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "RELATING_CONFIGURATION_ITEM", keyPath: \eCONFIGURATION_ITEM_REVISION_SEQUENCE.RELATING_CONFIGURATION_ITEM, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RELATED_CONFIGURATION_ITEM", keyPath: \eCONFIGURATION_ITEM_REVISION_SEQUENCE.RELATED_CONFIGURATION_ITEM, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eCONFIGURATION_ITEM_REVISION_SEQUENCE.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
