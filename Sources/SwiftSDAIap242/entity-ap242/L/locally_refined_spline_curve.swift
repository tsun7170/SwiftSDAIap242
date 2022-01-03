/* file: locally_refined_spline_curve.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY locally_refined_spline_curve
    SUBTYPE OF ( bounded_curve );
      b_splines                    : LIST [2 : ?] OF local_b_spline;
      knot_values                  : spline_knot_values;
      control_points_list          : LIST [2 : ?] OF cartesian_point;
      scaling_factors              : LIST [2 : ?] OF REAL;
      closed_curve                 : LOGICAL;
      locally_refined_spline_type  : locally_refined_spline_type_enum;
      self_intersect               : LOGICAL;
      domain                       : LIST [2 : 2] OF REAL;
    WHERE
      wr1: ( SIZEOF( b_splines ) = SIZEOF( control_points_list ) );
      wr2: ( SIZEOF( scaling_factors ) = SIZEOF( control_points_list ) );
  END_ENTITY; -- locally_refined_spline_curve (line:19251 file:ap242ed2_mim_lf_v1.101.TY.exp)

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

  ENTITY(SELF)	locally_refined_spline_curve
    ATTR:  b_splines,	TYPE: LIST [2 : ?] OF local_b_spline -- EXPLICIT

    ATTR:  knot_values,	TYPE: spline_knot_values -- EXPLICIT

    ATTR:  control_points_list,	TYPE: LIST [2 : ?] OF cartesian_point -- EXPLICIT

    ATTR:  scaling_factors,	TYPE: LIST [2 : ?] OF REAL -- EXPLICIT

    ATTR:  closed_curve,	TYPE: LOGICAL -- EXPLICIT

    ATTR:  locally_refined_spline_type,	TYPE: locally_refined_spline_type_enum -- EXPLICIT

    ATTR:  self_intersect,	TYPE: LOGICAL -- EXPLICIT

    ATTR:  domain,	TYPE: LIST [2 : 2] OF REAL -- EXPLICIT


  SUB- ENTITY(6)	rational_locally_refined_spline_curve
    ATTR:  weights_data,	TYPE: LIST [2 : ?] OF REAL -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _locally_refined_spline_curve : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eLOCALLY_REFINED_SPLINE_CURVE.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _b_splines: SDAI.LIST<eLOCAL_B_SPLINE>/*[2:nil]*/  // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _knot_values: tSPLINE_KNOT_VALUES // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _control_points_list: SDAI.LIST<eCARTESIAN_POINT>/*[2:nil]*/  // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _scaling_factors: SDAI.LIST<SDAI.REAL>/*[2:nil]*/  // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _closed_curve: SDAI.LOGICAL // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _locally_refined_spline_type: nLOCALLY_REFINED_SPLINE_TYPE_ENUM // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _self_intersect: SDAI.LOGICAL // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _domain: SDAI.LIST<SDAI.REAL>/*[2:2]*/  // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._b_splines.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._knot_values.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._control_points_list.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._scaling_factors.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._closed_curve.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._locally_refined_spline_type.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._self_intersect.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._domain.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._b_splines.value.isValueEqualOptionally(to: rhs._b_splines.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._knot_values.value.isValueEqualOptionally(to: rhs._knot_values.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._control_points_list.value.isValueEqualOptionally(to: rhs._control_points_list.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._scaling_factors.value.isValueEqualOptionally(to: rhs._scaling_factors.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._closed_curve.value.isValueEqualOptionally(to: rhs._closed_curve.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._locally_refined_spline_type.value.isValueEqualOptionally(to: rhs._locally_refined_spline_type.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._self_intersect.value.isValueEqualOptionally(to: rhs._self_intersect.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._domain.value.isValueEqualOptionally(to: rhs._domain.value, visited: &comppairs)	{
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
      if let comp = self._b_splines.value.isValueEqualOptionally(to: rhs._b_splines.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._knot_values.value.isValueEqualOptionally(to: rhs._knot_values.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._control_points_list.value.isValueEqualOptionally(to: rhs._control_points_list.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._scaling_factors.value.isValueEqualOptionally(to: rhs._scaling_factors.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._closed_curve.value.isValueEqualOptionally(to: rhs._closed_curve.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._locally_refined_spline_type.value.isValueEqualOptionally(to: rhs._locally_refined_spline_type.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._self_intersect.value.isValueEqualOptionally(to: rhs._self_intersect.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._domain.value.isValueEqualOptionally(to: rhs._domain.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eLOCALLY_REFINED_SPLINE_CURVE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.SIZEOF(SELF.B_SPLINES)
      let _TEMP2 = SDAI.SIZEOF(SELF.CONTROL_POINTS_LIST)
      let _TEMP3 = _TEMP1 .==. _TEMP2
      return _TEMP3
    }
    public static func WHERE_wr2(SELF: eLOCALLY_REFINED_SPLINE_CURVE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.SIZEOF(SELF.SCALING_FACTORS)
      let _TEMP2 = SDAI.SIZEOF(SELF.CONTROL_POINTS_LIST)
      let _TEMP3 = _TEMP1 .==. _TEMP2
      return _TEMP3
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(B_SPLINES: SDAI.LIST<eLOCAL_B_SPLINE>/*[2:nil]*/ , KNOT_VALUES: tSPLINE_KNOT_VALUES, 
                CONTROL_POINTS_LIST: SDAI.LIST<eCARTESIAN_POINT>/*[2:nil]*/ , 
                SCALING_FACTORS: SDAI.LIST<SDAI.REAL>/*[2:nil]*/ , CLOSED_CURVE: SDAI.LOGICAL, 
                LOCALLY_REFINED_SPLINE_TYPE: nLOCALLY_REFINED_SPLINE_TYPE_ENUM, 
                SELF_INTERSECT: SDAI.LOGICAL, DOMAIN: SDAI.LIST<SDAI.REAL>/*[2:2]*/ ) {
      self._b_splines = B_SPLINES
      self._knot_values = KNOT_VALUES
      self._control_points_list = CONTROL_POINTS_LIST
      self._scaling_factors = SCALING_FACTORS
      self._closed_curve = CLOSED_CURVE
      self._locally_refined_spline_type = LOCALLY_REFINED_SPLINE_TYPE
      self._self_intersect = SELF_INTERSECT
      self._domain = DOMAIN
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 8
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: SDAI.LIST<eLOCAL_B_SPLINE>.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: tSPLINE_KNOT_VALUES.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p2) = exchangeStructure.recoverRequiredParameter(as: SDAI.LIST<eCARTESIAN_POINT>.self, from: parameters[2])
      else { exchangeStructure.add(errorContext: "while recovering parameter #2 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p3) = exchangeStructure.recoverRequiredParameter(as: SDAI.LIST<SDAI.REAL>.self, from: parameters[3])
      else { exchangeStructure.add(errorContext: "while recovering parameter #3 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p4) = exchangeStructure.recoverRequiredParameter(as: SDAI.LOGICAL.self, from: parameters[4])
      else { exchangeStructure.add(errorContext: "while recovering parameter #4 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p5) = exchangeStructure.recoverRequiredParameter(as: 
        nLOCALLY_REFINED_SPLINE_TYPE_ENUM.self, from: parameters[5])
      else { exchangeStructure.add(errorContext: "while recovering parameter #5 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p6) = exchangeStructure.recoverRequiredParameter(as: SDAI.LOGICAL.self, from: parameters[6])
      else { exchangeStructure.add(errorContext: "while recovering parameter #6 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p7) = exchangeStructure.recoverRequiredParameter(as: SDAI.LIST<SDAI.REAL>.self, from: parameters[7])
      else { exchangeStructure.add(errorContext: "while recovering parameter #7 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( B_SPLINES: p0, KNOT_VALUES: p1, CONTROL_POINTS_LIST: p2, SCALING_FACTORS: p3, CLOSED_CURVE: SDAI.LOGICAL(p4), LOCALLY_REFINED_SPLINE_TYPE: p5, SELF_INTERSECT: SDAI.LOGICAL(p6), DOMAIN: p7 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY locally_refined_spline_curve
    SUBTYPE OF ( bounded_curve );
      b_splines                    : LIST [2 : ?] OF local_b_spline;
      knot_values                  : spline_knot_values;
      control_points_list          : LIST [2 : ?] OF cartesian_point;
      scaling_factors              : LIST [2 : ?] OF REAL;
      closed_curve                 : LOGICAL;
      locally_refined_spline_type  : locally_refined_spline_type_enum;
      self_intersect               : LOGICAL;
      domain                       : LIST [2 : 2] OF REAL;
    WHERE
      wr1: ( SIZEOF( b_splines ) = SIZEOF( control_points_list ) );
      wr2: ( SIZEOF( scaling_factors ) = SIZEOF( control_points_list ) );
  END_ENTITY; -- locally_refined_spline_curve (line:19251 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eLOCALLY_REFINED_SPLINE_CURVE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _locally_refined_spline_curve.self
    }
    public let partialEntity: _locally_refined_spline_curve

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_eCURVE: eCURVE 	// [3]
    public let super_eBOUNDED_CURVE: eBOUNDED_CURVE 	// [4]
    public var super_eLOCALLY_REFINED_SPLINE_CURVE: eLOCALLY_REFINED_SPLINE_CURVE { return self } 	// [5]

    //MARK: SUBTYPES
    public var sub_eRATIONAL_LOCALLY_REFINED_SPLINE_CURVE: eRATIONAL_LOCALLY_REFINED_SPLINE_CURVE? {	// [6]
      return self.complexEntity.entityReference(eRATIONAL_LOCALLY_REFINED_SPLINE_CURVE.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eRATIONAL_LOCALLY_REFINED_SPLINE_CURVE`` )
    public var WEIGHTS_DATA: (SDAI.LIST<SDAI.REAL>/*[2:nil]*/ )?  {
      get {
        return sub_eRATIONAL_LOCALLY_REFINED_SPLINE_CURVE?.partialEntity._weights_data
      }
      set(newValue) {
        guard let partial = sub_eRATIONAL_LOCALLY_REFINED_SPLINE_CURVE?.super_eRATIONAL_LOCALLY_REFINED_SPLINE_CURVE
          .partialEntity else { return }
        partial._weights_data = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eLOCALLY_REFINED_SPLINE_CURVE`` )
    public var CONTROL_POINTS_LIST: SDAI.LIST<eCARTESIAN_POINT>/*[2:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._control_points_list )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._control_points_list = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eLOCALLY_REFINED_SPLINE_CURVE`` )
    public var LOCALLY_REFINED_SPLINE_TYPE: nLOCALLY_REFINED_SPLINE_TYPE_ENUM {
      get {
        return SDAI.UNWRAP( self.partialEntity._locally_refined_spline_type )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._locally_refined_spline_type = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eLOCALLY_REFINED_SPLINE_CURVE`` )
    public var KNOT_VALUES: tSPLINE_KNOT_VALUES {
      get {
        return SDAI.UNWRAP( self.partialEntity._knot_values )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._knot_values = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eLOCALLY_REFINED_SPLINE_CURVE`` )
    public var SCALING_FACTORS: SDAI.LIST<SDAI.REAL>/*[2:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._scaling_factors )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._scaling_factors = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eLOCALLY_REFINED_SPLINE_CURVE`` )
    public var SELF_INTERSECT: SDAI.LOGICAL {
      get {
        return SDAI.UNWRAP( self.partialEntity._self_intersect )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._self_intersect = SDAI.LOGICAL(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eLOCALLY_REFINED_SPLINE_CURVE`` )
    public var B_SPLINES: SDAI.LIST<eLOCAL_B_SPLINE>/*[2:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._b_splines )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._b_splines = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eLOCALLY_REFINED_SPLINE_CURVE`` )
    public var CLOSED_CURVE: SDAI.LOGICAL {
      get {
        return SDAI.UNWRAP( self.partialEntity._closed_curve )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._closed_curve = SDAI.LOGICAL(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eLOCALLY_REFINED_SPLINE_CURVE`` )
    public var DOMAIN: SDAI.LIST<SDAI.REAL>/*[2:2]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._domain )
      }
      set(newValue) {
        let partial = self.partialEntity
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
      guard let partial = complexEntity?.partialEntityInstance(_locally_refined_spline_curve.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(eCURVE.self) else { return nil }
      self.super_eCURVE = super3

      guard let super4 = complexEntity?.entityReference(eBOUNDED_CURVE.self) else { return nil }
      self.super_eBOUNDED_CURVE = super4

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
      result[prefix2 + " .WHERE_wr1"] = _locally_refined_spline_curve.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _locally_refined_spline_curve.WHERE_wr2(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "LOCALLY_REFINED_SPLINE_CURVE", type: self, explicitAttributeCount: 8)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eCURVE.self)
      entityDef.add(supertype: eBOUNDED_CURVE.self)
      entityDef.add(supertype: eLOCALLY_REFINED_SPLINE_CURVE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "WEIGHTS_DATA", keyPath: \eLOCALLY_REFINED_SPLINE_CURVE.WEIGHTS_DATA, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "CONTROL_POINTS_LIST", keyPath: \eLOCALLY_REFINED_SPLINE_CURVE.CONTROL_POINTS_LIST, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "LOCALLY_REFINED_SPLINE_TYPE", keyPath: \eLOCALLY_REFINED_SPLINE_CURVE.LOCALLY_REFINED_SPLINE_TYPE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "KNOT_VALUES", keyPath: \eLOCALLY_REFINED_SPLINE_CURVE.KNOT_VALUES, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SCALING_FACTORS", keyPath: \eLOCALLY_REFINED_SPLINE_CURVE.SCALING_FACTORS, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SELF_INTERSECT", keyPath: \eLOCALLY_REFINED_SPLINE_CURVE.SELF_INTERSECT, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "B_SPLINES", keyPath: \eLOCALLY_REFINED_SPLINE_CURVE.B_SPLINES, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "CLOSED_CURVE", keyPath: \eLOCALLY_REFINED_SPLINE_CURVE.CLOSED_CURVE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DOMAIN", keyPath: \eLOCALLY_REFINED_SPLINE_CURVE.DOMAIN, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eLOCALLY_REFINED_SPLINE_CURVE.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \eLOCALLY_REFINED_SPLINE_CURVE.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
