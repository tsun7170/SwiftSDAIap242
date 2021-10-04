/* file: projected_zone_definition.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY projected_zone_definition
    SUBTYPE OF ( tolerance_zone_definition );
      projection_end    : shape_aspect;
      projected_length  : length_measure_with_unit;
    WHERE
      wr1: ( ( 'NUMBER' IN TYPEOF( projected_length\measure_with_unit.value_component ) ) AND ( 
               projected_length\measure_with_unit.value_component > 0 ) );
      wr2: ( derive_dimensional_exponents( projected_length\measure_with_unit.unit_component ) = 
               dimensional_exponents( 1, 0, 0, 0, 0, 0, 0 ) );
  END_ENTITY; -- projected_zone_definition (line:26552 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	tolerance_zone_definition
    ATTR:  zone,	TYPE: tolerance_zone -- EXPLICIT

    ATTR:  boundaries,	TYPE: SET [0 : ?] OF shape_aspect -- EXPLICIT


  ENTITY(SELF)	projected_zone_definition
    ATTR:  projection_end,	TYPE: shape_aspect -- EXPLICIT

    ATTR:  projected_length,	TYPE: length_measure_with_unit -- EXPLICIT


  SUB- ENTITY(3)	projected_zone_definition_with_offset
    ATTR:  offset,	TYPE: length_measure_with_unit -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _projected_zone_definition : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      ePROJECTED_ZONE_DEFINITION.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _projection_end: eSHAPE_ASPECT // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _projected_length: eLENGTH_MEASURE_WITH_UNIT // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._projection_end.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._projected_length.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._projection_end.value.isValueEqualOptionally(to: rhs._projection_end.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._projected_length.value.isValueEqualOptionally(to: rhs._projected_length.value, visited: &comppairs)	{
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
      if let comp = self._projection_end.value.isValueEqualOptionally(to: rhs._projection_end.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._projected_length.value.isValueEqualOptionally(to: rhs._projected_length.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: ePROJECTED_ZONE_DEFINITION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF.PROJECTED_LENGTH.GROUP_REF(eMEASURE_WITH_UNIT.self)?.VALUE_COMPONENT, 
        IS: SDAI.NUMBER.self)
      let _TEMP2 = SELF.PROJECTED_LENGTH.GROUP_REF(eMEASURE_WITH_UNIT.self)
      let _TEMP3 = _TEMP2?.VALUE_COMPONENT
      let _TEMP4 = _TEMP3 > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      let _TEMP5 = _TEMP1 && _TEMP4
      return _TEMP5
    }
    public static func WHERE_wr2(SELF: ePROJECTED_ZONE_DEFINITION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.PROJECTED_LENGTH.GROUP_REF(eMEASURE_WITH_UNIT.self)
      let _TEMP2 = _TEMP1?.UNIT_COMPONENT
      let _TEMP3 = DERIVE_DIMENSIONAL_EXPONENTS(_TEMP2)
      let _TEMP4 = _dimensional_exponents(
        LENGTH_EXPONENT: SDAI.UNWRAP(SDAI.REAL(1)), 
        MASS_EXPONENT: SDAI.UNWRAP(SDAI.REAL(0)), 
        TIME_EXPONENT: SDAI.UNWRAP(SDAI.REAL(0)), 
        ELECTRIC_CURRENT_EXPONENT: SDAI.UNWRAP(SDAI.REAL(0)), 
        THERMODYNAMIC_TEMPERATURE_EXPONENT: SDAI.UNWRAP(SDAI.REAL(0)), 
        AMOUNT_OF_SUBSTANCE_EXPONENT: SDAI.UNWRAP(SDAI.REAL(0)), 
        LUMINOUS_INTENSITY_EXPONENT: SDAI.UNWRAP(SDAI.REAL(0)))
      let _TEMP5 = _TEMP3 .==. SDAI.FORCE_OPTIONAL(eDIMENSIONAL_EXPONENTS(/*partial entity*/_TEMP4))
      return _TEMP5
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(PROJECTION_END: eSHAPE_ASPECT, PROJECTED_LENGTH: eLENGTH_MEASURE_WITH_UNIT) {
      self._projection_end = PROJECTION_END
      self._projected_length = PROJECTED_LENGTH
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: eSHAPE_ASPECT.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: eLENGTH_MEASURE_WITH_UNIT.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( PROJECTION_END: p0, PROJECTED_LENGTH: p1 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY projected_zone_definition
    SUBTYPE OF ( tolerance_zone_definition );
      projection_end    : shape_aspect;
      projected_length  : length_measure_with_unit;
    WHERE
      wr1: ( ( 'NUMBER' IN TYPEOF( projected_length\measure_with_unit.value_component ) ) AND ( 
               projected_length\measure_with_unit.value_component > 0 ) );
      wr2: ( derive_dimensional_exponents( projected_length\measure_with_unit.unit_component ) = 
               dimensional_exponents( 1, 0, 0, 0, 0, 0, 0 ) );
  END_ENTITY; -- projected_zone_definition (line:26552 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class ePROJECTED_ZONE_DEFINITION : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _projected_zone_definition.self
    }
    public let partialEntity: _projected_zone_definition

    //MARK: SUPERTYPES
    public let super_eTOLERANCE_ZONE_DEFINITION: eTOLERANCE_ZONE_DEFINITION 	// [1]
    public var super_ePROJECTED_ZONE_DEFINITION: ePROJECTED_ZONE_DEFINITION { return self } 	// [2]

    //MARK: SUBTYPES
    public var sub_ePROJECTED_ZONE_DEFINITION_WITH_OFFSET: ePROJECTED_ZONE_DEFINITION_WITH_OFFSET? {	// [3]
      return self.complexEntity.entityReference(ePROJECTED_ZONE_DEFINITION_WITH_OFFSET.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``ePROJECTED_ZONE_DEFINITION`` )
    public var PROJECTION_END: eSHAPE_ASPECT {
      get {
        return SDAI.UNWRAP( self.partialEntity._projection_end )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._projection_end = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eTOLERANCE_ZONE_DEFINITION`` )
    public var ZONE: eTOLERANCE_ZONE {
      get {
        return SDAI.UNWRAP( super_eTOLERANCE_ZONE_DEFINITION.partialEntity._zone )
      }
      set(newValue) {
        let partial = super_eTOLERANCE_ZONE_DEFINITION.partialEntity
        partial._zone = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eTOLERANCE_ZONE_DEFINITION`` )
    public var BOUNDARIES: SDAI.SET<eSHAPE_ASPECT>/*[0:nil]*/  {
      get {
        return SDAI.UNWRAP( super_eTOLERANCE_ZONE_DEFINITION.partialEntity._boundaries )
      }
      set(newValue) {
        let partial = super_eTOLERANCE_ZONE_DEFINITION.partialEntity
        partial._boundaries = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``ePROJECTED_ZONE_DEFINITION`` )
    public var PROJECTED_LENGTH: eLENGTH_MEASURE_WITH_UNIT {
      get {
        return SDAI.UNWRAP( self.partialEntity._projected_length )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._projected_length = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``ePROJECTED_ZONE_DEFINITION_WITH_OFFSET`` )
    public var OFFSET: eLENGTH_MEASURE_WITH_UNIT?  {
      get {
        return sub_ePROJECTED_ZONE_DEFINITION_WITH_OFFSET?.partialEntity._offset
      }
      set(newValue) {
        guard let partial = sub_ePROJECTED_ZONE_DEFINITION_WITH_OFFSET?.super_ePROJECTED_ZONE_DEFINITION_WITH_OFFSET
          .partialEntity else { return }
        partial._offset = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_projected_zone_definition.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eTOLERANCE_ZONE_DEFINITION.self) else { return nil }
      self.super_eTOLERANCE_ZONE_DEFINITION = super1

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
      result[prefix2 + " .WHERE_wr1"] = _projected_zone_definition.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _projected_zone_definition.WHERE_wr2(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "PROJECTED_ZONE_DEFINITION", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eTOLERANCE_ZONE_DEFINITION.self)
      entityDef.add(supertype: ePROJECTED_ZONE_DEFINITION.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "PROJECTION_END", keyPath: \ePROJECTED_ZONE_DEFINITION.PROJECTION_END, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ZONE", keyPath: \ePROJECTED_ZONE_DEFINITION.ZONE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "BOUNDARIES", keyPath: \ePROJECTED_ZONE_DEFINITION.BOUNDARIES, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "PROJECTED_LENGTH", keyPath: \ePROJECTED_ZONE_DEFINITION.PROJECTED_LENGTH, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "OFFSET", keyPath: \ePROJECTED_ZONE_DEFINITION.OFFSET, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}