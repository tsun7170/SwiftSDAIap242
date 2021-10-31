/* file: solid_with_hole.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  ENTITY solid_with_hole
    ABSTRACT SUPERTYPE OF ( 
        solid_with_stepped_round_hole )
    SUBTYPE OF ( solid_with_depression );
  END_ENTITY; -- solid_with_hole (line:30055 file:ap242ed2_mim_lf_v1.101.TY.exp)

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
          ENTITY: solid_with_stepped_round_hole,	TYPE: positive_length_measure	(as DERIVED)


  ENTITY(SELF)	solid_with_hole
    (no local attributes)

  SUB- ENTITY(8)	solid_with_spherical_bottom_round_hole
    ATTR:  sphere_radius,	TYPE: positive_length_measure -- EXPLICIT


  SUB- ENTITY(9)	solid_with_flat_bottom_round_hole
    ATTR:  fillet_radius,	TYPE: non_negative_length_measure -- EXPLICIT


  SUB- ENTITY(10)	solid_with_stepped_round_hole_and_conical_transitions
    ATTR:  conical_transitions,	TYPE: SET [1 : ?] OF conical_stepped_hole_transition -- EXPLICIT


  SUB- ENTITY(11)	solid_with_conical_bottom_round_hole
    ATTR:  semi_apex_angle,	TYPE: positive_plane_angle_measure -- EXPLICIT

    ATTR:  tip_radius,	TYPE: non_negative_length_measure -- EXPLICIT


  SUB- ENTITY(12)	solid_with_stepped_round_hole
    ATTR:  segments,	TYPE: positive_integer -- EXPLICIT

    ATTR:  segment_radii,	TYPE: LIST [1 : segments] OF positive_length_measure -- EXPLICIT

    ATTR:  segment_depths,	TYPE: LIST [1 : segments] OF positive_length_measure -- EXPLICIT

    REDCR: depth,	TYPE: positive_length_measure -- DERIVED (DYNAMIC)
      := compute_total_depth( SELF )
      -- OVERRIDING ENTITY: solid_with_depression


*/


