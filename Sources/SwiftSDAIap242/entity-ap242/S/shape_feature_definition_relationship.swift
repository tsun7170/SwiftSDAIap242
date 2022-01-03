/* file: shape_feature_definition_relationship.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY shape_feature_definition_relationship
    SUBTYPE OF ( characterized_object_relationship, characterized_object );
      SELF\characterized_object_relationship.relating_object : shape_feature_definition;
      SELF\characterized_object_relationship.related_object : shape_feature_definition;
    DERIVE
      SELF\characterized_object.name  : label := SELF\characterized_object_relationship.name;
      SELF\characterized_object.description : text := SELF\characterized_object_relationship.description;
  END_ENTITY; -- shape_feature_definition_relationship (line:28913 file:ap242ed2_mim_lf_v1.101.TY.exp)

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


  ENTITY(SELF)	shape_feature_definition_relationship
    REDCR: relating_object,	TYPE: shape_feature_definition -- EXPLICIT
      -- OVERRIDING ENTITY: characterized_object_relationship

    REDCR: related_object,	TYPE: shape_feature_definition -- EXPLICIT
      -- OVERRIDING ENTITY: characterized_object_relationship

    REDCR: name,	TYPE: label -- DERIVED (DYNAMIC)	(MASKING)
      := SELF\characterized_object_relationship.name
      -- OVERRIDING ENTITY: characterized_object

    REDCR: description,	TYPE: text -- DERIVED (DYNAMIC)	(MASKING)
      := SELF\characterized_object_relationship.description
      -- OVERRIDING ENTITY: characterized_object


  SUB- ENTITY(4)	contact_feature_definition_fit_relationship
    REDCR: relating_object,	TYPE: contact_feature_definition -- EXPLICIT
      -- OVERRIDING ENTITY: characterized_object_relationship

    REDCR: related_object,	TYPE: contact_feature_definition -- EXPLICIT
      -- OVERRIDING ENTITY: characterized_object_relationship


  SUB- ENTITY(5)	shape_feature_definition_fit_relationship
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _shape_feature_definition_relationship : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eSHAPE_FEATURE_DEFINITION_RELATIONSHIP.self
    }

    //ATTRIBUTES
    /* override var _relating_object: eSHAPE_FEATURE_DEFINITION	//EXPLICIT REDEFINITION(eCHARACTERIZED_OBJECT_RELATIONSHIP) */

    /* override var _related_object: eSHAPE_FEATURE_DEFINITION	//EXPLICIT REDEFINITION(eCHARACTERIZED_OBJECT_RELATIONSHIP) */

    /// DERIVE ATTRIBUTE REDEFINITION(origin: eCHARACTERIZED_OBJECT)
    /// - attribute value provider protocol conformance wrapper
    internal func _name__getter(complex: SDAI.ComplexEntity) -> tLABEL {
      let SELF = complex.entityReference( eSHAPE_FEATURE_DEFINITION_RELATIONSHIP.self )!
      return SDAI.UNWRAP( tLABEL(SELF.NAME) )
    }
    /// DERIVE ATTRIBUTE REDEFINITION(origin: eCHARACTERIZED_OBJECT)
    /// - gut of derived attribute logic
    internal func _name__getter(SELF: eSHAPE_FEATURE_DEFINITION_RELATIONSHIP) -> tLABEL {

      let _TEMP1 = SELF.GROUP_REF(eCHARACTERIZED_OBJECT_RELATIONSHIP.self)
      let _TEMP2 = _TEMP1?.NAME
      let value = _TEMP2
      return SDAI.UNWRAP( value )
    }

    /// DERIVE ATTRIBUTE REDEFINITION(origin: eCHARACTERIZED_OBJECT)
    /// - attribute value provider protocol conformance wrapper
    internal func _description__getter(complex: SDAI.ComplexEntity) -> tTEXT?  {
      let SELF = complex.entityReference( eSHAPE_FEATURE_DEFINITION_RELATIONSHIP.self )!
      return SDAI.UNWRAP( tTEXT(SELF.DESCRIPTION) )
    }
    /// DERIVE ATTRIBUTE REDEFINITION(origin: eCHARACTERIZED_OBJECT)
    /// - gut of derived attribute logic
    internal func _description__getter(SELF: eSHAPE_FEATURE_DEFINITION_RELATIONSHIP) -> tTEXT {

      let _TEMP1 = SELF.GROUP_REF(eCHARACTERIZED_OBJECT_RELATIONSHIP.self)
      let _TEMP2 = _TEMP1?.DESCRIPTION
      let value = _TEMP2
      return SDAI.UNWRAP( value )
    }

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sCLASSIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sACTION_ITEMS.typeName)) // -> sCLASSIFICATION_ITEM
      members.insert(SDAI.STRING(sCHANGE_MANAGEMENT_OBJECT.typeName)) // -> sACTION_ITEMS
      members.insert(SDAI.STRING(sIR_USAGE_ITEM.typeName)) // -> sCLASSIFICATION_ITEM
      members.insert(SDAI.STRING(sMULTI_LANGUAGE_ATTRIBUTE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sIDENTIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sDESCRIPTION_ITEM.typeName)) // -> Self
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
  ENTITY shape_feature_definition_relationship
    SUBTYPE OF ( characterized_object_relationship, characterized_object );
      SELF\characterized_object_relationship.relating_object : shape_feature_definition;
      SELF\characterized_object_relationship.related_object : shape_feature_definition;
    DERIVE
      SELF\characterized_object.name  : label := SELF\characterized_object_relationship.name;
      SELF\characterized_object.description : text := SELF\characterized_object_relationship.description;
  END_ENTITY; -- shape_feature_definition_relationship (line:28913 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eSHAPE_FEATURE_DEFINITION_RELATIONSHIP : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _shape_feature_definition_relationship.self
    }
    public let partialEntity: _shape_feature_definition_relationship

    //MARK: SUPERTYPES
    public let super_eCHARACTERIZED_OBJECT_RELATIONSHIP: eCHARACTERIZED_OBJECT_RELATIONSHIP 	// [1]
    public let super_eCHARACTERIZED_OBJECT: eCHARACTERIZED_OBJECT 	// [2]
    public var super_eSHAPE_FEATURE_DEFINITION_RELATIONSHIP: eSHAPE_FEATURE_DEFINITION_RELATIONSHIP { return self } 	// [3]

    //MARK: SUBTYPES
    public var sub_eCONTACT_FEATURE_DEFINITION_FIT_RELATIONSHIP: eCONTACT_FEATURE_DEFINITION_FIT_RELATIONSHIP? {	// [4]
      return self.complexEntity.entityReference(eCONTACT_FEATURE_DEFINITION_FIT_RELATIONSHIP.self)
    }

    public var sub_eSHAPE_FEATURE_DEFINITION_FIT_RELATIONSHIP: eSHAPE_FEATURE_DEFINITION_FIT_RELATIONSHIP? {	// [5]
      return self.complexEntity.entityReference(eSHAPE_FEATURE_DEFINITION_FIT_RELATIONSHIP.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT REDEF(DERIVE)__ attribute
    /// - origin: SELF( ``eSHAPE_FEATURE_DEFINITION_RELATIONSHIP`` )
    public var DESCRIPTION: tTEXT {
      get {
        if let cached = cachedValue(derivedAttributeName:"DESCRIPTION") {
          return cached.value as! tTEXT
        }
        let origin = self
        let value = SDAI.UNWRAP( origin.partialEntity._description__getter(SELF: origin) )
        updateCache(derivedAttributeName:"DESCRIPTION", value:value)
        return value
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SELF( ``eSHAPE_FEATURE_DEFINITION_RELATIONSHIP`` )
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
    /// - origin: SELF( ``eSHAPE_FEATURE_DEFINITION_RELATIONSHIP`` )
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

    /// __EXPLICIT REDEF(DERIVE)__ attribute
    /// - origin: SELF( ``eSHAPE_FEATURE_DEFINITION_RELATIONSHIP`` )
    public var NAME: tLABEL {
      get {
        if let cached = cachedValue(derivedAttributeName:"NAME") {
          return cached.value as! tLABEL
        }
        let origin = self
        let value = SDAI.UNWRAP( origin.partialEntity._name__getter(SELF: origin) )
        updateCache(derivedAttributeName:"NAME", value:value)
        return value
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_shape_feature_definition_relationship.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eCHARACTERIZED_OBJECT_RELATIONSHIP.self) else { return nil }
      self.super_eCHARACTERIZED_OBJECT_RELATIONSHIP = super1

      guard let super2 = complexEntity?.entityReference(eCHARACTERIZED_OBJECT.self) else { return nil }
      self.super_eCHARACTERIZED_OBJECT = super2

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "SHAPE_FEATURE_DEFINITION_RELATIONSHIP", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eCHARACTERIZED_OBJECT_RELATIONSHIP.self)
      entityDef.add(supertype: eCHARACTERIZED_OBJECT.self)
      entityDef.add(supertype: eSHAPE_FEATURE_DEFINITION_RELATIONSHIP.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eSHAPE_FEATURE_DEFINITION_RELATIONSHIP.DESCRIPTION, 
        kind: .derivedRedeclaring, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "RELATED_OBJECT", keyPath: \eSHAPE_FEATURE_DEFINITION_RELATIONSHIP.RELATED_OBJECT, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RELATING_OBJECT", keyPath: \eSHAPE_FEATURE_DEFINITION_RELATIONSHIP.RELATING_OBJECT, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eSHAPE_FEATURE_DEFINITION_RELATIONSHIP.NAME, 
        kind: .derivedRedeclaring, source: .thisEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}

//MARK: - partial Entity Dynamic Attribute Protocol Conformances
extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF._shape_feature_definition_relationship :
  eCHARACTERIZED_OBJECT__NAME__provider, eCHARACTERIZED_OBJECT__DESCRIPTION__provider {}
