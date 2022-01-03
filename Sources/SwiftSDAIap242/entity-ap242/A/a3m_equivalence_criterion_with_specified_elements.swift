/* file: a3m_equivalence_criterion_with_specified_elements.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY a3m_equivalence_criterion_with_specified_elements
    SUBTYPE OF ( a3m_equivalence_criterion );
      comparing_specified_elements  : SET [1 : ?] OF inspected_equivalence_element_select;
      compared_specified_elements   : SET [1 : ?] OF inspected_equivalence_element_select;
  END_ENTITY; -- a3m_equivalence_criterion_with_specified_elements (line:6172 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(2)	data_equivalence_criterion
    (no local attributes)

  SUPER- ENTITY(3)	data_equivalence_inspection_requirement
    (no local attributes)

  SUPER- ENTITY(4)	a3m_equivalence_criterion
    ATTR:  assessment_specification,	TYPE: a3m_equivalence_assessment_specification_select -- EXPLICIT
      -- possibly overriden by
          ENTITY: different_length_of_assembly_constraint,	TYPE: a3m_equivalence_assessment_by_numerical_test
          ENTITY: different_assembly_centroid_using_notional_solid,	TYPE: a3m_equivalence_assessment_by_numerical_test
          ENTITY: mismatch_of_component,	TYPE: a3m_equivalence_assessment_by_logical_test
          ENTITY: different_number_of_closed_shell,	TYPE: a3m_equivalence_assessment_by_logical_test
          ENTITY: different_curve_length,	TYPE: a3m_equivalence_assessment_by_numerical_test
          ENTITY: mismatch_of_underlying_face_geometry,	TYPE: a3m_equivalence_assessment_by_logical_test
          ENTITY: missing_assembly_constraint,	TYPE: a3m_equivalence_assessment_by_logical_test
          ENTITY: different_angle_of_assembly_constraint,	TYPE: a3m_equivalence_assessment_by_numerical_test
          ENTITY: different_number_of_topological_elements_wireframe_model,	TYPE: a3m_equivalence_assessment_by_logical_test
          ENTITY: missing_edge,	TYPE: a3m_equivalence_assessment_by_logical_test
          ENTITY: different_number_of_geometric_elements,	TYPE: a3m_equivalence_assessment_by_logical_test
          ENTITY: missing_face,	TYPE: a3m_equivalence_assessment_by_logical_test
          ENTITY: mismatch_of_points,	TYPE: a3m_equivalence_assessment_by_numerical_test
          ENTITY: missing_component,	TYPE: a3m_equivalence_assessment_by_logical_test
          ENTITY: different_placement_of_component,	TYPE: a3m_equivalence_assessment_by_numerical_test
          ENTITY: different_volume,	TYPE: a3m_equivalence_assessment_by_numerical_test
          ENTITY: different_component_identification_via_multi_level_reference,	TYPE: a3m_equivalence_assessment_by_logical_test
          ENTITY: mismatch_of_arcwise_connected_surfaces_boundary,	TYPE: a3m_equivalence_assessment_by_numerical_test
          ENTITY: different_surface_area,	TYPE: a3m_equivalence_assessment_by_numerical_test
          ENTITY: different_centroid,	TYPE: a3m_equivalence_assessment_by_numerical_test
          ENTITY: mismatch_of_point_cloud_and_related_geometry,	TYPE: a3m_equivalence_assessment_by_numerical_test
          ENTITY: different_bounding_box,	TYPE: a3m_equivalence_assessment_by_numerical_test
          ENTITY: different_assembly_volume,	TYPE: a3m_equivalence_assessment_by_numerical_test
          ENTITY: mismatch_of_underlying_edge_geometry,	TYPE: a3m_equivalence_assessment_by_logical_test
          ENTITY: mismatch_of_arcwise_connected_surfaces,	TYPE: a3m_equivalence_assessment_by_numerical_test
          ENTITY: a3m_equivalence_criterion_of_component_property_difference,	TYPE: a3m_equivalence_assessment_by_logical_test
          ENTITY: different_number_of_geometric_elements_wireframe_model,	TYPE: a3m_equivalence_assessment_by_logical_test
          ENTITY: mismatch_of_edges,	TYPE: a3m_equivalence_assessment_by_logical_test
          ENTITY: mismatch_of_faces,	TYPE: a3m_equivalence_assessment_by_logical_test
          ENTITY: different_surface_normal,	TYPE: a3m_equivalence_assessment_by_numerical_test
          ENTITY: different_number_of_topological_elements,	TYPE: a3m_equivalence_assessment_by_logical_test
          ENTITY: different_assembly_centroid,	TYPE: a3m_equivalence_assessment_by_numerical_test
          ENTITY: mismatch_of_arcwise_connected_curves,	TYPE: a3m_equivalence_assessment_by_numerical_test
          ENTITY: different_component_type,	TYPE: a3m_equivalence_assessment_by_logical_test
          ENTITY: different_number_of_components,	TYPE: a3m_equivalence_assessment_by_logical_test
          ENTITY: different_assembly_constraint_type,	TYPE: a3m_equivalence_assessment_by_logical_test

    ATTR:  comparing_element_types,	TYPE: LIST [1 : ?] OF a3m_element_type_name -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: a3m_equivalence_criterion_of_representative_shape_property_value,	TYPE: LIST [1 : ?] OF a3m_element_type_name	(as DERIVED)
          ENTITY: mismatch_of_underlying_face_geometry,	TYPE: LIST [1 : 1] OF a3ms_element_type_name	(as DERIVED)
          ENTITY: a3m_equivalence_criterion_of_detailed_assembly_data_content,	TYPE: LIST [1 : 1] OF a3ma_element_type_name	(as DERIVED)
          ENTITY: mismatch_of_points,	TYPE: LIST [1 : 1] OF a3ms_element_type_name	(as DERIVED)
          ENTITY: different_component_shape,	TYPE: LIST [1 : 1] OF a3ma_element_type_name	(as DERIVED)
          ENTITY: mismatch_of_arcwise_connected_surfaces_boundary,	TYPE: LIST [1 : 1] OF a3ms_element_type_name	(as DERIVED)
          ENTITY: mismatch_of_point_cloud_and_related_geometry,	TYPE: LIST [2 : 2] OF a3ms_element_type_name	(as DERIVED)
          ENTITY: a3m_equivalence_criterion_of_representative_assembly_property_value,	TYPE: LIST [1 : 1] OF a3ma_element_type_name	(as DERIVED)
          ENTITY: a3m_equivalence_criterion_of_shape_data_structure,	TYPE: LIST [1 : ?] OF a3m_element_type_name	(as DERIVED)
          ENTITY: mismatch_of_underlying_edge_geometry,	TYPE: LIST [1 : 1] OF a3ms_element_type_name	(as DERIVED)
          ENTITY: mismatch_of_arcwise_connected_surfaces,	TYPE: LIST [1 : 1] OF a3ms_element_type_name	(as DERIVED)
          ENTITY: a3m_equivalence_criterion_of_assembly_data_structure,	TYPE: LIST [1 : 1] OF a3ma_element_type_name	(as DERIVED)
          ENTITY: different_surface_normal,	TYPE: LIST [1 : 1] OF a3ms_element_type_name	(as DERIVED)
          ENTITY: mismatch_of_arcwise_connected_curves,	TYPE: LIST [1 : 1] OF a3ms_element_type_name	(as DERIVED)
          ENTITY: a3m_equivalence_criterion_for_shape,	TYPE: LIST [1 : ?] OF a3ms_element_type_name
          ENTITY: a3m_equivalence_criterion_for_assembly,	TYPE: LIST [1 : ?] OF a3ma_element_type_name

    ATTR:  compared_element_types,	TYPE: LIST [1 : ?] OF a3m_element_type_name -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: different_number_of_closed_shell,	TYPE: LIST [1 : 1] OF a3ms_element_type_name	(as DERIVED)
          ENTITY: different_curve_length,	TYPE: LIST [1 : 1] OF a3ms_element_type_name	(as DERIVED)
          ENTITY: mismatch_of_underlying_face_geometry,	TYPE: LIST [1 : 1] OF a3ms_element_type_name	(as DERIVED)
          ENTITY: a3m_equivalence_criterion_of_detailed_assembly_data_content,	TYPE: LIST [1 : 1] OF a3ma_element_type_name	(as DERIVED)
          ENTITY: different_number_of_topological_elements_wireframe_model,	TYPE: LIST [1 : 1] OF a3ms_element_type_name	(as DERIVED)
          ENTITY: missing_edge,	TYPE: LIST [1 : 1] OF a3ms_element_type_name	(as DERIVED)
          ENTITY: different_number_of_geometric_elements,	TYPE: LIST [2 : 2] OF a3ms_element_type_name	(as DERIVED)
          ENTITY: missing_face,	TYPE: LIST [1 : 1] OF a3ms_element_type_name	(as DERIVED)
          ENTITY: mismatch_of_points,	TYPE: LIST [1 : 1] OF a3ms_element_type_name	(as DERIVED)
          ENTITY: different_component_shape,	TYPE: LIST [1 : 1] OF a3ma_element_type_name	(as DERIVED)
          ENTITY: different_volume,	TYPE: LIST [1 : 1] OF a3ms_element_type_name	(as DERIVED)
          ENTITY: mismatch_of_arcwise_connected_surfaces_boundary,	TYPE: LIST [1 : 1] OF a3ms_element_type_name	(as DERIVED)
          ENTITY: different_surface_area,	TYPE: LIST [1 : 1] OF a3ms_element_type_name	(as DERIVED)
          ENTITY: different_centroid,	TYPE: LIST [3 : 3] OF a3ms_element_type_name	(as DERIVED)
          ENTITY: mismatch_of_point_cloud_and_related_geometry,	TYPE: LIST [1 : 1] OF a3ms_element_type_name	(as DERIVED)
          ENTITY: a3m_equivalence_criterion_of_representative_assembly_property_value,	TYPE: LIST [1 : 1] OF a3ma_element_type_name	(as DERIVED)
          ENTITY: different_bounding_box,	TYPE: LIST [3 : 3] OF a3ms_element_type_name	(as DERIVED)
          ENTITY: mismatch_of_underlying_edge_geometry,	TYPE: LIST [1 : 1] OF a3ms_element_type_name	(as DERIVED)
          ENTITY: mismatch_of_arcwise_connected_surfaces,	TYPE: LIST [1 : 1] OF a3ms_element_type_name	(as DERIVED)
          ENTITY: different_number_of_geometric_elements_wireframe_model,	TYPE: LIST [1 : 1] OF a3ms_element_type_name	(as DERIVED)
          ENTITY: mismatch_of_edges,	TYPE: LIST [1 : 1] OF a3ms_element_type_name	(as DERIVED)
          ENTITY: a3m_equivalence_criterion_of_assembly_data_structure,	TYPE: LIST [1 : 1] OF a3ma_element_type_name	(as DERIVED)
          ENTITY: mismatch_of_faces,	TYPE: LIST [1 : 1] OF a3ms_element_type_name	(as DERIVED)
          ENTITY: different_surface_normal,	TYPE: LIST [1 : 1] OF a3ms_element_type_name	(as DERIVED)
          ENTITY: different_number_of_topological_elements,	TYPE: LIST [2 : 2] OF a3ms_element_type_name	(as DERIVED)
          ENTITY: mismatch_of_arcwise_connected_curves,	TYPE: LIST [1 : 1] OF a3ms_element_type_name	(as DERIVED)
          ENTITY: a3m_equivalence_criterion_for_shape,	TYPE: LIST [1 : ?] OF a3ms_element_type_name
          ENTITY: a3m_equivalence_criterion_for_assembly,	TYPE: LIST [1 : ?] OF a3ma_element_type_name

    ATTR:  measured_data_type,	TYPE: a3m_measured_data_type_name -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: different_length_of_assembly_constraint,	TYPE: a3ma_measured_data_type_name	(as DERIVED)
          ENTITY: different_assembly_centroid_using_notional_solid,	TYPE: a3ma_measured_data_type_name	(as DERIVED)
          ENTITY: mismatch_of_component,	TYPE: a3ma_measured_data_type_name	(as DERIVED)
          ENTITY: different_number_of_closed_shell,	TYPE: a3ms_measured_data_type_name	(as DERIVED)
          ENTITY: different_curve_length,	TYPE: a3ms_measured_data_type_name	(as DERIVED)
          ENTITY: mismatch_of_underlying_face_geometry,	TYPE: a3ms_measured_data_type_name	(as DERIVED)
          ENTITY: missing_assembly_constraint,	TYPE: a3ma_measured_data_type_name	(as DERIVED)
          ENTITY: different_angle_of_assembly_constraint,	TYPE: a3ma_measured_data_type_name	(as DERIVED)
          ENTITY: different_number_of_topological_elements_wireframe_model,	TYPE: a3ms_measured_data_type_name	(as DERIVED)
          ENTITY: missing_edge,	TYPE: a3ms_measured_data_type_name	(as DERIVED)
          ENTITY: different_number_of_geometric_elements,	TYPE: a3ms_measured_data_type_name	(as DERIVED)
          ENTITY: missing_face,	TYPE: a3ms_measured_data_type_name	(as DERIVED)
          ENTITY: mismatch_of_points,	TYPE: a3ms_measured_data_type_name	(as DERIVED)
          ENTITY: missing_component,	TYPE: a3ma_measured_data_type_name	(as DERIVED)
          ENTITY: different_placement_of_component,	TYPE: a3ma_measured_data_type_name	(as DERIVED)
          ENTITY: different_volume,	TYPE: a3ms_measured_data_type_name	(as DERIVED)
          ENTITY: different_component_identification_via_multi_level_reference,	TYPE: a3ma_measured_data_type_name	(as DERIVED)
          ENTITY: mismatch_of_arcwise_connected_surfaces_boundary,	TYPE: a3ms_measured_data_type_name	(as DERIVED)
          ENTITY: different_surface_area,	TYPE: a3ms_measured_data_type_name	(as DERIVED)
          ENTITY: different_centroid,	TYPE: a3ms_measured_data_type_name	(as DERIVED)
          ENTITY: mismatch_of_point_cloud_and_related_geometry,	TYPE: a3ms_measured_data_type_name	(as DERIVED)
          ENTITY: different_bounding_box,	TYPE: a3ms_measured_data_type_name	(as DERIVED)
          ENTITY: different_assembly_volume,	TYPE: a3ma_measured_data_type_name	(as DERIVED)
          ENTITY: mismatch_of_underlying_edge_geometry,	TYPE: a3ms_measured_data_type_name	(as DERIVED)
          ENTITY: mismatch_of_arcwise_connected_surfaces,	TYPE: a3ms_measured_data_type_name	(as DERIVED)
          ENTITY: a3m_equivalence_criterion_of_component_property_difference,	TYPE: a3ma_measured_data_type_name	(as DERIVED)
          ENTITY: different_number_of_geometric_elements_wireframe_model,	TYPE: a3ms_measured_data_type_name	(as DERIVED)
          ENTITY: mismatch_of_edges,	TYPE: a3ms_measured_data_type_name	(as DERIVED)
          ENTITY: mismatch_of_faces,	TYPE: a3ms_measured_data_type_name	(as DERIVED)
          ENTITY: different_surface_normal,	TYPE: a3ms_measured_data_type_name	(as DERIVED)
          ENTITY: different_number_of_topological_elements,	TYPE: a3ms_measured_data_type_name	(as DERIVED)
          ENTITY: different_assembly_centroid,	TYPE: a3ma_measured_data_type_name	(as DERIVED)
          ENTITY: mismatch_of_arcwise_connected_curves,	TYPE: a3ms_measured_data_type_name	(as DERIVED)
          ENTITY: different_component_type,	TYPE: a3ma_measured_data_type_name	(as DERIVED)
          ENTITY: a3m_equivalence_criterion_for_shape,	TYPE: a3ms_measured_data_type_name
          ENTITY: a3m_equivalence_criterion_for_assembly,	TYPE: a3ma_measured_data_type_name
          ENTITY: different_number_of_components,	TYPE: a3ma_measured_data_type_name	(as DERIVED)
          ENTITY: different_assembly_constraint_type,	TYPE: a3ma_measured_data_type_name	(as DERIVED)

    ATTR:  detected_difference_types,	TYPE: LIST [0 : ?] OF a3m_detected_difference_type_name -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: different_length_of_assembly_constraint,	TYPE: LIST [1 : 1] OF a3ma_detected_difference_type_name	(as DERIVED)
          ENTITY: different_assembly_centroid_using_notional_solid,	TYPE: LIST [1 : 1] OF a3ma_detected_difference_type_name	(as DERIVED)
          ENTITY: mismatch_of_component,	TYPE: LIST [1 : 1] OF a3ma_detected_difference_type_name	(as DERIVED)
          ENTITY: different_number_of_closed_shell,	TYPE: LIST [1 : 1] OF a3ms_detected_difference_type_name	(as DERIVED)
          ENTITY: different_curve_length,	TYPE: LIST [1 : 1] OF a3ms_detected_difference_type_name	(as DERIVED)
          ENTITY: mismatch_of_underlying_face_geometry,	TYPE: LIST [1 : 1] OF a3ms_detected_difference_type_name	(as DERIVED)
          ENTITY: missing_assembly_constraint,	TYPE: LIST [2 : 2] OF a3ma_detected_difference_type_name	(as DERIVED)
          ENTITY: different_angle_of_assembly_constraint,	TYPE: LIST [1 : 1] OF a3ma_detected_difference_type_name	(as DERIVED)
          ENTITY: different_number_of_topological_elements_wireframe_model,	TYPE: LIST [1 : 1] OF a3ms_detected_difference_type_name	(as DERIVED)
          ENTITY: missing_edge,	TYPE: LIST [2 : 2] OF a3ms_detected_difference_type_name	(as DERIVED)
          ENTITY: different_number_of_geometric_elements,	TYPE: LIST [1 : 1] OF a3ms_detected_difference_type_name	(as DERIVED)
          ENTITY: missing_face,	TYPE: LIST [2 : 2] OF a3ms_detected_difference_type_name	(as DERIVED)
          ENTITY: mismatch_of_points,	TYPE: LIST [1 : 1] OF a3ms_detected_difference_type_name	(as DERIVED)
          ENTITY: missing_component,	TYPE: LIST [2 : 2] OF a3ma_detected_difference_type_name	(as DERIVED)
          ENTITY: different_placement_of_component,	TYPE: LIST [1 : 1] OF a3ma_detected_difference_type_name	(as DERIVED)
          ENTITY: different_component_shape,	TYPE: LIST [1 : 1] OF a3ma_detected_difference_type_name	(as DERIVED)
          ENTITY: different_volume,	TYPE: LIST [1 : 1] OF a3ms_detected_difference_type_name	(as DERIVED)
          ENTITY: different_component_identification_via_multi_level_reference,	TYPE: LIST [1 : 1] OF a3ma_detected_difference_type_name	(as DERIVED)
          ENTITY: mismatch_of_arcwise_connected_surfaces_boundary,	TYPE: LIST [2 : 2] OF a3ms_detected_difference_type_name	(as DERIVED)
          ENTITY: different_surface_area,	TYPE: LIST [1 : 1] OF a3ms_detected_difference_type_name	(as DERIVED)
          ENTITY: different_centroid,	TYPE: LIST [1 : 1] OF a3ms_detected_difference_type_name	(as DERIVED)
          ENTITY: mismatch_of_point_cloud_and_related_geometry,	TYPE: LIST [3 : 3] OF a3ms_detected_difference_type_name	(as DERIVED)
          ENTITY: different_bounding_box,	TYPE: LIST [1 : 1] OF a3ms_detected_difference_type_name	(as DERIVED)
          ENTITY: different_assembly_volume,	TYPE: LIST [1 : 1] OF a3ma_detected_difference_type_name	(as DERIVED)
          ENTITY: mismatch_of_underlying_edge_geometry,	TYPE: LIST [1 : 1] OF a3ms_detected_difference_type_name	(as DERIVED)
          ENTITY: mismatch_of_arcwise_connected_surfaces,	TYPE: LIST [2 : 2] OF a3ms_detected_difference_type_name	(as DERIVED)
          ENTITY: different_number_of_geometric_elements_wireframe_model,	TYPE: LIST [1 : 1] OF a3ms_detected_difference_type_name	(as DERIVED)
          ENTITY: mismatch_of_edges,	TYPE: LIST [2 : 2] OF a3ms_detected_difference_type_name	(as DERIVED)
          ENTITY: mismatch_of_faces,	TYPE: LIST [2 : 2] OF a3ms_detected_difference_type_name	(as DERIVED)
          ENTITY: different_surface_normal,	TYPE: LIST [2 : 2] OF a3ms_detected_difference_type_name	(as DERIVED)
          ENTITY: different_number_of_topological_elements,	TYPE: LIST [1 : 1] OF a3ms_detected_difference_type_name	(as DERIVED)
          ENTITY: different_assembly_centroid,	TYPE: LIST [1 : 1] OF a3ma_detected_difference_type_name	(as DERIVED)
          ENTITY: mismatch_of_arcwise_connected_curves,	TYPE: LIST [2 : 2] OF a3ms_detected_difference_type_name	(as DERIVED)
          ENTITY: different_component_type,	TYPE: LIST [1 : 1] OF a3ma_detected_difference_type_name	(as DERIVED)
          ENTITY: a3m_equivalence_criterion_for_shape,	TYPE: LIST [1 : ?] OF a3ms_detected_difference_type_name
          ENTITY: a3m_equivalence_criterion_for_assembly,	TYPE: LIST [1 : ?] OF a3ma_detected_difference_type_name
          ENTITY: different_number_of_components,	TYPE: LIST [1 : 1] OF a3ma_detected_difference_type_name	(as DERIVED)
          ENTITY: different_assembly_constraint_type,	TYPE: LIST [1 : 1] OF a3ma_detected_difference_type_name	(as DERIVED)

    ATTR:  accuracy_types,	TYPE: LIST [0 : ?] OF a3m_accuracy_type_name -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: different_number_of_closed_shell,	TYPE: LIST [0 : 0] OF a3ms_accuracy_type_name	(as DERIVED)
          ENTITY: different_curve_length,	TYPE: LIST [1 : 1] OF a3ms_accuracy_type_name	(as DERIVED)
          ENTITY: mismatch_of_underlying_face_geometry,	TYPE: LIST [0 : 0] OF a3ms_accuracy_type_name	(as DERIVED)
          ENTITY: different_number_of_topological_elements_wireframe_model,	TYPE: LIST [0 : 0] OF a3ms_accuracy_type_name	(as DERIVED)
          ENTITY: missing_edge,	TYPE: LIST [0 : 0] OF a3ms_accuracy_type_name	(as DERIVED)
          ENTITY: different_number_of_geometric_elements,	TYPE: LIST [0 : 0] OF a3ms_accuracy_type_name	(as DERIVED)
          ENTITY: missing_face,	TYPE: LIST [0 : 0] OF a3ms_accuracy_type_name	(as DERIVED)
          ENTITY: mismatch_of_points,	TYPE: LIST [0 : 0] OF a3ms_accuracy_type_name	(as DERIVED)
          ENTITY: different_volume,	TYPE: LIST [1 : 1] OF a3ms_accuracy_type_name	(as DERIVED)
          ENTITY: mismatch_of_arcwise_connected_surfaces_boundary,	TYPE: LIST [1 : 1] OF a3ms_accuracy_type_name	(as DERIVED)
          ENTITY: different_surface_area,	TYPE: LIST [1 : 1] OF a3ms_accuracy_type_name	(as DERIVED)
          ENTITY: different_centroid,	TYPE: LIST [1 : 1] OF a3ms_accuracy_type_name	(as DERIVED)
          ENTITY: mismatch_of_point_cloud_and_related_geometry,	TYPE: LIST [1 : 1] OF a3ms_accuracy_type_name	(as DERIVED)
          ENTITY: different_bounding_box,	TYPE: LIST [0 : 0] OF a3ms_accuracy_type_name	(as DERIVED)
          ENTITY: mismatch_of_underlying_edge_geometry,	TYPE: LIST [0 : 0] OF a3ms_accuracy_type_name	(as DERIVED)
          ENTITY: mismatch_of_arcwise_connected_surfaces,	TYPE: LIST [1 : 1] OF a3ms_accuracy_type_name	(as DERIVED)
          ENTITY: different_number_of_geometric_elements_wireframe_model,	TYPE: LIST [0 : 0] OF a3ms_accuracy_type_name	(as DERIVED)
          ENTITY: mismatch_of_edges,	TYPE: LIST [0 : 0] OF a3ms_accuracy_type_name	(as DERIVED)
          ENTITY: mismatch_of_faces,	TYPE: LIST [0 : 0] OF a3ms_accuracy_type_name	(as DERIVED)
          ENTITY: different_surface_normal,	TYPE: LIST [1 : 1] OF a3ms_accuracy_type_name	(as DERIVED)
          ENTITY: different_number_of_topological_elements,	TYPE: LIST [0 : 0] OF a3ms_accuracy_type_name	(as DERIVED)
          ENTITY: mismatch_of_arcwise_connected_curves,	TYPE: LIST [1 : 1] OF a3ms_accuracy_type_name	(as DERIVED)
          ENTITY: a3m_equivalence_criterion_for_shape,	TYPE: LIST [0 : ?] OF a3ms_accuracy_type_name
          ENTITY: a3m_equivalence_criterion_for_assembly,	TYPE: LIST [0 : 0] OF a3ma_accuracy_type_name	(as DERIVED)


  ENTITY(SELF)	a3m_equivalence_criterion_with_specified_elements
    ATTR:  comparing_specified_elements,	TYPE: SET [1 : ?] OF inspected_equivalence_element_select -- EXPLICIT
      -- possibly overriden by
          ENTITY: a3ms_equivalence_criterion_with_specified_elements,	TYPE: SET [1 : ?] OF a3ms_inspected_equivalence_element_select

    ATTR:  compared_specified_elements,	TYPE: SET [1 : ?] OF inspected_equivalence_element_select -- EXPLICIT
      -- possibly overriden by
          ENTITY: a3ms_equivalence_criterion_with_specified_elements,	TYPE: SET [1 : ?] OF a3ms_inspected_equivalence_element_select


  SUB- ENTITY(6)	a3ms_equivalence_criterion_with_specified_elements
    REDCR: comparing_specified_elements,	TYPE: SET [1 : ?] OF a3ms_inspected_equivalence_element_select -- EXPLICIT
      -- OVERRIDING ENTITY: a3m_equivalence_criterion_with_specified_elements

    REDCR: compared_specified_elements,	TYPE: SET [1 : ?] OF a3ms_inspected_equivalence_element_select -- EXPLICIT
      -- OVERRIDING ENTITY: a3m_equivalence_criterion_with_specified_elements


*/


