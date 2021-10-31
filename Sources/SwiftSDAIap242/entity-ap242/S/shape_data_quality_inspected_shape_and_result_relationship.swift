/* file: shape_data_quality_inspected_shape_and_result_relationship.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  ENTITY shape_data_quality_inspected_shape_and_result_relationship
    SUBTYPE OF ( shape_representation_relationship );
      SELF\representation_relationship.rep_1 : shape_representation;
      SELF\representation_relationship.rep_2 : shape_data_quality_inspection_result_representation;
    WHERE
      wr1: ( SIZEOF( using_product_definition_of_shape_representation( SELF.rep_1 ) * bag_to_set( 
               inspected_product_definition( SELF.rep_2 ) ) ) > 0 );
      wr2: ( SELF.rep_1\representation.context_of_items :=: SELF.rep_2\representation.context_of_items );
  END_ENTITY; -- shape_data_quality_inspected_shape_and_result_relationship (line:28755 file:ap242ed2_mim_lf_v1.101.TY.exp)

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
      *** ENTITY: shape_data_quality_inspected_shape_and_result_relationship,	TYPE: shape_representation
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
          ENTITY: binary_assembly_constraint,	TYPE: representative_shape_representation
      *** ENTITY: shape_data_quality_inspected_shape_and_result_relationship,	TYPE: shape_data_quality_inspection_result_representation
          ENTITY: link_motion_relationship,	TYPE: link_motion_representation_along_path
          ENTITY: pair_representation_relationship,	TYPE: kinematic_link_representation
          ENTITY: ply_orientation_angle,	TYPE: ply_angle_representation
          ENTITY: constrained_kinematic_motion_representation,	TYPE: representative_shape_representation
          ENTITY: free_kinematic_motion_representation,	TYPE: representative_shape_representation
          ENTITY: explicit_procedural_shape_representation_relationship,	TYPE: shape_representation


  SUPER- ENTITY(2)	shape_representation_relationship
    (no local attributes)

  ENTITY(SELF)	shape_data_quality_inspected_shape_and_result_relationship
    REDCR: rep_1,	TYPE: shape_representation -- EXPLICIT
      -- OVERRIDING ENTITY: representation_relationship

    REDCR: rep_2,	TYPE: shape_data_quality_inspection_result_representation -- EXPLICIT
      -- OVERRIDING ENTITY: representation_relationship


*/


