/* file: feature_component_relationship.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY feature_component_relationship
    SUPERTYPE OF ( 
        ONEOF ( 
            pattern_omit_membership, 
            pattern_offset_membership ) )
    SUBTYPE OF ( shape_aspect_relationship );
    WHERE
      wr1: ( ( SIZEOF( [ 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.COMPOSITE_SHAPE_ASPECT', 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.REPLICATE_FEATURE' , 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.TRANSITION_FEATURE' , 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.MODIFIED_PATTERN' ] * TYPEOF( SELF.
               relating_shape_aspect ) ) = 1 ) OR ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'MACHINING_FEATURE_DEFINITION'  IN TYPEOF( SELF.relating_shape_aspect.of_shape.definition ) ) 
               OR ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.FEATURE_COMPONENT_DEFINITION' IN 
               TYPEOF( SELF.relating_shape_aspect.of_shape.definition ) ) );
  END_ENTITY; -- feature_component_relationship (line:15263 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	shape_aspect_relationship
    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT

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
          ENTITY: contact_feature_fit_relationship,	TYPE: contact_feature
          ENTITY: component_feature_relationship,	TYPE: component_feature
          ENTITY: shape_aspect_deriving_relationship,	TYPE: derived_shape_aspect	(OBSERVED)

    ATTR:  related_shape_aspect,	TYPE: shape_aspect -- EXPLICIT
      -- observed by
        ENTITY(1): symmetric_shape_aspect,	ATTR: basis_relationships,	TYPE: SET [1 : ?] OF
          shape_aspect_deriving_relationship
        ENTITY(2): datum,	ATTR: established_by_relationships,	TYPE: SET [1 : ?] OF shape_aspect_relationship
      -- possibly overriden by
          ENTITY: component_feature_joint,	TYPE: component_feature
          ENTITY: contact_feature_fit_relationship,	TYPE: contact_feature
          ENTITY: component_feature_relationship,	TYPE: component_feature
          ENTITY: feature_for_datum_target_relationship,	TYPE: datum_target

    ATTR:  id,	TYPE: identifier -- DERIVED
      := get_id_value( SELF )


  ENTITY(SELF)	feature_component_relationship
    (no local attributes)

  SUB- ENTITY(3)	pattern_offset_membership
    (no local attributes)

  SUB- ENTITY(4)	pattern_omit_membership
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _feature_component_relationship : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eFEATURE_COMPONENT_RELATIONSHIP.self
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


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eFEATURE_COMPONENT_RELATIONSHIP?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = ([SDAI.AIE(SDAI.STRING(
        "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.COMPOSITE_SHAPE_ASPECT")), 
        SDAI.AIE(SDAI.STRING("AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.REPLICATE_FEATURE")), 
        SDAI.AIE(SDAI.STRING("AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.TRANSITION_FEATURE")), 
        SDAI.AIE(SDAI.STRING("AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.MODIFIED_PATTERN"))] 
        as [SDAI.AggregationInitializerElement<SDAI.STRING>])
      let _TEMP2 = SELF.RELATING_SHAPE_ASPECT
      let _TEMP3 = SDAI.TYPEOF(_TEMP2)
      let _TEMP4 = SDAI.FORCE_OPTIONAL(_TEMP1) * SDAI.FORCE_OPTIONAL(_TEMP3)
      let _TEMP5 = SDAI.SIZEOF(_TEMP4)
      let _TEMP6 = _TEMP5 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      let _TEMP7 = SDAI.TYPEOF(SELF.RELATING_SHAPE_ASPECT.OF_SHAPE.DEFINITION, 
        IS: sMACHINING_FEATURE_DEFINITION.self)
      let _TEMP8 = _TEMP6 || _TEMP7
      let _TEMP9 = SDAI.TYPEOF(SELF.RELATING_SHAPE_ASPECT.OF_SHAPE.DEFINITION, 
        IS: eFEATURE_COMPONENT_DEFINITION.self)
      let _TEMP10 = _TEMP8 || _TEMP9
      return _TEMP10
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
  ENTITY feature_component_relationship
    SUPERTYPE OF ( 
        ONEOF ( 
            pattern_omit_membership, 
            pattern_offset_membership ) )
    SUBTYPE OF ( shape_aspect_relationship );
    WHERE
      wr1: ( ( SIZEOF( [ 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.COMPOSITE_SHAPE_ASPECT', 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.REPLICATE_FEATURE' , 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.TRANSITION_FEATURE' , 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.MODIFIED_PATTERN' ] * TYPEOF( SELF.
               relating_shape_aspect ) ) = 1 ) OR ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'MACHINING_FEATURE_DEFINITION'  IN TYPEOF( SELF.relating_shape_aspect.of_shape.definition ) ) 
               OR ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.FEATURE_COMPONENT_DEFINITION' IN 
               TYPEOF( SELF.relating_shape_aspect.of_shape.definition ) ) );
  END_ENTITY; -- feature_component_relationship (line:15263 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eFEATURE_COMPONENT_RELATIONSHIP : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _feature_component_relationship.self
    }
    public let partialEntity: _feature_component_relationship

    //MARK: SUPERTYPES
    public let super_eSHAPE_ASPECT_RELATIONSHIP: eSHAPE_ASPECT_RELATIONSHIP 	// [1]
    public var super_eFEATURE_COMPONENT_RELATIONSHIP: eFEATURE_COMPONENT_RELATIONSHIP { return self } 	// [2]

    //MARK: SUBTYPES
    public var sub_ePATTERN_OFFSET_MEMBERSHIP: ePATTERN_OFFSET_MEMBERSHIP? {	// [3]
      return self.complexEntity.entityReference(ePATTERN_OFFSET_MEMBERSHIP.self)
    }

    public var sub_ePATTERN_OMIT_MEMBERSHIP: ePATTERN_OMIT_MEMBERSHIP? {	// [4]
      return self.complexEntity.entityReference(ePATTERN_OMIT_MEMBERSHIP.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eSHAPE_ASPECT_RELATIONSHIP`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        return super_eSHAPE_ASPECT_RELATIONSHIP.partialEntity._description
      }
      set(newValue) {
        let partial = super_eSHAPE_ASPECT_RELATIONSHIP.partialEntity
        partial._description = newValue
      }
    }

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

    /// __EXPLICIT(OBSERVED)__ attribute
    /// - origin: SUPER( ``eSHAPE_ASPECT_RELATIONSHIP`` )
    public var RELATED_SHAPE_ASPECT: eSHAPE_ASPECT {
      get {
        return SDAI.UNWRAP( super_eSHAPE_ASPECT_RELATIONSHIP.partialEntity._related_shape_aspect )
      }
      set(newValue) {
        let partial = super_eSHAPE_ASPECT_RELATIONSHIP.partialEntity
        partial._related_shape_aspect = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eSHAPE_ASPECT_RELATIONSHIP`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( super_eSHAPE_ASPECT_RELATIONSHIP.partialEntity._name )
      }
      set(newValue) {
        let partial = super_eSHAPE_ASPECT_RELATIONSHIP.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT(OBSERVED)__ attribute
    /// - origin: SUPER( ``eSHAPE_ASPECT_RELATIONSHIP`` )
    public var RELATING_SHAPE_ASPECT: eSHAPE_ASPECT {
      get {
        return SDAI.UNWRAP( super_eSHAPE_ASPECT_RELATIONSHIP.partialEntity._relating_shape_aspect )
      }
      set(newValue) {
        let partial = super_eSHAPE_ASPECT_RELATIONSHIP.partialEntity
        partial._relating_shape_aspect = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_feature_component_relationship.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eSHAPE_ASPECT_RELATIONSHIP.self) else { return nil }
      self.super_eSHAPE_ASPECT_RELATIONSHIP = super1

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
      result[prefix2 + " .WHERE_wr1"] = _feature_component_relationship.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "FEATURE_COMPONENT_RELATIONSHIP", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eSHAPE_ASPECT_RELATIONSHIP.self)
      entityDef.add(supertype: eFEATURE_COMPONENT_RELATIONSHIP.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eFEATURE_COMPONENT_RELATIONSHIP.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ID", keyPath: \eFEATURE_COMPONENT_RELATIONSHIP.ID, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "RELATED_SHAPE_ASPECT", keyPath: \eFEATURE_COMPONENT_RELATIONSHIP.RELATED_SHAPE_ASPECT, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eFEATURE_COMPONENT_RELATIONSHIP.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "RELATING_SHAPE_ASPECT", keyPath: \eFEATURE_COMPONENT_RELATIONSHIP.RELATING_SHAPE_ASPECT, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
