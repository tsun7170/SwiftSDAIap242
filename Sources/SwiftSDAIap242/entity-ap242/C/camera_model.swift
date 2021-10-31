/* file: camera_model.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  ENTITY camera_model
    ABSTRACT SUPERTYPE OF ( 
        ONEOF ( 
            camera_model_d2, 
            camera_model_d3 ) )
    SUBTYPE OF ( geometric_representation_item );
    WHERE
      wr1: ( ( SIZEOF( USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'ITEM_DEFINED_TRANSFORMATION.TRANSFORM_ITEM_1'  ) ) + SIZEOF( USEDIN( SELF, 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.REPRESENTATION_MAP.MAPPING_ORIGIN'  ) ) ) > 0 );
      wr2: ( SIZEOF( USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.STYLED_ITEM.ITEM' ) ) = 0 );
  END_ENTITY; -- camera_model (line:8761 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(2)	geometric_representation_item
    ATTR:  dim,	TYPE: dimension_count -- DERIVED
      := dimension_of( SELF )


  ENTITY(SELF)	camera_model
    (no local attributes)

  SUB- ENTITY(4)	camera_model_d2
    ATTR:  view_window,	TYPE: planar_box -- EXPLICIT

    ATTR:  view_window_clipping,	TYPE: BOOLEAN -- EXPLICIT


  SUB- ENTITY(5)	camera_model_d3_with_hlhsr
    ATTR:  hidden_line_surface_removal,	TYPE: BOOLEAN -- EXPLICIT


  SUB- ENTITY(6)	camera_model_d3_multi_clipping
    ATTR:  shape_clipping,	TYPE: SET [1 : ?] OF camera_model_d3_multi_clipping_intersection_select -- EXPLICIT


  SUB- ENTITY(7)	camera_model_with_light_sources
    ATTR:  sources,	TYPE: SET [1 : ?] OF light_source -- EXPLICIT


  SUB- ENTITY(8)	camera_model_d3
    ATTR:  view_reference_system,	TYPE: axis2_placement_3d -- EXPLICIT

    ATTR:  perspective_of_volume,	TYPE: view_volume -- EXPLICIT
      -- observed by
        ENTITY(1): view_volume,	ATTR: camera_usages,	TYPE: SET [1 : ?] OF camera_model_d3


*/


