/* file: interface_connector_planned_to_realized.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY interface_connector_planned_to_realized
    SUBTYPE OF ( product_definition_formation_relationship );
      SELF\product_definition_formation_relationship.relating_product_definition_formation :
                                          interface_connector_as_planned;
      SELF\product_definition_formation_relationship.related_product_definition_formation :
                                          interface_connector_as_realized;
    WHERE
      wr1: ( SELF.relating_product_definition_formation.of_product :=: SELF.
               related_product_definition_formation.of_product );
  END_ENTITY; -- interface_connector_planned_to_realized (line:18303 file:ap242ed2_mim_lf_v1.101.TY.exp)

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
      *** ENTITY: interface_connector_planned_to_realized,	TYPE: interface_connector_as_planned
          ENTITY: interface_connector_design_to_realized,	TYPE: interface_connector_design
          ENTITY: interface_connector_design_to_planned,	TYPE: interface_connector_design

    ATTR:  related_product_definition_formation,	TYPE: product_definition_formation -- EXPLICIT
      -- possibly overriden by
          ENTITY: attachment_slot_planned_to_realized,	TYPE: attachment_slot_as_realized
          ENTITY: collection_version_relationship,	TYPE: collection_version
          ENTITY: attachment_slot_design_to_realized,	TYPE: attachment_slot_as_realized
          ENTITY: attachment_slot_design_to_planned,	TYPE: attachment_slot_as_planned
          ENTITY: collection_version_sequence_relationship,	TYPE: collection_version
      *** ENTITY: interface_connector_planned_to_realized,	TYPE: interface_connector_as_realized
          ENTITY: interface_connector_design_to_realized,	TYPE: interface_connector_as_realized
          ENTITY: interface_connector_design_to_planned,	TYPE: interface_connector_as_planned


  ENTITY(SELF)	interface_connector_planned_to_realized
    REDCR: relating_product_definition_formation,	TYPE: interface_connector_as_planned -- EXPLICIT
      -- OVERRIDING ENTITY: product_definition_formation_relationship

    REDCR: related_product_definition_formation,	TYPE: interface_connector_as_realized -- EXPLICIT
      -- OVERRIDING ENTITY: product_definition_formation_relationship


*/


