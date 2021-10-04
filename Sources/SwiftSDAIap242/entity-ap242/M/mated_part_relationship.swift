/* file: mated_part_relationship.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY mated_part_relationship
    SUBTYPE OF ( group, group_assignment, product_definition_shape, product_definition_relationship, 
        shape_aspect );
      items  : SET [0 : ?] OF product_definition;
    DERIVE
      SELF\group_assignment.assigned_group : mated_part_relationship := SELF;
      SELF\property_definition.definition : mated_part_relationship := SELF;
      SELF\shape_aspect.of_shape      : mated_part_relationship := SELF;
  END_ENTITY; -- mated_part_relationship (line:20220 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	group
    ATTR:  name,	TYPE: label -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  id,	TYPE: identifier -- DERIVED	(AMBIGUOUS/MASKED)
      := get_id_value( SELF )


  SUPER- ENTITY(2)	group_assignment
    ATTR:  assigned_group,	TYPE: group -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: product_definition_group_assignment,	TYPE: product_definition_element_relationship
          ENTITY: assigned_requirement,	TYPE: requirement_assignment
          ENTITY: current_change_element_assignment,	TYPE: current_element_assignment_select
          ENTITY: mating_material_items,	TYPE: mating_material
          ENTITY: previous_change_element_assignment,	TYPE: previous_element_assignment_select
          ENTITY: document_identifier_assignment,	TYPE: document_identifier
          ENTITY: product_group_membership_rules,	TYPE: product_group
      *** ENTITY: mated_part_relationship,	TYPE: mated_part_relationship	(as DERIVED)
          ENTITY: assigned_analysis,	TYPE: analysis_assignment
          ENTITY: product_concept_feature_category_usage,	TYPE: product_concept_feature_category
          ENTITY: source_for_requirement,	TYPE: requirement_source
          ENTITY: sourced_requirement,	TYPE: requirement_source
          ENTITY: containing_message,	TYPE: message_contents_group
          ENTITY: product_group_attribute_set,	TYPE: product_group
          ENTITY: satisfied_requirement,	TYPE: satisfies_requirement
          ENTITY: message_contents_assignment,	TYPE: message_contents_group
          ENTITY: breakdown_element_group_assignment,	TYPE: product_definition_element_relationship
          ENTITY: satisfying_item,	TYPE: satisfies_requirement
          ENTITY: analysis_item,	TYPE: analysis_assignment
          ENTITY: product_group_rule_assignment,	TYPE: product_group_rules
          ENTITY: product_group_attribute_assignment,	TYPE: product_group_attributes
          ENTITY: change_group_assignment,	TYPE: change_group
          ENTITY: requirement_assigned_object,	TYPE: requirement_assignment

    ATTR:  role,	TYPE: object_role -- DERIVED
      := get_role( SELF )


  SUPER- ENTITY(3)	property_definition
    ATTR:  name,	TYPE: label -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  definition,	TYPE: characterized_definition -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: mating_material,	TYPE: product_definition_usage_relationship
          ENTITY: product_definition_kinematics,	TYPE: product_definition
          ENTITY: product_definition_relationship_kinematics,	TYPE: product_definition_relationship
      *** ENTITY: mated_part_relationship,	TYPE: mated_part_relationship	(as DERIVED)
          ENTITY: single_property_is_definition,	TYPE: product_definition
          ENTITY: assembly_component,	TYPE: assembly_component	(as DERIVED)

    ATTR:  id,	TYPE: identifier -- DERIVED	(AMBIGUOUS/MASKED)
      := get_id_value( SELF )


  SUPER- ENTITY(4)	product_definition_shape
    (no local attributes)

  SUPER- ENTITY(5)	product_definition_relationship
    ATTR:  id,	TYPE: identifier -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  name,	TYPE: label -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT	(AMBIGUOUS/MASKED)

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


  SUPER- ENTITY(6)	shape_aspect
    ATTR:  name,	TYPE: label -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  of_shape,	TYPE: product_definition_shape -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: component_feature,	TYPE: assembly_component
          ENTITY: constituent_shape_aspect,	TYPE: product_definition_shape	(as DERIVED)
      *** ENTITY: mated_part_relationship,	TYPE: mated_part_relationship	(as DERIVED)

    ATTR:  product_definitional,	TYPE: LOGICAL -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: default_model_geometric_view,	TYPE: LOGICAL	(as DERIVED)

    ATTR:  id,	TYPE: identifier -- DERIVED	(AMBIGUOUS/MASKED)
      := get_id_value( SELF )


  ENTITY(SELF)	mated_part_relationship
    ATTR:  items,	TYPE: SET [0 : ?] OF product_definition -- EXPLICIT

    REDCR: assigned_group,	TYPE: mated_part_relationship -- DERIVED (DYNAMIC)
      := SELF
      -- OVERRIDING ENTITY: group_assignment

    REDCR: definition,	TYPE: mated_part_relationship -- DERIVED (DYNAMIC)
      := SELF
      -- OVERRIDING ENTITY: property_definition

    REDCR: of_shape,	TYPE: mated_part_relationship -- DERIVED (DYNAMIC)
      := SELF
      -- OVERRIDING ENTITY: shape_aspect


*/


