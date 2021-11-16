/* file: shape_feature_definition_fit_relationship.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY shape_feature_definition_fit_relationship
    SUBTYPE OF ( shape_feature_definition_relationship );
  END_ENTITY; -- shape_feature_definition_fit_relationship (line:28908 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	characterized_object_relationship
    ATTR:  name,	TYPE: label -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  relating_object,	TYPE: characterized_object -- EXPLICIT
      -- possibly overriden by
          ENTITY: contact_feature_definition_fit_relationship,	TYPE: contact_feature_definition
      *** ENTITY: shape_feature_definition_relationship,	TYPE: shape_feature_definition

    ATTR:  related_object,	TYPE: characterized_object -- EXPLICIT
      -- possibly overriden by
          ENTITY: contact_feature_definition_fit_relationship,	TYPE: contact_feature_definition
      *** ENTITY: shape_feature_definition_relationship,	TYPE: shape_feature_definition


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


  SUPER- ENTITY(3)	shape_feature_definition_relationship
    REDCR: relating_object,	TYPE: shape_feature_definition -- EXPLICIT
      -- OVERRIDING ENTITY: characterized_object_relationship

    REDCR: related_object,	TYPE: shape_feature_definition -- EXPLICIT
      -- OVERRIDING ENTITY: characterized_object_relationship

    REDCR: name,	TYPE: label -- DERIVED (DYNAMIC)	(AMBIGUOUS/MASKED)
      := SELF\characterized_object_relationship.name
      -- OVERRIDING ENTITY: characterized_object

    REDCR: description,	TYPE: text -- DERIVED (DYNAMIC)	(AMBIGUOUS/MASKED)
      := SELF\characterized_object_relationship.description
      -- OVERRIDING ENTITY: characterized_object


  ENTITY(SELF)	shape_feature_definition_fit_relationship
    (no local attributes)

  SUB- ENTITY(5)	contact_feature_definition_fit_relationship
    REDCR: relating_object,	TYPE: contact_feature_definition -- EXPLICIT
      -- OVERRIDING ENTITY: characterized_object_relationship

    REDCR: related_object,	TYPE: contact_feature_definition -- EXPLICIT
      -- OVERRIDING ENTITY: characterized_object_relationship


*/


//MARK: - Partial Entity
  public final class _shape_feature_definition_fit_relationship : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eSHAPE_FEATURE_DEFINITION_FIT_RELATIONSHIP.self
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
  ENTITY shape_feature_definition_fit_relationship
    SUBTYPE OF ( shape_feature_definition_relationship );
  END_ENTITY; -- shape_feature_definition_fit_relationship (line:28908 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eSHAPE_FEATURE_DEFINITION_FIT_RELATIONSHIP : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _shape_feature_definition_fit_relationship.self
    }
    public let partialEntity: _shape_feature_definition_fit_relationship

    //MARK: SUPERTYPES
    public let super_eCHARACTERIZED_OBJECT_RELATIONSHIP: eCHARACTERIZED_OBJECT_RELATIONSHIP 	// [1]
    public let super_eCHARACTERIZED_OBJECT: eCHARACTERIZED_OBJECT 	// [2]
    public let super_eSHAPE_FEATURE_DEFINITION_RELATIONSHIP: eSHAPE_FEATURE_DEFINITION_RELATIONSHIP 	// [3]
    public var super_eSHAPE_FEATURE_DEFINITION_FIT_RELATIONSHIP: eSHAPE_FEATURE_DEFINITION_FIT_RELATIONSHIP { return self } 	// [4]

    //MARK: SUBTYPES
    public var sub_eCONTACT_FEATURE_DEFINITION_FIT_RELATIONSHIP: eCONTACT_FEATURE_DEFINITION_FIT_RELATIONSHIP? {	// [5]
      return self.complexEntity.entityReference(eCONTACT_FEATURE_DEFINITION_FIT_RELATIONSHIP.self)
    }


    //MARK: ATTRIBUTES
    // DESCRIPTION: (3 AMBIGUOUS REFs)

    // NAME: (3 AMBIGUOUS REFs)

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SUPER( ``eSHAPE_FEATURE_DEFINITION_RELATIONSHIP`` )
    public var RELATED_OBJECT: eSHAPE_FEATURE_DEFINITION {
      get {
        return SDAI.UNWRAP( eSHAPE_FEATURE_DEFINITION( super_eCHARACTERIZED_OBJECT_RELATIONSHIP.partialEntity
          ._related_object ) )
      }
      set(newValue) {
        let partial = super_eCHARACTERIZED_OBJECT_RELATIONSHIP.partialEntity
        partial._related_object = SDAI.UNWRAP(
          eCHARACTERIZED_OBJECT(newValue))
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SUPER( ``eSHAPE_FEATURE_DEFINITION_RELATIONSHIP`` )
    public var RELATING_OBJECT: eSHAPE_FEATURE_DEFINITION {
      get {
        return SDAI.UNWRAP( eSHAPE_FEATURE_DEFINITION( super_eCHARACTERIZED_OBJECT_RELATIONSHIP.partialEntity
          ._relating_object ) )
      }
      set(newValue) {
        let partial = super_eCHARACTERIZED_OBJECT_RELATIONSHIP.partialEntity
        partial._relating_object = SDAI.UNWRAP(
          eCHARACTERIZED_OBJECT(newValue))
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_shape_feature_definition_fit_relationship.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eCHARACTERIZED_OBJECT_RELATIONSHIP.self) else { return nil }
      self.super_eCHARACTERIZED_OBJECT_RELATIONSHIP = super1

      guard let super2 = complexEntity?.entityReference(eCHARACTERIZED_OBJECT.self) else { return nil }
      self.super_eCHARACTERIZED_OBJECT = super2

      guard let super3 = complexEntity?.entityReference(eSHAPE_FEATURE_DEFINITION_RELATIONSHIP.self) else { return nil }
      self.super_eSHAPE_FEATURE_DEFINITION_RELATIONSHIP = super3

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "SHAPE_FEATURE_DEFINITION_FIT_RELATIONSHIP", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eCHARACTERIZED_OBJECT_RELATIONSHIP.self)
      entityDef.add(supertype: eCHARACTERIZED_OBJECT.self)
      entityDef.add(supertype: eSHAPE_FEATURE_DEFINITION_RELATIONSHIP.self)
      entityDef.add(supertype: eSHAPE_FEATURE_DEFINITION_FIT_RELATIONSHIP.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "RELATED_OBJECT", keyPath: \eSHAPE_FEATURE_DEFINITION_FIT_RELATIONSHIP.RELATED_OBJECT, 
        kind: .explicitRedeclaring, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RELATING_OBJECT", keyPath: \eSHAPE_FEATURE_DEFINITION_FIT_RELATIONSHIP.RELATING_OBJECT, 
        kind: .explicitRedeclaring, source: .superEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
