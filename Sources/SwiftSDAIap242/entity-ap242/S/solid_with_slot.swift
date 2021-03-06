/* file: solid_with_slot.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY solid_with_slot
    ABSTRACT SUPERTYPE OF ( 
        ONEOF ( 
            solid_with_trapezoidal_section_slot, 
            solid_with_tee_section_slot ) 
        AND
        ONEOF ( 
            solid_with_straight_slot, 
            solid_with_curved_slot ) )
    SUBTYPE OF ( solid_with_depression );
      slot_width      : positive_length_measure;
      closed_ends     : LIST [2 : 2] OF LOGICAL;
      end_exit_faces  : LIST [2 : 2] OF SET [0 : ?] OF face_surface;
    WHERE
      wr1: ( NOT ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SOLID_WITH_THROUGH_DEPRESSION' IN 
               TYPEOF( SELF ) ) AND ( closed_ends = [FALSE, FALSE] ) ) );
      wr2: ( NOT ( ( ( closed_ends[1] = TRUE ) AND ( SIZEOF( end_exit_faces[1] ) <> 0 ) ) OR ( ( closed_ends[
               2] = TRUE ) AND ( SIZEOF( end_exit_faces[2] ) <> 0 ) ) ) );
  END_ENTITY; -- solid_with_slot (line:30152 file:ap242ed2_mim_lf_v1.101.TY.exp)

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


  ENTITY(SELF)	solid_with_slot
    ATTR:  slot_width,	TYPE: positive_length_measure -- EXPLICIT

    ATTR:  closed_ends,	TYPE: LIST [2 : 2] OF LOGICAL -- EXPLICIT

    ATTR:  end_exit_faces,	TYPE: LIST [2 : 2] OF SET [0 : ?] OF face_surface -- EXPLICIT


  SUB- ENTITY(8)	solid_with_trapezoidal_section_slot
    ATTR:  draft_angle,	TYPE: plane_angle_measure -- EXPLICIT

    ATTR:  floor_fillet_radius,	TYPE: non_negative_length_measure -- EXPLICIT


  SUB- ENTITY(9)	solid_with_tee_section_slot
    ATTR:  tee_section_width,	TYPE: positive_length_measure -- EXPLICIT

    ATTR:  collar_depth,	TYPE: positive_length_measure -- EXPLICIT


  SUB- ENTITY(10)	solid_with_straight_slot
    ATTR:  slot_length,	TYPE: positive_length_measure -- EXPLICIT


  SUB- ENTITY(11)	solid_with_curved_slot
    ATTR:  slot_centreline,	TYPE: bounded_curve -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _solid_with_slot : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eSOLID_WITH_SLOT.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _slot_width: tPOSITIVE_LENGTH_MEASURE // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _closed_ends: SDAI.LIST<SDAI.LOGICAL>/*[2:2]*/  // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _end_exit_faces: SDAI.LIST<SDAI.SET<eFACE_SURFACE>/*[0:nil]*/ >/*[2:2]*/  // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._slot_width.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._closed_ends.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._end_exit_faces.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._slot_width.value.isValueEqualOptionally(to: rhs._slot_width.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._closed_ends.value.isValueEqualOptionally(to: rhs._closed_ends.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._end_exit_faces.value.isValueEqualOptionally(to: rhs._end_exit_faces.value, visited: &comppairs)	{
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
      if let comp = self._slot_width.value.isValueEqualOptionally(to: rhs._slot_width.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._closed_ends.value.isValueEqualOptionally(to: rhs._closed_ends.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._end_exit_faces.value.isValueEqualOptionally(to: rhs._end_exit_faces.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eSOLID_WITH_SLOT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF, IS: eSOLID_WITH_THROUGH_DEPRESSION.self)
      let _TEMP2 = ([SDAI.AIE(SDAI.LOGICAL(SDAI.FALSE)), 
        SDAI.AIE(SDAI.LOGICAL(SDAI.FALSE))] as [SDAI.AggregationInitializerElement<SDAI.LOGICAL>])
      let _TEMP3 = SDAI.FORCE_OPTIONAL(SELF.CLOSED_ENDS) .==. SDAI.FORCE_OPTIONAL(_TEMP2)
      let _TEMP4 = _TEMP1 && _TEMP3
      let _TEMP5 =  !_TEMP4
      return _TEMP5
    }
    public static func WHERE_wr2(SELF: eSOLID_WITH_SLOT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.CLOSED_ENDS[1]
      let _TEMP2 = _TEMP1 .==. SDAI.FORCE_OPTIONAL(SDAI.LOGICAL(SDAI.TRUE))
      let _TEMP3 = SELF.END_EXIT_FACES[1]
      let _TEMP4 = SDAI.SIZEOF(_TEMP3)
      let _TEMP5 = _TEMP4 .!=. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      let _TEMP6 = _TEMP2 && _TEMP5
      let _TEMP7 = SELF.CLOSED_ENDS[2]
      let _TEMP8 = _TEMP7 .==. SDAI.FORCE_OPTIONAL(SDAI.LOGICAL(SDAI.TRUE))
      let _TEMP9 = SELF.END_EXIT_FACES[2]
      let _TEMP10 = SDAI.SIZEOF(_TEMP9)
      let _TEMP11 = _TEMP10 .!=. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      let _TEMP12 = _TEMP8 && _TEMP11
      let _TEMP13 = _TEMP6 || _TEMP12
      let _TEMP14 =  !_TEMP13
      return _TEMP14
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(SLOT_WIDTH: tPOSITIVE_LENGTH_MEASURE, CLOSED_ENDS: SDAI.LIST<SDAI.LOGICAL>/*[2:2]*/ , 
                END_EXIT_FACES: SDAI.LIST<SDAI.SET<eFACE_SURFACE>/*[0:nil]*/ >/*[2:2]*/ ) {
      self._slot_width = SLOT_WIDTH
      self._closed_ends = CLOSED_ENDS
      self._end_exit_faces = END_EXIT_FACES
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 3
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: tPOSITIVE_LENGTH_MEASURE.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: SDAI.LIST<SDAI.LOGICAL>.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p2) = exchangeStructure.recoverRequiredParameter(as: SDAI.LIST<SDAI.SET<
        eFACE_SURFACE>>.self, from: parameters[2])
      else { exchangeStructure.add(errorContext: "while recovering parameter #2 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( SLOT_WIDTH: p0, CLOSED_ENDS: p1, END_EXIT_FACES: p2 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY solid_with_slot
    ABSTRACT SUPERTYPE OF ( 
        ONEOF ( 
            solid_with_trapezoidal_section_slot, 
            solid_with_tee_section_slot ) 
        AND
        ONEOF ( 
            solid_with_straight_slot, 
            solid_with_curved_slot ) )
    SUBTYPE OF ( solid_with_depression );
      slot_width      : positive_length_measure;
      closed_ends     : LIST [2 : 2] OF LOGICAL;
      end_exit_faces  : LIST [2 : 2] OF SET [0 : ?] OF face_surface;
    WHERE
      wr1: ( NOT ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SOLID_WITH_THROUGH_DEPRESSION' IN 
               TYPEOF( SELF ) ) AND ( closed_ends = [FALSE, FALSE] ) ) );
      wr2: ( NOT ( ( ( closed_ends[1] = TRUE ) AND ( SIZEOF( end_exit_faces[1] ) <> 0 ) ) OR ( ( closed_ends[
               2] = TRUE ) AND ( SIZEOF( end_exit_faces[2] ) <> 0 ) ) ) );
  END_ENTITY; -- solid_with_slot (line:30152 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eSOLID_WITH_SLOT : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _solid_with_slot.self
    }
    public let partialEntity: _solid_with_slot

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_eSOLID_MODEL: eSOLID_MODEL 	// [3]
    public let super_eMODIFIED_SOLID: eMODIFIED_SOLID 	// [4]
    public let super_eMODIFIED_SOLID_WITH_PLACED_CONFIGURATION: eMODIFIED_SOLID_WITH_PLACED_CONFIGURATION 	// [5]
    public let super_eSOLID_WITH_DEPRESSION: eSOLID_WITH_DEPRESSION 	// [6]
    public var super_eSOLID_WITH_SLOT: eSOLID_WITH_SLOT { return self } 	// [7]

    //MARK: SUBTYPES
    public var sub_eSOLID_WITH_TRAPEZOIDAL_SECTION_SLOT: eSOLID_WITH_TRAPEZOIDAL_SECTION_SLOT? {	// [8]
      return self.complexEntity.entityReference(eSOLID_WITH_TRAPEZOIDAL_SECTION_SLOT.self)
    }

    public var sub_eSOLID_WITH_TEE_SECTION_SLOT: eSOLID_WITH_TEE_SECTION_SLOT? {	// [9]
      return self.complexEntity.entityReference(eSOLID_WITH_TEE_SECTION_SLOT.self)
    }

    public var sub_eSOLID_WITH_STRAIGHT_SLOT: eSOLID_WITH_STRAIGHT_SLOT? {	// [10]
      return self.complexEntity.entityReference(eSOLID_WITH_STRAIGHT_SLOT.self)
    }

    public var sub_eSOLID_WITH_CURVED_SLOT: eSOLID_WITH_CURVED_SLOT? {	// [11]
      return self.complexEntity.entityReference(eSOLID_WITH_CURVED_SLOT.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eSOLID_WITH_SLOT`` )
    public var SLOT_WIDTH: tPOSITIVE_LENGTH_MEASURE {
      get {
        return SDAI.UNWRAP( self.partialEntity._slot_width )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._slot_width = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eSOLID_WITH_SLOT`` )
    public var END_EXIT_FACES: SDAI.LIST<SDAI.SET<eFACE_SURFACE>/*[0:nil]*/ >/*[2:2]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._end_exit_faces )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._end_exit_faces = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eSOLID_WITH_TEE_SECTION_SLOT`` )
    public var TEE_SECTION_WIDTH: tPOSITIVE_LENGTH_MEASURE?  {
      get {
        return sub_eSOLID_WITH_TEE_SECTION_SLOT?.partialEntity._tee_section_width
      }
      set(newValue) {
        guard let partial = sub_eSOLID_WITH_TEE_SECTION_SLOT?.super_eSOLID_WITH_TEE_SECTION_SLOT
          .partialEntity else { return }
        partial._tee_section_width = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eSOLID_WITH_STRAIGHT_SLOT`` )
    public var SLOT_LENGTH: tPOSITIVE_LENGTH_MEASURE?  {
      get {
        return sub_eSOLID_WITH_STRAIGHT_SLOT?.partialEntity._slot_length
      }
      set(newValue) {
        guard let partial = sub_eSOLID_WITH_STRAIGHT_SLOT?.super_eSOLID_WITH_STRAIGHT_SLOT.partialEntity
          else { return }
        partial._slot_length = SDAI.UNWRAP(newValue)
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
    /// - origin: SUB( ``eSOLID_WITH_TEE_SECTION_SLOT`` )
    public var COLLAR_DEPTH: tPOSITIVE_LENGTH_MEASURE?  {
      get {
        return sub_eSOLID_WITH_TEE_SECTION_SLOT?.partialEntity._collar_depth
      }
      set(newValue) {
        guard let partial = sub_eSOLID_WITH_TEE_SECTION_SLOT?.super_eSOLID_WITH_TEE_SECTION_SLOT
          .partialEntity else { return }
        partial._collar_depth = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eSOLID_WITH_SLOT`` )
    public var CLOSED_ENDS: SDAI.LIST<SDAI.LOGICAL>/*[2:2]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._closed_ends )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._closed_ends = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eSOLID_WITH_CURVED_SLOT`` )
    public var SLOT_CENTRELINE: eBOUNDED_CURVE?  {
      get {
        return sub_eSOLID_WITH_CURVED_SLOT?.partialEntity._slot_centreline
      }
      set(newValue) {
        guard let partial = sub_eSOLID_WITH_CURVED_SLOT?.super_eSOLID_WITH_CURVED_SLOT.partialEntity
          else { return }
        partial._slot_centreline = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eSOLID_WITH_TRAPEZOIDAL_SECTION_SLOT`` )
    public var DRAFT_ANGLE: tPLANE_ANGLE_MEASURE?  {
      get {
        return sub_eSOLID_WITH_TRAPEZOIDAL_SECTION_SLOT?.partialEntity._draft_angle
      }
      set(newValue) {
        guard let partial = sub_eSOLID_WITH_TRAPEZOIDAL_SECTION_SLOT?.super_eSOLID_WITH_TRAPEZOIDAL_SECTION_SLOT
          .partialEntity else { return }
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
    /// - origin: SUB( ``eSOLID_WITH_TRAPEZOIDAL_SECTION_SLOT`` )
    public var FLOOR_FILLET_RADIUS: tNON_NEGATIVE_LENGTH_MEASURE?  {
      get {
        return sub_eSOLID_WITH_TRAPEZOIDAL_SECTION_SLOT?.partialEntity._floor_fillet_radius
      }
      set(newValue) {
        guard let partial = sub_eSOLID_WITH_TRAPEZOIDAL_SECTION_SLOT?.super_eSOLID_WITH_TRAPEZOIDAL_SECTION_SLOT
          .partialEntity else { return }
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
      guard let partial = complexEntity?.partialEntityInstance(_solid_with_slot.self) else { return nil }
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


    //MARK: WHERE RULE VALIDATION (ENTITY)
    public override class func validateWhereRules(instance:SDAI.EntityReference?, prefix:SDAI.WhereLabel) -> [SDAI.WhereLabel:SDAI.LOGICAL] {
      guard let instance = instance as? Self else { return [:] }

      let prefix2 = prefix + " \(instance)"

      var result = super.validateWhereRules(instance:instance, prefix:prefix2)
      result[prefix2 + " .WHERE_wr1"] = _solid_with_slot.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _solid_with_slot.WHERE_wr2(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "SOLID_WITH_SLOT", type: self, explicitAttributeCount: 3)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eSOLID_MODEL.self)
      entityDef.add(supertype: eMODIFIED_SOLID.self)
      entityDef.add(supertype: eMODIFIED_SOLID_WITH_PLACED_CONFIGURATION.self)
      entityDef.add(supertype: eSOLID_WITH_DEPRESSION.self)
      entityDef.add(supertype: eSOLID_WITH_SLOT.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "SLOT_WIDTH", keyPath: \eSOLID_WITH_SLOT.SLOT_WIDTH, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "END_EXIT_FACES", keyPath: \eSOLID_WITH_SLOT.END_EXIT_FACES, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "TEE_SECTION_WIDTH", keyPath: \eSOLID_WITH_SLOT.TEE_SECTION_WIDTH, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SLOT_LENGTH", keyPath: \eSOLID_WITH_SLOT.SLOT_LENGTH, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "RATIONALE", keyPath: \eSOLID_WITH_SLOT.RATIONALE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "BASE_SOLID", keyPath: \eSOLID_WITH_SLOT.BASE_SOLID, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "COLLAR_DEPTH", keyPath: \eSOLID_WITH_SLOT.COLLAR_DEPTH, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "CLOSED_ENDS", keyPath: \eSOLID_WITH_SLOT.CLOSED_ENDS, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SLOT_CENTRELINE", keyPath: \eSOLID_WITH_SLOT.SLOT_CENTRELINE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DRAFT_ANGLE", keyPath: \eSOLID_WITH_SLOT.DRAFT_ANGLE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "PLACING", keyPath: \eSOLID_WITH_SLOT.PLACING, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eSOLID_WITH_SLOT.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DEPTH", keyPath: \eSOLID_WITH_SLOT.DEPTH, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "FLOOR_FILLET_RADIUS", keyPath: \eSOLID_WITH_SLOT.FLOOR_FILLET_RADIUS, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \eSOLID_WITH_SLOT.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
