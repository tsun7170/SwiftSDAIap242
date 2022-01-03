/* file: contact_feature_fit_relationship.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY contact_feature_fit_relationship
    SUBTYPE OF ( shape_feature_fit_relationship );
      SELF\shape_aspect_relationship.relating_shape_aspect : contact_feature;
      SELF\shape_aspect_relationship.related_shape_aspect : contact_feature;
  END_ENTITY; -- contact_feature_fit_relationship (line:10523 file:ap242ed2_mim_lf_v1.101.TY.exp)

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
          ENTITY: component_feature_joint,	TYPE: component_feature
          ENTITY: assembly_shape_constraint_item_relationship,	TYPE: assembly_shape_constraint
      *** ENTITY: contact_feature_fit_relationship,	TYPE: contact_feature
          ENTITY: component_feature_relationship,	TYPE: component_feature
          ENTITY: shape_aspect_deriving_relationship,	TYPE: derived_shape_aspect	(OBSERVED)

    ATTR:  related_shape_aspect,	TYPE: shape_aspect -- EXPLICIT
      -- observed by
        ENTITY(1): symmetric_shape_aspect,	ATTR: basis_relationships,	TYPE: SET [1 : ?] OF
          shape_aspect_deriving_relationship
        ENTITY(2): datum,	ATTR: established_by_relationships,	TYPE: SET [1 : ?] OF shape_aspect_relationship
      -- possibly overriden by
          ENTITY: component_feature_joint,	TYPE: component_feature
      *** ENTITY: contact_feature_fit_relationship,	TYPE: contact_feature
          ENTITY: component_feature_relationship,	TYPE: component_feature
          ENTITY: feature_for_datum_target_relationship,	TYPE: datum_target

    ATTR:  id,	TYPE: identifier -- DERIVED
      := get_id_value( SELF )


  SUPER- ENTITY(2)	characterized_object
    ATTR:  name,	TYPE: label -- EXPLICIT (DYNAMIC)	(AMBIGUOUS/MASKED)
      -- possibly overriden by
          ENTITY: shape_feature_definition_element_relationship,	TYPE: label	(as DERIVED)
          ENTITY: shape_feature_fit_relationship,	TYPE: label	(as DERIVED)
          ENTITY: characterized_representation,	TYPE: label	(as DERIVED)
          ENTITY: shape_feature_definition_relationship,	TYPE: label	(as DERIVED)

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT (DYNAMIC)	(AMBIGUOUS/MASKED)
      -- possibly overriden by
          ENTITY: shape_feature_definition_element_relationship,	TYPE: text	(as DERIVED)
          ENTITY: shape_feature_fit_relationship,	TYPE: text	(as DERIVED)
          ENTITY: characterized_representation,	TYPE: text	(as DERIVED)
          ENTITY: shape_feature_definition_relationship,	TYPE: text	(as DERIVED)


  SUPER- ENTITY(3)	shape_feature_fit_relationship
    REDCR: name,	TYPE: label -- DERIVED (DYNAMIC)	(AMBIGUOUS/MASKED)
      := SELF\shape_aspect_relationship.name
      -- OVERRIDING ENTITY: characterized_object

    REDCR: description,	TYPE: text -- DERIVED (DYNAMIC)	(AMBIGUOUS/MASKED)
      := SELF\shape_aspect_relationship.description
      -- OVERRIDING ENTITY: characterized_object


  ENTITY(SELF)	contact_feature_fit_relationship
    REDCR: relating_shape_aspect,	TYPE: contact_feature -- EXPLICIT
      -- OVERRIDING ENTITY: shape_aspect_relationship

    REDCR: related_shape_aspect,	TYPE: contact_feature -- EXPLICIT
      -- OVERRIDING ENTITY: shape_aspect_relationship


*/


