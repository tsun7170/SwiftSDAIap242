/* file: date_and_time.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY date_and_time;
      date_component  : date;
      time_component  : local_time;
  END_ENTITY; -- date_and_time (line:11628 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  ENTITY(SELF)	date_and_time
    ATTR:  date_component,	TYPE: date -- EXPLICIT

    ATTR:  time_component,	TYPE: local_time -- EXPLICIT


  SUB- ENTITY(2)	date_time_representation_item
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _date_and_time : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eDATE_AND_TIME.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _date_component: eDATE // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _time_component: eLOCAL_TIME // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sCLASSIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sACTION_ITEMS.typeName)) // -> sCLASSIFICATION_ITEM
      members.insert(SDAI.STRING(sCHANGE_MANAGEMENT_OBJECT.typeName)) // -> sACTION_ITEMS
      members.insert(SDAI.STRING(sIR_USAGE_ITEM.typeName)) // -> sCLASSIFICATION_ITEM
      members.insert(SDAI.STRING(sDATE_TIME_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sDATE_TIME_OR_EVENT_OCCURRENCE.typeName)) // -> sDATE_TIME_SELECT
      members.insert(SDAI.STRING(sSAME_AS_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sACTION_METHOD_ITEMS.typeName)) // -> Self
      members.insert(SDAI.STRING(sGROUPABLE_ITEM.typeName)) // -> Self
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._date_component.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._time_component.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._date_component.value.isValueEqualOptionally(to: rhs._date_component.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._time_component.value.isValueEqualOptionally(to: rhs._time_component.value, visited: &comppairs)	{
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
      if let comp = self._date_component.value.isValueEqualOptionally(to: rhs._date_component.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._time_component.value.isValueEqualOptionally(to: rhs._time_component.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(DATE_COMPONENT: eDATE, TIME_COMPONENT: eLOCAL_TIME) {
      self._date_component = DATE_COMPONENT
      self._time_component = TIME_COMPONENT
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: eDATE.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: eLOCAL_TIME.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( DATE_COMPONENT: p0, TIME_COMPONENT: p1 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY date_and_time;
      date_component  : date;
      time_component  : local_time;
  END_ENTITY; -- date_and_time (line:11628 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eDATE_AND_TIME : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _date_and_time.self
    }
    public let partialEntity: _date_and_time

    //MARK: SUPERTYPES
    public var super_eDATE_AND_TIME: eDATE_AND_TIME { return self } 	// [1]

    //MARK: SUBTYPES
    public var sub_eDATE_TIME_REPRESENTATION_ITEM: eDATE_TIME_REPRESENTATION_ITEM? {	// [2]
      return self.complexEntity.entityReference(eDATE_TIME_REPRESENTATION_ITEM.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eDATE_AND_TIME`` )
    public var DATE_COMPONENT: eDATE {
      get {
        return SDAI.UNWRAP( self.partialEntity._date_component )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._date_component = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eDATE_AND_TIME`` )
    public var TIME_COMPONENT: eLOCAL_TIME {
      get {
        return SDAI.UNWRAP( self.partialEntity._time_component )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._time_component = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_date_and_time.self) else { return nil }
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
    public convenience init?(_ partial:_date_and_time) {
      let complex = SDAI.ComplexEntity(entities:[partial])
      self.init(complex: complex)
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "DATE_AND_TIME", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eDATE_AND_TIME.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DATE_COMPONENT", keyPath: \eDATE_AND_TIME.DATE_COMPONENT, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "TIME_COMPONENT", keyPath: \eDATE_AND_TIME.TIME_COMPONENT, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
