/* file: b_spline_surface.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY b_spline_surface
    SUPERTYPE OF ( 
        ONEOF ( 
            b_spline_surface_with_knots, 
            uniform_surface, 
            quasi_uniform_surface, 
            bezier_surface ) 
        ANDOR
        rational_b_spline_surface )
    SUBTYPE OF ( bounded_surface );
      u_degree             : INTEGER;
      v_degree             : INTEGER;
      control_points_list  : LIST [2 : ?] OF LIST [2 : ?] OF cartesian_point;
      surface_form         : b_spline_surface_form;
      u_closed             : LOGICAL;
      v_closed             : LOGICAL;
      self_intersect       : LOGICAL;
    DERIVE
      u_upper         : INTEGER := SIZEOF( control_points_list ) - 1;
      v_upper         : INTEGER := SIZEOF( control_points_list[1] ) - 1;
      control_points  : ARRAY [0 : u_upper] OF ARRAY [0 : v_upper] OF cartesian_point := 
                          make_array_of_array( control_points_list, 0, u_upper, 0, v_upper );
    WHERE
      wr1: ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.UNIFORM_SURFACE' IN TYPEOF( SELF ) ) OR ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.QUASI_UNIFORM_SURFACE'  IN TYPEOF( SELF ) ) 
               OR ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.BEZIER_SURFACE' IN TYPEOF( SELF ) ) OR 
               ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.B_SPLINE_SURFACE_WITH_KNOTS' IN TYPEOF( 
               SELF ) ) );
  END_ENTITY; -- b_spline_surface (line:7763 file:ap242ed2_mim_lf_v1.101.TY.exp)

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

  SUPER- ENTITY(4)	bounded_surface
    (no local attributes)

  ENTITY(SELF)	b_spline_surface
    ATTR:  u_degree,	TYPE: INTEGER -- EXPLICIT

    ATTR:  v_degree,	TYPE: INTEGER -- EXPLICIT

    ATTR:  control_points_list,	TYPE: LIST [2 : ?] OF LIST [2 : ?] OF cartesian_point -- EXPLICIT

    ATTR:  surface_form,	TYPE: b_spline_surface_form -- EXPLICIT

    ATTR:  u_closed,	TYPE: LOGICAL -- EXPLICIT

    ATTR:  v_closed,	TYPE: LOGICAL -- EXPLICIT

    ATTR:  self_intersect,	TYPE: LOGICAL -- EXPLICIT

    ATTR:  u_upper,	TYPE: INTEGER -- DERIVED
      := SIZEOF( control_points_list ) - 1

    ATTR:  v_upper,	TYPE: INTEGER -- DERIVED
      := SIZEOF( control_points_list[1] ) - 1

    ATTR:  control_points,	TYPE: ARRAY [0 : u_upper] OF ARRAY [0 : v_upper] OF cartesian_point -- DERIVED
      := make_array_of_array( control_points_list, 0, u_upper, 0, v_upper )


  SUB- ENTITY(6)	b_spline_surface_with_knots
    ATTR:  u_multiplicities,	TYPE: LIST [2 : ?] OF INTEGER -- EXPLICIT

    ATTR:  v_multiplicities,	TYPE: LIST [2 : ?] OF INTEGER -- EXPLICIT

    ATTR:  u_knots,	TYPE: LIST [2 : ?] OF parameter_value -- EXPLICIT

    ATTR:  v_knots,	TYPE: LIST [2 : ?] OF parameter_value -- EXPLICIT

    ATTR:  knot_spec,	TYPE: knot_type -- EXPLICIT

    ATTR:  knot_u_upper,	TYPE: INTEGER -- DERIVED
      := SIZEOF( u_knots )

    ATTR:  knot_v_upper,	TYPE: INTEGER -- DERIVED
      := SIZEOF( v_knots )


  SUB- ENTITY(7)	quasi_uniform_surface
    (no local attributes)

  SUB- ENTITY(8)	uniform_surface
    (no local attributes)

  SUB- ENTITY(9)	bezier_surface
    (no local attributes)

  SUB- ENTITY(10)	rational_b_spline_surface
    ATTR:  weights_data,	TYPE: LIST [2 : ?] OF LIST [2 : ?] OF REAL -- EXPLICIT

    ATTR:  weights,	TYPE: ARRAY [0 : u_upper] OF ARRAY [0 : v_upper] OF REAL -- DERIVED
      := make_array_of_array( weights_data, 0, u_upper, 0, v_upper )


*/