//MARK: - Partial Entity
  public final class _contact_feature_fit_relationship : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eCONTACT_FEATURE_FIT_RELATIONSHIP.self
    }

    //ATTRIBUTES
    /* override var _relating_shape_aspect: eCONTACT_FEATURE	//EXPLICIT REDEFINITION(eSHAPE_ASPECT_RELATIONSHIP) */

    /* override var _related_shape_aspect: eCONTACT_FEATURE	//EXPLICIT REDEFINITION(eSHAPE_ASPECT_RELATIONSHIP) */

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
  ENTITY contact_feature_fit_relationship
    SUBTYPE OF ( shape_feature_fit_relationship );
      SELF\shape_aspect_relationship.relating_shape_aspect : contact_feature;
      SELF\shape_aspect_relationship.related_shape_aspect : contact_feature;
  END_ENTITY; -- contact_feature_fit_relationship (line:10523 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eCONTACT_FEATURE_FIT_RELATIONSHIP : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _contact_feature_fit_relationship.self
    }
    public let partialEntity: _contact_feature_fit_relationship

    //MARK: SUPERTYPES
    public let super_eSHAPE_ASPECT_RELATIONSHIP: eSHAPE_ASPECT_RELATIONSHIP 	// [1]
    public let super_eCHARACTERIZED_OBJECT: eCHARACTERIZED_OBJECT 	// [2]
    public let super_eSHAPE_FEATURE_FIT_RELATIONSHIP: eSHAPE_FEATURE_FIT_RELATIONSHIP 	// [3]
    public var super_eCONTACT_FEATURE_FIT_RELATIONSHIP: eCONTACT_FEATURE_FIT_RELATIONSHIP { return self } 	// [4]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    // DESCRIPTION: (3 AMBIGUOUS REFs)

    // NAME: (3 AMBIGUOUS REFs)

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eSHAPE_ASPECT_RELATIONSHIP`` )
    public var ID: tIDENTIFIER?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"ID") {
          return cached.value as! tIDENTIFIER? 
        }
        let origin = super_eSHAPE_ASPECT_RELATIONSHIP
        let value = tIDENTIFIER(origin.partialEntity._id__getter(SELF: origin))
        updateCache(derivedAttributeName:"ID", value:value)
        return value
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SELF( ``eCONTACT_FEATURE_FIT_RELATIONSHIP`` )
    public var RELATED_SHAPE_ASPECT: eCONTACT_FEATURE {
      get {
        return SDAI.UNWRAP( eCONTACT_FEATURE( super_eSHAPE_ASPECT_RELATIONSHIP.partialEntity
          ._related_shape_aspect ) )
      }
      set(newValue) {
        let partial = super_eSHAPE_ASPECT_RELATIONSHIP.partialEntity
        partial._related_shape_aspect = SDAI.UNWRAP(
          eSHAPE_ASPECT(newValue))
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SELF( ``eCONTACT_FEATURE_FIT_RELATIONSHIP`` )
    public var RELATING_SHAPE_ASPECT: eCONTACT_FEATURE {
      get {
        return SDAI.UNWRAP( eCONTACT_FEATURE( super_eSHAPE_ASPECT_RELATIONSHIP.partialEntity
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
      guard let partial = complexEntity?.partialEntityInstance(_contact_feature_fit_relationship.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eSHAPE_ASPECT_RELATIONSHIP.self) else { return nil }
      self.super_eSHAPE_ASPECT_RELATIONSHIP = super1

      guard let super2 = complexEntity?.entityReference(eCHARACTERIZED_OBJECT.self) else { return nil }
      self.super_eCHARACTERIZED_OBJECT = super2

      guard let super3 = complexEntity?.entityReference(eSHAPE_FEATURE_FIT_RELATIONSHIP.self) else { return nil }
      self.super_eSHAPE_FEATURE_FIT_RELATIONSHIP = super3

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "CONTACT_FEATURE_FIT_RELATIONSHIP", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eSHAPE_ASPECT_RELATIONSHIP.self)
      entityDef.add(supertype: eCHARACTERIZED_OBJECT.self)
      entityDef.add(supertype: eSHAPE_FEATURE_FIT_RELATIONSHIP.self)
      entityDef.add(supertype: eCONTACT_FEATURE_FIT_RELATIONSHIP.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "ID", keyPath: \eCONTACT_FEATURE_FIT_RELATIONSHIP.ID, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "RELATED_SHAPE_ASPECT", keyPath: \eCONTACT_FEATURE_FIT_RELATIONSHIP.RELATED_SHAPE_ASPECT, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RELATING_SHAPE_ASPECT", keyPath: \eCONTACT_FEATURE_FIT_RELATIONSHIP.RELATING_SHAPE_ASPECT, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
