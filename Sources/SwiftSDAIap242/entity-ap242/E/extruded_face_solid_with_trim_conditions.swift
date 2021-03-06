/* file: extruded_face_solid_with_trim_conditions.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY extruded_face_solid_with_trim_conditions
    SUPERTYPE OF ( 
        ONEOF ( 
            extruded_face_solid_with_draft_angle, 
            extruded_face_solid_with_multiple_draft_angles ) )
    SUBTYPE OF ( extruded_face_solid );
      first_trim_condition   : trim_condition_select;
      second_trim_condition  : trim_condition_select;
      first_trim_intent      : trim_intent;
      second_trim_intent     : trim_intent;
      first_offset           : non_negative_length_measure;
      second_offset          : non_negative_length_measure;
    WHERE
      wr1: ( NOT ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PLANE_ANGLE_MEASURE' IN TYPEOF( 
               first_trim_condition ) ) OR ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'PLANE_ANGLE_MEASURE'  IN TYPEOF( second_trim_condition ) ) ) );
      wr2: ( NOT ( ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.LENGTH_MEASURE' IN TYPEOF( 
               first_trim_condition ) ) AND ( ( first_trim_intent = trim_intent.offset ) OR ( 
               first_trim_intent = trim_intent.up_to_next ) ) ) OR ( ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.LENGTH_MEASURE'  IN TYPEOF( 
               second_trim_condition ) ) AND ( ( second_trim_intent = trim_intent.offset ) OR ( 
               second_trim_intent = trim_intent.up_to_next ) ) ) ) );
      wr3: ( NOT ( ( ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.LENGTH_MEASURE' IN TYPEOF( 
               first_trim_condition ) ) ) AND ( ( first_trim_intent = trim_intent.blind ) OR ( 
               first_trim_intent = trim_intent.through_all ) ) ) OR ( ( NOT ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.LENGTH_MEASURE'  IN TYPEOF( 
               second_trim_condition ) ) ) AND ( ( second_trim_intent = trim_intent.blind ) OR ( 
               second_trim_intent = trim_intent.through_all ) ) ) ) );
      wr4: ( ( ( ( first_trim_intent = trim_intent.offset ) AND ( first_offset > 0 ) ) XOR ( ( 
               first_trim_intent <> trim_intent.offset ) AND ( first_offset = 0 ) ) ) AND ( ( ( 
               second_trim_intent = trim_intent.offset ) AND ( second_offset > 0 ) ) XOR ( ( 
               second_trim_intent <> trim_intent.offset ) AND ( second_offset = 0 ) ) ) );
      wr5: ( NOT ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.LENGTH_MEASURE' IN TYPEOF( 
               first_trim_condition ) ) AND ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.LENGTH_MEASURE' 
               IN TYPEOF( second_trim_condition ) ) AND ( first_trim_condition = second_trim_condition ) ) );
  END_ENTITY; -- extruded_face_solid_with_trim_conditions (line:15064 file:ap242ed2_mim_lf_v1.101.TY.exp)

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


  ENTITY(SELF)	extruded_face_solid_with_trim_conditions
    ATTR:  first_trim_condition,	TYPE: trim_condition_select -- EXPLICIT

    ATTR:  second_trim_condition,	TYPE: trim_condition_select -- EXPLICIT

    ATTR:  first_trim_intent,	TYPE: trim_intent -- EXPLICIT

    ATTR:  second_trim_intent,	TYPE: trim_intent -- EXPLICIT

    ATTR:  first_offset,	TYPE: non_negative_length_measure -- EXPLICIT

    ATTR:  second_offset,	TYPE: non_negative_length_measure -- EXPLICIT


  SUB- ENTITY(7)	extruded_face_solid_with_multiple_draft_angles
    ATTR:  drafted_edges,	TYPE: LIST [2 : ?] OF SET [1 : ?] OF edge_curve -- EXPLICIT

    ATTR:  draft_angles,	TYPE: LIST [2 : ?] OF plane_angle_measure -- EXPLICIT


  SUB- ENTITY(8)	extruded_face_solid_with_draft_angle
    ATTR:  draft_angle,	TYPE: plane_angle_measure -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _extruded_face_solid_with_trim_conditions : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _first_trim_condition: sTRIM_CONDITION_SELECT // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _second_trim_condition: sTRIM_CONDITION_SELECT // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _first_trim_intent: nTRIM_INTENT // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _second_trim_intent: nTRIM_INTENT // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _first_offset: tNON_NEGATIVE_LENGTH_MEASURE // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _second_offset: tNON_NEGATIVE_LENGTH_MEASURE // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._first_trim_condition.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._second_trim_condition.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._first_trim_intent.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._second_trim_intent.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._first_offset.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._second_offset.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._first_trim_condition.value.isValueEqualOptionally(to: rhs._first_trim_condition.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._second_trim_condition.value.isValueEqualOptionally(to: rhs._second_trim_condition.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._first_trim_intent.value.isValueEqualOptionally(to: rhs._first_trim_intent.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._second_trim_intent.value.isValueEqualOptionally(to: rhs._second_trim_intent.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._first_offset.value.isValueEqualOptionally(to: rhs._first_offset.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._second_offset.value.isValueEqualOptionally(to: rhs._second_offset.value, visited: &comppairs)	{
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
      if let comp = self._first_trim_condition.value.isValueEqualOptionally(to: rhs._first_trim_condition.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._second_trim_condition.value.isValueEqualOptionally(to: rhs._second_trim_condition.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._first_trim_intent.value.isValueEqualOptionally(to: rhs._first_trim_intent.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._second_trim_intent.value.isValueEqualOptionally(to: rhs._second_trim_intent.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._first_offset.value.isValueEqualOptionally(to: rhs._first_offset.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._second_offset.value.isValueEqualOptionally(to: rhs._second_offset.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF.FIRST_TRIM_CONDITION, IS: tPLANE_ANGLE_MEASURE.self)
      let _TEMP2 = SDAI.TYPEOF(SELF.SECOND_TRIM_CONDITION, IS: tPLANE_ANGLE_MEASURE.self)
      let _TEMP3 = _TEMP1 || _TEMP2
      let _TEMP4 =  !_TEMP3
      return _TEMP4
    }
    public static func WHERE_wr2(SELF: eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF.FIRST_TRIM_CONDITION, IS: tLENGTH_MEASURE.self)
      let _TEMP2 = nTRIM_INTENT.OFFSET
      let _TEMP3 = SDAI.FORCE_OPTIONAL(SELF.FIRST_TRIM_INTENT) .==. SDAI.FORCE_OPTIONAL(_TEMP2)
      let _TEMP4 = nTRIM_INTENT.UP_TO_NEXT
      let _TEMP5 = SDAI.FORCE_OPTIONAL(SELF.FIRST_TRIM_INTENT) .==. SDAI.FORCE_OPTIONAL(_TEMP4)
      let _TEMP6 = _TEMP3 || _TEMP5
      let _TEMP7 = _TEMP1 && _TEMP6
      let _TEMP8 = SDAI.TYPEOF(SELF.SECOND_TRIM_CONDITION, IS: tLENGTH_MEASURE.self)
      let _TEMP9 = nTRIM_INTENT.OFFSET
      let _TEMP10 = SDAI.FORCE_OPTIONAL(SELF.SECOND_TRIM_INTENT) .==. SDAI.FORCE_OPTIONAL(_TEMP9)
      let _TEMP11 = nTRIM_INTENT.UP_TO_NEXT
      let _TEMP12 = SDAI.FORCE_OPTIONAL(SELF.SECOND_TRIM_INTENT) .==. SDAI.FORCE_OPTIONAL(_TEMP11)
      let _TEMP13 = _TEMP10 || _TEMP12
      let _TEMP14 = _TEMP8 && _TEMP13
      let _TEMP15 = _TEMP7 || _TEMP14
      let _TEMP16 =  !_TEMP15
      return _TEMP16
    }
    public static func WHERE_wr3(SELF: eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF.FIRST_TRIM_CONDITION, IS: tLENGTH_MEASURE.self)
      let _TEMP2 =  !_TEMP1
      let _TEMP3 = nTRIM_INTENT.BLIND
      let _TEMP4 = SDAI.FORCE_OPTIONAL(SELF.FIRST_TRIM_INTENT) .==. SDAI.FORCE_OPTIONAL(_TEMP3)
      let _TEMP5 = nTRIM_INTENT.THROUGH_ALL
      let _TEMP6 = SDAI.FORCE_OPTIONAL(SELF.FIRST_TRIM_INTENT) .==. SDAI.FORCE_OPTIONAL(_TEMP5)
      let _TEMP7 = _TEMP4 || _TEMP6
      let _TEMP8 = _TEMP2 && _TEMP7
      let _TEMP9 = SDAI.TYPEOF(SELF.SECOND_TRIM_CONDITION, IS: tLENGTH_MEASURE.self)
      let _TEMP10 =  !_TEMP9
      let _TEMP11 = nTRIM_INTENT.BLIND
      let _TEMP12 = SDAI.FORCE_OPTIONAL(SELF.SECOND_TRIM_INTENT) .==. SDAI.FORCE_OPTIONAL(_TEMP11)
      let _TEMP13 = nTRIM_INTENT.THROUGH_ALL
      let _TEMP14 = SDAI.FORCE_OPTIONAL(SELF.SECOND_TRIM_INTENT) .==. SDAI.FORCE_OPTIONAL(_TEMP13)
      let _TEMP15 = _TEMP12 || _TEMP14
      let _TEMP16 = _TEMP10 && _TEMP15
      let _TEMP17 = _TEMP8 || _TEMP16
      let _TEMP18 =  !_TEMP17
      return _TEMP18
    }
    public static func WHERE_wr4(SELF: eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = nTRIM_INTENT.OFFSET
      let _TEMP2 = SDAI.FORCE_OPTIONAL(SELF.FIRST_TRIM_INTENT) .==. SDAI.FORCE_OPTIONAL(_TEMP1)
      let _TEMP3 = SDAI.FORCE_OPTIONAL(SELF.FIRST_OFFSET) > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      let _TEMP4 = _TEMP2 && _TEMP3
      let _TEMP5 = nTRIM_INTENT.OFFSET
      let _TEMP6 = SDAI.FORCE_OPTIONAL(SELF.FIRST_TRIM_INTENT) .!=. SDAI.FORCE_OPTIONAL(_TEMP5)
      let _TEMP7 = SDAI.FORCE_OPTIONAL(SELF.FIRST_OFFSET) .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      let _TEMP8 = _TEMP6 && _TEMP7
      let _TEMP9 = _TEMP4 .!=. _TEMP8
      let _TEMP10 = nTRIM_INTENT.OFFSET
      let _TEMP11 = SDAI.FORCE_OPTIONAL(SELF.SECOND_TRIM_INTENT) .==. SDAI.FORCE_OPTIONAL(_TEMP10)
      let _TEMP12 = SDAI.FORCE_OPTIONAL(SELF.SECOND_OFFSET) > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      let _TEMP13 = _TEMP11 && _TEMP12
      let _TEMP14 = nTRIM_INTENT.OFFSET
      let _TEMP15 = SDAI.FORCE_OPTIONAL(SELF.SECOND_TRIM_INTENT) .!=. SDAI.FORCE_OPTIONAL(_TEMP14)
      let _TEMP16 = SDAI.FORCE_OPTIONAL(SELF.SECOND_OFFSET) .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      let _TEMP17 = _TEMP15 && _TEMP16
      let _TEMP18 = _TEMP13 .!=. _TEMP17
      let _TEMP19 = _TEMP9 && _TEMP18
      return _TEMP19
    }
    public static func WHERE_wr5(SELF: eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF.FIRST_TRIM_CONDITION, IS: tLENGTH_MEASURE.self)
      let _TEMP2 = SDAI.TYPEOF(SELF.SECOND_TRIM_CONDITION, IS: tLENGTH_MEASURE.self)
      let _TEMP3 = _TEMP1 && _TEMP2
      let _TEMP4 = SDAI.FORCE_OPTIONAL(SELF.FIRST_TRIM_CONDITION) .==. SDAI.FORCE_OPTIONAL(SELF.SECOND_TRIM_CONDITION)
      let _TEMP5 = _TEMP3 && _TEMP4
      let _TEMP6 =  !_TEMP5
      return _TEMP6
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(FIRST_TRIM_CONDITION: sTRIM_CONDITION_SELECT, SECOND_TRIM_CONDITION: sTRIM_CONDITION_SELECT, 
                FIRST_TRIM_INTENT: nTRIM_INTENT, SECOND_TRIM_INTENT: nTRIM_INTENT, 
                FIRST_OFFSET: tNON_NEGATIVE_LENGTH_MEASURE, SECOND_OFFSET: tNON_NEGATIVE_LENGTH_MEASURE) {
      self._first_trim_condition = FIRST_TRIM_CONDITION
      self._second_trim_condition = SECOND_TRIM_CONDITION
      self._first_trim_intent = FIRST_TRIM_INTENT
      self._second_trim_intent = SECOND_TRIM_INTENT
      self._first_offset = FIRST_OFFSET
      self._second_offset = SECOND_OFFSET
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 6
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: sTRIM_CONDITION_SELECT.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: sTRIM_CONDITION_SELECT.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p2) = exchangeStructure.recoverRequiredParameter(as: nTRIM_INTENT.self, from: parameters[2])
      else { exchangeStructure.add(errorContext: "while recovering parameter #2 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p3) = exchangeStructure.recoverRequiredParameter(as: nTRIM_INTENT.self, from: parameters[3])
      else { exchangeStructure.add(errorContext: "while recovering parameter #3 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p4) = exchangeStructure.recoverRequiredParameter(as: 
        tNON_NEGATIVE_LENGTH_MEASURE.self, from: parameters[4])
      else { exchangeStructure.add(errorContext: "while recovering parameter #4 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p5) = exchangeStructure.recoverRequiredParameter(as: 
        tNON_NEGATIVE_LENGTH_MEASURE.self, from: parameters[5])
      else { exchangeStructure.add(errorContext: "while recovering parameter #5 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( FIRST_TRIM_CONDITION: p0, SECOND_TRIM_CONDITION: p1, FIRST_TRIM_INTENT: p2, SECOND_TRIM_INTENT: p3, FIRST_OFFSET: p4, SECOND_OFFSET: p5 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY extruded_face_solid_with_trim_conditions
    SUPERTYPE OF ( 
        ONEOF ( 
            extruded_face_solid_with_draft_angle, 
            extruded_face_solid_with_multiple_draft_angles ) )
    SUBTYPE OF ( extruded_face_solid );
      first_trim_condition   : trim_condition_select;
      second_trim_condition  : trim_condition_select;
      first_trim_intent      : trim_intent;
      second_trim_intent     : trim_intent;
      first_offset           : non_negative_length_measure;
      second_offset          : non_negative_length_measure;
    WHERE
      wr1: ( NOT ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PLANE_ANGLE_MEASURE' IN TYPEOF( 
               first_trim_condition ) ) OR ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'PLANE_ANGLE_MEASURE'  IN TYPEOF( second_trim_condition ) ) ) );
      wr2: ( NOT ( ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.LENGTH_MEASURE' IN TYPEOF( 
               first_trim_condition ) ) AND ( ( first_trim_intent = trim_intent.offset ) OR ( 
               first_trim_intent = trim_intent.up_to_next ) ) ) OR ( ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.LENGTH_MEASURE'  IN TYPEOF( 
               second_trim_condition ) ) AND ( ( second_trim_intent = trim_intent.offset ) OR ( 
               second_trim_intent = trim_intent.up_to_next ) ) ) ) );
      wr3: ( NOT ( ( ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.LENGTH_MEASURE' IN TYPEOF( 
               first_trim_condition ) ) ) AND ( ( first_trim_intent = trim_intent.blind ) OR ( 
               first_trim_intent = trim_intent.through_all ) ) ) OR ( ( NOT ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.LENGTH_MEASURE'  IN TYPEOF( 
               second_trim_condition ) ) ) AND ( ( second_trim_intent = trim_intent.blind ) OR ( 
               second_trim_intent = trim_intent.through_all ) ) ) ) );
      wr4: ( ( ( ( first_trim_intent = trim_intent.offset ) AND ( first_offset > 0 ) ) XOR ( ( 
               first_trim_intent <> trim_intent.offset ) AND ( first_offset = 0 ) ) ) AND ( ( ( 
               second_trim_intent = trim_intent.offset ) AND ( second_offset > 0 ) ) XOR ( ( 
               second_trim_intent <> trim_intent.offset ) AND ( second_offset = 0 ) ) ) );
      wr5: ( NOT ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.LENGTH_MEASURE' IN TYPEOF( 
               first_trim_condition ) ) AND ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.LENGTH_MEASURE' 
               IN TYPEOF( second_trim_condition ) ) AND ( first_trim_condition = second_trim_condition ) ) );
  END_ENTITY; -- extruded_face_solid_with_trim_conditions (line:15064 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _extruded_face_solid_with_trim_conditions.self
    }
    public let partialEntity: _extruded_face_solid_with_trim_conditions

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_eSOLID_MODEL: eSOLID_MODEL 	// [3]
    public let super_eSWEPT_FACE_SOLID: eSWEPT_FACE_SOLID 	// [4]
    public let super_eEXTRUDED_FACE_SOLID: eEXTRUDED_FACE_SOLID 	// [5]
    public var super_eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS: eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS { return self } 	// [6]

    //MARK: SUBTYPES
    public var sub_eEXTRUDED_FACE_SOLID_WITH_MULTIPLE_DRAFT_ANGLES: eEXTRUDED_FACE_SOLID_WITH_MULTIPLE_DRAFT_ANGLES? {	// [7]
      return self.complexEntity.entityReference(eEXTRUDED_FACE_SOLID_WITH_MULTIPLE_DRAFT_ANGLES.self)
    }

    public var sub_eEXTRUDED_FACE_SOLID_WITH_DRAFT_ANGLE: eEXTRUDED_FACE_SOLID_WITH_DRAFT_ANGLE? {	// [8]
      return self.complexEntity.entityReference(eEXTRUDED_FACE_SOLID_WITH_DRAFT_ANGLE.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS`` )
    public var SECOND_TRIM_CONDITION: sTRIM_CONDITION_SELECT {
      get {
        return SDAI.UNWRAP( self.partialEntity._second_trim_condition )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._second_trim_condition = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS`` )
    public var FIRST_TRIM_INTENT: nTRIM_INTENT {
      get {
        return SDAI.UNWRAP( self.partialEntity._first_trim_intent )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._first_trim_intent = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS`` )
    public var SECOND_TRIM_INTENT: nTRIM_INTENT {
      get {
        return SDAI.UNWRAP( self.partialEntity._second_trim_intent )
      }
      set(newValue) {
        let partial = self.partialEntity
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
    /// - origin: SELF( ``eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS`` )
    public var FIRST_TRIM_CONDITION: sTRIM_CONDITION_SELECT {
      get {
        return SDAI.UNWRAP( self.partialEntity._first_trim_condition )
      }
      set(newValue) {
        let partial = self.partialEntity
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
    /// - origin: SELF( ``eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS`` )
    public var FIRST_OFFSET: tNON_NEGATIVE_LENGTH_MEASURE {
      get {
        return SDAI.UNWRAP( self.partialEntity._first_offset )
      }
      set(newValue) {
        let partial = self.partialEntity
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
    /// - origin: SELF( ``eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS`` )
    public var SECOND_OFFSET: tNON_NEGATIVE_LENGTH_MEASURE {
      get {
        return SDAI.UNWRAP( self.partialEntity._second_offset )
      }
      set(newValue) {
        let partial = self.partialEntity
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
      guard let partial = complexEntity?.partialEntityInstance(_extruded_face_solid_with_trim_conditions.self) else { return nil }
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
      result[prefix2 + " .WHERE_wr1"] = _extruded_face_solid_with_trim_conditions.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _extruded_face_solid_with_trim_conditions.WHERE_wr2(SELF: instance)
      result[prefix2 + " .WHERE_wr3"] = _extruded_face_solid_with_trim_conditions.WHERE_wr3(SELF: instance)
      result[prefix2 + " .WHERE_wr4"] = _extruded_face_solid_with_trim_conditions.WHERE_wr4(SELF: instance)
      result[prefix2 + " .WHERE_wr5"] = _extruded_face_solid_with_trim_conditions.WHERE_wr5(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "EXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS", type: self, explicitAttributeCount: 6)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eSOLID_MODEL.self)
      entityDef.add(supertype: eSWEPT_FACE_SOLID.self)
      entityDef.add(supertype: eEXTRUDED_FACE_SOLID.self)
      entityDef.add(supertype: eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "SECOND_TRIM_CONDITION", keyPath: \eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS.SECOND_TRIM_CONDITION, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "FIRST_TRIM_INTENT", keyPath: \eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS.FIRST_TRIM_INTENT, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SECOND_TRIM_INTENT", keyPath: \eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS.SECOND_TRIM_INTENT, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SWEPT_FACE", keyPath: \eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS.SWEPT_FACE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "FIRST_TRIM_CONDITION", keyPath: \eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS.FIRST_TRIM_CONDITION, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DRAFTED_EDGES", keyPath: \eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS.DRAFTED_EDGES, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "FIRST_OFFSET", keyPath: \eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS.FIRST_OFFSET, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DRAFT_ANGLES", keyPath: \eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS.DRAFT_ANGLES, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "EXTRUDED_DIRECTION", keyPath: \eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS.EXTRUDED_DIRECTION, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "SECOND_OFFSET", keyPath: \eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS.SECOND_OFFSET, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DRAFT_ANGLE", keyPath: \eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS.DRAFT_ANGLE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DEPTH", keyPath: \eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS.DEPTH, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \eEXTRUDED_FACE_SOLID_WITH_TRIM_CONDITIONS.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
