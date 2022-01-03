/* file: characterized_object_relationship.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY characterized_object_relationship;
      name             : label;
      description      : OPTIONAL text;
      relating_object  : characterized_object;
      related_object   : characterized_object;
  END_ENTITY; -- characterized_object_relationship (line:9270 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  ENTITY(SELF)	characterized_object_relationship
    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT

    ATTR:  relating_object,	TYPE: characterized_object -- EXPLICIT
      -- possibly overriden by
          ENTITY: contact_feature_definition_fit_relationship,	TYPE: contact_feature_definition
          ENTITY: shape_feature_definition_relationship,	TYPE: shape_feature_definition

    ATTR:  related_object,	TYPE: characterized_object -- EXPLICIT
      -- possibly overriden by
          ENTITY: contact_feature_definition_fit_relationship,	TYPE: contact_feature_definition
          ENTITY: shape_feature_definition_relationship,	TYPE: shape_feature_definition


  SUB- ENTITY(2)	contact_feature_definition_fit_relationship
    REDCR: relating_object,	TYPE: contact_feature_definition -- EXPLICIT
      -- OVERRIDING ENTITY: characterized_object_relationship

    REDCR: related_object,	TYPE: contact_feature_definition -- EXPLICIT
      -- OVERRIDING ENTITY: characterized_object_relationship


  SUB- ENTITY(3)	shape_feature_definition_fit_relationship
    (no local attributes)

  SUB- ENTITY(4)	shape_feature_definition_relationship
    REDCR: relating_object,	TYPE: shape_feature_definition -- EXPLICIT
      -- OVERRIDING ENTITY: characterized_object_relationship

    REDCR: related_object,	TYPE: shape_feature_definition -- EXPLICIT
      -- OVERRIDING ENTITY: characterized_object_relationship

    REDCR: name,	TYPE: label -- DERIVED (DYNAMIC)
      := SELF\characterized_object_relationship.name
      -- OVERRIDING ENTITY: characterized_object

    REDCR: description,	TYPE: text -- DERIVED (DYNAMIC)
      := SELF\characterized_object_relationship.description
      -- OVERRIDING ENTITY: characterized_object


*/


