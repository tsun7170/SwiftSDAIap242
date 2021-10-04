/* file: rational_locally_refined_spline_curve.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY rational_locally_refined_spline_curve
    SUBTYPE OF ( locally_refined_spline_curve );
      weights_data  : LIST [2 : ?] OF REAL;
    WHERE
      wr1: ( SIZEOF( weights_data ) = SIZEOF( SELF\locally_refined_spline_curve.control_points_list ) );
      wr2: weights_positive( SELF.weights_data );
  END_ENTITY; -- rational_locally_refined_spline_curve (line:26852 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(2)	geometric_representation_item
    ATTR:  dim,	TYPE: dimension_count -- DERIVED
      := dimension_of( SELF )


  SUPER- ENTITY(3)	curve
    (no local attributes)

  SUPER- ENTITY(4)	bounded_curve
    (no local attributes)

  SUPER- ENTITY(5)	locally_refined_spline_curve
    ATTR:  b_splines,	TYPE: LIST [2 : ?] OF local_b_spline -- EXPLICIT

    ATTR:  knot_values,	TYPE: spline_knot_values -- EXPLICIT

    ATTR:  control_points_list,	TYPE: LIST [2 : ?] OF cartesian_point -- EXPLICIT

    ATTR:  scaling_factors,	TYPE: LIST [2 : ?] OF REAL -- EXPLICIT

    ATTR:  closed_curve,	TYPE: LOGICAL -- EXPLICIT

    ATTR:  locally_refined_spline_type,	TYPE: locally_refined_spline_type_enum -- EXPLICIT

    ATTR:  self_intersect,	TYPE: LOGICAL -- EXPLICIT

    ATTR:  domain,	TYPE: LIST [2 : 2] OF REAL -- EXPLICIT


  ENTITY(SELF)	rational_locally_refined_spline_curve
    ATTR:  weights_data,	TYPE: LIST [2 : ?] OF REAL -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _rational_locally_refined_spline_curve : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eRATIONAL_LOCALLY_REFINED_SPLINE_CURVE.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _weights_data: SDAI.LIST<SDAI.REAL>/*[2:nil]*/  // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._weights_data.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._weights_data.value.isValueEqualOptionally(to: rhs._weights_data.value, visited: &comppairs)	{
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
      if let comp = self._weights_data.value.isValueEqualOptionally(to: rhs._weights_data.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eRATIONAL_LOCALLY_REFINED_SPLINE_CURVE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.SIZEOF(SELF.WEIGHTS_DATA)
      let _TEMP2 = SELF.GROUP_REF(eLOCALLY_REFINED_SPLINE_CURVE.self)
      let _TEMP3 = _TEMP2?.CONTROL_POINTS_LIST
      let _TEMP4 = SDAI.SIZEOF(_TEMP3)
      let _TEMP5 = _TEMP1 .==. _TEMP4
      return _TEMP5
    }
    public static func WHERE_wr2(SELF: eRATIONAL_LOCALLY_REFINED_SPLINE_CURVE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.WEIGHTS_DATA
      let _TEMP2 = WEIGHTS_POSITIVE(SDAI.LIST<SDAI.REAL>(/*SDAI.LIST<SDAI.REAL>[2:nil] */_TEMP1))
      return SDAI.LOGICAL(/*SDAI.BOOLEAN*/_TEMP2)
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(WEIGHTS_DATA: SDAI.LIST<SDAI.REAL>/*[2:nil]*/ ) {
      self._weights_data = WEIGHTS_DATA
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: SDAI.LIST<SDAI.REAL>.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( WEIGHTS_DATA: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY rational_locally_refined_spline_curve
    SUBTYPE OF ( locally_refined_spline_curve );
      weights_data  : LIST [2 : ?] OF REAL;
    WHERE
      wr1: ( SIZEOF( weights_data ) = SIZEOF( SELF\locally_refined_spline_curve.control_points_list ) );
      wr2: weights_positive( SELF.weights_data );
  END_ENTITY; -- rational_locally_refined_spline_curve (line:26852 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eRATIONAL_LOCALLY_REFINED_SPLINE_CURVE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _rational_locally_refined_spline_curve.self
    }
    public let partialEntity: _rational_locally_refined_spline_curve

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_eCURVE: eCURVE 	// [3]
    public let super_eBOUNDED_CURVE: eBOUNDED_CURVE 	// [4]
    public let super_eLOCALLY_REFINED_SPLINE_CURVE: eLOCALLY_REFINED_SPLINE_CURVE 	// [5]
    public var super_eRATIONAL_LOCALLY_REFINED_SPLINE_CURVE: eRATIONAL_LOCALLY_REFINED_SPLINE_CURVE { return self } 	// [6]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eRATIONAL_LOCALLY_REFINED_SPLINE_CURVE`` )
    public var WEIGHTS_DATA: SDAI.LIST<SDAI.REAL>/*[2:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._weights_data )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._weights_data = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eLOCALLY_REFINED_SPLINE_CURVE`` )
    public var CONTROL_POINTS_LIST: SDAI.LIST<eCARTESIAN_POINT>/*[2:nil]*/  {
      get {
        return SDAI.UNWRAP( super_eLOCALLY_REFINED_SPLINE_CURVE.partialEntity._control_points_list )
      }
      set(newValue) {
        let partial = super_eLOCALLY_REFINED_SPLINE_CURVE.partialEntity
        partial._control_points_list = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eLOCALLY_REFINED_SPLINE_CURVE`` )
    public var LOCALLY_REFINED_SPLINE_TYPE: nLOCALLY_REFINED_SPLINE_TYPE_ENUM {
      get {
        return SDAI.UNWRAP( super_eLOCALLY_REFINED_SPLINE_CURVE.partialEntity._locally_refined_spline_type )
      }
      set(newValue) {
        let partial = super_eLOCALLY_REFINED_SPLINE_CURVE.partialEntity
        partial._locally_refined_spline_type = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eLOCALLY_REFINED_SPLINE_CURVE`` )
    public var KNOT_VALUES: tSPLINE_KNOT_VALUES {
      get {
        return SDAI.UNWRAP( super_eLOCALLY_REFINED_SPLINE_CURVE.partialEntity._knot_values )
      }
      set(newValue) {
        let partial = super_eLOCALLY_REFINED_SPLINE_CURVE.partialEntity
        partial._knot_values = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eLOCALLY_REFINED_SPLINE_CURVE`` )
    public var SCALING_FACTORS: SDAI.LIST<SDAI.REAL>/*[2:nil]*/  {
      get {
        return SDAI.UNWRAP( super_eLOCALLY_REFINED_SPLINE_CURVE.partialEntity._scaling_factors )
      }
      set(newValue) {
        let partial = super_eLOCALLY_REFINED_SPLINE_CURVE.partialEntity
        partial._scaling_factors = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eLOCALLY_REFINED_SPLINE_CURVE`` )
    public var SELF_INTERSECT: SDAI.LOGICAL {
      get {
        return SDAI.UNWRAP( super_eLOCALLY_REFINED_SPLINE_CURVE.partialEntity._self_intersect )
      }
      set(newValue) {
        let partial = super_eLOCALLY_REFINED_SPLINE_CURVE.partialEntity
        partial._self_intersect = SDAI.LOGICAL(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eLOCALLY_REFINED_SPLINE_CURVE`` )
    public var B_SPLINES: SDAI.LIST<eLOCAL_B_SPLINE>/*[2:nil]*/  {
      get {
        return SDAI.UNWRAP( super_eLOCALLY_REFINED_SPLINE_CURVE.partialEntity._b_splines )
      }
      set(newValue) {
        let partial = super_eLOCALLY_REFINED_SPLINE_CURVE.partialEntity
        partial._b_splines = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eLOCALLY_REFINED_SPLINE_CURVE`` )
    public var CLOSED_CURVE: SDAI.LOGICAL {
      get {
        return SDAI.UNWRAP( super_eLOCALLY_REFINED_SPLINE_CURVE.partialEntity._closed_curve )
      }
      set(newValue) {
        let partial = super_eLOCALLY_REFINED_SPLINE_CURVE.partialEntity
        partial._closed_curve = SDAI.LOGICAL(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eLOCALLY_REFINED_SPLINE_CURVE`` )
    public var DOMAIN: SDAI.LIST<SDAI.REAL>/*[2:2]*/  {
      get {
        return SDAI.UNWRAP( super_eLOCALLY_REFINED_SPLINE_CURVE.partialEntity._domain )
      }
      set(newValue) {
        let partial = super_eLOCALLY_REFINED_SPLINE_CURVE.partialEntity
        partial._domain = SDAI.UNWRAP(newValue)
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
      guard let partial = complexEntity?.partialEntityInstance(_rational_locally_refined_spline_curve.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(eCURVE.self) else { return nil }
      self.super_eCURVE = super3

      guard let super4 = complexEntity?.entityReference(eBOUNDED_CURVE.self) else { return nil }
      self.super_eBOUNDED_CURVE = super4

      guard let super5 = complexEntity?.entityReference(eLOCALLY_REFINED_SPLINE_CURVE.self) else { return nil }
      self.super_eLOCALLY_REFINED_SPLINE_CURVE = super5

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
      result[prefix2 + " .WHERE_wr1"] = _rational_locally_refined_spline_curve.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _rational_locally_refined_spline_curve.WHERE_wr2(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "RATIONAL_LOCALLY_REFINED_SPLINE_CURVE", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eCURVE.self)
      entityDef.add(supertype: eBOUNDED_CURVE.self)
      entityDef.add(supertype: eLOCALLY_REFINED_SPLINE_CURVE.self)
      entityDef.add(supertype: eRATIONAL_LOCALLY_REFINED_SPLINE_CURVE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "WEIGHTS_DATA", keyPath: \eRATIONAL_LOCALLY_REFINED_SPLINE_CURVE.WEIGHTS_DATA, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "CONTROL_POINTS_LIST", keyPath: \eRATIONAL_LOCALLY_REFINED_SPLINE_CURVE.CONTROL_POINTS_LIST, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "LOCALLY_REFINED_SPLINE_TYPE", keyPath: \eRATIONAL_LOCALLY_REFINED_SPLINE_CURVE.LOCALLY_REFINED_SPLINE_TYPE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "KNOT_VALUES", keyPath: \eRATIONAL_LOCALLY_REFINED_SPLINE_CURVE.KNOT_VALUES, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SCALING_FACTORS", keyPath: \eRATIONAL_LOCALLY_REFINED_SPLINE_CURVE.SCALING_FACTORS, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SELF_INTERSECT", keyPath: \eRATIONAL_LOCALLY_REFINED_SPLINE_CURVE.SELF_INTERSECT, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "B_SPLINES", keyPath: \eRATIONAL_LOCALLY_REFINED_SPLINE_CURVE.B_SPLINES, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "CLOSED_CURVE", keyPath: \eRATIONAL_LOCALLY_REFINED_SPLINE_CURVE.CLOSED_CURVE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DOMAIN", keyPath: \eRATIONAL_LOCALLY_REFINED_SPLINE_CURVE.DOMAIN, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eRATIONAL_LOCALLY_REFINED_SPLINE_CURVE.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \eRATIONAL_LOCALLY_REFINED_SPLINE_CURVE.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}