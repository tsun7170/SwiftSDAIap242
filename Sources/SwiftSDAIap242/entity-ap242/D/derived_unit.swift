/* file: derived_unit.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY derived_unit
    SUPERTYPE OF ( 
        ONEOF ( 
            absorbed_dose_unit, 
            acceleration_unit, 
            radioactivity_unit, 
            area_unit, 
            capacitance_unit, 
            dose_equivalent_unit, 
            electric_charge_unit, 
            conductance_unit, 
            electric_potential_unit, 
            energy_unit, 
            magnetic_flux_density_unit, 
            force_unit, 
            frequency_unit, 
            illuminance_unit, 
            inductance_unit, 
            magnetic_flux_unit, 
            power_unit, 
            pressure_unit, 
            resistance_unit, 
            velocity_unit, 
            volume_unit ) );
      elements  : SET [1 : ?] OF derived_unit_element;
    DERIVE
      name  : label := get_name_value( SELF );
    WHERE
      wr1: ( ( SIZEOF( elements ) > 1 ) OR ( ( SIZEOF( elements ) = 1 ) AND ( elements[1].exponent <> 1 ) ) );
      wr2: ( SIZEOF( USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.NAME_ATTRIBUTE.NAMED_ITEM' ) ) 
               <= 1 );
  END_ENTITY; -- derived_unit (line:11924 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  ENTITY(SELF)	derived_unit
    ATTR:  elements,	TYPE: SET [1 : ?] OF derived_unit_element -- EXPLICIT

    ATTR:  name,	TYPE: label -- DERIVED
      := get_name_value( SELF )


  SUB- ENTITY(2)	si_electric_charge_unit
    (no local attributes)

  SUB- ENTITY(3)	electric_charge_unit
    (no local attributes)

  SUB- ENTITY(4)	si_magnetic_flux_density_unit
    (no local attributes)

  SUB- ENTITY(5)	magnetic_flux_density_unit
    (no local attributes)

  SUB- ENTITY(6)	si_electric_potential_unit
    (no local attributes)

  SUB- ENTITY(7)	electric_potential_unit
    (no local attributes)

  SUB- ENTITY(8)	si_magnetic_flux_unit
    (no local attributes)

  SUB- ENTITY(9)	magnetic_flux_unit
    (no local attributes)

  SUB- ENTITY(10)	si_resistance_unit
    (no local attributes)

  SUB- ENTITY(11)	resistance_unit
    (no local attributes)

  SUB- ENTITY(12)	si_capacitance_unit
    (no local attributes)

  SUB- ENTITY(13)	capacitance_unit
    (no local attributes)

  SUB- ENTITY(14)	acceleration_unit
    (no local attributes)

  SUB- ENTITY(15)	si_pressure_unit
    (no local attributes)

  SUB- ENTITY(16)	pressure_unit
    (no local attributes)

  SUB- ENTITY(17)	si_absorbed_dose_unit
    (no local attributes)

  SUB- ENTITY(18)	absorbed_dose_unit
    (no local attributes)

  SUB- ENTITY(19)	si_radioactivity_unit
    (no local attributes)

  SUB- ENTITY(20)	radioactivity_unit
    (no local attributes)

  SUB- ENTITY(21)	area_unit
    (no local attributes)

  SUB- ENTITY(22)	si_dose_equivalent_unit
    (no local attributes)

  SUB- ENTITY(23)	dose_equivalent_unit
    (no local attributes)

  SUB- ENTITY(24)	si_conductance_unit
    (no local attributes)

  SUB- ENTITY(25)	conductance_unit
    (no local attributes)

  SUB- ENTITY(26)	si_energy_unit
    (no local attributes)

  SUB- ENTITY(27)	energy_unit
    (no local attributes)

  SUB- ENTITY(28)	si_force_unit
    (no local attributes)

  SUB- ENTITY(29)	force_unit
    (no local attributes)

  SUB- ENTITY(30)	si_frequency_unit
    (no local attributes)

  SUB- ENTITY(31)	frequency_unit
    (no local attributes)

  SUB- ENTITY(32)	si_illuminance_unit
    (no local attributes)

  SUB- ENTITY(33)	illuminance_unit
    (no local attributes)

  SUB- ENTITY(34)	si_inductance_unit
    (no local attributes)

  SUB- ENTITY(35)	inductance_unit
    (no local attributes)

  SUB- ENTITY(36)	si_power_unit
    (no local attributes)

  SUB- ENTITY(37)	power_unit
    (no local attributes)

  SUB- ENTITY(38)	velocity_unit
    (no local attributes)

  SUB- ENTITY(39)	volume_unit
    (no local attributes)

  SUB- ENTITY(40)	thermal_resistance_unit
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _derived_unit : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eDERIVED_UNIT.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _elements: SDAI.SET<eDERIVED_UNIT_ELEMENT>/*[1:nil]*/  // PLAIN EXPLICIT ATTRIBUTE

    /// DERIVE ATTRIBUTE
    internal func _name__getter(SELF: eDERIVED_UNIT) -> tLABEL?  {

      let _TEMP1 = GET_NAME_VALUE(sNAME_ATTRIBUTE_SELECT(/*eDERIVED_UNIT*/SELF))
      return _TEMP1
    }

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sCLASSIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sACTION_ITEMS.typeName)) // -> sCLASSIFICATION_ITEM
      members.insert(SDAI.STRING(sCHANGE_MANAGEMENT_OBJECT.typeName)) // -> sACTION_ITEMS
      members.insert(SDAI.STRING(sIR_USAGE_ITEM.typeName)) // -> sCLASSIFICATION_ITEM
      members.insert(SDAI.STRING(sEXTERNAL_IDENTIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sATTRIBUTE_CLASSIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sSAME_AS_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sNAME_ATTRIBUTE_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sUNIT.typeName)) // -> Self
      members.insert(SDAI.STRING(sGROUPABLE_ITEM.typeName)) // -> Self
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._elements.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._elements.value.isValueEqualOptionally(to: rhs._elements.value, visited: &comppairs)	{
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
      if let comp = self._elements.value.isValueEqualOptionally(to: rhs._elements.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eDERIVED_UNIT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.SIZEOF(SELF.ELEMENTS)
      let _TEMP2 = _TEMP1 > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      let _TEMP3 = SDAI.SIZEOF(SELF.ELEMENTS)
      let _TEMP4 = _TEMP3 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      let _TEMP5 = SELF.ELEMENTS[1]
      let _TEMP6 = _TEMP5?.EXPONENT
      let _TEMP7 = _TEMP6 .!=. SDAI.FORCE_OPTIONAL(SDAI.REAL(1.0000000000e+00))
      let _TEMP8 = _TEMP4 && _TEMP7
      let _TEMP9 = _TEMP2 || _TEMP8
      return _TEMP9
    }
    public static func WHERE_wr2(SELF: eDERIVED_UNIT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.USEDIN(T: SELF, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
        .eNAME_ATTRIBUTE.NAMED_ITEM)
      let _TEMP2 = SDAI.SIZEOF(_TEMP1)
      let _TEMP3 = _TEMP2 <= SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      return _TEMP3
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(ELEMENTS: SDAI.SET<eDERIVED_UNIT_ELEMENT>/*[1:nil]*/ ) {
      self._elements = ELEMENTS
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: SDAI.SET<
        eDERIVED_UNIT_ELEMENT>.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( ELEMENTS: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY derived_unit
    SUPERTYPE OF ( 
        ONEOF ( 
            absorbed_dose_unit, 
            acceleration_unit, 
            radioactivity_unit, 
            area_unit, 
            capacitance_unit, 
            dose_equivalent_unit, 
            electric_charge_unit, 
            conductance_unit, 
            electric_potential_unit, 
            energy_unit, 
            magnetic_flux_density_unit, 
            force_unit, 
            frequency_unit, 
            illuminance_unit, 
            inductance_unit, 
            magnetic_flux_unit, 
            power_unit, 
            pressure_unit, 
            resistance_unit, 
            velocity_unit, 
            volume_unit ) );
      elements  : SET [1 : ?] OF derived_unit_element;
    DERIVE
      name  : label := get_name_value( SELF );
    WHERE
      wr1: ( ( SIZEOF( elements ) > 1 ) OR ( ( SIZEOF( elements ) = 1 ) AND ( elements[1].exponent <> 1 ) ) );
      wr2: ( SIZEOF( USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.NAME_ATTRIBUTE.NAMED_ITEM' ) ) 
               <= 1 );
  END_ENTITY; -- derived_unit (line:11924 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eDERIVED_UNIT : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _derived_unit.self
    }
    public let partialEntity: _derived_unit

    //MARK: SUPERTYPES
    public var super_eDERIVED_UNIT: eDERIVED_UNIT { return self } 	// [1]

    //MARK: SUBTYPES
    public var sub_eSI_ELECTRIC_CHARGE_UNIT: eSI_ELECTRIC_CHARGE_UNIT? {	// [2]
      return self.complexEntity.entityReference(eSI_ELECTRIC_CHARGE_UNIT.self)
    }

    public var sub_eELECTRIC_CHARGE_UNIT: eELECTRIC_CHARGE_UNIT? {	// [3]
      return self.complexEntity.entityReference(eELECTRIC_CHARGE_UNIT.self)
    }

    public var sub_eSI_MAGNETIC_FLUX_DENSITY_UNIT: eSI_MAGNETIC_FLUX_DENSITY_UNIT? {	// [4]
      return self.complexEntity.entityReference(eSI_MAGNETIC_FLUX_DENSITY_UNIT.self)
    }

    public var sub_eMAGNETIC_FLUX_DENSITY_UNIT: eMAGNETIC_FLUX_DENSITY_UNIT? {	// [5]
      return self.complexEntity.entityReference(eMAGNETIC_FLUX_DENSITY_UNIT.self)
    }

    public var sub_eSI_ELECTRIC_POTENTIAL_UNIT: eSI_ELECTRIC_POTENTIAL_UNIT? {	// [6]
      return self.complexEntity.entityReference(eSI_ELECTRIC_POTENTIAL_UNIT.self)
    }

    public var sub_eELECTRIC_POTENTIAL_UNIT: eELECTRIC_POTENTIAL_UNIT? {	// [7]
      return self.complexEntity.entityReference(eELECTRIC_POTENTIAL_UNIT.self)
    }

    public var sub_eSI_MAGNETIC_FLUX_UNIT: eSI_MAGNETIC_FLUX_UNIT? {	// [8]
      return self.complexEntity.entityReference(eSI_MAGNETIC_FLUX_UNIT.self)
    }

    public var sub_eMAGNETIC_FLUX_UNIT: eMAGNETIC_FLUX_UNIT? {	// [9]
      return self.complexEntity.entityReference(eMAGNETIC_FLUX_UNIT.self)
    }

    public var sub_eSI_RESISTANCE_UNIT: eSI_RESISTANCE_UNIT? {	// [10]
      return self.complexEntity.entityReference(eSI_RESISTANCE_UNIT.self)
    }

    public var sub_eRESISTANCE_UNIT: eRESISTANCE_UNIT? {	// [11]
      return self.complexEntity.entityReference(eRESISTANCE_UNIT.self)
    }

    public var sub_eSI_CAPACITANCE_UNIT: eSI_CAPACITANCE_UNIT? {	// [12]
      return self.complexEntity.entityReference(eSI_CAPACITANCE_UNIT.self)
    }

    public var sub_eCAPACITANCE_UNIT: eCAPACITANCE_UNIT? {	// [13]
      return self.complexEntity.entityReference(eCAPACITANCE_UNIT.self)
    }

    public var sub_eACCELERATION_UNIT: eACCELERATION_UNIT? {	// [14]
      return self.complexEntity.entityReference(eACCELERATION_UNIT.self)
    }

    public var sub_eSI_PRESSURE_UNIT: eSI_PRESSURE_UNIT? {	// [15]
      return self.complexEntity.entityReference(eSI_PRESSURE_UNIT.self)
    }

    public var sub_ePRESSURE_UNIT: ePRESSURE_UNIT? {	// [16]
      return self.complexEntity.entityReference(ePRESSURE_UNIT.self)
    }

    public var sub_eSI_ABSORBED_DOSE_UNIT: eSI_ABSORBED_DOSE_UNIT? {	// [17]
      return self.complexEntity.entityReference(eSI_ABSORBED_DOSE_UNIT.self)
    }

    public var sub_eABSORBED_DOSE_UNIT: eABSORBED_DOSE_UNIT? {	// [18]
      return self.complexEntity.entityReference(eABSORBED_DOSE_UNIT.self)
    }

    public var sub_eSI_RADIOACTIVITY_UNIT: eSI_RADIOACTIVITY_UNIT? {	// [19]
      return self.complexEntity.entityReference(eSI_RADIOACTIVITY_UNIT.self)
    }

    public var sub_eRADIOACTIVITY_UNIT: eRADIOACTIVITY_UNIT? {	// [20]
      return self.complexEntity.entityReference(eRADIOACTIVITY_UNIT.self)
    }

    public var sub_eAREA_UNIT: eAREA_UNIT? {	// [21]
      return self.complexEntity.entityReference(eAREA_UNIT.self)
    }

    public var sub_eSI_DOSE_EQUIVALENT_UNIT: eSI_DOSE_EQUIVALENT_UNIT? {	// [22]
      return self.complexEntity.entityReference(eSI_DOSE_EQUIVALENT_UNIT.self)
    }

    public var sub_eDOSE_EQUIVALENT_UNIT: eDOSE_EQUIVALENT_UNIT? {	// [23]
      return self.complexEntity.entityReference(eDOSE_EQUIVALENT_UNIT.self)
    }

    public var sub_eSI_CONDUCTANCE_UNIT: eSI_CONDUCTANCE_UNIT? {	// [24]
      return self.complexEntity.entityReference(eSI_CONDUCTANCE_UNIT.self)
    }

    public var sub_eCONDUCTANCE_UNIT: eCONDUCTANCE_UNIT? {	// [25]
      return self.complexEntity.entityReference(eCONDUCTANCE_UNIT.self)
    }

    public var sub_eSI_ENERGY_UNIT: eSI_ENERGY_UNIT? {	// [26]
      return self.complexEntity.entityReference(eSI_ENERGY_UNIT.self)
    }

    public var sub_eENERGY_UNIT: eENERGY_UNIT? {	// [27]
      return self.complexEntity.entityReference(eENERGY_UNIT.self)
    }

    public var sub_eSI_FORCE_UNIT: eSI_FORCE_UNIT? {	// [28]
      return self.complexEntity.entityReference(eSI_FORCE_UNIT.self)
    }

    public var sub_eFORCE_UNIT: eFORCE_UNIT? {	// [29]
      return self.complexEntity.entityReference(eFORCE_UNIT.self)
    }

    public var sub_eSI_FREQUENCY_UNIT: eSI_FREQUENCY_UNIT? {	// [30]
      return self.complexEntity.entityReference(eSI_FREQUENCY_UNIT.self)
    }

    public var sub_eFREQUENCY_UNIT: eFREQUENCY_UNIT? {	// [31]
      return self.complexEntity.entityReference(eFREQUENCY_UNIT.self)
    }

    public var sub_eSI_ILLUMINANCE_UNIT: eSI_ILLUMINANCE_UNIT? {	// [32]
      return self.complexEntity.entityReference(eSI_ILLUMINANCE_UNIT.self)
    }

    public var sub_eILLUMINANCE_UNIT: eILLUMINANCE_UNIT? {	// [33]
      return self.complexEntity.entityReference(eILLUMINANCE_UNIT.self)
    }

    public var sub_eSI_INDUCTANCE_UNIT: eSI_INDUCTANCE_UNIT? {	// [34]
      return self.complexEntity.entityReference(eSI_INDUCTANCE_UNIT.self)
    }

    public var sub_eINDUCTANCE_UNIT: eINDUCTANCE_UNIT? {	// [35]
      return self.complexEntity.entityReference(eINDUCTANCE_UNIT.self)
    }

    public var sub_eSI_POWER_UNIT: eSI_POWER_UNIT? {	// [36]
      return self.complexEntity.entityReference(eSI_POWER_UNIT.self)
    }

    public var sub_ePOWER_UNIT: ePOWER_UNIT? {	// [37]
      return self.complexEntity.entityReference(ePOWER_UNIT.self)
    }

    public var sub_eVELOCITY_UNIT: eVELOCITY_UNIT? {	// [38]
      return self.complexEntity.entityReference(eVELOCITY_UNIT.self)
    }

    public var sub_eVOLUME_UNIT: eVOLUME_UNIT? {	// [39]
      return self.complexEntity.entityReference(eVOLUME_UNIT.self)
    }

    public var sub_eTHERMAL_RESISTANCE_UNIT: eTHERMAL_RESISTANCE_UNIT? {	// [40]
      return self.complexEntity.entityReference(eTHERMAL_RESISTANCE_UNIT.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eDERIVED_UNIT`` )
    public var ELEMENTS: SDAI.SET<eDERIVED_UNIT_ELEMENT>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._elements )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._elements = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SELF( ``eDERIVED_UNIT`` )
    public var NAME: tLABEL?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"NAME") {
          return cached.value as! tLABEL? 
        }
        let origin = self
        let value = origin.partialEntity._name__getter(SELF: origin)
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
      guard let partial = complexEntity?.partialEntityInstance(_derived_unit.self) else { return nil }
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
    public convenience init?(_ partial:_derived_unit) {
      let complex = SDAI.ComplexEntity(entities:[partial])
      self.init(complex: complex)
    }


    //MARK: WHERE RULE VALIDATION (ENTITY)
    public override class func validateWhereRules(instance:SDAI.EntityReference?, prefix:SDAI.WhereLabel) -> [SDAI.WhereLabel:SDAI.LOGICAL] {
      guard let instance = instance as? Self else { return [:] }

      let prefix2 = prefix + " \(instance)"

      var result = super.validateWhereRules(instance:instance, prefix:prefix2)
      result[prefix2 + " .WHERE_wr1"] = _derived_unit.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _derived_unit.WHERE_wr2(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "DERIVED_UNIT", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eDERIVED_UNIT.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "ELEMENTS", keyPath: \eDERIVED_UNIT.ELEMENTS, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eDERIVED_UNIT.NAME, 
        kind: .derived, source: .thisEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}