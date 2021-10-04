/* file: abstract_variable.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY abstract_variable
    SUBTYPE OF ( property_definition, property_definition_representation, representation, representation_item );
  END_ENTITY; -- abstract_variable (line:6336 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	property_definition
    ATTR:  name,	TYPE: label -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  definition,	TYPE: characterized_definition -- EXPLICIT (DYNAMIC)	(AMBIGUOUS/MASKED)
      -- possibly overriden by
          ENTITY: mating_material,	TYPE: product_definition_usage_relationship
          ENTITY: product_definition_kinematics,	TYPE: product_definition
          ENTITY: product_definition_relationship_kinematics,	TYPE: product_definition_relationship
          ENTITY: mated_part_relationship,	TYPE: mated_part_relationship	(as DERIVED)
          ENTITY: single_property_is_definition,	TYPE: product_definition
          ENTITY: assembly_component,	TYPE: assembly_component	(as DERIVED)

    ATTR:  id,	TYPE: identifier -- DERIVED	(AMBIGUOUS/MASKED)
      := get_id_value( SELF )


  SUPER- ENTITY(2)	property_definition_representation
    ATTR:  definition,	TYPE: represented_definition -- EXPLICIT	(AMBIGUOUS/MASKED)
      -- possibly overriden by
          ENTITY: shape_definition_representation,	TYPE: property_definition
          ENTITY: kinematic_property_definition_representation,	TYPE: product_definition_kinematics	(OBSERVED)

    ATTR:  used_representation,	TYPE: representation -- EXPLICIT
      -- possibly overriden by
          ENTITY: shape_definition_representation,	TYPE: shape_representation
          ENTITY: kinematic_property_topology_representation,	TYPE: kinematic_topology_representation_select
          ENTITY: kinematic_property_mechanism_representation,	TYPE: mechanism_representation

    ATTR:  description,	TYPE: text -- DERIVED	(AMBIGUOUS/MASKED)
      := get_description_value( SELF )

    ATTR:  name,	TYPE: label -- DERIVED	(AMBIGUOUS/MASKED)
      := get_name_value( SELF )


  SUPER- ENTITY(3)	representation
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

    ATTR:  id,	TYPE: identifier -- DERIVED	(AMBIGUOUS/MASKED)
      := get_id_value( SELF )

    ATTR:  description,	TYPE: text -- DERIVED	(AMBIGUOUS/MASKED)
      := get_description_value( SELF )


  SUPER- ENTITY(4)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT	(AMBIGUOUS/MASKED)


  ENTITY(SELF)	abstract_variable
    (no local attributes)

  SUB- ENTITY(6)	row_variable
    (no local attributes)

  SUB- ENTITY(7)	scalar_variable
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _abstract_variable : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eABSTRACT_VARIABLE.self
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
  ENTITY abstract_variable
    SUBTYPE OF ( property_definition, property_definition_representation, representation, representation_item );
  END_ENTITY; -- abstract_variable (line:6336 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eABSTRACT_VARIABLE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _abstract_variable.self
    }
    public let partialEntity: _abstract_variable

    //MARK: SUPERTYPES
    public let super_ePROPERTY_DEFINITION: ePROPERTY_DEFINITION 	// [1]
    public let super_ePROPERTY_DEFINITION_REPRESENTATION: ePROPERTY_DEFINITION_REPRESENTATION 	// [2]
    public let super_eREPRESENTATION: eREPRESENTATION 	// [3]
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [4]
    public var super_eABSTRACT_VARIABLE: eABSTRACT_VARIABLE { return self } 	// [5]

    //MARK: SUBTYPES
    public var sub_eROW_VARIABLE: eROW_VARIABLE? {	// [6]
      return self.complexEntity.entityReference(eROW_VARIABLE.self)
    }

    public var sub_eSCALAR_VARIABLE: eSCALAR_VARIABLE? {	// [7]
      return self.complexEntity.entityReference(eSCALAR_VARIABLE.self)
    }


    //MARK: ATTRIBUTES
    // DESCRIPTION: (3 AMBIGUOUS REFs)

    // ID: (2 AMBIGUOUS REFs)

    // DEFINITION: (2 AMBIGUOUS REFs)

    // NAME: (4 AMBIGUOUS REFs)

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

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``ePROPERTY_DEFINITION_REPRESENTATION`` )
    public var USED_REPRESENTATION: eREPRESENTATION {
      get {
        return SDAI.UNWRAP( super_ePROPERTY_DEFINITION_REPRESENTATION.partialEntity._used_representation )
      }
      set(newValue) {
        let partial = super_ePROPERTY_DEFINITION_REPRESENTATION.partialEntity
        partial._used_representation = SDAI.UNWRAP(newValue)
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


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_abstract_variable.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(ePROPERTY_DEFINITION.self) else { return nil }
      self.super_ePROPERTY_DEFINITION = super1

      guard let super2 = complexEntity?.entityReference(ePROPERTY_DEFINITION_REPRESENTATION.self) else { return nil }
      self.super_ePROPERTY_DEFINITION_REPRESENTATION = super2

      guard let super3 = complexEntity?.entityReference(eREPRESENTATION.self) else { return nil }
      self.super_eREPRESENTATION = super3

      guard let super4 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super4

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "ABSTRACT_VARIABLE", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: ePROPERTY_DEFINITION.self)
      entityDef.add(supertype: ePROPERTY_DEFINITION_REPRESENTATION.self)
      entityDef.add(supertype: eREPRESENTATION.self)
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eABSTRACT_VARIABLE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "ITEMS", keyPath: \eABSTRACT_VARIABLE.ITEMS, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "USED_REPRESENTATION", keyPath: \eABSTRACT_VARIABLE.USED_REPRESENTATION, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "CONTEXT_OF_ITEMS", keyPath: \eABSTRACT_VARIABLE.CONTEXT_OF_ITEMS, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
