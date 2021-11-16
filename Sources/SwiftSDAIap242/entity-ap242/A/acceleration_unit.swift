/* file: acceleration_unit.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY acceleration_unit
    SUBTYPE OF ( derived_unit );
    WHERE
      wr1: ( derive_dimensional_exponents( SELF ) = dimensional_exponents( 1, 0, -2, 0, 0, 0, 0 ) );
  END_ENTITY; -- acceleration_unit (line:6370 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	derived_unit
    ATTR:  elements,	TYPE: SET [1 : ?] OF derived_unit_element -- EXPLICIT

    ATTR:  name,	TYPE: label -- DERIVED
      := get_name_value( SELF )


  ENTITY(SELF)	acceleration_unit
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _acceleration_unit : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eACCELERATION_UNIT.self
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
    public static func WHERE_wr1(SELF: eACCELERATION_UNIT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = DERIVE_DIMENSIONAL_EXPONENTS(sUNIT(/*eACCELERATION_UNIT*/SELF))
      let _TEMP2 = _dimensional_exponents(
        LENGTH_EXPONENT: SDAI.UNWRAP(SDAI.REAL(1.0000000000e+00)), 
        MASS_EXPONENT: SDAI.UNWRAP(SDAI.REAL(0)), 
        TIME_EXPONENT: SDAI.UNWRAP(SDAI.REAL( -2.0000000000e+00)), 
        ELECTRIC_CURRENT_EXPONENT: SDAI.UNWRAP(SDAI.REAL(0)), 
        THERMODYNAMIC_TEMPERATURE_EXPONENT: SDAI.UNWRAP(SDAI.REAL(0)), 
        AMOUNT_OF_SUBSTANCE_EXPONENT: SDAI.UNWRAP(SDAI.REAL(0)), 
        LUMINOUS_INTENSITY_EXPONENT: SDAI.UNWRAP(SDAI.REAL(0)))
      let _TEMP3 = _TEMP1 .==. SDAI.FORCE_OPTIONAL(eDIMENSIONAL_EXPONENTS(/*partial entity*/_TEMP2))
      return _TEMP3
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
  ENTITY acceleration_unit
    SUBTYPE OF ( derived_unit );
    WHERE
      wr1: ( derive_dimensional_exponents( SELF ) = dimensional_exponents( 1, 0, -2, 0, 0, 0, 0 ) );
  END_ENTITY; -- acceleration_unit (line:6370 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eACCELERATION_UNIT : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _acceleration_unit.self
    }
    public let partialEntity: _acceleration_unit

    //MARK: SUPERTYPES
    public let super_eDERIVED_UNIT: eDERIVED_UNIT 	// [1]
    public var super_eACCELERATION_UNIT: eACCELERATION_UNIT { return self } 	// [2]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eDERIVED_UNIT`` )
    public var ELEMENTS: SDAI.SET<eDERIVED_UNIT_ELEMENT>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( super_eDERIVED_UNIT.partialEntity._elements )
      }
      set(newValue) {
        let partial = super_eDERIVED_UNIT.partialEntity
        partial._elements = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eDERIVED_UNIT`` )
    public var NAME: tLABEL?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"NAME") {
          return cached.value as! tLABEL? 
        }
        let origin = super_eDERIVED_UNIT
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
      guard let partial = complexEntity?.partialEntityInstance(_acceleration_unit.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eDERIVED_UNIT.self) else { return nil }
      self.super_eDERIVED_UNIT = super1

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
      result[prefix2 + " .WHERE_wr1"] = _acceleration_unit.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "ACCELERATION_UNIT", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eDERIVED_UNIT.self)
      entityDef.add(supertype: eACCELERATION_UNIT.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "ELEMENTS", keyPath: \eACCELERATION_UNIT.ELEMENTS, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eACCELERATION_UNIT.NAME, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
