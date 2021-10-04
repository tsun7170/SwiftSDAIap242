/* file: revolved_face_solid.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY revolved_face_solid
    SUBTYPE OF ( swept_face_solid );
      axis   : axis1_placement;
      angle  : plane_angle_measure;
    DERIVE
      axis_line  : line := representation_item( '' ) || geometric_representation_item(  ) || curve(  ) || 
                     line( axis.location, representation_item( '' ) || geometric_representation_item(  ) || 
                     vector( axis.z, 1 ) );
  END_ENTITY; -- revolved_face_solid (line:27677 file:ap242ed2_mim_lf_v1.101.TY.exp)

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


  ENTITY(SELF)	revolved_face_solid
    ATTR:  axis,	TYPE: axis1_placement -- EXPLICIT

    ATTR:  angle,	TYPE: plane_angle_measure -- EXPLICIT

    ATTR:  axis_line,	TYPE: line -- DERIVED
      := representation_item( '' ) || geometric_representation_item(  ) || curve(  ) || line( axis.location, 
        representation_item( '' ) || geometric_representation_item(  ) || vector( axis.z, 1 ) )


  SUB- ENTITY(6)	revolved_face_solid_with_trim_conditions
    ATTR:  first_trim_condition,	TYPE: trim_condition_select -- EXPLICIT

    ATTR:  second_trim_condition,	TYPE: trim_condition_select -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _revolved_face_solid : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eREVOLVED_FACE_SOLID.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _axis: eAXIS1_PLACEMENT // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _angle: tPLANE_ANGLE_MEASURE // PLAIN EXPLICIT ATTRIBUTE

    /// DERIVE ATTRIBUTE
    internal func _axis_line__getter(SELF: eREVOLVED_FACE_SOLID) -> eLINE?  {

      let _TEMP1 = _representation_item(NAME: SDAI.UNWRAP(tLABEL("")))
      let _TEMP2 = _geometric_representation_item()
      let _TEMP3 = _TEMP1 .||. _TEMP2
      let _TEMP4 = _curve()
      let _TEMP5 = _TEMP3 .||. _TEMP4
      let _TEMP6 = SELF.AXIS.LOCATION
      let _TEMP7 = _representation_item(NAME: SDAI.UNWRAP(tLABEL("")))
      let _TEMP8 = _geometric_representation_item()
      let _TEMP9 = _TEMP7 .||. _TEMP8
      let _TEMP10 = SELF.AXIS.Z
      let _TEMP11 = _vector(ORIENTATION: SDAI.UNWRAP(_TEMP10), 
                            MAGNITUDE: SDAI.UNWRAP(tLENGTH_MEASURE(1.0000000000e+00)))
      let _TEMP12 = _TEMP9 .||. _TEMP11
      let _TEMP13 = _line(PNT: SDAI.UNWRAP(_TEMP6), 
                          DIR: SDAI.UNWRAP(eVECTOR(/*SDAI.GENERIC_ENTITY*/_TEMP12)))
      let _TEMP14 = _TEMP5 .||. _TEMP13
      return eLINE(/*SDAI.GENERIC_ENTITY*/_TEMP14)
    }

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sAXIAL_GEOMETRY_CONSTRAINT_ELEMENT.typeName)) // -> Self
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._axis.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._angle.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._axis.value.isValueEqualOptionally(to: rhs._axis.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._angle.value.isValueEqualOptionally(to: rhs._angle.value, visited: &comppairs)	{
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
      if let comp = self._axis.value.isValueEqualOptionally(to: rhs._axis.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._angle.value.isValueEqualOptionally(to: rhs._angle.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(AXIS: eAXIS1_PLACEMENT, ANGLE: tPLANE_ANGLE_MEASURE) {
      self._axis = AXIS
      self._angle = ANGLE
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: eAXIS1_PLACEMENT.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: tPLANE_ANGLE_MEASURE.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( AXIS: p0, ANGLE: p1 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY revolved_face_solid
    SUBTYPE OF ( swept_face_solid );
      axis   : axis1_placement;
      angle  : plane_angle_measure;
    DERIVE
      axis_line  : line := representation_item( '' ) || geometric_representation_item(  ) || curve(  ) || 
                     line( axis.location, representation_item( '' ) || geometric_representation_item(  ) || 
                     vector( axis.z, 1 ) );
  END_ENTITY; -- revolved_face_solid (line:27677 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eREVOLVED_FACE_SOLID : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _revolved_face_solid.self
    }
    public let partialEntity: _revolved_face_solid

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_eSOLID_MODEL: eSOLID_MODEL 	// [3]
    public let super_eSWEPT_FACE_SOLID: eSWEPT_FACE_SOLID 	// [4]
    public var super_eREVOLVED_FACE_SOLID: eREVOLVED_FACE_SOLID { return self } 	// [5]

    //MARK: SUBTYPES
    public var sub_eREVOLVED_FACE_SOLID_WITH_TRIM_CONDITIONS: eREVOLVED_FACE_SOLID_WITH_TRIM_CONDITIONS? {	// [6]
      return self.complexEntity.entityReference(eREVOLVED_FACE_SOLID_WITH_TRIM_CONDITIONS.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eREVOLVED_FACE_SOLID_WITH_TRIM_CONDITIONS`` )
    public var SECOND_TRIM_CONDITION: sTRIM_CONDITION_SELECT?  {
      get {
        return sub_eREVOLVED_FACE_SOLID_WITH_TRIM_CONDITIONS?.partialEntity._second_trim_condition
      }
      set(newValue) {
        guard let partial = sub_eREVOLVED_FACE_SOLID_WITH_TRIM_CONDITIONS?.super_eREVOLVED_FACE_SOLID_WITH_TRIM_CONDITIONS
          .partialEntity else { return }
        partial._second_trim_condition = SDAI.UNWRAP(newValue)
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
    /// - origin: SUB( ``eREVOLVED_FACE_SOLID_WITH_TRIM_CONDITIONS`` )
    public var FIRST_TRIM_CONDITION: sTRIM_CONDITION_SELECT?  {
      get {
        return sub_eREVOLVED_FACE_SOLID_WITH_TRIM_CONDITIONS?.partialEntity._first_trim_condition
      }
      set(newValue) {
        guard let partial = sub_eREVOLVED_FACE_SOLID_WITH_TRIM_CONDITIONS?.super_eREVOLVED_FACE_SOLID_WITH_TRIM_CONDITIONS
          .partialEntity else { return }
        partial._first_trim_condition = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SELF( ``eREVOLVED_FACE_SOLID`` )
    public var AXIS_LINE: eLINE?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"AXIS_LINE") {
          return cached.value as! eLINE? 
        }
        let origin = self
        let value = origin.partialEntity._axis_line__getter(SELF: origin)
        updateCache(derivedAttributeName:"AXIS_LINE", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eREVOLVED_FACE_SOLID`` )
    public var ANGLE: tPLANE_ANGLE_MEASURE {
      get {
        return SDAI.UNWRAP( self.partialEntity._angle )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._angle = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eREVOLVED_FACE_SOLID`` )
    public var AXIS: eAXIS1_PLACEMENT {
      get {
        return SDAI.UNWRAP( self.partialEntity._axis )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._axis = SDAI.UNWRAP(newValue)
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
      guard let partial = complexEntity?.partialEntityInstance(_revolved_face_solid.self) else { return nil }
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


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "REVOLVED_FACE_SOLID", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eSOLID_MODEL.self)
      entityDef.add(supertype: eSWEPT_FACE_SOLID.self)
      entityDef.add(supertype: eREVOLVED_FACE_SOLID.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "SECOND_TRIM_CONDITION", keyPath: \eREVOLVED_FACE_SOLID.SECOND_TRIM_CONDITION, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "SWEPT_FACE", keyPath: \eREVOLVED_FACE_SOLID.SWEPT_FACE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "FIRST_TRIM_CONDITION", keyPath: \eREVOLVED_FACE_SOLID.FIRST_TRIM_CONDITION, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "AXIS_LINE", keyPath: \eREVOLVED_FACE_SOLID.AXIS_LINE, 
        kind: .derived, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ANGLE", keyPath: \eREVOLVED_FACE_SOLID.ANGLE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "AXIS", keyPath: \eREVOLVED_FACE_SOLID.AXIS, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eREVOLVED_FACE_SOLID.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \eREVOLVED_FACE_SOLID.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
