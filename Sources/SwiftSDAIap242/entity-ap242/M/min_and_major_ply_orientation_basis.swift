/* file: min_and_major_ply_orientation_basis.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY min_and_major_ply_orientation_basis
    SUBTYPE OF ( representation_item_relationship, geometric_representation_item );
      SELF\representation_item_relationship.relating_representation_item : axis2_placement_3d;
      SELF\representation_item_relationship.related_representation_item : axis2_placement_3d;
    DERIVE
      major_orientation_basis  : axis2_placement_3d := SELF\representation_item_relationship.
                                   related_representation_item;
      minor_orientation_basis  : axis2_placement_3d := SELF\representation_item_relationship.
                                   relating_representation_item;
  END_ENTITY; -- min_and_major_ply_orientation_basis (line:21346 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item_relationship
    ATTR:  name,	TYPE: label -- EXPLICIT	(AMBIGUOUS/MASKED)

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
          ENTITY: explicit_procedural_representation_item_relationship,	TYPE: procedural_representation_sequence
      *** ENTITY: min_and_major_ply_orientation_basis,	TYPE: axis2_placement_3d

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
      *** ENTITY: min_and_major_ply_orientation_basis,	TYPE: axis2_placement_3d


  SUPER- ENTITY(2)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT	(AMBIGUOUS/MASKED)


  SUPER- ENTITY(3)	geometric_representation_item
    ATTR:  dim,	TYPE: dimension_count -- DERIVED
      := dimension_of( SELF )


  ENTITY(SELF)	min_and_major_ply_orientation_basis
    REDCR: relating_representation_item,	TYPE: axis2_placement_3d -- EXPLICIT
      -- OVERRIDING ENTITY: representation_item_relationship

    REDCR: related_representation_item,	TYPE: axis2_placement_3d -- EXPLICIT
      -- OVERRIDING ENTITY: representation_item_relationship

    ATTR:  major_orientation_basis,	TYPE: axis2_placement_3d -- DERIVED
      := SELF\representation_item_relationship.related_representation_item

    ATTR:  minor_orientation_basis,	TYPE: axis2_placement_3d -- DERIVED
      := SELF\representation_item_relationship.relating_representation_item


*/


