/* file: tessellated_shape_representation_with_accuracy_parameters.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY tessellated_shape_representation_with_accuracy_parameters
    SUBTYPE OF ( tessellated_shape_representation );
      tessellation_accuracy_parameters : SET [1 : ?] OF tessellation_accuracy_parameter_item;
  END_ENTITY; -- tessellated_shape_representation_with_accuracy_parameters (line:32082 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation
    ATTR:  name,	TYPE: label -- EXPLICIT

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

    ATTR:  description,	TYPE: text -- DERIVED
      := get_description_value( SELF )


  SUPER- ENTITY(2)	shape_representation
    (no local attributes)

  SUPER- ENTITY(3)	tessellated_shape_representation
    (no local attributes)

  ENTITY(SELF)	tessellated_shape_representation_with_accuracy_parameters
    ATTR:  tessellation_accuracy_parameters,	TYPE: SET [1 : ?] OF tessellation_accuracy_parameter_item -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _tessellated_shape_representation_with_accuracy_parameters : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eTESSELLATED_SHAPE_REPRESENTATION_WITH_ACCURACY_PARAMETERS.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _tessellation_accuracy_parameters: SDAI.SET<
      sTESSELLATION_ACCURACY_PARAMETER_ITEM>/*[1:nil]*/  // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._tessellation_accuracy_parameters.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._tessellation_accuracy_parameters.value.isValueEqualOptionally(to: rhs._tessellation_accuracy_parameters.value, visited: &comppairs)	{
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
      if let comp = self._tessellation_accuracy_parameters.value.isValueEqualOptionally(to: rhs._tessellation_accuracy_parameters.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(TESSELLATION_ACCURACY_PARAMETERS: SDAI.SET<sTESSELLATION_ACCURACY_PARAMETER_ITEM>/*[1:nil]*/ ) {
      self._tessellation_accuracy_parameters = TESSELLATION_ACCURACY_PARAMETERS
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: SDAI.SET<
        sTESSELLATION_ACCURACY_PARAMETER_ITEM>.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( TESSELLATION_ACCURACY_PARAMETERS: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY tessellated_shape_representation_with_accuracy_parameters
    SUBTYPE OF ( tessellated_shape_representation );
      tessellation_accuracy_parameters : SET [1 : ?] OF tessellation_accuracy_parameter_item;
  END_ENTITY; -- tessellated_shape_representation_with_accuracy_parameters (line:32082 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eTESSELLATED_SHAPE_REPRESENTATION_WITH_ACCURACY_PARAMETERS : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _tessellated_shape_representation_with_accuracy_parameters.self
    }
    public let partialEntity: _tessellated_shape_representation_with_accuracy_parameters

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION: eREPRESENTATION 	// [1]
    public let super_eSHAPE_REPRESENTATION: eSHAPE_REPRESENTATION 	// [2]
    public let super_eTESSELLATED_SHAPE_REPRESENTATION: eTESSELLATED_SHAPE_REPRESENTATION 	// [3]
    public var super_eTESSELLATED_SHAPE_REPRESENTATION_WITH_ACCURACY_PARAMETERS: eTESSELLATED_SHAPE_REPRESENTATION_WITH_ACCURACY_PARAMETERS { return self } 	// [4]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eREPRESENTATION`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"DESCRIPTION") {
          return cached.value as! tTEXT? 
        }
        let origin = super_eREPRESENTATION
        let value = tTEXT(origin.partialEntity._description__getter(SELF: origin))
        updateCache(derivedAttributeName:"DESCRIPTION", value:value)
        return value
      }
    }

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
    /// - origin: SELF( ``eTESSELLATED_SHAPE_REPRESENTATION_WITH_ACCURACY_PARAMETERS`` )
    public var TESSELLATION_ACCURACY_PARAMETERS: SDAI.SET<sTESSELLATION_ACCURACY_PARAMETER_ITEM>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._tessellation_accuracy_parameters )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._tessellation_accuracy_parameters = SDAI.UNWRAP(newValue)
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
    /// - origin: SUPER( ``eREPRESENTATION`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( super_eREPRESENTATION.partialEntity._name )
      }
      set(newValue) {
        let partial = super_eREPRESENTATION.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_tessellated_shape_representation_with_accuracy_parameters.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION.self) else { return nil }
      self.super_eREPRESENTATION = super1

      guard let super2 = complexEntity?.entityReference(eSHAPE_REPRESENTATION.self) else { return nil }
      self.super_eSHAPE_REPRESENTATION = super2

      guard let super3 = complexEntity?.entityReference(eTESSELLATED_SHAPE_REPRESENTATION.self) else { return nil }
      self.super_eTESSELLATED_SHAPE_REPRESENTATION = super3

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "TESSELLATED_SHAPE_REPRESENTATION_WITH_ACCURACY_PARAMETERS", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION.self)
      entityDef.add(supertype: eSHAPE_REPRESENTATION.self)
      entityDef.add(supertype: eTESSELLATED_SHAPE_REPRESENTATION.self)
      entityDef.add(supertype: eTESSELLATED_SHAPE_REPRESENTATION_WITH_ACCURACY_PARAMETERS.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eTESSELLATED_SHAPE_REPRESENTATION_WITH_ACCURACY_PARAMETERS.DESCRIPTION, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ITEMS", keyPath: \eTESSELLATED_SHAPE_REPRESENTATION_WITH_ACCURACY_PARAMETERS.ITEMS, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "TESSELLATION_ACCURACY_PARAMETERS", keyPath: \eTESSELLATED_SHAPE_REPRESENTATION_WITH_ACCURACY_PARAMETERS.TESSELLATION_ACCURACY_PARAMETERS, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ID", keyPath: \eTESSELLATED_SHAPE_REPRESENTATION_WITH_ACCURACY_PARAMETERS.ID, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "CONTEXT_OF_ITEMS", keyPath: \eTESSELLATED_SHAPE_REPRESENTATION_WITH_ACCURACY_PARAMETERS.CONTEXT_OF_ITEMS, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eTESSELLATED_SHAPE_REPRESENTATION_WITH_ACCURACY_PARAMETERS.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
