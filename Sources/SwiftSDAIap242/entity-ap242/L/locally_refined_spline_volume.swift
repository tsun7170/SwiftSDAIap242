/* file: locally_refined_spline_volume.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY locally_refined_spline_volume
    SUBTYPE OF ( volume );
      u_b_splines                  : LIST [8 : ?] OF local_b_spline;
      v_b_splines                  : LIST [8 : ?] OF local_b_spline;
      w_b_splines                  : LIST [8 : ?] OF local_b_spline;
      u_knots                      : spline_knot_values;
      v_knots                      : spline_knot_values;
      w_knots                      : spline_knot_values;
      control_points_list          : LIST [8 : ?] OF cartesian_point;
      scaling_factors              : LIST [8 : ?] OF REAL;
      linearly_independent         : linearly_independent_enum;
      locally_refined_spline_type  : locally_refined_spline_type_enum;
      domain                       : LIST [3 : 3] OF LIST [2 : 2] OF REAL;
    WHERE
      wr1: ( SIZEOF( u_b_splines ) = SIZEOF( control_points_list ) );
      wr2: ( SIZEOF( v_b_splines ) = SIZEOF( control_points_list ) );
      wr3: ( SIZEOF( w_b_splines ) = SIZEOF( control_points_list ) );
      wr4: ( SIZEOF( scaling_factors ) = SIZEOF( control_points_list ) );
      wr5: constraints_scaling( SELF.scaling_factors );
  END_ENTITY; -- locally_refined_spline_volume (line:19287 file:ap242ed2_mim_lf_v1.101.TY.exp)

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

  ENTITY(SELF)	locally_refined_spline_volume
    ATTR:  u_b_splines,	TYPE: LIST [8 : ?] OF local_b_spline -- EXPLICIT

    ATTR:  v_b_splines,	TYPE: LIST [8 : ?] OF local_b_spline -- EXPLICIT

    ATTR:  w_b_splines,	TYPE: LIST [8 : ?] OF local_b_spline -- EXPLICIT

    ATTR:  u_knots,	TYPE: spline_knot_values -- EXPLICIT

    ATTR:  v_knots,	TYPE: spline_knot_values -- EXPLICIT

    ATTR:  w_knots,	TYPE: spline_knot_values -- EXPLICIT

    ATTR:  control_points_list,	TYPE: LIST [8 : ?] OF cartesian_point -- EXPLICIT

    ATTR:  scaling_factors,	TYPE: LIST [8 : ?] OF REAL -- EXPLICIT

    ATTR:  linearly_independent,	TYPE: linearly_independent_enum -- EXPLICIT

    ATTR:  locally_refined_spline_type,	TYPE: locally_refined_spline_type_enum -- EXPLICIT

    ATTR:  domain,	TYPE: LIST [3 : 3] OF LIST [2 : 2] OF REAL -- EXPLICIT


  SUB- ENTITY(5)	rational_locally_refined_spline_volume
    ATTR:  weights_data,	TYPE: LIST [8 : ?] OF REAL -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _locally_refined_spline_volume : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eLOCALLY_REFINED_SPLINE_VOLUME.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _u_b_splines: SDAI.LIST<eLOCAL_B_SPLINE>/*[8:nil]*/  // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _v_b_splines: SDAI.LIST<eLOCAL_B_SPLINE>/*[8:nil]*/  // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _w_b_splines: SDAI.LIST<eLOCAL_B_SPLINE>/*[8:nil]*/  // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _u_knots: tSPLINE_KNOT_VALUES // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _v_knots: tSPLINE_KNOT_VALUES // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _w_knots: tSPLINE_KNOT_VALUES // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _control_points_list: SDAI.LIST<eCARTESIAN_POINT>/*[8:nil]*/  // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _scaling_factors: SDAI.LIST<SDAI.REAL>/*[8:nil]*/  // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _linearly_independent: nLINEARLY_INDEPENDENT_ENUM // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _locally_refined_spline_type: nLOCALLY_REFINED_SPLINE_TYPE_ENUM // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _domain: SDAI.LIST<SDAI.LIST<SDAI.REAL>/*[2:2]*/ >/*[3:3]*/  // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._u_b_splines.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._v_b_splines.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._w_b_splines.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._u_knots.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._v_knots.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._w_knots.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._control_points_list.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._scaling_factors.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._linearly_independent.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._locally_refined_spline_type.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._domain.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._u_b_splines.value.isValueEqualOptionally(to: rhs._u_b_splines.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._v_b_splines.value.isValueEqualOptionally(to: rhs._v_b_splines.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._w_b_splines.value.isValueEqualOptionally(to: rhs._w_b_splines.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._u_knots.value.isValueEqualOptionally(to: rhs._u_knots.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._v_knots.value.isValueEqualOptionally(to: rhs._v_knots.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._w_knots.value.isValueEqualOptionally(to: rhs._w_knots.value, visited: &comppairs)	{
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
      if let comp = self._linearly_independent.value.isValueEqualOptionally(to: rhs._linearly_independent.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._locally_refined_spline_type.value.isValueEqualOptionally(to: rhs._locally_refined_spline_type.value, visited: &comppairs)	{
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
      if let comp = self._u_b_splines.value.isValueEqualOptionally(to: rhs._u_b_splines.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._v_b_splines.value.isValueEqualOptionally(to: rhs._v_b_splines.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._w_b_splines.value.isValueEqualOptionally(to: rhs._w_b_splines.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._u_knots.value.isValueEqualOptionally(to: rhs._u_knots.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._v_knots.value.isValueEqualOptionally(to: rhs._v_knots.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._w_knots.value.isValueEqualOptionally(to: rhs._w_knots.value, visited: &comppairs) {
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
      if let comp = self._linearly_independent.value.isValueEqualOptionally(to: rhs._linearly_independent.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._locally_refined_spline_type.value.isValueEqualOptionally(to: rhs._locally_refined_spline_type.value, visited: &comppairs) {
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
    public static func WHERE_wr1(SELF: eLOCALLY_REFINED_SPLINE_VOLUME?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.SIZEOF(SELF.U_B_SPLINES)
      let _TEMP2 = SDAI.SIZEOF(SELF.CONTROL_POINTS_LIST)
      let _TEMP3 = _TEMP1 .==. _TEMP2
      return _TEMP3
    }
    public static func WHERE_wr2(SELF: eLOCALLY_REFINED_SPLINE_VOLUME?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.SIZEOF(SELF.V_B_SPLINES)
      let _TEMP2 = SDAI.SIZEOF(SELF.CONTROL_POINTS_LIST)
      let _TEMP3 = _TEMP1 .==. _TEMP2
      return _TEMP3
    }
    public static func WHERE_wr3(SELF: eLOCALLY_REFINED_SPLINE_VOLUME?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.SIZEOF(SELF.W_B_SPLINES)
      let _TEMP2 = SDAI.SIZEOF(SELF.CONTROL_POINTS_LIST)
      let _TEMP3 = _TEMP1 .==. _TEMP2
      return _TEMP3
    }
    public static func WHERE_wr4(SELF: eLOCALLY_REFINED_SPLINE_VOLUME?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.SIZEOF(SELF.SCALING_FACTORS)
      let _TEMP2 = SDAI.SIZEOF(SELF.CONTROL_POINTS_LIST)
      let _TEMP3 = _TEMP1 .==. _TEMP2
      return _TEMP3
    }
    public static func WHERE_wr5(SELF: eLOCALLY_REFINED_SPLINE_VOLUME?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.SCALING_FACTORS
      let _TEMP2 = CONSTRAINTS_SCALING(SDAI.LIST<SDAI.REAL>(/*SDAI.LIST<SDAI.REAL>[8:nil] */_TEMP1))
      return SDAI.LOGICAL(_TEMP2)
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(U_B_SPLINES: SDAI.LIST<eLOCAL_B_SPLINE>/*[8:nil]*/ , V_B_SPLINES: SDAI.LIST<eLOCAL_B_SPLINE>
                /*[8:nil]*/ , W_B_SPLINES: SDAI.LIST<eLOCAL_B_SPLINE>/*[8:nil]*/ , 
                U_KNOTS: tSPLINE_KNOT_VALUES, V_KNOTS: tSPLINE_KNOT_VALUES, 
                W_KNOTS: tSPLINE_KNOT_VALUES, CONTROL_POINTS_LIST: SDAI.LIST<eCARTESIAN_POINT>/*[8:nil]*/ , 
                SCALING_FACTORS: SDAI.LIST<SDAI.REAL>/*[8:nil]*/ , LINEARLY_INDEPENDENT: 
                nLINEARLY_INDEPENDENT_ENUM, LOCALLY_REFINED_SPLINE_TYPE: nLOCALLY_REFINED_SPLINE_TYPE_ENUM, 
                DOMAIN: SDAI.LIST<SDAI.LIST<SDAI.REAL>/*[2:2]*/ >/*[3:3]*/ ) {
      self._u_b_splines = U_B_SPLINES
      self._v_b_splines = V_B_SPLINES
      self._w_b_splines = W_B_SPLINES
      self._u_knots = U_KNOTS
      self._v_knots = V_KNOTS
      self._w_knots = W_KNOTS
      self._control_points_list = CONTROL_POINTS_LIST
      self._scaling_factors = SCALING_FACTORS
      self._linearly_independent = LINEARLY_INDEPENDENT
      self._locally_refined_spline_type = LOCALLY_REFINED_SPLINE_TYPE
      self._domain = DOMAIN
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 11
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: SDAI.LIST<eLOCAL_B_SPLINE>.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: SDAI.LIST<eLOCAL_B_SPLINE>.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p2) = exchangeStructure.recoverRequiredParameter(as: SDAI.LIST<eLOCAL_B_SPLINE>.self, from: parameters[2])
      else { exchangeStructure.add(errorContext: "while recovering parameter #2 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p3) = exchangeStructure.recoverRequiredParameter(as: tSPLINE_KNOT_VALUES.self, from: parameters[3])
      else { exchangeStructure.add(errorContext: "while recovering parameter #3 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p4) = exchangeStructure.recoverRequiredParameter(as: tSPLINE_KNOT_VALUES.self, from: parameters[4])
      else { exchangeStructure.add(errorContext: "while recovering parameter #4 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p5) = exchangeStructure.recoverRequiredParameter(as: tSPLINE_KNOT_VALUES.self, from: parameters[5])
      else { exchangeStructure.add(errorContext: "while recovering parameter #5 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p6) = exchangeStructure.recoverRequiredParameter(as: SDAI.LIST<eCARTESIAN_POINT>.self, from: parameters[6])
      else { exchangeStructure.add(errorContext: "while recovering parameter #6 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p7) = exchangeStructure.recoverRequiredParameter(as: SDAI.LIST<SDAI.REAL>.self, from: parameters[7])
      else { exchangeStructure.add(errorContext: "while recovering parameter #7 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p8) = exchangeStructure.recoverRequiredParameter(as: nLINEARLY_INDEPENDENT_ENUM.self, from: parameters[8])
      else { exchangeStructure.add(errorContext: "while recovering parameter #8 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p9) = exchangeStructure.recoverRequiredParameter(as: 
        nLOCALLY_REFINED_SPLINE_TYPE_ENUM.self, from: parameters[9])
      else { exchangeStructure.add(errorContext: "while recovering parameter #9 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p10) = exchangeStructure.recoverRequiredParameter(as: SDAI.LIST<SDAI.LIST<SDAI.REAL>>.self, from: parameters[10])
      else { exchangeStructure.add(errorContext: "while recovering parameter #10 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( U_B_SPLINES: p0, V_B_SPLINES: p1, W_B_SPLINES: p2, U_KNOTS: p3, V_KNOTS: p4, W_KNOTS: p5, CONTROL_POINTS_LIST: p6, SCALING_FACTORS: p7, LINEARLY_INDEPENDENT: p8, LOCALLY_REFINED_SPLINE_TYPE: p9, DOMAIN: p10 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY locally_refined_spline_volume
    SUBTYPE OF ( volume );
      u_b_splines                  : LIST [8 : ?] OF local_b_spline;
      v_b_splines                  : LIST [8 : ?] OF local_b_spline;
      w_b_splines                  : LIST [8 : ?] OF local_b_spline;
      u_knots                      : spline_knot_values;
      v_knots                      : spline_knot_values;
      w_knots                      : spline_knot_values;
      control_points_list          : LIST [8 : ?] OF cartesian_point;
      scaling_factors              : LIST [8 : ?] OF REAL;
      linearly_independent         : linearly_independent_enum;
      locally_refined_spline_type  : locally_refined_spline_type_enum;
      domain                       : LIST [3 : 3] OF LIST [2 : 2] OF REAL;
    WHERE
      wr1: ( SIZEOF( u_b_splines ) = SIZEOF( control_points_list ) );
      wr2: ( SIZEOF( v_b_splines ) = SIZEOF( control_points_list ) );
      wr3: ( SIZEOF( w_b_splines ) = SIZEOF( control_points_list ) );
      wr4: ( SIZEOF( scaling_factors ) = SIZEOF( control_points_list ) );
      wr5: constraints_scaling( SELF.scaling_factors );
  END_ENTITY; -- locally_refined_spline_volume (line:19287 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eLOCALLY_REFINED_SPLINE_VOLUME : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _locally_refined_spline_volume.self
    }
    public let partialEntity: _locally_refined_spline_volume

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_eVOLUME: eVOLUME 	// [3]
    public var super_eLOCALLY_REFINED_SPLINE_VOLUME: eLOCALLY_REFINED_SPLINE_VOLUME { return self } 	// [4]

    //MARK: SUBTYPES
    public var sub_eRATIONAL_LOCALLY_REFINED_SPLINE_VOLUME: eRATIONAL_LOCALLY_REFINED_SPLINE_VOLUME? {	// [5]
      return self.complexEntity.entityReference(eRATIONAL_LOCALLY_REFINED_SPLINE_VOLUME.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eLOCALLY_REFINED_SPLINE_VOLUME`` )
    public var U_B_SPLINES: SDAI.LIST<eLOCAL_B_SPLINE>/*[8:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._u_b_splines )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._u_b_splines = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eRATIONAL_LOCALLY_REFINED_SPLINE_VOLUME`` )
    public var WEIGHTS_DATA: (SDAI.LIST<SDAI.REAL>/*[8:nil]*/ )?  {
      get {
        return sub_eRATIONAL_LOCALLY_REFINED_SPLINE_VOLUME?.partialEntity._weights_data
      }
      set(newValue) {
        guard let partial = sub_eRATIONAL_LOCALLY_REFINED_SPLINE_VOLUME?.super_eRATIONAL_LOCALLY_REFINED_SPLINE_VOLUME
          .partialEntity else { return }
        partial._weights_data = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eLOCALLY_REFINED_SPLINE_VOLUME`` )
    public var CONTROL_POINTS_LIST: SDAI.LIST<eCARTESIAN_POINT>/*[8:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._control_points_list )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._control_points_list = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eLOCALLY_REFINED_SPLINE_VOLUME`` )
    public var LINEARLY_INDEPENDENT: nLINEARLY_INDEPENDENT_ENUM {
      get {
        return SDAI.UNWRAP( self.partialEntity._linearly_independent )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._linearly_independent = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eLOCALLY_REFINED_SPLINE_VOLUME`` )
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
    /// - origin: SELF( ``eLOCALLY_REFINED_SPLINE_VOLUME`` )
    public var W_KNOTS: tSPLINE_KNOT_VALUES {
      get {
        return SDAI.UNWRAP( self.partialEntity._w_knots )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._w_knots = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eLOCALLY_REFINED_SPLINE_VOLUME`` )
    public var SCALING_FACTORS: SDAI.LIST<SDAI.REAL>/*[8:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._scaling_factors )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._scaling_factors = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eLOCALLY_REFINED_SPLINE_VOLUME`` )
    public var U_KNOTS: tSPLINE_KNOT_VALUES {
      get {
        return SDAI.UNWRAP( self.partialEntity._u_knots )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._u_knots = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eLOCALLY_REFINED_SPLINE_VOLUME`` )
    public var V_KNOTS: tSPLINE_KNOT_VALUES {
      get {
        return SDAI.UNWRAP( self.partialEntity._v_knots )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._v_knots = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eLOCALLY_REFINED_SPLINE_VOLUME`` )
    public var W_B_SPLINES: SDAI.LIST<eLOCAL_B_SPLINE>/*[8:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._w_b_splines )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._w_b_splines = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eLOCALLY_REFINED_SPLINE_VOLUME`` )
    public var V_B_SPLINES: SDAI.LIST<eLOCAL_B_SPLINE>/*[8:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._v_b_splines )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._v_b_splines = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eLOCALLY_REFINED_SPLINE_VOLUME`` )
    public var DOMAIN: SDAI.LIST<SDAI.LIST<SDAI.REAL>/*[2:2]*/ >/*[3:3]*/  {
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
      guard let partial = complexEntity?.partialEntityInstance(_locally_refined_spline_volume.self) else { return nil }
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
      result[prefix2 + " .WHERE_wr1"] = _locally_refined_spline_volume.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _locally_refined_spline_volume.WHERE_wr2(SELF: instance)
      result[prefix2 + " .WHERE_wr3"] = _locally_refined_spline_volume.WHERE_wr3(SELF: instance)
      result[prefix2 + " .WHERE_wr4"] = _locally_refined_spline_volume.WHERE_wr4(SELF: instance)
      result[prefix2 + " .WHERE_wr5"] = _locally_refined_spline_volume.WHERE_wr5(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "LOCALLY_REFINED_SPLINE_VOLUME", type: self, explicitAttributeCount: 11)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eVOLUME.self)
      entityDef.add(supertype: eLOCALLY_REFINED_SPLINE_VOLUME.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "U_B_SPLINES", keyPath: \eLOCALLY_REFINED_SPLINE_VOLUME.U_B_SPLINES, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "WEIGHTS_DATA", keyPath: \eLOCALLY_REFINED_SPLINE_VOLUME.WEIGHTS_DATA, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "CONTROL_POINTS_LIST", keyPath: \eLOCALLY_REFINED_SPLINE_VOLUME.CONTROL_POINTS_LIST, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "LINEARLY_INDEPENDENT", keyPath: \eLOCALLY_REFINED_SPLINE_VOLUME.LINEARLY_INDEPENDENT, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "LOCALLY_REFINED_SPLINE_TYPE", keyPath: \eLOCALLY_REFINED_SPLINE_VOLUME.LOCALLY_REFINED_SPLINE_TYPE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "W_KNOTS", keyPath: \eLOCALLY_REFINED_SPLINE_VOLUME.W_KNOTS, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SCALING_FACTORS", keyPath: \eLOCALLY_REFINED_SPLINE_VOLUME.SCALING_FACTORS, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "U_KNOTS", keyPath: \eLOCALLY_REFINED_SPLINE_VOLUME.U_KNOTS, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "V_KNOTS", keyPath: \eLOCALLY_REFINED_SPLINE_VOLUME.V_KNOTS, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "W_B_SPLINES", keyPath: \eLOCALLY_REFINED_SPLINE_VOLUME.W_B_SPLINES, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "V_B_SPLINES", keyPath: \eLOCALLY_REFINED_SPLINE_VOLUME.V_B_SPLINES, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DOMAIN", keyPath: \eLOCALLY_REFINED_SPLINE_VOLUME.DOMAIN, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eLOCALLY_REFINED_SPLINE_VOLUME.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \eLOCALLY_REFINED_SPLINE_VOLUME.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
