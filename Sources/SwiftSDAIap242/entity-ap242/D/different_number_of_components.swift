/* file: different_number_of_components.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY different_number_of_components
    SUBTYPE OF ( a3m_equivalence_criterion_of_representative_assembly_property_value );
      SELF\a3m_equivalence_criterion.assessment_specification : a3m_equivalence_assessment_by_logical_test;
    DERIVE
      SELF\a3m_equivalence_criterion.measured_data_type : a3ma_measured_data_type_name := mdna_boolean_value;
      SELF\a3m_equivalence_criterion.detected_difference_types : LIST [1 : 1] OF
                                          a3ma_detected_difference_type_name := [ddna_count_measure];
  END_ENTITY; -- different_number_of_components (line:12188 file:ap242ed2_mim_lf_v1.101.TY.exp)

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
      *** ENTITY: different_number_of_components,	TYPE: a3m_equivalence_assessment_by_logical_test
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
      *** ENTITY: a3m_equivalence_criterion_of_representative_assembly_property_value,	TYPE: LIST [1 : 1] OF a3ma_element_type_name	(as DERIVED)
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
      *** ENTITY: a3m_equivalence_criterion_of_representative_assembly_property_value,	TYPE: LIST [1 : 1] OF a3ma_element_type_name	(as DERIVED)
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
      *** ENTITY: different_number_of_components,	TYPE: a3ma_measured_data_type_name	(as DERIVED)
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
      *** ENTITY: different_number_of_components,	TYPE: LIST [1 : 1] OF a3ma_detected_difference_type_name	(as DERIVED)
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
      *** ENTITY: a3m_equivalence_criterion_for_assembly,	TYPE: LIST [0 : 0] OF a3ma_accuracy_type_name	(as DERIVED)


  SUPER- ENTITY(5)	a3m_equivalence_criterion_for_assembly
    REDCR: comparing_element_types,	TYPE: LIST [1 : ?] OF a3ma_element_type_name -- EXPLICIT
      -- OVERRIDING ENTITY: a3m_equivalence_criterion

    REDCR: compared_element_types,	TYPE: LIST [1 : ?] OF a3ma_element_type_name -- EXPLICIT
      -- OVERRIDING ENTITY: a3m_equivalence_criterion

    REDCR: measured_data_type,	TYPE: a3ma_measured_data_type_name -- EXPLICIT
      -- OVERRIDING ENTITY: a3m_equivalence_criterion

    REDCR: detected_difference_types,	TYPE: LIST [1 : ?] OF a3ma_detected_difference_type_name -- EXPLICIT
      -- OVERRIDING ENTITY: a3m_equivalence_criterion

    REDCR: accuracy_types,	TYPE: LIST [0 : 0] OF a3ma_accuracy_type_name -- DERIVED (DYNAMIC)
      := []
      -- OVERRIDING ENTITY: a3m_equivalence_criterion


  SUPER- ENTITY(6)	a3m_equivalence_criterion_of_representative_assembly_property_value
    REDCR: comparing_element_types,	TYPE: LIST [1 : 1] OF a3ma_element_type_name -- DERIVED (DYNAMIC)
      := [etna_product_definition_or_reference]
      -- OVERRIDING ENTITY: a3m_equivalence_criterion

    REDCR: compared_element_types,	TYPE: LIST [1 : 1] OF a3ma_element_type_name -- DERIVED (DYNAMIC)
      := [etna_product_definition_or_reference]
      -- OVERRIDING ENTITY: a3m_equivalence_criterion


  ENTITY(SELF)	different_number_of_components
    REDCR: assessment_specification,	TYPE: a3m_equivalence_assessment_by_logical_test -- EXPLICIT
      -- OVERRIDING ENTITY: a3m_equivalence_criterion

    REDCR: measured_data_type,	TYPE: a3ma_measured_data_type_name -- DERIVED (DYNAMIC)
      := mdna_boolean_value
      -- OVERRIDING ENTITY: a3m_equivalence_criterion

    REDCR: detected_difference_types,	TYPE: LIST [1 : 1] OF a3ma_detected_difference_type_name -- DERIVED (DYNAMIC)
      := [ddna_count_measure]
      -- OVERRIDING ENTITY: a3m_equivalence_criterion


*/