//MARK: - Partial Entity
  public final class _characterized_object_relationship : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eCHARACTERIZED_OBJECT_RELATIONSHIP.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _name: tLABEL // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _description: tTEXT?  // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _relating_object: eCHARACTERIZED_OBJECT // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _related_object: eCHARACTERIZED_OBJECT // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._name.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._description?.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._relating_object.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._related_object.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._name.value.isValueEqualOptionally(to: rhs._name.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._description?.value.isValueEqualOptionally(to: rhs._description?.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._relating_object.value.isValueEqualOptionally(to: rhs._relating_object.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._related_object.value.isValueEqualOptionally(to: rhs._related_object.value, visited: &comppairs)	{
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
      if let comp = self._name.value.isValueEqualOptionally(to: rhs._name.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._description?.value.isValueEqualOptionally(to: rhs._description?.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._relating_object.value.isValueEqualOptionally(to: rhs._relating_object.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._related_object.value.isValueEqualOptionally(to: rhs._related_object.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(NAME: tLABEL, DESCRIPTION: tTEXT? , RELATING_OBJECT: eCHARACTERIZED_OBJECT, 
                RELATED_OBJECT: eCHARACTERIZED_OBJECT) {
      self._name = NAME
      self._description = DESCRIPTION
      self._relating_object = RELATING_OBJECT
      self._related_object = RELATED_OBJECT
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 4
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: tLABEL.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverOptionalParameter(as: tTEXT.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p2) = exchangeStructure.recoverRequiredParameter(as: eCHARACTERIZED_OBJECT.self, from: parameters[2])
      else { exchangeStructure.add(errorContext: "while recovering parameter #2 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p3) = exchangeStructure.recoverRequiredParameter(as: eCHARACTERIZED_OBJECT.self, from: parameters[3])
      else { exchangeStructure.add(errorContext: "while recovering parameter #3 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( NAME: p0, DESCRIPTION: p1, RELATING_OBJECT: p2, RELATED_OBJECT: p3 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY characterized_object_relationship;
      name             : label;
      description      : OPTIONAL text;
      relating_object  : characterized_object;
      related_object   : characterized_object;
  END_ENTITY; -- characterized_object_relationship (line:9270 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eCHARACTERIZED_OBJECT_RELATIONSHIP : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _characterized_object_relationship.self
    }
    public let partialEntity: _characterized_object_relationship

    //MARK: SUPERTYPES
    public var super_eCHARACTERIZED_OBJECT_RELATIONSHIP: eCHARACTERIZED_OBJECT_RELATIONSHIP { return self } 	// [1]

    //MARK: SUBTYPES
    public var sub_eCONTACT_FEATURE_DEFINITION_FIT_RELATIONSHIP: eCONTACT_FEATURE_DEFINITION_FIT_RELATIONSHIP? {	// [2]
      return self.complexEntity.entityReference(eCONTACT_FEATURE_DEFINITION_FIT_RELATIONSHIP.self)
    }

    public var sub_eSHAPE_FEATURE_DEFINITION_FIT_RELATIONSHIP: eSHAPE_FEATURE_DEFINITION_FIT_RELATIONSHIP? {	// [3]
      return self.complexEntity.entityReference(eSHAPE_FEATURE_DEFINITION_FIT_RELATIONSHIP.self)
    }

    public var sub_eSHAPE_FEATURE_DEFINITION_RELATIONSHIP: eSHAPE_FEATURE_DEFINITION_RELATIONSHIP? {	// [4]
      return self.complexEntity.entityReference(eSHAPE_FEATURE_DEFINITION_RELATIONSHIP.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eCHARACTERIZED_OBJECT_RELATIONSHIP`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        return self.partialEntity._description
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._description = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eCHARACTERIZED_OBJECT_RELATIONSHIP`` )
    public var RELATED_OBJECT: eCHARACTERIZED_OBJECT {
      get {
        return SDAI.UNWRAP( self.partialEntity._related_object )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._related_object = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eCHARACTERIZED_OBJECT_RELATIONSHIP`` )
    public var RELATING_OBJECT: eCHARACTERIZED_OBJECT {
      get {
        return SDAI.UNWRAP( self.partialEntity._relating_object )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._relating_object = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eCHARACTERIZED_OBJECT_RELATIONSHIP`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( self.partialEntity._name )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_characterized_object_relationship.self) else { return nil }
      self.partialEntity = partial

      super.init(complex: complexEntity)
    }

    public required convenience init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let entityRef = generic?.entityReference else { return nil }
      self.init(complex: entityRef.complexEntity)
    }

    public convenience init?<S: SDAISelectType>(_ select: S?) { self.init(possiblyFrom: select) }
    public convenience init?(_ complex: SDAI.ComplexEntity?) { self.init(complex: complex) }

    //SIMPLE ENTITY REFERENCE
    public convenience init?(_ partial:_characterized_object_relationship) {
      let complex = SDAI.ComplexEntity(entities:[partial])
      self.init(complex: complex)
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "CHARACTERIZED_OBJECT_RELATIONSHIP", type: self, explicitAttributeCount: 4)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eCHARACTERIZED_OBJECT_RELATIONSHIP.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eCHARACTERIZED_OBJECT_RELATIONSHIP.DESCRIPTION, 
        kind: .explicitOptional, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "RELATED_OBJECT", keyPath: \eCHARACTERIZED_OBJECT_RELATIONSHIP.RELATED_OBJECT, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RELATING_OBJECT", keyPath: \eCHARACTERIZED_OBJECT_RELATIONSHIP.RELATING_OBJECT, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eCHARACTERIZED_OBJECT_RELATIONSHIP.NAME, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
