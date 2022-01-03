/* file: component_feature_joint.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY component_feature_joint
    SUBTYPE OF ( shape_aspect_relationship, shape_aspect );
      SELF\shape_aspect_relationship.relating_shape_aspect : component_feature;
      SELF\shape_aspect_relationship.related_shape_aspect : component_feature;
  END_ENTITY; -- component_feature_joint (line:9878 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	shape_aspect_relationship
    ATTR:  name,	TYPE: label -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  relating_shape_aspect,	TYPE: shape_aspect -- EXPLICIT
      -- observed by
        ENTITY(1): cross_sectional_alternative_shape_element,	ATTR: items,	TYPE: SET [2 : ?] OF
          shape_aspect_relationship
        ENTITY(2): datum_target,	ATTR: target_basis_relationship,	TYPE: SET [1 : ?] OF
          shape_aspect_relationship
        ENTITY(3): cross_sectional_group_shape_element,	ATTR: items,	TYPE: SET [1 : ?] OF
          shape_aspect_relationship
        ENTITY(4): composite_shape_aspect,	ATTR: component_relationships,	TYPE: SET [2 : ?] OF
          shape_aspect_relationship
        ENTITY(5): datum_feature,	ATTR: feature_basis_relationship,	TYPE: SET [1 : ?] OF
          shape_aspect_relationship
      -- possibly overriden by
          ENTITY: connectivity_definition_item_relationship,	TYPE: connectivity_definition
          ENTITY: assembly_shape_joint_item_relationship,	TYPE: assembly_shape_joint
      *** ENTITY: component_feature_joint,	TYPE: component_feature
          ENTITY: assembly_shape_constraint_item_relationship,	TYPE: assembly_shape_constraint
          ENTITY: contact_feature_fit_relationship,	TYPE: contact_feature
          ENTITY: component_feature_relationship,	TYPE: component_feature
          ENTITY: shape_aspect_deriving_relationship,	TYPE: derived_shape_aspect	(OBSERVED)

    ATTR:  related_shape_aspect,	TYPE: shape_aspect -- EXPLICIT
      -- observed by
        ENTITY(1): symmetric_shape_aspect,	ATTR: basis_relationships,	TYPE: SET [1 : ?] OF
          shape_aspect_deriving_relationship
        ENTITY(2): datum,	ATTR: established_by_relationships,	TYPE: SET [1 : ?] OF shape_aspect_relationship
      -- possibly overriden by
      *** ENTITY: component_feature_joint,	TYPE: component_feature
          ENTITY: contact_feature_fit_relationship,	TYPE: contact_feature
          ENTITY: component_feature_relationship,	TYPE: component_feature
          ENTITY: feature_for_datum_target_relationship,	TYPE: datum_target

    ATTR:  id,	TYPE: identifier -- DERIVED	(AMBIGUOUS/MASKED)
      := get_id_value( SELF )


  SUPER- ENTITY(2)	shape_aspect
    ATTR:  name,	TYPE: label -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  of_shape,	TYPE: product_definition_shape -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: component_feature,	TYPE: assembly_component
          ENTITY: constituent_shape_aspect,	TYPE: product_definition_shape	(as DERIVED)
          ENTITY: mated_part_relationship,	TYPE: mated_part_relationship	(as DERIVED)

    ATTR:  product_definitional,	TYPE: LOGICAL -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: default_model_geometric_view,	TYPE: LOGICAL	(as DERIVED)

    ATTR:  id,	TYPE: identifier -- DERIVED	(AMBIGUOUS/MASKED)
      := get_id_value( SELF )


  ENTITY(SELF)	component_feature_joint
    REDCR: relating_shape_aspect,	TYPE: component_feature -- EXPLICIT
      -- OVERRIDING ENTITY: shape_aspect_relationship

    REDCR: related_shape_aspect,	TYPE: component_feature -- EXPLICIT
      -- OVERRIDING ENTITY: shape_aspect_relationship


  SUB- ENTITY(4)	connection_zone_based_assembly_joint
    (no local attributes)

  SUB- ENTITY(5)	assembly_joint
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _component_feature_joint : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eCOMPONENT_FEATURE_JOINT.self
    }

    //ATTRIBUTES
    /* override var _relating_shape_aspect: eCOMPONENT_FEATURE	//EXPLICIT REDEFINITION(eSHAPE_ASPECT_RELATIONSHIP) */

    /* override var _related_shape_aspect: eCOMPONENT_FEATURE	//EXPLICIT REDEFINITION(eSHAPE_ASPECT_RELATIONSHIP) */

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
  ENTITY component_feature_joint
    SUBTYPE OF ( shape_aspect_relationship, shape_aspect );
      SELF\shape_aspect_relationship.relating_shape_aspect : component_feature;
      SELF\shape_aspect_relationship.related_shape_aspect : component_feature;
  END_ENTITY; -- component_feature_joint (line:9878 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eCOMPONENT_FEATURE_JOINT : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _component_feature_joint.self
    }
    public let partialEntity: _component_feature_joint

    //MARK: SUPERTYPES
    public let super_eSHAPE_ASPECT_RELATIONSHIP: eSHAPE_ASPECT_RELATIONSHIP 	// [1]
    public let super_eSHAPE_ASPECT: eSHAPE_ASPECT 	// [2]
    public var super_eCOMPONENT_FEATURE_JOINT: eCOMPONENT_FEATURE_JOINT { return self } 	// [3]

    //MARK: SUBTYPES
    public var sub_eCONNECTION_ZONE_BASED_ASSEMBLY_JOINT: eCONNECTION_ZONE_BASED_ASSEMBLY_JOINT? {	// [4]
      return self.complexEntity.entityReference(eCONNECTION_ZONE_BASED_ASSEMBLY_JOINT.self)
    }

    public var sub_eASSEMBLY_JOINT: eASSEMBLY_JOINT? {	// [5]
      return self.complexEntity.entityReference(eASSEMBLY_JOINT.self)
    }


    //MARK: ATTRIBUTES
    // DESCRIPTION: (2 AMBIGUOUS REFs)

    // ID: (2 AMBIGUOUS REFs)

    // NAME: (2 AMBIGUOUS REFs)

    /// __EXPLICIT(DYNAMIC)__ attribute
    /// - origin: SUPER( ``eSHAPE_ASPECT`` )
    public var PRODUCT_DEFINITIONAL: SDAI.LOGICAL {
      get {
        if let resolved = _shape_aspect._product_definitional__provider(complex: self.complexEntity) {
          let value = resolved._product_definitional__getter(complex: self.complexEntity)
          return value
        }
        else {
          return SDAI.UNWRAP( super_eSHAPE_ASPECT.partialEntity._product_definitional )
        }
      }
      set(newValue) {
        if let _ = _shape_aspect._product_definitional__provider(complex: self.complexEntity) { return }

        let partial = super_eSHAPE_ASPECT.partialEntity
        partial._product_definitional = SDAI.LOGICAL(newValue)
      }
    }

    /// __EXPLICIT(DYNAMIC)__ attribute
    /// - origin: SUPER( ``eSHAPE_ASPECT`` )
    public var OF_SHAPE: ePRODUCT_DEFINITION_SHAPE {
      get {
        if let resolved = _shape_aspect._of_shape__provider(complex: self.complexEntity) {
          let value = resolved._of_shape__getter(complex: self.complexEntity)
          return value
        }
        else {
          return SDAI.UNWRAP( super_eSHAPE_ASPECT.partialEntity._of_shape )
        }
      }
      set(newValue) {
        if let _ = _shape_aspect._of_shape__provider(complex: self.complexEntity) { return }

        let partial = super_eSHAPE_ASPECT.partialEntity
        partial._of_shape = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SELF( ``eCOMPONENT_FEATURE_JOINT`` )
    public var RELATED_SHAPE_ASPECT: eCOMPONENT_FEATURE {
      get {
        return SDAI.UNWRAP( eCOMPONENT_FEATURE( super_eSHAPE_ASPECT_RELATIONSHIP.partialEntity
          ._related_shape_aspect ) )
      }
      set(newValue) {
        let partial = super_eSHAPE_ASPECT_RELATIONSHIP.partialEntity
        partial._related_shape_aspect = SDAI.UNWRAP(
          eSHAPE_ASPECT(newValue))
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SELF( ``eCOMPONENT_FEATURE_JOINT`` )
    public var RELATING_SHAPE_ASPECT: eCOMPONENT_FEATURE {
      get {
        return SDAI.UNWRAP( eCOMPONENT_FEATURE( super_eSHAPE_ASPECT_RELATIONSHIP.partialEntity
          ._relating_shape_aspect ) )
      }
      set(newValue) {
        let partial = super_eSHAPE_ASPECT_RELATIONSHIP.partialEntity
        partial._relating_shape_aspect = SDAI.UNWRAP(
          eSHAPE_ASPECT(newValue))
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_component_feature_joint.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eSHAPE_ASPECT_RELATIONSHIP.self) else { return nil }
      self.super_eSHAPE_ASPECT_RELATIONSHIP = super1

      guard let super2 = complexEntity?.entityReference(eSHAPE_ASPECT.self) else { return nil }
      self.super_eSHAPE_ASPECT = super2

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "COMPONENT_FEATURE_JOINT", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eSHAPE_ASPECT_RELATIONSHIP.self)
      entityDef.add(supertype: eSHAPE_ASPECT.self)
      entityDef.add(supertype: eCOMPONENT_FEATURE_JOINT.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "PRODUCT_DEFINITIONAL", keyPath: \eCOMPONENT_FEATURE_JOINT.PRODUCT_DEFINITIONAL, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "OF_SHAPE", keyPath: \eCOMPONENT_FEATURE_JOINT.OF_SHAPE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RELATED_SHAPE_ASPECT", keyPath: \eCOMPONENT_FEATURE_JOINT.RELATED_SHAPE_ASPECT, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RELATING_SHAPE_ASPECT", keyPath: \eCOMPONENT_FEATURE_JOINT.RELATING_SHAPE_ASPECT, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
