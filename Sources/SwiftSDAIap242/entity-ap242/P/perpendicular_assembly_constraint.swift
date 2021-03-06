/* file: perpendicular_assembly_constraint.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY perpendicular_assembly_constraint
    SUBTYPE OF ( binary_assembly_constraint, perpendicular_geometric_constraint );
  END_ENTITY; -- perpendicular_assembly_constraint (line:24331 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT	(AMBIGUOUS/MASKED)


  SUPER- ENTITY(2)	variational_representation_item
    (no local attributes)

  SUPER- ENTITY(3)	explicit_constraint
    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  constrained_elements,	TYPE: SET [1 : ?] OF representation_item -- EXPLICIT
      -- possibly overriden by
          ENTITY: symmetry_geometric_constraint,	TYPE: SET [2 : 2] OF geometric_representation_item
          ENTITY: swept_point_curve_geometric_constraint,	TYPE: SET [1 : ?] OF curve
          ENTITY: coaxial_geometric_constraint,	TYPE: SET [1 : ?] OF axial_geometry_constraint_element
          ENTITY: curve_smoothness_geometric_constraint,	TYPE: SET [1 : 1] OF curve_segment_set
          ENTITY: incidence_geometric_constraint,	TYPE: SET [1 : ?] OF geometric_constraint_element
          ENTITY: curve_length_geometric_constraint,	TYPE: SET [1 : ?] OF bounded_curve
          ENTITY: equal_parameter_constraint,	TYPE: SET [1 : ?] OF variational_parameter
          ENTITY: free_form_constraint,	TYPE: SET [1 : ?] OF variational_parameter
          ENTITY: surface_smoothness_geometric_constraint,	TYPE: SET [1 : 1] OF surface_patch_set
          ENTITY: fixed_element_geometric_constraint,	TYPE: SET [1 : ?] OF geometric_constraint_element
          ENTITY: angle_geometric_constraint,	TYPE: SET [1 : ?] OF linear_geometry_constraint_element
      *** ENTITY: perpendicular_geometric_constraint,	TYPE: SET [1 : ?] OF linear_geometry_constraint_element
          ENTITY: parallel_offset_geometric_constraint,	TYPE: SET [1 : ?] OF curve_or_surface_constraint_element
          ENTITY: surface_distance_geometric_constraint,	TYPE: SET [1 : 2] OF surface
          ENTITY: parallel_geometric_constraint,	TYPE: SET [1 : ?] OF linear_geometry_constraint_element
          ENTITY: point_distance_geometric_constraint,	TYPE: SET [1 : ?] OF point
          ENTITY: radius_geometric_constraint,	TYPE: SET [1 : ?] OF radial_geometry_constraint_element
          ENTITY: skew_line_distance_geometric_constraint,	TYPE: SET [1 : 2] OF line
          ENTITY: explicit_geometric_constraint,	TYPE: SET [1 : ?] OF geometric_representation_item
          ENTITY: curve_distance_geometric_constraint,	TYPE: SET [1 : 2] OF curve
          ENTITY: swept_curve_surface_geometric_constraint,	TYPE: SET [1 : ?] OF surface
          ENTITY: tangent_geometric_constraint,	TYPE: SET [1 : ?] OF curve_or_surface_constraint_element

    ATTR:  reference_elements,	TYPE: SET [0 : ?] OF representation_item -- EXPLICIT
      -- possibly overriden by
          ENTITY: swept_point_curve_geometric_constraint,	TYPE: SET [1 : 1] OF swept_face_solid
          ENTITY: coaxial_geometric_constraint,	TYPE: SET [0 : 1] OF axial_geometry_constraint_element
          ENTITY: incidence_geometric_constraint,	TYPE: SET [0 : ?] OF geometric_constraint_element
          ENTITY: equal_parameter_constraint,	TYPE: SET [0 : 1] OF variational_parameter
          ENTITY: free_form_constraint,	TYPE: SET [0 : ?] OF variational_parameter
          ENTITY: angle_geometric_constraint,	TYPE: SET [0 : 1] OF linear_geometry_constraint_element
      *** ENTITY: perpendicular_geometric_constraint,	TYPE: SET [0 : 2] OF linear_geometry_constraint_element
          ENTITY: parallel_offset_geometric_constraint,	TYPE: SET [0 : 1] OF curve_or_surface_constraint_element
          ENTITY: surface_distance_geometric_constraint,	TYPE: SET [0 : 4] OF point_curve_or_surface_constraint_element
          ENTITY: parallel_geometric_constraint,	TYPE: SET [0 : 1] OF linear_geometry_constraint_element
          ENTITY: point_distance_geometric_constraint,	TYPE: SET [0 : 4] OF point_curve_or_surface_constraint_element
          ENTITY: skew_line_distance_geometric_constraint,	TYPE: SET [0 : 1] OF line
          ENTITY: explicit_geometric_constraint,	TYPE: SET [0 : ?] OF geometric_representation_item
          ENTITY: curve_distance_geometric_constraint,	TYPE: SET [0 : 4] OF point_curve_or_surface_constraint_element
          ENTITY: swept_curve_surface_geometric_constraint,	TYPE: SET [1 : 1] OF swept_surface_or_solid
          ENTITY: tangent_geometric_constraint,	TYPE: SET [0 : ?] OF curve_or_surface_constraint_element


  SUPER- ENTITY(4)	assembly_geometric_constraint
    (no local attributes)

  SUPER- ENTITY(5)	representation_relationship
    ATTR:  name,	TYPE: label -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  rep_1,	TYPE: representation_or_representation_reference -- EXPLICIT
      -- possibly overriden by
          ENTITY: mechanical_design_and_draughting_relationship,	TYPE: mechanical_design_and_draughting_relationship_select
          ENTITY: constructive_geometry_representation_relationship,	TYPE: constructive_geometry_representation_or_shape_representation
          ENTITY: kinematic_link_representation_association,	TYPE: kinematic_link_representation	(OBSERVED)
      *** ENTITY: binary_assembly_constraint,	TYPE: representative_shape_representation
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
      *** ENTITY: binary_assembly_constraint,	TYPE: representative_shape_representation
          ENTITY: shape_data_quality_inspected_shape_and_result_relationship,	TYPE: shape_data_quality_inspection_result_representation
          ENTITY: link_motion_relationship,	TYPE: link_motion_representation_along_path
          ENTITY: pair_representation_relationship,	TYPE: kinematic_link_representation
          ENTITY: ply_orientation_angle,	TYPE: ply_angle_representation
          ENTITY: constrained_kinematic_motion_representation,	TYPE: representative_shape_representation
          ENTITY: free_kinematic_motion_representation,	TYPE: representative_shape_representation
          ENTITY: explicit_procedural_shape_representation_relationship,	TYPE: shape_representation


  SUPER- ENTITY(6)	representation_relationship_with_transformation
    ATTR:  transformation_operator,	TYPE: transformation -- EXPLICIT
      -- possibly overriden by
          ENTITY: link_motion_relationship,	TYPE: link_motion_transformation
          ENTITY: pair_representation_relationship,	TYPE: kinematic_pair	(OBSERVED)


  SUPER- ENTITY(7)	binary_assembly_constraint
    REDCR: rep_1,	TYPE: representative_shape_representation -- EXPLICIT
      -- OVERRIDING ENTITY: representation_relationship

    REDCR: rep_2,	TYPE: representative_shape_representation -- EXPLICIT
      -- OVERRIDING ENTITY: representation_relationship


  SUPER- ENTITY(8)	defined_constraint
    (no local attributes)

  SUPER- ENTITY(9)	geometric_representation_item
    ATTR:  dim,	TYPE: dimension_count -- DERIVED
      := dimension_of( SELF )


  SUPER- ENTITY(10)	explicit_geometric_constraint
    REDCR: constrained_elements,	TYPE: SET [1 : ?] OF geometric_representation_item -- EXPLICIT
      -- OVERRIDING ENTITY: explicit_constraint

    REDCR: reference_elements,	TYPE: SET [0 : ?] OF geometric_representation_item -- EXPLICIT
      -- OVERRIDING ENTITY: explicit_constraint


  SUPER- ENTITY(11)	perpendicular_geometric_constraint
    REDCR: constrained_elements,	TYPE: SET [1 : ?] OF linear_geometry_constraint_element -- EXPLICIT
      -- OVERRIDING ENTITY: explicit_constraint

    REDCR: reference_elements,	TYPE: SET [0 : 2] OF linear_geometry_constraint_element -- EXPLICIT
      -- OVERRIDING ENTITY: explicit_constraint


  ENTITY(SELF)	perpendicular_assembly_constraint
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _perpendicular_assembly_constraint : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      ePERPENDICULAR_ASSEMBLY_CONSTRAINT.self
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
  ENTITY perpendicular_assembly_constraint
    SUBTYPE OF ( binary_assembly_constraint, perpendicular_geometric_constraint );
  END_ENTITY; -- perpendicular_assembly_constraint (line:24331 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class ePERPENDICULAR_ASSEMBLY_CONSTRAINT : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _perpendicular_assembly_constraint.self
    }
    public let partialEntity: _perpendicular_assembly_constraint

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eVARIATIONAL_REPRESENTATION_ITEM: eVARIATIONAL_REPRESENTATION_ITEM 	// [2]
    public let super_eEXPLICIT_CONSTRAINT: eEXPLICIT_CONSTRAINT 	// [3]
    public let super_eASSEMBLY_GEOMETRIC_CONSTRAINT: eASSEMBLY_GEOMETRIC_CONSTRAINT 	// [4]
    public let super_eREPRESENTATION_RELATIONSHIP: eREPRESENTATION_RELATIONSHIP 	// [5]
    public let super_eREPRESENTATION_RELATIONSHIP_WITH_TRANSFORMATION: eREPRESENTATION_RELATIONSHIP_WITH_TRANSFORMATION 	// [6]
    public let super_eBINARY_ASSEMBLY_CONSTRAINT: eBINARY_ASSEMBLY_CONSTRAINT 	// [7]
    public let super_eDEFINED_CONSTRAINT: eDEFINED_CONSTRAINT 	// [8]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [9]
    public let super_eEXPLICIT_GEOMETRIC_CONSTRAINT: eEXPLICIT_GEOMETRIC_CONSTRAINT 	// [10]
    public let super_ePERPENDICULAR_GEOMETRIC_CONSTRAINT: ePERPENDICULAR_GEOMETRIC_CONSTRAINT 	// [11]
    public var super_ePERPENDICULAR_ASSEMBLY_CONSTRAINT: ePERPENDICULAR_ASSEMBLY_CONSTRAINT { return self } 	// [12]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    // DESCRIPTION: (2 AMBIGUOUS REFs)

    // NAME: (2 AMBIGUOUS REFs)

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eREPRESENTATION_RELATIONSHIP_WITH_TRANSFORMATION`` )
    public var TRANSFORMATION_OPERATOR: sTRANSFORMATION {
      get {
        return SDAI.UNWRAP( super_eREPRESENTATION_RELATIONSHIP_WITH_TRANSFORMATION.partialEntity
          ._transformation_operator )
      }
      set(newValue) {
        let partial = super_eREPRESENTATION_RELATIONSHIP_WITH_TRANSFORMATION.partialEntity
        partial._transformation_operator = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SUPER( ``ePERPENDICULAR_GEOMETRIC_CONSTRAINT`` )
    public var CONSTRAINED_ELEMENTS: SDAI.SET<sLINEAR_GEOMETRY_CONSTRAINT_ELEMENT>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( SDAI.SET<sLINEAR_GEOMETRY_CONSTRAINT_ELEMENT>( super_eEXPLICIT_CONSTRAINT
          .partialEntity._constrained_elements ) )
      }
      set(newValue) {
        let partial = super_eEXPLICIT_CONSTRAINT.partialEntity
        partial._constrained_elements = SDAI.UNWRAP(
          SDAI.SET<eREPRESENTATION_ITEM>(newValue))
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SUPER( ``ePERPENDICULAR_GEOMETRIC_CONSTRAINT`` )
    public var REFERENCE_ELEMENTS: SDAI.SET<sLINEAR_GEOMETRY_CONSTRAINT_ELEMENT>/*[0:2]*/  {
      get {
        return SDAI.UNWRAP( SDAI.SET<sLINEAR_GEOMETRY_CONSTRAINT_ELEMENT>( super_eEXPLICIT_CONSTRAINT
          .partialEntity._reference_elements ) )
      }
      set(newValue) {
        let partial = super_eEXPLICIT_CONSTRAINT.partialEntity
        partial._reference_elements = SDAI.UNWRAP(
          SDAI.SET<eREPRESENTATION_ITEM>(newValue))
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SUPER( ``eBINARY_ASSEMBLY_CONSTRAINT`` )
    public var REP_1: eREPRESENTATIVE_SHAPE_REPRESENTATION {
      get {
        return SDAI.UNWRAP( eREPRESENTATIVE_SHAPE_REPRESENTATION( super_eREPRESENTATION_RELATIONSHIP
          .partialEntity._rep_1 ) )
      }
      set(newValue) {
        let partial = super_eREPRESENTATION_RELATIONSHIP.partialEntity
        partial._rep_1 = SDAI.UNWRAP(
          sREPRESENTATION_OR_REPRESENTATION_REFERENCE(newValue))
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SUPER( ``eBINARY_ASSEMBLY_CONSTRAINT`` )
    public var REP_2: eREPRESENTATIVE_SHAPE_REPRESENTATION {
      get {
        return SDAI.UNWRAP( eREPRESENTATIVE_SHAPE_REPRESENTATION( super_eREPRESENTATION_RELATIONSHIP
          .partialEntity._rep_2 ) )
      }
      set(newValue) {
        let partial = super_eREPRESENTATION_RELATIONSHIP.partialEntity
        partial._rep_2 = SDAI.UNWRAP(
          sREPRESENTATION_OR_REPRESENTATION_REFERENCE(newValue))
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eGEOMETRIC_REPRESENTATION_ITEM`` )
    public var DIM: tDIMENSION_COUNT?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"DIM") {
          return cached.value as! tDIMENSION_COUNT? 
        }
        let origin = super_eGEOMETRIC_REPRESENTATION_ITEM
        let value = tDIMENSION_COUNT(origin.partialEntity._dim__getter(SELF: origin))
        updateCache(derivedAttributeName:"DIM", value:value)
        return value
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_perpendicular_assembly_constraint.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eVARIATIONAL_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eVARIATIONAL_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(eEXPLICIT_CONSTRAINT.self) else { return nil }
      self.super_eEXPLICIT_CONSTRAINT = super3

      guard let super4 = complexEntity?.entityReference(eASSEMBLY_GEOMETRIC_CONSTRAINT.self) else { return nil }
      self.super_eASSEMBLY_GEOMETRIC_CONSTRAINT = super4

      guard let super5 = complexEntity?.entityReference(eREPRESENTATION_RELATIONSHIP.self) else { return nil }
      self.super_eREPRESENTATION_RELATIONSHIP = super5

      guard let super6 = complexEntity?.entityReference(eREPRESENTATION_RELATIONSHIP_WITH_TRANSFORMATION.self) else { return nil }
      self.super_eREPRESENTATION_RELATIONSHIP_WITH_TRANSFORMATION = super6

      guard let super7 = complexEntity?.entityReference(eBINARY_ASSEMBLY_CONSTRAINT.self) else { return nil }
      self.super_eBINARY_ASSEMBLY_CONSTRAINT = super7

      guard let super8 = complexEntity?.entityReference(eDEFINED_CONSTRAINT.self) else { return nil }
      self.super_eDEFINED_CONSTRAINT = super8

      guard let super9 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super9

      guard let super10 = complexEntity?.entityReference(eEXPLICIT_GEOMETRIC_CONSTRAINT.self) else { return nil }
      self.super_eEXPLICIT_GEOMETRIC_CONSTRAINT = super10

      guard let super11 = complexEntity?.entityReference(ePERPENDICULAR_GEOMETRIC_CONSTRAINT.self) else { return nil }
      self.super_ePERPENDICULAR_GEOMETRIC_CONSTRAINT = super11

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "PERPENDICULAR_ASSEMBLY_CONSTRAINT", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eVARIATIONAL_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eEXPLICIT_CONSTRAINT.self)
      entityDef.add(supertype: eASSEMBLY_GEOMETRIC_CONSTRAINT.self)
      entityDef.add(supertype: eREPRESENTATION_RELATIONSHIP.self)
      entityDef.add(supertype: eREPRESENTATION_RELATIONSHIP_WITH_TRANSFORMATION.self)
      entityDef.add(supertype: eBINARY_ASSEMBLY_CONSTRAINT.self)
      entityDef.add(supertype: eDEFINED_CONSTRAINT.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eEXPLICIT_GEOMETRIC_CONSTRAINT.self)
      entityDef.add(supertype: ePERPENDICULAR_GEOMETRIC_CONSTRAINT.self)
      entityDef.add(supertype: ePERPENDICULAR_ASSEMBLY_CONSTRAINT.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "TRANSFORMATION_OPERATOR", keyPath: \ePERPENDICULAR_ASSEMBLY_CONSTRAINT.TRANSFORMATION_OPERATOR, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "CONSTRAINED_ELEMENTS", keyPath: \ePERPENDICULAR_ASSEMBLY_CONSTRAINT.CONSTRAINED_ELEMENTS, 
        kind: .explicitRedeclaring, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "REFERENCE_ELEMENTS", keyPath: \ePERPENDICULAR_ASSEMBLY_CONSTRAINT.REFERENCE_ELEMENTS, 
        kind: .explicitRedeclaring, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "REP_1", keyPath: \ePERPENDICULAR_ASSEMBLY_CONSTRAINT.REP_1, 
        kind: .explicitRedeclaring, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "REP_2", keyPath: \ePERPENDICULAR_ASSEMBLY_CONSTRAINT.REP_2, 
        kind: .explicitRedeclaring, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DIM", keyPath: \ePERPENDICULAR_ASSEMBLY_CONSTRAINT.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
