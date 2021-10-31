/* file: explicit_procedural_representation_item_relationship.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  ENTITY explicit_procedural_representation_item_relationship
    SUBTYPE OF ( representation_item_relationship );
      SELF\representation_item_relationship.relating_representation_item : procedural_representation_sequence;
    WHERE
      wr1: ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PROCEDURAL_REPRESENTATION_SEQUENCE' IN 
               TYPEOF( SELF\representation_item_relationship.related_representation_item ) ) );
      wr2: ( SIZEOF( QUERY ( q <* using_representations( SELF\representation_item_relationship.
               related_representation_item ) | item_in_context( SELF\representation_item_relationship.
               relating_representation_item, q.context_of_items ) ) ) > 0 );
  END_ENTITY; -- explicit_procedural_representation_item_relationship (line:14166 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item_relationship
    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT

    ATTR:  relating_representation_item,	TYPE: representation_item -- EXPLICIT
      -- possibly overriden by
          ENTITY: implicit_explicit_positioned_sketch_relationship,	TYPE: repositioned_neutral_sketch
          ENTITY: angle_direction_reference,	TYPE: orientation_basis_select
          ENTITY: geometric_model_element_relationship,	TYPE: geometric_representation_item
          ENTITY: a3ma_equivalence_criterion_assessment_threshold_relationship,	TYPE: different_placement_of_component	(OBSERVED)
          ENTITY: a3ma_assembly_and_shape_criteria_relationship,	TYPE: different_component_shape	(OBSERVED)
          ENTITY: data_quality_criterion_measurement_association,	TYPE: data_quality_criterion
          ENTITY: data_quality_report_measurement_association,	TYPE: data_quality_measurement_requirement
          ENTITY: near_point_relationship,	TYPE: curve_or_surface_constraint_element
          ENTITY: explicit_procedural_geometric_representation_item_relationship,	TYPE: procedural_shape_representation_sequence
      *** ENTITY: explicit_procedural_representation_item_relationship,	TYPE: procedural_representation_sequence
          ENTITY: min_and_major_ply_orientation_basis,	TYPE: axis2_placement_3d

    ATTR:  related_representation_item,	TYPE: representation_item -- EXPLICIT
      -- possibly overriden by
          ENTITY: implicit_explicit_positioned_sketch_relationship,	TYPE: positioned_sketch
          ENTITY: angle_direction_reference,	TYPE: angle_direction_reference_select
          ENTITY: geometric_model_element_relationship,	TYPE: geometric_representation_item
          ENTITY: a3ma_equivalence_criterion_assessment_threshold_relationship,	TYPE: shape_data_quality_lower_value_limit
          ENTITY: a3ma_assembly_and_shape_criteria_relationship,	TYPE: a3m_equivalence_criterion_for_shape
          ENTITY: data_quality_criterion_measurement_association,	TYPE: data_quality_measurement_requirement
          ENTITY: data_quality_report_measurement_association,	TYPE: data_quality_inspection_report
          ENTITY: near_point_relationship,	TYPE: point
          ENTITY: explicit_procedural_geometric_representation_item_relationship,	TYPE: geometric_representation_item
          ENTITY: min_and_major_ply_orientation_basis,	TYPE: axis2_placement_3d


  ENTITY(SELF)	explicit_procedural_representation_item_relationship
    REDCR: relating_representation_item,	TYPE: procedural_representation_sequence -- EXPLICIT
      -- OVERRIDING ENTITY: representation_item_relationship


  SUB- ENTITY(3)	explicit_procedural_geometric_representation_item_relationship
    REDCR: relating_representation_item,	TYPE: procedural_shape_representation_sequence -- EXPLICIT
      -- OVERRIDING ENTITY: representation_item_relationship

    REDCR: related_representation_item,	TYPE: geometric_representation_item -- EXPLICIT
      -- OVERRIDING ENTITY: representation_item_relationship


*/


