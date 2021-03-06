/* file: constrained_kinematic_motion_representation.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY constrained_kinematic_motion_representation
    SUBTYPE OF ( representation_relationship_with_transformation );
      SELF\representation_relationship.rep_1 : representative_shape_representation;
      SELF\representation_relationship.rep_2 : representative_shape_representation;
    WHERE
      wr1: ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.AXIS2_PLACEMENT_3D' IN TYPEOF( SELF\
               representation_relationship_with_transformation.transformation_operator\
               item_defined_transformation.transform_item_1 ) ) AND ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.AXIS2_PLACEMENT_3D'  IN TYPEOF( SELF\
               representation_relationship_with_transformation.transformation_operator\
               item_defined_transformation.transform_item_2 ) ) );
      wr2: ( ( dimension_of( SELF\representation_relationship_with_transformation.transformation_operator\
               item_defined_transformation.transform_item_1 ) = 3 ) AND ( dimension_of( SELF\
               representation_relationship_with_transformation.transformation_operator\
               item_defined_transformation.transform_item_2 ) = 3 ) );
      wr3: ( ( SELF\representation_relationship.rep_1 IN ( using_representations( SELF\
               representation_relationship_with_transformation.transformation_operator\
               item_defined_transformation.transform_item_1 ) + using_representation_with_mapping( SELF\
               representation_relationship_with_transformation.transformation_operator\
               item_defined_transformation.transform_item_1 ) ) ) AND ( SELF\representation_relationship.
               rep_2 IN ( using_representations( SELF\representation_relationship_with_transformation.
               transformation_operator\item_defined_transformation.transform_item_2 ) + 
               using_representation_with_mapping( SELF\representation_relationship_with_transformation.
               transformation_operator\item_defined_transformation.transform_item_2 ) ) ) );
      wr4: ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.KINEMATIC_PAIR' IN TYPEOF( SELF\
               representation_relationship_with_transformation.transformation_operator ) );
  END_ENTITY; -- constrained_kinematic_motion_representation (line:10451 file:ap242ed2_mim_lf_v1.101.TY.exp)

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
          ENTITY: ply_orientation_angle,	TYPE: reinforcement_orientation_basis
      *** ENTITY: constrained_kinematic_motion_representation,	TYPE: representative_shape_representation
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
      *** ENTITY: constrained_kinematic_motion_representation,	TYPE: representative_shape_representation
          ENTITY: free_kinematic_motion_representation,	TYPE: representative_shape_representation
          ENTITY: explicit_procedural_shape_representation_relationship,	TYPE: shape_representation


  SUPER- ENTITY(2)	representation_relationship_with_transformation
    ATTR:  transformation_operator,	TYPE: transformation -- EXPLICIT
      -- possibly overriden by
          ENTITY: link_motion_relationship,	TYPE: link_motion_transformation
          ENTITY: pair_representation_relationship,	TYPE: kinematic_pair	(OBSERVED)


  ENTITY(SELF)	constrained_kinematic_motion_representation
    REDCR: rep_1,	TYPE: representative_shape_representation -- EXPLICIT
      -- OVERRIDING ENTITY: representation_relationship

    REDCR: rep_2,	TYPE: representative_shape_representation -- EXPLICIT
      -- OVERRIDING ENTITY: representation_relationship


*/


