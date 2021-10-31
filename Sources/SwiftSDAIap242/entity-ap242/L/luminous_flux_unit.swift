/* file: luminous_flux_unit.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  ENTITY luminous_flux_unit
    SUBTYPE OF ( named_unit );
    WHERE
      wr1: ( derive_dimensional_exponents( SELF ) = dimensions_for_si_unit( si_unit_name.lumen ) );
  END_ENTITY; -- luminous_flux_unit (line:19520 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	named_unit
    ATTR:  dimensions,	TYPE: dimensional_exponents -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: si_unit,	TYPE: dimensional_exponents	(as DERIVED)


  ENTITY(SELF)	luminous_flux_unit
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _luminous_flux_unit : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eLUMINOUS_FLUX_UNIT.self
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
    public static func WHERE_wr1(SELF: eLUMINOUS_FLUX_UNIT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = DERIVE_DIMENSIONAL_EXPONENTS(sUNIT(/*eLUMINOUS_FLUX_UNIT*/SELF))
      let _TEMP2 = nSI_UNIT_NAME.LUMEN
      let _TEMP3 = DIMENSIONS_FOR_SI_UNIT(_TEMP2)
      let _TEMP4 = _TEMP1 .==. _TEMP3
      return _TEMP4
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
  ENTITY luminous_flux_unit
    SUBTYPE OF ( named_unit );
    WHERE
      wr1: ( derive_dimensional_exponents( SELF ) = dimensions_for_si_unit( si_unit_name.lumen ) );
  END_ENTITY; -- luminous_flux_unit (line:19520 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eLUMINOUS_FLUX_UNIT : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _luminous_flux_unit.self
    }
    public let partialEntity: _luminous_flux_unit

    //MARK: SUPERTYPES
    public let super_eNAMED_UNIT: eNAMED_UNIT 	// [1]
    public var super_eLUMINOUS_FLUX_UNIT: eLUMINOUS_FLUX_UNIT { return self } 	// [2]

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
      guard let partial = complexEntity?.partialEntityInstance(_luminous_flux_unit.self) else { return nil }
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
      result[prefix2 + " .WHERE_wr1"] = _luminous_flux_unit.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "LUMINOUS_FLUX_UNIT", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eNAMED_UNIT.self)
      entityDef.add(supertype: eLUMINOUS_FLUX_UNIT.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DIMENSIONS", keyPath: \eLUMINOUS_FLUX_UNIT.DIMENSIONS, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
