/* file: action_method_relationship.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY action_method_relationship;
      name             : label;
      description      : OPTIONAL text;
      relating_method  : action_method;
      related_method   : action_method;
  END_ENTITY; -- action_method_relationship (line:6425 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  ENTITY(SELF)	action_method_relationship
    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT

    ATTR:  relating_method,	TYPE: action_method -- EXPLICIT
      -- possibly overriden by
          ENTITY: right_to_usage_association,	TYPE: information_usage_right
          ENTITY: usage_association,	TYPE: information_usage_right

    ATTR:  related_method,	TYPE: action_method -- EXPLICIT
      -- possibly overriden by
          ENTITY: right_to_usage_association,	TYPE: information_right
          ENTITY: usage_association,	TYPE: information_usage_right


  SUB- ENTITY(2)	right_to_usage_association
    REDCR: relating_method,	TYPE: information_usage_right -- EXPLICIT
      -- OVERRIDING ENTITY: action_method_relationship

    REDCR: related_method,	TYPE: information_right -- EXPLICIT
      -- OVERRIDING ENTITY: action_method_relationship

    ATTR:  right_applied,	TYPE: information_right -- DERIVED
      := SELF\action_method_relationship.related_method

    ATTR:  right_usage,	TYPE: information_usage_right -- DERIVED
      := SELF\action_method_relationship.relating_method


  SUB- ENTITY(3)	usage_association
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
  public final class _action_method_relationship : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eACTION_METHOD_RELATIONSHIP.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _name: tLABEL // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _description: tTEXT?  // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _relating_method: eACTION_METHOD // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _related_method: eACTION_METHOD // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sCLASSIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sACTION_ITEMS.typeName)) // -> sCLASSIFICATION_ITEM
      members.insert(SDAI.STRING(sCHANGE_MANAGEMENT_OBJECT.typeName)) // -> sACTION_ITEMS
      members.insert(SDAI.STRING(sIR_USAGE_ITEM.typeName)) // -> sCLASSIFICATION_ITEM
      members.insert(SDAI.STRING(sMULTI_LANGUAGE_ATTRIBUTE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sEXTERNAL_IDENTIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sIDENTIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sATTRIBUTE_CLASSIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sSECURITY_CLASSIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sCONTRACT_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sAPPROVAL_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sACTION_METHOD_ITEMS.typeName)) // -> Self
      members.insert(SDAI.STRING(sCHARACTERIZED_ACTION_DEFINITION.typeName)) // -> Self
      members.insert(SDAI.STRING(sGENERAL_ORGANIZATIONAL_DATA_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sEVENT_OCCURRENCE_ITEM.typeName)) // -> sGENERAL_ORGANIZATIONAL_DATA_SELECT
      members.insert(SDAI.STRING(sDESCRIPTION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sPROJECT_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sATTRIBUTE_LANGUAGE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sDOCUMENT_REFERENCE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sEFFECTIVITY_ITEM.typeName)) // -> Self
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._name.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._description?.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._relating_method.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._related_method.value.hashAsValue(into: &hasher, visited: &complexEntities)
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
      if let comp = self._relating_method.value.isValueEqualOptionally(to: rhs._relating_method.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._related_method.value.isValueEqualOptionally(to: rhs._related_method.value, visited: &comppairs)	{
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
      if let comp = self._relating_method.value.isValueEqualOptionally(to: rhs._relating_method.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._related_method.value.isValueEqualOptionally(to: rhs._related_method.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(NAME: tLABEL, DESCRIPTION: tTEXT? , RELATING_METHOD: eACTION_METHOD, 
                RELATED_METHOD: eACTION_METHOD) {
      self._name = NAME
      self._description = DESCRIPTION
      self._relating_method = RELATING_METHOD
      self._related_method = RELATED_METHOD
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

      guard case .success(let p2) = exchangeStructure.recoverRequiredParameter(as: eACTION_METHOD.self, from: parameters[2])
      else { exchangeStructure.add(errorContext: "while recovering parameter #2 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p3) = exchangeStructure.recoverRequiredParameter(as: eACTION_METHOD.self, from: parameters[3])
      else { exchangeStructure.add(errorContext: "while recovering parameter #3 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( NAME: p0, DESCRIPTION: p1, RELATING_METHOD: p2, RELATED_METHOD: p3 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY action_method_relationship;
      name             : label;
      description      : OPTIONAL text;
      relating_method  : action_method;
      related_method   : action_method;
  END_ENTITY; -- action_method_relationship (line:6425 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eACTION_METHOD_RELATIONSHIP : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _action_method_relationship.self
    }
    public let partialEntity: _action_method_relationship

    //MARK: SUPERTYPES
    public var super_eACTION_METHOD_RELATIONSHIP: eACTION_METHOD_RELATIONSHIP { return self } 	// [1]

    //MARK: SUBTYPES
    public var sub_eRIGHT_TO_USAGE_ASSOCIATION: eRIGHT_TO_USAGE_ASSOCIATION? {	// [2]
      return self.complexEntity.entityReference(eRIGHT_TO_USAGE_ASSOCIATION.self)
    }

    public var sub_eUSAGE_ASSOCIATION: eUSAGE_ASSOCIATION? {	// [3]
      return self.complexEntity.entityReference(eUSAGE_ASSOCIATION.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eACTION_METHOD_RELATIONSHIP`` )
    public var RELATED_METHOD: eACTION_METHOD {
      get {
        return SDAI.UNWRAP( self.partialEntity._related_method )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._related_method = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eACTION_METHOD_RELATIONSHIP`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        return self.partialEntity._description
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._description = newValue
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUB( ``eRIGHT_TO_USAGE_ASSOCIATION`` )
    public var RIGHT_APPLIED: eINFORMATION_RIGHT?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"RIGHT_APPLIED") {
          return cached.value as! eINFORMATION_RIGHT? 
        }
        guard let origin = sub_eRIGHT_TO_USAGE_ASSOCIATION else { return nil }
        let value = eINFORMATION_RIGHT(origin.partialEntity._right_applied__getter(SELF: origin))
        updateCache(derivedAttributeName:"RIGHT_APPLIED", value:value)
        return value
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUB( ``eUSAGE_ASSOCIATION`` )
    public var RELATING: eINFORMATION_USAGE_RIGHT?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"RELATING") {
          return cached.value as! eINFORMATION_USAGE_RIGHT? 
        }
        guard let origin = sub_eUSAGE_ASSOCIATION else { return nil }
        let value = eINFORMATION_USAGE_RIGHT(origin.partialEntity._relating__getter(SELF: origin))
        updateCache(derivedAttributeName:"RELATING", value:value)
        return value
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUB( ``eRIGHT_TO_USAGE_ASSOCIATION`` )
    public var RIGHT_USAGE: eINFORMATION_USAGE_RIGHT?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"RIGHT_USAGE") {
          return cached.value as! eINFORMATION_USAGE_RIGHT? 
        }
        guard let origin = sub_eRIGHT_TO_USAGE_ASSOCIATION else { return nil }
        let value = eINFORMATION_USAGE_RIGHT(origin.partialEntity._right_usage__getter(SELF: origin))
        updateCache(derivedAttributeName:"RIGHT_USAGE", value:value)
        return value
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUB( ``eUSAGE_ASSOCIATION`` )
    public var RELATED: eINFORMATION_USAGE_RIGHT?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"RELATED") {
          return cached.value as! eINFORMATION_USAGE_RIGHT? 
        }
        guard let origin = sub_eUSAGE_ASSOCIATION else { return nil }
        let value = eINFORMATION_USAGE_RIGHT(origin.partialEntity._related__getter(SELF: origin))
        updateCache(derivedAttributeName:"RELATED", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eACTION_METHOD_RELATIONSHIP`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( self.partialEntity._name )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eACTION_METHOD_RELATIONSHIP`` )
    public var RELATING_METHOD: eACTION_METHOD {
      get {
        return SDAI.UNWRAP( self.partialEntity._relating_method )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._relating_method = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_action_method_relationship.self) else { return nil }
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
    public convenience init?(_ partial:_action_method_relationship) {
      let complex = SDAI.ComplexEntity(entities:[partial])
      self.init(complex: complex)
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "ACTION_METHOD_RELATIONSHIP", type: self, explicitAttributeCount: 4)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eACTION_METHOD_RELATIONSHIP.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "RELATED_METHOD", keyPath: \eACTION_METHOD_RELATIONSHIP.RELATED_METHOD, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eACTION_METHOD_RELATIONSHIP.DESCRIPTION, 
        kind: .explicitOptional, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "RIGHT_APPLIED", keyPath: \eACTION_METHOD_RELATIONSHIP.RIGHT_APPLIED, 
        kind: .derived, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RELATING", keyPath: \eACTION_METHOD_RELATIONSHIP.RELATING, 
        kind: .derived, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RIGHT_USAGE", keyPath: \eACTION_METHOD_RELATIONSHIP.RIGHT_USAGE, 
        kind: .derived, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RELATED", keyPath: \eACTION_METHOD_RELATIONSHIP.RELATED, 
        kind: .derived, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eACTION_METHOD_RELATIONSHIP.NAME, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "RELATING_METHOD", keyPath: \eACTION_METHOD_RELATIONSHIP.RELATING_METHOD, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}