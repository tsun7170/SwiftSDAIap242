/* file: dated_effectivity.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY dated_effectivity
    SUBTYPE OF ( effectivity );
      effectivity_end_date    : OPTIONAL date_time_or_event_occurrence;
      effectivity_start_date  : OPTIONAL date_time_or_event_occurrence;
    WHERE
      wr1: ( EXISTS( effectivity_end_date ) OR EXISTS( effectivity_start_date ) );
  END_ENTITY; -- dated_effectivity (line:11672 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	effectivity
    ATTR:  id,	TYPE: identifier -- EXPLICIT

    ATTR:  name,	TYPE: label -- DERIVED
      := get_name_value( SELF )

    ATTR:  description,	TYPE: text -- DERIVED
      := get_description_value( SELF )


  ENTITY(SELF)	dated_effectivity
    ATTR:  effectivity_end_date,	TYPE: OPTIONAL date_time_or_event_occurrence -- EXPLICIT

    ATTR:  effectivity_start_date,	TYPE: OPTIONAL date_time_or_event_occurrence -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _dated_effectivity : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eDATED_EFFECTIVITY.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _effectivity_end_date: sDATE_TIME_OR_EVENT_OCCURRENCE?  // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _effectivity_start_date: sDATE_TIME_OR_EVENT_OCCURRENCE?  // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._effectivity_end_date?.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._effectivity_start_date?.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._effectivity_end_date?.value.isValueEqualOptionally(to: rhs._effectivity_end_date?.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._effectivity_start_date?.value.isValueEqualOptionally(to: rhs._effectivity_start_date?.value, visited: &comppairs)	{
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
      if let comp = self._effectivity_end_date?.value.isValueEqualOptionally(to: rhs._effectivity_end_date?.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._effectivity_start_date?.value.isValueEqualOptionally(to: rhs._effectivity_start_date?.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eDATED_EFFECTIVITY?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.EXISTS(SELF.EFFECTIVITY_END_DATE)
      let _TEMP2 = SDAI.EXISTS(SELF.EFFECTIVITY_START_DATE)
      let _TEMP3 = _TEMP1 || _TEMP2
      return _TEMP3
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(EFFECTIVITY_END_DATE: sDATE_TIME_OR_EVENT_OCCURRENCE? , EFFECTIVITY_START_DATE: 
                sDATE_TIME_OR_EVENT_OCCURRENCE? ) {
      self._effectivity_end_date = EFFECTIVITY_END_DATE
      self._effectivity_start_date = EFFECTIVITY_START_DATE
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverOptionalParameter(as: 
        sDATE_TIME_OR_EVENT_OCCURRENCE.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverOptionalParameter(as: 
        sDATE_TIME_OR_EVENT_OCCURRENCE.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( EFFECTIVITY_END_DATE: p0, EFFECTIVITY_START_DATE: p1 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY dated_effectivity
    SUBTYPE OF ( effectivity );
      effectivity_end_date    : OPTIONAL date_time_or_event_occurrence;
      effectivity_start_date  : OPTIONAL date_time_or_event_occurrence;
    WHERE
      wr1: ( EXISTS( effectivity_end_date ) OR EXISTS( effectivity_start_date ) );
  END_ENTITY; -- dated_effectivity (line:11672 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eDATED_EFFECTIVITY : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _dated_effectivity.self
    }
    public let partialEntity: _dated_effectivity

    //MARK: SUPERTYPES
    public let super_eEFFECTIVITY: eEFFECTIVITY 	// [1]
    public var super_eDATED_EFFECTIVITY: eDATED_EFFECTIVITY { return self } 	// [2]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eEFFECTIVITY`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"DESCRIPTION") {
          return cached.value as! tTEXT? 
        }
        let origin = super_eEFFECTIVITY
        let value = tTEXT(origin.partialEntity._description__getter(SELF: origin))
        updateCache(derivedAttributeName:"DESCRIPTION", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eDATED_EFFECTIVITY`` )
    public var EFFECTIVITY_END_DATE: sDATE_TIME_OR_EVENT_OCCURRENCE?  {
      get {
        return self.partialEntity._effectivity_end_date
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._effectivity_end_date = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eDATED_EFFECTIVITY`` )
    public var EFFECTIVITY_START_DATE: sDATE_TIME_OR_EVENT_OCCURRENCE?  {
      get {
        return self.partialEntity._effectivity_start_date
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._effectivity_start_date = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eEFFECTIVITY`` )
    public var ID: tIDENTIFIER {
      get {
        return SDAI.UNWRAP( super_eEFFECTIVITY.partialEntity._id )
      }
      set(newValue) {
        let partial = super_eEFFECTIVITY.partialEntity
        partial._id = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eEFFECTIVITY`` )
    public var NAME: tLABEL?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"NAME") {
          return cached.value as! tLABEL? 
        }
        let origin = super_eEFFECTIVITY
        let value = tLABEL(origin.partialEntity._name__getter(SELF: origin))
        updateCache(derivedAttributeName:"NAME", value:value)
        return value
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_dated_effectivity.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eEFFECTIVITY.self) else { return nil }
      self.super_eEFFECTIVITY = super1

      super.init(complex: complexEntity)
    }

    public required convenience init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let entityRef = generic?.entityReference else { return nil }
      self.init(complex: entityRef.complexEntity)
    }

    public convenience init?<S: SDAISelectType>(_ select: S?) { self.init(possiblyFrom: select) }
    public convenience init?(_ complex: SDAI.ComplexEntity?) { self.init(complex: complex) }


    //MARK: WHERE RULE VALIDATION (ENTITY)
    public override class func validateWhereRules(instance:SDAI.EntityReference?, prefix:SDAI.WhereLabel) -> [SDAI.WhereLabel:SDAI.LOGICAL] {
      guard let instance = instance as? Self else { return [:] }

      let prefix2 = prefix + " \(instance)"

      var result = super.validateWhereRules(instance:instance, prefix:prefix2)
      result[prefix2 + " .WHERE_wr1"] = _dated_effectivity.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "DATED_EFFECTIVITY", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eEFFECTIVITY.self)
      entityDef.add(supertype: eDATED_EFFECTIVITY.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eDATED_EFFECTIVITY.DESCRIPTION, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "EFFECTIVITY_END_DATE", keyPath: \eDATED_EFFECTIVITY.EFFECTIVITY_END_DATE, 
        kind: .explicitOptional, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "EFFECTIVITY_START_DATE", keyPath: \eDATED_EFFECTIVITY.EFFECTIVITY_START_DATE, 
        kind: .explicitOptional, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ID", keyPath: \eDATED_EFFECTIVITY.ID, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eDATED_EFFECTIVITY.NAME, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
