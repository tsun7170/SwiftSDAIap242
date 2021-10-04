/* file: usage_association.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY usage_association
    SUBTYPE OF ( action_method_relationship );
      SELF\action_method_relationship.relating_method : information_usage_right;
      SELF\action_method_relationship.related_method : information_usage_right;
    DERIVE
      related   : information_usage_right := SELF\action_method_relationship.related_method;
      relating  : information_usage_right := SELF\action_method_relationship.relating_method;
  END_ENTITY; -- usage_association (line:33337 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	action_method_relationship
    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT

    ATTR:  relating_method,	TYPE: action_method -- EXPLICIT
      -- possibly overriden by
          ENTITY: right_to_usage_association,	TYPE: information_usage_right
      *** ENTITY: usage_association,	TYPE: information_usage_right

    ATTR:  related_method,	TYPE: action_method -- EXPLICIT
      -- possibly overriden by
          ENTITY: right_to_usage_association,	TYPE: information_right
      *** ENTITY: usage_association,	TYPE: information_usage_right


  ENTITY(SELF)	usage_association
    REDCR: relating_method,	TYPE: information_usage_right -- EXPLICIT
      -- OVERRIDING ENTITY: action_method_relationship

    REDCR: related_method,	TYPE: information_usage_right -- EXPLICIT
      -- OVERRIDING ENTITY: action_method_relationship

    ATTR:  related,	TYPE: information_usage_right -- DERIVED
      := SELF\action_method_relationship.related_method

    ATTR:  relating,	TYPE: information_usage_right -- DERIVED
      := SELF\action_method_relationship.relating_method


*/


//MARK: - Partial Entity
  public final class _usage_association : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eUSAGE_ASSOCIATION.self
    }

    //ATTRIBUTES
    /* override var _relating_method: eINFORMATION_USAGE_RIGHT	//EXPLICIT REDEFINITION(eACTION_METHOD_RELATIONSHIP) */

    /* override var _related_method: eINFORMATION_USAGE_RIGHT	//EXPLICIT REDEFINITION(eACTION_METHOD_RELATIONSHIP) */

    /// DERIVE ATTRIBUTE
    internal func _related__getter(SELF: eUSAGE_ASSOCIATION) -> eINFORMATION_USAGE_RIGHT?  {

      let _TEMP1 = SELF.GROUP_REF(eACTION_METHOD_RELATIONSHIP.self)
      let _TEMP2 = _TEMP1?.RELATED_METHOD
      return eINFORMATION_USAGE_RIGHT(/*eACTION_METHOD*/_TEMP2)
    }

    /// DERIVE ATTRIBUTE
    internal func _relating__getter(SELF: eUSAGE_ASSOCIATION) -> eINFORMATION_USAGE_RIGHT?  {

      let _TEMP1 = SELF.GROUP_REF(eACTION_METHOD_RELATIONSHIP.self)
      let _TEMP2 = _TEMP1?.RELATING_METHOD
      return eINFORMATION_USAGE_RIGHT(/*eACTION_METHOD*/_TEMP2)
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
      members.insert(SDAI.STRING(sATTRIBUTE_CLASSIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sSAME_AS_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sDESCRIPTION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sATTRIBUTE_LANGUAGE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sDOCUMENT_REFERENCE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sEFFECTIVITY_ITEM.typeName)) // -> Self
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
  ENTITY usage_association
    SUBTYPE OF ( action_method_relationship );
      SELF\action_method_relationship.relating_method : information_usage_right;
      SELF\action_method_relationship.related_method : information_usage_right;
    DERIVE
      related   : information_usage_right := SELF\action_method_relationship.related_method;
      relating  : information_usage_right := SELF\action_method_relationship.relating_method;
  END_ENTITY; -- usage_association (line:33337 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eUSAGE_ASSOCIATION : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _usage_association.self
    }
    public let partialEntity: _usage_association

    //MARK: SUPERTYPES
    public let super_eACTION_METHOD_RELATIONSHIP: eACTION_METHOD_RELATIONSHIP 	// [1]
    public var super_eUSAGE_ASSOCIATION: eUSAGE_ASSOCIATION { return self } 	// [2]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT REDEF__ attribute
    /// - origin: SELF( ``eUSAGE_ASSOCIATION`` )
    public var RELATED_METHOD: eINFORMATION_USAGE_RIGHT {
      get {
        return SDAI.UNWRAP( eINFORMATION_USAGE_RIGHT( super_eACTION_METHOD_RELATIONSHIP.partialEntity
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
    /// - origin: SELF( ``eUSAGE_ASSOCIATION`` )
    public var RELATING: eINFORMATION_USAGE_RIGHT?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"RELATING") {
          return cached.value as! eINFORMATION_USAGE_RIGHT? 
        }
        let origin = self
        let value = origin.partialEntity._relating__getter(SELF: origin)
        updateCache(derivedAttributeName:"RELATING", value:value)
        return value
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SELF( ``eUSAGE_ASSOCIATION`` )
    public var RELATED: eINFORMATION_USAGE_RIGHT?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"RELATED") {
          return cached.value as! eINFORMATION_USAGE_RIGHT? 
        }
        let origin = self
        let value = origin.partialEntity._related__getter(SELF: origin)
        updateCache(derivedAttributeName:"RELATED", value:value)
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
    /// - origin: SELF( ``eUSAGE_ASSOCIATION`` )
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
      guard let partial = complexEntity?.partialEntityInstance(_usage_association.self) else { return nil }
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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "USAGE_ASSOCIATION", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eACTION_METHOD_RELATIONSHIP.self)
      entityDef.add(supertype: eUSAGE_ASSOCIATION.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "RELATED_METHOD", keyPath: \eUSAGE_ASSOCIATION.RELATED_METHOD, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eUSAGE_ASSOCIATION.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "RELATING", keyPath: \eUSAGE_ASSOCIATION.RELATING, 
        kind: .derived, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RELATED", keyPath: \eUSAGE_ASSOCIATION.RELATED, 
        kind: .derived, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eUSAGE_ASSOCIATION.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "RELATING_METHOD", keyPath: \eUSAGE_ASSOCIATION.RELATING_METHOD, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}