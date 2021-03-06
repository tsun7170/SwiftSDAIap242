/* file: light_source_spot.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY light_source_spot
    SUBTYPE OF ( light_source );
      position                : cartesian_point;
      orientation             : direction;
      concentration_exponent  : REAL;
      constant_attenuation    : REAL;
      distance_attenuation    : REAL;
      spread_angle            : positive_plane_angle_measure;
  END_ENTITY; -- light_source_spot (line:18972 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(2)	geometric_representation_item
    ATTR:  dim,	TYPE: dimension_count -- DERIVED
      := dimension_of( SELF )


  SUPER- ENTITY(3)	light_source
    ATTR:  light_colour,	TYPE: colour -- EXPLICIT


  ENTITY(SELF)	light_source_spot
    ATTR:  position,	TYPE: cartesian_point -- EXPLICIT

    ATTR:  orientation,	TYPE: direction -- EXPLICIT

    ATTR:  concentration_exponent,	TYPE: REAL -- EXPLICIT

    ATTR:  constant_attenuation,	TYPE: REAL -- EXPLICIT

    ATTR:  distance_attenuation,	TYPE: REAL -- EXPLICIT

    ATTR:  spread_angle,	TYPE: positive_plane_angle_measure -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _light_source_spot : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eLIGHT_SOURCE_SPOT.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _position: eCARTESIAN_POINT // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _orientation: eDIRECTION // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _concentration_exponent: SDAI.REAL // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _constant_attenuation: SDAI.REAL // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _distance_attenuation: SDAI.REAL // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _spread_angle: tPOSITIVE_PLANE_ANGLE_MEASURE // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._position.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._orientation.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._concentration_exponent.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._constant_attenuation.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._distance_attenuation.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._spread_angle.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._position.value.isValueEqualOptionally(to: rhs._position.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._orientation.value.isValueEqualOptionally(to: rhs._orientation.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._concentration_exponent.value.isValueEqualOptionally(to: rhs._concentration_exponent.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._constant_attenuation.value.isValueEqualOptionally(to: rhs._constant_attenuation.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._distance_attenuation.value.isValueEqualOptionally(to: rhs._distance_attenuation.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._spread_angle.value.isValueEqualOptionally(to: rhs._spread_angle.value, visited: &comppairs)	{
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
      if let comp = self._position.value.isValueEqualOptionally(to: rhs._position.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._orientation.value.isValueEqualOptionally(to: rhs._orientation.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._concentration_exponent.value.isValueEqualOptionally(to: rhs._concentration_exponent.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._constant_attenuation.value.isValueEqualOptionally(to: rhs._constant_attenuation.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._distance_attenuation.value.isValueEqualOptionally(to: rhs._distance_attenuation.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._spread_angle.value.isValueEqualOptionally(to: rhs._spread_angle.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(POSITION: eCARTESIAN_POINT, ORIENTATION: eDIRECTION, CONCENTRATION_EXPONENT: SDAI.REAL, 
                CONSTANT_ATTENUATION: SDAI.REAL, DISTANCE_ATTENUATION: SDAI.REAL, 
                SPREAD_ANGLE: tPOSITIVE_PLANE_ANGLE_MEASURE) {
      self._position = POSITION
      self._orientation = ORIENTATION
      self._concentration_exponent = CONCENTRATION_EXPONENT
      self._constant_attenuation = CONSTANT_ATTENUATION
      self._distance_attenuation = DISTANCE_ATTENUATION
      self._spread_angle = SPREAD_ANGLE
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 6
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: eCARTESIAN_POINT.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: eDIRECTION.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p2) = exchangeStructure.recoverRequiredParameter(as: SDAI.REAL.self, from: parameters[2])
      else { exchangeStructure.add(errorContext: "while recovering parameter #2 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p3) = exchangeStructure.recoverRequiredParameter(as: SDAI.REAL.self, from: parameters[3])
      else { exchangeStructure.add(errorContext: "while recovering parameter #3 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p4) = exchangeStructure.recoverRequiredParameter(as: SDAI.REAL.self, from: parameters[4])
      else { exchangeStructure.add(errorContext: "while recovering parameter #4 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p5) = exchangeStructure.recoverRequiredParameter(as: 
        tPOSITIVE_PLANE_ANGLE_MEASURE.self, from: parameters[5])
      else { exchangeStructure.add(errorContext: "while recovering parameter #5 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( POSITION: p0, ORIENTATION: p1, CONCENTRATION_EXPONENT: p2, CONSTANT_ATTENUATION: p3, DISTANCE_ATTENUATION: p4, SPREAD_ANGLE: p5 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY light_source_spot
    SUBTYPE OF ( light_source );
      position                : cartesian_point;
      orientation             : direction;
      concentration_exponent  : REAL;
      constant_attenuation    : REAL;
      distance_attenuation    : REAL;
      spread_angle            : positive_plane_angle_measure;
  END_ENTITY; -- light_source_spot (line:18972 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eLIGHT_SOURCE_SPOT : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _light_source_spot.self
    }
    public let partialEntity: _light_source_spot

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_eLIGHT_SOURCE: eLIGHT_SOURCE 	// [3]
    public var super_eLIGHT_SOURCE_SPOT: eLIGHT_SOURCE_SPOT { return self } 	// [4]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eLIGHT_SOURCE_SPOT`` )
    public var CONSTANT_ATTENUATION: SDAI.REAL {
      get {
        return SDAI.UNWRAP( self.partialEntity._constant_attenuation )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._constant_attenuation = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eLIGHT_SOURCE_SPOT`` )
    public var CONCENTRATION_EXPONENT: SDAI.REAL {
      get {
        return SDAI.UNWRAP( self.partialEntity._concentration_exponent )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._concentration_exponent = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eLIGHT_SOURCE_SPOT`` )
    public var ORIENTATION: eDIRECTION {
      get {
        return SDAI.UNWRAP( self.partialEntity._orientation )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._orientation = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eLIGHT_SOURCE_SPOT`` )
    public var DISTANCE_ATTENUATION: SDAI.REAL {
      get {
        return SDAI.UNWRAP( self.partialEntity._distance_attenuation )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._distance_attenuation = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eLIGHT_SOURCE_SPOT`` )
    public var POSITION: eCARTESIAN_POINT {
      get {
        return SDAI.UNWRAP( self.partialEntity._position )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._position = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eLIGHT_SOURCE_SPOT`` )
    public var SPREAD_ANGLE: tPOSITIVE_PLANE_ANGLE_MEASURE {
      get {
        return SDAI.UNWRAP( self.partialEntity._spread_angle )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._spread_angle = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eLIGHT_SOURCE`` )
    public var LIGHT_COLOUR: eCOLOUR {
      get {
        return SDAI.UNWRAP( super_eLIGHT_SOURCE.partialEntity._light_colour )
      }
      set(newValue) {
        let partial = super_eLIGHT_SOURCE.partialEntity
        partial._light_colour = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eREPRESENTATION_ITEM`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( super_eREPRESENTATION_ITEM.partialEntity._name )
      }
      set(newValue) {
        let partial = super_eREPRESENTATION_ITEM.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eGEOMETRIC_REPRESENTATION_ITEM`` )
    public var DIM: tDIMENSION_COUNT?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"DIM") {
          return cached.value as! tDIMENSION_COUNT? 
        }
        let origin = super_eGEOMETRIC_REPRESENTATION_ITEM
        let value = tDIMENSION_COUNT(origin.partialEntity._dim__getter(SELF: origin))
        updateCache(derivedAttributeName:"DIM", value:value)
        return value
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_light_source_spot.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(eLIGHT_SOURCE.self) else { return nil }
      self.super_eLIGHT_SOURCE = super3

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "LIGHT_SOURCE_SPOT", type: self, explicitAttributeCount: 6)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eLIGHT_SOURCE.self)
      entityDef.add(supertype: eLIGHT_SOURCE_SPOT.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "CONSTANT_ATTENUATION", keyPath: \eLIGHT_SOURCE_SPOT.CONSTANT_ATTENUATION, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "CONCENTRATION_EXPONENT", keyPath: \eLIGHT_SOURCE_SPOT.CONCENTRATION_EXPONENT, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ORIENTATION", keyPath: \eLIGHT_SOURCE_SPOT.ORIENTATION, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DISTANCE_ATTENUATION", keyPath: \eLIGHT_SOURCE_SPOT.DISTANCE_ATTENUATION, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "POSITION", keyPath: \eLIGHT_SOURCE_SPOT.POSITION, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "SPREAD_ANGLE", keyPath: \eLIGHT_SOURCE_SPOT.SPREAD_ANGLE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "LIGHT_COLOUR", keyPath: \eLIGHT_SOURCE_SPOT.LIGHT_COLOUR, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eLIGHT_SOURCE_SPOT.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \eLIGHT_SOURCE_SPOT.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