//MARK: - Partial Entity
  public final class _shape_data_quality_inspected_shape_and_result_relationship : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eSHAPE_DATA_QUALITY_INSPECTED_SHAPE_AND_RESULT_RELATIONSHIP.self
    }

    //ATTRIBUTES
    /* override var _rep_1: eSHAPE_REPRESENTATION	//EXPLICIT REDEFINITION(eREPRESENTATION_RELATIONSHIP) */

    /* override var _rep_2: eSHAPE_DATA_QUALITY_INSPECTION_RESULT_REPRESENTATION	//EXPLICIT REDEFINITION(eREPRESENTATION_RELATIONSHIP) */

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
    public static func WHERE_wr1(SELF: eSHAPE_DATA_QUALITY_INSPECTED_SHAPE_AND_RESULT_RELATIONSHIP?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.REP_1
      let _TEMP2 = USING_PRODUCT_DEFINITION_OF_SHAPE_REPRESENTATION(_TEMP1)
      let _TEMP3 = SELF.REP_2
      let _TEMP4 = INSPECTED_PRODUCT_DEFINITION(eDATA_QUALITY_INSPECTION_RESULT_REPRESENTATION(/*
        eSHAPE_DATA_QUALITY_INSPECTION_RESULT_REPRESENTATION*/_TEMP3))
      let _TEMP5 = BAG_TO_SET(_TEMP4)
      let _TEMP6 = _TEMP2 * _TEMP5
      let _TEMP7 = SDAI.SIZEOF(_TEMP6)
      let _TEMP8 = _TEMP7 > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP8
    }
    public static func WHERE_wr2(SELF: eSHAPE_DATA_QUALITY_INSPECTED_SHAPE_AND_RESULT_RELATIONSHIP?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.REP_1
      let _TEMP2 = _TEMP1.GROUP_REF(eREPRESENTATION.self)
      let _TEMP3 = _TEMP2?.CONTEXT_OF_ITEMS
      let _TEMP4 = SELF.REP_2
      let _TEMP5 = _TEMP4.GROUP_REF(eREPRESENTATION.self)
      let _TEMP6 = _TEMP5?.CONTEXT_OF_ITEMS
      let _TEMP7 = _TEMP3 .===. _TEMP6
      return _TEMP7
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
  ENTITY shape_data_quality_inspected_shape_and_result_relationship
    SUBTYPE OF ( shape_representation_relationship );
      SELF\representation_relationship.rep_1 : shape_representation;
      SELF\representation_relationship.rep_2 : shape_data_quality_inspection_result_representation;
    WHERE
      wr1: ( SIZEOF( using_product_definition_of_shape_representation( SELF.rep_1 ) * bag_to_set( 
               inspected_product_definition( SELF.rep_2 ) ) ) > 0 );
      wr2: ( SELF.rep_1\representation.context_of_items :=: SELF.rep_2\representation.context_of_items );
  END_ENTITY; -- shape_data_quality_inspected_shape_and_result_relationship (line:28755 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eSHAPE_DATA_QUALITY_INSPECTED_SHAPE_AND_RESULT_RELATIONSHIP : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _shape_data_quality_inspected_shape_and_result_relationship.self
    }
    public let partialEntity: _shape_data_quality_inspected_shape_and_result_relationship

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_RELATIONSHIP: eREPRESENTATION_RELATIONSHIP 	// [1]
    public let super_eSHAPE_REPRESENTATION_RELATIONSHIP: eSHAPE_REPRESENTATION_RELATIONSHIP 	// [2]
    public var super_eSHAPE_DATA_QUALITY_INSPECTED_SHAPE_AND_RESULT_RELATIONSHIP: eSHAPE_DATA_QUALITY_INSPECTED_SHAPE_AND_RESULT_RELATIONSHIP { return self } 	// [3]

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
    /// - origin: SELF( ``eSHAPE_DATA_QUALITY_INSPECTED_SHAPE_AND_RESULT_RELATIONSHIP`` )
    public var REP_1: eSHAPE_REPRESENTATION {
      get {
        return SDAI.UNWRAP( eSHAPE_REPRESENTATION( super_eREPRESENTATION_RELATIONSHIP.partialEntity._rep_1 ) )
      }
      set(newValue) {
        let partial = super_eREPRESENTATION_RELATIONSHIP.partialEntity
        partial._rep_1 = SDAI.UNWRAP(
          sREPRESENTATION_OR_REPRESENTATION_REFERENCE(newValue))
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SELF( ``eSHAPE_DATA_QUALITY_INSPECTED_SHAPE_AND_RESULT_RELATIONSHIP`` )
    public var REP_2: eSHAPE_DATA_QUALITY_INSPECTION_RESULT_REPRESENTATION {
      get {
        return SDAI.UNWRAP( eSHAPE_DATA_QUALITY_INSPECTION_RESULT_REPRESENTATION( super_eREPRESENTATION_RELATIONSHIP
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
      guard let partial = complexEntity?.partialEntityInstance(_shape_data_quality_inspected_shape_and_result_relationship.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_RELATIONSHIP.self) else { return nil }
      self.super_eREPRESENTATION_RELATIONSHIP = super1

      guard let super2 = complexEntity?.entityReference(eSHAPE_REPRESENTATION_RELATIONSHIP.self) else { return nil }
      self.super_eSHAPE_REPRESENTATION_RELATIONSHIP = super2

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
      result[prefix2 + " .WHERE_wr1"] = _shape_data_quality_inspected_shape_and_result_relationship.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _shape_data_quality_inspected_shape_and_result_relationship.WHERE_wr2(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "SHAPE_DATA_QUALITY_INSPECTED_SHAPE_AND_RESULT_RELATIONSHIP", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_RELATIONSHIP.self)
      entityDef.add(supertype: eSHAPE_REPRESENTATION_RELATIONSHIP.self)
      entityDef.add(supertype: eSHAPE_DATA_QUALITY_INSPECTED_SHAPE_AND_RESULT_RELATIONSHIP.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eSHAPE_DATA_QUALITY_INSPECTED_SHAPE_AND_RESULT_RELATIONSHIP.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "REP_1", keyPath: \eSHAPE_DATA_QUALITY_INSPECTED_SHAPE_AND_RESULT_RELATIONSHIP.REP_1, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "REP_2", keyPath: \eSHAPE_DATA_QUALITY_INSPECTED_SHAPE_AND_RESULT_RELATIONSHIP.REP_2, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eSHAPE_DATA_QUALITY_INSPECTED_SHAPE_AND_RESULT_RELATIONSHIP.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
