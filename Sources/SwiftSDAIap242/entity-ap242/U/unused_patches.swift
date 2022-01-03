/* file: unused_patches.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY unused_patches
    SUBTYPE OF ( overcomplex_topology_and_geometry_relationship );
      SELF\shape_data_quality_criterion.assessment_specification :
                                          shape_data_quality_assessment_by_numerical_test;
    WHERE
      wr1: ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_DATA_QUALITY_LOWER_VALUE_LIMIT' IN 
               TYPEOF( SELF\shape_data_quality_criterion.assessment_specification\
               shape_data_quality_assessment_by_numerical_test.threshold ) ) AND ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.COUNT_MEASURE'  IN value_limit_type( SELF\
               shape_data_quality_criterion.assessment_specification\
               shape_data_quality_assessment_by_numerical_test.threshold ) ) );
      wr2: validate_measured_data_type( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.COUNT_MEASURE' );
      wr3: validate_inspected_elements_type( SELF, [ 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'FACE_SURFACE' ] );
      wr4: validate_locations_of_extreme_value_type( SELF, [ 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'B_SPLINE_SURFACE_STRIP' ] );
      wr5: validate_accuracy_types( SELF, [] );
  END_ENTITY; -- unused_patches (line:33330 file:ap242ed2_mim_lf_v1.101.TY.exp)

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
      *** ENTITY: unused_patches,	TYPE: shape_data_quality_assessment_by_numerical_test
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


  SUPER- ENTITY(5)	inapt_data
    (no local attributes)

  SUPER- ENTITY(6)	inapt_topology_and_geometry_relationship
    (no local attributes)

  SUPER- ENTITY(7)	overcomplex_topology_and_geometry_relationship
    (no local attributes)

  ENTITY(SELF)	unused_patches
    REDCR: assessment_specification,	TYPE: shape_data_quality_assessment_by_numerical_test -- EXPLICIT
      -- OVERRIDING ENTITY: shape_data_quality_criterion


*/


