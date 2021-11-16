/* file: constructive_geometry_representation_relationship.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY constructive_geometry_representation_relationship
    SUBTYPE OF ( representation_relationship );
      SELF\representation_relationship.rep_1 : constructive_geometry_representation_or_shape_representation;
      SELF\representation_relationship.rep_2 : constructive_geometry_representation;
    WHERE
      wr1: ( ( SELF.rep_1.context_of_items :=: SELF.rep_2.context_of_items ) AND ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.GEOMETRIC_REPRESENTATION_CONTEXT'  IN 
               TYPEOF( SELF.rep_1.context_of_items ) ) );
      wr2: ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'REPRESENTATION_RELATIONSHIP_WITH_TRANSFORMATION'  IN TYPEOF( SELF ) ) );
  END_ENTITY; -- constructive_geometry_representation_relationship (line:10496 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_relationship
    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT

    ATTR:  rep_1,	TYPE: representation_or_representation_reference -- EXPLICIT
      -- possibly overriden by
          ENTITY: mechanical_design_and_draughting_relationship,	TYPE: mechanical_design_and_draughting_relationship_select
      *** ENTITY: constructive_geometry_representation_relationship,	TYPE: constructive_geometry_representation_or_shape_representation
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
      *** ENTITY: constructive_geometry_representation_relationship,	TYPE: constructive_geometry_representation
          ENTITY: kinematic_link_representation_association,	TYPE: shape_representation
          ENTITY: binary_assembly_constraint,	TYPE: representative_shape_representation
          ENTITY: shape_data_quality_inspected_shape_and_result_relationship,	TYPE: shape_data_quality_inspection_result_representation
          ENTITY: link_motion_relationship,	TYPE: link_motion_representation_along_path
          ENTITY: pair_representation_relationship,	TYPE: kinematic_link_representation
          ENTITY: ply_orientation_angle,	TYPE: ply_angle_representation
          ENTITY: constrained_kinematic_motion_representation,	TYPE: representative_shape_representation
          ENTITY: free_kinematic_motion_representation,	TYPE: representative_shape_representation
          ENTITY: explicit_procedural_shape_representation_relationship,	TYPE: shape_representation


  ENTITY(SELF)	constructive_geometry_representation_relationship
    REDCR: rep_1,	TYPE: constructive_geometry_representation_or_shape_representation -- EXPLICIT
      -- OVERRIDING ENTITY: representation_relationship

    REDCR: rep_2,	TYPE: constructive_geometry_representation -- EXPLICIT
      -- OVERRIDING ENTITY: representation_relationship


*/


