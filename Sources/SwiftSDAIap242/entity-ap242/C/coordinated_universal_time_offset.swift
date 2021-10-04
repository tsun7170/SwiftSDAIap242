/* file: coordinated_universal_time_offset.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY coordinated_universal_time_offset;
      hour_offset    : INTEGER;
      minute_offset  : OPTIONAL INTEGER;
      sense          : ahead_or_behind;
    DERIVE
      actual_minute_offset  : INTEGER := NVL( minute_offset, 0 );
    WHERE
      wr1: ( ( 0 <= hour_offset ) AND ( hour_offset < 24 ) );
      wr2: ( ( 0 <= actual_minute_offset ) AND ( actual_minute_offset <= 59 ) );
      wr3: ( NOT ( ( ( hour_offset <> 0 ) OR ( actual_minute_offset <> 0 ) ) AND ( sense = exact ) ) );
  END_ENTITY; -- coordinated_universal_time_offset (line:10674 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  ENTITY(SELF)	coordinated_universal_time_offset
    ATTR:  hour_offset,	TYPE: INTEGER -- EXPLICIT

    ATTR:  minute_offset,	TYPE: OPTIONAL INTEGER -- EXPLICIT

    ATTR:  sense,	TYPE: ahead_or_behind -- EXPLICIT

    ATTR:  actual_minute_offset,	TYPE: INTEGER -- DERIVED
      := NVL( minute_offset, 0 )


*/


