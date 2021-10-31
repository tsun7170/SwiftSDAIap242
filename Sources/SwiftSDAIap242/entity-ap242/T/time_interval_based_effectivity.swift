/* file: time_interval_based_effectivity.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  ENTITY time_interval_based_effectivity
    SUBTYPE OF ( effectivity );
      effectivity_period  : time_interval;
  END_ENTITY; -- time_interval_based_effectivity (line:32698 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	effectivity
    ATTR:  id,	TYPE: identifier -- EXPLICIT

    ATTR:  name,	TYPE: label -- DERIVED
      := get_name_value( SELF )

    ATTR:  description,	TYPE: text -- DERIVED
      := get_description_value( SELF )


  ENTITY(SELF)	time_interval_based_effectivity
    ATTR:  effectivity_period,	TYPE: time_interval -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _time_interval_based_effectivity : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eTIME_INTERVAL_BASED_EFFECTIVITY.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _effectivity_period: eTIME_INTERVAL // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sTIME_INTERVAL_ITEM.typeName)) // -> Self
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._effectivity_period.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._effectivity_period.value.isValueEqualOptionally(to: rhs._effectivity_period.value, visited: &comppairs)	{
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
      if let comp = self._effectivity_period.value.isValueEqualOptionally(to: rhs._effectivity_period.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(EFFECTIVITY_PERIOD: eTIME_INTERVAL) {
      self._effectivity_period = EFFECTIVITY_PERIOD
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: eTIME_INTERVAL.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( EFFECTIVITY_PERIOD: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY time_interval_based_effectivity
    SUBTYPE OF ( effectivity );
      effectivity_period  : time_interval;
  END_ENTITY; -- time_interval_based_effectivity (line:32698 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eTIME_INTERVAL_BASED_EFFECTIVITY : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _time_interval_based_effectivity.self
    }
    public let partialEntity: _time_interval_based_effectivity

    //MARK: SUPERTYPES
    public let super_eEFFECTIVITY: eEFFECTIVITY 	// [1]
    public var super_eTIME_INTERVAL_BASED_EFFECTIVITY: eTIME_INTERVAL_BASED_EFFECTIVITY { return self } 	// [2]

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
    /// - origin: SELF( ``eTIME_INTERVAL_BASED_EFFECTIVITY`` )
    public var EFFECTIVITY_PERIOD: eTIME_INTERVAL {
      get {
        return SDAI.UNWRAP( self.partialEntity._effectivity_period )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._effectivity_period = SDAI.UNWRAP(newValue)
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
      guard let partial = complexEntity?.partialEntityInstance(_time_interval_based_effectivity.self) else { return nil }
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


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "TIME_INTERVAL_BASED_EFFECTIVITY", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eEFFECTIVITY.self)
      entityDef.add(supertype: eTIME_INTERVAL_BASED_EFFECTIVITY.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eTIME_INTERVAL_BASED_EFFECTIVITY.DESCRIPTION, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "EFFECTIVITY_PERIOD", keyPath: \eTIME_INTERVAL_BASED_EFFECTIVITY.EFFECTIVITY_PERIOD, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ID", keyPath: \eTIME_INTERVAL_BASED_EFFECTIVITY.ID, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eTIME_INTERVAL_BASED_EFFECTIVITY.NAME, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
