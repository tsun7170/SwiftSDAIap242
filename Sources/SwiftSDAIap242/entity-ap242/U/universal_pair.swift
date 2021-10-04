/* file: universal_pair.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY universal_pair
    SUBTYPE OF ( low_order_kinematic_pair );
      input_skew_angle  : OPTIONAL plane_angle_measure;
    DERIVE
      SELF\low_order_kinematic_pair.t_x : BOOLEAN := FALSE;
      SELF\low_order_kinematic_pair.t_y : BOOLEAN := FALSE;
      SELF\low_order_kinematic_pair.t_z : BOOLEAN := FALSE;
      SELF\low_order_kinematic_pair.r_x : BOOLEAN := TRUE;
      SELF\low_order_kinematic_pair.r_y : BOOLEAN := FALSE;
      SELF\low_order_kinematic_pair.r_z : BOOLEAN := TRUE;
      skew_angle                      : plane_angle_measure := NVL( input_skew_angle, 0 );
    WHERE
      wr1: ( COS( plane_angle_for_pair_in_radian( SELF, skew_angle ) ) > 0 );
  END_ENTITY; -- universal_pair (line:33280 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT	(AMBIGUOUS/MASKED)


  SUPER- ENTITY(2)	geometric_representation_item
    ATTR:  dim,	TYPE: dimension_count -- DERIVED
      := dimension_of( SELF )


  SUPER- ENTITY(3)	item_defined_transformation
    ATTR:  name,	TYPE: label -- EXPLICIT (DYNAMIC)	(AMBIGUOUS/MASKED)
      -- possibly overriden by
          ENTITY: kinematic_pair,	TYPE: label	(as DERIVED)

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT

    ATTR:  transform_item_1,	TYPE: representation_item -- EXPLICIT
      -- possibly overriden by
      *** ENTITY: kinematic_pair,	TYPE: rigid_placement
          ENTITY: link_motion_transformation,	TYPE: rigid_placement
          ENTITY: transformation_with_derived_angle,	TYPE: angle_direction_reference_with_a2p3d_select

    ATTR:  transform_item_2,	TYPE: representation_item -- EXPLICIT
      -- possibly overriden by
      *** ENTITY: kinematic_pair,	TYPE: rigid_placement
          ENTITY: link_motion_transformation,	TYPE: kinematic_path
          ENTITY: transformation_with_derived_angle,	TYPE: axis2_placement_3d


  SUPER- ENTITY(4)	kinematic_pair
    ATTR:  joint,	TYPE: kinematic_joint -- EXPLICIT

    REDCR: transform_item_1,	TYPE: rigid_placement -- EXPLICIT
      -- OVERRIDING ENTITY: item_defined_transformation

    REDCR: transform_item_2,	TYPE: rigid_placement -- EXPLICIT
      -- OVERRIDING ENTITY: item_defined_transformation

    ATTR:  associated_link_representations_1,	TYPE: SET [1 : ?] OF kinematic_link_representation -- DERIVED
      := sort_link_associations( link_representation_associations, TRUE )

    ATTR:  associated_link_representations_2,	TYPE: SET [1 : ?] OF kinematic_link_representation -- DERIVED
      := sort_link_associations( link_representation_associations, FALSE )

    REDCR: name,	TYPE: label -- DERIVED (DYNAMIC)	(AMBIGUOUS/MASKED)
      := SELF\representation_item.name
      -- OVERRIDING ENTITY: item_defined_transformation

    ATTR:  link_representation_associations,	TYPE: SET [1 : ?] OF pair_representation_relationship -- INVERSE
      FOR transformation_operator;


  SUPER- ENTITY(5)	low_order_kinematic_pair
    ATTR:  t_x,	TYPE: BOOLEAN -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: planar_pair,	TYPE: BOOLEAN	(as DERIVED)
          ENTITY: revolute_pair,	TYPE: BOOLEAN	(as DERIVED)
          ENTITY: cylindrical_pair,	TYPE: BOOLEAN	(as DERIVED)
          ENTITY: spherical_pair,	TYPE: BOOLEAN	(as DERIVED)
          ENTITY: fully_constrained_pair,	TYPE: BOOLEAN	(as DERIVED)
      *** ENTITY: universal_pair,	TYPE: BOOLEAN	(as DERIVED)
          ENTITY: unconstrained_pair,	TYPE: BOOLEAN	(as DERIVED)
          ENTITY: prismatic_pair,	TYPE: BOOLEAN	(as DERIVED)
          ENTITY: spherical_pair_with_pin,	TYPE: BOOLEAN	(as DERIVED)

    ATTR:  t_y,	TYPE: BOOLEAN -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: planar_pair,	TYPE: BOOLEAN	(as DERIVED)
          ENTITY: revolute_pair,	TYPE: BOOLEAN	(as DERIVED)
          ENTITY: cylindrical_pair,	TYPE: BOOLEAN	(as DERIVED)
          ENTITY: spherical_pair,	TYPE: BOOLEAN	(as DERIVED)
          ENTITY: fully_constrained_pair,	TYPE: BOOLEAN	(as DERIVED)
      *** ENTITY: universal_pair,	TYPE: BOOLEAN	(as DERIVED)
          ENTITY: unconstrained_pair,	TYPE: BOOLEAN	(as DERIVED)
          ENTITY: prismatic_pair,	TYPE: BOOLEAN	(as DERIVED)
          ENTITY: spherical_pair_with_pin,	TYPE: BOOLEAN	(as DERIVED)

    ATTR:  t_z,	TYPE: BOOLEAN -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: planar_pair,	TYPE: BOOLEAN	(as DERIVED)
          ENTITY: revolute_pair,	TYPE: BOOLEAN	(as DERIVED)
          ENTITY: cylindrical_pair,	TYPE: BOOLEAN	(as DERIVED)
          ENTITY: spherical_pair,	TYPE: BOOLEAN	(as DERIVED)
          ENTITY: fully_constrained_pair,	TYPE: BOOLEAN	(as DERIVED)
      *** ENTITY: universal_pair,	TYPE: BOOLEAN	(as DERIVED)
          ENTITY: unconstrained_pair,	TYPE: BOOLEAN	(as DERIVED)
          ENTITY: prismatic_pair,	TYPE: BOOLEAN	(as DERIVED)
          ENTITY: spherical_pair_with_pin,	TYPE: BOOLEAN	(as DERIVED)

    ATTR:  r_x,	TYPE: BOOLEAN -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: planar_pair,	TYPE: BOOLEAN	(as DERIVED)
          ENTITY: revolute_pair,	TYPE: BOOLEAN	(as DERIVED)
          ENTITY: cylindrical_pair,	TYPE: BOOLEAN	(as DERIVED)
          ENTITY: spherical_pair,	TYPE: BOOLEAN	(as DERIVED)
          ENTITY: fully_constrained_pair,	TYPE: BOOLEAN	(as DERIVED)
      *** ENTITY: universal_pair,	TYPE: BOOLEAN	(as DERIVED)
          ENTITY: unconstrained_pair,	TYPE: BOOLEAN	(as DERIVED)
          ENTITY: prismatic_pair,	TYPE: BOOLEAN	(as DERIVED)
          ENTITY: spherical_pair_with_pin,	TYPE: BOOLEAN	(as DERIVED)

    ATTR:  r_y,	TYPE: BOOLEAN -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: planar_pair,	TYPE: BOOLEAN	(as DERIVED)
          ENTITY: revolute_pair,	TYPE: BOOLEAN	(as DERIVED)
          ENTITY: cylindrical_pair,	TYPE: BOOLEAN	(as DERIVED)
          ENTITY: spherical_pair,	TYPE: BOOLEAN	(as DERIVED)
          ENTITY: fully_constrained_pair,	TYPE: BOOLEAN	(as DERIVED)
      *** ENTITY: universal_pair,	TYPE: BOOLEAN	(as DERIVED)
          ENTITY: unconstrained_pair,	TYPE: BOOLEAN	(as DERIVED)
          ENTITY: prismatic_pair,	TYPE: BOOLEAN	(as DERIVED)
          ENTITY: spherical_pair_with_pin,	TYPE: BOOLEAN	(as DERIVED)

    ATTR:  r_z,	TYPE: BOOLEAN -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: planar_pair,	TYPE: BOOLEAN	(as DERIVED)
          ENTITY: revolute_pair,	TYPE: BOOLEAN	(as DERIVED)
          ENTITY: cylindrical_pair,	TYPE: BOOLEAN	(as DERIVED)
          ENTITY: spherical_pair,	TYPE: BOOLEAN	(as DERIVED)
          ENTITY: fully_constrained_pair,	TYPE: BOOLEAN	(as DERIVED)
      *** ENTITY: universal_pair,	TYPE: BOOLEAN	(as DERIVED)
          ENTITY: unconstrained_pair,	TYPE: BOOLEAN	(as DERIVED)
          ENTITY: prismatic_pair,	TYPE: BOOLEAN	(as DERIVED)
          ENTITY: spherical_pair_with_pin,	TYPE: BOOLEAN	(as DERIVED)


  ENTITY(SELF)	universal_pair
    ATTR:  input_skew_angle,	TYPE: OPTIONAL plane_angle_measure -- EXPLICIT

    REDCR: t_x,	TYPE: BOOLEAN -- DERIVED (DYNAMIC)
      := FALSE
      -- OVERRIDING ENTITY: low_order_kinematic_pair

    REDCR: t_y,	TYPE: BOOLEAN -- DERIVED (DYNAMIC)
      := FALSE
      -- OVERRIDING ENTITY: low_order_kinematic_pair

    REDCR: t_z,	TYPE: BOOLEAN -- DERIVED (DYNAMIC)
      := FALSE
      -- OVERRIDING ENTITY: low_order_kinematic_pair

    REDCR: r_x,	TYPE: BOOLEAN -- DERIVED (DYNAMIC)
      := TRUE
      -- OVERRIDING ENTITY: low_order_kinematic_pair

    REDCR: r_y,	TYPE: BOOLEAN -- DERIVED (DYNAMIC)
      := FALSE
      -- OVERRIDING ENTITY: low_order_kinematic_pair

    REDCR: r_z,	TYPE: BOOLEAN -- DERIVED (DYNAMIC)
      := TRUE
      -- OVERRIDING ENTITY: low_order_kinematic_pair

    ATTR:  skew_angle,	TYPE: plane_angle_measure -- DERIVED
      := NVL( input_skew_angle, 0 )


  SUB- ENTITY(7)	homokinetic_pair
    (no local attributes)

  SUB- ENTITY(8)	universal_pair_with_range
    ATTR:  lower_limit_first_rotation,	TYPE: OPTIONAL plane_angle_measure -- EXPLICIT

    ATTR:  upper_limit_first_rotation,	TYPE: OPTIONAL plane_angle_measure -- EXPLICIT

    ATTR:  lower_limit_second_rotation,	TYPE: OPTIONAL plane_angle_measure -- EXPLICIT

    ATTR:  upper_limit_second_rotation,	TYPE: OPTIONAL plane_angle_measure -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _universal_pair : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eUNIVERSAL_PAIR.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _input_skew_angle: tPLANE_ANGLE_MEASURE?  // PLAIN EXPLICIT ATTRIBUTE

    /// DERIVE ATTRIBUTE REDEFINITION(origin: eLOW_ORDER_KINEMATIC_PAIR)
    /// - attribute value provider protocol conformance wrapper
    internal func _t_x__getter(complex: SDAI.ComplexEntity) -> SDAI.BOOLEAN {
      let SELF = complex.entityReference( eUNIVERSAL_PAIR.self )!
      return SDAI.UNWRAP( SDAI.BOOLEAN(SELF.T_X) )
    }
    /// DERIVE ATTRIBUTE REDEFINITION(origin: eLOW_ORDER_KINEMATIC_PAIR)
    /// - gut of derived attribute logic
    internal func _t_x__getter(SELF: eUNIVERSAL_PAIR) -> SDAI.BOOLEAN {
      let value = SDAI.BOOLEAN(SDAI.FALSE)
      return SDAI.UNWRAP( value )
    }

    /// DERIVE ATTRIBUTE REDEFINITION(origin: eLOW_ORDER_KINEMATIC_PAIR)
    /// - attribute value provider protocol conformance wrapper
    internal func _t_y__getter(complex: SDAI.ComplexEntity) -> SDAI.BOOLEAN {
      let SELF = complex.entityReference( eUNIVERSAL_PAIR.self )!
      return SDAI.UNWRAP( SDAI.BOOLEAN(SELF.T_Y) )
    }
    /// DERIVE ATTRIBUTE REDEFINITION(origin: eLOW_ORDER_KINEMATIC_PAIR)
    /// - gut of derived attribute logic
    internal func _t_y__getter(SELF: eUNIVERSAL_PAIR) -> SDAI.BOOLEAN {
      let value = SDAI.BOOLEAN(SDAI.FALSE)
      return SDAI.UNWRAP( value )
    }

    /// DERIVE ATTRIBUTE REDEFINITION(origin: eLOW_ORDER_KINEMATIC_PAIR)
    /// - attribute value provider protocol conformance wrapper
    internal func _t_z__getter(complex: SDAI.ComplexEntity) -> SDAI.BOOLEAN {
      let SELF = complex.entityReference( eUNIVERSAL_PAIR.self )!
      return SDAI.UNWRAP( SDAI.BOOLEAN(SELF.T_Z) )
    }
    /// DERIVE ATTRIBUTE REDEFINITION(origin: eLOW_ORDER_KINEMATIC_PAIR)
    /// - gut of derived attribute logic
    internal func _t_z__getter(SELF: eUNIVERSAL_PAIR) -> SDAI.BOOLEAN {
      let value = SDAI.BOOLEAN(SDAI.FALSE)
      return SDAI.UNWRAP( value )
    }

    /// DERIVE ATTRIBUTE REDEFINITION(origin: eLOW_ORDER_KINEMATIC_PAIR)
    /// - attribute value provider protocol conformance wrapper
    internal func _r_x__getter(complex: SDAI.ComplexEntity) -> SDAI.BOOLEAN {
      let SELF = complex.entityReference( eUNIVERSAL_PAIR.self )!
      return SDAI.UNWRAP( SDAI.BOOLEAN(SELF.R_X) )
    }
    /// DERIVE ATTRIBUTE REDEFINITION(origin: eLOW_ORDER_KINEMATIC_PAIR)
    /// - gut of derived attribute logic
    internal func _r_x__getter(SELF: eUNIVERSAL_PAIR) -> SDAI.BOOLEAN {
      let value = SDAI.BOOLEAN(SDAI.TRUE)
      return SDAI.UNWRAP( value )
    }

    /// DERIVE ATTRIBUTE REDEFINITION(origin: eLOW_ORDER_KINEMATIC_PAIR)
    /// - attribute value provider protocol conformance wrapper
    internal func _r_y__getter(complex: SDAI.ComplexEntity) -> SDAI.BOOLEAN {
      let SELF = complex.entityReference( eUNIVERSAL_PAIR.self )!
      return SDAI.UNWRAP( SDAI.BOOLEAN(SELF.R_Y) )
    }
    /// DERIVE ATTRIBUTE REDEFINITION(origin: eLOW_ORDER_KINEMATIC_PAIR)
    /// - gut of derived attribute logic
    internal func _r_y__getter(SELF: eUNIVERSAL_PAIR) -> SDAI.BOOLEAN {
      let value = SDAI.BOOLEAN(SDAI.FALSE)
      return SDAI.UNWRAP( value )
    }

    /// DERIVE ATTRIBUTE REDEFINITION(origin: eLOW_ORDER_KINEMATIC_PAIR)
    /// - attribute value provider protocol conformance wrapper
    internal func _r_z__getter(complex: SDAI.ComplexEntity) -> SDAI.BOOLEAN {
      let SELF = complex.entityReference( eUNIVERSAL_PAIR.self )!
      return SDAI.UNWRAP( SDAI.BOOLEAN(SELF.R_Z) )
    }
    /// DERIVE ATTRIBUTE REDEFINITION(origin: eLOW_ORDER_KINEMATIC_PAIR)
    /// - gut of derived attribute logic
    internal func _r_z__getter(SELF: eUNIVERSAL_PAIR) -> SDAI.BOOLEAN {
      let value = SDAI.BOOLEAN(SDAI.TRUE)
      return SDAI.UNWRAP( value )
    }

    /// DERIVE ATTRIBUTE
    internal func _skew_angle__getter(SELF: eUNIVERSAL_PAIR) -> tPLANE_ANGLE_MEASURE?  {

      let _TEMP1 = SDAI.NVL(V: SELF.INPUT_SKEW_ANGLE, 
                            SUBSTITUTE: 0)
      return _TEMP1
    }

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._input_skew_angle?.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._input_skew_angle?.value.isValueEqualOptionally(to: rhs._input_skew_angle?.value, visited: &comppairs)	{
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
      if let comp = self._input_skew_angle?.value.isValueEqualOptionally(to: rhs._input_skew_angle?.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eUNIVERSAL_PAIR?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = PLANE_ANGLE_FOR_PAIR_IN_RADIAN(
        PAIR: eKINEMATIC_PAIR(/*eUNIVERSAL_PAIR*/SELF), 
        ANGLE: SELF.SKEW_ANGLE)
      let _TEMP2 = SDAI.COS(_TEMP1)
      let _TEMP3 = _TEMP2 > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP3
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(INPUT_SKEW_ANGLE: tPLANE_ANGLE_MEASURE? ) {
      self._input_skew_angle = INPUT_SKEW_ANGLE
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverOptionalParameter(as: tPLANE_ANGLE_MEASURE.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( INPUT_SKEW_ANGLE: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY universal_pair
    SUBTYPE OF ( low_order_kinematic_pair );
      input_skew_angle  : OPTIONAL plane_angle_measure;
    DERIVE
      SELF\low_order_kinematic_pair.t_x : BOOLEAN := FALSE;
      SELF\low_order_kinematic_pair.t_y : BOOLEAN := FALSE;
      SELF\low_order_kinematic_pair.t_z : BOOLEAN := FALSE;
      SELF\low_order_kinematic_pair.r_x : BOOLEAN := TRUE;
      SELF\low_order_kinematic_pair.r_y : BOOLEAN := FALSE;
      SELF\low_order_kinematic_pair.r_z : BOOLEAN := TRUE;
      skew_angle                      : plane_angle_measure := NVL( input_skew_angle, 0 );
    WHERE
      wr1: ( COS( plane_angle_for_pair_in_radian( SELF, skew_angle ) ) > 0 );
  END_ENTITY; -- universal_pair (line:33280 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eUNIVERSAL_PAIR : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _universal_pair.self
    }
    public let partialEntity: _universal_pair

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_eITEM_DEFINED_TRANSFORMATION: eITEM_DEFINED_TRANSFORMATION 	// [3]
    public let super_eKINEMATIC_PAIR: eKINEMATIC_PAIR 	// [4]
    public let super_eLOW_ORDER_KINEMATIC_PAIR: eLOW_ORDER_KINEMATIC_PAIR 	// [5]
    public var super_eUNIVERSAL_PAIR: eUNIVERSAL_PAIR { return self } 	// [6]

    //MARK: SUBTYPES
    public var sub_eHOMOKINETIC_PAIR: eHOMOKINETIC_PAIR? {	// [7]
      return self.complexEntity.entityReference(eHOMOKINETIC_PAIR.self)
    }

    public var sub_eUNIVERSAL_PAIR_WITH_RANGE: eUNIVERSAL_PAIR_WITH_RANGE? {	// [8]
      return self.complexEntity.entityReference(eUNIVERSAL_PAIR_WITH_RANGE.self)
    }


    //MARK: ATTRIBUTES
    // NAME: (3 AMBIGUOUS REFs)

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eITEM_DEFINED_TRANSFORMATION`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        return super_eITEM_DEFINED_TRANSFORMATION.partialEntity._description
      }
      set(newValue) {
        let partial = super_eITEM_DEFINED_TRANSFORMATION.partialEntity
        partial._description = newValue
      }
    }

    /// __EXPLICIT REDEF(DERIVE)__ attribute
    /// - origin: SELF( ``eUNIVERSAL_PAIR`` )
    public var R_Y: SDAI.BOOLEAN {
      get {
        if let cached = cachedValue(derivedAttributeName:"R_Y") {
          return cached.value as! SDAI.BOOLEAN
        }
        let origin = self
        let value = SDAI.UNWRAP( origin.partialEntity._r_y__getter(SELF: origin) )
        updateCache(derivedAttributeName:"R_Y", value:value)
        return value
      }
    }

    /// __EXPLICIT REDEF(DERIVE)__ attribute
    /// - origin: SELF( ``eUNIVERSAL_PAIR`` )
    public var R_X: SDAI.BOOLEAN {
      get {
        if let cached = cachedValue(derivedAttributeName:"R_X") {
          return cached.value as! SDAI.BOOLEAN
        }
        let origin = self
        let value = SDAI.UNWRAP( origin.partialEntity._r_x__getter(SELF: origin) )
        updateCache(derivedAttributeName:"R_X", value:value)
        return value
      }
    }

    /// __EXPLICIT REDEF(DERIVE)__ attribute
    /// - origin: SELF( ``eUNIVERSAL_PAIR`` )
    public var R_Z: SDAI.BOOLEAN {
      get {
        if let cached = cachedValue(derivedAttributeName:"R_Z") {
          return cached.value as! SDAI.BOOLEAN
        }
        let origin = self
        let value = SDAI.UNWRAP( origin.partialEntity._r_z__getter(SELF: origin) )
        updateCache(derivedAttributeName:"R_Z", value:value)
        return value
      }
    }

    /// __INVERSE__ attribute
    /// observing ePAIR_REPRESENTATION_RELATIONSHIP .TRANSFORMATION_OPERATOR
    /// - origin: SUPER( ``eKINEMATIC_PAIR`` )
    public var LINK_REPRESENTATION_ASSOCIATIONS: SDAI.SET<ePAIR_REPRESENTATION_RELATIONSHIP>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( super_eKINEMATIC_PAIR.partialEntity._link_representation_associations )
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SUPER( ``eKINEMATIC_PAIR`` )
    public var TRANSFORM_ITEM_1: sRIGID_PLACEMENT {
      get {
        return SDAI.UNWRAP( sRIGID_PLACEMENT( super_eITEM_DEFINED_TRANSFORMATION.partialEntity
          ._transform_item_1 ) )
      }
      set(newValue) {
        let partial = super_eITEM_DEFINED_TRANSFORMATION.partialEntity
        partial._transform_item_1 = SDAI.UNWRAP(
          eREPRESENTATION_ITEM(newValue))
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SUPER( ``eKINEMATIC_PAIR`` )
    public var TRANSFORM_ITEM_2: sRIGID_PLACEMENT {
      get {
        return SDAI.UNWRAP( sRIGID_PLACEMENT( super_eITEM_DEFINED_TRANSFORMATION.partialEntity
          ._transform_item_2 ) )
      }
      set(newValue) {
        let partial = super_eITEM_DEFINED_TRANSFORMATION.partialEntity
        partial._transform_item_2 = SDAI.UNWRAP(
          eREPRESENTATION_ITEM(newValue))
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eUNIVERSAL_PAIR_WITH_RANGE`` )
    public var LOWER_LIMIT_SECOND_ROTATION: tPLANE_ANGLE_MEASURE?  {
      get {
        return sub_eUNIVERSAL_PAIR_WITH_RANGE?.partialEntity._lower_limit_second_rotation
      }
      set(newValue) {
        guard let partial = sub_eUNIVERSAL_PAIR_WITH_RANGE?.super_eUNIVERSAL_PAIR_WITH_RANGE.partialEntity
          else { return }
        partial._lower_limit_second_rotation = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eUNIVERSAL_PAIR_WITH_RANGE`` )
    public var UPPER_LIMIT_FIRST_ROTATION: tPLANE_ANGLE_MEASURE?  {
      get {
        return sub_eUNIVERSAL_PAIR_WITH_RANGE?.partialEntity._upper_limit_first_rotation
      }
      set(newValue) {
        guard let partial = sub_eUNIVERSAL_PAIR_WITH_RANGE?.super_eUNIVERSAL_PAIR_WITH_RANGE.partialEntity
          else { return }
        partial._upper_limit_first_rotation = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eUNIVERSAL_PAIR`` )
    public var INPUT_SKEW_ANGLE: tPLANE_ANGLE_MEASURE?  {
      get {
        return self.partialEntity._input_skew_angle
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._input_skew_angle = newValue
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SELF( ``eUNIVERSAL_PAIR`` )
    public var SKEW_ANGLE: tPLANE_ANGLE_MEASURE?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"SKEW_ANGLE") {
          return cached.value as! tPLANE_ANGLE_MEASURE? 
        }
        let origin = self
        let value = origin.partialEntity._skew_angle__getter(SELF: origin)
        updateCache(derivedAttributeName:"SKEW_ANGLE", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eKINEMATIC_PAIR`` )
    public var JOINT: eKINEMATIC_JOINT {
      get {
        return SDAI.UNWRAP( super_eKINEMATIC_PAIR.partialEntity._joint )
      }
      set(newValue) {
        let partial = super_eKINEMATIC_PAIR.partialEntity
        partial._joint = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eUNIVERSAL_PAIR_WITH_RANGE`` )
    public var LOWER_LIMIT_FIRST_ROTATION: tPLANE_ANGLE_MEASURE?  {
      get {
        return sub_eUNIVERSAL_PAIR_WITH_RANGE?.partialEntity._lower_limit_first_rotation
      }
      set(newValue) {
        guard let partial = sub_eUNIVERSAL_PAIR_WITH_RANGE?.super_eUNIVERSAL_PAIR_WITH_RANGE.partialEntity
          else { return }
        partial._lower_limit_first_rotation = newValue
      }
    }

    /// __EXPLICIT REDEF(DERIVE)__ attribute
    /// - origin: SELF( ``eUNIVERSAL_PAIR`` )
    public var T_Z: SDAI.BOOLEAN {
      get {
        if let cached = cachedValue(derivedAttributeName:"T_Z") {
          return cached.value as! SDAI.BOOLEAN
        }
        let origin = self
        let value = SDAI.UNWRAP( origin.partialEntity._t_z__getter(SELF: origin) )
        updateCache(derivedAttributeName:"T_Z", value:value)
        return value
      }
    }

    /// __EXPLICIT REDEF(DERIVE)__ attribute
    /// - origin: SELF( ``eUNIVERSAL_PAIR`` )
    public var T_Y: SDAI.BOOLEAN {
      get {
        if let cached = cachedValue(derivedAttributeName:"T_Y") {
          return cached.value as! SDAI.BOOLEAN
        }
        let origin = self
        let value = SDAI.UNWRAP( origin.partialEntity._t_y__getter(SELF: origin) )
        updateCache(derivedAttributeName:"T_Y", value:value)
        return value
      }
    }

    /// __EXPLICIT REDEF(DERIVE)__ attribute
    /// - origin: SELF( ``eUNIVERSAL_PAIR`` )
    public var T_X: SDAI.BOOLEAN {
      get {
        if let cached = cachedValue(derivedAttributeName:"T_X") {
          return cached.value as! SDAI.BOOLEAN
        }
        let origin = self
        let value = SDAI.UNWRAP( origin.partialEntity._t_x__getter(SELF: origin) )
        updateCache(derivedAttributeName:"T_X", value:value)
        return value
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eKINEMATIC_PAIR`` )
    public var ASSOCIATED_LINK_REPRESENTATIONS_1: (SDAI.SET<eKINEMATIC_LINK_REPRESENTATION>/*[1:nil]*/ )?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"ASSOCIATED_LINK_REPRESENTATIONS_1") {
          return cached.value as! (SDAI.SET<eKINEMATIC_LINK_REPRESENTATION>/*[1:nil]*/ )? 
        }
        let origin = super_eKINEMATIC_PAIR
        let value = SDAI.SET<eKINEMATIC_LINK_REPRESENTATION>(
          origin.partialEntity._associated_link_representations_1__getter(SELF: origin))
        updateCache(derivedAttributeName:"ASSOCIATED_LINK_REPRESENTATIONS_1", value:value)
        return value
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eKINEMATIC_PAIR`` )
    public var ASSOCIATED_LINK_REPRESENTATIONS_2: (SDAI.SET<eKINEMATIC_LINK_REPRESENTATION>/*[1:nil]*/ )?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"ASSOCIATED_LINK_REPRESENTATIONS_2") {
          return cached.value as! (SDAI.SET<eKINEMATIC_LINK_REPRESENTATION>/*[1:nil]*/ )? 
        }
        let origin = super_eKINEMATIC_PAIR
        let value = SDAI.SET<eKINEMATIC_LINK_REPRESENTATION>(
          origin.partialEntity._associated_link_representations_2__getter(SELF: origin))
        updateCache(derivedAttributeName:"ASSOCIATED_LINK_REPRESENTATIONS_2", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eUNIVERSAL_PAIR_WITH_RANGE`` )
    public var UPPER_LIMIT_SECOND_ROTATION: tPLANE_ANGLE_MEASURE?  {
      get {
        return sub_eUNIVERSAL_PAIR_WITH_RANGE?.partialEntity._upper_limit_second_rotation
      }
      set(newValue) {
        guard let partial = sub_eUNIVERSAL_PAIR_WITH_RANGE?.super_eUNIVERSAL_PAIR_WITH_RANGE.partialEntity
          else { return }
        partial._upper_limit_second_rotation = newValue
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
      guard let partial = complexEntity?.partialEntityInstance(_universal_pair.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(eITEM_DEFINED_TRANSFORMATION.self) else { return nil }
      self.super_eITEM_DEFINED_TRANSFORMATION = super3

      guard let super4 = complexEntity?.entityReference(eKINEMATIC_PAIR.self) else { return nil }
      self.super_eKINEMATIC_PAIR = super4

      guard let super5 = complexEntity?.entityReference(eLOW_ORDER_KINEMATIC_PAIR.self) else { return nil }
      self.super_eLOW_ORDER_KINEMATIC_PAIR = super5

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
      result[prefix2 + " .WHERE_wr1"] = _universal_pair.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "UNIVERSAL_PAIR", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eITEM_DEFINED_TRANSFORMATION.self)
      entityDef.add(supertype: eKINEMATIC_PAIR.self)
      entityDef.add(supertype: eLOW_ORDER_KINEMATIC_PAIR.self)
      entityDef.add(supertype: eUNIVERSAL_PAIR.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eUNIVERSAL_PAIR.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "R_Y", keyPath: \eUNIVERSAL_PAIR.R_Y, 
        kind: .derivedRedeclaring, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "R_X", keyPath: \eUNIVERSAL_PAIR.R_X, 
        kind: .derivedRedeclaring, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "R_Z", keyPath: \eUNIVERSAL_PAIR.R_Z, 
        kind: .derivedRedeclaring, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "LINK_REPRESENTATION_ASSOCIATIONS", keyPath: \eUNIVERSAL_PAIR.LINK_REPRESENTATION_ASSOCIATIONS, 
        kind: .inverse, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "TRANSFORM_ITEM_1", keyPath: \eUNIVERSAL_PAIR.TRANSFORM_ITEM_1, 
        kind: .explicitRedeclaring, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "TRANSFORM_ITEM_2", keyPath: \eUNIVERSAL_PAIR.TRANSFORM_ITEM_2, 
        kind: .explicitRedeclaring, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "LOWER_LIMIT_SECOND_ROTATION", keyPath: \eUNIVERSAL_PAIR.LOWER_LIMIT_SECOND_ROTATION, 
        kind: .explicitOptional, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "UPPER_LIMIT_FIRST_ROTATION", keyPath: \eUNIVERSAL_PAIR.UPPER_LIMIT_FIRST_ROTATION, 
        kind: .explicitOptional, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "INPUT_SKEW_ANGLE", keyPath: \eUNIVERSAL_PAIR.INPUT_SKEW_ANGLE, 
        kind: .explicitOptional, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SKEW_ANGLE", keyPath: \eUNIVERSAL_PAIR.SKEW_ANGLE, 
        kind: .derived, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "JOINT", keyPath: \eUNIVERSAL_PAIR.JOINT, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "LOWER_LIMIT_FIRST_ROTATION", keyPath: \eUNIVERSAL_PAIR.LOWER_LIMIT_FIRST_ROTATION, 
        kind: .explicitOptional, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "T_Z", keyPath: \eUNIVERSAL_PAIR.T_Z, 
        kind: .derivedRedeclaring, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "T_Y", keyPath: \eUNIVERSAL_PAIR.T_Y, 
        kind: .derivedRedeclaring, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "T_X", keyPath: \eUNIVERSAL_PAIR.T_X, 
        kind: .derivedRedeclaring, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ASSOCIATED_LINK_REPRESENTATIONS_1", keyPath: \eUNIVERSAL_PAIR.ASSOCIATED_LINK_REPRESENTATIONS_1, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ASSOCIATED_LINK_REPRESENTATIONS_2", keyPath: \eUNIVERSAL_PAIR.ASSOCIATED_LINK_REPRESENTATIONS_2, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "UPPER_LIMIT_SECOND_ROTATION", keyPath: \eUNIVERSAL_PAIR.UPPER_LIMIT_SECOND_ROTATION, 
        kind: .explicitOptional, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \eUNIVERSAL_PAIR.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}

//MARK: - partial Entity Dynamic Attribute Protocol Conformances
extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF._universal_pair :
  eLOW_ORDER_KINEMATIC_PAIR__T_X__provider, eLOW_ORDER_KINEMATIC_PAIR__T_Y__provider, 
  eLOW_ORDER_KINEMATIC_PAIR__T_Z__provider, eLOW_ORDER_KINEMATIC_PAIR__R_X__provider, 
  eLOW_ORDER_KINEMATIC_PAIR__R_Y__provider, eLOW_ORDER_KINEMATIC_PAIR__R_Z__provider {}