//MARK: - Partial Entity
  public final class _interface_connector_planned_to_realized : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eINTERFACE_CONNECTOR_PLANNED_TO_REALIZED.self
    }

    //ATTRIBUTES
    /* override var _relating_product_definition_formation: eINTERFACE_CONNECTOR_AS_PLANNED	//EXPLICIT REDEFINITION(ePRODUCT_DEFINITION_FORMATION_RELATIONSHIP) */

    /* override var _related_product_definition_formation: eINTERFACE_CONNECTOR_AS_REALIZED	//EXPLICIT REDEFINITION(ePRODUCT_DEFINITION_FORMATION_RELATIONSHIP) */

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sDATE_AND_TIME_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sCLASSIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sACTION_ITEMS.typeName)) // -> sCLASSIFICATION_ITEM
      members.insert(SDAI.STRING(sCHANGE_MANAGEMENT_OBJECT.typeName)) // -> sACTION_ITEMS
      members.insert(SDAI.STRING(sIR_USAGE_ITEM.typeName)) // -> sCLASSIFICATION_ITEM
      members.insert(SDAI.STRING(sDATE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sAPPROVAL_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sDOCUMENT_REFERENCE_ITEM.typeName)) // -> Self
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


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eINTERFACE_CONNECTOR_PLANNED_TO_REALIZED?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.RELATING_PRODUCT_DEFINITION_FORMATION
      let _TEMP2 = _TEMP1.OF_PRODUCT
      let _TEMP3 = SELF.RELATED_PRODUCT_DEFINITION_FORMATION
      let _TEMP4 = _TEMP3.OF_PRODUCT
      let _TEMP5 = SDAI.FORCE_OPTIONAL(_TEMP2) .===. SDAI.FORCE_OPTIONAL(_TEMP4)
      return _TEMP5
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
  ENTITY interface_connector_planned_to_realized
    SUBTYPE OF ( product_definition_formation_relationship );
      SELF\product_definition_formation_relationship.relating_product_definition_formation :
                                          interface_connector_as_planned;
      SELF\product_definition_formation_relationship.related_product_definition_formation :
                                          interface_connector_as_realized;
    WHERE
      wr1: ( SELF.relating_product_definition_formation.of_product :=: SELF.
               related_product_definition_formation.of_product );
  END_ENTITY; -- interface_connector_planned_to_realized (line:18303 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eINTERFACE_CONNECTOR_PLANNED_TO_REALIZED : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _interface_connector_planned_to_realized.self
    }
    public let partialEntity: _interface_connector_planned_to_realized

    //MARK: SUPERTYPES
    public let super_ePRODUCT_DEFINITION_FORMATION_RELATIONSHIP: ePRODUCT_DEFINITION_FORMATION_RELATIONSHIP 	// [1]
    public var super_eINTERFACE_CONNECTOR_PLANNED_TO_REALIZED: eINTERFACE_CONNECTOR_PLANNED_TO_REALIZED { return self } 	// [2]

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

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SELF( ``eINTERFACE_CONNECTOR_PLANNED_TO_REALIZED`` )
    public var RELATED_PRODUCT_DEFINITION_FORMATION: eINTERFACE_CONNECTOR_AS_REALIZED {
      get {
        return SDAI.UNWRAP( eINTERFACE_CONNECTOR_AS_REALIZED( super_ePRODUCT_DEFINITION_FORMATION_RELATIONSHIP
          .partialEntity._related_product_definition_formation ) )
      }
      set(newValue) {
        let partial = super_ePRODUCT_DEFINITION_FORMATION_RELATIONSHIP.partialEntity
        partial._related_product_definition_formation = SDAI.UNWRAP(
          ePRODUCT_DEFINITION_FORMATION(newValue))
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SELF( ``eINTERFACE_CONNECTOR_PLANNED_TO_REALIZED`` )
    public var RELATING_PRODUCT_DEFINITION_FORMATION: eINTERFACE_CONNECTOR_AS_PLANNED {
      get {
        return SDAI.UNWRAP( eINTERFACE_CONNECTOR_AS_PLANNED( super_ePRODUCT_DEFINITION_FORMATION_RELATIONSHIP
          .partialEntity._relating_product_definition_formation ) )
      }
      set(newValue) {
        let partial = super_ePRODUCT_DEFINITION_FORMATION_RELATIONSHIP.partialEntity
        partial._relating_product_definition_formation = SDAI.UNWRAP(
          ePRODUCT_DEFINITION_FORMATION(newValue))
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
      guard let partial = complexEntity?.partialEntityInstance(_interface_connector_planned_to_realized.self) else { return nil }
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


    //MARK: WHERE RULE VALIDATION (ENTITY)
    public override class func validateWhereRules(instance:SDAI.EntityReference?, prefix:SDAI.WhereLabel) -> [SDAI.WhereLabel:SDAI.LOGICAL] {
      guard let instance = instance as? Self else { return [:] }

      let prefix2 = prefix + " \(instance)"

      var result = super.validateWhereRules(instance:instance, prefix:prefix2)
      result[prefix2 + " .WHERE_wr1"] = _interface_connector_planned_to_realized.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "INTERFACE_CONNECTOR_PLANNED_TO_REALIZED", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: ePRODUCT_DEFINITION_FORMATION_RELATIONSHIP.self)
      entityDef.add(supertype: eINTERFACE_CONNECTOR_PLANNED_TO_REALIZED.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eINTERFACE_CONNECTOR_PLANNED_TO_REALIZED.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "RELATED_PRODUCT_DEFINITION_FORMATION", keyPath: \eINTERFACE_CONNECTOR_PLANNED_TO_REALIZED.RELATED_PRODUCT_DEFINITION_FORMATION, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RELATING_PRODUCT_DEFINITION_FORMATION", keyPath: \eINTERFACE_CONNECTOR_PLANNED_TO_REALIZED.RELATING_PRODUCT_DEFINITION_FORMATION, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ID", keyPath: \eINTERFACE_CONNECTOR_PLANNED_TO_REALIZED.ID, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eINTERFACE_CONNECTOR_PLANNED_TO_REALIZED.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
