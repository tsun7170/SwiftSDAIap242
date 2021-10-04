/* file: shape_aspect_associativity.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY shape_aspect_associativity
    SUBTYPE OF ( shape_aspect_relationship );
    WHERE
      wr1: SELF.relating_shape_aspect.product_definitional;
      wr2: ( NOT SELF.related_shape_aspect.product_definitional );
  END_ENTITY; -- shape_aspect_associativity (line:28651 file:ap242ed2_mim_lf_v1.101.TY.exp)

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


  ENTITY(SELF)	shape_aspect_associativity
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _shape_aspect_associativity : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eSHAPE_ASPECT_ASSOCIATIVITY.self
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
    public static func WHERE_wr1(SELF: eSHAPE_ASPECT_ASSOCIATIVITY?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.RELATING_SHAPE_ASPECT
      let _TEMP2 = _TEMP1.PRODUCT_DEFINITIONAL
      return _TEMP2
    }
    public static func WHERE_wr2(SELF: eSHAPE_ASPECT_ASSOCIATIVITY?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.RELATED_SHAPE_ASPECT
      let _TEMP2 = _TEMP1.PRODUCT_DEFINITIONAL
      let _TEMP3 =  !_TEMP2
      return _TEMP3
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
  ENTITY shape_aspect_associativity
    SUBTYPE OF ( shape_aspect_relationship );
    WHERE
      wr1: SELF.relating_shape_aspect.product_definitional;
      wr2: ( NOT SELF.related_shape_aspect.product_definitional );
  END_ENTITY; -- shape_aspect_associativity (line:28651 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eSHAPE_ASPECT_ASSOCIATIVITY : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _shape_aspect_associativity.self
    }
    public let partialEntity: _shape_aspect_associativity

    //MARK: SUPERTYPES
    public let super_eSHAPE_ASPECT_RELATIONSHIP: eSHAPE_ASPECT_RELATIONSHIP 	// [1]
    public var super_eSHAPE_ASPECT_ASSOCIATIVITY: eSHAPE_ASPECT_ASSOCIATIVITY { return self } 	// [2]

    //MARK: SUBTYPES

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
      guard let partial = complexEntity?.partialEntityInstance(_shape_aspect_associativity.self) else { return nil }
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
      result[prefix2 + " .WHERE_wr1"] = _shape_aspect_associativity.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _shape_aspect_associativity.WHERE_wr2(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "SHAPE_ASPECT_ASSOCIATIVITY", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eSHAPE_ASPECT_RELATIONSHIP.self)
      entityDef.add(supertype: eSHAPE_ASPECT_ASSOCIATIVITY.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eSHAPE_ASPECT_ASSOCIATIVITY.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ID", keyPath: \eSHAPE_ASPECT_ASSOCIATIVITY.ID, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "RELATED_SHAPE_ASPECT", keyPath: \eSHAPE_ASPECT_ASSOCIATIVITY.RELATED_SHAPE_ASPECT, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eSHAPE_ASPECT_ASSOCIATIVITY.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "RELATING_SHAPE_ASPECT", keyPath: \eSHAPE_ASPECT_ASSOCIATIVITY.RELATING_SHAPE_ASPECT, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}