/* file: si_resistance_unit.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  ENTITY si_resistance_unit
    SUBTYPE OF ( resistance_unit, si_unit );
    WHERE
      wr1: ( SELF\si_unit.name = si_unit_name.ohm );
      wr2: ( NOT EXISTS( SELF\derived_unit.name ) );
  END_ENTITY; -- si_resistance_unit (line:29346 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	derived_unit
    ATTR:  elements,	TYPE: SET [1 : ?] OF derived_unit_element -- EXPLICIT

    ATTR:  name,	TYPE: label -- DERIVED	(AMBIGUOUS/MASKED)
      := get_name_value( SELF )


  SUPER- ENTITY(2)	resistance_unit
    (no local attributes)

  SUPER- ENTITY(3)	named_unit
    ATTR:  dimensions,	TYPE: dimensional_exponents -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
      *** ENTITY: si_unit,	TYPE: dimensional_exponents	(as DERIVED)


  SUPER- ENTITY(4)	si_unit
    ATTR:  prefix,	TYPE: OPTIONAL si_prefix -- EXPLICIT

    ATTR:  name,	TYPE: si_unit_name -- EXPLICIT	(AMBIGUOUS/MASKED)

    REDCR: dimensions,	TYPE: dimensional_exponents -- DERIVED (DYNAMIC)
      := dimensions_for_si_unit( name )
      -- OVERRIDING ENTITY: named_unit


  ENTITY(SELF)	si_resistance_unit
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _si_resistance_unit : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eSI_RESISTANCE_UNIT.self
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
    public static func WHERE_wr1(SELF: eSI_RESISTANCE_UNIT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.GROUP_REF(eSI_UNIT.self)
      let _TEMP2 = _TEMP1?.NAME
      let _TEMP3 = nSI_UNIT_NAME.OHM
      let _TEMP4 = _TEMP2 .==. SDAI.FORCE_OPTIONAL(_TEMP3)
      return _TEMP4
    }
    public static func WHERE_wr2(SELF: eSI_RESISTANCE_UNIT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.GROUP_REF(eDERIVED_UNIT.self)
      let _TEMP2 = _TEMP1?.NAME
      let _TEMP3 = SDAI.EXISTS(_TEMP2)
      let _TEMP4 =  !_TEMP3
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
  ENTITY si_resistance_unit
    SUBTYPE OF ( resistance_unit, si_unit );
    WHERE
      wr1: ( SELF\si_unit.name = si_unit_name.ohm );
      wr2: ( NOT EXISTS( SELF\derived_unit.name ) );
  END_ENTITY; -- si_resistance_unit (line:29346 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eSI_RESISTANCE_UNIT : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _si_resistance_unit.self
    }
    public let partialEntity: _si_resistance_unit

    //MARK: SUPERTYPES
    public let super_eDERIVED_UNIT: eDERIVED_UNIT 	// [1]
    public let super_eRESISTANCE_UNIT: eRESISTANCE_UNIT 	// [2]
    public let super_eNAMED_UNIT: eNAMED_UNIT 	// [3]
    public let super_eSI_UNIT: eSI_UNIT 	// [4]
    public var super_eSI_RESISTANCE_UNIT: eSI_RESISTANCE_UNIT { return self } 	// [5]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    // NAME: (2 AMBIGUOUS REFs)

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

    /// __EXPLICIT REDEF(DERIVE)__ attribute
    /// - origin: SUPER( ``eSI_UNIT`` )
    public var DIMENSIONS: eDIMENSIONAL_EXPONENTS {
      get {
        if let cached = cachedValue(derivedAttributeName:"DIMENSIONS") {
          return cached.value as! eDIMENSIONAL_EXPONENTS
        }
        let origin = super_eSI_UNIT
        let value = SDAI.UNWRAP( eDIMENSIONAL_EXPONENTS(origin.partialEntity._dimensions__getter(SELF: origin)) )
        updateCache(derivedAttributeName:"DIMENSIONS", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eSI_UNIT`` )
    public var PREFIX: nSI_PREFIX?  {
      get {
        return super_eSI_UNIT.partialEntity._prefix
      }
      set(newValue) {
        let partial = super_eSI_UNIT.partialEntity
        partial._prefix = newValue
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_si_resistance_unit.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eDERIVED_UNIT.self) else { return nil }
      self.super_eDERIVED_UNIT = super1

      guard let super2 = complexEntity?.entityReference(eRESISTANCE_UNIT.self) else { return nil }
      self.super_eRESISTANCE_UNIT = super2

      guard let super3 = complexEntity?.entityReference(eNAMED_UNIT.self) else { return nil }
      self.super_eNAMED_UNIT = super3

      guard let super4 = complexEntity?.entityReference(eSI_UNIT.self) else { return nil }
      self.super_eSI_UNIT = super4

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
      result[prefix2 + " .WHERE_wr1"] = _si_resistance_unit.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _si_resistance_unit.WHERE_wr2(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "SI_RESISTANCE_UNIT", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eDERIVED_UNIT.self)
      entityDef.add(supertype: eRESISTANCE_UNIT.self)
      entityDef.add(supertype: eNAMED_UNIT.self)
      entityDef.add(supertype: eSI_UNIT.self)
      entityDef.add(supertype: eSI_RESISTANCE_UNIT.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "ELEMENTS", keyPath: \eSI_RESISTANCE_UNIT.ELEMENTS, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DIMENSIONS", keyPath: \eSI_RESISTANCE_UNIT.DIMENSIONS, 
        kind: .derivedRedeclaring, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "PREFIX", keyPath: \eSI_RESISTANCE_UNIT.PREFIX, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
