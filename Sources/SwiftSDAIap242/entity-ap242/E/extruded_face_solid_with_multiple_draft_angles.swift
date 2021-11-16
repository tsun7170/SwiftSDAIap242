/* file: extruded_face_solid_with_multiple_draft_angles.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY extruded_face_solid_with_multiple_draft_angles
    SUBTYPE OF ( extruded_face_solid_with_trim_conditions );
      drafted_edges  : LIST [2 : ?] OF SET [1 : ?] OF edge_curve;
      draft_angles   : LIST [2 : ?] OF plane_angle_measure;
    WHERE
      wr1: ( SIZEOF( drafted_edges ) = SIZEOF( draft_angles ) );
      wr2: ( SIZEOF( QUERY ( q <* draft_angles | ( q = 0 ) ) ) = 0 );
      wr3: ( SIZEOF( QUERY ( q <* drafted_edges | ( SIZEOF( QUERY ( r <* q | ( NOT ( SELF\swept_face_solid.
               swept_face IN using_items( r, [] ) ) ) ) ) > 0 ) ) ) = 0 );
  END_ENTITY; -- extruded_face_solid_with_multiple_draft_angles (line:15050 file:ap242ed2_mim_lf_v1.101.TY.exp)

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

  SUPER- ENTITY(4)	swept_face_solid
    ATTR:  swept_face,	TYPE: face_surface -- EXPLICIT


  SUPER- ENTITY(5)	extruded_face_solid
    ATTR:  extruded_direction,	TYPE: direction -- EXPLICIT

    ATTR:  depth,	TYPE: positive_length_measure -- EXPLICIT


  SUPER- ENTITY(6)	extruded_face_solid_with_trim_conditions
    ATTR:  first_trim_condition,	TYPE: trim_condition_select -- EXPLICIT

    ATTR:  second_trim_condition,	TYPE: trim_condition_select -- EXPLICIT

    ATTR:  first_trim_intent,	TYPE: trim_intent -- EXPLICIT

    ATTR:  second_trim_intent,	TYPE: trim_intent -- EXPLICIT

    ATTR:  first_offset,	TYPE: non_negative_length_measure -- EXPLICIT

    ATTR:  second_offset,	TYPE: non_negative_length_measure -- EXPLICIT


  ENTITY(SELF)	extruded_face_solid_with_multiple_draft_angles
    ATTR:  drafted_edges,	TYPE: LIST [2 : ?] OF SET [1 : ?] OF edge_curve -- EXPLICIT

    ATTR:  draft_angles,	TYPE: LIST [2 : ?] OF plane_angle_measure -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _extruded_face_solid_with_multiple_draft_angles : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eEXTRUDED_FACE_SOLID_WITH_MULTIPLE_DRAFT_ANGLES.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _drafted_edges: SDAI.LIST<SDAI.SET<eEDGE_CURVE>/*[1:nil]*/ >/*[2:nil]*/  // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _draft_angles: SDAI.LIST<tPLANE_ANGLE_MEASURE>/*[2:nil]*/  // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._drafted_edges.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._draft_angles.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._drafted_edges.value.isValueEqualOptionally(to: rhs._drafted_edges.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._draft_angles.value.isValueEqualOptionally(to: rhs._draft_angles.value, visited: &comppairs)	{
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
      if let comp = self._drafted_edges.value.isValueEqualOptionally(to: rhs._drafted_edges.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._draft_angles.value.isValueEqualOptionally(to: rhs._draft_angles.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eEXTRUDED_FACE_SOLID_WITH_MULTIPLE_DRAFT_ANGLES?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.SIZEOF(SELF.DRAFTED_EDGES)
      let _TEMP2 = SDAI.SIZEOF(SELF.DRAFT_ANGLES)
      let _TEMP3 = _TEMP1 .==. _TEMP2
      return _TEMP3
    }
    public static func WHERE_wr2(SELF: eEXTRUDED_FACE_SOLID_WITH_MULTIPLE_DRAFT_ANGLES?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.DRAFT_ANGLES
        .QUERY{ Q in 

          let _TEMP1 = SDAI.FORCE_OPTIONAL(Q) .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
          return _TEMP1 }
      let _TEMP2 = SDAI.SIZEOF(_TEMP1)
      let _TEMP3 = _TEMP2 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP3
    }
    public static func WHERE_wr3(SELF: eEXTRUDED_FACE_SOLID_WITH_MULTIPLE_DRAFT_ANGLES?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.DRAFTED_EDGES
        .QUERY{ Q in 

          let _TEMP1 = Q.QUERY{ R in 

              let _TEMP1 = SELF.GROUP_REF(eSWEPT_FACE_SOLID.self)
              let _TEMP2 = _TEMP1?.SWEPT_FACE
              let _TEMP3 = SDAI.SET<sFOUNDED_ITEM_SELECT>(SDAI.EMPLY_AGGREGATE)
              let _TEMP4 = USING_ITEMS(
                ITEM: sFOUNDED_ITEM_SELECT(/*eEDGE_CURVE*/R), 
                CHECKED_ITEMS: _TEMP3)
              let _TEMP5 = SDAI.aggregate(_TEMP4, contains: sFOUNDED_ITEM_SELECT(/*eFACE_SURFACE*/_TEMP2))
              let _TEMP6 =  !_TEMP5
              return _TEMP6 }
          let _TEMP2 = SDAI.SIZEOF(_TEMP1)
          let _TEMP3 = _TEMP2 > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
          return _TEMP3 }
      let _TEMP2 = SDAI.SIZEOF(_TEMP1)
      let _TEMP3 = _TEMP2 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP3
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(DRAFTED_EDGES: SDAI.LIST<SDAI.SET<eEDGE_CURVE>/*[1:nil]*/ >/*[2:nil]*/ , 
                DRAFT_ANGLES: SDAI.LIST<tPLANE_ANGLE_MEASURE>/*[2:nil]*/ ) {
      self._drafted_edges = DRAFTED_EDGES
      self._draft_angles = DRAFT_ANGLES
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: SDAI.LIST<SDAI.SET<
        eEDGE_CURVE>>.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: SDAI.LIST<
        tPLANE_ANGLE_MEASURE>.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( DRAFTED_EDGES: p0, DRAFT_ANGLES: p1 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY extruded_face_solid_with_multiple_draft_angles
    SUBTYPE OF ( extruded_face_solid_with_trim_conditions );
      drafted_edges  : LIST [2 : ?] OF SET [1 : ?] OF edge_curve;
      draft_angles   : LIST [2 : ?] OF plane_angle_measure;
    WHERE
      wr1: ( SIZEOF( drafted_edges ) = SIZEOF( draft_angles ) );
      wr2: ( SIZEOF( QUERY ( q <* draft_angles | ( q = 0 ) ) ) = 0 );
      wr3: ( SIZEOF( QUERY ( q <* drafted_edges | ( SIZEOF( QUERY ( r <* q | ( NOT ( SELF\swept_face_solid.
               swept_face IN using_items( r, [] ) ) ) ) ) > 0 ) ) ) = 0 );
  END_ENTITY; -- extruded_face_solid_with_multiple_draft_angles (line:15050 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eEXTRUDED_FACE_SOLID_WITH_MULTIPLE_DRAFT_ANGLES : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _extruded_face_solid_with_multiple_draft_angles.self
    }
    public let partialEntity: _extruded_face_solid_with_multiple_draft_angles

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_eSOLID_MODEL: eSOLID_MODEL 	// [3]
    public let super_eSWEPT_FACE_SOLID: eSWEPT_FACE_SOLID 	// [4]
    public let super_eEXTRUDED_FACE_SOLID: eEXTRUDED_FACE_SOLID 	// [5]
    public let super_eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS: eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS 	// [6]
    public var super_eEXTRUDED_FACE_SOLID_WITH_MULTIPLE_DRAFT_ANGLES: eEXTRUDED_FACE_SOLID_WITH_MULTIPLE_DRAFT_ANGLES { return self } 	// [7]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS`` )
    public var SECOND_TRIM_CONDITION: sTRIM_CONDITION_SELECT {
      get {
        return SDAI.UNWRAP( super_eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS.partialEntity
          ._second_trim_condition )
      }
      set(newValue) {
        let partial = super_eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS.partialEntity
        partial._second_trim_condition = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS`` )
    public var FIRST_TRIM_INTENT: nTRIM_INTENT {
      get {
        return SDAI.UNWRAP( super_eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS.partialEntity._first_trim_intent )
      }
      set(newValue) {
        let partial = super_eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS.partialEntity
        partial._first_trim_intent = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS`` )
    public var SECOND_TRIM_INTENT: nTRIM_INTENT {
      get {
        return SDAI.UNWRAP( super_eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS.partialEntity._second_trim_intent )
      }
      set(newValue) {
        let partial = super_eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS.partialEntity
        partial._second_trim_intent = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eSWEPT_FACE_SOLID`` )
    public var SWEPT_FACE: eFACE_SURFACE {
      get {
        return SDAI.UNWRAP( super_eSWEPT_FACE_SOLID.partialEntity._swept_face )
      }
      set(newValue) {
        let partial = super_eSWEPT_FACE_SOLID.partialEntity
        partial._swept_face = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS`` )
    public var FIRST_TRIM_CONDITION: sTRIM_CONDITION_SELECT {
      get {
        return SDAI.UNWRAP( super_eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS.partialEntity
          ._first_trim_condition )
      }
      set(newValue) {
        let partial = super_eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS.partialEntity
        partial._first_trim_condition = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eEXTRUDED_FACE_SOLID_WITH_MULTIPLE_DRAFT_ANGLES`` )
    public var DRAFTED_EDGES: SDAI.LIST<SDAI.SET<eEDGE_CURVE>/*[1:nil]*/ >/*[2:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._drafted_edges )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._drafted_edges = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS`` )
    public var FIRST_OFFSET: tNON_NEGATIVE_LENGTH_MEASURE {
      get {
        return SDAI.UNWRAP( super_eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS.partialEntity._first_offset )
      }
      set(newValue) {
        let partial = super_eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS.partialEntity
        partial._first_offset = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eEXTRUDED_FACE_SOLID_WITH_MULTIPLE_DRAFT_ANGLES`` )
    public var DRAFT_ANGLES: SDAI.LIST<tPLANE_ANGLE_MEASURE>/*[2:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._draft_angles )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._draft_angles = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eEXTRUDED_FACE_SOLID`` )
    public var EXTRUDED_DIRECTION: eDIRECTION {
      get {
        return SDAI.UNWRAP( super_eEXTRUDED_FACE_SOLID.partialEntity._extruded_direction )
      }
      set(newValue) {
        let partial = super_eEXTRUDED_FACE_SOLID.partialEntity
        partial._extruded_direction = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS`` )
    public var SECOND_OFFSET: tNON_NEGATIVE_LENGTH_MEASURE {
      get {
        return SDAI.UNWRAP( super_eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS.partialEntity._second_offset )
      }
      set(newValue) {
        let partial = super_eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS.partialEntity
        partial._second_offset = SDAI.UNWRAP(newValue)
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

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eEXTRUDED_FACE_SOLID`` )
    public var DEPTH: tPOSITIVE_LENGTH_MEASURE {
      get {
        return SDAI.UNWRAP( super_eEXTRUDED_FACE_SOLID.partialEntity._depth )
      }
      set(newValue) {
        let partial = super_eEXTRUDED_FACE_SOLID.partialEntity
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
      guard let partial = complexEntity?.partialEntityInstance(_extruded_face_solid_with_multiple_draft_angles.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(eSOLID_MODEL.self) else { return nil }
      self.super_eSOLID_MODEL = super3

      guard let super4 = complexEntity?.entityReference(eSWEPT_FACE_SOLID.self) else { return nil }
      self.super_eSWEPT_FACE_SOLID = super4

      guard let super5 = complexEntity?.entityReference(eEXTRUDED_FACE_SOLID.self) else { return nil }
      self.super_eEXTRUDED_FACE_SOLID = super5

      guard let super6 = complexEntity?.entityReference(eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS.self) else { return nil }
      self.super_eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS = super6

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
      result[prefix2 + " .WHERE_wr1"] = _extruded_face_solid_with_multiple_draft_angles.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _extruded_face_solid_with_multiple_draft_angles.WHERE_wr2(SELF: instance)
      result[prefix2 + " .WHERE_wr3"] = _extruded_face_solid_with_multiple_draft_angles.WHERE_wr3(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "EXTRUDED_FACE_SOLID_WITH_MULTIPLE_DRAFT_ANGLES", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eSOLID_MODEL.self)
      entityDef.add(supertype: eSWEPT_FACE_SOLID.self)
      entityDef.add(supertype: eEXTRUDED_FACE_SOLID.self)
      entityDef.add(supertype: eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS.self)
      entityDef.add(supertype: eEXTRUDED_FACE_SOLID_WITH_MULTIPLE_DRAFT_ANGLES.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "SECOND_TRIM_CONDITION", keyPath: \eEXTRUDED_FACE_SOLID_WITH_MULTIPLE_DRAFT_ANGLES.SECOND_TRIM_CONDITION, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "FIRST_TRIM_INTENT", keyPath: \eEXTRUDED_FACE_SOLID_WITH_MULTIPLE_DRAFT_ANGLES.FIRST_TRIM_INTENT, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SECOND_TRIM_INTENT", keyPath: \eEXTRUDED_FACE_SOLID_WITH_MULTIPLE_DRAFT_ANGLES.SECOND_TRIM_INTENT, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SWEPT_FACE", keyPath: \eEXTRUDED_FACE_SOLID_WITH_MULTIPLE_DRAFT_ANGLES.SWEPT_FACE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "FIRST_TRIM_CONDITION", keyPath: \eEXTRUDED_FACE_SOLID_WITH_MULTIPLE_DRAFT_ANGLES.FIRST_TRIM_CONDITION, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DRAFTED_EDGES", keyPath: \eEXTRUDED_FACE_SOLID_WITH_MULTIPLE_DRAFT_ANGLES.DRAFTED_EDGES, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "FIRST_OFFSET", keyPath: \eEXTRUDED_FACE_SOLID_WITH_MULTIPLE_DRAFT_ANGLES.FIRST_OFFSET, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DRAFT_ANGLES", keyPath: \eEXTRUDED_FACE_SOLID_WITH_MULTIPLE_DRAFT_ANGLES.DRAFT_ANGLES, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "EXTRUDED_DIRECTION", keyPath: \eEXTRUDED_FACE_SOLID_WITH_MULTIPLE_DRAFT_ANGLES.EXTRUDED_DIRECTION, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "SECOND_OFFSET", keyPath: \eEXTRUDED_FACE_SOLID_WITH_MULTIPLE_DRAFT_ANGLES.SECOND_OFFSET, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eEXTRUDED_FACE_SOLID_WITH_MULTIPLE_DRAFT_ANGLES.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DEPTH", keyPath: \eEXTRUDED_FACE_SOLID_WITH_MULTIPLE_DRAFT_ANGLES.DEPTH, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \eEXTRUDED_FACE_SOLID_WITH_MULTIPLE_DRAFT_ANGLES.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
