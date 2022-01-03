/* file: erroneous_data.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY erroneous_data
    ABSTRACT SUPERTYPE OF ( 
        ONEOF ( 
            erroneous_topology, 
            erroneous_geometry, 
            erroneous_topology_and_geometry_relationship, 
            erroneous_manifold_solid_brep ) )
    SUBTYPE OF ( shape_data_quality_criterion );
  END_ENTITY; -- erroneous_data (line:13990 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(2)	data_quality_criterion
    (no local attributes)

  SUPER- ENTITY(3)	data_quality_measurement_requirement
    (no local attributes)

  SUPER- ENTITY(4)	shape_data_quality_criterion
    ATTR:  assessment_specification,	TYPE: shape_data_quality_assessment_specification_select -- EXPLICIT
      -- possibly overriden by
          ENTITY: multiply_defined_placements,	TYPE: shape_data_quality_assessment_by_numerical_test
          ENTITY: steep_angle_between_adjacent_edges,	TYPE: shape_data_quality_assessment_by_numerical_test
          ENTITY: multiply_defined_directions,	TYPE: shape_data_quality_assessment_by_numerical_test
          ENTITY: short_length_edge,	TYPE: shape_data_quality_assessment_by_numerical_test
          ENTITY: wrongly_placed_void,	TYPE: shape_data_quality_assessment_by_logical_test
          ENTITY: g1_discontinuous_surface,	TYPE: shape_data_quality_assessment_by_numerical_test
          ENTITY: short_length_curve,	TYPE: shape_data_quality_assessment_by_numerical_test
          ENTITY: non_manifold_at_edge,	TYPE: shape_data_quality_assessment_by_logical_test
          ENTITY: multiply_defined_cartesian_points,	TYPE: shape_data_quality_assessment_by_numerical_test
          ENTITY: small_area_surface,	TYPE: shape_data_quality_assessment_by_numerical_test
          ENTITY: g2_discontinuity_between_adjacent_faces,	TYPE: shape_data_quality_assessment_by_numerical_test
          ENTITY: indistinct_surface_knots,	TYPE: shape_data_quality_assessment_by_numerical_test
          ENTITY: excessively_high_degree_curve,	TYPE: shape_data_quality_assessment_by_numerical_test
          ENTITY: solid_with_wrong_number_of_voids,	TYPE: shape_data_quality_assessment_by_logical_test
          ENTITY: wrongly_oriented_void,	TYPE: shape_data_quality_assessment_by_logical_test
          ENTITY: entirely_narrow_surface,	TYPE: shape_data_quality_assessment_by_logical_test
          ENTITY: excessively_high_degree_surface,	TYPE: shape_data_quality_assessment_by_numerical_test
          ENTITY: wrongly_placed_loop,	TYPE: shape_data_quality_assessment_by_logical_test
          ENTITY: self_intersecting_surface,	TYPE: shape_data_quality_assessment_by_logical_test
          ENTITY: curve_with_small_curvature_radius,	TYPE: shape_data_quality_assessment_by_numerical_test
          ENTITY: self_intersecting_shell,	TYPE: shape_data_quality_assessment_by_logical_test
          ENTITY: entirely_narrow_solid,	TYPE: shape_data_quality_assessment_by_logical_test
          ENTITY: gap_between_pcurves_related_to_an_edge,	TYPE: shape_data_quality_assessment_by_numerical_test
          ENTITY: inconsistent_face_and_surface_normals,	TYPE: shape_data_quality_assessment_by_logical_test
          ENTITY: intersecting_connected_face_sets,	TYPE: shape_data_quality_assessment_by_logical_test
          ENTITY: inconsistent_face_and_closed_shell_normals,	TYPE: shape_data_quality_assessment_by_logical_test
          ENTITY: indistinct_curve_knots,	TYPE: shape_data_quality_assessment_by_numerical_test
          ENTITY: surface_with_excessive_patches_in_one_direction,	TYPE: shape_data_quality_assessment_by_numerical_test
          ENTITY: non_manifold_at_vertex,	TYPE: shape_data_quality_assessment_by_logical_test
          ENTITY: partly_overlapping_edges,	TYPE: shape_data_quality_assessment_by_numerical_test
          ENTITY: gap_between_edge_and_base_surface,	TYPE: shape_data_quality_assessment_by_numerical_test
          ENTITY: inconsistent_curve_transition_code,	TYPE: shape_data_quality_assessment_by_logical_test
          ENTITY: free_edge,	TYPE: shape_data_quality_assessment_by_logical_test
          ENTITY: multiply_defined_faces,	TYPE: shape_data_quality_assessment_by_numerical_test
          ENTITY: multiply_defined_edges,	TYPE: shape_data_quality_assessment_by_numerical_test
          ENTITY: open_closed_shell,	TYPE: shape_data_quality_assessment_by_logical_test
          ENTITY: steep_angle_between_adjacent_faces,	TYPE: shape_data_quality_assessment_by_numerical_test
          ENTITY: intersecting_shells_in_solid,	TYPE: shape_data_quality_assessment_by_logical_test
          ENTITY: intersecting_loops_in_face,	TYPE: shape_data_quality_assessment_by_logical_test
          ENTITY: erroneous_b_spline_curve_definition,	TYPE: shape_data_quality_assessment_by_logical_test
          ENTITY: entirely_narrow_face,	TYPE: shape_data_quality_assessment_by_logical_test
          ENTITY: unused_patches,	TYPE: shape_data_quality_assessment_by_numerical_test
          ENTITY: g2_discontinuous_curve,	TYPE: shape_data_quality_assessment_by_numerical_test
          ENTITY: solid_with_excessive_number_of_voids,	TYPE: shape_data_quality_assessment_by_numerical_test
          ENTITY: partly_overlapping_solids,	TYPE: shape_data_quality_assessment_by_numerical_test
          ENTITY: small_area_surface_patch,	TYPE: shape_data_quality_assessment_by_numerical_test
          ENTITY: nearly_degenerate_surface_boundary,	TYPE: shape_data_quality_assessment_by_numerical_test
          ENTITY: g2_discontinuous_surface,	TYPE: shape_data_quality_assessment_by_numerical_test
          ENTITY: partly_overlapping_surfaces,	TYPE: shape_data_quality_assessment_by_numerical_test
          ENTITY: gap_between_vertex_and_edge,	TYPE: shape_data_quality_assessment_by_numerical_test
          ENTITY: high_degree_linear_curve,	TYPE: shape_data_quality_assessment_by_numerical_test
          ENTITY: multiply_defined_solids,	TYPE: shape_data_quality_assessment_by_numerical_test
          ENTITY: high_degree_planar_surface,	TYPE: shape_data_quality_assessment_by_numerical_test
          ENTITY: inconsistent_edge_and_curve_directions,	TYPE: shape_data_quality_assessment_by_logical_test
          ENTITY: edge_with_excessive_segments,	TYPE: shape_data_quality_assessment_by_numerical_test
          ENTITY: g1_discontinuity_between_adjacent_faces,	TYPE: shape_data_quality_assessment_by_numerical_test
          ENTITY: partly_overlapping_curves,	TYPE: shape_data_quality_assessment_by_numerical_test
          ENTITY: self_intersecting_curve,	TYPE: shape_data_quality_assessment_by_logical_test
          ENTITY: gap_between_adjacent_edges_in_loop,	TYPE: shape_data_quality_assessment_by_numerical_test
          ENTITY: g1_discontinuous_curve,	TYPE: shape_data_quality_assessment_by_numerical_test
          ENTITY: small_volume_solid,	TYPE: shape_data_quality_assessment_by_numerical_test
          ENTITY: surface_with_small_curvature_radius,	TYPE: shape_data_quality_assessment_by_numerical_test
          ENTITY: short_length_curve_segment,	TYPE: shape_data_quality_assessment_by_numerical_test
          ENTITY: over_used_vertex,	TYPE: shape_data_quality_assessment_by_numerical_test
          ENTITY: zero_surface_normal,	TYPE: shape_data_quality_assessment_by_numerical_test
          ENTITY: disconnected_face_set,	TYPE: shape_data_quality_assessment_by_logical_test
          ENTITY: multiply_defined_surfaces,	TYPE: shape_data_quality_assessment_by_numerical_test
          ENTITY: partly_overlapping_faces,	TYPE: shape_data_quality_assessment_by_numerical_test
          ENTITY: narrow_surface_patch,	TYPE: shape_data_quality_assessment_by_logical_test
          ENTITY: multiply_defined_curves,	TYPE: shape_data_quality_assessment_by_numerical_test
          ENTITY: self_intersecting_loop,	TYPE: shape_data_quality_assessment_by_logical_test
          ENTITY: curve_with_excessive_segments,	TYPE: shape_data_quality_assessment_by_numerical_test
          ENTITY: multiply_defined_vertices,	TYPE: shape_data_quality_assessment_by_numerical_test
          ENTITY: gap_between_faces_related_to_an_edge,	TYPE: shape_data_quality_assessment_by_numerical_test
          ENTITY: extreme_patch_width_variation,	TYPE: shape_data_quality_assessment_by_numerical_test
          ENTITY: inconsistent_adjacent_face_normals,	TYPE: shape_data_quality_assessment_by_logical_test
          ENTITY: inconsistent_surface_transition_code,	TYPE: shape_data_quality_assessment_by_logical_test
          ENTITY: nearly_degenerate_surface_patch,	TYPE: shape_data_quality_assessment_by_numerical_test
          ENTITY: erroneous_b_spline_surface_definition,	TYPE: shape_data_quality_assessment_by_logical_test
          ENTITY: face_surface_with_excessive_patches_in_one_direction,	TYPE: shape_data_quality_assessment_by_numerical_test
          ENTITY: high_degree_axi_symmetric_surface,	TYPE: shape_data_quality_assessment_by_numerical_test
          ENTITY: open_edge_loop,	TYPE: shape_data_quality_assessment_by_logical_test
          ENTITY: small_area_face,	TYPE: shape_data_quality_assessment_by_numerical_test
          ENTITY: abrupt_change_of_surface_normal,	TYPE: shape_data_quality_assessment_by_logical_test
          ENTITY: high_degree_conic,	TYPE: shape_data_quality_assessment_by_numerical_test
          ENTITY: gap_between_vertex_and_base_surface,	TYPE: shape_data_quality_assessment_by_numerical_test


  ENTITY(SELF)	erroneous_data
    (no local attributes)

  SUB- ENTITY(6)	inconsistent_edge_and_curve_directions
    REDCR: assessment_specification,	TYPE: shape_data_quality_assessment_by_logical_test -- EXPLICIT
      -- OVERRIDING ENTITY: shape_data_quality_criterion

    ATTR:  distance_tolerance,	TYPE: length_measure -- EXPLICIT	(AMBIGUOUS/MASKED)


  SUB- ENTITY(7)	inconsistent_face_and_surface_normals
    REDCR: assessment_specification,	TYPE: shape_data_quality_assessment_by_logical_test -- EXPLICIT
      -- OVERRIDING ENTITY: shape_data_quality_criterion


  SUB- ENTITY(8)	inconsistent_face_and_closed_shell_normals
    REDCR: assessment_specification,	TYPE: shape_data_quality_assessment_by_logical_test -- EXPLICIT
      -- OVERRIDING ENTITY: shape_data_quality_criterion


  SUB- ENTITY(9)	intersecting_loops_in_face
    REDCR: assessment_specification,	TYPE: shape_data_quality_assessment_by_logical_test -- EXPLICIT
      -- OVERRIDING ENTITY: shape_data_quality_criterion

    ATTR:  interference_tolerance,	TYPE: length_measure -- EXPLICIT	(AMBIGUOUS/MASKED)


  SUB- ENTITY(10)	wrongly_placed_loop
    REDCR: assessment_specification,	TYPE: shape_data_quality_assessment_by_logical_test -- EXPLICIT
      -- OVERRIDING ENTITY: shape_data_quality_criterion


  SUB- ENTITY(11)	erroneous_topology_and_geometry_relationship
    (no local attributes)

  SUB- ENTITY(12)	wrongly_placed_void
    REDCR: assessment_specification,	TYPE: shape_data_quality_assessment_by_logical_test -- EXPLICIT
      -- OVERRIDING ENTITY: shape_data_quality_criterion


  SUB- ENTITY(13)	solid_with_wrong_number_of_voids
    REDCR: assessment_specification,	TYPE: shape_data_quality_assessment_by_logical_test -- EXPLICIT
      -- OVERRIDING ENTITY: shape_data_quality_criterion


  SUB- ENTITY(14)	wrongly_oriented_void
    REDCR: assessment_specification,	TYPE: shape_data_quality_assessment_by_logical_test -- EXPLICIT
      -- OVERRIDING ENTITY: shape_data_quality_criterion


  SUB- ENTITY(15)	intersecting_shells_in_solid
    REDCR: assessment_specification,	TYPE: shape_data_quality_assessment_by_logical_test -- EXPLICIT
      -- OVERRIDING ENTITY: shape_data_quality_criterion

    ATTR:  interference_tolerance,	TYPE: length_measure -- EXPLICIT	(AMBIGUOUS/MASKED)


  SUB- ENTITY(16)	erroneous_manifold_solid_brep
    (no local attributes)

  SUB- ENTITY(17)	inconsistent_curve_transition_code
    REDCR: assessment_specification,	TYPE: shape_data_quality_assessment_by_logical_test -- EXPLICIT
      -- OVERRIDING ENTITY: shape_data_quality_criterion

    ATTR:  angle_tolerance,	TYPE: plane_angle_measure -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  curvature_ratio_tolerance,	TYPE: ratio_measure -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  distance_tolerance,	TYPE: length_measure -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  flat_curvature_radius_tolerance,	TYPE: length_measure -- EXPLICIT	(AMBIGUOUS/MASKED)


  SUB- ENTITY(18)	erroneous_b_spline_curve_definition
    REDCR: assessment_specification,	TYPE: shape_data_quality_assessment_by_logical_test -- EXPLICIT
      -- OVERRIDING ENTITY: shape_data_quality_criterion


  SUB- ENTITY(19)	inconsistent_surface_transition_code
    REDCR: assessment_specification,	TYPE: shape_data_quality_assessment_by_logical_test -- EXPLICIT
      -- OVERRIDING ENTITY: shape_data_quality_criterion

    ATTR:  angle_tolerance,	TYPE: plane_angle_measure -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  curvature_ratio_tolerance,	TYPE: ratio_measure -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  distance_tolerance,	TYPE: length_measure -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  flat_curvature_radius_tolerance,	TYPE: length_measure -- EXPLICIT	(AMBIGUOUS/MASKED)


  SUB- ENTITY(20)	erroneous_b_spline_surface_definition
    REDCR: assessment_specification,	TYPE: shape_data_quality_assessment_by_logical_test -- EXPLICIT
      -- OVERRIDING ENTITY: shape_data_quality_criterion


  SUB- ENTITY(21)	erroneous_geometry
    (no local attributes)

  SUB- ENTITY(22)	open_closed_shell
    REDCR: assessment_specification,	TYPE: shape_data_quality_assessment_by_logical_test -- EXPLICIT
      -- OVERRIDING ENTITY: shape_data_quality_criterion


  SUB- ENTITY(23)	disconnected_face_set
    REDCR: assessment_specification,	TYPE: shape_data_quality_assessment_by_logical_test -- EXPLICIT
      -- OVERRIDING ENTITY: shape_data_quality_criterion


  SUB- ENTITY(24)	inconsistent_adjacent_face_normals
    REDCR: assessment_specification,	TYPE: shape_data_quality_assessment_by_logical_test -- EXPLICIT
      -- OVERRIDING ENTITY: shape_data_quality_criterion


  SUB- ENTITY(25)	open_edge_loop
    REDCR: assessment_specification,	TYPE: shape_data_quality_assessment_by_logical_test -- EXPLICIT
      -- OVERRIDING ENTITY: shape_data_quality_criterion


  SUB- ENTITY(26)	erroneous_topology
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _erroneous_data : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eERRONEOUS_DATA.self
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
  ENTITY erroneous_data
    ABSTRACT SUPERTYPE OF ( 
        ONEOF ( 
            erroneous_topology, 
            erroneous_geometry, 
            erroneous_topology_and_geometry_relationship, 
            erroneous_manifold_solid_brep ) )
    SUBTYPE OF ( shape_data_quality_criterion );
  END_ENTITY; -- erroneous_data (line:13990 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eERRONEOUS_DATA : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _erroneous_data.self
    }
    public let partialEntity: _erroneous_data

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eDATA_QUALITY_CRITERION: eDATA_QUALITY_CRITERION 	// [2]
    public let super_eDATA_QUALITY_MEASUREMENT_REQUIREMENT: eDATA_QUALITY_MEASUREMENT_REQUIREMENT 	// [3]
    public let super_eSHAPE_DATA_QUALITY_CRITERION: eSHAPE_DATA_QUALITY_CRITERION 	// [4]
    public var super_eERRONEOUS_DATA: eERRONEOUS_DATA { return self } 	// [5]

    //MARK: SUBTYPES
    public var sub_eINCONSISTENT_EDGE_AND_CURVE_DIRECTIONS: eINCONSISTENT_EDGE_AND_CURVE_DIRECTIONS? {	// [6]
      return self.complexEntity.entityReference(eINCONSISTENT_EDGE_AND_CURVE_DIRECTIONS.self)
    }

    public var sub_eINCONSISTENT_FACE_AND_SURFACE_NORMALS: eINCONSISTENT_FACE_AND_SURFACE_NORMALS? {	// [7]
      return self.complexEntity.entityReference(eINCONSISTENT_FACE_AND_SURFACE_NORMALS.self)
    }

    public var sub_eINCONSISTENT_FACE_AND_CLOSED_SHELL_NORMALS: eINCONSISTENT_FACE_AND_CLOSED_SHELL_NORMALS? {	// [8]
      return self.complexEntity.entityReference(eINCONSISTENT_FACE_AND_CLOSED_SHELL_NORMALS.self)
    }

    public var sub_eINTERSECTING_LOOPS_IN_FACE: eINTERSECTING_LOOPS_IN_FACE? {	// [9]
      return self.complexEntity.entityReference(eINTERSECTING_LOOPS_IN_FACE.self)
    }

    public var sub_eWRONGLY_PLACED_LOOP: eWRONGLY_PLACED_LOOP? {	// [10]
      return self.complexEntity.entityReference(eWRONGLY_PLACED_LOOP.self)
    }

    public var sub_eERRONEOUS_TOPOLOGY_AND_GEOMETRY_RELATIONSHIP: eERRONEOUS_TOPOLOGY_AND_GEOMETRY_RELATIONSHIP? {	// [11]
      return self.complexEntity.entityReference(eERRONEOUS_TOPOLOGY_AND_GEOMETRY_RELATIONSHIP.self)
    }

    public var sub_eWRONGLY_PLACED_VOID: eWRONGLY_PLACED_VOID? {	// [12]
      return self.complexEntity.entityReference(eWRONGLY_PLACED_VOID.self)
    }

    public var sub_eSOLID_WITH_WRONG_NUMBER_OF_VOIDS: eSOLID_WITH_WRONG_NUMBER_OF_VOIDS? {	// [13]
      return self.complexEntity.entityReference(eSOLID_WITH_WRONG_NUMBER_OF_VOIDS.self)
    }

    public var sub_eWRONGLY_ORIENTED_VOID: eWRONGLY_ORIENTED_VOID? {	// [14]
      return self.complexEntity.entityReference(eWRONGLY_ORIENTED_VOID.self)
    }

    public var sub_eINTERSECTING_SHELLS_IN_SOLID: eINTERSECTING_SHELLS_IN_SOLID? {	// [15]
      return self.complexEntity.entityReference(eINTERSECTING_SHELLS_IN_SOLID.self)
    }

    public var sub_eERRONEOUS_MANIFOLD_SOLID_BREP: eERRONEOUS_MANIFOLD_SOLID_BREP? {	// [16]
      return self.complexEntity.entityReference(eERRONEOUS_MANIFOLD_SOLID_BREP.self)
    }

    public var sub_eINCONSISTENT_CURVE_TRANSITION_CODE: eINCONSISTENT_CURVE_TRANSITION_CODE? {	// [17]
      return self.complexEntity.entityReference(eINCONSISTENT_CURVE_TRANSITION_CODE.self)
    }

    public var sub_eERRONEOUS_B_SPLINE_CURVE_DEFINITION: eERRONEOUS_B_SPLINE_CURVE_DEFINITION? {	// [18]
      return self.complexEntity.entityReference(eERRONEOUS_B_SPLINE_CURVE_DEFINITION.self)
    }

    public var sub_eINCONSISTENT_SURFACE_TRANSITION_CODE: eINCONSISTENT_SURFACE_TRANSITION_CODE? {	// [19]
      return self.complexEntity.entityReference(eINCONSISTENT_SURFACE_TRANSITION_CODE.self)
    }

    public var sub_eERRONEOUS_B_SPLINE_SURFACE_DEFINITION: eERRONEOUS_B_SPLINE_SURFACE_DEFINITION? {	// [20]
      return self.complexEntity.entityReference(eERRONEOUS_B_SPLINE_SURFACE_DEFINITION.self)
    }

    public var sub_eERRONEOUS_GEOMETRY: eERRONEOUS_GEOMETRY? {	// [21]
      return self.complexEntity.entityReference(eERRONEOUS_GEOMETRY.self)
    }

    public var sub_eOPEN_CLOSED_SHELL: eOPEN_CLOSED_SHELL? {	// [22]
      return self.complexEntity.entityReference(eOPEN_CLOSED_SHELL.self)
    }

    public var sub_eDISCONNECTED_FACE_SET: eDISCONNECTED_FACE_SET? {	// [23]
      return self.complexEntity.entityReference(eDISCONNECTED_FACE_SET.self)
    }

    public var sub_eINCONSISTENT_ADJACENT_FACE_NORMALS: eINCONSISTENT_ADJACENT_FACE_NORMALS? {	// [24]
      return self.complexEntity.entityReference(eINCONSISTENT_ADJACENT_FACE_NORMALS.self)
    }

    public var sub_eOPEN_EDGE_LOOP: eOPEN_EDGE_LOOP? {	// [25]
      return self.complexEntity.entityReference(eOPEN_EDGE_LOOP.self)
    }

    public var sub_eERRONEOUS_TOPOLOGY: eERRONEOUS_TOPOLOGY? {	// [26]
      return self.complexEntity.entityReference(eERRONEOUS_TOPOLOGY.self)
    }


    //MARK: ATTRIBUTES
    // FLAT_CURVATURE_RADIUS_TOLERANCE: (2 AMBIGUOUS REFs)

    // ANGLE_TOLERANCE: (2 AMBIGUOUS REFs)

    // DISTANCE_TOLERANCE: (3 AMBIGUOUS REFs)

    // INTERFERENCE_TOLERANCE: (2 AMBIGUOUS REFs)

    // CURVATURE_RATIO_TOLERANCE: (2 AMBIGUOUS REFs)

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eSHAPE_DATA_QUALITY_CRITERION`` )
    public var ASSESSMENT_SPECIFICATION: sSHAPE_DATA_QUALITY_ASSESSMENT_SPECIFICATION_SELECT {
      get {
        return SDAI.UNWRAP( super_eSHAPE_DATA_QUALITY_CRITERION.partialEntity._assessment_specification )
      }
      set(newValue) {
        let partial = super_eSHAPE_DATA_QUALITY_CRITERION.partialEntity
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


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_erroneous_data.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eDATA_QUALITY_CRITERION.self) else { return nil }
      self.super_eDATA_QUALITY_CRITERION = super2

      guard let super3 = complexEntity?.entityReference(eDATA_QUALITY_MEASUREMENT_REQUIREMENT.self) else { return nil }
      self.super_eDATA_QUALITY_MEASUREMENT_REQUIREMENT = super3

      guard let super4 = complexEntity?.entityReference(eSHAPE_DATA_QUALITY_CRITERION.self) else { return nil }
      self.super_eSHAPE_DATA_QUALITY_CRITERION = super4

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "ERRONEOUS_DATA", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eDATA_QUALITY_CRITERION.self)
      entityDef.add(supertype: eDATA_QUALITY_MEASUREMENT_REQUIREMENT.self)
      entityDef.add(supertype: eSHAPE_DATA_QUALITY_CRITERION.self)
      entityDef.add(supertype: eERRONEOUS_DATA.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "ASSESSMENT_SPECIFICATION", keyPath: \eERRONEOUS_DATA.ASSESSMENT_SPECIFICATION, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eERRONEOUS_DATA.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
