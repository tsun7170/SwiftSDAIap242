/* file: axis1_placement.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY axis1_placement
    SUBTYPE OF ( placement );
      axis  : OPTIONAL direction;
    DERIVE
      z  : direction := NVL( normalise( axis ), dummy_gri || direction( [0, 0, 1] ) );
    WHERE
      wr1: ( SELF\geometric_representation_item.dim = 3 );
  END_ENTITY; -- axis1_placement (line:7640 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(2)	geometric_representation_item
    ATTR:  dim,	TYPE: dimension_count -- DERIVED
      := dimension_of( SELF )


  SUPER- ENTITY(3)	placement
    ATTR:  location,	TYPE: cartesian_point -- EXPLICIT


  ENTITY(SELF)	axis1_placement
    ATTR:  axis,	TYPE: OPTIONAL direction -- EXPLICIT

    ATTR:  z,	TYPE: direction -- DERIVED
      := NVL( normalise( axis ), dummy_gri || direction( [0, 0, 1] ) )


*/


//MARK: - Partial Entity
  public final class _axis1_placement : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eAXIS1_PLACEMENT.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _axis: eDIRECTION?  // PLAIN EXPLICIT ATTRIBUTE

    /// DERIVE ATTRIBUTE
    internal func _z__getter(SELF: eAXIS1_PLACEMENT) -> eDIRECTION?  {

      let _TEMP1 = NORMALISE(sVECTOR_OR_DIRECTION(/*eDIRECTION*/SELF.AXIS))
      let _TEMP2 = SDAI.LIST<SDAI.REAL>(bound1: SDAI.UNWRAP(SDAI.INTEGER(2)), bound2: SDAI.INTEGER(3), 
        ([SDAI.AIE(SDAI.REAL(0)), SDAI.AIE(SDAI.REAL(0)), 
        SDAI.AIE(SDAI.REAL(1.0000000000e+00))] as [SDAI.AggregationInitializerElement<SDAI.REAL>]))
      let _TEMP3 = _direction(DIRECTION_RATIOS: SDAI.UNWRAP(_TEMP2))
      let _TEMP4 = DUMMY_GRI .||. _TEMP3
      let _TEMP5 = SDAI.NVL(V: _TEMP1, 
                            SUBSTITUTE: _TEMP4)
      return eDIRECTION(/*sVECTOR_OR_DIRECTION*/_TEMP5)
    }

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._axis?.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._axis?.value.isValueEqualOptionally(to: rhs._axis?.value, visited: &comppairs)	{
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
      if let comp = self._axis?.value.isValueEqualOptionally(to: rhs._axis?.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eAXIS1_PLACEMENT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.GROUP_REF(eGEOMETRIC_REPRESENTATION_ITEM.self)
      let _TEMP2 = _TEMP1?.DIM
      let _TEMP3 = _TEMP2 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(3))
      return _TEMP3
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(AXIS: eDIRECTION? ) {
      self._axis = AXIS
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverOptionalParameter(as: eDIRECTION.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( AXIS: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY axis1_placement
    SUBTYPE OF ( placement );
      axis  : OPTIONAL direction;
    DERIVE
      z  : direction := NVL( normalise( axis ), dummy_gri || direction( [0, 0, 1] ) );
    WHERE
      wr1: ( SELF\geometric_representation_item.dim = 3 );
  END_ENTITY; -- axis1_placement (line:7640 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eAXIS1_PLACEMENT : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _axis1_placement.self
    }
    public let partialEntity: _axis1_placement

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_ePLACEMENT: ePLACEMENT 	// [3]
    public var super_eAXIS1_PLACEMENT: eAXIS1_PLACEMENT { return self } 	// [4]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __DERIVE__ attribute
    /// - origin: SELF( ``eAXIS1_PLACEMENT`` )
    public var Z: eDIRECTION?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"Z") {
          return cached.value as! eDIRECTION? 
        }
        let origin = self
        let value = origin.partialEntity._z__getter(SELF: origin)
        updateCache(derivedAttributeName:"Z", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eAXIS1_PLACEMENT`` )
    public var AXIS: eDIRECTION?  {
      get {
        return self.partialEntity._axis
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._axis = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``ePLACEMENT`` )
    public var LOCATION: eCARTESIAN_POINT {
      get {
        return SDAI.UNWRAP( super_ePLACEMENT.partialEntity._location )
      }
      set(newValue) {
        let partial = super_ePLACEMENT.partialEntity
        partial._location = SDAI.UNWRAP(newValue)
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
      guard let partial = complexEntity?.partialEntityInstance(_axis1_placement.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(ePLACEMENT.self) else { return nil }
      self.super_ePLACEMENT = super3

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
      result[prefix2 + " .WHERE_wr1"] = _axis1_placement.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "AXIS1_PLACEMENT", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: ePLACEMENT.self)
      entityDef.add(supertype: eAXIS1_PLACEMENT.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "Z", keyPath: \eAXIS1_PLACEMENT.Z, 
        kind: .derived, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "AXIS", keyPath: \eAXIS1_PLACEMENT.AXIS, 
        kind: .explicitOptional, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "LOCATION", keyPath: \eAXIS1_PLACEMENT.LOCATION, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eAXIS1_PLACEMENT.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \eAXIS1_PLACEMENT.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
