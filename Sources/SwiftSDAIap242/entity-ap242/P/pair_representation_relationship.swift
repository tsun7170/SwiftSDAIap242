/* file: pair_representation_relationship.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY pair_representation_relationship
    SUBTYPE OF ( geometric_representation_item, representation_relationship_with_transformation );
      SELF\representation_relationship.rep_1 : kinematic_link_representation;
      SELF\representation_relationship.rep_2 : kinematic_link_representation;
      SELF\representation_relationship_with_transformation.transformation_operator : kinematic_pair; (* observed by
          kinematic_pair.link_representation_associations
          *)
    WHERE
      wr1: ( transformation_operator\item_defined_transformation.transform_item_1 IN rep_1.items );
      wr2: ( transformation_operator\item_defined_transformation.transform_item_2 IN rep_2.items );
      wr3: ( rep_1\kinematic_link_representation.represented_link = transformation_operator\kinematic_pair.
               joint.edge_start );
      wr4: ( rep_2\kinematic_link_representation.represented_link = transformation_operator\kinematic_pair.
               joint.edge_end );
  END_ENTITY; -- pair_representation_relationship (line:23409 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT	(AMBIGUOUS/MASKED)


  SUPER- ENTITY(2)	geometric_representation_item
    ATTR:  dim,	TYPE: dimension_count -- DERIVED
      := dimension_of( SELF )


  SUPER- ENTITY(3)	representation_relationship
    ATTR:  name,	TYPE: label -- EXPLICIT	(AMBIGUOUS/MASKED)

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
      *** ENTITY: pair_representation_relationship,	TYPE: kinematic_link_representation
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
          ENTITY: shape_data_quality_inspected_shape_and_result_relationship,	TYPE: shape_data_quality_inspection_result_representation
          ENTITY: link_motion_relationship,	TYPE: link_motion_representation_along_path
      *** ENTITY: pair_representation_relationship,	TYPE: kinematic_link_representation
          ENTITY: ply_orientation_angle,	TYPE: ply_angle_representation
          ENTITY: constrained_kinematic_motion_representation,	TYPE: representative_shape_representation
          ENTITY: free_kinematic_motion_representation,	TYPE: representative_shape_representation
          ENTITY: explicit_procedural_shape_representation_relationship,	TYPE: shape_representation


  SUPER- ENTITY(4)	representation_relationship_with_transformation
    ATTR:  transformation_operator,	TYPE: transformation -- EXPLICIT
      -- possibly overriden by
          ENTITY: link_motion_relationship,	TYPE: link_motion_transformation
      *** ENTITY: pair_representation_relationship,	TYPE: kinematic_pair	(OBSERVED)


  ENTITY(SELF)	pair_representation_relationship
    REDCR: rep_1,	TYPE: kinematic_link_representation -- EXPLICIT
      -- OVERRIDING ENTITY: representation_relationship

    REDCR: rep_2,	TYPE: kinematic_link_representation -- EXPLICIT
      -- OVERRIDING ENTITY: representation_relationship

    REDCR: transformation_operator,	TYPE: kinematic_pair -- EXPLICIT
      -- observed by
        ENTITY(1): kinematic_pair,	ATTR: link_representation_associations,	TYPE: SET [1 : ?] OF
          pair_representation_relationship
      -- OVERRIDING ENTITY: representation_relationship_with_transformation


*/


