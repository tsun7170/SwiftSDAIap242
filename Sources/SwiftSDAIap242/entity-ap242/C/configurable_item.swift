/* file: configurable_item.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  ENTITY configurable_item
    SUBTYPE OF ( configuration_item );
      item_concept_feature  : SET [1 : ?] OF product_concept_feature_association;
  END_ENTITY; -- configurable_item (line:10249 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	configuration_item
    ATTR:  id,	TYPE: identifier -- EXPLICIT

    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT

    ATTR:  item_concept,	TYPE: product_concept -- EXPLICIT
      -- possibly overriden by
          ENTITY: product_identification,	TYPE: product_class

    ATTR:  purpose,	TYPE: OPTIONAL label -- EXPLICIT


  ENTITY(SELF)	configurable_item
    ATTR:  item_concept_feature,	TYPE: SET [1 : ?] OF product_concept_feature_association -- EXPLICIT


  SUB- ENTITY(3)	product_specification
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _configurable_item : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eCONFIGURABLE_ITEM.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _item_concept_feature: SDAI.SET<ePRODUCT_CONCEPT_FEATURE_ASSOCIATION>/*[1:nil]*/  // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._item_concept_feature.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._item_concept_feature.value.isValueEqualOptionally(to: rhs._item_concept_feature.value, visited: &comppairs)	{
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
      if let comp = self._item_concept_feature.value.isValueEqualOptionally(to: rhs._item_concept_feature.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(ITEM_CONCEPT_FEATURE: SDAI.SET<ePRODUCT_CONCEPT_FEATURE_ASSOCIATION>/*[1:nil]*/ ) {
      self._item_concept_feature = ITEM_CONCEPT_FEATURE
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: SDAI.SET<
        ePRODUCT_CONCEPT_FEATURE_ASSOCIATION>.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( ITEM_CONCEPT_FEATURE: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY configurable_item
    SUBTYPE OF ( configuration_item );
      item_concept_feature  : SET [1 : ?] OF product_concept_feature_association;
  END_ENTITY; -- configurable_item (line:10249 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eCONFIGURABLE_ITEM : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _configurable_item.self
    }
    public let partialEntity: _configurable_item

    //MARK: SUPERTYPES
    public let super_eCONFIGURATION_ITEM: eCONFIGURATION_ITEM 	// [1]
    public var super_eCONFIGURABLE_ITEM: eCONFIGURABLE_ITEM { return self } 	// [2]

    //MARK: SUBTYPES
    public var sub_ePRODUCT_SPECIFICATION: ePRODUCT_SPECIFICATION? {	// [3]
      return self.complexEntity.entityReference(ePRODUCT_SPECIFICATION.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eCONFIGURATION_ITEM`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        return super_eCONFIGURATION_ITEM.partialEntity._description
      }
      set(newValue) {
        let partial = super_eCONFIGURATION_ITEM.partialEntity
        partial._description = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eCONFIGURATION_ITEM`` )
    public var PURPOSE: tLABEL?  {
      get {
        return super_eCONFIGURATION_ITEM.partialEntity._purpose
      }
      set(newValue) {
        let partial = super_eCONFIGURATION_ITEM.partialEntity
        partial._purpose = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eCONFIGURABLE_ITEM`` )
    public var ITEM_CONCEPT_FEATURE: SDAI.SET<ePRODUCT_CONCEPT_FEATURE_ASSOCIATION>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._item_concept_feature )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._item_concept_feature = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eCONFIGURATION_ITEM`` )
    public var ITEM_CONCEPT: ePRODUCT_CONCEPT {
      get {
        return SDAI.UNWRAP( super_eCONFIGURATION_ITEM.partialEntity._item_concept )
      }
      set(newValue) {
        let partial = super_eCONFIGURATION_ITEM.partialEntity
        partial._item_concept = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eCONFIGURATION_ITEM`` )
    public var ID: tIDENTIFIER {
      get {
        return SDAI.UNWRAP( super_eCONFIGURATION_ITEM.partialEntity._id )
      }
      set(newValue) {
        let partial = super_eCONFIGURATION_ITEM.partialEntity
        partial._id = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eCONFIGURATION_ITEM`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( super_eCONFIGURATION_ITEM.partialEntity._name )
      }
      set(newValue) {
        let partial = super_eCONFIGURATION_ITEM.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_configurable_item.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eCONFIGURATION_ITEM.self) else { return nil }
      self.super_eCONFIGURATION_ITEM = super1

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "CONFIGURABLE_ITEM", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eCONFIGURATION_ITEM.self)
      entityDef.add(supertype: eCONFIGURABLE_ITEM.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eCONFIGURABLE_ITEM.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "PURPOSE", keyPath: \eCONFIGURABLE_ITEM.PURPOSE, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ITEM_CONCEPT_FEATURE", keyPath: \eCONFIGURABLE_ITEM.ITEM_CONCEPT_FEATURE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ITEM_CONCEPT", keyPath: \eCONFIGURABLE_ITEM.ITEM_CONCEPT, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ID", keyPath: \eCONFIGURABLE_ITEM.ID, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eCONFIGURABLE_ITEM.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