//MARK: - Partial Entity
  public final class _b_spline_surface : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eB_SPLINE_SURFACE.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _u_degree: SDAI.INTEGER // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _v_degree: SDAI.INTEGER // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _control_points_list: SDAI.LIST<SDAI.LIST<eCARTESIAN_POINT>/*[2:nil]*/ >/*[2:nil]*/  // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _surface_form: nB_SPLINE_SURFACE_FORM // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _u_closed: SDAI.LOGICAL // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _v_closed: SDAI.LOGICAL // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _self_intersect: SDAI.LOGICAL // PLAIN EXPLICIT ATTRIBUTE

    /// DERIVE ATTRIBUTE
    internal func _u_upper__getter(SELF: eB_SPLINE_SURFACE) -> SDAI.INTEGER?  {

      let _TEMP1 = SDAI.SIZEOF(SELF.CONTROL_POINTS_LIST)
      let _TEMP2 = _TEMP1 - SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      return _TEMP2
    }

    /// DERIVE ATTRIBUTE
    internal func _v_upper__getter(SELF: eB_SPLINE_SURFACE) -> SDAI.INTEGER?  {

      let _TEMP1 = SELF.CONTROL_POINTS_LIST[1]
      let _TEMP2 = SDAI.SIZEOF(_TEMP1)
      let _TEMP3 = _TEMP2 - SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      return _TEMP3
    }

    /// DERIVE ATTRIBUTE
    internal func _control_points__getter(SELF: eB_SPLINE_SURFACE) -> (SDAI.ARRAY<SDAI.ARRAY<eCARTESIAN_POINT>
      /*[0:V_UPPER]*/ >/*[0:U_UPPER]*/ )?  {

      let _TEMP1 = MAKE_ARRAY_OF_ARRAY(
        LIS: SDAI.LIST<SDAI.LIST<eCARTESIAN_POINT>>(bound1: SDAI.UNWRAP(SDAI.INTEGER(1)), bound2: (nil as 
        SDAI.INTEGER?), /*SDAI.LIST<SDAI.LIST<eCARTESIAN_POINT>[2:nil] >[2:nil] */SELF.CONTROL_POINTS_LIST), 
        LOW1: SDAI.INTEGER(0), U1: SELF.U_UPPER, 
        LOW2: SDAI.INTEGER(0), U2: SELF.V_UPPER)
      return SDAI.ARRAY<SDAI.ARRAY<eCARTESIAN_POINT>>(bound1: SDAI.UNWRAP(SDAI.INTEGER(0)), 
        bound2: SDAI.UNWRAP(SELF.U_UPPER), 
        /*SDAI.ARRAY<SDAI.ARRAY<gT>[LOW2:U2] >[LOW1:U1] */_TEMP1)
    }

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sB_SPLINE_OR_RECTANGULAR_COMPOSITE_SURFACE_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sINSPECTED_ECDQ_ELEMENT_SELECT.typeName)) // -> sB_SPLINE_OR_RECTANGULAR_COMPOSITE_SURFACE_SELECT
      members.insert(SDAI.STRING(sLOCATION_OF_EXTREME_VALUE_SELECT.typeName)) // -> sINSPECTED_ECDQ_ELEMENT_SELECT
      members.insert(SDAI.STRING(sINSPECTED_SHAPE_ELEMENT_SELECT.typeName)) // -> sB_SPLINE_OR_RECTANGULAR_COMPOSITE_SURFACE_SELECT
      members.insert(SDAI.STRING(sINSPECTED_ELEMENT_SELECT.typeName)) // -> sB_SPLINE_OR_RECTANGULAR_COMPOSITE_SURFACE_SELECT
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._u_degree.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._v_degree.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._control_points_list.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._surface_form.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._u_closed.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._v_closed.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._self_intersect.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._u_degree.value.isValueEqualOptionally(to: rhs._u_degree.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._v_degree.value.isValueEqualOptionally(to: rhs._v_degree.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._control_points_list.value.isValueEqualOptionally(to: rhs._control_points_list.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._surface_form.value.isValueEqualOptionally(to: rhs._surface_form.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._u_closed.value.isValueEqualOptionally(to: rhs._u_closed.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._v_closed.value.isValueEqualOptionally(to: rhs._v_closed.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._self_intersect.value.isValueEqualOptionally(to: rhs._self_intersect.value, visited: &comppairs)	{
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
      if let comp = self._u_degree.value.isValueEqualOptionally(to: rhs._u_degree.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._v_degree.value.isValueEqualOptionally(to: rhs._v_degree.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._control_points_list.value.isValueEqualOptionally(to: rhs._control_points_list.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._surface_form.value.isValueEqualOptionally(to: rhs._surface_form.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._u_closed.value.isValueEqualOptionally(to: rhs._u_closed.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._v_closed.value.isValueEqualOptionally(to: rhs._v_closed.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._self_intersect.value.isValueEqualOptionally(to: rhs._self_intersect.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eB_SPLINE_SURFACE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF, IS: eUNIFORM_SURFACE.self)
      let _TEMP2 = SDAI.TYPEOF(SELF, IS: eQUASI_UNIFORM_SURFACE.self)
      let _TEMP3 = _TEMP1 || _TEMP2
      let _TEMP4 = SDAI.TYPEOF(SELF, IS: eBEZIER_SURFACE.self)
      let _TEMP5 = _TEMP3 || _TEMP4
      let _TEMP6 = SDAI.TYPEOF(SELF, IS: eB_SPLINE_SURFACE_WITH_KNOTS.self)
      let _TEMP7 = _TEMP5 || _TEMP6
      return _TEMP7
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(U_DEGREE: SDAI.INTEGER, V_DEGREE: SDAI.INTEGER, CONTROL_POINTS_LIST: SDAI.LIST<SDAI.LIST<
                eCARTESIAN_POINT>/*[2:nil]*/ >/*[2:nil]*/ , SURFACE_FORM: nB_SPLINE_SURFACE_FORM, 
                U_CLOSED: SDAI.LOGICAL, V_CLOSED: SDAI.LOGICAL, SELF_INTERSECT: SDAI.LOGICAL) {
      self._u_degree = U_DEGREE
      self._v_degree = V_DEGREE
      self._control_points_list = CONTROL_POINTS_LIST
      self._surface_form = SURFACE_FORM
      self._u_closed = U_CLOSED
      self._v_closed = V_CLOSED
      self._self_intersect = SELF_INTERSECT
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 7
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: SDAI.INTEGER.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: SDAI.INTEGER.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p2) = exchangeStructure.recoverRequiredParameter(as: SDAI.LIST<SDAI.LIST<
        eCARTESIAN_POINT>>.self, from: parameters[2])
      else { exchangeStructure.add(errorContext: "while recovering parameter #2 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p3) = exchangeStructure.recoverRequiredParameter(as: nB_SPLINE_SURFACE_FORM.self, from: parameters[3])
      else { exchangeStructure.add(errorContext: "while recovering parameter #3 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p4) = exchangeStructure.recoverRequiredParameter(as: SDAI.LOGICAL.self, from: parameters[4])
      else { exchangeStructure.add(errorContext: "while recovering parameter #4 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p5) = exchangeStructure.recoverRequiredParameter(as: SDAI.LOGICAL.self, from: parameters[5])
      else { exchangeStructure.add(errorContext: "while recovering parameter #5 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p6) = exchangeStructure.recoverRequiredParameter(as: SDAI.LOGICAL.self, from: parameters[6])
      else { exchangeStructure.add(errorContext: "while recovering parameter #6 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( U_DEGREE: p0, V_DEGREE: p1, CONTROL_POINTS_LIST: p2, SURFACE_FORM: p3, U_CLOSED: SDAI.LOGICAL(p4), V_CLOSED: SDAI.LOGICAL(p5), SELF_INTERSECT: SDAI.LOGICAL(p6) )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY b_spline_surface
    SUPERTYPE OF ( 
        ONEOF ( 
            b_spline_surface_with_knots, 
            uniform_surface, 
            quasi_uniform_surface, 
            bezier_surface ) 
        ANDOR
        rational_b_spline_surface )
    SUBTYPE OF ( bounded_surface );
      u_degree             : INTEGER;
      v_degree             : INTEGER;
      control_points_list  : LIST [2 : ?] OF LIST [2 : ?] OF cartesian_point;
      surface_form         : b_spline_surface_form;
      u_closed             : LOGICAL;
      v_closed             : LOGICAL;
      self_intersect       : LOGICAL;
    DERIVE
      u_upper         : INTEGER := SIZEOF( control_points_list ) - 1;
      v_upper         : INTEGER := SIZEOF( control_points_list[1] ) - 1;
      control_points  : ARRAY [0 : u_upper] OF ARRAY [0 : v_upper] OF cartesian_point := 
                          make_array_of_array( control_points_list, 0, u_upper, 0, v_upper );
    WHERE
      wr1: ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.UNIFORM_SURFACE' IN TYPEOF( SELF ) ) OR ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.QUASI_UNIFORM_SURFACE'  IN TYPEOF( SELF ) ) 
               OR ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.BEZIER_SURFACE' IN TYPEOF( SELF ) ) OR 
               ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.B_SPLINE_SURFACE_WITH_KNOTS' IN TYPEOF( 
               SELF ) ) );
  END_ENTITY; -- b_spline_surface (line:7763 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eB_SPLINE_SURFACE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _b_spline_surface.self
    }
    public let partialEntity: _b_spline_surface

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_eSURFACE: eSURFACE 	// [3]
    public let super_eBOUNDED_SURFACE: eBOUNDED_SURFACE 	// [4]
    public var super_eB_SPLINE_SURFACE: eB_SPLINE_SURFACE { return self } 	// [5]

    //MARK: SUBTYPES
    public var sub_eB_SPLINE_SURFACE_WITH_KNOTS: eB_SPLINE_SURFACE_WITH_KNOTS? {	// [6]
      return self.complexEntity.entityReference(eB_SPLINE_SURFACE_WITH_KNOTS.self)
    }

    public var sub_eQUASI_UNIFORM_SURFACE: eQUASI_UNIFORM_SURFACE? {	// [7]
      return self.complexEntity.entityReference(eQUASI_UNIFORM_SURFACE.self)
    }

    public var sub_eUNIFORM_SURFACE: eUNIFORM_SURFACE? {	// [8]
      return self.complexEntity.entityReference(eUNIFORM_SURFACE.self)
    }

    public var sub_eBEZIER_SURFACE: eBEZIER_SURFACE? {	// [9]
      return self.complexEntity.entityReference(eBEZIER_SURFACE.self)
    }

    public var sub_eRATIONAL_B_SPLINE_SURFACE: eRATIONAL_B_SPLINE_SURFACE? {	// [10]
      return self.complexEntity.entityReference(eRATIONAL_B_SPLINE_SURFACE.self)
    }


    //MARK: ATTRIBUTES
    /// __DERIVE__ attribute
    /// - origin: SUB( ``eB_SPLINE_SURFACE_WITH_KNOTS`` )
    public var KNOT_V_UPPER: SDAI.INTEGER?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"KNOT_V_UPPER") {
          return cached.value as! SDAI.INTEGER? 
        }
        guard let origin = sub_eB_SPLINE_SURFACE_WITH_KNOTS else { return nil }
        let value = SDAI.INTEGER(origin.partialEntity._knot_v_upper__getter(SELF: origin))
        updateCache(derivedAttributeName:"KNOT_V_UPPER", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eB_SPLINE_SURFACE_WITH_KNOTS`` )
    public var U_MULTIPLICITIES: (SDAI.LIST<SDAI.INTEGER>/*[2:nil]*/ )?  {
      get {
        return sub_eB_SPLINE_SURFACE_WITH_KNOTS?.partialEntity._u_multiplicities
      }
      set(newValue) {
        guard let partial = sub_eB_SPLINE_SURFACE_WITH_KNOTS?.super_eB_SPLINE_SURFACE_WITH_KNOTS
          .partialEntity else { return }
        partial._u_multiplicities = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eRATIONAL_B_SPLINE_SURFACE`` )
    public var WEIGHTS_DATA: (SDAI.LIST<SDAI.LIST<SDAI.REAL>/*[2:nil]*/ >/*[2:nil]*/ )?  {
      get {
        return sub_eRATIONAL_B_SPLINE_SURFACE?.partialEntity._weights_data
      }
      set(newValue) {
        guard let partial = sub_eRATIONAL_B_SPLINE_SURFACE?.super_eRATIONAL_B_SPLINE_SURFACE.partialEntity
          else { return }
        partial._weights_data = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eB_SPLINE_SURFACE`` )
    public var CONTROL_POINTS_LIST: SDAI.LIST<SDAI.LIST<eCARTESIAN_POINT>/*[2:nil]*/ >/*[2:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._control_points_list )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._control_points_list = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eB_SPLINE_SURFACE`` )
    public var V_DEGREE: SDAI.INTEGER {
      get {
        return SDAI.UNWRAP( self.partialEntity._v_degree )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._v_degree = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eB_SPLINE_SURFACE_WITH_KNOTS`` )
    public var V_MULTIPLICITIES: (SDAI.LIST<SDAI.INTEGER>/*[2:nil]*/ )?  {
      get {
        return sub_eB_SPLINE_SURFACE_WITH_KNOTS?.partialEntity._v_multiplicities
      }
      set(newValue) {
        guard let partial = sub_eB_SPLINE_SURFACE_WITH_KNOTS?.super_eB_SPLINE_SURFACE_WITH_KNOTS
          .partialEntity else { return }
        partial._v_multiplicities = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SELF( ``eB_SPLINE_SURFACE`` )
    public var V_UPPER: SDAI.INTEGER?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"V_UPPER") {
          return cached.value as! SDAI.INTEGER? 
        }
        let origin = self
        let value = origin.partialEntity._v_upper__getter(SELF: origin)
        updateCache(derivedAttributeName:"V_UPPER", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eB_SPLINE_SURFACE`` )
    public var V_CLOSED: SDAI.LOGICAL {
      get {
        return SDAI.UNWRAP( self.partialEntity._v_closed )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._v_closed = SDAI.LOGICAL(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eB_SPLINE_SURFACE`` )
    public var SURFACE_FORM: nB_SPLINE_SURFACE_FORM {
      get {
        return SDAI.UNWRAP( self.partialEntity._surface_form )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._surface_form = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eB_SPLINE_SURFACE`` )
    public var U_CLOSED: SDAI.LOGICAL {
      get {
        return SDAI.UNWRAP( self.partialEntity._u_closed )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._u_closed = SDAI.LOGICAL(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eB_SPLINE_SURFACE_WITH_KNOTS`` )
    public var U_KNOTS: (SDAI.LIST<tPARAMETER_VALUE>/*[2:nil]*/ )?  {
      get {
        return sub_eB_SPLINE_SURFACE_WITH_KNOTS?.partialEntity._u_knots
      }
      set(newValue) {
        guard let partial = sub_eB_SPLINE_SURFACE_WITH_KNOTS?.super_eB_SPLINE_SURFACE_WITH_KNOTS
          .partialEntity else { return }
        partial._u_knots = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eB_SPLINE_SURFACE_WITH_KNOTS`` )
    public var KNOT_SPEC: nKNOT_TYPE?  {
      get {
        return sub_eB_SPLINE_SURFACE_WITH_KNOTS?.partialEntity._knot_spec
      }
      set(newValue) {
        guard let partial = sub_eB_SPLINE_SURFACE_WITH_KNOTS?.super_eB_SPLINE_SURFACE_WITH_KNOTS
          .partialEntity else { return }
        partial._knot_spec = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eB_SPLINE_SURFACE`` )
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
    /// - origin: SUB( ``eB_SPLINE_SURFACE_WITH_KNOTS`` )
    public var V_KNOTS: (SDAI.LIST<tPARAMETER_VALUE>/*[2:nil]*/ )?  {
      get {
        return sub_eB_SPLINE_SURFACE_WITH_KNOTS?.partialEntity._v_knots
      }
      set(newValue) {
        guard let partial = sub_eB_SPLINE_SURFACE_WITH_KNOTS?.super_eB_SPLINE_SURFACE_WITH_KNOTS
          .partialEntity else { return }
        partial._v_knots = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SELF( ``eB_SPLINE_SURFACE`` )
    public var CONTROL_POINTS: (SDAI.ARRAY<SDAI.ARRAY<eCARTESIAN_POINT>/*[0:V_UPPER]*/ >/*[0:U_UPPER]*/ )?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"CONTROL_POINTS") {
          return cached.value as! (SDAI.ARRAY<SDAI.ARRAY<eCARTESIAN_POINT>/*[0:V_UPPER]*/ >/*[0:U_UPPER]*/ )? 
        }
        let origin = self
        let value = origin.partialEntity._control_points__getter(SELF: origin)
        updateCache(derivedAttributeName:"CONTROL_POINTS", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eB_SPLINE_SURFACE`` )
    public var U_DEGREE: SDAI.INTEGER {
      get {
        return SDAI.UNWRAP( self.partialEntity._u_degree )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._u_degree = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUB( ``eB_SPLINE_SURFACE_WITH_KNOTS`` )
    public var KNOT_U_UPPER: SDAI.INTEGER?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"KNOT_U_UPPER") {
          return cached.value as! SDAI.INTEGER? 
        }
        guard let origin = sub_eB_SPLINE_SURFACE_WITH_KNOTS else { return nil }
        let value = SDAI.INTEGER(origin.partialEntity._knot_u_upper__getter(SELF: origin))
        updateCache(derivedAttributeName:"KNOT_U_UPPER", value:value)
        return value
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SELF( ``eB_SPLINE_SURFACE`` )
    public var U_UPPER: SDAI.INTEGER?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"U_UPPER") {
          return cached.value as! SDAI.INTEGER? 
        }
        let origin = self
        let value = origin.partialEntity._u_upper__getter(SELF: origin)
        updateCache(derivedAttributeName:"U_UPPER", value:value)
        return value
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
    /// - origin: SUB( ``eRATIONAL_B_SPLINE_SURFACE`` )
    public var WEIGHTS: (SDAI.ARRAY<SDAI.ARRAY<SDAI.REAL>/*[0:V_UPPER]*/ >/*[0:U_UPPER]*/ )?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"WEIGHTS") {
          return cached.value as! (SDAI.ARRAY<SDAI.ARRAY<SDAI.REAL>/*[0:V_UPPER]*/ >/*[0:U_UPPER]*/ )? 
        }
        guard let origin = sub_eRATIONAL_B_SPLINE_SURFACE else { return nil }
        let value = SDAI.ARRAY<SDAI.ARRAY<SDAI.REAL>>(origin.partialEntity._weights__getter(SELF: origin))
        updateCache(derivedAttributeName:"WEIGHTS", value:value)
        return value
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
      guard let partial = complexEntity?.partialEntityInstance(_b_spline_surface.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(eSURFACE.self) else { return nil }
      self.super_eSURFACE = super3

      guard let super4 = complexEntity?.entityReference(eBOUNDED_SURFACE.self) else { return nil }
      self.super_eBOUNDED_SURFACE = super4

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
      result[prefix2 + " .WHERE_wr1"] = _b_spline_surface.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "B_SPLINE_SURFACE", type: self, explicitAttributeCount: 7)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eSURFACE.self)
      entityDef.add(supertype: eBOUNDED_SURFACE.self)
      entityDef.add(supertype: eB_SPLINE_SURFACE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "KNOT_V_UPPER", keyPath: \eB_SPLINE_SURFACE.KNOT_V_UPPER, 
        kind: .derived, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "U_MULTIPLICITIES", keyPath: \eB_SPLINE_SURFACE.U_MULTIPLICITIES, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "WEIGHTS_DATA", keyPath: \eB_SPLINE_SURFACE.WEIGHTS_DATA, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "CONTROL_POINTS_LIST", keyPath: \eB_SPLINE_SURFACE.CONTROL_POINTS_LIST, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "V_DEGREE", keyPath: \eB_SPLINE_SURFACE.V_DEGREE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "V_MULTIPLICITIES", keyPath: \eB_SPLINE_SURFACE.V_MULTIPLICITIES, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "V_UPPER", keyPath: \eB_SPLINE_SURFACE.V_UPPER, 
        kind: .derived, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "V_CLOSED", keyPath: \eB_SPLINE_SURFACE.V_CLOSED, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SURFACE_FORM", keyPath: \eB_SPLINE_SURFACE.SURFACE_FORM, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "U_CLOSED", keyPath: \eB_SPLINE_SURFACE.U_CLOSED, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "U_KNOTS", keyPath: \eB_SPLINE_SURFACE.U_KNOTS, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "KNOT_SPEC", keyPath: \eB_SPLINE_SURFACE.KNOT_SPEC, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SELF_INTERSECT", keyPath: \eB_SPLINE_SURFACE.SELF_INTERSECT, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "V_KNOTS", keyPath: \eB_SPLINE_SURFACE.V_KNOTS, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "CONTROL_POINTS", keyPath: \eB_SPLINE_SURFACE.CONTROL_POINTS, 
        kind: .derived, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "U_DEGREE", keyPath: \eB_SPLINE_SURFACE.U_DEGREE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "KNOT_U_UPPER", keyPath: \eB_SPLINE_SURFACE.KNOT_U_UPPER, 
        kind: .derived, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "U_UPPER", keyPath: \eB_SPLINE_SURFACE.U_UPPER, 
        kind: .derived, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eB_SPLINE_SURFACE.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "WEIGHTS", keyPath: \eB_SPLINE_SURFACE.WEIGHTS, 
        kind: .derived, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \eB_SPLINE_SURFACE.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
