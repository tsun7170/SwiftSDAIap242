/* file: polar_point.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  ENTITY polar_point
    SUBTYPE OF ( cartesian_point );
      r      : length_measure;
      theta  : plane_angle_measure;
    DERIVE
      SELF\cartesian_point.coordinates : LIST [2 : 2] OF length_measure := [r * COS( theta ), r * SIN( theta )];
    WHERE
      wr1: ( r >= 0 );
  END_ENTITY; -- polar_point (line:25389 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(2)	geometric_representation_item
    ATTR:  dim,	TYPE: dimension_count -- DERIVED
      := dimension_of( SELF )


  SUPER- ENTITY(3)	point
    (no local attributes)

  SUPER- ENTITY(4)	cartesian_point
    ATTR:  coordinates,	TYPE: LIST [1 : 3] OF length_measure -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: spherical_point,	TYPE: LIST [3 : 3] OF length_measure	(as DERIVED)
          ENTITY: cylindrical_point,	TYPE: LIST [3 : 3] OF length_measure	(as DERIVED)
      *** ENTITY: polar_point,	TYPE: LIST [2 : 2] OF length_measure	(as DERIVED)


  ENTITY(SELF)	polar_point
    ATTR:  r,	TYPE: length_measure -- EXPLICIT

    ATTR:  theta,	TYPE: plane_angle_measure -- EXPLICIT

    REDCR: coordinates,	TYPE: LIST [2 : 2] OF length_measure -- DERIVED (DYNAMIC)
      := [r * COS( theta ), r * SIN( theta )]
      -- OVERRIDING ENTITY: cartesian_point


*/


//MARK: - Partial Entity
  public final class _polar_point : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      ePOLAR_POINT.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _r: tLENGTH_MEASURE // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _theta: tPLANE_ANGLE_MEASURE // PLAIN EXPLICIT ATTRIBUTE

    /// DERIVE ATTRIBUTE REDEFINITION(origin: eCARTESIAN_POINT)
    /// - attribute value provider protocol conformance wrapper
    internal func _coordinates__getter(complex: SDAI.ComplexEntity) -> SDAI.LIST<tLENGTH_MEASURE>/*[1:3]*/  {
      let SELF = complex.entityReference( ePOLAR_POINT.self )!
      return SDAI.UNWRAP( SDAI.LIST<tLENGTH_MEASURE>(SELF.COORDINATES) )
    }
    /// DERIVE ATTRIBUTE REDEFINITION(origin: eCARTESIAN_POINT)
    /// - gut of derived attribute logic
    internal func _coordinates__getter(SELF: ePOLAR_POINT) -> SDAI.LIST<tLENGTH_MEASURE>/*[2:2]*/  {

      let _TEMP1 = SDAI.COS(SELF.THETA)
      let _TEMP2 = SDAI.FORCE_OPTIONAL(SELF.R) * _TEMP1
      let _TEMP3 = SDAI.SIN(SELF.THETA)
      let _TEMP4 = SDAI.FORCE_OPTIONAL(SELF.R) * _TEMP3
      let _TEMP5 = SDAI.LIST<tLENGTH_MEASURE>(bound1: SDAI.UNWRAP(SDAI.INTEGER(2)), bound2: SDAI.INTEGER(2), 
        ([SDAI.AIE(tLENGTH_MEASURE(/*SDAI.REAL*/_TEMP2)), 
        SDAI.AIE(tLENGTH_MEASURE(/*SDAI.REAL*/_TEMP4))] as [SDAI.AggregationInitializerElement<
        tLENGTH_MEASURE>]))
      let value = _TEMP5
      return SDAI.UNWRAP( value )
    }

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._r.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._theta.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._r.value.isValueEqualOptionally(to: rhs._r.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._theta.value.isValueEqualOptionally(to: rhs._theta.value, visited: &comppairs)	{
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
      if let comp = self._r.value.isValueEqualOptionally(to: rhs._r.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._theta.value.isValueEqualOptionally(to: rhs._theta.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: ePOLAR_POINT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.FORCE_OPTIONAL(SELF.R) >= SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP1
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(R: tLENGTH_MEASURE, THETA: tPLANE_ANGLE_MEASURE) {
      self._r = R
      self._theta = THETA
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: tLENGTH_MEASURE.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: tPLANE_ANGLE_MEASURE.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( R: p0, THETA: p1 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY polar_point
    SUBTYPE OF ( cartesian_point );
      r      : length_measure;
      theta  : plane_angle_measure;
    DERIVE
      SELF\cartesian_point.coordinates : LIST [2 : 2] OF length_measure := [r * COS( theta ), r * SIN( theta )];
    WHERE
      wr1: ( r >= 0 );
  END_ENTITY; -- polar_point (line:25389 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class ePOLAR_POINT : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _polar_point.self
    }
    public let partialEntity: _polar_point

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_ePOINT: ePOINT 	// [3]
    public let super_eCARTESIAN_POINT: eCARTESIAN_POINT 	// [4]
    public var super_ePOLAR_POINT: ePOLAR_POINT { return self } 	// [5]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``ePOLAR_POINT`` )
    public var R: tLENGTH_MEASURE {
      get {
        return SDAI.UNWRAP( self.partialEntity._r )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._r = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT REDEF(DERIVE)__ attribute
    /// - origin: SELF( ``ePOLAR_POINT`` )
    public var COORDINATES: SDAI.LIST<tLENGTH_MEASURE>/*[2:2]*/  {
      get {
        if let cached = cachedValue(derivedAttributeName:"COORDINATES") {
          return cached.value as! SDAI.LIST<tLENGTH_MEASURE>/*[2:2]*/ 
        }
        let origin = self
        let value = SDAI.UNWRAP( origin.partialEntity._coordinates__getter(SELF: origin) )
        updateCache(derivedAttributeName:"COORDINATES", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``ePOLAR_POINT`` )
    public var THETA: tPLANE_ANGLE_MEASURE {
      get {
        return SDAI.UNWRAP( self.partialEntity._theta )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._theta = SDAI.UNWRAP(newValue)
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
      guard let partial = complexEntity?.partialEntityInstance(_polar_point.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(ePOINT.self) else { return nil }
      self.super_ePOINT = super3

      guard let super4 = complexEntity?.entityReference(eCARTESIAN_POINT.self) else { return nil }
      self.super_eCARTESIAN_POINT = super4

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
      result[prefix2 + " .WHERE_wr1"] = _polar_point.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "POLAR_POINT", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: ePOINT.self)
      entityDef.add(supertype: eCARTESIAN_POINT.self)
      entityDef.add(supertype: ePOLAR_POINT.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "R", keyPath: \ePOLAR_POINT.R, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "COORDINATES", keyPath: \ePOLAR_POINT.COORDINATES, 
        kind: .derivedRedeclaring, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "THETA", keyPath: \ePOLAR_POINT.THETA, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \ePOLAR_POINT.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \ePOLAR_POINT.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}

//MARK: - partial Entity Dynamic Attribute Protocol Conformances
extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF._polar_point :
  eCARTESIAN_POINT__COORDINATES__provider {}