//MARK: - Partial Entity
  public final class _different_number_of_components : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eDIFFERENT_NUMBER_OF_COMPONENTS.self
    }

    //ATTRIBUTES
    /* override var _assessment_specification: eA3M_EQUIVALENCE_ASSESSMENT_BY_LOGICAL_TEST	//EXPLICIT REDEFINITION(eA3M_EQUIVALENCE_CRITERION) */

    /// DERIVE ATTRIBUTE REDEFINITION(origin: eA3M_EQUIVALENCE_CRITERION)
    /// - attribute value provider protocol conformance wrapper
    internal func _measured_data_type__getter(complex: SDAI.ComplexEntity) -> nA3M_MEASURED_DATA_TYPE_NAME {
      let SELF = complex.entityReference( eDIFFERENT_NUMBER_OF_COMPONENTS.self )!
      return SDAI.UNWRAP( nA3M_MEASURED_DATA_TYPE_NAME(SELF.MEASURED_DATA_TYPE) )
    }
    /// DERIVE ATTRIBUTE REDEFINITION(origin: eA3M_EQUIVALENCE_CRITERION)
    /// - gut of derived attribute logic
    internal func _measured_data_type__getter(SELF: eDIFFERENT_NUMBER_OF_COMPONENTS) -> 
      nA3MA_MEASURED_DATA_TYPE_NAME {
      let value = nA3MA_MEASURED_DATA_TYPE_NAME(/*nA3M_MEASURED_DATA_TYPE_NAME*/MDNA_BOOLEAN_VALUE)
      return SDAI.UNWRAP( value )
    }

    /// DERIVE ATTRIBUTE REDEFINITION(origin: eA3M_EQUIVALENCE_CRITERION)
    /// - attribute value provider protocol conformance wrapper
    internal func _detected_difference_types__getter(complex: SDAI.ComplexEntity) -> SDAI.LIST<
      nA3M_DETECTED_DIFFERENCE_TYPE_NAME>/*[0:nil]*/  {
      let SELF = complex.entityReference( eDIFFERENT_NUMBER_OF_COMPONENTS.self )!
      return SDAI.UNWRAP( SDAI.LIST<nA3M_DETECTED_DIFFERENCE_TYPE_NAME>(SELF.DETECTED_DIFFERENCE_TYPES) )
    }
    /// DERIVE ATTRIBUTE REDEFINITION(origin: eA3M_EQUIVALENCE_CRITERION)
    /// - gut of derived attribute logic
    internal func _detected_difference_types__getter(SELF: eDIFFERENT_NUMBER_OF_COMPONENTS) -> SDAI.LIST<
      nA3MA_DETECTED_DIFFERENCE_TYPE_NAME>/*[1:1]*/  {

      let _TEMP1 = SDAI.LIST<nA3MA_DETECTED_DIFFERENCE_TYPE_NAME>(bound1: SDAI.UNWRAP(SDAI.INTEGER(1)), 
        bound2: SDAI.INTEGER(1), ([SDAI.AIE(nA3MA_DETECTED_DIFFERENCE_TYPE_NAME(/*
        nA3M_DETECTED_DIFFERENCE_TYPE_NAME*/DDNA_COUNT_MEASURE))] as [SDAI.AggregationInitializerElement<
        nA3MA_DETECTED_DIFFERENCE_TYPE_NAME>]))
      let value = _TEMP1
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
  ENTITY different_number_of_components
    SUBTYPE OF ( a3m_equivalence_criterion_of_representative_assembly_property_value );
      SELF\a3m_equivalence_criterion.assessment_specification : a3m_equivalence_assessment_by_logical_test;
    DERIVE
      SELF\a3m_equivalence_criterion.measured_data_type : a3ma_measured_data_type_name := mdna_boolean_value;
      SELF\a3m_equivalence_criterion.detected_difference_types : LIST [1 : 1] OF
                                          a3ma_detected_difference_type_name := [ddna_count_measure];
  END_ENTITY; -- different_number_of_components (line:12188 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eDIFFERENT_NUMBER_OF_COMPONENTS : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _different_number_of_components.self
    }
    public let partialEntity: _different_number_of_components

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eDATA_EQUIVALENCE_CRITERION: eDATA_EQUIVALENCE_CRITERION 	// [2]
    public let super_eDATA_EQUIVALENCE_INSPECTION_REQUIREMENT: eDATA_EQUIVALENCE_INSPECTION_REQUIREMENT 	// [3]
    public let super_eA3M_EQUIVALENCE_CRITERION: eA3M_EQUIVALENCE_CRITERION 	// [4]
    public let super_eA3M_EQUIVALENCE_CRITERION_FOR_ASSEMBLY: eA3M_EQUIVALENCE_CRITERION_FOR_ASSEMBLY 	// [5]
    public let super_eA3M_EQUIVALENCE_CRITERION_OF_REPRESENTATIVE_ASSEMBLY_PROPERTY_VALUE: eA3M_EQUIVALENCE_CRITERION_OF_REPRESENTATIVE_ASSEMBLY_PROPERTY_VALUE 	// [6]
    public var super_eDIFFERENT_NUMBER_OF_COMPONENTS: eDIFFERENT_NUMBER_OF_COMPONENTS { return self } 	// [7]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT REDEF(DERIVE)__ attribute
    /// - origin: SUPER( ``eA3M_EQUIVALENCE_CRITERION_FOR_ASSEMBLY`` )
    public var ACCURACY_TYPES: SDAI.LIST<nA3MA_ACCURACY_TYPE_NAME>/*[0:0]*/  {
      get {
        if let cached = cachedValue(derivedAttributeName:"ACCURACY_TYPES") {
          return cached.value as! SDAI.LIST<nA3MA_ACCURACY_TYPE_NAME>/*[0:0]*/ 
        }
        let origin = super_eA3M_EQUIVALENCE_CRITERION_FOR_ASSEMBLY
        let value = SDAI.UNWRAP( SDAI.LIST<nA3MA_ACCURACY_TYPE_NAME>(
          origin.partialEntity._accuracy_types__getter(SELF: origin)) )
        updateCache(derivedAttributeName:"ACCURACY_TYPES", value:value)
        return value
      }
    }

    /// __EXPLICIT REDEF(DERIVE)__ attribute
    /// - origin: SELF( ``eDIFFERENT_NUMBER_OF_COMPONENTS`` )
    public var DETECTED_DIFFERENCE_TYPES: SDAI.LIST<nA3MA_DETECTED_DIFFERENCE_TYPE_NAME>/*[1:1]*/  {
      get {
        if let cached = cachedValue(derivedAttributeName:"DETECTED_DIFFERENCE_TYPES") {
          return cached.value as! SDAI.LIST<nA3MA_DETECTED_DIFFERENCE_TYPE_NAME>/*[1:1]*/ 
        }
        let origin = self
        let value = SDAI.UNWRAP( origin.partialEntity._detected_difference_types__getter(SELF: origin) )
        updateCache(derivedAttributeName:"DETECTED_DIFFERENCE_TYPES", value:value)
        return value
      }
    }

    /// __EXPLICIT REDEF(DERIVE)__ attribute
    /// - origin: SUPER( ``eA3M_EQUIVALENCE_CRITERION_OF_REPRESENTATIVE_ASSEMBLY_PROPERTY_VALUE`` )
    public var COMPARED_ELEMENT_TYPES: SDAI.LIST<nA3MA_ELEMENT_TYPE_NAME>/*[1:1]*/  {
      get {
        if let cached = cachedValue(derivedAttributeName:"COMPARED_ELEMENT_TYPES") {
          return cached.value as! SDAI.LIST<nA3MA_ELEMENT_TYPE_NAME>/*[1:1]*/ 
        }
        let origin = super_eA3M_EQUIVALENCE_CRITERION_OF_REPRESENTATIVE_ASSEMBLY_PROPERTY_VALUE
        let value = SDAI.UNWRAP( SDAI.LIST<nA3MA_ELEMENT_TYPE_NAME>(
          origin.partialEntity._compared_element_types__getter(SELF: origin)) )
        updateCache(derivedAttributeName:"COMPARED_ELEMENT_TYPES", value:value)
        return value
      }
    }

    /// __EXPLICIT REDEF(DERIVE)__ attribute
    /// - origin: SELF( ``eDIFFERENT_NUMBER_OF_COMPONENTS`` )
    public var MEASURED_DATA_TYPE: nA3MA_MEASURED_DATA_TYPE_NAME {
      get {
        if let cached = cachedValue(derivedAttributeName:"MEASURED_DATA_TYPE") {
          return cached.value as! nA3MA_MEASURED_DATA_TYPE_NAME
        }
        let origin = self
        let value = SDAI.UNWRAP( origin.partialEntity._measured_data_type__getter(SELF: origin) )
        updateCache(derivedAttributeName:"MEASURED_DATA_TYPE", value:value)
        return value
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SELF( ``eDIFFERENT_NUMBER_OF_COMPONENTS`` )
    public var ASSESSMENT_SPECIFICATION: eA3M_EQUIVALENCE_ASSESSMENT_BY_LOGICAL_TEST {
      get {
        return SDAI.UNWRAP( eA3M_EQUIVALENCE_ASSESSMENT_BY_LOGICAL_TEST( super_eA3M_EQUIVALENCE_CRITERION
          .partialEntity._assessment_specification ) )
      }
      set(newValue) {
        let partial = super_eA3M_EQUIVALENCE_CRITERION.partialEntity
        partial._assessment_specification = SDAI.UNWRAP(
          sA3M_EQUIVALENCE_ASSESSMENT_SPECIFICATION_SELECT(newValue))
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

    /// __EXPLICIT REDEF(DERIVE)__ attribute
    /// - origin: SUPER( ``eA3M_EQUIVALENCE_CRITERION_OF_REPRESENTATIVE_ASSEMBLY_PROPERTY_VALUE`` )
    public var COMPARING_ELEMENT_TYPES: SDAI.LIST<nA3MA_ELEMENT_TYPE_NAME>/*[1:1]*/  {
      get {
        if let cached = cachedValue(derivedAttributeName:"COMPARING_ELEMENT_TYPES") {
          return cached.value as! SDAI.LIST<nA3MA_ELEMENT_TYPE_NAME>/*[1:1]*/ 
        }
        let origin = super_eA3M_EQUIVALENCE_CRITERION_OF_REPRESENTATIVE_ASSEMBLY_PROPERTY_VALUE
        let value = SDAI.UNWRAP( SDAI.LIST<nA3MA_ELEMENT_TYPE_NAME>(
          origin.partialEntity._comparing_element_types__getter(SELF: origin)) )
        updateCache(derivedAttributeName:"COMPARING_ELEMENT_TYPES", value:value)
        return value
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_different_number_of_components.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eDATA_EQUIVALENCE_CRITERION.self) else { return nil }
      self.super_eDATA_EQUIVALENCE_CRITERION = super2

      guard let super3 = complexEntity?.entityReference(eDATA_EQUIVALENCE_INSPECTION_REQUIREMENT.self) else { return nil }
      self.super_eDATA_EQUIVALENCE_INSPECTION_REQUIREMENT = super3

      guard let super4 = complexEntity?.entityReference(eA3M_EQUIVALENCE_CRITERION.self) else { return nil }
      self.super_eA3M_EQUIVALENCE_CRITERION = super4

      guard let super5 = complexEntity?.entityReference(eA3M_EQUIVALENCE_CRITERION_FOR_ASSEMBLY.self) else { return nil }
      self.super_eA3M_EQUIVALENCE_CRITERION_FOR_ASSEMBLY = super5

      guard let super6 = complexEntity?.entityReference(eA3M_EQUIVALENCE_CRITERION_OF_REPRESENTATIVE_ASSEMBLY_PROPERTY_VALUE.self) else { return nil }
      self.super_eA3M_EQUIVALENCE_CRITERION_OF_REPRESENTATIVE_ASSEMBLY_PROPERTY_VALUE = super6

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "DIFFERENT_NUMBER_OF_COMPONENTS", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eDATA_EQUIVALENCE_CRITERION.self)
      entityDef.add(supertype: eDATA_EQUIVALENCE_INSPECTION_REQUIREMENT.self)
      entityDef.add(supertype: eA3M_EQUIVALENCE_CRITERION.self)
      entityDef.add(supertype: eA3M_EQUIVALENCE_CRITERION_FOR_ASSEMBLY.self)
      entityDef.add(supertype: eA3M_EQUIVALENCE_CRITERION_OF_REPRESENTATIVE_ASSEMBLY_PROPERTY_VALUE.self)
      entityDef.add(supertype: eDIFFERENT_NUMBER_OF_COMPONENTS.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "ACCURACY_TYPES", keyPath: \eDIFFERENT_NUMBER_OF_COMPONENTS.ACCURACY_TYPES, 
        kind: .derivedRedeclaring, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DETECTED_DIFFERENCE_TYPES", keyPath: \eDIFFERENT_NUMBER_OF_COMPONENTS.DETECTED_DIFFERENCE_TYPES, 
        kind: .derivedRedeclaring, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "COMPARED_ELEMENT_TYPES", keyPath: \eDIFFERENT_NUMBER_OF_COMPONENTS.COMPARED_ELEMENT_TYPES, 
        kind: .derivedRedeclaring, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "MEASURED_DATA_TYPE", keyPath: \eDIFFERENT_NUMBER_OF_COMPONENTS.MEASURED_DATA_TYPE, 
        kind: .derivedRedeclaring, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ASSESSMENT_SPECIFICATION", keyPath: \eDIFFERENT_NUMBER_OF_COMPONENTS.ASSESSMENT_SPECIFICATION, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eDIFFERENT_NUMBER_OF_COMPONENTS.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "COMPARING_ELEMENT_TYPES", keyPath: \eDIFFERENT_NUMBER_OF_COMPONENTS.COMPARING_ELEMENT_TYPES, 
        kind: .derivedRedeclaring, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}

//MARK: - partial Entity Dynamic Attribute Protocol Conformances
extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF._different_number_of_components :
  eA3M_EQUIVALENCE_CRITERION__MEASURED_DATA_TYPE__provider, 
  eA3M_EQUIVALENCE_CRITERION__DETECTED_DIFFERENCE_TYPES__provider {}
