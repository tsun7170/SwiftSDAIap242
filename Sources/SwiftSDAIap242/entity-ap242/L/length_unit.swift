/* file: length_unit.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY length_unit
    SUBTYPE OF ( named_unit );
    WHERE
      wr1: ( ( SELF\named_unit.dimensions.length_exponent = 1 ) AND ( SELF\named_unit.dimensions.
               mass_exponent = 0 ) AND ( SELF\named_unit.dimensions.time_exponent = 0 ) AND ( SELF\named_unit
               .dimensions.electric_current_exponent = 0 ) AND ( SELF\named_unit.dimensions.
               thermodynamic_temperature_exponent = 0 ) AND ( SELF\named_unit.dimensions.
               amount_of_substance_exponent = 0 ) AND ( SELF\named_unit.dimensions.
               luminous_intensity_exponent = 0 ) );
  END_ENTITY; -- length_unit (line:18937 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	named_unit
    ATTR:  dimensions,	TYPE: dimensional_exponents -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: si_unit,	TYPE: dimensional_exponents	(as DERIVED)


  ENTITY(SELF)	length_unit
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _length_unit : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eLENGTH_UNIT.self
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


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eLENGTH_UNIT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.GROUP_REF(eNAMED_UNIT.self)
      let _TEMP2 = _TEMP1?.DIMENSIONS
      let _TEMP3 = _TEMP2?.LENGTH_EXPONENT
      let _TEMP4 = _TEMP3 .==. SDAI.FORCE_OPTIONAL(SDAI.REAL(1.0000000000e+00))
      let _TEMP5 = SELF.GROUP_REF(eNAMED_UNIT.self)
      let _TEMP6 = _TEMP5?.DIMENSIONS
      let _TEMP7 = _TEMP6?.MASS_EXPONENT
      let _TEMP8 = _TEMP7 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      let _TEMP9 = _TEMP4 && _TEMP8
      let _TEMP10 = SELF.GROUP_REF(eNAMED_UNIT.self)
      let _TEMP11 = _TEMP10?.DIMENSIONS
      let _TEMP12 = _TEMP11?.TIME_EXPONENT
      let _TEMP13 = _TEMP12 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      let _TEMP14 = _TEMP9 && _TEMP13
      let _TEMP15 = SELF.GROUP_REF(eNAMED_UNIT.self)
      let _TEMP16 = _TEMP15?.DIMENSIONS
      let _TEMP17 = _TEMP16?.ELECTRIC_CURRENT_EXPONENT
      let _TEMP18 = _TEMP17 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      let _TEMP19 = _TEMP14 && _TEMP18
      let _TEMP20 = SELF.GROUP_REF(eNAMED_UNIT.self)
      let _TEMP21 = _TEMP20?.DIMENSIONS
      let _TEMP22 = _TEMP21?.THERMODYNAMIC_TEMPERATURE_EXPONENT
      let _TEMP23 = _TEMP22 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      let _TEMP24 = _TEMP19 && _TEMP23
      let _TEMP25 = SELF.GROUP_REF(eNAMED_UNIT.self)
      let _TEMP26 = _TEMP25?.DIMENSIONS
      let _TEMP27 = _TEMP26?.AMOUNT_OF_SUBSTANCE_EXPONENT
      let _TEMP28 = _TEMP27 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      let _TEMP29 = _TEMP24 && _TEMP28
      let _TEMP30 = SELF.GROUP_REF(eNAMED_UNIT.self)
      let _TEMP31 = _TEMP30?.DIMENSIONS
      let _TEMP32 = _TEMP31?.LUMINOUS_INTENSITY_EXPONENT
      let _TEMP33 = _TEMP32 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      let _TEMP34 = _TEMP29 && _TEMP33
      return _TEMP34
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
  ENTITY length_unit
    SUBTYPE OF ( named_unit );
    WHERE
      wr1: ( ( SELF\named_unit.dimensions.length_exponent = 1 ) AND ( SELF\named_unit.dimensions.
               mass_exponent = 0 ) AND ( SELF\named_unit.dimensions.time_exponent = 0 ) AND ( SELF\named_unit
               .dimensions.electric_current_exponent = 0 ) AND ( SELF\named_unit.dimensions.
               thermodynamic_temperature_exponent = 0 ) AND ( SELF\named_unit.dimensions.
               amount_of_substance_exponent = 0 ) AND ( SELF\named_unit.dimensions.
               luminous_intensity_exponent = 0 ) );
  END_ENTITY; -- length_unit (line:18937 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eLENGTH_UNIT : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _length_unit.self
    }
    public let partialEntity: _length_unit

    //MARK: SUPERTYPES
    public let super_eNAMED_UNIT: eNAMED_UNIT 	// [1]
    public var super_eLENGTH_UNIT: eLENGTH_UNIT { return self } 	// [2]

    //MARK: SUBTYPES

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


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_length_unit.self) else { return nil }
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
      result[prefix2 + " .WHERE_wr1"] = _length_unit.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "LENGTH_UNIT", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eNAMED_UNIT.self)
      entityDef.add(supertype: eLENGTH_UNIT.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DIMENSIONS", keyPath: \eLENGTH_UNIT.DIMENSIONS, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