//MARK: - Partial Entity
  public final class _constrained_kinematic_motion_representation : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eCONSTRAINED_KINEMATIC_MOTION_REPRESENTATION.self
    }

    //ATTRIBUTES
    /* override var _rep_1: eREPRESENTATIVE_SHAPE_REPRESENTATION	//EXPLICIT REDEFINITION(eREPRESENTATION_RELATIONSHIP) */

    /* override var _rep_2: eREPRESENTATIVE_SHAPE_REPRESENTATION	//EXPLICIT REDEFINITION(eREPRESENTATION_RELATIONSHIP) */

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
    public static func WHERE_wr1(SELF: eCONSTRAINED_KINEMATIC_MOTION_REPRESENTATION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF.GROUP_REF(eREPRESENTATION_RELATIONSHIP_WITH_TRANSFORMATION.self)?.TRANSFORMATION_OPERATOR
        .GROUP_REF(eITEM_DEFINED_TRANSFORMATION.self)?.TRANSFORM_ITEM_1, IS: eAXIS2_PLACEMENT_3D.self)
      let _TEMP2 = SDAI.TYPEOF(SELF.GROUP_REF(eREPRESENTATION_RELATIONSHIP_WITH_TRANSFORMATION.self)?.TRANSFORMATION_OPERATOR
        .GROUP_REF(eITEM_DEFINED_TRANSFORMATION.self)?.TRANSFORM_ITEM_2, IS: eAXIS2_PLACEMENT_3D.self)
      let _TEMP3 = _TEMP1 && _TEMP2
      return _TEMP3
    }
    public static func WHERE_wr2(SELF: eCONSTRAINED_KINEMATIC_MOTION_REPRESENTATION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.GROUP_REF(eREPRESENTATION_RELATIONSHIP_WITH_TRANSFORMATION.self)
      let _TEMP2 = _TEMP1?.TRANSFORMATION_OPERATOR
      let _TEMP3 = _TEMP2?.GROUP_REF(eITEM_DEFINED_TRANSFORMATION.self)
      let _TEMP4 = _TEMP3?.TRANSFORM_ITEM_1
      let _TEMP5 = DIMENSION_OF(eGEOMETRIC_REPRESENTATION_ITEM(/*eREPRESENTATION_ITEM*/_TEMP4))
      let _TEMP6 = _TEMP5 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(3))
      let _TEMP7 = SELF.GROUP_REF(eREPRESENTATION_RELATIONSHIP_WITH_TRANSFORMATION.self)
      let _TEMP8 = _TEMP7?.TRANSFORMATION_OPERATOR
      let _TEMP9 = _TEMP8?.GROUP_REF(eITEM_DEFINED_TRANSFORMATION.self)
      let _TEMP10 = _TEMP9?.TRANSFORM_ITEM_2
      let _TEMP11 = DIMENSION_OF(eGEOMETRIC_REPRESENTATION_ITEM(/*eREPRESENTATION_ITEM*/_TEMP10))
      let _TEMP12 = _TEMP11 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(3))
      let _TEMP13 = _TEMP6 && _TEMP12
      return _TEMP13
    }
    public static func WHERE_wr3(SELF: eCONSTRAINED_KINEMATIC_MOTION_REPRESENTATION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.GROUP_REF(eREPRESENTATION_RELATIONSHIP.self)
      let _TEMP2 = _TEMP1?.REP_1
      let _TEMP3 = SELF.GROUP_REF(eREPRESENTATION_RELATIONSHIP_WITH_TRANSFORMATION.self)
      let _TEMP4 = _TEMP3?.TRANSFORMATION_OPERATOR
      let _TEMP5 = _TEMP4?.GROUP_REF(eITEM_DEFINED_TRANSFORMATION.self)
      let _TEMP6 = _TEMP5?.TRANSFORM_ITEM_1
      let _TEMP7 = USING_REPRESENTATIONS(sFOUNDED_ITEM_SELECT(/*eREPRESENTATION_ITEM*/_TEMP6))
      let _TEMP8 = SELF.GROUP_REF(eREPRESENTATION_RELATIONSHIP_WITH_TRANSFORMATION.self)
      let _TEMP9 = _TEMP8?.TRANSFORMATION_OPERATOR
      let _TEMP10 = _TEMP9?.GROUP_REF(eITEM_DEFINED_TRANSFORMATION.self)
      let _TEMP11 = _TEMP10?.TRANSFORM_ITEM_1
      let _TEMP12 = USING_REPRESENTATION_WITH_MAPPING(_TEMP11)
      let _TEMP13 = _TEMP7 + _TEMP12
      let _TEMP14 = SDAI.aggregate(_TEMP13, contains: eREPRESENTATION(/*
        sREPRESENTATION_OR_REPRESENTATION_REFERENCE*/_TEMP2))
      let _TEMP15 = SELF.GROUP_REF(eREPRESENTATION_RELATIONSHIP.self)
      let _TEMP16 = _TEMP15?.REP_2
      let _TEMP17 = SELF.GROUP_REF(eREPRESENTATION_RELATIONSHIP_WITH_TRANSFORMATION.self)
      let _TEMP18 = _TEMP17?.TRANSFORMATION_OPERATOR
      let _TEMP19 = _TEMP18?.GROUP_REF(eITEM_DEFINED_TRANSFORMATION.self)
      let _TEMP20 = _TEMP19?.TRANSFORM_ITEM_2
      let _TEMP21 = USING_REPRESENTATIONS(sFOUNDED_ITEM_SELECT(/*eREPRESENTATION_ITEM*/_TEMP20))
      let _TEMP22 = SELF.GROUP_REF(eREPRESENTATION_RELATIONSHIP_WITH_TRANSFORMATION.self)
      let _TEMP23 = _TEMP22?.TRANSFORMATION_OPERATOR
      let _TEMP24 = _TEMP23?.GROUP_REF(eITEM_DEFINED_TRANSFORMATION.self)
      let _TEMP25 = _TEMP24?.TRANSFORM_ITEM_2
      let _TEMP26 = USING_REPRESENTATION_WITH_MAPPING(_TEMP25)
      let _TEMP27 = _TEMP21 + _TEMP26
      let _TEMP28 = SDAI.aggregate(_TEMP27, contains: eREPRESENTATION(/*
        sREPRESENTATION_OR_REPRESENTATION_REFERENCE*/_TEMP16))
      let _TEMP29 = _TEMP14 && _TEMP28
      return _TEMP29
    }
    public static func WHERE_wr4(SELF: eCONSTRAINED_KINEMATIC_MOTION_REPRESENTATION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF.GROUP_REF(eREPRESENTATION_RELATIONSHIP_WITH_TRANSFORMATION.self)?.TRANSFORMATION_OPERATOR, 
        IS: eKINEMATIC_PAIR.self)
      return _TEMP1
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
  ENTITY constrained_kinematic_motion_representation
    SUBTYPE OF ( representation_relationship_with_transformation );
      SELF\representation_relationship.rep_1 : representative_shape_representation;
      SELF\representation_relationship.rep_2 : representative_shape_representation;
    WHERE
      wr1: ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.AXIS2_PLACEMENT_3D' IN TYPEOF( SELF\
               representation_relationship_with_transformation.transformation_operator\
               item_defined_transformation.transform_item_1 ) ) AND ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.AXIS2_PLACEMENT_3D'  IN TYPEOF( SELF\
               representation_relationship_with_transformation.transformation_operator\
               item_defined_transformation.transform_item_2 ) ) );
      wr2: ( ( dimension_of( SELF\representation_relationship_with_transformation.transformation_operator\
               item_defined_transformation.transform_item_1 ) = 3 ) AND ( dimension_of( SELF\
               representation_relationship_with_transformation.transformation_operator\
               item_defined_transformation.transform_item_2 ) = 3 ) );
      wr3: ( ( SELF\representation_relationship.rep_1 IN ( using_representations( SELF\
               representation_relationship_with_transformation.transformation_operator\
               item_defined_transformation.transform_item_1 ) + using_representation_with_mapping( SELF\
               representation_relationship_with_transformation.transformation_operator\
               item_defined_transformation.transform_item_1 ) ) ) AND ( SELF\representation_relationship.
               rep_2 IN ( using_representations( SELF\representation_relationship_with_transformation.
               transformation_operator\item_defined_transformation.transform_item_2 ) + 
               using_representation_with_mapping( SELF\representation_relationship_with_transformation.
               transformation_operator\item_defined_transformation.transform_item_2 ) ) ) );
      wr4: ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.KINEMATIC_PAIR' IN TYPEOF( SELF\
               representation_relationship_with_transformation.transformation_operator ) );
  END_ENTITY; -- constrained_kinematic_motion_representation (line:10451 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eCONSTRAINED_KINEMATIC_MOTION_REPRESENTATION : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _constrained_kinematic_motion_representation.self
    }
    public let partialEntity: _constrained_kinematic_motion_representation

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_RELATIONSHIP: eREPRESENTATION_RELATIONSHIP 	// [1]
    public let super_eREPRESENTATION_RELATIONSHIP_WITH_TRANSFORMATION: eREPRESENTATION_RELATIONSHIP_WITH_TRANSFORMATION 	// [2]
    public var super_eCONSTRAINED_KINEMATIC_MOTION_REPRESENTATION: eCONSTRAINED_KINEMATIC_MOTION_REPRESENTATION { return self } 	// [3]

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
    /// - origin: SELF( ``eCONSTRAINED_KINEMATIC_MOTION_REPRESENTATION`` )
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
    /// - origin: SELF( ``eCONSTRAINED_KINEMATIC_MOTION_REPRESENTATION`` )
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
      guard let partial = complexEntity?.partialEntityInstance(_constrained_kinematic_motion_representation.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_RELATIONSHIP.self) else { return nil }
      self.super_eREPRESENTATION_RELATIONSHIP = super1

      guard let super2 = complexEntity?.entityReference(eREPRESENTATION_RELATIONSHIP_WITH_TRANSFORMATION.self) else { return nil }
      self.super_eREPRESENTATION_RELATIONSHIP_WITH_TRANSFORMATION = super2

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
      result[prefix2 + " .WHERE_wr1"] = _constrained_kinematic_motion_representation.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _constrained_kinematic_motion_representation.WHERE_wr2(SELF: instance)
      result[prefix2 + " .WHERE_wr3"] = _constrained_kinematic_motion_representation.WHERE_wr3(SELF: instance)
      result[prefix2 + " .WHERE_wr4"] = _constrained_kinematic_motion_representation.WHERE_wr4(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "CONSTRAINED_KINEMATIC_MOTION_REPRESENTATION", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_RELATIONSHIP.self)
      entityDef.add(supertype: eREPRESENTATION_RELATIONSHIP_WITH_TRANSFORMATION.self)
      entityDef.add(supertype: eCONSTRAINED_KINEMATIC_MOTION_REPRESENTATION.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eCONSTRAINED_KINEMATIC_MOTION_REPRESENTATION.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "TRANSFORMATION_OPERATOR", keyPath: \eCONSTRAINED_KINEMATIC_MOTION_REPRESENTATION.TRANSFORMATION_OPERATOR, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "REP_1", keyPath: \eCONSTRAINED_KINEMATIC_MOTION_REPRESENTATION.REP_1, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "REP_2", keyPath: \eCONSTRAINED_KINEMATIC_MOTION_REPRESENTATION.REP_2, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eCONSTRAINED_KINEMATIC_MOTION_REPRESENTATION.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
