/* file: extruded_face_solid.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY extruded_face_solid
    SUBTYPE OF ( swept_face_solid );
      extruded_direction  : direction;
      depth               : positive_length_measure;
    WHERE
      wr1: ( dot_product( SELF\swept_face_solid.swept_face.face_geometry\elementary_surface.position.p[3], 
               extruded_direction ) <> 0 );
  END_ENTITY; -- extruded_face_solid (line:15033 file:ap242ed2_mim_lf_v1.101.TY.exp)

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


  ENTITY(SELF)	extruded_face_solid
    ATTR:  extruded_direction,	TYPE: direction -- EXPLICIT

    ATTR:  depth,	TYPE: positive_length_measure -- EXPLICIT


  SUB- ENTITY(6)	extruded_face_solid_with_multiple_draft_angles
    ATTR:  drafted_edges,	TYPE: LIST [2 : ?] OF SET [1 : ?] OF edge_curve -- EXPLICIT

    ATTR:  draft_angles,	TYPE: LIST [2 : ?] OF plane_angle_measure -- EXPLICIT


  SUB- ENTITY(7)	extruded_face_solid_with_draft_angle
    ATTR:  draft_angle,	TYPE: plane_angle_measure -- EXPLICIT


  SUB- ENTITY(8)	extruded_face_solid_with_trim_conditions
    ATTR:  first_trim_condition,	TYPE: trim_condition_select -- EXPLICIT

    ATTR:  second_trim_condition,	TYPE: trim_condition_select -- EXPLICIT

    ATTR:  first_trim_intent,	TYPE: trim_intent -- EXPLICIT

    ATTR:  second_trim_intent,	TYPE: trim_intent -- EXPLICIT

    ATTR:  first_offset,	TYPE: non_negative_length_measure -- EXPLICIT

    ATTR:  second_offset,	TYPE: non_negative_length_measure -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _extruded_face_solid : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eEXTRUDED_FACE_SOLID.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _extruded_direction: eDIRECTION // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _depth: tPOSITIVE_LENGTH_MEASURE // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._extruded_direction.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._depth.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._extruded_direction.value.isValueEqualOptionally(to: rhs._extruded_direction.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._depth.value.isValueEqualOptionally(to: rhs._depth.value, visited: &comppairs)	{
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
      if let comp = self._extruded_direction.value.isValueEqualOptionally(to: rhs._extruded_direction.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._depth.value.isValueEqualOptionally(to: rhs._depth.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eEXTRUDED_FACE_SOLID?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.GROUP_REF(eSWEPT_FACE_SOLID.self)
      let _TEMP2 = _TEMP1?.SWEPT_FACE
      let _TEMP3 = _TEMP2?.FACE_GEOMETRY
      let _TEMP4 = _TEMP3?.GROUP_REF(eELEMENTARY_SURFACE.self)
      let _TEMP5 = _TEMP4?.POSITION
      let _TEMP6 = _TEMP5?.P
      let _TEMP7 = _TEMP6?[3]
      let _TEMP8 = DOT_PRODUCT(ARG1: _TEMP7, 
                               ARG2: SELF.EXTRUDED_DIRECTION)
      let _TEMP9 = _TEMP8 .!=. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP9
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(EXTRUDED_DIRECTION: eDIRECTION, DEPTH: tPOSITIVE_LENGTH_MEASURE) {
      self._extruded_direction = EXTRUDED_DIRECTION
      self._depth = DEPTH
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: eDIRECTION.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: tPOSITIVE_LENGTH_MEASURE.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( EXTRUDED_DIRECTION: p0, DEPTH: p1 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY extruded_face_solid
    SUBTYPE OF ( swept_face_solid );
      extruded_direction  : direction;
      depth               : positive_length_measure;
    WHERE
      wr1: ( dot_product( SELF\swept_face_solid.swept_face.face_geometry\elementary_surface.position.p[3], 
               extruded_direction ) <> 0 );
  END_ENTITY; -- extruded_face_solid (line:15033 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eEXTRUDED_FACE_SOLID : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _extruded_face_solid.self
    }
    public let partialEntity: _extruded_face_solid

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_eSOLID_MODEL: eSOLID_MODEL 	// [3]
    public let super_eSWEPT_FACE_SOLID: eSWEPT_FACE_SOLID 	// [4]
    public var super_eEXTRUDED_FACE_SOLID: eEXTRUDED_FACE_SOLID { return self } 	// [5]

    //MARK: SUBTYPES
    public var sub_eEXTRUDED_FACE_SOLID_WITH_MULTIPLE_DRAFT_ANGLES: eEXTRUDED_FACE_SOLID_WITH_MULTIPLE_DRAFT_ANGLES? {	// [6]
      return self.complexEntity.entityReference(eEXTRUDED_FACE_SOLID_WITH_MULTIPLE_DRAFT_ANGLES.self)
    }

    public var sub_eEXTRUDED_FACE_SOLID_WITH_DRAFT_ANGLE: eEXTRUDED_FACE_SOLID_WITH_DRAFT_ANGLE? {	// [7]
      return self.complexEntity.entityReference(eEXTRUDED_FACE_SOLID_WITH_DRAFT_ANGLE.self)
    }

    public var sub_eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS: eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS? {	// [8]
      return self.complexEntity.entityReference(eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS`` )
    public var SECOND_TRIM_CONDITION: sTRIM_CONDITION_SELECT?  {
      get {
        return sub_eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS?.partialEntity._second_trim_condition
      }
      set(newValue) {
        guard let partial = sub_eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS?.super_eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS
          .partialEntity else { return }
        partial._second_trim_condition = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS`` )
    public var FIRST_TRIM_INTENT: nTRIM_INTENT?  {
      get {
        return sub_eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS?.partialEntity._first_trim_intent
      }
      set(newValue) {
        guard let partial = sub_eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS?.super_eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS
          .partialEntity else { return }
        partial._first_trim_intent = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS`` )
    public var SECOND_TRIM_INTENT: nTRIM_INTENT?  {
      get {
        return sub_eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS?.partialEntity._second_trim_intent
      }
      set(newValue) {
        guard let partial = sub_eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS?.super_eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS
          .partialEntity else { return }
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
    /// - origin: SUB( ``eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS`` )
    public var FIRST_TRIM_CONDITION: sTRIM_CONDITION_SELECT?  {
      get {
        return sub_eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS?.partialEntity._first_trim_condition
      }
      set(newValue) {
        guard let partial = sub_eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS?.super_eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS
          .partialEntity else { return }
        partial._first_trim_condition = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eEXTRUDED_FACE_SOLID_WITH_MULTIPLE_DRAFT_ANGLES`` )
    public var DRAFTED_EDGES: (SDAI.LIST<SDAI.SET<eEDGE_CURVE>/*[1:nil]*/ >/*[2:nil]*/ )?  {
      get {
        return sub_eEXTRUDED_FACE_SOLID_WITH_MULTIPLE_DRAFT_ANGLES?.partialEntity._drafted_edges
      }
      set(newValue) {
        guard let partial = sub_eEXTRUDED_FACE_SOLID_WITH_MULTIPLE_DRAFT_ANGLES?.super_eEXTRUDED_FACE_SOLID_WITH_MULTIPLE_DRAFT_ANGLES
          .partialEntity else { return }
        partial._drafted_edges = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS`` )
    public var FIRST_OFFSET: tNON_NEGATIVE_LENGTH_MEASURE?  {
      get {
        return sub_eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS?.partialEntity._first_offset
      }
      set(newValue) {
        guard let partial = sub_eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS?.super_eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS
          .partialEntity else { return }
        partial._first_offset = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eEXTRUDED_FACE_SOLID_WITH_MULTIPLE_DRAFT_ANGLES`` )
    public var DRAFT_ANGLES: (SDAI.LIST<tPLANE_ANGLE_MEASURE>/*[2:nil]*/ )?  {
      get {
        return sub_eEXTRUDED_FACE_SOLID_WITH_MULTIPLE_DRAFT_ANGLES?.partialEntity._draft_angles
      }
      set(newValue) {
        guard let partial = sub_eEXTRUDED_FACE_SOLID_WITH_MULTIPLE_DRAFT_ANGLES?.super_eEXTRUDED_FACE_SOLID_WITH_MULTIPLE_DRAFT_ANGLES
          .partialEntity else { return }
        partial._draft_angles = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eEXTRUDED_FACE_SOLID`` )
    public var EXTRUDED_DIRECTION: eDIRECTION {
      get {
        return SDAI.UNWRAP( self.partialEntity._extruded_direction )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._extruded_direction = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS`` )
    public var SECOND_OFFSET: tNON_NEGATIVE_LENGTH_MEASURE?  {
      get {
        return sub_eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS?.partialEntity._second_offset
      }
      set(newValue) {
        guard let partial = sub_eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS?.super_eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS
          .partialEntity else { return }
        partial._second_offset = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eEXTRUDED_FACE_SOLID_WITH_DRAFT_ANGLE`` )
    public var DRAFT_ANGLE: tPLANE_ANGLE_MEASURE?  {
      get {
        return sub_eEXTRUDED_FACE_SOLID_WITH_DRAFT_ANGLE?.partialEntity._draft_angle
      }
      set(newValue) {
        guard let partial = sub_eEXTRUDED_FACE_SOLID_WITH_DRAFT_ANGLE?.super_eEXTRUDED_FACE_SOLID_WITH_DRAFT_ANGLE
          .partialEntity else { return }
        partial._draft_angle = SDAI.UNWRAP(newValue)
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
    /// - origin: SELF( ``eEXTRUDED_FACE_SOLID`` )
    public var DEPTH: tPOSITIVE_LENGTH_MEASURE {
      get {
        return SDAI.UNWRAP( self.partialEntity._depth )
      }
      set(newValue) {
        let partial = self.partialEntity
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
      guard let partial = complexEntity?.partialEntityInstance(_extruded_face_solid.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(eSOLID_MODEL.self) else { return nil }
      self.super_eSOLID_MODEL = super3

      guard let super4 = complexEntity?.entityReference(eSWEPT_FACE_SOLID.self) else { return nil }
      self.super_eSWEPT_FACE_SOLID = super4

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
      result[prefix2 + " .WHERE_wr1"] = _extruded_face_solid.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "EXTRUDED_FACE_SOLID", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eSOLID_MODEL.self)
      entityDef.add(supertype: eSWEPT_FACE_SOLID.self)
      entityDef.add(supertype: eEXTRUDED_FACE_SOLID.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "SECOND_TRIM_CONDITION", keyPath: \eEXTRUDED_FACE_SOLID.SECOND_TRIM_CONDITION, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "FIRST_TRIM_INTENT", keyPath: \eEXTRUDED_FACE_SOLID.FIRST_TRIM_INTENT, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SECOND_TRIM_INTENT", keyPath: \eEXTRUDED_FACE_SOLID.SECOND_TRIM_INTENT, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SWEPT_FACE", keyPath: \eEXTRUDED_FACE_SOLID.SWEPT_FACE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "FIRST_TRIM_CONDITION", keyPath: \eEXTRUDED_FACE_SOLID.FIRST_TRIM_CONDITION, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DRAFTED_EDGES", keyPath: \eEXTRUDED_FACE_SOLID.DRAFTED_EDGES, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "FIRST_OFFSET", keyPath: \eEXTRUDED_FACE_SOLID.FIRST_OFFSET, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DRAFT_ANGLES", keyPath: \eEXTRUDED_FACE_SOLID.DRAFT_ANGLES, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "EXTRUDED_DIRECTION", keyPath: \eEXTRUDED_FACE_SOLID.EXTRUDED_DIRECTION, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "SECOND_OFFSET", keyPath: \eEXTRUDED_FACE_SOLID.SECOND_OFFSET, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DRAFT_ANGLE", keyPath: \eEXTRUDED_FACE_SOLID.DRAFT_ANGLE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eEXTRUDED_FACE_SOLID.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DEPTH", keyPath: \eEXTRUDED_FACE_SOLID.DEPTH, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \eEXTRUDED_FACE_SOLID.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
