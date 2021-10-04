/* file: collection_relationship.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY collection_relationship
    SUBTYPE OF ( product_relationship );
      SELF\product_relationship.relating_product : collection;
      SELF\product_relationship.related_product : collection;
    DERIVE
      related_collection   : collection := SELF\product_relationship.related_product;
      relating_collection  : collection := SELF\product_relationship.relating_product;
  END_ENTITY; -- collection_relationship (line:9663 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	product_relationship
    ATTR:  id,	TYPE: identifier -- EXPLICIT

    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT

    ATTR:  relating_product,	TYPE: product -- EXPLICIT
      -- possibly overriden by
          ENTITY: message_relationship,	TYPE: structured_message
      *** ENTITY: collection_relationship,	TYPE: collection

    ATTR:  related_product,	TYPE: product -- EXPLICIT
      -- possibly overriden by
          ENTITY: message_relationship,	TYPE: structured_message
      *** ENTITY: collection_relationship,	TYPE: collection


  ENTITY(SELF)	collection_relationship
    REDCR: relating_product,	TYPE: collection -- EXPLICIT
      -- OVERRIDING ENTITY: product_relationship

    REDCR: related_product,	TYPE: collection -- EXPLICIT
      -- OVERRIDING ENTITY: product_relationship

    ATTR:  related_collection,	TYPE: collection -- DERIVED
      := SELF\product_relationship.related_product

    ATTR:  relating_collection,	TYPE: collection -- DERIVED
      := SELF\product_relationship.relating_product


*/


//MARK: - Partial Entity
  public final class _collection_relationship : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eCOLLECTION_RELATIONSHIP.self
    }

    //ATTRIBUTES
    /* override var _relating_product: eCOLLECTION	//EXPLICIT REDEFINITION(ePRODUCT_RELATIONSHIP) */

    /* override var _related_product: eCOLLECTION	//EXPLICIT REDEFINITION(ePRODUCT_RELATIONSHIP) */

    /// DERIVE ATTRIBUTE
    internal func _related_collection__getter(SELF: eCOLLECTION_RELATIONSHIP) -> eCOLLECTION?  {

      let _TEMP1 = SELF.GROUP_REF(ePRODUCT_RELATIONSHIP.self)
      let _TEMP2 = _TEMP1?.RELATED_PRODUCT
      return eCOLLECTION(/*ePRODUCT*/_TEMP2)
    }

    /// DERIVE ATTRIBUTE
    internal func _relating_collection__getter(SELF: eCOLLECTION_RELATIONSHIP) -> eCOLLECTION?  {

      let _TEMP1 = SELF.GROUP_REF(ePRODUCT_RELATIONSHIP.self)
      let _TEMP2 = _TEMP1?.RELATING_PRODUCT
      return eCOLLECTION(/*ePRODUCT*/_TEMP2)
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
  ENTITY collection_relationship
    SUBTYPE OF ( product_relationship );
      SELF\product_relationship.relating_product : collection;
      SELF\product_relationship.related_product : collection;
    DERIVE
      related_collection   : collection := SELF\product_relationship.related_product;
      relating_collection  : collection := SELF\product_relationship.relating_product;
  END_ENTITY; -- collection_relationship (line:9663 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eCOLLECTION_RELATIONSHIP : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _collection_relationship.self
    }
    public let partialEntity: _collection_relationship

    //MARK: SUPERTYPES
    public let super_ePRODUCT_RELATIONSHIP: ePRODUCT_RELATIONSHIP 	// [1]
    public var super_eCOLLECTION_RELATIONSHIP: eCOLLECTION_RELATIONSHIP { return self } 	// [2]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``ePRODUCT_RELATIONSHIP`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        return super_ePRODUCT_RELATIONSHIP.partialEntity._description
      }
      set(newValue) {
        let partial = super_ePRODUCT_RELATIONSHIP.partialEntity
        partial._description = newValue
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SELF( ``eCOLLECTION_RELATIONSHIP`` )
    public var RELATED_COLLECTION: eCOLLECTION?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"RELATED_COLLECTION") {
          return cached.value as! eCOLLECTION? 
        }
        let origin = self
        let value = origin.partialEntity._related_collection__getter(SELF: origin)
        updateCache(derivedAttributeName:"RELATED_COLLECTION", value:value)
        return value
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SELF( ``eCOLLECTION_RELATIONSHIP`` )
    public var RELATED_PRODUCT: eCOLLECTION {
      get {
        return SDAI.UNWRAP( eCOLLECTION( super_ePRODUCT_RELATIONSHIP.partialEntity._related_product ) )
      }
      set(newValue) {
        let partial = super_ePRODUCT_RELATIONSHIP.partialEntity
        partial._related_product = SDAI.UNWRAP(
          ePRODUCT(newValue))
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SELF( ``eCOLLECTION_RELATIONSHIP`` )
    public var RELATING_COLLECTION: eCOLLECTION?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"RELATING_COLLECTION") {
          return cached.value as! eCOLLECTION? 
        }
        let origin = self
        let value = origin.partialEntity._relating_collection__getter(SELF: origin)
        updateCache(derivedAttributeName:"RELATING_COLLECTION", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``ePRODUCT_RELATIONSHIP`` )
    public var ID: tIDENTIFIER {
      get {
        return SDAI.UNWRAP( super_ePRODUCT_RELATIONSHIP.partialEntity._id )
      }
      set(newValue) {
        let partial = super_ePRODUCT_RELATIONSHIP.partialEntity
        partial._id = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SELF( ``eCOLLECTION_RELATIONSHIP`` )
    public var RELATING_PRODUCT: eCOLLECTION {
      get {
        return SDAI.UNWRAP( eCOLLECTION( super_ePRODUCT_RELATIONSHIP.partialEntity._relating_product ) )
      }
      set(newValue) {
        let partial = super_ePRODUCT_RELATIONSHIP.partialEntity
        partial._relating_product = SDAI.UNWRAP(
          ePRODUCT(newValue))
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``ePRODUCT_RELATIONSHIP`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( super_ePRODUCT_RELATIONSHIP.partialEntity._name )
      }
      set(newValue) {
        let partial = super_ePRODUCT_RELATIONSHIP.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_collection_relationship.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(ePRODUCT_RELATIONSHIP.self) else { return nil }
      self.super_ePRODUCT_RELATIONSHIP = super1

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "COLLECTION_RELATIONSHIP", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: ePRODUCT_RELATIONSHIP.self)
      entityDef.add(supertype: eCOLLECTION_RELATIONSHIP.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eCOLLECTION_RELATIONSHIP.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "RELATED_COLLECTION", keyPath: \eCOLLECTION_RELATIONSHIP.RELATED_COLLECTION, 
        kind: .derived, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RELATED_PRODUCT", keyPath: \eCOLLECTION_RELATIONSHIP.RELATED_PRODUCT, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RELATING_COLLECTION", keyPath: \eCOLLECTION_RELATIONSHIP.RELATING_COLLECTION, 
        kind: .derived, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ID", keyPath: \eCOLLECTION_RELATIONSHIP.ID, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "RELATING_PRODUCT", keyPath: \eCOLLECTION_RELATIONSHIP.RELATING_PRODUCT, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eCOLLECTION_RELATIONSHIP.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}