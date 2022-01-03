/* file: solid_with_stepped_round_hole.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY solid_with_stepped_round_hole
    SUPERTYPE OF ( 
        solid_with_stepped_round_hole_and_conical_transitions 
        ANDOR
        ONEOF ( 
            solid_with_flat_bottom_round_hole, 
            solid_with_conical_bottom_round_hole, 
            solid_with_spherical_bottom_round_hole ) )
    SUBTYPE OF ( solid_with_hole );
      segments        : positive_integer;
      segment_radii   : LIST [1 : segments] OF positive_length_measure;
      segment_depths  : LIST [1 : segments] OF positive_length_measure;
    DERIVE
      SELF\solid_with_depression.depth : positive_length_measure := compute_total_depth( SELF );
    WHERE
      wr1: ( NOT ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SOLID_WITH_THROUGH_DEPRESSION' IN 
               TYPEOF( SELF ) ) AND ( SIZEOF( TYPEOF( SELF ) * [
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SOLID_WITH_FLAT_BOTTOM_ROUND_HOLE' , 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SOLID_WITH_SPHERICAL_BOTTOM_ROUND_HOLE' , 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SOLID_WITH_FLAT_BOTTOM_ROUND_HOLE' ] ) <> 0 ) ) );
  END_ENTITY; -- solid_with_stepped_round_hole (line:30173 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(2)	geometric_representation_item
    ATTR:  dim,	TYPE: dimension_count -- DERIVED
      := dimension_of( SELF )


  SUPER- ENTITY(3)	solid_model
    (no local attributes)

  SUPER- ENTITY(4)	modified_solid
    ATTR:  rationale,	TYPE: text -- EXPLICIT

    ATTR:  base_solid,	TYPE: base_solid_select -- EXPLICIT


  SUPER- ENTITY(5)	modified_solid_with_placed_configuration
    ATTR:  placing,	TYPE: axis2_placement_3d -- EXPLICIT


  SUPER- ENTITY(6)	solid_with_depression
    ATTR:  depth,	TYPE: positive_length_measure -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
      *** ENTITY: solid_with_stepped_round_hole,	TYPE: positive_length_measure	(as DERIVED)


  SUPER- ENTITY(7)	solid_with_hole
    (no local attributes)

  ENTITY(SELF)	solid_with_stepped_round_hole
    ATTR:  segments,	TYPE: positive_integer -- EXPLICIT

    ATTR:  segment_radii,	TYPE: LIST [1 : segments] OF positive_length_measure -- EXPLICIT

    ATTR:  segment_depths,	TYPE: LIST [1 : segments] OF positive_length_measure -- EXPLICIT

    REDCR: depth,	TYPE: positive_length_measure -- DERIVED (DYNAMIC)
      := compute_total_depth( SELF )
      -- OVERRIDING ENTITY: solid_with_depression


  SUB- ENTITY(9)	solid_with_spherical_bottom_round_hole
    ATTR:  sphere_radius,	TYPE: positive_length_measure -- EXPLICIT


  SUB- ENTITY(10)	solid_with_flat_bottom_round_hole
    ATTR:  fillet_radius,	TYPE: non_negative_length_measure -- EXPLICIT


  SUB- ENTITY(11)	solid_with_stepped_round_hole_and_conical_transitions
    ATTR:  conical_transitions,	TYPE: SET [1 : ?] OF conical_stepped_hole_transition -- EXPLICIT


  SUB- ENTITY(12)	solid_with_conical_bottom_round_hole
    ATTR:  semi_apex_angle,	TYPE: positive_plane_angle_measure -- EXPLICIT

    ATTR:  tip_radius,	TYPE: non_negative_length_measure -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _solid_with_stepped_round_hole : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eSOLID_WITH_STEPPED_ROUND_HOLE.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _segments: tPOSITIVE_INTEGER // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _segment_radii: SDAI.LIST<tPOSITIVE_LENGTH_MEASURE>/*[1:SEGMENTS]*/  // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _segment_depths: SDAI.LIST<tPOSITIVE_LENGTH_MEASURE>/*[1:SEGMENTS]*/  // PLAIN EXPLICIT ATTRIBUTE

    /// DERIVE ATTRIBUTE REDEFINITION(origin: eSOLID_WITH_DEPRESSION)
    /// - attribute value provider protocol conformance wrapper
    internal func _depth__getter(complex: SDAI.ComplexEntity) -> tPOSITIVE_LENGTH_MEASURE {
      let SELF = complex.entityReference( eSOLID_WITH_STEPPED_ROUND_HOLE.self )!
      return SDAI.UNWRAP( tPOSITIVE_LENGTH_MEASURE(SELF.DEPTH) )
    }
    /// DERIVE ATTRIBUTE REDEFINITION(origin: eSOLID_WITH_DEPRESSION)
    /// - gut of derived attribute logic
    internal func _depth__getter(SELF: eSOLID_WITH_STEPPED_ROUND_HOLE) -> tPOSITIVE_LENGTH_MEASURE {

      let _TEMP1 = COMPUTE_TOTAL_DEPTH(SELF)
      let value = _TEMP1
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
      self._segments.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._segment_radii.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._segment_depths.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._segments.value.isValueEqualOptionally(to: rhs._segments.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._segment_radii.value.isValueEqualOptionally(to: rhs._segment_radii.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._segment_depths.value.isValueEqualOptionally(to: rhs._segment_depths.value, visited: &comppairs)	{
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
      if let comp = self._segments.value.isValueEqualOptionally(to: rhs._segments.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._segment_radii.value.isValueEqualOptionally(to: rhs._segment_radii.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._segment_depths.value.isValueEqualOptionally(to: rhs._segment_depths.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eSOLID_WITH_STEPPED_ROUND_HOLE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF, IS: eSOLID_WITH_THROUGH_DEPRESSION.self)
      let _TEMP2 = SDAI.TYPEOF(SELF)
      let _TEMP3 = ([SDAI.AIE(SDAI.STRING(
        "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SOLID_WITH_FLAT_BOTTOM_ROUND_HOLE")), 
        SDAI.AIE(SDAI.STRING(
        "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SOLID_WITH_SPHERICAL_BOTTOM_ROUND_HOLE")), 
        SDAI.AIE(SDAI.STRING(
        "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SOLID_WITH_FLAT_BOTTOM_ROUND_HOLE"))] 
        as [SDAI.AggregationInitializerElement<SDAI.STRING>])
      let _TEMP4 = SDAI.FORCE_OPTIONAL(_TEMP2) * SDAI.FORCE_OPTIONAL(_TEMP3)
      let _TEMP5 = SDAI.SIZEOF(_TEMP4)
      let _TEMP6 = _TEMP5 .!=. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      let _TEMP7 = _TEMP1 && _TEMP6
      let _TEMP8 =  !_TEMP7
      return _TEMP8
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(SEGMENTS: tPOSITIVE_INTEGER, SEGMENT_RADII: SDAI.LIST<tPOSITIVE_LENGTH_MEASURE>/*[1:SEGMENTS]*/ , 
                SEGMENT_DEPTHS: SDAI.LIST<tPOSITIVE_LENGTH_MEASURE>/*[1:SEGMENTS]*/ ) {
      self._segments = SEGMENTS
      self._segment_radii = SEGMENT_RADII
      self._segment_depths = SEGMENT_DEPTHS
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 3
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: tPOSITIVE_INTEGER.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: SDAI.LIST<
        tPOSITIVE_LENGTH_MEASURE>.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p2) = exchangeStructure.recoverRequiredParameter(as: SDAI.LIST<
        tPOSITIVE_LENGTH_MEASURE>.self, from: parameters[2])
      else { exchangeStructure.add(errorContext: "while recovering parameter #2 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( SEGMENTS: p0, SEGMENT_RADII: p1, SEGMENT_DEPTHS: p2 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY solid_with_stepped_round_hole
    SUPERTYPE OF ( 
        solid_with_stepped_round_hole_and_conical_transitions 
        ANDOR
        ONEOF ( 
            solid_with_flat_bottom_round_hole, 
            solid_with_conical_bottom_round_hole, 
            solid_with_spherical_bottom_round_hole ) )
    SUBTYPE OF ( solid_with_hole );
      segments        : positive_integer;
      segment_radii   : LIST [1 : segments] OF positive_length_measure;
      segment_depths  : LIST [1 : segments] OF positive_length_measure;
    DERIVE
      SELF\solid_with_depression.depth : positive_length_measure := compute_total_depth( SELF );
    WHERE
      wr1: ( NOT ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SOLID_WITH_THROUGH_DEPRESSION' IN 
               TYPEOF( SELF ) ) AND ( SIZEOF( TYPEOF( SELF ) * [
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SOLID_WITH_FLAT_BOTTOM_ROUND_HOLE' , 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SOLID_WITH_SPHERICAL_BOTTOM_ROUND_HOLE' , 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SOLID_WITH_FLAT_BOTTOM_ROUND_HOLE' ] ) <> 0 ) ) );
  END_ENTITY; -- solid_with_stepped_round_hole (line:30173 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eSOLID_WITH_STEPPED_ROUND_HOLE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _solid_with_stepped_round_hole.self
    }
    public let partialEntity: _solid_with_stepped_round_hole

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_eSOLID_MODEL: eSOLID_MODEL 	// [3]
    public let super_eMODIFIED_SOLID: eMODIFIED_SOLID 	// [4]
    public let super_eMODIFIED_SOLID_WITH_PLACED_CONFIGURATION: eMODIFIED_SOLID_WITH_PLACED_CONFIGURATION 	// [5]
    public let super_eSOLID_WITH_DEPRESSION: eSOLID_WITH_DEPRESSION 	// [6]
    public let super_eSOLID_WITH_HOLE: eSOLID_WITH_HOLE 	// [7]
    public var super_eSOLID_WITH_STEPPED_ROUND_HOLE: eSOLID_WITH_STEPPED_ROUND_HOLE { return self } 	// [8]

    //MARK: SUBTYPES
    public var sub_eSOLID_WITH_SPHERICAL_BOTTOM_ROUND_HOLE: eSOLID_WITH_SPHERICAL_BOTTOM_ROUND_HOLE? {	// [9]
      return self.complexEntity.entityReference(eSOLID_WITH_SPHERICAL_BOTTOM_ROUND_HOLE.self)
    }

    public var sub_eSOLID_WITH_FLAT_BOTTOM_ROUND_HOLE: eSOLID_WITH_FLAT_BOTTOM_ROUND_HOLE? {	// [10]
      return self.complexEntity.entityReference(eSOLID_WITH_FLAT_BOTTOM_ROUND_HOLE.self)
    }

    public var sub_eSOLID_WITH_STEPPED_ROUND_HOLE_AND_CONICAL_TRANSITIONS: eSOLID_WITH_STEPPED_ROUND_HOLE_AND_CONICAL_TRANSITIONS? {	// [11]
      return self.complexEntity.entityReference(eSOLID_WITH_STEPPED_ROUND_HOLE_AND_CONICAL_TRANSITIONS.self)
    }

    public var sub_eSOLID_WITH_CONICAL_BOTTOM_ROUND_HOLE: eSOLID_WITH_CONICAL_BOTTOM_ROUND_HOLE? {	// [12]
      return self.complexEntity.entityReference(eSOLID_WITH_CONICAL_BOTTOM_ROUND_HOLE.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eSOLID_WITH_STEPPED_ROUND_HOLE`` )
    public var SEGMENT_RADII: SDAI.LIST<tPOSITIVE_LENGTH_MEASURE>/*[1:SEGMENTS]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._segment_radii )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._segment_radii = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eSOLID_WITH_CONICAL_BOTTOM_ROUND_HOLE`` )
    public var TIP_RADIUS: tNON_NEGATIVE_LENGTH_MEASURE?  {
      get {
        return sub_eSOLID_WITH_CONICAL_BOTTOM_ROUND_HOLE?.partialEntity._tip_radius
      }
      set(newValue) {
        guard let partial = sub_eSOLID_WITH_CONICAL_BOTTOM_ROUND_HOLE?.super_eSOLID_WITH_CONICAL_BOTTOM_ROUND_HOLE
          .partialEntity else { return }
        partial._tip_radius = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eSOLID_WITH_FLAT_BOTTOM_ROUND_HOLE`` )
    public var FILLET_RADIUS: tNON_NEGATIVE_LENGTH_MEASURE?  {
      get {
        return sub_eSOLID_WITH_FLAT_BOTTOM_ROUND_HOLE?.partialEntity._fillet_radius
      }
      set(newValue) {
        guard let partial = sub_eSOLID_WITH_FLAT_BOTTOM_ROUND_HOLE?.super_eSOLID_WITH_FLAT_BOTTOM_ROUND_HOLE
          .partialEntity else { return }
        partial._fillet_radius = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eSOLID_WITH_STEPPED_ROUND_HOLE_AND_CONICAL_TRANSITIONS`` )
    public var CONICAL_TRANSITIONS: (SDAI.SET<eCONICAL_STEPPED_HOLE_TRANSITION>/*[1:nil]*/ )?  {
      get {
        return sub_eSOLID_WITH_STEPPED_ROUND_HOLE_AND_CONICAL_TRANSITIONS?.partialEntity._conical_transitions
      }
      set(newValue) {
        guard let partial = sub_eSOLID_WITH_STEPPED_ROUND_HOLE_AND_CONICAL_TRANSITIONS?.super_eSOLID_WITH_STEPPED_ROUND_HOLE_AND_CONICAL_TRANSITIONS
          .partialEntity else { return }
        partial._conical_transitions = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eMODIFIED_SOLID`` )
    public var RATIONALE: tTEXT {
      get {
        return SDAI.UNWRAP( super_eMODIFIED_SOLID.partialEntity._rationale )
      }
      set(newValue) {
        let partial = super_eMODIFIED_SOLID.partialEntity
        partial._rationale = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eMODIFIED_SOLID`` )
    public var BASE_SOLID: sBASE_SOLID_SELECT {
      get {
        return SDAI.UNWRAP( super_eMODIFIED_SOLID.partialEntity._base_solid )
      }
      set(newValue) {
        let partial = super_eMODIFIED_SOLID.partialEntity
        partial._base_solid = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eSOLID_WITH_STEPPED_ROUND_HOLE`` )
    public var SEGMENT_DEPTHS: SDAI.LIST<tPOSITIVE_LENGTH_MEASURE>/*[1:SEGMENTS]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._segment_depths )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._segment_depths = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eSOLID_WITH_SPHERICAL_BOTTOM_ROUND_HOLE`` )
    public var SPHERE_RADIUS: tPOSITIVE_LENGTH_MEASURE?  {
      get {
        return sub_eSOLID_WITH_SPHERICAL_BOTTOM_ROUND_HOLE?.partialEntity._sphere_radius
      }
      set(newValue) {
        guard let partial = sub_eSOLID_WITH_SPHERICAL_BOTTOM_ROUND_HOLE?.super_eSOLID_WITH_SPHERICAL_BOTTOM_ROUND_HOLE
          .partialEntity else { return }
        partial._sphere_radius = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eSOLID_WITH_STEPPED_ROUND_HOLE`` )
    public var SEGMENTS: tPOSITIVE_INTEGER {
      get {
        return SDAI.UNWRAP( self.partialEntity._segments )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._segments = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eSOLID_WITH_CONICAL_BOTTOM_ROUND_HOLE`` )
    public var SEMI_APEX_ANGLE: tPOSITIVE_PLANE_ANGLE_MEASURE?  {
      get {
        return sub_eSOLID_WITH_CONICAL_BOTTOM_ROUND_HOLE?.partialEntity._semi_apex_angle
      }
      set(newValue) {
        guard let partial = sub_eSOLID_WITH_CONICAL_BOTTOM_ROUND_HOLE?.super_eSOLID_WITH_CONICAL_BOTTOM_ROUND_HOLE
          .partialEntity else { return }
        partial._semi_apex_angle = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eMODIFIED_SOLID_WITH_PLACED_CONFIGURATION`` )
    public var PLACING: eAXIS2_PLACEMENT_3D {
      get {
        return SDAI.UNWRAP( super_eMODIFIED_SOLID_WITH_PLACED_CONFIGURATION.partialEntity._placing )
      }
      set(newValue) {
        let partial = super_eMODIFIED_SOLID_WITH_PLACED_CONFIGURATION.partialEntity
        partial._placing = SDAI.UNWRAP(newValue)
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

    /// __EXPLICIT REDEF(DERIVE)__ attribute
    /// - origin: SELF( ``eSOLID_WITH_STEPPED_ROUND_HOLE`` )
    public var DEPTH: tPOSITIVE_LENGTH_MEASURE {
      get {
        if let cached = cachedValue(derivedAttributeName:"DEPTH") {
          return cached.value as! tPOSITIVE_LENGTH_MEASURE
        }
        let origin = self
        let value = SDAI.UNWRAP( origin.partialEntity._depth__getter(SELF: origin) )
        updateCache(derivedAttributeName:"DEPTH", value:value)
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
      guard let partial = complexEntity?.partialEntityInstance(_solid_with_stepped_round_hole.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(eSOLID_MODEL.self) else { return nil }
      self.super_eSOLID_MODEL = super3

      guard let super4 = complexEntity?.entityReference(eMODIFIED_SOLID.self) else { return nil }
      self.super_eMODIFIED_SOLID = super4

      guard let super5 = complexEntity?.entityReference(eMODIFIED_SOLID_WITH_PLACED_CONFIGURATION.self) else { return nil }
      self.super_eMODIFIED_SOLID_WITH_PLACED_CONFIGURATION = super5

      guard let super6 = complexEntity?.entityReference(eSOLID_WITH_DEPRESSION.self) else { return nil }
      self.super_eSOLID_WITH_DEPRESSION = super6

      guard let super7 = complexEntity?.entityReference(eSOLID_WITH_HOLE.self) else { return nil }
      self.super_eSOLID_WITH_HOLE = super7

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
      result[prefix2 + " .WHERE_wr1"] = _solid_with_stepped_round_hole.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "SOLID_WITH_STEPPED_ROUND_HOLE", type: self, explicitAttributeCount: 3)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eSOLID_MODEL.self)
      entityDef.add(supertype: eMODIFIED_SOLID.self)
      entityDef.add(supertype: eMODIFIED_SOLID_WITH_PLACED_CONFIGURATION.self)
      entityDef.add(supertype: eSOLID_WITH_DEPRESSION.self)
      entityDef.add(supertype: eSOLID_WITH_HOLE.self)
      entityDef.add(supertype: eSOLID_WITH_STEPPED_ROUND_HOLE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "SEGMENT_RADII", keyPath: \eSOLID_WITH_STEPPED_ROUND_HOLE.SEGMENT_RADII, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "TIP_RADIUS", keyPath: \eSOLID_WITH_STEPPED_ROUND_HOLE.TIP_RADIUS, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "FILLET_RADIUS", keyPath: \eSOLID_WITH_STEPPED_ROUND_HOLE.FILLET_RADIUS, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "CONICAL_TRANSITIONS", keyPath: \eSOLID_WITH_STEPPED_ROUND_HOLE.CONICAL_TRANSITIONS, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RATIONALE", keyPath: \eSOLID_WITH_STEPPED_ROUND_HOLE.RATIONALE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "BASE_SOLID", keyPath: \eSOLID_WITH_STEPPED_ROUND_HOLE.BASE_SOLID, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "SEGMENT_DEPTHS", keyPath: \eSOLID_WITH_STEPPED_ROUND_HOLE.SEGMENT_DEPTHS, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SPHERE_RADIUS", keyPath: \eSOLID_WITH_STEPPED_ROUND_HOLE.SPHERE_RADIUS, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SEGMENTS", keyPath: \eSOLID_WITH_STEPPED_ROUND_HOLE.SEGMENTS, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SEMI_APEX_ANGLE", keyPath: \eSOLID_WITH_STEPPED_ROUND_HOLE.SEMI_APEX_ANGLE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "PLACING", keyPath: \eSOLID_WITH_STEPPED_ROUND_HOLE.PLACING, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eSOLID_WITH_STEPPED_ROUND_HOLE.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DEPTH", keyPath: \eSOLID_WITH_STEPPED_ROUND_HOLE.DEPTH, 
        kind: .derivedRedeclaring, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \eSOLID_WITH_STEPPED_ROUND_HOLE.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}

//MARK: - partial Entity Dynamic Attribute Protocol Conformances
extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF._solid_with_stepped_round_hole :
  eSOLID_WITH_DEPRESSION__DEPTH__provider {}
