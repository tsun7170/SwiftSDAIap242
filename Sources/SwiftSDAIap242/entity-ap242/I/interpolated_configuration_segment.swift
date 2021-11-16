/* file: interpolated_configuration_segment.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY interpolated_configuration_segment
    SUBTYPE OF ( founded_item );
      state          : mechanism_state_representation;
      t_parameter    : parameter_value;
      interpolation  : interpolation_type;
  END_ENTITY; -- interpolated_configuration_segment (line:18340 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	founded_item
    ATTR:  users,	TYPE: SET [0 : ?] OF founded_item_select -- DERIVED
      := using_items( SELF, [] )


  ENTITY(SELF)	interpolated_configuration_segment
    ATTR:  state,	TYPE: mechanism_state_representation -- EXPLICIT

    ATTR:  t_parameter,	TYPE: parameter_value -- EXPLICIT

    ATTR:  interpolation,	TYPE: interpolation_type -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _interpolated_configuration_segment : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eINTERPOLATED_CONFIGURATION_SEGMENT.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _state: eMECHANISM_STATE_REPRESENTATION // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _t_parameter: tPARAMETER_VALUE // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _interpolation: nINTERPOLATION_TYPE // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._state.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._t_parameter.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._interpolation.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._state.value.isValueEqualOptionally(to: rhs._state.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._t_parameter.value.isValueEqualOptionally(to: rhs._t_parameter.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._interpolation.value.isValueEqualOptionally(to: rhs._interpolation.value, visited: &comppairs)	{
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
      if let comp = self._state.value.isValueEqualOptionally(to: rhs._state.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._t_parameter.value.isValueEqualOptionally(to: rhs._t_parameter.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._interpolation.value.isValueEqualOptionally(to: rhs._interpolation.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(STATE: eMECHANISM_STATE_REPRESENTATION, T_PARAMETER: tPARAMETER_VALUE, 
                INTERPOLATION: nINTERPOLATION_TYPE) {
      self._state = STATE
      self._t_parameter = T_PARAMETER
      self._interpolation = INTERPOLATION
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 3
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: 
        eMECHANISM_STATE_REPRESENTATION.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: tPARAMETER_VALUE.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p2) = exchangeStructure.recoverRequiredParameter(as: nINTERPOLATION_TYPE.self, from: parameters[2])
      else { exchangeStructure.add(errorContext: "while recovering parameter #2 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( STATE: p0, T_PARAMETER: p1, INTERPOLATION: p2 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY interpolated_configuration_segment
    SUBTYPE OF ( founded_item );
      state          : mechanism_state_representation;
      t_parameter    : parameter_value;
      interpolation  : interpolation_type;
  END_ENTITY; -- interpolated_configuration_segment (line:18340 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eINTERPOLATED_CONFIGURATION_SEGMENT : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _interpolated_configuration_segment.self
    }
    public let partialEntity: _interpolated_configuration_segment

    //MARK: SUPERTYPES
    public let super_eFOUNDED_ITEM: eFOUNDED_ITEM 	// [1]
    public var super_eINTERPOLATED_CONFIGURATION_SEGMENT: eINTERPOLATED_CONFIGURATION_SEGMENT { return self } 	// [2]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eFOUNDED_ITEM`` )
    public var USERS: (SDAI.SET<sFOUNDED_ITEM_SELECT>/*[0:nil]*/ )?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"USERS") {
          return cached.value as! (SDAI.SET<sFOUNDED_ITEM_SELECT>/*[0:nil]*/ )? 
        }
        let origin = super_eFOUNDED_ITEM
        let value = SDAI.SET<sFOUNDED_ITEM_SELECT>(origin.partialEntity._users__getter(SELF: origin))
        updateCache(derivedAttributeName:"USERS", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eINTERPOLATED_CONFIGURATION_SEGMENT`` )
    public var T_PARAMETER: tPARAMETER_VALUE {
      get {
        return SDAI.UNWRAP( self.partialEntity._t_parameter )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._t_parameter = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eINTERPOLATED_CONFIGURATION_SEGMENT`` )
    public var INTERPOLATION: nINTERPOLATION_TYPE {
      get {
        return SDAI.UNWRAP( self.partialEntity._interpolation )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._interpolation = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eINTERPOLATED_CONFIGURATION_SEGMENT`` )
    public var STATE: eMECHANISM_STATE_REPRESENTATION {
      get {
        return SDAI.UNWRAP( self.partialEntity._state )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._state = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_interpolated_configuration_segment.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eFOUNDED_ITEM.self) else { return nil }
      self.super_eFOUNDED_ITEM = super1

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "INTERPOLATED_CONFIGURATION_SEGMENT", type: self, explicitAttributeCount: 3)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eFOUNDED_ITEM.self)
      entityDef.add(supertype: eINTERPOLATED_CONFIGURATION_SEGMENT.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "USERS", keyPath: \eINTERPOLATED_CONFIGURATION_SEGMENT.USERS, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "T_PARAMETER", keyPath: \eINTERPOLATED_CONFIGURATION_SEGMENT.T_PARAMETER, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "INTERPOLATION", keyPath: \eINTERPOLATED_CONFIGURATION_SEGMENT.INTERPOLATION, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "STATE", keyPath: \eINTERPOLATED_CONFIGURATION_SEGMENT.STATE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
