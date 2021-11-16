/* file: state_type_assignment.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY state_type_assignment
    ABSTRACT SUPERTYPE;
      assigned_state_type  : state_type;
      role                 : state_type_role;
  END_ENTITY; -- state_type_assignment (line:30710 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  ENTITY(SELF)	state_type_assignment
    ATTR:  assigned_state_type,	TYPE: state_type -- EXPLICIT

    ATTR:  role,	TYPE: state_type_role -- EXPLICIT


  SUB- ENTITY(2)	statechar_type_applied_object
    (no local attributes)

  SUB- ENTITY(3)	applied_state_type_assignment
    ATTR:  items,	TYPE: SET [1 : ?] OF state_type_of_item -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _state_type_assignment : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eSTATE_TYPE_ASSIGNMENT.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _assigned_state_type: eSTATE_TYPE // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _role: eSTATE_TYPE_ROLE // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sDATE_AND_TIME_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sCLASSIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sACTION_ITEMS.typeName)) // -> sCLASSIFICATION_ITEM
      members.insert(SDAI.STRING(sCHANGE_MANAGEMENT_OBJECT.typeName)) // -> sACTION_ITEMS
      members.insert(SDAI.STRING(sIR_USAGE_ITEM.typeName)) // -> sCLASSIFICATION_ITEM
      members.insert(SDAI.STRING(sMULTI_LANGUAGE_ATTRIBUTE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sIDENTIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sATTRIBUTE_CLASSIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sDATE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sPERSON_AND_ORGANIZATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sORGANIZATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sDESCRIPTION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sGROUPABLE_ITEM.typeName)) // -> Self
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._assigned_state_type.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._role.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._assigned_state_type.value.isValueEqualOptionally(to: rhs._assigned_state_type.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._role.value.isValueEqualOptionally(to: rhs._role.value, visited: &comppairs)	{
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
      if let comp = self._assigned_state_type.value.isValueEqualOptionally(to: rhs._assigned_state_type.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._role.value.isValueEqualOptionally(to: rhs._role.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(ASSIGNED_STATE_TYPE: eSTATE_TYPE, ROLE: eSTATE_TYPE_ROLE) {
      self._assigned_state_type = ASSIGNED_STATE_TYPE
      self._role = ROLE
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: eSTATE_TYPE.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: eSTATE_TYPE_ROLE.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( ASSIGNED_STATE_TYPE: p0, ROLE: p1 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY state_type_assignment
    ABSTRACT SUPERTYPE;
      assigned_state_type  : state_type;
      role                 : state_type_role;
  END_ENTITY; -- state_type_assignment (line:30710 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eSTATE_TYPE_ASSIGNMENT : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _state_type_assignment.self
    }
    public let partialEntity: _state_type_assignment

    //MARK: SUPERTYPES
    public var super_eSTATE_TYPE_ASSIGNMENT: eSTATE_TYPE_ASSIGNMENT { return self } 	// [1]

    //MARK: SUBTYPES
    public var sub_eSTATECHAR_TYPE_APPLIED_OBJECT: eSTATECHAR_TYPE_APPLIED_OBJECT? {	// [2]
      return self.complexEntity.entityReference(eSTATECHAR_TYPE_APPLIED_OBJECT.self)
    }

    public var sub_eAPPLIED_STATE_TYPE_ASSIGNMENT: eAPPLIED_STATE_TYPE_ASSIGNMENT? {	// [3]
      return self.complexEntity.entityReference(eAPPLIED_STATE_TYPE_ASSIGNMENT.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eSTATE_TYPE_ASSIGNMENT`` )
    public var ROLE: eSTATE_TYPE_ROLE {
      get {
        return SDAI.UNWRAP( self.partialEntity._role )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._role = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eAPPLIED_STATE_TYPE_ASSIGNMENT`` )
    public var ITEMS: (SDAI.SET<sSTATE_TYPE_OF_ITEM>/*[1:nil]*/ )?  {
      get {
        return sub_eAPPLIED_STATE_TYPE_ASSIGNMENT?.partialEntity._items
      }
      set(newValue) {
        guard let partial = sub_eAPPLIED_STATE_TYPE_ASSIGNMENT?.super_eAPPLIED_STATE_TYPE_ASSIGNMENT
          .partialEntity else { return }
        partial._items = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eSTATE_TYPE_ASSIGNMENT`` )
    public var ASSIGNED_STATE_TYPE: eSTATE_TYPE {
      get {
        return SDAI.UNWRAP( self.partialEntity._assigned_state_type )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._assigned_state_type = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_state_type_assignment.self) else { return nil }
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
    public convenience init?(_ partial:_state_type_assignment) {
      let complex = SDAI.ComplexEntity(entities:[partial])
      self.init(complex: complex)
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "STATE_TYPE_ASSIGNMENT", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eSTATE_TYPE_ASSIGNMENT.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "ROLE", keyPath: \eSTATE_TYPE_ASSIGNMENT.ROLE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ITEMS", keyPath: \eSTATE_TYPE_ASSIGNMENT.ITEMS, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ASSIGNED_STATE_TYPE", keyPath: \eSTATE_TYPE_ASSIGNMENT.ASSIGNED_STATE_TYPE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
