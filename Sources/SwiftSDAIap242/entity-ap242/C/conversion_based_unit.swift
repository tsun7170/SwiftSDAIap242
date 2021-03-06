/* file: conversion_based_unit.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY conversion_based_unit
    SUBTYPE OF ( named_unit );
      name               : label;
      conversion_factor  : measure_with_unit;
    WHERE
      wr1: ( SELF\named_unit.dimensions = derive_dimensional_exponents( conversion_factor\measure_with_unit.
               unit_component ) );
  END_ENTITY; -- conversion_based_unit (line:10663 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	named_unit
    ATTR:  dimensions,	TYPE: dimensional_exponents -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: si_unit,	TYPE: dimensional_exponents	(as DERIVED)


  ENTITY(SELF)	conversion_based_unit
    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  conversion_factor,	TYPE: measure_with_unit -- EXPLICIT


  SUB- ENTITY(3)	externally_defined_conversion_based_unit
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _conversion_based_unit : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eCONVERSION_BASED_UNIT.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _name: tLABEL // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _conversion_factor: eMEASURE_WITH_UNIT // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sCLASSIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sACTION_ITEMS.typeName)) // -> sCLASSIFICATION_ITEM
      members.insert(SDAI.STRING(sCHANGE_MANAGEMENT_OBJECT.typeName)) // -> sACTION_ITEMS
      members.insert(SDAI.STRING(sIR_USAGE_ITEM.typeName)) // -> sCLASSIFICATION_ITEM
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._name.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._conversion_factor.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._name.value.isValueEqualOptionally(to: rhs._name.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._conversion_factor.value.isValueEqualOptionally(to: rhs._conversion_factor.value, visited: &comppairs)	{
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
      if let comp = self._name.value.isValueEqualOptionally(to: rhs._name.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._conversion_factor.value.isValueEqualOptionally(to: rhs._conversion_factor.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eCONVERSION_BASED_UNIT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.GROUP_REF(eNAMED_UNIT.self)
      let _TEMP2 = _TEMP1?.DIMENSIONS
      let _TEMP3 = SELF.CONVERSION_FACTOR.GROUP_REF(eMEASURE_WITH_UNIT.self)
      let _TEMP4 = _TEMP3?.UNIT_COMPONENT
      let _TEMP5 = DERIVE_DIMENSIONAL_EXPONENTS(_TEMP4)
      let _TEMP6 = _TEMP2 .==. _TEMP5
      return _TEMP6
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(NAME: tLABEL, CONVERSION_FACTOR: eMEASURE_WITH_UNIT) {
      self._name = NAME
      self._conversion_factor = CONVERSION_FACTOR
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: tLABEL.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: eMEASURE_WITH_UNIT.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( NAME: p0, CONVERSION_FACTOR: p1 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY conversion_based_unit
    SUBTYPE OF ( named_unit );
      name               : label;
      conversion_factor  : measure_with_unit;
    WHERE
      wr1: ( SELF\named_unit.dimensions = derive_dimensional_exponents( conversion_factor\measure_with_unit.
               unit_component ) );
  END_ENTITY; -- conversion_based_unit (line:10663 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eCONVERSION_BASED_UNIT : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _conversion_based_unit.self
    }
    public let partialEntity: _conversion_based_unit

    //MARK: SUPERTYPES
    public let super_eNAMED_UNIT: eNAMED_UNIT 	// [1]
    public var super_eCONVERSION_BASED_UNIT: eCONVERSION_BASED_UNIT { return self } 	// [2]

    //MARK: SUBTYPES
    public var sub_eEXTERNALLY_DEFINED_CONVERSION_BASED_UNIT: eEXTERNALLY_DEFINED_CONVERSION_BASED_UNIT? {	// [3]
      return self.complexEntity.entityReference(eEXTERNALLY_DEFINED_CONVERSION_BASED_UNIT.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT(DYNAMIC)__ attribute
    /// - origin: SUPER( ``eNAMED_UNIT`` )
    public var DIMENSIONS: eDIMENSIONAL_EXPONENTS {
      get {
        if let resolved = _named_unit._dimensions__provider(complex: self.complexEntity) {
          let value = resolved._dimensions__getter(complex: self.complexEntity)
          return value
        }
        else {
          return SDAI.UNWRAP( super_eNAMED_UNIT.partialEntity._dimensions )
        }
      }
      set(newValue) {
        if let _ = _named_unit._dimensions__provider(complex: self.complexEntity) { return }

        let partial = super_eNAMED_UNIT.partialEntity
        partial._dimensions = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eCONVERSION_BASED_UNIT`` )
    public var CONVERSION_FACTOR: eMEASURE_WITH_UNIT {
      get {
        return SDAI.UNWRAP( self.partialEntity._conversion_factor )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._conversion_factor = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eCONVERSION_BASED_UNIT`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( self.partialEntity._name )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_conversion_based_unit.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eNAMED_UNIT.self) else { return nil }
      self.super_eNAMED_UNIT = super1

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
      result[prefix2 + " .WHERE_wr1"] = _conversion_based_unit.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "CONVERSION_BASED_UNIT", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eNAMED_UNIT.self)
      entityDef.add(supertype: eCONVERSION_BASED_UNIT.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DIMENSIONS", keyPath: \eCONVERSION_BASED_UNIT.DIMENSIONS, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "CONVERSION_FACTOR", keyPath: \eCONVERSION_BASED_UNIT.CONVERSION_FACTOR, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eCONVERSION_BASED_UNIT.NAME, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