//MARK: - Partial Entity
  public final class _camera_model : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eCAMERA_MODEL.self
    }

    //ATTRIBUTES
    // (no local attributes)

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sDRAUGHTING_MODEL_ITEM_SELECT.typeName)) // -> Self
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
    public static func WHERE_wr1(SELF: eCAMERA_MODEL?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.USEDIN(T: SELF, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
        .eITEM_DEFINED_TRANSFORMATION.TRANSFORM_ITEM_1)
      let _TEMP2 = SDAI.SIZEOF(_TEMP1)
      let _TEMP3 = SDAI.USEDIN(T: SELF, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
        .eREPRESENTATION_MAP.MAPPING_ORIGIN)
      let _TEMP4 = SDAI.SIZEOF(_TEMP3)
      let _TEMP5 = _TEMP2 + _TEMP4
      let _TEMP6 = _TEMP5 > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP6
    }
    public static func WHERE_wr2(SELF: eCAMERA_MODEL?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.USEDIN(T: SELF, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSTYLED_ITEM
        .ITEM)
      let _TEMP2 = SDAI.SIZEOF(_TEMP1)
      let _TEMP3 = _TEMP2 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP3
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
  ENTITY camera_model
    ABSTRACT SUPERTYPE OF ( 
        ONEOF ( 
            camera_model_d2, 
            camera_model_d3 ) )
    SUBTYPE OF ( geometric_representation_item );
    WHERE
      wr1: ( ( SIZEOF( USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'ITEM_DEFINED_TRANSFORMATION.TRANSFORM_ITEM_1'  ) ) + SIZEOF( USEDIN( SELF, 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.REPRESENTATION_MAP.MAPPING_ORIGIN'  ) ) ) > 0 );
      wr2: ( SIZEOF( USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.STYLED_ITEM.ITEM' ) ) = 0 );
  END_ENTITY; -- camera_model (line:8761 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eCAMERA_MODEL : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _camera_model.self
    }
    public let partialEntity: _camera_model

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public var super_eCAMERA_MODEL: eCAMERA_MODEL { return self } 	// [3]

    //MARK: SUBTYPES
    public var sub_eCAMERA_MODEL_D2: eCAMERA_MODEL_D2? {	// [4]
      return self.complexEntity.entityReference(eCAMERA_MODEL_D2.self)
    }

    public var sub_eCAMERA_MODEL_D3_WITH_HLHSR: eCAMERA_MODEL_D3_WITH_HLHSR? {	// [5]
      return self.complexEntity.entityReference(eCAMERA_MODEL_D3_WITH_HLHSR.self)
    }

    public var sub_eCAMERA_MODEL_D3_MULTI_CLIPPING: eCAMERA_MODEL_D3_MULTI_CLIPPING? {	// [6]
      return self.complexEntity.entityReference(eCAMERA_MODEL_D3_MULTI_CLIPPING.self)
    }

    public var sub_eCAMERA_MODEL_WITH_LIGHT_SOURCES: eCAMERA_MODEL_WITH_LIGHT_SOURCES? {	// [7]
      return self.complexEntity.entityReference(eCAMERA_MODEL_WITH_LIGHT_SOURCES.self)
    }

    public var sub_eCAMERA_MODEL_D3: eCAMERA_MODEL_D3? {	// [8]
      return self.complexEntity.entityReference(eCAMERA_MODEL_D3.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eCAMERA_MODEL_D3_MULTI_CLIPPING`` )
    public var SHAPE_CLIPPING: (SDAI.SET<sCAMERA_MODEL_D3_MULTI_CLIPPING_INTERSECTION_SELECT>/*[1:nil]*/ )?  {
      get {
        return sub_eCAMERA_MODEL_D3_MULTI_CLIPPING?.partialEntity._shape_clipping
      }
      set(newValue) {
        guard let partial = sub_eCAMERA_MODEL_D3_MULTI_CLIPPING?.super_eCAMERA_MODEL_D3_MULTI_CLIPPING
          .partialEntity else { return }
        partial._shape_clipping = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eCAMERA_MODEL_WITH_LIGHT_SOURCES`` )
    public var SOURCES: (SDAI.SET<eLIGHT_SOURCE>/*[1:nil]*/ )?  {
      get {
        return sub_eCAMERA_MODEL_WITH_LIGHT_SOURCES?.partialEntity._sources
      }
      set(newValue) {
        guard let partial = sub_eCAMERA_MODEL_WITH_LIGHT_SOURCES?.super_eCAMERA_MODEL_WITH_LIGHT_SOURCES
          .partialEntity else { return }
        partial._sources = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eCAMERA_MODEL_D2`` )
    public var VIEW_WINDOW: ePLANAR_BOX?  {
      get {
        return sub_eCAMERA_MODEL_D2?.partialEntity._view_window
      }
      set(newValue) {
        guard let partial = sub_eCAMERA_MODEL_D2?.super_eCAMERA_MODEL_D2.partialEntity else { return }
        partial._view_window = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eCAMERA_MODEL_D2`` )
    public var VIEW_WINDOW_CLIPPING: SDAI.BOOLEAN?  {
      get {
        return sub_eCAMERA_MODEL_D2?.partialEntity._view_window_clipping
      }
      set(newValue) {
        guard let partial = sub_eCAMERA_MODEL_D2?.super_eCAMERA_MODEL_D2.partialEntity else { return }
        partial._view_window_clipping = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eCAMERA_MODEL_D3_WITH_HLHSR`` )
    public var HIDDEN_LINE_SURFACE_REMOVAL: SDAI.BOOLEAN?  {
      get {
        return sub_eCAMERA_MODEL_D3_WITH_HLHSR?.partialEntity._hidden_line_surface_removal
      }
      set(newValue) {
        guard let partial = sub_eCAMERA_MODEL_D3_WITH_HLHSR?.super_eCAMERA_MODEL_D3_WITH_HLHSR.partialEntity
          else { return }
        partial._hidden_line_surface_removal = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eCAMERA_MODEL_D3`` )
    public var VIEW_REFERENCE_SYSTEM: eAXIS2_PLACEMENT_3D?  {
      get {
        return sub_eCAMERA_MODEL_D3?.partialEntity._view_reference_system
      }
      set(newValue) {
        guard let partial = sub_eCAMERA_MODEL_D3?.super_eCAMERA_MODEL_D3.partialEntity else { return }
        partial._view_reference_system = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT(OBSERVED)__ attribute
    /// - origin: SUB( ``eCAMERA_MODEL_D3`` )
    public var PERSPECTIVE_OF_VOLUME: eVIEW_VOLUME?  {
      get {
        return sub_eCAMERA_MODEL_D3?.partialEntity._perspective_of_volume
      }
      set(newValue) {
        guard let partial = sub_eCAMERA_MODEL_D3?.super_eCAMERA_MODEL_D3.partialEntity else { return }
        partial._perspective_of_volume = SDAI.UNWRAP(newValue)
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
      guard let partial = complexEntity?.partialEntityInstance(_camera_model.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super2

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
      result[prefix2 + " .WHERE_wr1"] = _camera_model.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _camera_model.WHERE_wr2(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "CAMERA_MODEL", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eCAMERA_MODEL.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "SHAPE_CLIPPING", keyPath: \eCAMERA_MODEL.SHAPE_CLIPPING, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "SOURCES", keyPath: \eCAMERA_MODEL.SOURCES, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "VIEW_WINDOW", keyPath: \eCAMERA_MODEL.VIEW_WINDOW, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "VIEW_WINDOW_CLIPPING", keyPath: \eCAMERA_MODEL.VIEW_WINDOW_CLIPPING, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "HIDDEN_LINE_SURFACE_REMOVAL", keyPath: \eCAMERA_MODEL.HIDDEN_LINE_SURFACE_REMOVAL, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "VIEW_REFERENCE_SYSTEM", keyPath: \eCAMERA_MODEL.VIEW_REFERENCE_SYSTEM, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "PERSPECTIVE_OF_VOLUME", keyPath: \eCAMERA_MODEL.PERSPECTIVE_OF_VOLUME, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eCAMERA_MODEL.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \eCAMERA_MODEL.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
