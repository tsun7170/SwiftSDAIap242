/* file: finite_integer_interval.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY finite_integer_interval
    SUBTYPE OF ( maths_space, generic_literal );
      min  : INTEGER;
      max  : INTEGER;
    DERIVE
      size  : positive_integer := ( max - min ) + 1;
    WHERE
      wr1: ( min <= max );
  END_ENTITY; -- finite_integer_interval (line:15618 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	generic_expression
    (no local attributes)

  SUPER- ENTITY(2)	maths_space
    (no local attributes)

  SUPER- ENTITY(3)	simple_generic_expression
    (no local attributes)

  SUPER- ENTITY(4)	generic_literal
    (no local attributes)

  ENTITY(SELF)	finite_integer_interval
    ATTR:  min,	TYPE: INTEGER -- EXPLICIT

    ATTR:  max,	TYPE: INTEGER -- EXPLICIT

    ATTR:  size,	TYPE: positive_integer -- DERIVED
      := ( max - min ) + 1


*/


//MARK: - Partial Entity
  public final class _finite_integer_interval : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eFINITE_INTEGER_INTERVAL.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _min: SDAI.INTEGER // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _max: SDAI.INTEGER // PLAIN EXPLICIT ATTRIBUTE

    /// DERIVE ATTRIBUTE
    internal func _size__getter(SELF: eFINITE_INTEGER_INTERVAL) -> tPOSITIVE_INTEGER?  {

      let _TEMP1 = SDAI.FORCE_OPTIONAL(SELF.MAX) - SDAI.FORCE_OPTIONAL(SELF.MIN)
      let _TEMP2 = _TEMP1 + SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      return tPOSITIVE_INTEGER(/*SDAI.INTEGER*/_TEMP2)
    }

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._min.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._max.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._min.value.isValueEqualOptionally(to: rhs._min.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._max.value.isValueEqualOptionally(to: rhs._max.value, visited: &comppairs)	{
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
      if let comp = self._min.value.isValueEqualOptionally(to: rhs._min.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._max.value.isValueEqualOptionally(to: rhs._max.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eFINITE_INTEGER_INTERVAL?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.FORCE_OPTIONAL(SELF.MIN) <= SDAI.FORCE_OPTIONAL(SELF.MAX)
      return _TEMP1
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(MIN: SDAI.INTEGER, MAX: SDAI.INTEGER) {
      self._min = MIN
      self._max = MAX
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: SDAI.INTEGER.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: SDAI.INTEGER.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( MIN: p0, MAX: p1 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY finite_integer_interval
    SUBTYPE OF ( maths_space, generic_literal );
      min  : INTEGER;
      max  : INTEGER;
    DERIVE
      size  : positive_integer := ( max - min ) + 1;
    WHERE
      wr1: ( min <= max );
  END_ENTITY; -- finite_integer_interval (line:15618 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eFINITE_INTEGER_INTERVAL : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _finite_integer_interval.self
    }
    public let partialEntity: _finite_integer_interval

    //MARK: SUPERTYPES
    public let super_eGENERIC_EXPRESSION: eGENERIC_EXPRESSION 	// [1]
    public let super_eMATHS_SPACE: eMATHS_SPACE 	// [2]
    public let super_eSIMPLE_GENERIC_EXPRESSION: eSIMPLE_GENERIC_EXPRESSION 	// [3]
    public let super_eGENERIC_LITERAL: eGENERIC_LITERAL 	// [4]
    public var super_eFINITE_INTEGER_INTERVAL: eFINITE_INTEGER_INTERVAL { return self } 	// [5]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eFINITE_INTEGER_INTERVAL`` )
    public var MIN: SDAI.INTEGER {
      get {
        return SDAI.UNWRAP( self.partialEntity._min )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._min = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SELF( ``eFINITE_INTEGER_INTERVAL`` )
    public var SIZE: tPOSITIVE_INTEGER?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"SIZE") {
          return cached.value as! tPOSITIVE_INTEGER? 
        }
        let origin = self
        let value = origin.partialEntity._size__getter(SELF: origin)
        updateCache(derivedAttributeName:"SIZE", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eFINITE_INTEGER_INTERVAL`` )
    public var MAX: SDAI.INTEGER {
      get {
        return SDAI.UNWRAP( self.partialEntity._max )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._max = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_finite_integer_interval.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eGENERIC_EXPRESSION.self) else { return nil }
      self.super_eGENERIC_EXPRESSION = super1

      guard let super2 = complexEntity?.entityReference(eMATHS_SPACE.self) else { return nil }
      self.super_eMATHS_SPACE = super2

      guard let super3 = complexEntity?.entityReference(eSIMPLE_GENERIC_EXPRESSION.self) else { return nil }
      self.super_eSIMPLE_GENERIC_EXPRESSION = super3

      guard let super4 = complexEntity?.entityReference(eGENERIC_LITERAL.self) else { return nil }
      self.super_eGENERIC_LITERAL = super4

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
      result[prefix2 + " .WHERE_wr1"] = _finite_integer_interval.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "FINITE_INTEGER_INTERVAL", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eGENERIC_EXPRESSION.self)
      entityDef.add(supertype: eMATHS_SPACE.self)
      entityDef.add(supertype: eSIMPLE_GENERIC_EXPRESSION.self)
      entityDef.add(supertype: eGENERIC_LITERAL.self)
      entityDef.add(supertype: eFINITE_INTEGER_INTERVAL.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "MIN", keyPath: \eFINITE_INTEGER_INTERVAL.MIN, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SIZE", keyPath: \eFINITE_INTEGER_INTERVAL.SIZE, 
        kind: .derived, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "MAX", keyPath: \eFINITE_INTEGER_INTERVAL.MAX, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