//MARK: - Partial Entity
  public final class _a3m_equivalence_criterion_with_specified_elements : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eA3M_EQUIVALENCE_CRITERION_WITH_SPECIFIED_ELEMENTS.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _comparing_specified_elements: SDAI.SET<sINSPECTED_EQUIVALENCE_ELEMENT_SELECT>
      /*[1:nil]*/  // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _compared_specified_elements: SDAI.SET<sINSPECTED_EQUIVALENCE_ELEMENT_SELECT>/*[
      1:nil]*/  // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._comparing_specified_elements.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._compared_specified_elements.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._comparing_specified_elements.value.isValueEqualOptionally(to: rhs._comparing_specified_elements.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._compared_specified_elements.value.isValueEqualOptionally(to: rhs._compared_specified_elements.value, visited: &comppairs)	{
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
      if let comp = self._comparing_specified_elements.value.isValueEqualOptionally(to: rhs._comparing_specified_elements.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._compared_specified_elements.value.isValueEqualOptionally(to: rhs._compared_specified_elements.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(COMPARING_SPECIFIED_ELEMENTS: SDAI.SET<sINSPECTED_EQUIVALENCE_ELEMENT_SELECT>/*[1:nil]*/ , 
                COMPARED_SPECIFIED_ELEMENTS: SDAI.SET<sINSPECTED_EQUIVALENCE_ELEMENT_SELECT>/*[1:nil]*/ ) {
      self._comparing_specified_elements = COMPARING_SPECIFIED_ELEMENTS
      self._compared_specified_elements = COMPARED_SPECIFIED_ELEMENTS
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: SDAI.SET<
        sINSPECTED_EQUIVALENCE_ELEMENT_SELECT>.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: SDAI.SET<
        sINSPECTED_EQUIVALENCE_ELEMENT_SELECT>.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( COMPARING_SPECIFIED_ELEMENTS: p0, COMPARED_SPECIFIED_ELEMENTS: p1 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY a3m_equivalence_criterion_with_specified_elements
    SUBTYPE OF ( a3m_equivalence_criterion );
      comparing_specified_elements  : SET [1 : ?] OF inspected_equivalence_element_select;
      compared_specified_elements   : SET [1 : ?] OF inspected_equivalence_element_select;
  END_ENTITY; -- a3m_equivalence_criterion_with_specified_elements (line:6172 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eA3M_EQUIVALENCE_CRITERION_WITH_SPECIFIED_ELEMENTS : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _a3m_equivalence_criterion_with_specified_elements.self
    }
    public let partialEntity: _a3m_equivalence_criterion_with_specified_elements

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eDATA_EQUIVALENCE_CRITERION: eDATA_EQUIVALENCE_CRITERION 	// [2]
    public let super_eDATA_EQUIVALENCE_INSPECTION_REQUIREMENT: eDATA_EQUIVALENCE_INSPECTION_REQUIREMENT 	// [3]
    public let super_eA3M_EQUIVALENCE_CRITERION: eA3M_EQUIVALENCE_CRITERION 	// [4]
    public var super_eA3M_EQUIVALENCE_CRITERION_WITH_SPECIFIED_ELEMENTS: eA3M_EQUIVALENCE_CRITERION_WITH_SPECIFIED_ELEMENTS { return self } 	// [5]

    //MARK: SUBTYPES
    public var sub_eA3MS_EQUIVALENCE_CRITERION_WITH_SPECIFIED_ELEMENTS: eA3MS_EQUIVALENCE_CRITERION_WITH_SPECIFIED_ELEMENTS? {	// [6]
      return self.complexEntity.entityReference(eA3MS_EQUIVALENCE_CRITERION_WITH_SPECIFIED_ELEMENTS.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT(DYNAMIC)__ attribute
    /// - origin: SUPER( ``eA3M_EQUIVALENCE_CRITERION`` )
    public var ACCURACY_TYPES: SDAI.LIST<nA3M_ACCURACY_TYPE_NAME>/*[0:nil]*/  {
      get {
        if let resolved = _a3m_equivalence_criterion._accuracy_types__provider(complex: self.complexEntity) {
          let value = resolved._accuracy_types__getter(complex: self.complexEntity)
          return value
        }
        else {
          return SDAI.UNWRAP( super_eA3M_EQUIVALENCE_CRITERION.partialEntity._accuracy_types )
        }
      }
      set(newValue) {
        if let _ = _a3m_equivalence_criterion._accuracy_types__provider(complex: self.complexEntity) { return }

        let partial = super_eA3M_EQUIVALENCE_CRITERION.partialEntity
        partial._accuracy_types = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT(DYNAMIC)__ attribute
    /// - origin: SUPER( ``eA3M_EQUIVALENCE_CRITERION`` )
    public var DETECTED_DIFFERENCE_TYPES: SDAI.LIST<nA3M_DETECTED_DIFFERENCE_TYPE_NAME>/*[0:nil]*/  {
      get {
        if let resolved = _a3m_equivalence_criterion._detected_difference_types__provider(complex: self.complexEntity) {
          let value = resolved._detected_difference_types__getter(complex: self.complexEntity)
          return value
        }
        else {
          return SDAI.UNWRAP( super_eA3M_EQUIVALENCE_CRITERION.partialEntity._detected_difference_types )
        }
      }
      set(newValue) {
        if let _ = _a3m_equivalence_criterion._detected_difference_types__provider(complex: self.complexEntity) { return }

        let partial = super_eA3M_EQUIVALENCE_CRITERION.partialEntity
        partial._detected_difference_types = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eA3M_EQUIVALENCE_CRITERION_WITH_SPECIFIED_ELEMENTS`` )
    public var COMPARING_SPECIFIED_ELEMENTS: SDAI.SET<sINSPECTED_EQUIVALENCE_ELEMENT_SELECT>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._comparing_specified_elements )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._comparing_specified_elements = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eA3M_EQUIVALENCE_CRITERION_WITH_SPECIFIED_ELEMENTS`` )
    public var COMPARED_SPECIFIED_ELEMENTS: SDAI.SET<sINSPECTED_EQUIVALENCE_ELEMENT_SELECT>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._compared_specified_elements )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._compared_specified_elements = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT(DYNAMIC)__ attribute
    /// - origin: SUPER( ``eA3M_EQUIVALENCE_CRITERION`` )
    public var COMPARED_ELEMENT_TYPES: SDAI.LIST<nA3M_ELEMENT_TYPE_NAME>/*[1:nil]*/  {
      get {
        if let resolved = _a3m_equivalence_criterion._compared_element_types__provider(complex: self.complexEntity) {
          let value = resolved._compared_element_types__getter(complex: self.complexEntity)
          return value
        }
        else {
          return SDAI.UNWRAP( super_eA3M_EQUIVALENCE_CRITERION.partialEntity._compared_element_types )
        }
      }
      set(newValue) {
        if let _ = _a3m_equivalence_criterion._compared_element_types__provider(complex: self.complexEntity) { return }

        let partial = super_eA3M_EQUIVALENCE_CRITERION.partialEntity
        partial._compared_element_types = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT(DYNAMIC)__ attribute
    /// - origin: SUPER( ``eA3M_EQUIVALENCE_CRITERION`` )
    public var MEASURED_DATA_TYPE: nA3M_MEASURED_DATA_TYPE_NAME {
      get {
        if let resolved = _a3m_equivalence_criterion._measured_data_type__provider(complex: self.complexEntity) {
          let value = resolved._measured_data_type__getter(complex: self.complexEntity)
          return value
        }
        else {
          return SDAI.UNWRAP( super_eA3M_EQUIVALENCE_CRITERION.partialEntity._measured_data_type )
        }
      }
      set(newValue) {
        if let _ = _a3m_equivalence_criterion._measured_data_type__provider(complex: self.complexEntity) { return }

        let partial = super_eA3M_EQUIVALENCE_CRITERION.partialEntity
        partial._measured_data_type = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eA3M_EQUIVALENCE_CRITERION`` )
    public var ASSESSMENT_SPECIFICATION: sA3M_EQUIVALENCE_ASSESSMENT_SPECIFICATION_SELECT {
      get {
        return SDAI.UNWRAP( super_eA3M_EQUIVALENCE_CRITERION.partialEntity._assessment_specification )
      }
      set(newValue) {
        let partial = super_eA3M_EQUIVALENCE_CRITERION.partialEntity
        partial._assessment_specification = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eREPRESENTATION_ITEM`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( super_eREPRESENTATION_ITEM.partialEntity._name )
      }
      set(newValue) {
        let partial = super_eREPRESENTATION_ITEM.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT(DYNAMIC)__ attribute
    /// - origin: SUPER( ``eA3M_EQUIVALENCE_CRITERION`` )
    public var COMPARING_ELEMENT_TYPES: SDAI.LIST<nA3M_ELEMENT_TYPE_NAME>/*[1:nil]*/  {
      get {
        if let resolved = _a3m_equivalence_criterion._comparing_element_types__provider(complex: self.complexEntity) {
          let value = resolved._comparing_element_types__getter(complex: self.complexEntity)
          return value
        }
        else {
          return SDAI.UNWRAP( super_eA3M_EQUIVALENCE_CRITERION.partialEntity._comparing_element_types )
        }
      }
      set(newValue) {
        if let _ = _a3m_equivalence_criterion._comparing_element_types__provider(complex: self.complexEntity) { return }

        let partial = super_eA3M_EQUIVALENCE_CRITERION.partialEntity
        partial._comparing_element_types = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_a3m_equivalence_criterion_with_specified_elements.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eDATA_EQUIVALENCE_CRITERION.self) else { return nil }
      self.super_eDATA_EQUIVALENCE_CRITERION = super2

      guard let super3 = complexEntity?.entityReference(eDATA_EQUIVALENCE_INSPECTION_REQUIREMENT.self) else { return nil }
      self.super_eDATA_EQUIVALENCE_INSPECTION_REQUIREMENT = super3

      guard let super4 = complexEntity?.entityReference(eA3M_EQUIVALENCE_CRITERION.self) else { return nil }
      self.super_eA3M_EQUIVALENCE_CRITERION = super4

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "A3M_EQUIVALENCE_CRITERION_WITH_SPECIFIED_ELEMENTS", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eDATA_EQUIVALENCE_CRITERION.self)
      entityDef.add(supertype: eDATA_EQUIVALENCE_INSPECTION_REQUIREMENT.self)
      entityDef.add(supertype: eA3M_EQUIVALENCE_CRITERION.self)
      entityDef.add(supertype: eA3M_EQUIVALENCE_CRITERION_WITH_SPECIFIED_ELEMENTS.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "ACCURACY_TYPES", keyPath: \eA3M_EQUIVALENCE_CRITERION_WITH_SPECIFIED_ELEMENTS.ACCURACY_TYPES, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DETECTED_DIFFERENCE_TYPES", keyPath: \eA3M_EQUIVALENCE_CRITERION_WITH_SPECIFIED_ELEMENTS.DETECTED_DIFFERENCE_TYPES, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "COMPARING_SPECIFIED_ELEMENTS", keyPath: \eA3M_EQUIVALENCE_CRITERION_WITH_SPECIFIED_ELEMENTS.COMPARING_SPECIFIED_ELEMENTS, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "COMPARED_SPECIFIED_ELEMENTS", keyPath: \eA3M_EQUIVALENCE_CRITERION_WITH_SPECIFIED_ELEMENTS.COMPARED_SPECIFIED_ELEMENTS, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "COMPARED_ELEMENT_TYPES", keyPath: \eA3M_EQUIVALENCE_CRITERION_WITH_SPECIFIED_ELEMENTS.COMPARED_ELEMENT_TYPES, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "MEASURED_DATA_TYPE", keyPath: \eA3M_EQUIVALENCE_CRITERION_WITH_SPECIFIED_ELEMENTS.MEASURED_DATA_TYPE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ASSESSMENT_SPECIFICATION", keyPath: \eA3M_EQUIVALENCE_CRITERION_WITH_SPECIFIED_ELEMENTS.ASSESSMENT_SPECIFICATION, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eA3M_EQUIVALENCE_CRITERION_WITH_SPECIFIED_ELEMENTS.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "COMPARING_ELEMENT_TYPES", keyPath: \eA3M_EQUIVALENCE_CRITERION_WITH_SPECIFIED_ELEMENTS.COMPARING_ELEMENT_TYPES, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
