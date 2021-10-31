/* file: tetrahedron_volume.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  ENTITY tetrahedron_volume
    SUBTYPE OF ( volume );
      point_1  : cartesian_point;
      point_2  : cartesian_point;
      point_3  : cartesian_point;
      point_4  : cartesian_point;
    WHERE
      wr1: ( point_1.dim = 3 );
      wr2: ( above_plane( point_1, point_2, point_3, point_4 ) <> 0 );
  END_ENTITY; -- tetrahedron_volume (line:32119 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(2)	geometric_representation_item
    ATTR:  dim,	TYPE: dimension_count -- DERIVED
      := dimension_of( SELF )


  SUPER- ENTITY(3)	volume
    (no local attributes)

  ENTITY(SELF)	tetrahedron_volume
    ATTR:  point_1,	TYPE: cartesian_point -- EXPLICIT

    ATTR:  point_2,	TYPE: cartesian_point -- EXPLICIT

    ATTR:  point_3,	TYPE: cartesian_point -- EXPLICIT

    ATTR:  point_4,	TYPE: cartesian_point -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _tetrahedron_volume : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eTETRAHEDRON_VOLUME.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _point_1: eCARTESIAN_POINT // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _point_2: eCARTESIAN_POINT // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _point_3: eCARTESIAN_POINT // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _point_4: eCARTESIAN_POINT // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._point_1.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._point_2.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._point_3.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._point_4.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._point_1.value.isValueEqualOptionally(to: rhs._point_1.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._point_2.value.isValueEqualOptionally(to: rhs._point_2.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._point_3.value.isValueEqualOptionally(to: rhs._point_3.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._point_4.value.isValueEqualOptionally(to: rhs._point_4.value, visited: &comppairs)	{
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
      if let comp = self._point_1.value.isValueEqualOptionally(to: rhs._point_1.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._point_2.value.isValueEqualOptionally(to: rhs._point_2.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._point_3.value.isValueEqualOptionally(to: rhs._point_3.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._point_4.value.isValueEqualOptionally(to: rhs._point_4.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eTETRAHEDRON_VOLUME?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.POINT_1.DIM
      let _TEMP2 = _TEMP1 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(3))
      return _TEMP2
    }
    public static func WHERE_wr2(SELF: eTETRAHEDRON_VOLUME?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = ABOVE_PLANE(P1: SELF.POINT_1, 
                               P2: SELF.POINT_2, 
                               P3: SELF.POINT_3, 
                               P4: SELF.POINT_4)
      let _TEMP2 = _TEMP1 .!=. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP2
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(POINT_1: eCARTESIAN_POINT, POINT_2: eCARTESIAN_POINT, POINT_3: eCARTESIAN_POINT, 
                POINT_4: eCARTESIAN_POINT) {
      self._point_1 = POINT_1
      self._point_2 = POINT_2
      self._point_3 = POINT_3
      self._point_4 = POINT_4
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 4
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: eCARTESIAN_POINT.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: eCARTESIAN_POINT.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p2) = exchangeStructure.recoverRequiredParameter(as: eCARTESIAN_POINT.self, from: parameters[2])
      else { exchangeStructure.add(errorContext: "while recovering parameter #2 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p3) = exchangeStructure.recoverRequiredParameter(as: eCARTESIAN_POINT.self, from: parameters[3])
      else { exchangeStructure.add(errorContext: "while recovering parameter #3 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( POINT_1: p0, POINT_2: p1, POINT_3: p2, POINT_4: p3 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY tetrahedron_volume
    SUBTYPE OF ( volume );
      point_1  : cartesian_point;
      point_2  : cartesian_point;
      point_3  : cartesian_point;
      point_4  : cartesian_point;
    WHERE
      wr1: ( point_1.dim = 3 );
      wr2: ( above_plane( point_1, point_2, point_3, point_4 ) <> 0 );
  END_ENTITY; -- tetrahedron_volume (line:32119 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eTETRAHEDRON_VOLUME : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _tetrahedron_volume.self
    }
    public let partialEntity: _tetrahedron_volume

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_eVOLUME: eVOLUME 	// [3]
    public var super_eTETRAHEDRON_VOLUME: eTETRAHEDRON_VOLUME { return self } 	// [4]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eTETRAHEDRON_VOLUME`` )
    public var POINT_3: eCARTESIAN_POINT {
      get {
        return SDAI.UNWRAP( self.partialEntity._point_3 )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._point_3 = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eTETRAHEDRON_VOLUME`` )
    public var POINT_2: eCARTESIAN_POINT {
      get {
        return SDAI.UNWRAP( self.partialEntity._point_2 )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._point_2 = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eTETRAHEDRON_VOLUME`` )
    public var POINT_1: eCARTESIAN_POINT {
      get {
        return SDAI.UNWRAP( self.partialEntity._point_1 )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._point_1 = SDAI.UNWRAP(newValue)
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

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eTETRAHEDRON_VOLUME`` )
    public var POINT_4: eCARTESIAN_POINT {
      get {
        return SDAI.UNWRAP( self.partialEntity._point_4 )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._point_4 = SDAI.UNWRAP(newValue)
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
      guard let partial = complexEntity?.partialEntityInstance(_tetrahedron_volume.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(eVOLUME.self) else { return nil }
      self.super_eVOLUME = super3

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
      result[prefix2 + " .WHERE_wr1"] = _tetrahedron_volume.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _tetrahedron_volume.WHERE_wr2(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "TETRAHEDRON_VOLUME", type: self, explicitAttributeCount: 4)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eVOLUME.self)
      entityDef.add(supertype: eTETRAHEDRON_VOLUME.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "POINT_3", keyPath: \eTETRAHEDRON_VOLUME.POINT_3, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "POINT_2", keyPath: \eTETRAHEDRON_VOLUME.POINT_2, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "POINT_1", keyPath: \eTETRAHEDRON_VOLUME.POINT_1, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eTETRAHEDRON_VOLUME.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "POINT_4", keyPath: \eTETRAHEDRON_VOLUME.POINT_4, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DIM", keyPath: \eTETRAHEDRON_VOLUME.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