//MARK: - Partial Entity
  public final class _coordinated_universal_time_offset : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eCOORDINATED_UNIVERSAL_TIME_OFFSET.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _hour_offset: SDAI.INTEGER // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _minute_offset: SDAI.INTEGER?  // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _sense: nAHEAD_OR_BEHIND // PLAIN EXPLICIT ATTRIBUTE

    /// DERIVE ATTRIBUTE
    internal func _actual_minute_offset__getter(SELF: eCOORDINATED_UNIVERSAL_TIME_OFFSET) -> SDAI.INTEGER?  {

      let _TEMP1 = SDAI.NVL(V: SELF.MINUTE_OFFSET, 
                            SUBSTITUTE: 0)
      return _TEMP1
    }

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sSAME_AS_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sGROUPABLE_ITEM.typeName)) // -> Self
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._hour_offset.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._minute_offset?.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._sense.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._hour_offset.value.isValueEqualOptionally(to: rhs._hour_offset.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._minute_offset?.value.isValueEqualOptionally(to: rhs._minute_offset?.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._sense.value.isValueEqualOptionally(to: rhs._sense.value, visited: &comppairs)	{
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
      if let comp = self._hour_offset.value.isValueEqualOptionally(to: rhs._hour_offset.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._minute_offset?.value.isValueEqualOptionally(to: rhs._minute_offset?.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._sense.value.isValueEqualOptionally(to: rhs._sense.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eCOORDINATED_UNIVERSAL_TIME_OFFSET?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0)) <= SDAI.FORCE_OPTIONAL(SELF.HOUR_OFFSET)
      let _TEMP2 = SDAI.FORCE_OPTIONAL(SELF.HOUR_OFFSET) < SDAI.FORCE_OPTIONAL(SDAI.INTEGER(24))
      let _TEMP3 = _TEMP1 && _TEMP2
      return _TEMP3
    }
    public static func WHERE_wr2(SELF: eCOORDINATED_UNIVERSAL_TIME_OFFSET?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0)) <= SELF.ACTUAL_MINUTE_OFFSET
      let _TEMP2 = SELF.ACTUAL_MINUTE_OFFSET <= SDAI.FORCE_OPTIONAL(SDAI.INTEGER(59))
      let _TEMP3 = _TEMP1 && _TEMP2
      return _TEMP3
    }
    public static func WHERE_wr3(SELF: eCOORDINATED_UNIVERSAL_TIME_OFFSET?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.FORCE_OPTIONAL(SELF.HOUR_OFFSET) .!=. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      let _TEMP2 = SELF.ACTUAL_MINUTE_OFFSET .!=. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      let _TEMP3 = _TEMP1 || _TEMP2
      let _TEMP4 = SDAI.FORCE_OPTIONAL(SELF.SENSE) .==. SDAI.FORCE_OPTIONAL(EXACT)
      let _TEMP5 = _TEMP3 && _TEMP4
      let _TEMP6 =  !_TEMP5
      return _TEMP6
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(HOUR_OFFSET: SDAI.INTEGER, MINUTE_OFFSET: SDAI.INTEGER? , 
                SENSE: nAHEAD_OR_BEHIND) {
      self._hour_offset = HOUR_OFFSET
      self._minute_offset = MINUTE_OFFSET
      self._sense = SENSE
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 3
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: SDAI.INTEGER.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverOptionalParameter(as: SDAI.INTEGER.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p2) = exchangeStructure.recoverRequiredParameter(as: nAHEAD_OR_BEHIND.self, from: parameters[2])
      else { exchangeStructure.add(errorContext: "while recovering parameter #2 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( HOUR_OFFSET: p0, MINUTE_OFFSET: p1, SENSE: p2 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY coordinated_universal_time_offset;
      hour_offset    : INTEGER;
      minute_offset  : OPTIONAL INTEGER;
      sense          : ahead_or_behind;
    DERIVE
      actual_minute_offset  : INTEGER := NVL( minute_offset, 0 );
    WHERE
      wr1: ( ( 0 <= hour_offset ) AND ( hour_offset < 24 ) );
      wr2: ( ( 0 <= actual_minute_offset ) AND ( actual_minute_offset <= 59 ) );
      wr3: ( NOT ( ( ( hour_offset <> 0 ) OR ( actual_minute_offset <> 0 ) ) AND ( sense = exact ) ) );
  END_ENTITY; -- coordinated_universal_time_offset (line:10674 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eCOORDINATED_UNIVERSAL_TIME_OFFSET : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _coordinated_universal_time_offset.self
    }
    public let partialEntity: _coordinated_universal_time_offset

    //MARK: SUPERTYPES
    public var super_eCOORDINATED_UNIVERSAL_TIME_OFFSET: eCOORDINATED_UNIVERSAL_TIME_OFFSET { return self } 	// [1]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eCOORDINATED_UNIVERSAL_TIME_OFFSET`` )
    public var HOUR_OFFSET: SDAI.INTEGER {
      get {
        return SDAI.UNWRAP( self.partialEntity._hour_offset )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._hour_offset = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SELF( ``eCOORDINATED_UNIVERSAL_TIME_OFFSET`` )
    public var ACTUAL_MINUTE_OFFSET: SDAI.INTEGER?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"ACTUAL_MINUTE_OFFSET") {
          return cached.value as! SDAI.INTEGER? 
        }
        let origin = self
        let value = origin.partialEntity._actual_minute_offset__getter(SELF: origin)
        updateCache(derivedAttributeName:"ACTUAL_MINUTE_OFFSET", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eCOORDINATED_UNIVERSAL_TIME_OFFSET`` )
    public var MINUTE_OFFSET: SDAI.INTEGER?  {
      get {
        return self.partialEntity._minute_offset
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._minute_offset = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eCOORDINATED_UNIVERSAL_TIME_OFFSET`` )
    public var SENSE: nAHEAD_OR_BEHIND {
      get {
        return SDAI.UNWRAP( self.partialEntity._sense )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._sense = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_coordinated_universal_time_offset.self) else { return nil }
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
    public convenience init?(_ partial:_coordinated_universal_time_offset) {
      let complex = SDAI.ComplexEntity(entities:[partial])
      self.init(complex: complex)
    }


    //MARK: WHERE RULE VALIDATION (ENTITY)
    public override class func validateWhereRules(instance:SDAI.EntityReference?, prefix:SDAI.WhereLabel) -> [SDAI.WhereLabel:SDAI.LOGICAL] {
      guard let instance = instance as? Self else { return [:] }

      let prefix2 = prefix + " \(instance)"

      var result = super.validateWhereRules(instance:instance, prefix:prefix2)
      result[prefix2 + " .WHERE_wr1"] = _coordinated_universal_time_offset.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _coordinated_universal_time_offset.WHERE_wr2(SELF: instance)
      result[prefix2 + " .WHERE_wr3"] = _coordinated_universal_time_offset.WHERE_wr3(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "COORDINATED_UNIVERSAL_TIME_OFFSET", type: self, explicitAttributeCount: 3)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eCOORDINATED_UNIVERSAL_TIME_OFFSET.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "HOUR_OFFSET", keyPath: \eCOORDINATED_UNIVERSAL_TIME_OFFSET.HOUR_OFFSET, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ACTUAL_MINUTE_OFFSET", keyPath: \eCOORDINATED_UNIVERSAL_TIME_OFFSET.ACTUAL_MINUTE_OFFSET, 
        kind: .derived, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "MINUTE_OFFSET", keyPath: \eCOORDINATED_UNIVERSAL_TIME_OFFSET.MINUTE_OFFSET, 
        kind: .explicitOptional, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SENSE", keyPath: \eCOORDINATED_UNIVERSAL_TIME_OFFSET.SENSE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
