/* file: right_to_usage_association.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY right_to_usage_association
    SUBTYPE OF ( action_method_relationship );
      SELF\action_method_relationship.relating_method : information_usage_right;
      SELF\action_method_relationship.related_method : information_right;
    DERIVE
      right_applied  : information_right := SELF\action_method_relationship.related_method;
      right_usage    : information_usage_right := SELF\action_method_relationship.relating_method;
  END_ENTITY; -- right_to_usage_association (line:28018 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	action_method_relationship
    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT

    ATTR:  relating_method,	TYPE: action_method -- EXPLICIT
      -- possibly overriden by
      *** ENTITY: right_to_usage_association,	TYPE: information_usage_right
          ENTITY: usage_association,	TYPE: information_usage_right

    ATTR:  related_method,	TYPE: action_method -- EXPLICIT
      -- possibly overriden by
      *** ENTITY: right_to_usage_association,	TYPE: information_right
          ENTITY: usage_association,	TYPE: information_usage_right


  ENTITY(SELF)	right_to_usage_association
    REDCR: relating_method,	TYPE: information_usage_right -- EXPLICIT
      -- OVERRIDING ENTITY: action_method_relationship

    REDCR: related_method,	TYPE: information_right -- EXPLICIT
      -- OVERRIDING ENTITY: action_method_relationship

    ATTR:  right_applied,	TYPE: information_right -- DERIVED
      := SELF\action_method_relationship.related_method

    ATTR:  right_usage,	TYPE: information_usage_right -- DERIVED
      := SELF\action_method_relationship.relating_method


*/


//MARK: - Partial Entity
  public final class _right_to_usage_association : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eRIGHT_TO_USAGE_ASSOCIATION.self
    }

    //ATTRIBUTES
    /* override var _relating_method: eINFORMATION_USAGE_RIGHT	//EXPLICIT REDEFINITION(eACTION_METHOD_RELATIONSHIP) */

    /* override var _related_method: eINFORMATION_RIGHT	//EXPLICIT REDEFINITION(eACTION_METHOD_RELATIONSHIP) */

    /// DERIVE ATTRIBUTE
    internal func _right_applied__getter(SELF: eRIGHT_TO_USAGE_ASSOCIATION) -> eINFORMATION_RIGHT?  {

      let _TEMP1 = SELF.GROUP_REF(eACTION_METHOD_RELATIONSHIP.self)
      let _TEMP2 = _TEMP1?.RELATED_METHOD
      return eINFORMATION_RIGHT(/*eACTION_METHOD*/_TEMP2)
    }

    /// DERIVE ATTRIBUTE
    internal func _right_usage__getter(SELF: eRIGHT_TO_USAGE_ASSOCIATION) -> eINFORMATION_USAGE_RIGHT?  {

      let _TEMP1 = SELF.GROUP_REF(eACTION_METHOD_RELATIONSHIP.self)
      let _TEMP2 = _TEMP1?.RELATING_METHOD
      return eINFORMATION_USAGE_RIGHT(/*eACTION_METHOD*/_TEMP2)
    }

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
  ENTITY right_to_usage_association
    SUBTYPE OF ( action_method_relationship );
      SELF\action_method_relationship.relating_method : information_usage_right;
      SELF\action_method_relationship.related_method : information_right;
    DERIVE
      right_applied  : information_right := SELF\action_method_relationship.related_method;
      right_usage    : information_usage_right := SELF\action_method_relationship.relating_method;
  END_ENTITY; -- right_to_usage_association (line:28018 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eRIGHT_TO_USAGE_ASSOCIATION : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _right_to_usage_association.self
    }
    public let partialEntity: _right_to_usage_association

    //MARK: SUPERTYPES
    public let super_eACTION_METHOD_RELATIONSHIP: eACTION_METHOD_RELATIONSHIP 	// [1]
    public var super_eRIGHT_TO_USAGE_ASSOCIATION: eRIGHT_TO_USAGE_ASSOCIATION { return self } 	// [2]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT REDEF__ attribute
    /// - origin: SELF( ``eRIGHT_TO_USAGE_ASSOCIATION`` )
    public var RELATED_METHOD: eINFORMATION_RIGHT {
      get {
        return SDAI.UNWRAP( eINFORMATION_RIGHT( super_eACTION_METHOD_RELATIONSHIP.partialEntity
          ._related_method ) )
      }
      set(newValue) {
        let partial = super_eACTION_METHOD_RELATIONSHIP.partialEntity
        partial._related_method = SDAI.UNWRAP(
          eACTION_METHOD(newValue))
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eACTION_METHOD_RELATIONSHIP`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        return super_eACTION_METHOD_RELATIONSHIP.partialEntity._description
      }
      set(newValue) {
        let partial = super_eACTION_METHOD_RELATIONSHIP.partialEntity
        partial._description = newValue
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SELF( ``eRIGHT_TO_USAGE_ASSOCIATION`` )
    public var RIGHT_APPLIED: eINFORMATION_RIGHT?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"RIGHT_APPLIED") {
          return cached.value as! eINFORMATION_RIGHT? 
        }
        let origin = self
        let value = origin.partialEntity._right_applied__getter(SELF: origin)
        updateCache(derivedAttributeName:"RIGHT_APPLIED", value:value)
        return value
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SELF( ``eRIGHT_TO_USAGE_ASSOCIATION`` )
    public var RIGHT_USAGE: eINFORMATION_USAGE_RIGHT?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"RIGHT_USAGE") {
          return cached.value as! eINFORMATION_USAGE_RIGHT? 
        }
        let origin = self
        let value = origin.partialEntity._right_usage__getter(SELF: origin)
        updateCache(derivedAttributeName:"RIGHT_USAGE", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eACTION_METHOD_RELATIONSHIP`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( super_eACTION_METHOD_RELATIONSHIP.partialEntity._name )
      }
      set(newValue) {
        let partial = super_eACTION_METHOD_RELATIONSHIP.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SELF( ``eRIGHT_TO_USAGE_ASSOCIATION`` )
    public var RELATING_METHOD: eINFORMATION_USAGE_RIGHT {
      get {
        return SDAI.UNWRAP( eINFORMATION_USAGE_RIGHT( super_eACTION_METHOD_RELATIONSHIP.partialEntity
          ._relating_method ) )
      }
      set(newValue) {
        let partial = super_eACTION_METHOD_RELATIONSHIP.partialEntity
        partial._relating_method = SDAI.UNWRAP(
          eACTION_METHOD(newValue))
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_right_to_usage_association.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eACTION_METHOD_RELATIONSHIP.self) else { return nil }
      self.super_eACTION_METHOD_RELATIONSHIP = super1

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "RIGHT_TO_USAGE_ASSOCIATION", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eACTION_METHOD_RELATIONSHIP.self)
      entityDef.add(supertype: eRIGHT_TO_USAGE_ASSOCIATION.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "RELATED_METHOD", keyPath: \eRIGHT_TO_USAGE_ASSOCIATION.RELATED_METHOD, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eRIGHT_TO_USAGE_ASSOCIATION.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "RIGHT_APPLIED", keyPath: \eRIGHT_TO_USAGE_ASSOCIATION.RIGHT_APPLIED, 
        kind: .derived, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RIGHT_USAGE", keyPath: \eRIGHT_TO_USAGE_ASSOCIATION.RIGHT_USAGE, 
        kind: .derived, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eRIGHT_TO_USAGE_ASSOCIATION.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "RELATING_METHOD", keyPath: \eRIGHT_TO_USAGE_ASSOCIATION.RELATING_METHOD, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
