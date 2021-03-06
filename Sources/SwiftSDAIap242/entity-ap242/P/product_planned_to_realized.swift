/* file: product_planned_to_realized.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY product_planned_to_realized
    SUBTYPE OF ( product_definition_formation_relationship );
    DERIVE
      planned_product   : product_definition_formation := SELF\product_definition_formation_relationship.
                            relating_product_definition_formation;
      realized_product  : product_definition_formation := SELF\product_definition_formation_relationship.
                            related_product_definition_formation;
  END_ENTITY; -- product_planned_to_realized (line:26382 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	product_definition_formation_relationship
    ATTR:  id,	TYPE: identifier -- EXPLICIT

    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT

    ATTR:  relating_product_definition_formation,	TYPE: product_definition_formation -- EXPLICIT
      -- possibly overriden by
          ENTITY: attachment_slot_planned_to_realized,	TYPE: attachment_slot_as_planned
          ENTITY: collection_version_relationship,	TYPE: collection_version
          ENTITY: attachment_slot_design_to_realized,	TYPE: attachment_slot_design
          ENTITY: attachment_slot_design_to_planned,	TYPE: attachment_slot_design
          ENTITY: collection_version_sequence_relationship,	TYPE: collection_version
          ENTITY: interface_connector_planned_to_realized,	TYPE: interface_connector_as_planned
          ENTITY: interface_connector_design_to_realized,	TYPE: interface_connector_design
          ENTITY: interface_connector_design_to_planned,	TYPE: interface_connector_design

    ATTR:  related_product_definition_formation,	TYPE: product_definition_formation -- EXPLICIT
      -- possibly overriden by
          ENTITY: attachment_slot_planned_to_realized,	TYPE: attachment_slot_as_realized
          ENTITY: collection_version_relationship,	TYPE: collection_version
          ENTITY: attachment_slot_design_to_realized,	TYPE: attachment_slot_as_realized
          ENTITY: attachment_slot_design_to_planned,	TYPE: attachment_slot_as_planned
          ENTITY: collection_version_sequence_relationship,	TYPE: collection_version
          ENTITY: interface_connector_planned_to_realized,	TYPE: interface_connector_as_realized
          ENTITY: interface_connector_design_to_realized,	TYPE: interface_connector_as_realized
          ENTITY: interface_connector_design_to_planned,	TYPE: interface_connector_as_planned


  ENTITY(SELF)	product_planned_to_realized
    ATTR:  planned_product,	TYPE: product_definition_formation -- DERIVED
      := SELF\product_definition_formation_relationship.relating_product_definition_formation

    ATTR:  realized_product,	TYPE: product_definition_formation -- DERIVED
      := SELF\product_definition_formation_relationship.related_product_definition_formation


*/