//MARK: - Partial Entity
  public final class _solid_with_hole : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eSOLID_WITH_HOLE.self
    }

    //ATTRIBUTES
    // (no local attributes)

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      return true
    }

    public override func isValueEqualOptionally(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      guard let rhs = rhs as? Self else { return false }
      var result: Bool? = true
      if let comp = super.isValueEqualOptionally(to: rhs, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init() {
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 0
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      self.init( )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY solid_with_hole
    ABSTRACT SUPERTYPE OF ( 
        solid_with_stepped_round_hole )
    SUBTYPE OF ( solid_with_depression );
  END_ENTITY; -- solid_with_hole (line:30055 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eSOLID_WITH_HOLE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _solid_with_hole.self
    }
    public let partialEntity: _solid_with_hole

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_eSOLID_MODEL: eSOLID_MODEL 	// [3]
    public let super_eMODIFIED_SOLID: eMODIFIED_SOLID 	// [4]
    public let super_eMODIFIED_SOLID_WITH_PLACED_CONFIGURATION: eMODIFIED_SOLID_WITH_PLACED_CONFIGURATION 	// [5]
    public let super_eSOLID_WITH_DEPRESSION: eSOLID_WITH_DEPRESSION 	// [6]
    public var super_eSOLID_WITH_HOLE: eSOLID_WITH_HOLE { return self } 	// [7]

    //MARK: SUBTYPES
    public var sub_eSOLID_WITH_SPHERICAL_BOTTOM_ROUND_HOLE: eSOLID_WITH_SPHERICAL_BOTTOM_ROUND_HOLE? {	// [8]
      return self.complexEntity.entityReference(eSOLID_WITH_SPHERICAL_BOTTOM_ROUND_HOLE.self)
    }

    public var sub_eSOLID_WITH_FLAT_BOTTOM_ROUND_HOLE: eSOLID_WITH_FLAT_BOTTOM_ROUND_HOLE? {	// [9]
      return self.complexEntity.entityReference(eSOLID_WITH_FLAT_BOTTOM_ROUND_HOLE.self)
    }

    public var sub_eSOLID_WITH_STEPPED_ROUND_HOLE_AND_CONICAL_TRANSITIONS: eSOLID_WITH_STEPPED_ROUND_HOLE_AND_CONICAL_TRANSITIONS? {	// [10]
      return self.complexEntity.entityReference(eSOLID_WITH_STEPPED_ROUND_HOLE_AND_CONICAL_TRANSITIONS.self)
    }

    public var sub_eSOLID_WITH_CONICAL_BOTTOM_ROUND_HOLE: eSOLID_WITH_CONICAL_BOTTOM_ROUND_HOLE? {	// [11]
      return self.complexEntity.entityReference(eSOLID_WITH_CONICAL_BOTTOM_ROUND_HOLE.self)
    }

    public var sub_eSOLID_WITH_STEPPED_ROUND_HOLE: eSOLID_WITH_STEPPED_ROUND_HOLE? {	// [12]
      return self.complexEntity.entityReference(eSOLID_WITH_STEPPED_ROUND_HOLE.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eSOLID_WITH_STEPPED_ROUND_HOLE`` )
    public var SEGMENT_RADII: (SDAI.LIST<tPOSITIVE_LENGTH_MEASURE>/*[1:SEGMENTS]*/ )?  {
      get {
        return sub_eSOLID_WITH_STEPPED_ROUND_HOLE?.partialEntity._segment_radii
      }
      set(newValue) {
        guard let partial = sub_eSOLID_WITH_STEPPED_ROUND_HOLE?.super_eSOLID_WITH_STEPPED_ROUND_HOLE
          .partialEntity else { return }
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
    /// - origin: SUB( ``eSOLID_WITH_STEPPED_ROUND_HOLE`` )
    public var SEGMENT_DEPTHS: (SDAI.LIST<tPOSITIVE_LENGTH_MEASURE>/*[1:SEGMENTS]*/ )?  {
      get {
        return sub_eSOLID_WITH_STEPPED_ROUND_HOLE?.partialEntity._segment_depths
      }
      set(newValue) {
        guard let partial = sub_eSOLID_WITH_STEPPED_ROUND_HOLE?.super_eSOLID_WITH_STEPPED_ROUND_HOLE
          .partialEntity else { return }
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
    /// - origin: SUB( ``eSOLID_WITH_STEPPED_ROUND_HOLE`` )
    public var SEGMENTS: tPOSITIVE_INTEGER?  {
      get {
        return sub_eSOLID_WITH_STEPPED_ROUND_HOLE?.partialEntity._segments
      }
      set(newValue) {
        guard let partial = sub_eSOLID_WITH_STEPPED_ROUND_HOLE?.super_eSOLID_WITH_STEPPED_ROUND_HOLE
          .partialEntity else { return }
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

    /// __EXPLICIT(DYNAMIC)__ attribute
    /// - origin: SUPER( ``eSOLID_WITH_DEPRESSION`` )
    public var DEPTH: tPOSITIVE_LENGTH_MEASURE {
      get {
        if let resolved = _solid_with_depression._depth__provider(complex: self.complexEntity) {
          let value = resolved._depth__getter(complex: self.complexEntity)
          return value
        }
        else {
          return SDAI.UNWRAP( super_eSOLID_WITH_DEPRESSION.partialEntity._depth )
        }
      }
      set(newValue) {
        if let _ = _solid_with_depression._depth__provider(complex: self.complexEntity) { return }

        let partial = super_eSOLID_WITH_DEPRESSION.partialEntity
        partial._depth = SDAI.UNWRAP(newValue)
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
      guard let partial = complexEntity?.partialEntityInstance(_solid_with_hole.self) else { return nil }
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

      super.init(complex: complexEntity)
    }

    public required convenience init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let entityRef = generic?.entityReference else { return nil }
      self.init(complex: entityRef.complexEntity)
    }

    public convenience init?<S: SDAISelectType>(_ select: S?) { self.init(possiblyFrom: select) }
    public convenience init?(_ complex: SDAI.ComplexEntity?) { self.init(complex: complex) }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "SOLID_WITH_HOLE", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eSOLID_MODEL.self)
      entityDef.add(supertype: eMODIFIED_SOLID.self)
      entityDef.add(supertype: eMODIFIED_SOLID_WITH_PLACED_CONFIGURATION.self)
      entityDef.add(supertype: eSOLID_WITH_DEPRESSION.self)
      entityDef.add(supertype: eSOLID_WITH_HOLE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "SEGMENT_RADII", keyPath: \eSOLID_WITH_HOLE.SEGMENT_RADII, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "TIP_RADIUS", keyPath: \eSOLID_WITH_HOLE.TIP_RADIUS, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "FILLET_RADIUS", keyPath: \eSOLID_WITH_HOLE.FILLET_RADIUS, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "CONICAL_TRANSITIONS", keyPath: \eSOLID_WITH_HOLE.CONICAL_TRANSITIONS, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RATIONALE", keyPath: \eSOLID_WITH_HOLE.RATIONALE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "BASE_SOLID", keyPath: \eSOLID_WITH_HOLE.BASE_SOLID, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "SEGMENT_DEPTHS", keyPath: \eSOLID_WITH_HOLE.SEGMENT_DEPTHS, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SPHERE_RADIUS", keyPath: \eSOLID_WITH_HOLE.SPHERE_RADIUS, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SEGMENTS", keyPath: \eSOLID_WITH_HOLE.SEGMENTS, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SEMI_APEX_ANGLE", keyPath: \eSOLID_WITH_HOLE.SEMI_APEX_ANGLE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "PLACING", keyPath: \eSOLID_WITH_HOLE.PLACING, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eSOLID_WITH_HOLE.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DEPTH", keyPath: \eSOLID_WITH_HOLE.DEPTH, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \eSOLID_WITH_HOLE.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
