/* file: swept_area_solid.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY swept_area_solid
    SUPERTYPE OF ( 
        ONEOF ( 
            revolved_area_solid, 
            extruded_area_solid, 
            surface_curve_swept_area_solid ) )
    SUBTYPE OF ( solid_model );
      swept_area  : curve_bounded_surface;
    WHERE
      wr1: ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PLANE' IN TYPEOF( swept_area.basis_surface ) );
  END_ENTITY; -- swept_area_solid (line:31443 file:ap242ed2_mim_lf_v1.101.TY.exp)

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

  ENTITY(SELF)	swept_area_solid
    ATTR:  swept_area,	TYPE: curve_bounded_surface -- EXPLICIT


  SUB- ENTITY(5)	revolved_area_solid
    ATTR:  axis,	TYPE: axis1_placement -- EXPLICIT

    ATTR:  angle,	TYPE: plane_angle_measure -- EXPLICIT

    ATTR:  axis_line,	TYPE: line -- DERIVED
      := representation_item( '' ) || geometric_representation_item(  ) || curve(  ) || line( axis.location, 
        representation_item( '' ) || geometric_representation_item(  ) || vector( axis.z, 1 ) )


  SUB- ENTITY(6)	ruled_surface_swept_area_solid
    (no local attributes)

  SUB- ENTITY(7)	surface_curve_swept_area_solid
    ATTR:  directrix,	TYPE: curve -- EXPLICIT

    ATTR:  start_param,	TYPE: REAL -- EXPLICIT

    ATTR:  end_param,	TYPE: REAL -- EXPLICIT

    ATTR:  reference_surface,	TYPE: surface -- EXPLICIT


  SUB- ENTITY(8)	extruded_area_solid
    ATTR:  extruded_direction,	TYPE: direction -- EXPLICIT

    ATTR:  depth,	TYPE: positive_length_measure -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _swept_area_solid : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eSWEPT_AREA_SOLID.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _swept_area: eCURVE_BOUNDED_SURFACE // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sSWEPT_SURFACE_OR_SOLID.typeName)) // -> Self
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._swept_area.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._swept_area.value.isValueEqualOptionally(to: rhs._swept_area.value, visited: &comppairs)	{
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
      if let comp = self._swept_area.value.isValueEqualOptionally(to: rhs._swept_area.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eSWEPT_AREA_SOLID?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF.SWEPT_AREA.BASIS_SURFACE, IS: ePLANE.self)
      return _TEMP1
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(SWEPT_AREA: eCURVE_BOUNDED_SURFACE) {
      self._swept_area = SWEPT_AREA
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: eCURVE_BOUNDED_SURFACE.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( SWEPT_AREA: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY swept_area_solid
    SUPERTYPE OF ( 
        ONEOF ( 
            revolved_area_solid, 
            extruded_area_solid, 
            surface_curve_swept_area_solid ) )
    SUBTYPE OF ( solid_model );
      swept_area  : curve_bounded_surface;
    WHERE
      wr1: ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PLANE' IN TYPEOF( swept_area.basis_surface ) );
  END_ENTITY; -- swept_area_solid (line:31443 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eSWEPT_AREA_SOLID : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _swept_area_solid.self
    }
    public let partialEntity: _swept_area_solid

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_eSOLID_MODEL: eSOLID_MODEL 	// [3]
    public var super_eSWEPT_AREA_SOLID: eSWEPT_AREA_SOLID { return self } 	// [4]

    //MARK: SUBTYPES
    public var sub_eREVOLVED_AREA_SOLID: eREVOLVED_AREA_SOLID? {	// [5]
      return self.complexEntity.entityReference(eREVOLVED_AREA_SOLID.self)
    }

    public var sub_eRULED_SURFACE_SWEPT_AREA_SOLID: eRULED_SURFACE_SWEPT_AREA_SOLID? {	// [6]
      return self.complexEntity.entityReference(eRULED_SURFACE_SWEPT_AREA_SOLID.self)
    }

    public var sub_eSURFACE_CURVE_SWEPT_AREA_SOLID: eSURFACE_CURVE_SWEPT_AREA_SOLID? {	// [7]
      return self.complexEntity.entityReference(eSURFACE_CURVE_SWEPT_AREA_SOLID.self)
    }

    public var sub_eEXTRUDED_AREA_SOLID: eEXTRUDED_AREA_SOLID? {	// [8]
      return self.complexEntity.entityReference(eEXTRUDED_AREA_SOLID.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eSURFACE_CURVE_SWEPT_AREA_SOLID`` )
    public var REFERENCE_SURFACE: eSURFACE?  {
      get {
        return sub_eSURFACE_CURVE_SWEPT_AREA_SOLID?.partialEntity._reference_surface
      }
      set(newValue) {
        guard let partial = sub_eSURFACE_CURVE_SWEPT_AREA_SOLID?.super_eSURFACE_CURVE_SWEPT_AREA_SOLID
          .partialEntity else { return }
        partial._reference_surface = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eSURFACE_CURVE_SWEPT_AREA_SOLID`` )
    public var END_PARAM: SDAI.REAL?  {
      get {
        return sub_eSURFACE_CURVE_SWEPT_AREA_SOLID?.partialEntity._end_param
      }
      set(newValue) {
        guard let partial = sub_eSURFACE_CURVE_SWEPT_AREA_SOLID?.super_eSURFACE_CURVE_SWEPT_AREA_SOLID
          .partialEntity else { return }
        partial._end_param = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUB( ``eREVOLVED_AREA_SOLID`` )
    public var AXIS_LINE: eLINE?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"AXIS_LINE") {
          return cached.value as! eLINE? 
        }
        guard let origin = sub_eREVOLVED_AREA_SOLID else { return nil }
        let value = eLINE(origin.partialEntity._axis_line__getter(SELF: origin))
        updateCache(derivedAttributeName:"AXIS_LINE", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eREVOLVED_AREA_SOLID`` )
    public var ANGLE: tPLANE_ANGLE_MEASURE?  {
      get {
        return sub_eREVOLVED_AREA_SOLID?.partialEntity._angle
      }
      set(newValue) {
        guard let partial = sub_eREVOLVED_AREA_SOLID?.super_eREVOLVED_AREA_SOLID.partialEntity
          else { return }
        partial._angle = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eREVOLVED_AREA_SOLID`` )
    public var AXIS: eAXIS1_PLACEMENT?  {
      get {
        return sub_eREVOLVED_AREA_SOLID?.partialEntity._axis
      }
      set(newValue) {
        guard let partial = sub_eREVOLVED_AREA_SOLID?.super_eREVOLVED_AREA_SOLID.partialEntity
          else { return }
        partial._axis = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eSURFACE_CURVE_SWEPT_AREA_SOLID`` )
    public var DIRECTRIX: eCURVE?  {
      get {
        return sub_eSURFACE_CURVE_SWEPT_AREA_SOLID?.partialEntity._directrix
      }
      set(newValue) {
        guard let partial = sub_eSURFACE_CURVE_SWEPT_AREA_SOLID?.super_eSURFACE_CURVE_SWEPT_AREA_SOLID
          .partialEntity else { return }
        partial._directrix = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eEXTRUDED_AREA_SOLID`` )
    public var EXTRUDED_DIRECTION: eDIRECTION?  {
      get {
        return sub_eEXTRUDED_AREA_SOLID?.partialEntity._extruded_direction
      }
      set(newValue) {
        guard let partial = sub_eEXTRUDED_AREA_SOLID?.super_eEXTRUDED_AREA_SOLID.partialEntity
          else { return }
        partial._extruded_direction = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eSWEPT_AREA_SOLID`` )
    public var SWEPT_AREA: eCURVE_BOUNDED_SURFACE {
      get {
        return SDAI.UNWRAP( self.partialEntity._swept_area )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._swept_area = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eSURFACE_CURVE_SWEPT_AREA_SOLID`` )
    public var START_PARAM: SDAI.REAL?  {
      get {
        return sub_eSURFACE_CURVE_SWEPT_AREA_SOLID?.partialEntity._start_param
      }
      set(newValue) {
        guard let partial = sub_eSURFACE_CURVE_SWEPT_AREA_SOLID?.super_eSURFACE_CURVE_SWEPT_AREA_SOLID
          .partialEntity else { return }
        partial._start_param = SDAI.UNWRAP(newValue)
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
    /// - origin: SUB( ``eEXTRUDED_AREA_SOLID`` )
    public var DEPTH: tPOSITIVE_LENGTH_MEASURE?  {
      get {
        return sub_eEXTRUDED_AREA_SOLID?.partialEntity._depth
      }
      set(newValue) {
        guard let partial = sub_eEXTRUDED_AREA_SOLID?.super_eEXTRUDED_AREA_SOLID.partialEntity
          else { return }
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
      guard let partial = complexEntity?.partialEntityInstance(_swept_area_solid.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(eSOLID_MODEL.self) else { return nil }
      self.super_eSOLID_MODEL = super3

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
      result[prefix2 + " .WHERE_wr1"] = _swept_area_solid.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "SWEPT_AREA_SOLID", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eSOLID_MODEL.self)
      entityDef.add(supertype: eSWEPT_AREA_SOLID.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "REFERENCE_SURFACE", keyPath: \eSWEPT_AREA_SOLID.REFERENCE_SURFACE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "END_PARAM", keyPath: \eSWEPT_AREA_SOLID.END_PARAM, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "AXIS_LINE", keyPath: \eSWEPT_AREA_SOLID.AXIS_LINE, 
        kind: .derived, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ANGLE", keyPath: \eSWEPT_AREA_SOLID.ANGLE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "AXIS", keyPath: \eSWEPT_AREA_SOLID.AXIS, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DIRECTRIX", keyPath: \eSWEPT_AREA_SOLID.DIRECTRIX, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "EXTRUDED_DIRECTION", keyPath: \eSWEPT_AREA_SOLID.EXTRUDED_DIRECTION, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "SWEPT_AREA", keyPath: \eSWEPT_AREA_SOLID.SWEPT_AREA, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "START_PARAM", keyPath: \eSWEPT_AREA_SOLID.START_PARAM, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eSWEPT_AREA_SOLID.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DEPTH", keyPath: \eSWEPT_AREA_SOLID.DEPTH, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \eSWEPT_AREA_SOLID.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