//MARK: - Partial Entity
  public final class _pair_representation_relationship : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      ePAIR_REPRESENTATION_RELATIONSHIP.self
    }

    //ATTRIBUTES
    /* override var _rep_1: eKINEMATIC_LINK_REPRESENTATION	//EXPLICIT REDEFINITION(eREPRESENTATION_RELATIONSHIP) */

    /* override var _rep_2: eKINEMATIC_LINK_REPRESENTATION	//EXPLICIT REDEFINITION(eREPRESENTATION_RELATIONSHIP) */

    /* override var _transformation_operator: eKINEMATIC_PAIR	//EXPLICIT REDEFINITION(eREPRESENTATION_RELATIONSHIP_WITH_TRANSFORMATION) //OBSERVED */

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
    public static func WHERE_wr1(SELF: ePAIR_REPRESENTATION_RELATIONSHIP?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.TRANSFORMATION_OPERATOR.GROUP_REF(eITEM_DEFINED_TRANSFORMATION.self)
      let _TEMP2 = _TEMP1?.TRANSFORM_ITEM_1
      let _TEMP3 = SELF.REP_1.ITEMS
      let _TEMP4 = SDAI.aggregate(_TEMP3, contains: sKINEMATIC_LINK_REPRESENTATION_ITEMS(/*
        eREPRESENTATION_ITEM*/_TEMP2))
      return _TEMP4
    }
    public static func WHERE_wr2(SELF: ePAIR_REPRESENTATION_RELATIONSHIP?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.TRANSFORMATION_OPERATOR.GROUP_REF(eITEM_DEFINED_TRANSFORMATION.self)
      let _TEMP2 = _TEMP1?.TRANSFORM_ITEM_2
      let _TEMP3 = SELF.REP_2.ITEMS
      let _TEMP4 = SDAI.aggregate(_TEMP3, contains: sKINEMATIC_LINK_REPRESENTATION_ITEMS(/*
        eREPRESENTATION_ITEM*/_TEMP2))
      return _TEMP4
    }
    public static func WHERE_wr3(SELF: ePAIR_REPRESENTATION_RELATIONSHIP?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.REP_1.GROUP_REF(eKINEMATIC_LINK_REPRESENTATION.self)
      let _TEMP2 = _TEMP1?.REPRESENTED_LINK
      let _TEMP3 = SELF.TRANSFORMATION_OPERATOR.GROUP_REF(eKINEMATIC_PAIR.self)
      let _TEMP4 = _TEMP3?.JOINT
      let _TEMP5 = _TEMP4?.EDGE_START
      let _TEMP6 = _TEMP2 .==. _TEMP5
      return _TEMP6
    }
    public static func WHERE_wr4(SELF: ePAIR_REPRESENTATION_RELATIONSHIP?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.REP_2.GROUP_REF(eKINEMATIC_LINK_REPRESENTATION.self)
      let _TEMP2 = _TEMP1?.REPRESENTED_LINK
      let _TEMP3 = SELF.TRANSFORMATION_OPERATOR.GROUP_REF(eKINEMATIC_PAIR.self)
      let _TEMP4 = _TEMP3?.JOINT
      let _TEMP5 = _TEMP4?.EDGE_END
      let _TEMP6 = _TEMP2 .==. _TEMP5
      return _TEMP6
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
  ENTITY pair_representation_relationship
    SUBTYPE OF ( geometric_representation_item, representation_relationship_with_transformation );
      SELF\representation_relationship.rep_1 : kinematic_link_representation;
      SELF\representation_relationship.rep_2 : kinematic_link_representation;
      SELF\representation_relationship_with_transformation.transformation_operator : kinematic_pair; (* observed by
          kinematic_pair.link_representation_associations
          *)
    WHERE
      wr1: ( transformation_operator\item_defined_transformation.transform_item_1 IN rep_1.items );
      wr2: ( transformation_operator\item_defined_transformation.transform_item_2 IN rep_2.items );
      wr3: ( rep_1\kinematic_link_representation.represented_link = transformation_operator\kinematic_pair.
               joint.edge_start );
      wr4: ( rep_2\kinematic_link_representation.represented_link = transformation_operator\kinematic_pair.
               joint.edge_end );
  END_ENTITY; -- pair_representation_relationship (line:23409 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class ePAIR_REPRESENTATION_RELATIONSHIP : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _pair_representation_relationship.self
    }
    public let partialEntity: _pair_representation_relationship

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_eREPRESENTATION_RELATIONSHIP: eREPRESENTATION_RELATIONSHIP 	// [3]
    public let super_eREPRESENTATION_RELATIONSHIP_WITH_TRANSFORMATION: eREPRESENTATION_RELATIONSHIP_WITH_TRANSFORMATION 	// [4]
    public var super_ePAIR_REPRESENTATION_RELATIONSHIP: ePAIR_REPRESENTATION_RELATIONSHIP { return self } 	// [5]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    // NAME: (2 AMBIGUOUS REFs)

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

    /// __EXPLICIT REDEF(OBSERVED)__ attribute
    /// - origin: SELF( ``ePAIR_REPRESENTATION_RELATIONSHIP`` )
    public var TRANSFORMATION_OPERATOR: eKINEMATIC_PAIR {
      get {
        return SDAI.UNWRAP( eKINEMATIC_PAIR( super_eREPRESENTATION_RELATIONSHIP_WITH_TRANSFORMATION
          .partialEntity._transformation_operator ) )
      }
      set(newValue) {
        let partial = super_eREPRESENTATION_RELATIONSHIP_WITH_TRANSFORMATION.partialEntity
        partial._transformation_operator = SDAI.UNWRAP(
          sTRANSFORMATION(newValue))
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SELF( ``ePAIR_REPRESENTATION_RELATIONSHIP`` )
    public var REP_1: eKINEMATIC_LINK_REPRESENTATION {
      get {
        return SDAI.UNWRAP( eKINEMATIC_LINK_REPRESENTATION( super_eREPRESENTATION_RELATIONSHIP.partialEntity
          ._rep_1 ) )
      }
      set(newValue) {
        let partial = super_eREPRESENTATION_RELATIONSHIP.partialEntity
        partial._rep_1 = SDAI.UNWRAP(
          sREPRESENTATION_OR_REPRESENTATION_REFERENCE(newValue))
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SELF( ``ePAIR_REPRESENTATION_RELATIONSHIP`` )
    public var REP_2: eKINEMATIC_LINK_REPRESENTATION {
      get {
        return SDAI.UNWRAP( eKINEMATIC_LINK_REPRESENTATION( super_eREPRESENTATION_RELATIONSHIP.partialEntity
          ._rep_2 ) )
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
      guard let partial = complexEntity?.partialEntityInstance(_pair_representation_relationship.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(eREPRESENTATION_RELATIONSHIP.self) else { return nil }
      self.super_eREPRESENTATION_RELATIONSHIP = super3

      guard let super4 = complexEntity?.entityReference(eREPRESENTATION_RELATIONSHIP_WITH_TRANSFORMATION.self) else { return nil }
      self.super_eREPRESENTATION_RELATIONSHIP_WITH_TRANSFORMATION = super4

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
      result[prefix2 + " .WHERE_wr1"] = _pair_representation_relationship.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _pair_representation_relationship.WHERE_wr2(SELF: instance)
      result[prefix2 + " .WHERE_wr3"] = _pair_representation_relationship.WHERE_wr3(SELF: instance)
      result[prefix2 + " .WHERE_wr4"] = _pair_representation_relationship.WHERE_wr4(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "PAIR_REPRESENTATION_RELATIONSHIP", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eREPRESENTATION_RELATIONSHIP.self)
      entityDef.add(supertype: eREPRESENTATION_RELATIONSHIP_WITH_TRANSFORMATION.self)
      entityDef.add(supertype: ePAIR_REPRESENTATION_RELATIONSHIP.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \ePAIR_REPRESENTATION_RELATIONSHIP.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "TRANSFORMATION_OPERATOR", keyPath: \ePAIR_REPRESENTATION_RELATIONSHIP.TRANSFORMATION_OPERATOR, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "REP_1", keyPath: \ePAIR_REPRESENTATION_RELATIONSHIP.REP_1, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "REP_2", keyPath: \ePAIR_REPRESENTATION_RELATIONSHIP.REP_2, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DIM", keyPath: \ePAIR_REPRESENTATION_RELATIONSHIP.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
