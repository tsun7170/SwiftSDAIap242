/* file: evaluated_characteristic_of_product_as_individual_test_result.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY evaluated_characteristic_of_product_as_individual_test_result
    SUBTYPE OF ( evaluated_characteristic );
  END_ENTITY; -- evaluated_characteristic_of_product_as_individual_test_result (line:14029 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation
    ATTR:  name,	TYPE: label -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  items,	TYPE: SET [1 : ?] OF representation_item -- EXPLICIT
      -- observed by
        ENTITY(1): hidden_element_over_riding_styled_item,	ATTR: container,	TYPE: SET [1 : ?] OF
          presentation_view
      -- possibly overriden by
          ENTITY: shape_representation_with_parameters,	TYPE: SET [1 : ?] OF shape_representation_with_parameters_items
          ENTITY: mechanical_design_shaded_presentation_area,	TYPE: SET [1 : ?] OF mechanical_design_shaded_presentation_area_items
          ENTITY: mechanical_design_shaded_presentation_representation,	TYPE: SET [1 : ?] OF mechanical_design_shaded_presentation_representation_items
          ENTITY: connected_edge_with_length_set_representation,	TYPE: SET [1 : ?] OF connected_edge_with_length_set_items
          ENTITY: mechanism_state_representation,	TYPE: SET [1 : ?] OF pair_value
          ENTITY: reinforcement_orientation_basis,	TYPE: SET [1 : 1] OF basis_11_direction_member
          ENTITY: externally_defined_representation,	TYPE: SET [1 : ?] OF externally_defined_representation_item
          ENTITY: kinematic_topology_network_structure,	TYPE: SET [1 : ?] OF kinematic_loop
          ENTITY: kinematic_topology_structure,	TYPE: SET [1 : ?] OF kinematic_joint
          ENTITY: single_area_csg_2d_shape_representation,	TYPE: SET [1 : ?] OF csg_2d_area_select
          ENTITY: draughting_model,	TYPE: SET [1 : ?] OF draughting_model_item_select
          ENTITY: shape_dimension_representation,	TYPE: SET [1 : ?] OF shape_dimension_representation_item
          ENTITY: point_placement_shape_representation,	TYPE: SET [1 : ?] OF point_placement_shape_representation_item
          ENTITY: link_motion_representation_along_path,	TYPE: SET [1 : ?] OF kinematic_path
          ENTITY: kinematic_topology_directed_structure,	TYPE: SET [1 : ?] OF oriented_joint
          ENTITY: scan_data_shape_representation,	TYPE: SET [1 : ?] OF scanned_data_item
          ENTITY: mechanical_design_geometric_presentation_area,	TYPE: SET [1 : ?] OF mechanical_design_geometric_presentation_area_items
          ENTITY: procedural_shape_representation,	TYPE: SET [1 : ?] OF procedural_shape_representation_sequence
          ENTITY: path_parameter_representation,	TYPE: SET [1 : ?] OF bounded_curve
          ENTITY: csg_2d_shape_representation,	TYPE: SET [1 : ?] OF csg_2d_shape_select
          ENTITY: ply_angle_representation,	TYPE: SET [1 : 1] OF measure_representation_item
          ENTITY: text_string_representation,	TYPE: SET [1 : ?] OF text_string_representation_item
          ENTITY: procedural_representation,	TYPE: SET [1 : ?] OF procedural_representation_sequence
          ENTITY: draughting_subfigure_representation,	TYPE: SET [1 : ?] OF draughting_subfigure_representation_item
          ENTITY: picture_representation,	TYPE: SET [2 : ?] OF picture_representation_item_select
          ENTITY: structured_text_representation,	TYPE: SET [1 : ?] OF string_representation_item_select
          ENTITY: interpolated_configuration_representation,	TYPE: SET [1 : ?] OF interpolated_configuration_sequence
          ENTITY: mechanical_design_presentation_representation_with_draughting,	TYPE: SET [1 : ?] OF camera_model_d3
          ENTITY: mechanism_representation,	TYPE: SET [1 : ?] OF pair_representation_relationship
          ENTITY: mechanical_design_geometric_presentation_representation,	TYPE: SET [1 : ?] OF mechanical_design_geometric_presentation_representation_items
          ENTITY: kinematic_link_representation,	TYPE: SET [1 : ?] OF kinematic_link_representation_items
          ENTITY: neutral_sketch_representation,	TYPE: SET [1 : ?] OF sketch_element_select
          ENTITY: draughting_symbol_representation,	TYPE: SET [1 : ?] OF draughting_symbol_representation_item

    ATTR:  context_of_items,	TYPE: representation_context -- EXPLICIT (DYNAMIC)
      -- observed by
        ENTITY(1): representation_context,	ATTR: representations_in_context,	TYPE: SET [1 : ?] OF
          representation
      -- possibly overriden by
          ENTITY: mechanism_state_representation,	TYPE: geometric_representation_context	(as DERIVED)
          ENTITY: presentation_representation,	TYPE: geometric_representation_context
          ENTITY: link_motion_representation_along_path,	TYPE: geometric_representation_context_with_parameter
          ENTITY: path_parameter_representation,	TYPE: path_parameter_representation_context
          ENTITY: analysis_model,	TYPE: analysis_representation_context
          ENTITY: interpolated_configuration_representation,	TYPE: geometric_representation_context_with_parameter
          ENTITY: mechanism_representation,	TYPE: geometric_representation_context
          ENTITY: kinematic_link_representation,	TYPE: geometric_representation_context

    ATTR:  id,	TYPE: identifier -- DERIVED
      := get_id_value( SELF )

    ATTR:  description,	TYPE: text -- DERIVED	(AMBIGUOUS/MASKED)
      := get_description_value( SELF )


  SUPER- ENTITY(2)	representation_relationship
    ATTR:  name,	TYPE: label -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  rep_1,	TYPE: representation_or_representation_reference -- EXPLICIT
      -- possibly overriden by
          ENTITY: mechanical_design_and_draughting_relationship,	TYPE: mechanical_design_and_draughting_relationship_select
          ENTITY: constructive_geometry_representation_relationship,	TYPE: constructive_geometry_representation_or_shape_representation
          ENTITY: kinematic_link_representation_association,	TYPE: kinematic_link_representation	(OBSERVED)
          ENTITY: binary_assembly_constraint,	TYPE: representative_shape_representation
          ENTITY: shape_data_quality_inspected_shape_and_result_relationship,	TYPE: shape_representation
          ENTITY: item_link_motion_relationship,	TYPE: shape_representation
          ENTITY: explicit_procedural_representation_relationship,	TYPE: procedural_representation
          ENTITY: link_motion_relationship,	TYPE: link_or_shape_representation
          ENTITY: pair_representation_relationship,	TYPE: kinematic_link_representation
          ENTITY: variational_current_representation_relationship,	TYPE: variational_representation	(OBSERVED)
          ENTITY: ply_orientation_angle,	TYPE: reinforcement_orientation_basis
          ENTITY: constrained_kinematic_motion_representation,	TYPE: representative_shape_representation
          ENTITY: free_kinematic_motion_representation,	TYPE: representative_shape_representation
          ENTITY: explicit_procedural_shape_representation_relationship,	TYPE: procedural_shape_representation

    ATTR:  rep_2,	TYPE: representation_or_representation_reference -- EXPLICIT
      -- possibly overriden by
          ENTITY: mechanical_design_and_draughting_relationship,	TYPE: mechanical_design_and_draughting_relationship_select
          ENTITY: constructive_geometry_representation_relationship,	TYPE: constructive_geometry_representation
          ENTITY: kinematic_link_representation_association,	TYPE: shape_representation
          ENTITY: binary_assembly_constraint,	TYPE: representative_shape_representation
          ENTITY: shape_data_quality_inspected_shape_and_result_relationship,	TYPE: shape_data_quality_inspection_result_representation
          ENTITY: link_motion_relationship,	TYPE: link_motion_representation_along_path
          ENTITY: pair_representation_relationship,	TYPE: kinematic_link_representation
          ENTITY: ply_orientation_angle,	TYPE: ply_angle_representation
          ENTITY: constrained_kinematic_motion_representation,	TYPE: representative_shape_representation
          ENTITY: free_kinematic_motion_representation,	TYPE: representative_shape_representation
          ENTITY: explicit_procedural_shape_representation_relationship,	TYPE: shape_representation


  SUPER- ENTITY(3)	evaluated_characteristic
    (no local attributes)

  ENTITY(SELF)	evaluated_characteristic_of_product_as_individual_test_result
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _evaluated_characteristic_of_product_as_individual_test_result : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eEVALUATED_CHARACTERISTIC_OF_PRODUCT_AS_INDIVIDUAL_TEST_RESULT.self
    }

    //ATTRIBUTES
    // (no local attributes)

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sEXTERNAL_IDENTIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sSECURITY_CLASSIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sAPPROVAL_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sACTION_ITEMS.typeName)) // -> Self
      members.insert(SDAI.STRING(sCHANGE_MANAGEMENT_OBJECT.typeName)) // -> sACTION_ITEMS
      members.insert(SDAI.STRING(sGENERAL_ORGANIZATIONAL_DATA_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sEVENT_OCCURRENCE_ITEM.typeName)) // -> sGENERAL_ORGANIZATIONAL_DATA_SELECT
      members.insert(SDAI.STRING(sIR_USAGE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sDOCUMENT_REFERENCE_ITEM.typeName)) // -> Self
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
  ENTITY evaluated_characteristic_of_product_as_individual_test_result
    SUBTYPE OF ( evaluated_characteristic );
  END_ENTITY; -- evaluated_characteristic_of_product_as_individual_test_result (line:14029 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eEVALUATED_CHARACTERISTIC_OF_PRODUCT_AS_INDIVIDUAL_TEST_RESULT : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _evaluated_characteristic_of_product_as_individual_test_result.self
    }
    public let partialEntity: _evaluated_characteristic_of_product_as_individual_test_result

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION: eREPRESENTATION 	// [1]
    public let super_eREPRESENTATION_RELATIONSHIP: eREPRESENTATION_RELATIONSHIP 	// [2]
    public let super_eEVALUATED_CHARACTERISTIC: eEVALUATED_CHARACTERISTIC 	// [3]
    public var super_eEVALUATED_CHARACTERISTIC_OF_PRODUCT_AS_INDIVIDUAL_TEST_RESULT: eEVALUATED_CHARACTERISTIC_OF_PRODUCT_AS_INDIVIDUAL_TEST_RESULT { return self } 	// [4]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    // DESCRIPTION: (2 AMBIGUOUS REFs)

    // NAME: (2 AMBIGUOUS REFs)

    /// __EXPLICIT(OBSERVED)__ attribute
    /// - origin: SUPER( ``eREPRESENTATION`` )
    public var ITEMS: SDAI.SET<eREPRESENTATION_ITEM>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( super_eREPRESENTATION.partialEntity._items )
      }
      set(newValue) {
        let partial = super_eREPRESENTATION.partialEntity
        partial._items = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eREPRESENTATION`` )
    public var ID: tIDENTIFIER?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"ID") {
          return cached.value as! tIDENTIFIER? 
        }
        let origin = super_eREPRESENTATION
        let value = tIDENTIFIER(origin.partialEntity._id__getter(SELF: origin))
        updateCache(derivedAttributeName:"ID", value:value)
        return value
      }
    }

    /// __EXPLICIT(DYNAMIC)(OBSERVED)__ attribute
    /// - origin: SUPER( ``eREPRESENTATION`` )
    public var CONTEXT_OF_ITEMS: eREPRESENTATION_CONTEXT {
      get {
        if let resolved = _representation._context_of_items__provider(complex: self.complexEntity) {
          let value = resolved._context_of_items__getter(complex: self.complexEntity)
          return value
        }
        else {
          return SDAI.UNWRAP( super_eREPRESENTATION.partialEntity._context_of_items )
        }
      }
      set(newValue) {
        if let _ = _representation._context_of_items__provider(complex: self.complexEntity) { return }

        let partial = super_eREPRESENTATION.partialEntity
        partial._context_of_items = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eREPRESENTATION_RELATIONSHIP`` )
    public var REP_1: sREPRESENTATION_OR_REPRESENTATION_REFERENCE {
      get {
        return SDAI.UNWRAP( super_eREPRESENTATION_RELATIONSHIP.partialEntity._rep_1 )
      }
      set(newValue) {
        let partial = super_eREPRESENTATION_RELATIONSHIP.partialEntity
        partial._rep_1 = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eREPRESENTATION_RELATIONSHIP`` )
    public var REP_2: sREPRESENTATION_OR_REPRESENTATION_REFERENCE {
      get {
        return SDAI.UNWRAP( super_eREPRESENTATION_RELATIONSHIP.partialEntity._rep_2 )
      }
      set(newValue) {
        let partial = super_eREPRESENTATION_RELATIONSHIP.partialEntity
        partial._rep_2 = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_evaluated_characteristic_of_product_as_individual_test_result.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION.self) else { return nil }
      self.super_eREPRESENTATION = super1

      guard let super2 = complexEntity?.entityReference(eREPRESENTATION_RELATIONSHIP.self) else { return nil }
      self.super_eREPRESENTATION_RELATIONSHIP = super2

      guard let super3 = complexEntity?.entityReference(eEVALUATED_CHARACTERISTIC.self) else { return nil }
      self.super_eEVALUATED_CHARACTERISTIC = super3

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "EVALUATED_CHARACTERISTIC_OF_PRODUCT_AS_INDIVIDUAL_TEST_RESULT", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION.self)
      entityDef.add(supertype: eREPRESENTATION_RELATIONSHIP.self)
      entityDef.add(supertype: eEVALUATED_CHARACTERISTIC.self)
      entityDef.add(supertype: eEVALUATED_CHARACTERISTIC_OF_PRODUCT_AS_INDIVIDUAL_TEST_RESULT.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "ITEMS", keyPath: \eEVALUATED_CHARACTERISTIC_OF_PRODUCT_AS_INDIVIDUAL_TEST_RESULT.ITEMS, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ID", keyPath: \eEVALUATED_CHARACTERISTIC_OF_PRODUCT_AS_INDIVIDUAL_TEST_RESULT.ID, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "CONTEXT_OF_ITEMS", keyPath: \eEVALUATED_CHARACTERISTIC_OF_PRODUCT_AS_INDIVIDUAL_TEST_RESULT.CONTEXT_OF_ITEMS, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "REP_1", keyPath: \eEVALUATED_CHARACTERISTIC_OF_PRODUCT_AS_INDIVIDUAL_TEST_RESULT.REP_1, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "REP_2", keyPath: \eEVALUATED_CHARACTERISTIC_OF_PRODUCT_AS_INDIVIDUAL_TEST_RESULT.REP_2, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