//MARK: - Partial Entity
  public final class _min_and_major_ply_orientation_basis : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eMIN_AND_MAJOR_PLY_ORIENTATION_BASIS.self
    }

    //ATTRIBUTES
    /* override var _relating_representation_item: eAXIS2_PLACEMENT_3D	//EXPLICIT REDEFINITION(eREPRESENTATION_ITEM_RELATIONSHIP) */

    /* override var _related_representation_item: eAXIS2_PLACEMENT_3D	//EXPLICIT REDEFINITION(eREPRESENTATION_ITEM_RELATIONSHIP) */

    /// DERIVE ATTRIBUTE
    internal func _major_orientation_basis__getter(SELF: eMIN_AND_MAJOR_PLY_ORIENTATION_BASIS) -> 
      eAXIS2_PLACEMENT_3D?  {

      let _TEMP1 = SELF.GROUP_REF(eREPRESENTATION_ITEM_RELATIONSHIP.self)
      let _TEMP2 = _TEMP1?.RELATED_REPRESENTATION_ITEM
      return eAXIS2_PLACEMENT_3D(/*eREPRESENTATION_ITEM*/_TEMP2)
    }

    /// DERIVE ATTRIBUTE
    internal func _minor_orientation_basis__getter(SELF: eMIN_AND_MAJOR_PLY_ORIENTATION_BASIS) -> 
      eAXIS2_PLACEMENT_3D?  {

      let _TEMP1 = SELF.GROUP_REF(eREPRESENTATION_ITEM_RELATIONSHIP.self)
      let _TEMP2 = _TEMP1?.RELATING_REPRESENTATION_ITEM
      return eAXIS2_PLACEMENT_3D(/*eREPRESENTATION_ITEM*/_TEMP2)
    }

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sORIENTATION_BASIS_SELECT.typeName)) // -> Self
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
  ENTITY min_and_major_ply_orientation_basis
    SUBTYPE OF ( representation_item_relationship, geometric_representation_item );
      SELF\representation_item_relationship.relating_representation_item : axis2_placement_3d;
      SELF\representation_item_relationship.related_representation_item : axis2_placement_3d;
    DERIVE
      major_orientation_basis  : axis2_placement_3d := SELF\representation_item_relationship.
                                   related_representation_item;
      minor_orientation_basis  : axis2_placement_3d := SELF\representation_item_relationship.
                                   relating_representation_item;
  END_ENTITY; -- min_and_major_ply_orientation_basis (line:21346 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eMIN_AND_MAJOR_PLY_ORIENTATION_BASIS : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _min_and_major_ply_orientation_basis.self
    }
    public let partialEntity: _min_and_major_ply_orientation_basis

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM_RELATIONSHIP: eREPRESENTATION_ITEM_RELATIONSHIP 	// [1]
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [2]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [3]
    public var super_eMIN_AND_MAJOR_PLY_ORIENTATION_BASIS: eMIN_AND_MAJOR_PLY_ORIENTATION_BASIS { return self } 	// [4]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    // NAME: (2 AMBIGUOUS REFs)

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

    /// __DERIVE__ attribute
    /// - origin: SELF( ``eMIN_AND_MAJOR_PLY_ORIENTATION_BASIS`` )
    public var MAJOR_ORIENTATION_BASIS: eAXIS2_PLACEMENT_3D?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"MAJOR_ORIENTATION_BASIS") {
          return cached.value as! eAXIS2_PLACEMENT_3D? 
        }
        let origin = self
        let value = origin.partialEntity._major_orientation_basis__getter(SELF: origin)
        updateCache(derivedAttributeName:"MAJOR_ORIENTATION_BASIS", value:value)
        return value
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SELF( ``eMIN_AND_MAJOR_PLY_ORIENTATION_BASIS`` )
    public var MINOR_ORIENTATION_BASIS: eAXIS2_PLACEMENT_3D?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"MINOR_ORIENTATION_BASIS") {
          return cached.value as! eAXIS2_PLACEMENT_3D? 
        }
        let origin = self
        let value = origin.partialEntity._minor_orientation_basis__getter(SELF: origin)
        updateCache(derivedAttributeName:"MINOR_ORIENTATION_BASIS", value:value)
        return value
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SELF( ``eMIN_AND_MAJOR_PLY_ORIENTATION_BASIS`` )
    public var RELATED_REPRESENTATION_ITEM: eAXIS2_PLACEMENT_3D {
      get {
        return SDAI.UNWRAP( eAXIS2_PLACEMENT_3D( super_eREPRESENTATION_ITEM_RELATIONSHIP.partialEntity
          ._related_representation_item ) )
      }
      set(newValue) {
        let partial = super_eREPRESENTATION_ITEM_RELATIONSHIP.partialEntity
        partial._related_representation_item = SDAI.UNWRAP(
          eREPRESENTATION_ITEM(newValue))
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SELF( ``eMIN_AND_MAJOR_PLY_ORIENTATION_BASIS`` )
    public var RELATING_REPRESENTATION_ITEM: eAXIS2_PLACEMENT_3D {
      get {
        return SDAI.UNWRAP( eAXIS2_PLACEMENT_3D( super_eREPRESENTATION_ITEM_RELATIONSHIP.partialEntity
          ._relating_representation_item ) )
      }
      set(newValue) {
        let partial = super_eREPRESENTATION_ITEM_RELATIONSHIP.partialEntity
        partial._relating_representation_item = SDAI.UNWRAP(
          eREPRESENTATION_ITEM(newValue))
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
      guard let partial = complexEntity?.partialEntityInstance(_min_and_major_ply_orientation_basis.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM_RELATIONSHIP.self) else { return nil }
      self.super_eREPRESENTATION_ITEM_RELATIONSHIP = super1

      guard let super2 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super3

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "MIN_AND_MAJOR_PLY_ORIENTATION_BASIS", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM_RELATIONSHIP.self)
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eMIN_AND_MAJOR_PLY_ORIENTATION_BASIS.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eMIN_AND_MAJOR_PLY_ORIENTATION_BASIS.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "MAJOR_ORIENTATION_BASIS", keyPath: \eMIN_AND_MAJOR_PLY_ORIENTATION_BASIS.MAJOR_ORIENTATION_BASIS, 
        kind: .derived, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "MINOR_ORIENTATION_BASIS", keyPath: \eMIN_AND_MAJOR_PLY_ORIENTATION_BASIS.MINOR_ORIENTATION_BASIS, 
        kind: .derived, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RELATED_REPRESENTATION_ITEM", keyPath: \eMIN_AND_MAJOR_PLY_ORIENTATION_BASIS.RELATED_REPRESENTATION_ITEM, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RELATING_REPRESENTATION_ITEM", keyPath: \eMIN_AND_MAJOR_PLY_ORIENTATION_BASIS.RELATING_REPRESENTATION_ITEM, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DIM", keyPath: \eMIN_AND_MAJOR_PLY_ORIENTATION_BASIS.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