//MARK: - Partial Entity
  public final class _constructive_geometry_representation_relationship : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eCONSTRUCTIVE_GEOMETRY_REPRESENTATION_RELATIONSHIP.self
    }

    //ATTRIBUTES
    /* override var _rep_1: sCONSTRUCTIVE_GEOMETRY_REPRESENTATION_OR_SHAPE_REPRESENTATION	//EXPLICIT REDEFINITION(eREPRESENTATION_RELATIONSHIP) */

    /* override var _rep_2: eCONSTRUCTIVE_GEOMETRY_REPRESENTATION	//EXPLICIT REDEFINITION(eREPRESENTATION_RELATIONSHIP) */

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
    public static func WHERE_wr1(SELF: eCONSTRUCTIVE_GEOMETRY_REPRESENTATION_RELATIONSHIP?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.REP_1
      let _TEMP2 = _TEMP1.CONTEXT_OF_ITEMS
      let _TEMP3 = SELF.REP_2
      let _TEMP4 = _TEMP3.CONTEXT_OF_ITEMS
      let _TEMP5 = _TEMP2 .===. SDAI.FORCE_OPTIONAL(_TEMP4)
      let _TEMP6 = SDAI.TYPEOF(SELF.REP_1.CONTEXT_OF_ITEMS, IS: eGEOMETRIC_REPRESENTATION_CONTEXT.self)
      let _TEMP7 = _TEMP5 && _TEMP6
      return _TEMP7
    }
    public static func WHERE_wr2(SELF: eCONSTRUCTIVE_GEOMETRY_REPRESENTATION_RELATIONSHIP?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF, IS: eREPRESENTATION_RELATIONSHIP_WITH_TRANSFORMATION.self)
      let _TEMP2 =  !_TEMP1
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
  ENTITY constructive_geometry_representation_relationship
    SUBTYPE OF ( representation_relationship );
      SELF\representation_relationship.rep_1 : constructive_geometry_representation_or_shape_representation;
      SELF\representation_relationship.rep_2 : constructive_geometry_representation;
    WHERE
      wr1: ( ( SELF.rep_1.context_of_items :=: SELF.rep_2.context_of_items ) AND ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.GEOMETRIC_REPRESENTATION_CONTEXT'  IN 
               TYPEOF( SELF.rep_1.context_of_items ) ) );
      wr2: ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'REPRESENTATION_RELATIONSHIP_WITH_TRANSFORMATION'  IN TYPEOF( SELF ) ) );
  END_ENTITY; -- constructive_geometry_representation_relationship (line:10496 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eCONSTRUCTIVE_GEOMETRY_REPRESENTATION_RELATIONSHIP : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _constructive_geometry_representation_relationship.self
    }
    public let partialEntity: _constructive_geometry_representation_relationship

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_RELATIONSHIP: eREPRESENTATION_RELATIONSHIP 	// [1]
    public var super_eCONSTRUCTIVE_GEOMETRY_REPRESENTATION_RELATIONSHIP: eCONSTRUCTIVE_GEOMETRY_REPRESENTATION_RELATIONSHIP { return self } 	// [2]

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
    /// - origin: SELF( ``eCONSTRUCTIVE_GEOMETRY_REPRESENTATION_RELATIONSHIP`` )
    public var REP_1: sCONSTRUCTIVE_GEOMETRY_REPRESENTATION_OR_SHAPE_REPRESENTATION {
      get {
        return SDAI.UNWRAP( sCONSTRUCTIVE_GEOMETRY_REPRESENTATION_OR_SHAPE_REPRESENTATION( super_eREPRESENTATION_RELATIONSHIP
          .partialEntity._rep_1 ) )
      }
      set(newValue) {
        let partial = super_eREPRESENTATION_RELATIONSHIP.partialEntity
        partial._rep_1 = SDAI.UNWRAP(
          sREPRESENTATION_OR_REPRESENTATION_REFERENCE(newValue))
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SELF( ``eCONSTRUCTIVE_GEOMETRY_REPRESENTATION_RELATIONSHIP`` )
    public var REP_2: eCONSTRUCTIVE_GEOMETRY_REPRESENTATION {
      get {
        return SDAI.UNWRAP( eCONSTRUCTIVE_GEOMETRY_REPRESENTATION( super_eREPRESENTATION_RELATIONSHIP
          .partialEntity._rep_2 ) )
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
      guard let partial = complexEntity?.partialEntityInstance(_constructive_geometry_representation_relationship.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_RELATIONSHIP.self) else { return nil }
      self.super_eREPRESENTATION_RELATIONSHIP = super1

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
      result[prefix2 + " .WHERE_wr1"] = _constructive_geometry_representation_relationship.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _constructive_geometry_representation_relationship.WHERE_wr2(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "CONSTRUCTIVE_GEOMETRY_REPRESENTATION_RELATIONSHIP", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_RELATIONSHIP.self)
      entityDef.add(supertype: eCONSTRUCTIVE_GEOMETRY_REPRESENTATION_RELATIONSHIP.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eCONSTRUCTIVE_GEOMETRY_REPRESENTATION_RELATIONSHIP.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "REP_1", keyPath: \eCONSTRUCTIVE_GEOMETRY_REPRESENTATION_RELATIONSHIP.REP_1, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "REP_2", keyPath: \eCONSTRUCTIVE_GEOMETRY_REPRESENTATION_RELATIONSHIP.REP_2, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eCONSTRUCTIVE_GEOMETRY_REPRESENTATION_RELATIONSHIP.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
