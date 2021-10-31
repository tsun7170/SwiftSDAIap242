/* file: event_occurrence_assignment.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  ENTITY event_occurrence_assignment
    ABSTRACT SUPERTYPE;
      assigned_event_occurrence  : event_occurrence;
      role                       : event_occurrence_role;
  END_ENTITY; -- event_occurrence_assignment (line:14033 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  ENTITY(SELF)	event_occurrence_assignment
    ATTR:  assigned_event_occurrence,	TYPE: event_occurrence -- EXPLICIT

    ATTR:  role,	TYPE: event_occurrence_role -- EXPLICIT


  SUB- ENTITY(2)	applied_event_occurrence_assignment
    ATTR:  items,	TYPE: SET [1 : ?] OF event_occurrence_item -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _event_occurrence_assignment : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eEVENT_OCCURRENCE_ASSIGNMENT.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _assigned_event_occurrence: eEVENT_OCCURRENCE // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _role: eEVENT_OCCURRENCE_ROLE // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._assigned_event_occurrence.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._role.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._assigned_event_occurrence.value.isValueEqualOptionally(to: rhs._assigned_event_occurrence.value, visited: &comppairs)	{
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
      if let comp = self._assigned_event_occurrence.value.isValueEqualOptionally(to: rhs._assigned_event_occurrence.value, visited: &comppairs) {
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
    public init(ASSIGNED_EVENT_OCCURRENCE: eEVENT_OCCURRENCE, ROLE: eEVENT_OCCURRENCE_ROLE) {
      self._assigned_event_occurrence = ASSIGNED_EVENT_OCCURRENCE
      self._role = ROLE
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: eEVENT_OCCURRENCE.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: eEVENT_OCCURRENCE_ROLE.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( ASSIGNED_EVENT_OCCURRENCE: p0, ROLE: p1 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY event_occurrence_assignment
    ABSTRACT SUPERTYPE;
      assigned_event_occurrence  : event_occurrence;
      role                       : event_occurrence_role;
  END_ENTITY; -- event_occurrence_assignment (line:14033 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eEVENT_OCCURRENCE_ASSIGNMENT : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _event_occurrence_assignment.self
    }
    public let partialEntity: _event_occurrence_assignment

    //MARK: SUPERTYPES
    public var super_eEVENT_OCCURRENCE_ASSIGNMENT: eEVENT_OCCURRENCE_ASSIGNMENT { return self } 	// [1]

    //MARK: SUBTYPES
    public var sub_eAPPLIED_EVENT_OCCURRENCE_ASSIGNMENT: eAPPLIED_EVENT_OCCURRENCE_ASSIGNMENT? {	// [2]
      return self.complexEntity.entityReference(eAPPLIED_EVENT_OCCURRENCE_ASSIGNMENT.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eEVENT_OCCURRENCE_ASSIGNMENT`` )
    public var ASSIGNED_EVENT_OCCURRENCE: eEVENT_OCCURRENCE {
      get {
        return SDAI.UNWRAP( self.partialEntity._assigned_event_occurrence )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._assigned_event_occurrence = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eEVENT_OCCURRENCE_ASSIGNMENT`` )
    public var ROLE: eEVENT_OCCURRENCE_ROLE {
      get {
        return SDAI.UNWRAP( self.partialEntity._role )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._role = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eAPPLIED_EVENT_OCCURRENCE_ASSIGNMENT`` )
    public var ITEMS: (SDAI.SET<sEVENT_OCCURRENCE_ITEM>/*[1:nil]*/ )?  {
      get {
        return sub_eAPPLIED_EVENT_OCCURRENCE_ASSIGNMENT?.partialEntity._items
      }
      set(newValue) {
        guard let partial = sub_eAPPLIED_EVENT_OCCURRENCE_ASSIGNMENT?.super_eAPPLIED_EVENT_OCCURRENCE_ASSIGNMENT
          .partialEntity else { return }
        partial._items = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_event_occurrence_assignment.self) else { return nil }
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
    public convenience init?(_ partial:_event_occurrence_assignment) {
      let complex = SDAI.ComplexEntity(entities:[partial])
      self.init(complex: complex)
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "EVENT_OCCURRENCE_ASSIGNMENT", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eEVENT_OCCURRENCE_ASSIGNMENT.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "ASSIGNED_EVENT_OCCURRENCE", keyPath: \eEVENT_OCCURRENCE_ASSIGNMENT.ASSIGNED_EVENT_OCCURRENCE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ROLE", keyPath: \eEVENT_OCCURRENCE_ASSIGNMENT.ROLE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ITEMS", keyPath: \eEVENT_OCCURRENCE_ASSIGNMENT.ITEMS, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
