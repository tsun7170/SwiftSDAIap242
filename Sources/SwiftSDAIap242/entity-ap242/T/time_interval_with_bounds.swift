/* file: time_interval_with_bounds.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY time_interval_with_bounds
    SUBTYPE OF ( time_interval );
      primary_bound    : OPTIONAL date_time_or_event_occurrence;
      secondary_bound  : OPTIONAL date_time_or_event_occurrence;
      duration         : OPTIONAL time_measure_with_unit;
    WHERE
      wr1: ( EXISTS( primary_bound ) OR EXISTS( secondary_bound ) );
      wr2: ( NOT ( EXISTS( primary_bound ) AND EXISTS( secondary_bound ) AND EXISTS( duration ) ) );
      wr3: ( EXISTS( primary_bound ) AND ( NOT EXISTS( secondary_bound ) ) AND ( ( NOT EXISTS( duration ) ) 
               OR duration_is_positive( duration ) ) );
      wr4: ( EXISTS( secondary_bound ) AND ( NOT EXISTS( primary_bound ) ) AND EXISTS( duration ) AND 
               duration_is_negative( duration ) );
  END_ENTITY; -- time_interval_with_bounds (line:32715 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	time_interval
    ATTR:  id,	TYPE: identifier -- EXPLICIT

    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT


  ENTITY(SELF)	time_interval_with_bounds
    ATTR:  primary_bound,	TYPE: OPTIONAL date_time_or_event_occurrence -- EXPLICIT

    ATTR:  secondary_bound,	TYPE: OPTIONAL date_time_or_event_occurrence -- EXPLICIT

    ATTR:  duration,	TYPE: OPTIONAL time_measure_with_unit -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _time_interval_with_bounds : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eTIME_INTERVAL_WITH_BOUNDS.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _primary_bound: sDATE_TIME_OR_EVENT_OCCURRENCE?  // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _secondary_bound: sDATE_TIME_OR_EVENT_OCCURRENCE?  // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _duration: eTIME_MEASURE_WITH_UNIT?  // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._primary_bound?.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._secondary_bound?.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._duration?.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._primary_bound?.value.isValueEqualOptionally(to: rhs._primary_bound?.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._secondary_bound?.value.isValueEqualOptionally(to: rhs._secondary_bound?.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._duration?.value.isValueEqualOptionally(to: rhs._duration?.value, visited: &comppairs)	{
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
      if let comp = self._primary_bound?.value.isValueEqualOptionally(to: rhs._primary_bound?.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._secondary_bound?.value.isValueEqualOptionally(to: rhs._secondary_bound?.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._duration?.value.isValueEqualOptionally(to: rhs._duration?.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eTIME_INTERVAL_WITH_BOUNDS?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.EXISTS(SELF.PRIMARY_BOUND)
      let _TEMP2 = SDAI.EXISTS(SELF.SECONDARY_BOUND)
      let _TEMP3 = _TEMP1 || _TEMP2
      return _TEMP3
    }
    public static func WHERE_wr2(SELF: eTIME_INTERVAL_WITH_BOUNDS?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.EXISTS(SELF.PRIMARY_BOUND)
      let _TEMP2 = SDAI.EXISTS(SELF.SECONDARY_BOUND)
      let _TEMP3 = _TEMP1 && _TEMP2
      let _TEMP4 = SDAI.EXISTS(SELF.DURATION)
      let _TEMP5 = _TEMP3 && _TEMP4
      let _TEMP6 =  !_TEMP5
      return _TEMP6
    }
    public static func WHERE_wr3(SELF: eTIME_INTERVAL_WITH_BOUNDS?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.EXISTS(SELF.PRIMARY_BOUND)
      let _TEMP2 = SDAI.EXISTS(SELF.SECONDARY_BOUND)
      let _TEMP3 =  !_TEMP2
      let _TEMP4 = _TEMP1 && _TEMP3
      let _TEMP5 = SDAI.EXISTS(SELF.DURATION)
      let _TEMP6 =  !_TEMP5
      let _TEMP7 = DURATION_IS_POSITIVE(SELF.DURATION)
      let _TEMP8 = _TEMP6 || _TEMP7
      let _TEMP9 = _TEMP4 && _TEMP8
      return _TEMP9
    }
    public static func WHERE_wr4(SELF: eTIME_INTERVAL_WITH_BOUNDS?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.EXISTS(SELF.SECONDARY_BOUND)
      let _TEMP2 = SDAI.EXISTS(SELF.PRIMARY_BOUND)
      let _TEMP3 =  !_TEMP2
      let _TEMP4 = _TEMP1 && _TEMP3
      let _TEMP5 = SDAI.EXISTS(SELF.DURATION)
      let _TEMP6 = _TEMP4 && _TEMP5
      let _TEMP7 = DURATION_IS_NEGATIVE(SELF.DURATION)
      let _TEMP8 = _TEMP6 && _TEMP7
      return _TEMP8
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(PRIMARY_BOUND: sDATE_TIME_OR_EVENT_OCCURRENCE? , SECONDARY_BOUND: 
                sDATE_TIME_OR_EVENT_OCCURRENCE? , DURATION: eTIME_MEASURE_WITH_UNIT? ) {
      self._primary_bound = PRIMARY_BOUND
      self._secondary_bound = SECONDARY_BOUND
      self._duration = DURATION
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 3
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverOptionalParameter(as: 
        sDATE_TIME_OR_EVENT_OCCURRENCE.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverOptionalParameter(as: 
        sDATE_TIME_OR_EVENT_OCCURRENCE.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p2) = exchangeStructure.recoverOptionalParameter(as: eTIME_MEASURE_WITH_UNIT.self, from: parameters[2])
      else { exchangeStructure.add(errorContext: "while recovering parameter #2 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( PRIMARY_BOUND: p0, SECONDARY_BOUND: p1, DURATION: p2 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY time_interval_with_bounds
    SUBTYPE OF ( time_interval );
      primary_bound    : OPTIONAL date_time_or_event_occurrence;
      secondary_bound  : OPTIONAL date_time_or_event_occurrence;
      duration         : OPTIONAL time_measure_with_unit;
    WHERE
      wr1: ( EXISTS( primary_bound ) OR EXISTS( secondary_bound ) );
      wr2: ( NOT ( EXISTS( primary_bound ) AND EXISTS( secondary_bound ) AND EXISTS( duration ) ) );
      wr3: ( EXISTS( primary_bound ) AND ( NOT EXISTS( secondary_bound ) ) AND ( ( NOT EXISTS( duration ) ) 
               OR duration_is_positive( duration ) ) );
      wr4: ( EXISTS( secondary_bound ) AND ( NOT EXISTS( primary_bound ) ) AND EXISTS( duration ) AND 
               duration_is_negative( duration ) );
  END_ENTITY; -- time_interval_with_bounds (line:32715 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eTIME_INTERVAL_WITH_BOUNDS : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _time_interval_with_bounds.self
    }
    public let partialEntity: _time_interval_with_bounds

    //MARK: SUPERTYPES
    public let super_eTIME_INTERVAL: eTIME_INTERVAL 	// [1]
    public var super_eTIME_INTERVAL_WITH_BOUNDS: eTIME_INTERVAL_WITH_BOUNDS { return self } 	// [2]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eTIME_INTERVAL`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        return super_eTIME_INTERVAL.partialEntity._description
      }
      set(newValue) {
        let partial = super_eTIME_INTERVAL.partialEntity
        partial._description = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eTIME_INTERVAL_WITH_BOUNDS`` )
    public var PRIMARY_BOUND: sDATE_TIME_OR_EVENT_OCCURRENCE?  {
      get {
        return self.partialEntity._primary_bound
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._primary_bound = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eTIME_INTERVAL_WITH_BOUNDS`` )
    public var SECONDARY_BOUND: sDATE_TIME_OR_EVENT_OCCURRENCE?  {
      get {
        return self.partialEntity._secondary_bound
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._secondary_bound = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eTIME_INTERVAL`` )
    public var ID: tIDENTIFIER {
      get {
        return SDAI.UNWRAP( super_eTIME_INTERVAL.partialEntity._id )
      }
      set(newValue) {
        let partial = super_eTIME_INTERVAL.partialEntity
        partial._id = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eTIME_INTERVAL_WITH_BOUNDS`` )
    public var DURATION: eTIME_MEASURE_WITH_UNIT?  {
      get {
        return self.partialEntity._duration
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._duration = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eTIME_INTERVAL`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( super_eTIME_INTERVAL.partialEntity._name )
      }
      set(newValue) {
        let partial = super_eTIME_INTERVAL.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_time_interval_with_bounds.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eTIME_INTERVAL.self) else { return nil }
      self.super_eTIME_INTERVAL = super1

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
      result[prefix2 + " .WHERE_wr1"] = _time_interval_with_bounds.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _time_interval_with_bounds.WHERE_wr2(SELF: instance)
      result[prefix2 + " .WHERE_wr3"] = _time_interval_with_bounds.WHERE_wr3(SELF: instance)
      result[prefix2 + " .WHERE_wr4"] = _time_interval_with_bounds.WHERE_wr4(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "TIME_INTERVAL_WITH_BOUNDS", type: self, explicitAttributeCount: 3)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eTIME_INTERVAL.self)
      entityDef.add(supertype: eTIME_INTERVAL_WITH_BOUNDS.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eTIME_INTERVAL_WITH_BOUNDS.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "PRIMARY_BOUND", keyPath: \eTIME_INTERVAL_WITH_BOUNDS.PRIMARY_BOUND, 
        kind: .explicitOptional, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "SECONDARY_BOUND", keyPath: \eTIME_INTERVAL_WITH_BOUNDS.SECONDARY_BOUND, 
        kind: .explicitOptional, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ID", keyPath: \eTIME_INTERVAL_WITH_BOUNDS.ID, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DURATION", keyPath: \eTIME_INTERVAL_WITH_BOUNDS.DURATION, 
        kind: .explicitOptional, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eTIME_INTERVAL_WITH_BOUNDS.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