//MARK: - Partial Entity
  public final class _product_planned_to_realized : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      ePRODUCT_PLANNED_TO_REALIZED.self
    }

    //ATTRIBUTES
    /// DERIVE ATTRIBUTE
    internal func _planned_product__getter(SELF: ePRODUCT_PLANNED_TO_REALIZED) -> 
      ePRODUCT_DEFINITION_FORMATION?  {

      let _TEMP1 = SELF.GROUP_REF(ePRODUCT_DEFINITION_FORMATION_RELATIONSHIP.self)
      let _TEMP2 = _TEMP1?.RELATING_PRODUCT_DEFINITION_FORMATION
      return _TEMP2
    }

    /// DERIVE ATTRIBUTE
    internal func _realized_product__getter(SELF: ePRODUCT_PLANNED_TO_REALIZED) -> 
      ePRODUCT_DEFINITION_FORMATION?  {

      let _TEMP1 = SELF.GROUP_REF(ePRODUCT_DEFINITION_FORMATION_RELATIONSHIP.self)
      let _TEMP2 = _TEMP1?.RELATED_PRODUCT_DEFINITION_FORMATION
      return _TEMP2
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
  ENTITY product_planned_to_realized
    SUBTYPE OF ( product_definition_formation_relationship );
    DERIVE
      planned_product   : product_definition_formation := SELF\product_definition_formation_relationship.
                            relating_product_definition_formation;
      realized_product  : product_definition_formation := SELF\product_definition_formation_relationship.
                            related_product_definition_formation;
  END_ENTITY; -- product_planned_to_realized (line:26382 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class ePRODUCT_PLANNED_TO_REALIZED : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _product_planned_to_realized.self
    }
    public let partialEntity: _product_planned_to_realized

    //MARK: SUPERTYPES
    public let super_ePRODUCT_DEFINITION_FORMATION_RELATIONSHIP: ePRODUCT_DEFINITION_FORMATION_RELATIONSHIP 	// [1]
    public var super_ePRODUCT_PLANNED_TO_REALIZED: ePRODUCT_PLANNED_TO_REALIZED { return self } 	// [2]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``ePRODUCT_DEFINITION_FORMATION_RELATIONSHIP`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        return super_ePRODUCT_DEFINITION_FORMATION_RELATIONSHIP.partialEntity._description
      }
      set(newValue) {
        let partial = super_ePRODUCT_DEFINITION_FORMATION_RELATIONSHIP.partialEntity
        partial._description = newValue
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SELF( ``ePRODUCT_PLANNED_TO_REALIZED`` )
    public var REALIZED_PRODUCT: ePRODUCT_DEFINITION_FORMATION?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"REALIZED_PRODUCT") {
          return cached.value as! ePRODUCT_DEFINITION_FORMATION? 
        }
        let origin = self
        let value = origin.partialEntity._realized_product__getter(SELF: origin)
        updateCache(derivedAttributeName:"REALIZED_PRODUCT", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``ePRODUCT_DEFINITION_FORMATION_RELATIONSHIP`` )
    public var RELATED_PRODUCT_DEFINITION_FORMATION: ePRODUCT_DEFINITION_FORMATION {
      get {
        return SDAI.UNWRAP( super_ePRODUCT_DEFINITION_FORMATION_RELATIONSHIP.partialEntity
          ._related_product_definition_formation )
      }
      set(newValue) {
        let partial = super_ePRODUCT_DEFINITION_FORMATION_RELATIONSHIP.partialEntity
        partial._related_product_definition_formation = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``ePRODUCT_DEFINITION_FORMATION_RELATIONSHIP`` )
    public var RELATING_PRODUCT_DEFINITION_FORMATION: ePRODUCT_DEFINITION_FORMATION {
      get {
        return SDAI.UNWRAP( super_ePRODUCT_DEFINITION_FORMATION_RELATIONSHIP.partialEntity
          ._relating_product_definition_formation )
      }
      set(newValue) {
        let partial = super_ePRODUCT_DEFINITION_FORMATION_RELATIONSHIP.partialEntity
        partial._relating_product_definition_formation = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SELF( ``ePRODUCT_PLANNED_TO_REALIZED`` )
    public var PLANNED_PRODUCT: ePRODUCT_DEFINITION_FORMATION?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"PLANNED_PRODUCT") {
          return cached.value as! ePRODUCT_DEFINITION_FORMATION? 
        }
        let origin = self
        let value = origin.partialEntity._planned_product__getter(SELF: origin)
        updateCache(derivedAttributeName:"PLANNED_PRODUCT", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``ePRODUCT_DEFINITION_FORMATION_RELATIONSHIP`` )
    public var ID: tIDENTIFIER {
      get {
        return SDAI.UNWRAP( super_ePRODUCT_DEFINITION_FORMATION_RELATIONSHIP.partialEntity._id )
      }
      set(newValue) {
        let partial = super_ePRODUCT_DEFINITION_FORMATION_RELATIONSHIP.partialEntity
        partial._id = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``ePRODUCT_DEFINITION_FORMATION_RELATIONSHIP`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( super_ePRODUCT_DEFINITION_FORMATION_RELATIONSHIP.partialEntity._name )
      }
      set(newValue) {
        let partial = super_ePRODUCT_DEFINITION_FORMATION_RELATIONSHIP.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_product_planned_to_realized.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(ePRODUCT_DEFINITION_FORMATION_RELATIONSHIP.self) else { return nil }
      self.super_ePRODUCT_DEFINITION_FORMATION_RELATIONSHIP = super1

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "PRODUCT_PLANNED_TO_REALIZED", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: ePRODUCT_DEFINITION_FORMATION_RELATIONSHIP.self)
      entityDef.add(supertype: ePRODUCT_PLANNED_TO_REALIZED.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \ePRODUCT_PLANNED_TO_REALIZED.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "REALIZED_PRODUCT", keyPath: \ePRODUCT_PLANNED_TO_REALIZED.REALIZED_PRODUCT, 
        kind: .derived, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RELATED_PRODUCT_DEFINITION_FORMATION", keyPath: \ePRODUCT_PLANNED_TO_REALIZED.RELATED_PRODUCT_DEFINITION_FORMATION, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RELATING_PRODUCT_DEFINITION_FORMATION", keyPath: \ePRODUCT_PLANNED_TO_REALIZED.RELATING_PRODUCT_DEFINITION_FORMATION, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "PLANNED_PRODUCT", keyPath: \ePRODUCT_PLANNED_TO_REALIZED.PLANNED_PRODUCT, 
        kind: .derived, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ID", keyPath: \ePRODUCT_PLANNED_TO_REALIZED.ID, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \ePRODUCT_PLANNED_TO_REALIZED.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
