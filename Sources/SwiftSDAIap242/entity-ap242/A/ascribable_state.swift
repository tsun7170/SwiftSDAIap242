/* file: ascribable_state.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY ascribable_state;
      name                     : label;
      description              : OPTIONAL text;
      pertaining_state_type    : state_type;
      ascribed_state_observed  : state_observed;
  END_ENTITY; -- ascribable_state (line:7431 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  ENTITY(SELF)	ascribable_state
    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT

    ATTR:  pertaining_state_type,	TYPE: state_type -- EXPLICIT

    ATTR:  ascribed_state_observed,	TYPE: state_observed -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _ascribable_state : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eASCRIBABLE_STATE.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _name: tLABEL // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _description: tTEXT?  // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _pertaining_state_type: eSTATE_TYPE // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _ascribed_state_observed: eSTATE_OBSERVED // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sDATE_AND_TIME_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sMULTI_LANGUAGE_ATTRIBUTE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sIDENTIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sACTION_ITEMS.typeName)) // -> sIDENTIFICATION_ITEM
      members.insert(SDAI.STRING(sCHANGE_MANAGEMENT_OBJECT.typeName)) // -> sACTION_ITEMS
      members.insert(SDAI.STRING(sIR_USAGE_ITEM.typeName)) // -> sIDENTIFICATION_ITEM
      members.insert(SDAI.STRING(sDATE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sANALYSED_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sPERSON_AND_ORGANIZATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sORGANIZATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sDESCRIPTION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sGROUPABLE_ITEM.typeName)) // -> Self
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._name.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._description?.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._pertaining_state_type.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._ascribed_state_observed.value.hashAsValue(into: &hasher, visited: &complexEntities)
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
      if let comp = self._pertaining_state_type.value.isValueEqualOptionally(to: rhs._pertaining_state_type.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._ascribed_state_observed.value.isValueEqualOptionally(to: rhs._ascribed_state_observed.value, visited: &comppairs)	{
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
      if let comp = self._pertaining_state_type.value.isValueEqualOptionally(to: rhs._pertaining_state_type.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._ascribed_state_observed.value.isValueEqualOptionally(to: rhs._ascribed_state_observed.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(NAME: tLABEL, DESCRIPTION: tTEXT? , PERTAINING_STATE_TYPE: eSTATE_TYPE, 
                ASCRIBED_STATE_OBSERVED: eSTATE_OBSERVED) {
      self._name = NAME
      self._description = DESCRIPTION
      self._pertaining_state_type = PERTAINING_STATE_TYPE
      self._ascribed_state_observed = ASCRIBED_STATE_OBSERVED
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

      guard case .success(let p2) = exchangeStructure.recoverRequiredParameter(as: eSTATE_TYPE.self, from: parameters[2])
      else { exchangeStructure.add(errorContext: "while recovering parameter #2 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p3) = exchangeStructure.recoverRequiredParameter(as: eSTATE_OBSERVED.self, from: parameters[3])
      else { exchangeStructure.add(errorContext: "while recovering parameter #3 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( NAME: p0, DESCRIPTION: p1, PERTAINING_STATE_TYPE: p2, ASCRIBED_STATE_OBSERVED: p3 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY ascribable_state;
      name                     : label;
      description              : OPTIONAL text;
      pertaining_state_type    : state_type;
      ascribed_state_observed  : state_observed;
  END_ENTITY; -- ascribable_state (line:7431 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eASCRIBABLE_STATE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _ascribable_state.self
    }
    public let partialEntity: _ascribable_state

    //MARK: SUPERTYPES
    public var super_eASCRIBABLE_STATE: eASCRIBABLE_STATE { return self } 	// [1]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eASCRIBABLE_STATE`` )
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
    /// - origin: SELF( ``eASCRIBABLE_STATE`` )
    public var ASCRIBED_STATE_OBSERVED: eSTATE_OBSERVED {
      get {
        return SDAI.UNWRAP( self.partialEntity._ascribed_state_observed )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._ascribed_state_observed = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eASCRIBABLE_STATE`` )
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
    /// - origin: SELF( ``eASCRIBABLE_STATE`` )
    public var PERTAINING_STATE_TYPE: eSTATE_TYPE {
      get {
        return SDAI.UNWRAP( self.partialEntity._pertaining_state_type )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._pertaining_state_type = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_ascribable_state.self) else { return nil }
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
    public convenience init?(_ partial:_ascribable_state) {
      let complex = SDAI.ComplexEntity(entities:[partial])
      self.init(complex: complex)
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "ASCRIBABLE_STATE", type: self, explicitAttributeCount: 4)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eASCRIBABLE_STATE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eASCRIBABLE_STATE.DESCRIPTION, 
        kind: .explicitOptional, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ASCRIBED_STATE_OBSERVED", keyPath: \eASCRIBABLE_STATE.ASCRIBED_STATE_OBSERVED, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eASCRIBABLE_STATE.NAME, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "PERTAINING_STATE_TYPE", keyPath: \eASCRIBABLE_STATE.PERTAINING_STATE_TYPE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