//MARK: - Partial Entity
  public final class _mated_part_relationship : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eMATED_PART_RELATIONSHIP.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _items: SDAI.SET<ePRODUCT_DEFINITION>/*[0:nil]*/  // PLAIN EXPLICIT ATTRIBUTE

    /// DERIVE ATTRIBUTE REDEFINITION(origin: eGROUP_ASSIGNMENT)
    /// - attribute value provider protocol conformance wrapper
    internal func _assigned_group__getter(complex: SDAI.ComplexEntity) -> eGROUP {
      let SELF = complex.entityReference( eMATED_PART_RELATIONSHIP.self )!
      return SDAI.UNWRAP( eGROUP(SELF.ASSIGNED_GROUP) )
    }
    /// DERIVE ATTRIBUTE REDEFINITION(origin: eGROUP_ASSIGNMENT)
    /// - gut of derived attribute logic
    internal func _assigned_group__getter(SELF: eMATED_PART_RELATIONSHIP) -> eMATED_PART_RELATIONSHIP {
      let value = SELF
      return SDAI.UNWRAP( value )
    }

    /// DERIVE ATTRIBUTE REDEFINITION(origin: ePROPERTY_DEFINITION)
    /// - attribute value provider protocol conformance wrapper
    internal func _definition__getter(complex: SDAI.ComplexEntity) -> sCHARACTERIZED_DEFINITION {
      let SELF = complex.entityReference( eMATED_PART_RELATIONSHIP.self )!
      return SDAI.UNWRAP( sCHARACTERIZED_DEFINITION(SELF.DEFINITION) )
    }
    /// DERIVE ATTRIBUTE REDEFINITION(origin: ePROPERTY_DEFINITION)
    /// - gut of derived attribute logic
    internal func _definition__getter(SELF: eMATED_PART_RELATIONSHIP) -> eMATED_PART_RELATIONSHIP {
      let value = SELF
      return SDAI.UNWRAP( value )
    }

    /// DERIVE ATTRIBUTE REDEFINITION(origin: eSHAPE_ASPECT)
    /// - attribute value provider protocol conformance wrapper
    internal func _of_shape__getter(complex: SDAI.ComplexEntity) -> ePRODUCT_DEFINITION_SHAPE {
      let SELF = complex.entityReference( eMATED_PART_RELATIONSHIP.self )!
      return SDAI.UNWRAP( ePRODUCT_DEFINITION_SHAPE(SELF.OF_SHAPE) )
    }
    /// DERIVE ATTRIBUTE REDEFINITION(origin: eSHAPE_ASPECT)
    /// - gut of derived attribute logic
    internal func _of_shape__getter(SELF: eMATED_PART_RELATIONSHIP) -> eMATED_PART_RELATIONSHIP {
      let value = SELF
      return SDAI.UNWRAP( value )
    }

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._items.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._items.value.isValueEqualOptionally(to: rhs._items.value, visited: &comppairs)	{
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
      if let comp = self._items.value.isValueEqualOptionally(to: rhs._items.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(ITEMS: SDAI.SET<ePRODUCT_DEFINITION>/*[0:nil]*/ ) {
      self._items = ITEMS
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: SDAI.SET<
        ePRODUCT_DEFINITION>.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( ITEMS: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY mated_part_relationship
    SUBTYPE OF ( group, group_assignment, product_definition_shape, product_definition_relationship, 
        shape_aspect );
      items  : SET [0 : ?] OF product_definition;
    DERIVE
      SELF\group_assignment.assigned_group : mated_part_relationship := SELF;
      SELF\property_definition.definition : mated_part_relationship := SELF;
      SELF\shape_aspect.of_shape      : mated_part_relationship := SELF;
  END_ENTITY; -- mated_part_relationship (line:20220 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eMATED_PART_RELATIONSHIP : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _mated_part_relationship.self
    }
    public let partialEntity: _mated_part_relationship

    //MARK: SUPERTYPES
    public let super_eGROUP: eGROUP 	// [1]
    public let super_eGROUP_ASSIGNMENT: eGROUP_ASSIGNMENT 	// [2]
    public let super_ePROPERTY_DEFINITION: ePROPERTY_DEFINITION 	// [3]
    public let super_ePRODUCT_DEFINITION_SHAPE: ePRODUCT_DEFINITION_SHAPE 	// [4]
    public let super_ePRODUCT_DEFINITION_RELATIONSHIP: ePRODUCT_DEFINITION_RELATIONSHIP 	// [5]
    public let super_eSHAPE_ASPECT: eSHAPE_ASPECT 	// [6]
    public var super_eMATED_PART_RELATIONSHIP: eMATED_PART_RELATIONSHIP { return self } 	// [7]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    // DESCRIPTION: (4 AMBIGUOUS REFs)

    // ID: (4 AMBIGUOUS REFs)

    // NAME: (4 AMBIGUOUS REFs)

    /// __EXPLICIT(DYNAMIC)__ attribute
    /// - origin: SUPER( ``eSHAPE_ASPECT`` )
    public var PRODUCT_DEFINITIONAL: SDAI.LOGICAL {
      get {
        if let resolved = _shape_aspect._product_definitional__provider(complex: self.complexEntity) {
          let value = resolved._product_definitional__getter(complex: self.complexEntity)
          return value
        }
        else {
          return SDAI.UNWRAP( super_eSHAPE_ASPECT.partialEntity._product_definitional )
        }
      }
      set(newValue) {
        if let _ = _shape_aspect._product_definitional__provider(complex: self.complexEntity) { return }

        let partial = super_eSHAPE_ASPECT.partialEntity
        partial._product_definitional = SDAI.LOGICAL(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eGROUP_ASSIGNMENT`` )
    public var ROLE: eOBJECT_ROLE?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"ROLE") {
          return cached.value as! eOBJECT_ROLE? 
        }
        let origin = super_eGROUP_ASSIGNMENT
        let value = eOBJECT_ROLE(origin.partialEntity._role__getter(SELF: origin))
        updateCache(derivedAttributeName:"ROLE", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eMATED_PART_RELATIONSHIP`` )
    public var ITEMS: SDAI.SET<ePRODUCT_DEFINITION>/*[0:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._items )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._items = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT REDEF(DERIVE)__ attribute
    /// - origin: SELF( ``eMATED_PART_RELATIONSHIP`` )
    public var OF_SHAPE: eMATED_PART_RELATIONSHIP {
      get {
        if let cached = cachedValue(derivedAttributeName:"OF_SHAPE") {
          return cached.value as! eMATED_PART_RELATIONSHIP
        }
        let origin = self
        let value = SDAI.UNWRAP( origin.partialEntity._of_shape__getter(SELF: origin) )
        updateCache(derivedAttributeName:"OF_SHAPE", value:value)
        return value
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

    /// __EXPLICIT REDEF(DERIVE)__ attribute
    /// - origin: SELF( ``eMATED_PART_RELATIONSHIP`` )
    public var ASSIGNED_GROUP: eMATED_PART_RELATIONSHIP {
      get {
        if let cached = cachedValue(derivedAttributeName:"ASSIGNED_GROUP") {
          return cached.value as! eMATED_PART_RELATIONSHIP
        }
        let origin = self
        let value = SDAI.UNWRAP( origin.partialEntity._assigned_group__getter(SELF: origin) )
        updateCache(derivedAttributeName:"ASSIGNED_GROUP", value:value)
        return value
      }
    }

    /// __EXPLICIT REDEF(DERIVE)__ attribute
    /// - origin: SELF( ``eMATED_PART_RELATIONSHIP`` )
    public var DEFINITION: eMATED_PART_RELATIONSHIP {
      get {
        if let cached = cachedValue(derivedAttributeName:"DEFINITION") {
          return cached.value as! eMATED_PART_RELATIONSHIP
        }
        let origin = self
        let value = SDAI.UNWRAP( origin.partialEntity._definition__getter(SELF: origin) )
        updateCache(derivedAttributeName:"DEFINITION", value:value)
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


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_mated_part_relationship.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eGROUP.self) else { return nil }
      self.super_eGROUP = super1

      guard let super2 = complexEntity?.entityReference(eGROUP_ASSIGNMENT.self) else { return nil }
      self.super_eGROUP_ASSIGNMENT = super2

      guard let super3 = complexEntity?.entityReference(ePROPERTY_DEFINITION.self) else { return nil }
      self.super_ePROPERTY_DEFINITION = super3

      guard let super4 = complexEntity?.entityReference(ePRODUCT_DEFINITION_SHAPE.self) else { return nil }
      self.super_ePRODUCT_DEFINITION_SHAPE = super4

      guard let super5 = complexEntity?.entityReference(ePRODUCT_DEFINITION_RELATIONSHIP.self) else { return nil }
      self.super_ePRODUCT_DEFINITION_RELATIONSHIP = super5

      guard let super6 = complexEntity?.entityReference(eSHAPE_ASPECT.self) else { return nil }
      self.super_eSHAPE_ASPECT = super6

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "MATED_PART_RELATIONSHIP", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eGROUP.self)
      entityDef.add(supertype: eGROUP_ASSIGNMENT.self)
      entityDef.add(supertype: ePROPERTY_DEFINITION.self)
      entityDef.add(supertype: ePRODUCT_DEFINITION_SHAPE.self)
      entityDef.add(supertype: ePRODUCT_DEFINITION_RELATIONSHIP.self)
      entityDef.add(supertype: eSHAPE_ASPECT.self)
      entityDef.add(supertype: eMATED_PART_RELATIONSHIP.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "PRODUCT_DEFINITIONAL", keyPath: \eMATED_PART_RELATIONSHIP.PRODUCT_DEFINITIONAL, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ROLE", keyPath: \eMATED_PART_RELATIONSHIP.ROLE, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ITEMS", keyPath: \eMATED_PART_RELATIONSHIP.ITEMS, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "OF_SHAPE", keyPath: \eMATED_PART_RELATIONSHIP.OF_SHAPE, 
        kind: .derivedRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RELATING_PRODUCT_DEFINITION", keyPath: \eMATED_PART_RELATIONSHIP.RELATING_PRODUCT_DEFINITION, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ASSIGNED_GROUP", keyPath: \eMATED_PART_RELATIONSHIP.ASSIGNED_GROUP, 
        kind: .derivedRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DEFINITION", keyPath: \eMATED_PART_RELATIONSHIP.DEFINITION, 
        kind: .derivedRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RELATED_PRODUCT_DEFINITION", keyPath: \eMATED_PART_RELATIONSHIP.RELATED_PRODUCT_DEFINITION, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}

//MARK: - partial Entity Dynamic Attribute Protocol Conformances
extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF._mated_part_relationship :
  eGROUP_ASSIGNMENT__ASSIGNED_GROUP__provider, ePROPERTY_DEFINITION__DEFINITION__provider, 
  eSHAPE_ASPECT__OF_SHAPE__provider {}
