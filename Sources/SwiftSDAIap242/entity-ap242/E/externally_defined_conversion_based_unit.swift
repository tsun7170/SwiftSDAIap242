/* file: externally_defined_conversion_based_unit.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  ENTITY externally_defined_conversion_based_unit
    SUBTYPE OF ( conversion_based_unit, externally_defined_item );
  END_ENTITY; -- externally_defined_conversion_based_unit (line:14393 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	named_unit
    ATTR:  dimensions,	TYPE: dimensional_exponents -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: si_unit,	TYPE: dimensional_exponents	(as DERIVED)


  SUPER- ENTITY(2)	conversion_based_unit
    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  conversion_factor,	TYPE: measure_with_unit -- EXPLICIT


  SUPER- ENTITY(3)	externally_defined_item
    ATTR:  item_id,	TYPE: source_item -- EXPLICIT

    ATTR:  source,	TYPE: external_source -- EXPLICIT


  ENTITY(SELF)	externally_defined_conversion_based_unit
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _externally_defined_conversion_based_unit : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eEXTERNALLY_DEFINED_CONVERSION_BASED_UNIT.self
    }

    //ATTRIBUTES
    // (no local attributes)

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sEXTERNAL_IDENTIFICATION_ITEM.typeName)) // -> Self
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      return true
    }

    public override func isValueEqualOptionally(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      guard let rhs = rhs as? Self else { return false }
      var result: Bool? = true
      if let comp = super.isValueEqualOptionally(to: rhs, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init() {
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 0
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      self.init( )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY externally_defined_conversion_based_unit
    SUBTYPE OF ( conversion_based_unit, externally_defined_item );
  END_ENTITY; -- externally_defined_conversion_based_unit (line:14393 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eEXTERNALLY_DEFINED_CONVERSION_BASED_UNIT : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _externally_defined_conversion_based_unit.self
    }
    public let partialEntity: _externally_defined_conversion_based_unit

    //MARK: SUPERTYPES
    public let super_eNAMED_UNIT: eNAMED_UNIT 	// [1]
    public let super_eCONVERSION_BASED_UNIT: eCONVERSION_BASED_UNIT 	// [2]
    public let super_eEXTERNALLY_DEFINED_ITEM: eEXTERNALLY_DEFINED_ITEM 	// [3]
    public var super_eEXTERNALLY_DEFINED_CONVERSION_BASED_UNIT: eEXTERNALLY_DEFINED_CONVERSION_BASED_UNIT { return self } 	// [4]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eEXTERNALLY_DEFINED_ITEM`` )
    public var ITEM_ID: sSOURCE_ITEM {
      get {
        return SDAI.UNWRAP( super_eEXTERNALLY_DEFINED_ITEM.partialEntity._item_id )
      }
      set(newValue) {
        let partial = super_eEXTERNALLY_DEFINED_ITEM.partialEntity
        partial._item_id = SDAI.UNWRAP(newValue)
      }
    }

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
    /// - origin: SUPER( ``eCONVERSION_BASED_UNIT`` )
    public var CONVERSION_FACTOR: eMEASURE_WITH_UNIT {
      get {
        return SDAI.UNWRAP( super_eCONVERSION_BASED_UNIT.partialEntity._conversion_factor )
      }
      set(newValue) {
        let partial = super_eCONVERSION_BASED_UNIT.partialEntity
        partial._conversion_factor = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eEXTERNALLY_DEFINED_ITEM`` )
    public var SOURCE: eEXTERNAL_SOURCE {
      get {
        return SDAI.UNWRAP( super_eEXTERNALLY_DEFINED_ITEM.partialEntity._source )
      }
      set(newValue) {
        let partial = super_eEXTERNALLY_DEFINED_ITEM.partialEntity
        partial._source = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eCONVERSION_BASED_UNIT`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( super_eCONVERSION_BASED_UNIT.partialEntity._name )
      }
      set(newValue) {
        let partial = super_eCONVERSION_BASED_UNIT.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_externally_defined_conversion_based_unit.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eNAMED_UNIT.self) else { return nil }
      self.super_eNAMED_UNIT = super1

      guard let super2 = complexEntity?.entityReference(eCONVERSION_BASED_UNIT.self) else { return nil }
      self.super_eCONVERSION_BASED_UNIT = super2

      guard let super3 = complexEntity?.entityReference(eEXTERNALLY_DEFINED_ITEM.self) else { return nil }
      self.super_eEXTERNALLY_DEFINED_ITEM = super3

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "EXTERNALLY_DEFINED_CONVERSION_BASED_UNIT", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eNAMED_UNIT.self)
      entityDef.add(supertype: eCONVERSION_BASED_UNIT.self)
      entityDef.add(supertype: eEXTERNALLY_DEFINED_ITEM.self)
      entityDef.add(supertype: eEXTERNALLY_DEFINED_CONVERSION_BASED_UNIT.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "ITEM_ID", keyPath: \eEXTERNALLY_DEFINED_CONVERSION_BASED_UNIT.ITEM_ID, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIMENSIONS", keyPath: \eEXTERNALLY_DEFINED_CONVERSION_BASED_UNIT.DIMENSIONS, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "CONVERSION_FACTOR", keyPath: \eEXTERNALLY_DEFINED_CONVERSION_BASED_UNIT.CONVERSION_FACTOR, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "SOURCE", keyPath: \eEXTERNALLY_DEFINED_CONVERSION_BASED_UNIT.SOURCE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eEXTERNALLY_DEFINED_CONVERSION_BASED_UNIT.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
