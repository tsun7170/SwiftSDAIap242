/* file: ruled_surface_swept_area_solid.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY ruled_surface_swept_area_solid
    SUBTYPE OF ( surface_curve_swept_area_solid );
    WHERE
      wr1: ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.B_SPLINE_SURFACE' IN TYPEOF( SELF.
               reference_surface ) ) AND ( SELF.reference_surface\b_spline_surface.u_degree = 1 ) );
      wr2: ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PCURVE' IN TYPEOF( SELF.directrix ) ) OR ( ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.B_SPLINE_CURVE'  IN TYPEOF( SELF.directrix\
               surface_curve.curve_3d ) ) AND ( SELF.directrix\surface_curve.curve_3d\b_spline_curve.degree =
               SELF.reference_surface\b_spline_surface.v_degree ) ) );
  END_ENTITY; -- ruled_surface_swept_area_solid (line:28391 file:ap242ed2_mim_lf_v1.101.TY.exp)

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

  SUPER- ENTITY(4)	swept_area_solid
    ATTR:  swept_area,	TYPE: curve_bounded_surface -- EXPLICIT


  SUPER- ENTITY(5)	surface_curve_swept_area_solid
    ATTR:  directrix,	TYPE: curve -- EXPLICIT

    ATTR:  start_param,	TYPE: REAL -- EXPLICIT

    ATTR:  end_param,	TYPE: REAL -- EXPLICIT

    ATTR:  reference_surface,	TYPE: surface -- EXPLICIT


  ENTITY(SELF)	ruled_surface_swept_area_solid
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _ruled_surface_swept_area_solid : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eRULED_SURFACE_SWEPT_AREA_SOLID.self
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


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eRULED_SURFACE_SWEPT_AREA_SOLID?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF.REFERENCE_SURFACE, IS: eB_SPLINE_SURFACE.self)
      let _TEMP2 = SELF.REFERENCE_SURFACE
      let _TEMP3 = _TEMP2.GROUP_REF(eB_SPLINE_SURFACE.self)
      let _TEMP4 = _TEMP3?.U_DEGREE
      let _TEMP5 = _TEMP4 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      let _TEMP6 = _TEMP1 && _TEMP5
      return _TEMP6
    }
    public static func WHERE_wr2(SELF: eRULED_SURFACE_SWEPT_AREA_SOLID?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF.DIRECTRIX, IS: ePCURVE.self)
      let _TEMP2 = SDAI.TYPEOF(SELF.DIRECTRIX.GROUP_REF(eSURFACE_CURVE.self)?.CURVE_3D, 
        IS: eB_SPLINE_CURVE.self)
      let _TEMP3 = SELF.DIRECTRIX
      let _TEMP4 = _TEMP3.GROUP_REF(eSURFACE_CURVE.self)
      let _TEMP5 = _TEMP4?.CURVE_3D
      let _TEMP6 = _TEMP5?.GROUP_REF(eB_SPLINE_CURVE.self)
      let _TEMP7 = _TEMP6?.DEGREE
      let _TEMP8 = SELF.REFERENCE_SURFACE
      let _TEMP9 = _TEMP8.GROUP_REF(eB_SPLINE_SURFACE.self)
      let _TEMP10 = _TEMP9?.V_DEGREE
      let _TEMP11 = _TEMP7 .==. _TEMP10
      let _TEMP12 = _TEMP2 && _TEMP11
      let _TEMP13 = _TEMP1 || _TEMP12
      return _TEMP13
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
  ENTITY ruled_surface_swept_area_solid
    SUBTYPE OF ( surface_curve_swept_area_solid );
    WHERE
      wr1: ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.B_SPLINE_SURFACE' IN TYPEOF( SELF.
               reference_surface ) ) AND ( SELF.reference_surface\b_spline_surface.u_degree = 1 ) );
      wr2: ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PCURVE' IN TYPEOF( SELF.directrix ) ) OR ( ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.B_SPLINE_CURVE'  IN TYPEOF( SELF.directrix\
               surface_curve.curve_3d ) ) AND ( SELF.directrix\surface_curve.curve_3d\b_spline_curve.degree =
               SELF.reference_surface\b_spline_surface.v_degree ) ) );
  END_ENTITY; -- ruled_surface_swept_area_solid (line:28391 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eRULED_SURFACE_SWEPT_AREA_SOLID : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _ruled_surface_swept_area_solid.self
    }
    public let partialEntity: _ruled_surface_swept_area_solid

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_eSOLID_MODEL: eSOLID_MODEL 	// [3]
    public let super_eSWEPT_AREA_SOLID: eSWEPT_AREA_SOLID 	// [4]
    public let super_eSURFACE_CURVE_SWEPT_AREA_SOLID: eSURFACE_CURVE_SWEPT_AREA_SOLID 	// [5]
    public var super_eRULED_SURFACE_SWEPT_AREA_SOLID: eRULED_SURFACE_SWEPT_AREA_SOLID { return self } 	// [6]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eSURFACE_CURVE_SWEPT_AREA_SOLID`` )
    public var REFERENCE_SURFACE: eSURFACE {
      get {
        return SDAI.UNWRAP( super_eSURFACE_CURVE_SWEPT_AREA_SOLID.partialEntity._reference_surface )
      }
      set(newValue) {
        let partial = super_eSURFACE_CURVE_SWEPT_AREA_SOLID.partialEntity
        partial._reference_surface = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eSURFACE_CURVE_SWEPT_AREA_SOLID`` )
    public var END_PARAM: SDAI.REAL {
      get {
        return SDAI.UNWRAP( super_eSURFACE_CURVE_SWEPT_AREA_SOLID.partialEntity._end_param )
      }
      set(newValue) {
        let partial = super_eSURFACE_CURVE_SWEPT_AREA_SOLID.partialEntity
        partial._end_param = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eSURFACE_CURVE_SWEPT_AREA_SOLID`` )
    public var DIRECTRIX: eCURVE {
      get {
        return SDAI.UNWRAP( super_eSURFACE_CURVE_SWEPT_AREA_SOLID.partialEntity._directrix )
      }
      set(newValue) {
        let partial = super_eSURFACE_CURVE_SWEPT_AREA_SOLID.partialEntity
        partial._directrix = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eSWEPT_AREA_SOLID`` )
    public var SWEPT_AREA: eCURVE_BOUNDED_SURFACE {
      get {
        return SDAI.UNWRAP( super_eSWEPT_AREA_SOLID.partialEntity._swept_area )
      }
      set(newValue) {
        let partial = super_eSWEPT_AREA_SOLID.partialEntity
        partial._swept_area = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eSURFACE_CURVE_SWEPT_AREA_SOLID`` )
    public var START_PARAM: SDAI.REAL {
      get {
        return SDAI.UNWRAP( super_eSURFACE_CURVE_SWEPT_AREA_SOLID.partialEntity._start_param )
      }
      set(newValue) {
        let partial = super_eSURFACE_CURVE_SWEPT_AREA_SOLID.partialEntity
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
      guard let partial = complexEntity?.partialEntityInstance(_ruled_surface_swept_area_solid.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(eSOLID_MODEL.self) else { return nil }
      self.super_eSOLID_MODEL = super3

      guard let super4 = complexEntity?.entityReference(eSWEPT_AREA_SOLID.self) else { return nil }
      self.super_eSWEPT_AREA_SOLID = super4

      guard let super5 = complexEntity?.entityReference(eSURFACE_CURVE_SWEPT_AREA_SOLID.self) else { return nil }
      self.super_eSURFACE_CURVE_SWEPT_AREA_SOLID = super5

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
      result[prefix2 + " .WHERE_wr1"] = _ruled_surface_swept_area_solid.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _ruled_surface_swept_area_solid.WHERE_wr2(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "RULED_SURFACE_SWEPT_AREA_SOLID", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eSOLID_MODEL.self)
      entityDef.add(supertype: eSWEPT_AREA_SOLID.self)
      entityDef.add(supertype: eSURFACE_CURVE_SWEPT_AREA_SOLID.self)
      entityDef.add(supertype: eRULED_SURFACE_SWEPT_AREA_SOLID.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "REFERENCE_SURFACE", keyPath: \eRULED_SURFACE_SWEPT_AREA_SOLID.REFERENCE_SURFACE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "END_PARAM", keyPath: \eRULED_SURFACE_SWEPT_AREA_SOLID.END_PARAM, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIRECTRIX", keyPath: \eRULED_SURFACE_SWEPT_AREA_SOLID.DIRECTRIX, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "SWEPT_AREA", keyPath: \eRULED_SURFACE_SWEPT_AREA_SOLID.SWEPT_AREA, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "START_PARAM", keyPath: \eRULED_SURFACE_SWEPT_AREA_SOLID.START_PARAM, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eRULED_SURFACE_SWEPT_AREA_SOLID.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \eRULED_SURFACE_SWEPT_AREA_SOLID.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
