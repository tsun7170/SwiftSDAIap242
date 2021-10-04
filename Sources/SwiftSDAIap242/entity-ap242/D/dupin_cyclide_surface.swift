/* file: dupin_cyclide_surface.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY dupin_cyclide_surface
    SUBTYPE OF ( elementary_surface );
      generalised_major_radius  : positive_length_measure;
      generalised_minor_radius  : positive_length_measure;
      skewness                  : length_measure;
    WHERE
      wr1: ( skewness >= 0 );
  END_ENTITY; -- dupin_cyclide_surface (line:13245 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(2)	geometric_representation_item
    ATTR:  dim,	TYPE: dimension_count -- DERIVED
      := dimension_of( SELF )


  SUPER- ENTITY(3)	surface
    (no local attributes)

  SUPER- ENTITY(4)	elementary_surface
    ATTR:  position,	TYPE: axis2_placement_3d -- EXPLICIT


  ENTITY(SELF)	dupin_cyclide_surface
    ATTR:  generalised_major_radius,	TYPE: positive_length_measure -- EXPLICIT

    ATTR:  generalised_minor_radius,	TYPE: positive_length_measure -- EXPLICIT

    ATTR:  skewness,	TYPE: length_measure -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _dupin_cyclide_surface : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eDUPIN_CYCLIDE_SURFACE.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _generalised_major_radius: tPOSITIVE_LENGTH_MEASURE // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _generalised_minor_radius: tPOSITIVE_LENGTH_MEASURE // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _skewness: tLENGTH_MEASURE // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._generalised_major_radius.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._generalised_minor_radius.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._skewness.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._generalised_major_radius.value.isValueEqualOptionally(to: rhs._generalised_major_radius.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._generalised_minor_radius.value.isValueEqualOptionally(to: rhs._generalised_minor_radius.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._skewness.value.isValueEqualOptionally(to: rhs._skewness.value, visited: &comppairs)	{
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
      if let comp = self._generalised_major_radius.value.isValueEqualOptionally(to: rhs._generalised_major_radius.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._generalised_minor_radius.value.isValueEqualOptionally(to: rhs._generalised_minor_radius.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._skewness.value.isValueEqualOptionally(to: rhs._skewness.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eDUPIN_CYCLIDE_SURFACE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.FORCE_OPTIONAL(SELF.SKEWNESS) >= SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP1
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(GENERALISED_MAJOR_RADIUS: tPOSITIVE_LENGTH_MEASURE, GENERALISED_MINOR_RADIUS: 
                tPOSITIVE_LENGTH_MEASURE, SKEWNESS: tLENGTH_MEASURE) {
      self._generalised_major_radius = GENERALISED_MAJOR_RADIUS
      self._generalised_minor_radius = GENERALISED_MINOR_RADIUS
      self._skewness = SKEWNESS
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 3
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: tPOSITIVE_LENGTH_MEASURE.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: tPOSITIVE_LENGTH_MEASURE.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p2) = exchangeStructure.recoverRequiredParameter(as: tLENGTH_MEASURE.self, from: parameters[2])
      else { exchangeStructure.add(errorContext: "while recovering parameter #2 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( GENERALISED_MAJOR_RADIUS: p0, GENERALISED_MINOR_RADIUS: p1, SKEWNESS: p2 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY dupin_cyclide_surface
    SUBTYPE OF ( elementary_surface );
      generalised_major_radius  : positive_length_measure;
      generalised_minor_radius  : positive_length_measure;
      skewness                  : length_measure;
    WHERE
      wr1: ( skewness >= 0 );
  END_ENTITY; -- dupin_cyclide_surface (line:13245 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eDUPIN_CYCLIDE_SURFACE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _dupin_cyclide_surface.self
    }
    public let partialEntity: _dupin_cyclide_surface

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_eSURFACE: eSURFACE 	// [3]
    public let super_eELEMENTARY_SURFACE: eELEMENTARY_SURFACE 	// [4]
    public var super_eDUPIN_CYCLIDE_SURFACE: eDUPIN_CYCLIDE_SURFACE { return self } 	// [5]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eDUPIN_CYCLIDE_SURFACE`` )
    public var GENERALISED_MAJOR_RADIUS: tPOSITIVE_LENGTH_MEASURE {
      get {
        return SDAI.UNWRAP( self.partialEntity._generalised_major_radius )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._generalised_major_radius = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eDUPIN_CYCLIDE_SURFACE`` )
    public var SKEWNESS: tLENGTH_MEASURE {
      get {
        return SDAI.UNWRAP( self.partialEntity._skewness )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._skewness = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eELEMENTARY_SURFACE`` )
    public var POSITION: eAXIS2_PLACEMENT_3D {
      get {
        return SDAI.UNWRAP( super_eELEMENTARY_SURFACE.partialEntity._position )
      }
      set(newValue) {
        let partial = super_eELEMENTARY_SURFACE.partialEntity
        partial._position = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eDUPIN_CYCLIDE_SURFACE`` )
    public var GENERALISED_MINOR_RADIUS: tPOSITIVE_LENGTH_MEASURE {
      get {
        return SDAI.UNWRAP( self.partialEntity._generalised_minor_radius )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._generalised_minor_radius = SDAI.UNWRAP(newValue)
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
      guard let partial = complexEntity?.partialEntityInstance(_dupin_cyclide_surface.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(eSURFACE.self) else { return nil }
      self.super_eSURFACE = super3

      guard let super4 = complexEntity?.entityReference(eELEMENTARY_SURFACE.self) else { return nil }
      self.super_eELEMENTARY_SURFACE = super4

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
      result[prefix2 + " .WHERE_wr1"] = _dupin_cyclide_surface.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "DUPIN_CYCLIDE_SURFACE", type: self, explicitAttributeCount: 3)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eSURFACE.self)
      entityDef.add(supertype: eELEMENTARY_SURFACE.self)
      entityDef.add(supertype: eDUPIN_CYCLIDE_SURFACE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "GENERALISED_MAJOR_RADIUS", keyPath: \eDUPIN_CYCLIDE_SURFACE.GENERALISED_MAJOR_RADIUS, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SKEWNESS", keyPath: \eDUPIN_CYCLIDE_SURFACE.SKEWNESS, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "POSITION", keyPath: \eDUPIN_CYCLIDE_SURFACE.POSITION, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "GENERALISED_MINOR_RADIUS", keyPath: \eDUPIN_CYCLIDE_SURFACE.GENERALISED_MINOR_RADIUS, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eDUPIN_CYCLIDE_SURFACE.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \eDUPIN_CYCLIDE_SURFACE.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}