//MARK: - Partial Entity
  public final class _explicit_procedural_representation_item_relationship : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eEXPLICIT_PROCEDURAL_REPRESENTATION_ITEM_RELATIONSHIP.self
    }

    //ATTRIBUTES
    /* override var _relating_representation_item: ePROCEDURAL_REPRESENTATION_SEQUENCE	//EXPLICIT REDEFINITION(eREPRESENTATION_ITEM_RELATIONSHIP) */

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
    public static func WHERE_wr1(SELF: eEXPLICIT_PROCEDURAL_REPRESENTATION_ITEM_RELATIONSHIP?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF.GROUP_REF(eREPRESENTATION_ITEM_RELATIONSHIP.self)?.RELATED_REPRESENTATION_ITEM, 
        IS: ePROCEDURAL_REPRESENTATION_SEQUENCE.self)
      let _TEMP2 =  !_TEMP1
      return _TEMP2
    }
    public static func WHERE_wr2(SELF: eEXPLICIT_PROCEDURAL_REPRESENTATION_ITEM_RELATIONSHIP?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.GROUP_REF(eREPRESENTATION_ITEM_RELATIONSHIP.self)
      let _TEMP2 = _TEMP1?.RELATED_REPRESENTATION_ITEM
      let _TEMP3 = USING_REPRESENTATIONS(sFOUNDED_ITEM_SELECT(/*eREPRESENTATION_ITEM*/_TEMP2))
      let _TEMP4 = _TEMP3?.QUERY{ Q in 

          let _TEMP1 = SELF.GROUP_REF(eREPRESENTATION_ITEM_RELATIONSHIP.self)
          let _TEMP2 = _TEMP1?.RELATING_REPRESENTATION_ITEM
          let _TEMP3 = Q.CONTEXT_OF_ITEMS
          let _TEMP4 = ITEM_IN_CONTEXT(
            ITEM: _TEMP2, CNTXT: _TEMP3)
          return SDAI.LOGICAL(/*SDAI.BOOLEAN*/_TEMP4) }
      let _TEMP5 = SDAI.SIZEOF(_TEMP4)
      let _TEMP6 = _TEMP5 > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
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
  ENTITY explicit_procedural_representation_item_relationship
    SUBTYPE OF ( representation_item_relationship );
      SELF\representation_item_relationship.relating_representation_item : procedural_representation_sequence;
    WHERE
      wr1: ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PROCEDURAL_REPRESENTATION_SEQUENCE' IN 
               TYPEOF( SELF\representation_item_relationship.related_representation_item ) ) );
      wr2: ( SIZEOF( QUERY ( q <* using_representations( SELF\representation_item_relationship.
               related_representation_item ) | item_in_context( SELF\representation_item_relationship.
               relating_representation_item, q.context_of_items ) ) ) > 0 );
  END_ENTITY; -- explicit_procedural_representation_item_relationship (line:14166 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eEXPLICIT_PROCEDURAL_REPRESENTATION_ITEM_RELATIONSHIP : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _explicit_procedural_representation_item_relationship.self
    }
    public let partialEntity: _explicit_procedural_representation_item_relationship

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM_RELATIONSHIP: eREPRESENTATION_ITEM_RELATIONSHIP 	// [1]
    public var super_eEXPLICIT_PROCEDURAL_REPRESENTATION_ITEM_RELATIONSHIP: eEXPLICIT_PROCEDURAL_REPRESENTATION_ITEM_RELATIONSHIP { return self } 	// [2]

    //MARK: SUBTYPES
    public var sub_eEXPLICIT_PROCEDURAL_GEOMETRIC_REPRESENTATION_ITEM_RELATIONSHIP: eEXPLICIT_PROCEDURAL_GEOMETRIC_REPRESENTATION_ITEM_RELATIONSHIP? {	// [3]
      return self.complexEntity.entityReference(eEXPLICIT_PROCEDURAL_GEOMETRIC_REPRESENTATION_ITEM_RELATIONSHIP.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eREPRESENTATION_ITEM_RELATIONSHIP`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        return super_eREPRESENTATION_ITEM_RELATIONSHIP.partialEntity._description
      }
      set(newValue) {
        let partial = super_eREPRESENTATION_ITEM_RELATIONSHIP.partialEntity
        partial._description = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eREPRESENTATION_ITEM_RELATIONSHIP`` )
    public var RELATED_REPRESENTATION_ITEM: eREPRESENTATION_ITEM {
      get {
        return SDAI.UNWRAP( super_eREPRESENTATION_ITEM_RELATIONSHIP.partialEntity
          ._related_representation_item )
      }
      set(newValue) {
        let partial = super_eREPRESENTATION_ITEM_RELATIONSHIP.partialEntity
        partial._related_representation_item = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eREPRESENTATION_ITEM_RELATIONSHIP`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( super_eREPRESENTATION_ITEM_RELATIONSHIP.partialEntity._name )
      }
      set(newValue) {
        let partial = super_eREPRESENTATION_ITEM_RELATIONSHIP.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SELF( ``eEXPLICIT_PROCEDURAL_REPRESENTATION_ITEM_RELATIONSHIP`` )
    public var RELATING_REPRESENTATION_ITEM: ePROCEDURAL_REPRESENTATION_SEQUENCE {
      get {
        return SDAI.UNWRAP( ePROCEDURAL_REPRESENTATION_SEQUENCE( super_eREPRESENTATION_ITEM_RELATIONSHIP
          .partialEntity._relating_representation_item ) )
      }
      set(newValue) {
        let partial = super_eREPRESENTATION_ITEM_RELATIONSHIP.partialEntity
        partial._relating_representation_item = SDAI.UNWRAP(
          eREPRESENTATION_ITEM(newValue))
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_explicit_procedural_representation_item_relationship.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM_RELATIONSHIP.self) else { return nil }
      self.super_eREPRESENTATION_ITEM_RELATIONSHIP = super1

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
      result[prefix2 + " .WHERE_wr1"] = _explicit_procedural_representation_item_relationship.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _explicit_procedural_representation_item_relationship.WHERE_wr2(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "EXPLICIT_PROCEDURAL_REPRESENTATION_ITEM_RELATIONSHIP", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM_RELATIONSHIP.self)
      entityDef.add(supertype: eEXPLICIT_PROCEDURAL_REPRESENTATION_ITEM_RELATIONSHIP.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eEXPLICIT_PROCEDURAL_REPRESENTATION_ITEM_RELATIONSHIP.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "RELATED_REPRESENTATION_ITEM", keyPath: \eEXPLICIT_PROCEDURAL_REPRESENTATION_ITEM_RELATIONSHIP.RELATED_REPRESENTATION_ITEM, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eEXPLICIT_PROCEDURAL_REPRESENTATION_ITEM_RELATIONSHIP.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "RELATING_REPRESENTATION_ITEM", keyPath: \eEXPLICIT_PROCEDURAL_REPRESENTATION_ITEM_RELATIONSHIP.RELATING_REPRESENTATION_ITEM, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
