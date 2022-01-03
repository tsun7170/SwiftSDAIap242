/* file: solid_with_trapezoidal_section_slot.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY solid_with_trapezoidal_section_slot
    SUBTYPE OF ( solid_with_slot );
      draft_angle          : plane_angle_measure;
      floor_fillet_radius  : non_negative_length_measure;
  END_ENTITY; -- solid_with_trapezoidal_section_slot (line:30227 file:ap242ed2_mim_lf_v1.101.TY.exp)

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


  SUPER- ENTITY(7)	solid_with_slot
    ATTR:  slot_width,	TYPE: positive_length_measure -- EXPLICIT

    ATTR:  closed_ends,	TYPE: LIST [2 : 2] OF LOGICAL -- EXPLICIT

    ATTR:  end_exit_faces,	TYPE: LIST [2 : 2] OF SET [0 : ?] OF face_surface -- EXPLICIT


  ENTITY(SELF)	solid_with_trapezoidal_section_slot
    ATTR:  draft_angle,	TYPE: plane_angle_measure -- EXPLICIT

    ATTR:  floor_fillet_radius,	TYPE: non_negative_length_measure -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _solid_with_trapezoidal_section_slot : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eSOLID_WITH_TRAPEZOIDAL_SECTION_SLOT.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _draft_angle: tPLANE_ANGLE_MEASURE // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _floor_fillet_radius: tNON_NEGATIVE_LENGTH_MEASURE // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._draft_angle.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._floor_fillet_radius.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._draft_angle.value.isValueEqualOptionally(to: rhs._draft_angle.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._floor_fillet_radius.value.isValueEqualOptionally(to: rhs._floor_fillet_radius.value, visited: &comppairs)	{
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
      if let comp = self._draft_angle.value.isValueEqualOptionally(to: rhs._draft_angle.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._floor_fillet_radius.value.isValueEqualOptionally(to: rhs._floor_fillet_radius.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(DRAFT_ANGLE: tPLANE_ANGLE_MEASURE, FLOOR_FILLET_RADIUS: tNON_NEGATIVE_LENGTH_MEASURE) {
      self._draft_angle = DRAFT_ANGLE
      self._floor_fillet_radius = FLOOR_FILLET_RADIUS
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: tPLANE_ANGLE_MEASURE.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: 
        tNON_NEGATIVE_LENGTH_MEASURE.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( DRAFT_ANGLE: p0, FLOOR_FILLET_RADIUS: p1 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY solid_with_trapezoidal_section_slot
    SUBTYPE OF ( solid_with_slot );
      draft_angle          : plane_angle_measure;
      floor_fillet_radius  : non_negative_length_measure;
  END_ENTITY; -- solid_with_trapezoidal_section_slot (line:30227 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eSOLID_WITH_TRAPEZOIDAL_SECTION_SLOT : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _solid_with_trapezoidal_section_slot.self
    }
    public let partialEntity: _solid_with_trapezoidal_section_slot

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_eSOLID_MODEL: eSOLID_MODEL 	// [3]
    public let super_eMODIFIED_SOLID: eMODIFIED_SOLID 	// [4]
    public let super_eMODIFIED_SOLID_WITH_PLACED_CONFIGURATION: eMODIFIED_SOLID_WITH_PLACED_CONFIGURATION 	// [5]
    public let super_eSOLID_WITH_DEPRESSION: eSOLID_WITH_DEPRESSION 	// [6]
    public let super_eSOLID_WITH_SLOT: eSOLID_WITH_SLOT 	// [7]
    public var super_eSOLID_WITH_TRAPEZOIDAL_SECTION_SLOT: eSOLID_WITH_TRAPEZOIDAL_SECTION_SLOT { return self } 	// [8]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eSOLID_WITH_SLOT`` )
    public var SLOT_WIDTH: tPOSITIVE_LENGTH_MEASURE {
      get {
        return SDAI.UNWRAP( super_eSOLID_WITH_SLOT.partialEntity._slot_width )
      }
      set(newValue) {
        let partial = super_eSOLID_WITH_SLOT.partialEntity
        partial._slot_width = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eSOLID_WITH_SLOT`` )
    public var END_EXIT_FACES: SDAI.LIST<SDAI.SET<eFACE_SURFACE>/*[0:nil]*/ >/*[2:2]*/  {
      get {
        return SDAI.UNWRAP( super_eSOLID_WITH_SLOT.partialEntity._end_exit_faces )
      }
      set(newValue) {
        let partial = super_eSOLID_WITH_SLOT.partialEntity
        partial._end_exit_faces = SDAI.UNWRAP(newValue)
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
    /// - origin: SUPER( ``eSOLID_WITH_SLOT`` )
    public var CLOSED_ENDS: SDAI.LIST<SDAI.LOGICAL>/*[2:2]*/  {
      get {
        return SDAI.UNWRAP( super_eSOLID_WITH_SLOT.partialEntity._closed_ends )
      }
      set(newValue) {
        let partial = super_eSOLID_WITH_SLOT.partialEntity
        partial._closed_ends = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eSOLID_WITH_TRAPEZOIDAL_SECTION_SLOT`` )
    public var DRAFT_ANGLE: tPLANE_ANGLE_MEASURE {
      get {
        return SDAI.UNWRAP( self.partialEntity._draft_angle )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._draft_angle = SDAI.UNWRAP(newValue)
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

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eSOLID_WITH_TRAPEZOIDAL_SECTION_SLOT`` )
    public var FLOOR_FILLET_RADIUS: tNON_NEGATIVE_LENGTH_MEASURE {
      get {
        return SDAI.UNWRAP( self.partialEntity._floor_fillet_radius )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._floor_fillet_radius = SDAI.UNWRAP(newValue)
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
      guard let partial = complexEntity?.partialEntityInstance(_solid_with_trapezoidal_section_slot.self) else { return nil }
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

      guard let super7 = complexEntity?.entityReference(eSOLID_WITH_SLOT.self) else { return nil }
      self.super_eSOLID_WITH_SLOT = super7

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "SOLID_WITH_TRAPEZOIDAL_SECTION_SLOT", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eSOLID_MODEL.self)
      entityDef.add(supertype: eMODIFIED_SOLID.self)
      entityDef.add(supertype: eMODIFIED_SOLID_WITH_PLACED_CONFIGURATION.self)
      entityDef.add(supertype: eSOLID_WITH_DEPRESSION.self)
      entityDef.add(supertype: eSOLID_WITH_SLOT.self)
      entityDef.add(supertype: eSOLID_WITH_TRAPEZOIDAL_SECTION_SLOT.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "SLOT_WIDTH", keyPath: \eSOLID_WITH_TRAPEZOIDAL_SECTION_SLOT.SLOT_WIDTH, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "END_EXIT_FACES", keyPath: \eSOLID_WITH_TRAPEZOIDAL_SECTION_SLOT.END_EXIT_FACES, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RATIONALE", keyPath: \eSOLID_WITH_TRAPEZOIDAL_SECTION_SLOT.RATIONALE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "BASE_SOLID", keyPath: \eSOLID_WITH_TRAPEZOIDAL_SECTION_SLOT.BASE_SOLID, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "CLOSED_ENDS", keyPath: \eSOLID_WITH_TRAPEZOIDAL_SECTION_SLOT.CLOSED_ENDS, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DRAFT_ANGLE", keyPath: \eSOLID_WITH_TRAPEZOIDAL_SECTION_SLOT.DRAFT_ANGLE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "PLACING", keyPath: \eSOLID_WITH_TRAPEZOIDAL_SECTION_SLOT.PLACING, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eSOLID_WITH_TRAPEZOIDAL_SECTION_SLOT.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DEPTH", keyPath: \eSOLID_WITH_TRAPEZOIDAL_SECTION_SLOT.DEPTH, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "FLOOR_FILLET_RADIUS", keyPath: \eSOLID_WITH_TRAPEZOIDAL_SECTION_SLOT.FLOOR_FILLET_RADIUS, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \eSOLID_WITH_TRAPEZOIDAL_SECTION_SLOT.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
