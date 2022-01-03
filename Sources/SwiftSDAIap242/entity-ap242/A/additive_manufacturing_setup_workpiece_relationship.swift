/* file: additive_manufacturing_setup_workpiece_relationship.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY additive_manufacturing_setup_workpiece_relationship
    SUBTYPE OF ( additive_manufacturing_setup_relationship );
  END_ENTITY; -- additive_manufacturing_setup_workpiece_relationship (line:6557 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	product_definition_relationship
    ATTR:  id,	TYPE: identifier -- EXPLICIT

    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT

    ATTR:  relating_product_definition,	TYPE: product_definition_or_reference -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: linear_array_component_definition_link,	TYPE: linear_array_placement_group_component
          ENTITY: multi_level_reference_designator,	TYPE: product_definition	(as DERIVED)
          ENTITY: assembly_group_component_definition_placement_link,	TYPE: assembly_component

    ATTR:  related_product_definition,	TYPE: product_definition_or_reference -- EXPLICIT (DYNAMIC)
      -- observed by
        ENTITY(1): product_definition_occurrence,	ATTR: assembly_usages,	TYPE: SET [0 : ?] OF
          assembly_component_usage
      -- possibly overriden by
          ENTITY: linear_array_component_definition_link,	TYPE: linear_array_placement_group_component
          ENTITY: multi_level_reference_designator,	TYPE: product_definition_or_reference	(as DERIVED)
          ENTITY: component_definition,	TYPE: component_definition	(as DERIVED)
          ENTITY: assembly_group_component_definition_placement_link,	TYPE: assembly_component


  SUPER- ENTITY(2)	product_definition_usage
    (no local attributes)

  SUPER- ENTITY(3)	assembly_component_usage
    ATTR:  reference_designator,	TYPE: OPTIONAL identifier -- EXPLICIT


  SUPER- ENTITY(4)	next_assembly_usage_occurrence
    ATTR:  product_definition_occurrence_id,	TYPE: identifier -- DERIVED
      := SELF\product_definition_relationship.related_product_definition\product_definition_occurrence.id


  SUPER- ENTITY(5)	additive_manufacturing_setup_relationship
    (no local attributes)

  ENTITY(SELF)	additive_manufacturing_setup_workpiece_relationship
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _additive_manufacturing_setup_workpiece_relationship : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eADDITIVE_MANUFACTURING_SETUP_WORKPIECE_RELATIONSHIP.self
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
  ENTITY additive_manufacturing_setup_workpiece_relationship
    SUBTYPE OF ( additive_manufacturing_setup_relationship );
  END_ENTITY; -- additive_manufacturing_setup_workpiece_relationship (line:6557 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eADDITIVE_MANUFACTURING_SETUP_WORKPIECE_RELATIONSHIP : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _additive_manufacturing_setup_workpiece_relationship.self
    }
    public let partialEntity: _additive_manufacturing_setup_workpiece_relationship

    //MARK: SUPERTYPES
    public let super_ePRODUCT_DEFINITION_RELATIONSHIP: ePRODUCT_DEFINITION_RELATIONSHIP 	// [1]
    public let super_ePRODUCT_DEFINITION_USAGE: ePRODUCT_DEFINITION_USAGE 	// [2]
    public let super_eASSEMBLY_COMPONENT_USAGE: eASSEMBLY_COMPONENT_USAGE 	// [3]
    public let super_eNEXT_ASSEMBLY_USAGE_OCCURRENCE: eNEXT_ASSEMBLY_USAGE_OCCURRENCE 	// [4]
    public let super_eADDITIVE_MANUFACTURING_SETUP_RELATIONSHIP: eADDITIVE_MANUFACTURING_SETUP_RELATIONSHIP 	// [5]
    public var super_eADDITIVE_MANUFACTURING_SETUP_WORKPIECE_RELATIONSHIP: eADDITIVE_MANUFACTURING_SETUP_WORKPIECE_RELATIONSHIP { return self } 	// [6]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``ePRODUCT_DEFINITION_RELATIONSHIP`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        return super_ePRODUCT_DEFINITION_RELATIONSHIP.partialEntity._description
      }
      set(newValue) {
        let partial = super_ePRODUCT_DEFINITION_RELATIONSHIP.partialEntity
        partial._description = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eASSEMBLY_COMPONENT_USAGE`` )
    public var REFERENCE_DESIGNATOR: tIDENTIFIER?  {
      get {
        return super_eASSEMBLY_COMPONENT_USAGE.partialEntity._reference_designator
      }
      set(newValue) {
        let partial = super_eASSEMBLY_COMPONENT_USAGE.partialEntity
        partial._reference_designator = newValue
      }
    }

    /// __EXPLICIT(DYNAMIC)__ attribute
    /// - origin: SUPER( ``ePRODUCT_DEFINITION_RELATIONSHIP`` )
    public var RELATING_PRODUCT_DEFINITION: sPRODUCT_DEFINITION_OR_REFERENCE {
      get {
        if let resolved = _product_definition_relationship._relating_product_definition__provider(complex: self.complexEntity) {
          let value = resolved._relating_product_definition__getter(complex: self.complexEntity)
          return value
        }
        else {
          return SDAI.UNWRAP( super_ePRODUCT_DEFINITION_RELATIONSHIP.partialEntity
            ._relating_product_definition )
        }
      }
      set(newValue) {
        if let _ = _product_definition_relationship._relating_product_definition__provider(complex: self.complexEntity) { return }

        let partial = super_ePRODUCT_DEFINITION_RELATIONSHIP.partialEntity
        partial._relating_product_definition = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``ePRODUCT_DEFINITION_RELATIONSHIP`` )
    public var ID: tIDENTIFIER {
      get {
        return SDAI.UNWRAP( super_ePRODUCT_DEFINITION_RELATIONSHIP.partialEntity._id )
      }
      set(newValue) {
        let partial = super_ePRODUCT_DEFINITION_RELATIONSHIP.partialEntity
        partial._id = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eNEXT_ASSEMBLY_USAGE_OCCURRENCE`` )
    public var PRODUCT_DEFINITION_OCCURRENCE_ID: tIDENTIFIER?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"PRODUCT_DEFINITION_OCCURRENCE_ID") {
          return cached.value as! tIDENTIFIER? 
        }
        let origin = super_eNEXT_ASSEMBLY_USAGE_OCCURRENCE
        let value = tIDENTIFIER(origin.partialEntity._product_definition_occurrence_id__getter(SELF: origin))
        updateCache(derivedAttributeName:"PRODUCT_DEFINITION_OCCURRENCE_ID", value:value)
        return value
      }
    }

    /// __EXPLICIT(DYNAMIC)(OBSERVED)__ attribute
    /// - origin: SUPER( ``ePRODUCT_DEFINITION_RELATIONSHIP`` )
    public var RELATED_PRODUCT_DEFINITION: sPRODUCT_DEFINITION_OR_REFERENCE {
      get {
        if let resolved = _product_definition_relationship._related_product_definition__provider(complex: self.complexEntity) {
          let value = resolved._related_product_definition__getter(complex: self.complexEntity)
          return value
        }
        else {
          return SDAI.UNWRAP( super_ePRODUCT_DEFINITION_RELATIONSHIP.partialEntity
            ._related_product_definition )
        }
      }
      set(newValue) {
        if let _ = _product_definition_relationship._related_product_definition__provider(complex: self.complexEntity) { return }

        let partial = super_ePRODUCT_DEFINITION_RELATIONSHIP.partialEntity
        partial._related_product_definition = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``ePRODUCT_DEFINITION_RELATIONSHIP`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( super_ePRODUCT_DEFINITION_RELATIONSHIP.partialEntity._name )
      }
      set(newValue) {
        let partial = super_ePRODUCT_DEFINITION_RELATIONSHIP.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_additive_manufacturing_setup_workpiece_relationship.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(ePRODUCT_DEFINITION_RELATIONSHIP.self) else { return nil }
      self.super_ePRODUCT_DEFINITION_RELATIONSHIP = super1

      guard let super2 = complexEntity?.entityReference(ePRODUCT_DEFINITION_USAGE.self) else { return nil }
      self.super_ePRODUCT_DEFINITION_USAGE = super2

      guard let super3 = complexEntity?.entityReference(eASSEMBLY_COMPONENT_USAGE.self) else { return nil }
      self.super_eASSEMBLY_COMPONENT_USAGE = super3

      guard let super4 = complexEntity?.entityReference(eNEXT_ASSEMBLY_USAGE_OCCURRENCE.self) else { return nil }
      self.super_eNEXT_ASSEMBLY_USAGE_OCCURRENCE = super4

      guard let super5 = complexEntity?.entityReference(eADDITIVE_MANUFACTURING_SETUP_RELATIONSHIP.self) else { return nil }
      self.super_eADDITIVE_MANUFACTURING_SETUP_RELATIONSHIP = super5

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "ADDITIVE_MANUFACTURING_SETUP_WORKPIECE_RELATIONSHIP", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: ePRODUCT_DEFINITION_RELATIONSHIP.self)
      entityDef.add(supertype: ePRODUCT_DEFINITION_USAGE.self)
      entityDef.add(supertype: eASSEMBLY_COMPONENT_USAGE.self)
      entityDef.add(supertype: eNEXT_ASSEMBLY_USAGE_OCCURRENCE.self)
      entityDef.add(supertype: eADDITIVE_MANUFACTURING_SETUP_RELATIONSHIP.self)
      entityDef.add(supertype: eADDITIVE_MANUFACTURING_SETUP_WORKPIECE_RELATIONSHIP.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eADDITIVE_MANUFACTURING_SETUP_WORKPIECE_RELATIONSHIP.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "REFERENCE_DESIGNATOR", keyPath: \eADDITIVE_MANUFACTURING_SETUP_WORKPIECE_RELATIONSHIP.REFERENCE_DESIGNATOR, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "RELATING_PRODUCT_DEFINITION", keyPath: \eADDITIVE_MANUFACTURING_SETUP_WORKPIECE_RELATIONSHIP.RELATING_PRODUCT_DEFINITION, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ID", keyPath: \eADDITIVE_MANUFACTURING_SETUP_WORKPIECE_RELATIONSHIP.ID, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "PRODUCT_DEFINITION_OCCURRENCE_ID", keyPath: \eADDITIVE_MANUFACTURING_SETUP_WORKPIECE_RELATIONSHIP.PRODUCT_DEFINITION_OCCURRENCE_ID, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "RELATED_PRODUCT_DEFINITION", keyPath: \eADDITIVE_MANUFACTURING_SETUP_WORKPIECE_RELATIONSHIP.RELATED_PRODUCT_DEFINITION, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eADDITIVE_MANUFACTURING_SETUP_WORKPIECE_RELATIONSHIP.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
