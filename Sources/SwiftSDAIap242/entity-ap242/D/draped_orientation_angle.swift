/* file: draped_orientation_angle.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY draped_orientation_angle
    SUBTYPE OF ( ply_orientation_angle );
  END_ENTITY; -- draped_orientation_angle (line:12786 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_relationship
    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT

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
      *** ENTITY: ply_orientation_angle,	TYPE: reinforcement_orientation_basis
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
      *** ENTITY: ply_orientation_angle,	TYPE: ply_angle_representation
          ENTITY: constrained_kinematic_motion_representation,	TYPE: representative_shape_representation
          ENTITY: free_kinematic_motion_representation,	TYPE: representative_shape_representation
          ENTITY: explicit_procedural_shape_representation_relationship,	TYPE: shape_representation


  SUPER- ENTITY(2)	ply_orientation_angle
    REDCR: rep_1,	TYPE: reinforcement_orientation_basis -- EXPLICIT
      -- OVERRIDING ENTITY: representation_relationship

    REDCR: rep_2,	TYPE: ply_angle_representation -- EXPLICIT
      -- OVERRIDING ENTITY: representation_relationship


  ENTITY(SELF)	draped_orientation_angle
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _draped_orientation_angle : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eDRAPED_ORIENTATION_ANGLE.self
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
  ENTITY draped_orientation_angle
    SUBTYPE OF ( ply_orientation_angle );
  END_ENTITY; -- draped_orientation_angle (line:12786 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eDRAPED_ORIENTATION_ANGLE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _draped_orientation_angle.self
    }
    public let partialEntity: _draped_orientation_angle

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_RELATIONSHIP: eREPRESENTATION_RELATIONSHIP 	// [1]
    public let super_ePLY_ORIENTATION_ANGLE: ePLY_ORIENTATION_ANGLE 	// [2]
    public var super_eDRAPED_ORIENTATION_ANGLE: eDRAPED_ORIENTATION_ANGLE { return self } 	// [3]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eREPRESENTATION_RELATIONSHIP`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        return super_eREPRESENTATION_RELATIONSHIP.partialEntity._description
      }
      set(newValue) {
        let partial = super_eREPRESENTATION_RELATIONSHIP.partialEntity
        partial._description = newValue
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SUPER( ``ePLY_ORIENTATION_ANGLE`` )
    public var REP_1: eREINFORCEMENT_ORIENTATION_BASIS {
      get {
        return SDAI.UNWRAP( eREINFORCEMENT_ORIENTATION_BASIS( super_eREPRESENTATION_RELATIONSHIP
          .partialEntity._rep_1 ) )
      }
      set(newValue) {
        let partial = super_eREPRESENTATION_RELATIONSHIP.partialEntity
        partial._rep_1 = SDAI.UNWRAP(
          sREPRESENTATION_OR_REPRESENTATION_REFERENCE(newValue))
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SUPER( ``ePLY_ORIENTATION_ANGLE`` )
    public var REP_2: ePLY_ANGLE_REPRESENTATION {
      get {
        return SDAI.UNWRAP( ePLY_ANGLE_REPRESENTATION( super_eREPRESENTATION_RELATIONSHIP.partialEntity
          ._rep_2 ) )
      }
      set(newValue) {
        let partial = super_eREPRESENTATION_RELATIONSHIP.partialEntity
        partial._rep_2 = SDAI.UNWRAP(
          sREPRESENTATION_OR_REPRESENTATION_REFERENCE(newValue))
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eREPRESENTATION_RELATIONSHIP`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( super_eREPRESENTATION_RELATIONSHIP.partialEntity._name )
      }
      set(newValue) {
        let partial = super_eREPRESENTATION_RELATIONSHIP.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_draped_orientation_angle.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_RELATIONSHIP.self) else { return nil }
      self.super_eREPRESENTATION_RELATIONSHIP = super1

      guard let super2 = complexEntity?.entityReference(ePLY_ORIENTATION_ANGLE.self) else { return nil }
      self.super_ePLY_ORIENTATION_ANGLE = super2

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "DRAPED_ORIENTATION_ANGLE", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_RELATIONSHIP.self)
      entityDef.add(supertype: ePLY_ORIENTATION_ANGLE.self)
      entityDef.add(supertype: eDRAPED_ORIENTATION_ANGLE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eDRAPED_ORIENTATION_ANGLE.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "REP_1", keyPath: \eDRAPED_ORIENTATION_ANGLE.REP_1, 
        kind: .explicitRedeclaring, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "REP_2", keyPath: \eDRAPED_ORIENTATION_ANGLE.REP_2, 
        kind: .explicitRedeclaring, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eDRAPED_ORIENTATION_ANGLE.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}