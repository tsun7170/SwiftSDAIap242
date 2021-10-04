/* file: start_work.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY start_work
    SUBTYPE OF ( action_assignment );
      items  : SET [1 : ?] OF work_item;
  END_ENTITY; -- start_work (line:30650 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	action_assignment
    ATTR:  assigned_action,	TYPE: action -- EXPLICIT

    ATTR:  role,	TYPE: object_role -- DERIVED
      := get_role( SELF )


  ENTITY(SELF)	start_work
    ATTR:  items,	TYPE: SET [1 : ?] OF work_item -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _start_work : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eSTART_WORK.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _items: SDAI.SET<sWORK_ITEM>/*[1:nil]*/  // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sCC_PERSON_ORGANIZATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sAPPROVED_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sDATE_TIME_ITEM.typeName)) // -> Self
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._items.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._items.value.isValueEqualOptionally(to: rhs._items.value, visited: &comppairs)	{
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
      if let comp = self._items.value.isValueEqualOptionally(to: rhs._items.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(ITEMS: SDAI.SET<sWORK_ITEM>/*[1:nil]*/ ) {
      self._items = ITEMS
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: SDAI.SET<sWORK_ITEM>.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( ITEMS: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY start_work
    SUBTYPE OF ( action_assignment );
      items  : SET [1 : ?] OF work_item;
  END_ENTITY; -- start_work (line:30650 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eSTART_WORK : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _start_work.self
    }
    public let partialEntity: _start_work

    //MARK: SUPERTYPES
    public let super_eACTION_ASSIGNMENT: eACTION_ASSIGNMENT 	// [1]
    public var super_eSTART_WORK: eSTART_WORK { return self } 	// [2]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eACTION_ASSIGNMENT`` )
    public var ROLE: eOBJECT_ROLE?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"ROLE") {
          return cached.value as! eOBJECT_ROLE? 
        }
        let origin = super_eACTION_ASSIGNMENT
        let value = eOBJECT_ROLE(origin.partialEntity._role__getter(SELF: origin))
        updateCache(derivedAttributeName:"ROLE", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eSTART_WORK`` )
    public var ITEMS: SDAI.SET<sWORK_ITEM>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._items )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._items = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eACTION_ASSIGNMENT`` )
    public var ASSIGNED_ACTION: eACTION {
      get {
        return SDAI.UNWRAP( super_eACTION_ASSIGNMENT.partialEntity._assigned_action )
      }
      set(newValue) {
        let partial = super_eACTION_ASSIGNMENT.partialEntity
        partial._assigned_action = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_start_work.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eACTION_ASSIGNMENT.self) else { return nil }
      self.super_eACTION_ASSIGNMENT = super1

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "START_WORK", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eACTION_ASSIGNMENT.self)
      entityDef.add(supertype: eSTART_WORK.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "ROLE", keyPath: \eSTART_WORK.ROLE, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ITEMS", keyPath: \eSTART_WORK.ITEMS, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ASSIGNED_ACTION", keyPath: \eSTART_WORK.ASSIGNED_ACTION, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
