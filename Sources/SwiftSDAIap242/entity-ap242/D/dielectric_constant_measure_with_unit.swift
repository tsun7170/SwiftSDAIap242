/* file: dielectric_constant_measure_with_unit.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY dielectric_constant_measure_with_unit
    SUBTYPE OF ( ratio_measure_with_unit );
  END_ENTITY; -- dielectric_constant_measure_with_unit (line:12029 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	measure_with_unit
    ATTR:  value_component,	TYPE: measure_value -- EXPLICIT

    ATTR:  unit_component,	TYPE: unit -- EXPLICIT
      -- possibly overriden by
          ENTITY: currency_measure_with_unit,	TYPE: currency


  SUPER- ENTITY(2)	ratio_measure_with_unit
    (no local attributes)

  ENTITY(SELF)	dielectric_constant_measure_with_unit
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _dielectric_constant_measure_with_unit : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eDIELECTRIC_CONSTANT_MEASURE_WITH_UNIT.self
    }

    //ATTRIBUTES
    // (no local attributes)

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
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
  ENTITY dielectric_constant_measure_with_unit
    SUBTYPE OF ( ratio_measure_with_unit );
  END_ENTITY; -- dielectric_constant_measure_with_unit (line:12029 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eDIELECTRIC_CONSTANT_MEASURE_WITH_UNIT : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _dielectric_constant_measure_with_unit.self
    }
    public let partialEntity: _dielectric_constant_measure_with_unit

    //MARK: SUPERTYPES
    public let super_eMEASURE_WITH_UNIT: eMEASURE_WITH_UNIT 	// [1]
    public let super_eRATIO_MEASURE_WITH_UNIT: eRATIO_MEASURE_WITH_UNIT 	// [2]
    public var super_eDIELECTRIC_CONSTANT_MEASURE_WITH_UNIT: eDIELECTRIC_CONSTANT_MEASURE_WITH_UNIT { return self } 	// [3]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eMEASURE_WITH_UNIT`` )
    public var UNIT_COMPONENT: sUNIT {
      get {
        return SDAI.UNWRAP( super_eMEASURE_WITH_UNIT.partialEntity._unit_component )
      }
      set(newValue) {
        let partial = super_eMEASURE_WITH_UNIT.partialEntity
        partial._unit_component = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eMEASURE_WITH_UNIT`` )
    public var VALUE_COMPONENT: sMEASURE_VALUE {
      get {
        return SDAI.UNWRAP( super_eMEASURE_WITH_UNIT.partialEntity._value_component )
      }
      set(newValue) {
        let partial = super_eMEASURE_WITH_UNIT.partialEntity
        partial._value_component = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_dielectric_constant_measure_with_unit.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eMEASURE_WITH_UNIT.self) else { return nil }
      self.super_eMEASURE_WITH_UNIT = super1

      guard let super2 = complexEntity?.entityReference(eRATIO_MEASURE_WITH_UNIT.self) else { return nil }
      self.super_eRATIO_MEASURE_WITH_UNIT = super2

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "DIELECTRIC_CONSTANT_MEASURE_WITH_UNIT", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eMEASURE_WITH_UNIT.self)
      entityDef.add(supertype: eRATIO_MEASURE_WITH_UNIT.self)
      entityDef.add(supertype: eDIELECTRIC_CONSTANT_MEASURE_WITH_UNIT.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "UNIT_COMPONENT", keyPath: \eDIELECTRIC_CONSTANT_MEASURE_WITH_UNIT.UNIT_COMPONENT, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "VALUE_COMPONENT", keyPath: \eDIELECTRIC_CONSTANT_MEASURE_WITH_UNIT.VALUE_COMPONENT, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
