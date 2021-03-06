/* file: collection_version.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY collection_version
    SUBTYPE OF ( product_definition_formation );
      SELF\product_definition_formation.of_product : collection;
    DERIVE
      of_collection  : collection := SELF\product_definition_formation.of_product;
  END_ENTITY; -- collection_version (line:9687 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	product_definition_formation
    ATTR:  id,	TYPE: identifier -- EXPLICIT

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT

    ATTR:  of_product,	TYPE: product -- EXPLICIT
      -- possibly overriden by
      *** ENTITY: collection_version,	TYPE: collection


  ENTITY(SELF)	collection_version
    REDCR: of_product,	TYPE: collection -- EXPLICIT
      -- OVERRIDING ENTITY: product_definition_formation

    ATTR:  of_collection,	TYPE: collection -- DERIVED
      := SELF\product_definition_formation.of_product


*/


//MARK: - Partial Entity
  public final class _collection_version : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eCOLLECTION_VERSION.self
    }

    //ATTRIBUTES
    /* override var _of_product: eCOLLECTION	//EXPLICIT REDEFINITION(ePRODUCT_DEFINITION_FORMATION) */

    /// DERIVE ATTRIBUTE
    internal func _of_collection__getter(SELF: eCOLLECTION_VERSION) -> eCOLLECTION?  {

      let _TEMP1 = SELF.GROUP_REF(ePRODUCT_DEFINITION_FORMATION.self)
      let _TEMP2 = _TEMP1?.OF_PRODUCT
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
  ENTITY collection_version
    SUBTYPE OF ( product_definition_formation );
      SELF\product_definition_formation.of_product : collection;
    DERIVE
      of_collection  : collection := SELF\product_definition_formation.of_product;
  END_ENTITY; -- collection_version (line:9687 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eCOLLECTION_VERSION : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _collection_version.self
    }
    public let partialEntity: _collection_version

    //MARK: SUPERTYPES
    public let super_ePRODUCT_DEFINITION_FORMATION: ePRODUCT_DEFINITION_FORMATION 	// [1]
    public var super_eCOLLECTION_VERSION: eCOLLECTION_VERSION { return self } 	// [2]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``ePRODUCT_DEFINITION_FORMATION`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        return super_ePRODUCT_DEFINITION_FORMATION.partialEntity._description
      }
      set(newValue) {
        let partial = super_ePRODUCT_DEFINITION_FORMATION.partialEntity
        partial._description = newValue
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SELF( ``eCOLLECTION_VERSION`` )
    public var OF_COLLECTION: eCOLLECTION?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"OF_COLLECTION") {
          return cached.value as! eCOLLECTION? 
        }
        let origin = self
        let value = origin.partialEntity._of_collection__getter(SELF: origin)
        updateCache(derivedAttributeName:"OF_COLLECTION", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``ePRODUCT_DEFINITION_FORMATION`` )
    public var ID: tIDENTIFIER {
      get {
        return SDAI.UNWRAP( super_ePRODUCT_DEFINITION_FORMATION.partialEntity._id )
      }
      set(newValue) {
        let partial = super_ePRODUCT_DEFINITION_FORMATION.partialEntity
        partial._id = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SELF( ``eCOLLECTION_VERSION`` )
    public var OF_PRODUCT: eCOLLECTION {
      get {
        return SDAI.UNWRAP( eCOLLECTION( super_ePRODUCT_DEFINITION_FORMATION.partialEntity._of_product ) )
      }
      set(newValue) {
        let partial = super_ePRODUCT_DEFINITION_FORMATION.partialEntity
        partial._of_product = SDAI.UNWRAP(
          ePRODUCT(newValue))
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_collection_version.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(ePRODUCT_DEFINITION_FORMATION.self) else { return nil }
      self.super_ePRODUCT_DEFINITION_FORMATION = super1

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "COLLECTION_VERSION", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: ePRODUCT_DEFINITION_FORMATION.self)
      entityDef.add(supertype: eCOLLECTION_VERSION.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eCOLLECTION_VERSION.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "OF_COLLECTION", keyPath: \eCOLLECTION_VERSION.OF_COLLECTION, 
        kind: .derived, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ID", keyPath: \eCOLLECTION_VERSION.ID, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "OF_PRODUCT", keyPath: \eCOLLECTION_VERSION.OF_PRODUCT, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
