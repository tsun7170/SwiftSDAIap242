/* file: item_link_motion_relationship.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY item_link_motion_relationship
    SUBTYPE OF ( link_motion_relationship );
      SELF\representation_relationship.rep_1 : shape_representation;
      item                            : geometric_representation_item;
  END_ENTITY; -- item_link_motion_relationship (line:18455 file:ap242ed2_mim_lf_v1.101.TY.exp)

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
      *** ENTITY: item_link_motion_relationship,	TYPE: shape_representation
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
          ENTITY: shape_data_quality_inspected_shape_and_result_relationship,	TYPE: shape_data_quality_inspection_result_representation
      *** ENTITY: link_motion_relationship,	TYPE: link_motion_representation_along_path
          ENTITY: pair_representation_relationship,	TYPE: kinematic_link_representation
          ENTITY: ply_orientation_angle,	TYPE: ply_angle_representation
          ENTITY: constrained_kinematic_motion_representation,	TYPE: representative_shape_representation
          ENTITY: free_kinematic_motion_representation,	TYPE: representative_shape_representation
          ENTITY: explicit_procedural_shape_representation_relationship,	TYPE: shape_representation


  SUPER- ENTITY(2)	definitional_representation_relationship
    (no local attributes)

  SUPER- ENTITY(3)	representation_relationship_with_transformation
    ATTR:  transformation_operator,	TYPE: transformation -- EXPLICIT
      -- possibly overriden by
      *** ENTITY: link_motion_relationship,	TYPE: link_motion_transformation
          ENTITY: pair_representation_relationship,	TYPE: kinematic_pair	(OBSERVED)


  SUPER- ENTITY(4)	link_motion_relationship
    REDCR: rep_1,	TYPE: link_or_shape_representation -- EXPLICIT
      -- OVERRIDING ENTITY: representation_relationship

    REDCR: rep_2,	TYPE: link_motion_representation_along_path -- EXPLICIT
      -- OVERRIDING ENTITY: representation_relationship

    REDCR: transformation_operator,	TYPE: link_motion_transformation -- EXPLICIT
      -- OVERRIDING ENTITY: representation_relationship_with_transformation


  ENTITY(SELF)	item_link_motion_relationship
    REDCR: rep_1,	TYPE: shape_representation -- EXPLICIT
      -- OVERRIDING ENTITY: representation_relationship

    ATTR:  item,	TYPE: geometric_representation_item -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _item_link_motion_relationship : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eITEM_LINK_MOTION_RELATIONSHIP.self
    }

    //ATTRIBUTES
    /* override var _rep_1: eSHAPE_REPRESENTATION	//EXPLICIT REDEFINITION(eREPRESENTATION_RELATIONSHIP) */

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _item: eGEOMETRIC_REPRESENTATION_ITEM // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._item.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._item.value.isValueEqualOptionally(to: rhs._item.value, visited: &comppairs)	{
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
      if let comp = self._item.value.isValueEqualOptionally(to: rhs._item.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(ITEM: eGEOMETRIC_REPRESENTATION_ITEM) {
      self._item = ITEM
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: 
        eGEOMETRIC_REPRESENTATION_ITEM.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( ITEM: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY item_link_motion_relationship
    SUBTYPE OF ( link_motion_relationship );
      SELF\representation_relationship.rep_1 : shape_representation;
      item                            : geometric_representation_item;
  END_ENTITY; -- item_link_motion_relationship (line:18455 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eITEM_LINK_MOTION_RELATIONSHIP : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _item_link_motion_relationship.self
    }
    public let partialEntity: _item_link_motion_relationship

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_RELATIONSHIP: eREPRESENTATION_RELATIONSHIP 	// [1]
    public let super_eDEFINITIONAL_REPRESENTATION_RELATIONSHIP: eDEFINITIONAL_REPRESENTATION_RELATIONSHIP 	// [2]
    public let super_eREPRESENTATION_RELATIONSHIP_WITH_TRANSFORMATION: eREPRESENTATION_RELATIONSHIP_WITH_TRANSFORMATION 	// [3]
    public let super_eLINK_MOTION_RELATIONSHIP: eLINK_MOTION_RELATIONSHIP 	// [4]
    public var super_eITEM_LINK_MOTION_RELATIONSHIP: eITEM_LINK_MOTION_RELATIONSHIP { return self } 	// [5]

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
    /// - origin: SUPER( ``eLINK_MOTION_RELATIONSHIP`` )
    public var TRANSFORMATION_OPERATOR: eLINK_MOTION_TRANSFORMATION {
      get {
        return SDAI.UNWRAP( eLINK_MOTION_TRANSFORMATION( super_eREPRESENTATION_RELATIONSHIP_WITH_TRANSFORMATION
          .partialEntity._transformation_operator ) )
      }
      set(newValue) {
        let partial = super_eREPRESENTATION_RELATIONSHIP_WITH_TRANSFORMATION.partialEntity
        partial._transformation_operator = SDAI.UNWRAP(
          sTRANSFORMATION(newValue))
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eITEM_LINK_MOTION_RELATIONSHIP`` )
    public var ITEM: eGEOMETRIC_REPRESENTATION_ITEM {
      get {
        return SDAI.UNWRAP( self.partialEntity._item )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._item = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SELF( ``eITEM_LINK_MOTION_RELATIONSHIP`` )
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
    /// - origin: SUPER( ``eLINK_MOTION_RELATIONSHIP`` )
    public var REP_2: eLINK_MOTION_REPRESENTATION_ALONG_PATH {
      get {
        return SDAI.UNWRAP( eLINK_MOTION_REPRESENTATION_ALONG_PATH( super_eREPRESENTATION_RELATIONSHIP
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
      guard let partial = complexEntity?.partialEntityInstance(_item_link_motion_relationship.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_RELATIONSHIP.self) else { return nil }
      self.super_eREPRESENTATION_RELATIONSHIP = super1

      guard let super2 = complexEntity?.entityReference(eDEFINITIONAL_REPRESENTATION_RELATIONSHIP.self) else { return nil }
      self.super_eDEFINITIONAL_REPRESENTATION_RELATIONSHIP = super2

      guard let super3 = complexEntity?.entityReference(eREPRESENTATION_RELATIONSHIP_WITH_TRANSFORMATION.self) else { return nil }
      self.super_eREPRESENTATION_RELATIONSHIP_WITH_TRANSFORMATION = super3

      guard let super4 = complexEntity?.entityReference(eLINK_MOTION_RELATIONSHIP.self) else { return nil }
      self.super_eLINK_MOTION_RELATIONSHIP = super4

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "ITEM_LINK_MOTION_RELATIONSHIP", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_RELATIONSHIP.self)
      entityDef.add(supertype: eDEFINITIONAL_REPRESENTATION_RELATIONSHIP.self)
      entityDef.add(supertype: eREPRESENTATION_RELATIONSHIP_WITH_TRANSFORMATION.self)
      entityDef.add(supertype: eLINK_MOTION_RELATIONSHIP.self)
      entityDef.add(supertype: eITEM_LINK_MOTION_RELATIONSHIP.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eITEM_LINK_MOTION_RELATIONSHIP.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "TRANSFORMATION_OPERATOR", keyPath: \eITEM_LINK_MOTION_RELATIONSHIP.TRANSFORMATION_OPERATOR, 
        kind: .explicitRedeclaring, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ITEM", keyPath: \eITEM_LINK_MOTION_RELATIONSHIP.ITEM, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "REP_1", keyPath: \eITEM_LINK_MOTION_RELATIONSHIP.REP_1, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "REP_2", keyPath: \eITEM_LINK_MOTION_RELATIONSHIP.REP_2, 
        kind: .explicitRedeclaring, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eITEM_LINK_MOTION_RELATIONSHIP.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