//MARK: - Partial Entity
  public final class _unused_patches : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eUNUSED_PATCHES.self
    }

    //ATTRIBUTES
    /* override var _assessment_specification: eSHAPE_DATA_QUALITY_ASSESSMENT_BY_NUMERICAL_TEST	//EXPLICIT REDEFINITION(eSHAPE_DATA_QUALITY_CRITERION) */

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


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eUNUSED_PATCHES?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF.GROUP_REF(eSHAPE_DATA_QUALITY_CRITERION.self)?.ASSESSMENT_SPECIFICATION
        .GROUP_REF(eSHAPE_DATA_QUALITY_ASSESSMENT_BY_NUMERICAL_TEST.self)?.THRESHOLD, 
        IS: eSHAPE_DATA_QUALITY_LOWER_VALUE_LIMIT.self)
      let _TEMP2 = SELF.GROUP_REF(eSHAPE_DATA_QUALITY_CRITERION.self)
      let _TEMP3 = _TEMP2?.ASSESSMENT_SPECIFICATION
      let _TEMP4 = _TEMP3?.GROUP_REF(eSHAPE_DATA_QUALITY_ASSESSMENT_BY_NUMERICAL_TEST.self)
      let _TEMP5 = _TEMP4?.THRESHOLD
      let _TEMP6 = VALUE_LIMIT_TYPE(_TEMP5)
      let _TEMP7 = SDAI.aggregate(_TEMP6, contains: SDAI.STRING(
        "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.COUNT_MEASURE"))
      let _TEMP8 = _TEMP1 && _TEMP7
      return _TEMP8
    }
    public static func WHERE_wr2(SELF: eUNUSED_PATCHES?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = VALIDATE_MEASURED_DATA_TYPE(
        EI: eSHAPE_DATA_QUALITY_CRITERION(/*eUNUSED_PATCHES*/SELF), 
        TYPE_STRING: SDAI.STRING("AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.COUNT_MEASURE"))
      return _TEMP1
    }
    public static func WHERE_wr3(SELF: eUNUSED_PATCHES?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.BAG<SDAI.STRING>(([
        SDAI.AIE(SDAI.STRING("AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.FACE_SURFACE"))] 
        as [SDAI.AggregationInitializerElement<SDAI.STRING>]))
      let _TEMP2 = VALIDATE_INSPECTED_ELEMENTS_TYPE(
        EI: eSHAPE_DATA_QUALITY_CRITERION(/*eUNUSED_PATCHES*/SELF), 
        TYPE_LIST: _TEMP1)
      return _TEMP2
    }
    public static func WHERE_wr4(SELF: eUNUSED_PATCHES?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.BAG<SDAI.STRING>(([
        SDAI.AIE(SDAI.STRING("AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.B_SPLINE_SURFACE_STRIP"))] 
        as [SDAI.AggregationInitializerElement<SDAI.STRING>]))
      let _TEMP2 = VALIDATE_LOCATIONS_OF_EXTREME_VALUE_TYPE(
        EI: eSHAPE_DATA_QUALITY_CRITERION(/*eUNUSED_PATCHES*/SELF), 
        TYPE_LIST: _TEMP1)
      return _TEMP2
    }
    public static func WHERE_wr5(SELF: eUNUSED_PATCHES?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.BAG<SDAI.STRING>(SDAI.EMPLY_AGGREGATE)
      let _TEMP2 = VALIDATE_ACCURACY_TYPES(
        EI: eSHAPE_DATA_QUALITY_CRITERION(/*eUNUSED_PATCHES*/SELF), 
        TYPE_LIST: _TEMP1)
      return _TEMP2
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
  ENTITY unused_patches
    SUBTYPE OF ( overcomplex_topology_and_geometry_relationship );
      SELF\shape_data_quality_criterion.assessment_specification :
                                          shape_data_quality_assessment_by_numerical_test;
    WHERE
      wr1: ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_DATA_QUALITY_LOWER_VALUE_LIMIT' IN 
               TYPEOF( SELF\shape_data_quality_criterion.assessment_specification\
               shape_data_quality_assessment_by_numerical_test.threshold ) ) AND ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.COUNT_MEASURE'  IN value_limit_type( SELF\
               shape_data_quality_criterion.assessment_specification\
               shape_data_quality_assessment_by_numerical_test.threshold ) ) );
      wr2: validate_measured_data_type( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.COUNT_MEASURE' );
      wr3: validate_inspected_elements_type( SELF, [ 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'FACE_SURFACE' ] );
      wr4: validate_locations_of_extreme_value_type( SELF, [ 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'B_SPLINE_SURFACE_STRIP' ] );
      wr5: validate_accuracy_types( SELF, [] );
  END_ENTITY; -- unused_patches (line:33330 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eUNUSED_PATCHES : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _unused_patches.self
    }
    public let partialEntity: _unused_patches

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eDATA_QUALITY_CRITERION: eDATA_QUALITY_CRITERION 	// [2]
    public let super_eDATA_QUALITY_MEASUREMENT_REQUIREMENT: eDATA_QUALITY_MEASUREMENT_REQUIREMENT 	// [3]
    public let super_eSHAPE_DATA_QUALITY_CRITERION: eSHAPE_DATA_QUALITY_CRITERION 	// [4]
    public let super_eINAPT_DATA: eINAPT_DATA 	// [5]
    public let super_eINAPT_TOPOLOGY_AND_GEOMETRY_RELATIONSHIP: eINAPT_TOPOLOGY_AND_GEOMETRY_RELATIONSHIP 	// [6]
    public let super_eOVERCOMPLEX_TOPOLOGY_AND_GEOMETRY_RELATIONSHIP: eOVERCOMPLEX_TOPOLOGY_AND_GEOMETRY_RELATIONSHIP 	// [7]
    public var super_eUNUSED_PATCHES: eUNUSED_PATCHES { return self } 	// [8]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT REDEF__ attribute
    /// - origin: SELF( ``eUNUSED_PATCHES`` )
    public var ASSESSMENT_SPECIFICATION: eSHAPE_DATA_QUALITY_ASSESSMENT_BY_NUMERICAL_TEST {
      get {
        return SDAI.UNWRAP( eSHAPE_DATA_QUALITY_ASSESSMENT_BY_NUMERICAL_TEST( super_eSHAPE_DATA_QUALITY_CRITERION
          .partialEntity._assessment_specification ) )
      }
      set(newValue) {
        let partial = super_eSHAPE_DATA_QUALITY_CRITERION.partialEntity
        partial._assessment_specification = SDAI.UNWRAP(
          sSHAPE_DATA_QUALITY_ASSESSMENT_SPECIFICATION_SELECT(newValue))
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
      guard let partial = complexEntity?.partialEntityInstance(_unused_patches.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eDATA_QUALITY_CRITERION.self) else { return nil }
      self.super_eDATA_QUALITY_CRITERION = super2

      guard let super3 = complexEntity?.entityReference(eDATA_QUALITY_MEASUREMENT_REQUIREMENT.self) else { return nil }
      self.super_eDATA_QUALITY_MEASUREMENT_REQUIREMENT = super3

      guard let super4 = complexEntity?.entityReference(eSHAPE_DATA_QUALITY_CRITERION.self) else { return nil }
      self.super_eSHAPE_DATA_QUALITY_CRITERION = super4

      guard let super5 = complexEntity?.entityReference(eINAPT_DATA.self) else { return nil }
      self.super_eINAPT_DATA = super5

      guard let super6 = complexEntity?.entityReference(eINAPT_TOPOLOGY_AND_GEOMETRY_RELATIONSHIP.self) else { return nil }
      self.super_eINAPT_TOPOLOGY_AND_GEOMETRY_RELATIONSHIP = super6

      guard let super7 = complexEntity?.entityReference(eOVERCOMPLEX_TOPOLOGY_AND_GEOMETRY_RELATIONSHIP.self) else { return nil }
      self.super_eOVERCOMPLEX_TOPOLOGY_AND_GEOMETRY_RELATIONSHIP = super7

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
      result[prefix2 + " .WHERE_wr1"] = _unused_patches.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _unused_patches.WHERE_wr2(SELF: instance)
      result[prefix2 + " .WHERE_wr3"] = _unused_patches.WHERE_wr3(SELF: instance)
      result[prefix2 + " .WHERE_wr4"] = _unused_patches.WHERE_wr4(SELF: instance)
      result[prefix2 + " .WHERE_wr5"] = _unused_patches.WHERE_wr5(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "UNUSED_PATCHES", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eDATA_QUALITY_CRITERION.self)
      entityDef.add(supertype: eDATA_QUALITY_MEASUREMENT_REQUIREMENT.self)
      entityDef.add(supertype: eSHAPE_DATA_QUALITY_CRITERION.self)
      entityDef.add(supertype: eINAPT_DATA.self)
      entityDef.add(supertype: eINAPT_TOPOLOGY_AND_GEOMETRY_RELATIONSHIP.self)
      entityDef.add(supertype: eOVERCOMPLEX_TOPOLOGY_AND_GEOMETRY_RELATIONSHIP.self)
      entityDef.add(supertype: eUNUSED_PATCHES.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "ASSESSMENT_SPECIFICATION", keyPath: \eUNUSED_PATCHES.ASSESSMENT_SPECIFICATION, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eUNUSED_PATCHES.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
