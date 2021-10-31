/* file: track_blended_solid.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  ENTITY track_blended_solid
    ABSTRACT SUPERTYPE
    SUBTYPE OF ( edge_blended_solid );
    WHERE
      wr1: check_continuous_edges( SELF\edge_blended_solid.blended_edges );
  END_ENTITY; -- track_blended_solid (line:32840 file:ap242ed2_mim_lf_v1.101.TY.exp)

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


  SUPER- ENTITY(5)	edge_blended_solid
    ATTR:  blended_edges,	TYPE: LIST [1 : ?] OF UNIQUE edge_curve -- EXPLICIT


  ENTITY(SELF)	track_blended_solid
    (no local attributes)

  SUB- ENTITY(7)	solid_with_variable_radius_edge_blend
    ATTR:  point_list,	TYPE: LIST [2 : ?] OF point -- EXPLICIT

    ATTR:  radius_list,	TYPE: LIST [2 : ?] OF positive_length_measure -- EXPLICIT

    ATTR:  edge_function_list,	TYPE: LIST [1 : ?] OF blend_radius_variation_type -- EXPLICIT


  SUB- ENTITY(8)	track_blended_solid_with_end_conditions
    ATTR:  end_conditions,	TYPE: LIST [2 : 2] OF blend_end_condition_select -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _track_blended_solid : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eTRACK_BLENDED_SOLID.self
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
    public static func WHERE_wr1(SELF: eTRACK_BLENDED_SOLID?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.GROUP_REF(eEDGE_BLENDED_SOLID.self)
      let _TEMP2 = _TEMP1?.BLENDED_EDGES
      let _TEMP3 = CHECK_CONTINUOUS_EDGES(SDAI.LIST_UNIQUE<eEDGE_CURVE>(/*SDAI.LIST_UNIQUE<eEDGE_CURVE>[1:nil] */
        _TEMP2))
      return SDAI.LOGICAL(_TEMP3)
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
  ENTITY track_blended_solid
    ABSTRACT SUPERTYPE
    SUBTYPE OF ( edge_blended_solid );
    WHERE
      wr1: check_continuous_edges( SELF\edge_blended_solid.blended_edges );
  END_ENTITY; -- track_blended_solid (line:32840 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eTRACK_BLENDED_SOLID : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _track_blended_solid.self
    }
    public let partialEntity: _track_blended_solid

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_eSOLID_MODEL: eSOLID_MODEL 	// [3]
    public let super_eMODIFIED_SOLID: eMODIFIED_SOLID 	// [4]
    public let super_eEDGE_BLENDED_SOLID: eEDGE_BLENDED_SOLID 	// [5]
    public var super_eTRACK_BLENDED_SOLID: eTRACK_BLENDED_SOLID { return self } 	// [6]

    //MARK: SUBTYPES
    public var sub_eSOLID_WITH_VARIABLE_RADIUS_EDGE_BLEND: eSOLID_WITH_VARIABLE_RADIUS_EDGE_BLEND? {	// [7]
      return self.complexEntity.entityReference(eSOLID_WITH_VARIABLE_RADIUS_EDGE_BLEND.self)
    }

    public var sub_eTRACK_BLENDED_SOLID_WITH_END_CONDITIONS: eTRACK_BLENDED_SOLID_WITH_END_CONDITIONS? {	// [8]
      return self.complexEntity.entityReference(eTRACK_BLENDED_SOLID_WITH_END_CONDITIONS.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eSOLID_WITH_VARIABLE_RADIUS_EDGE_BLEND`` )
    public var RADIUS_LIST: (SDAI.LIST<tPOSITIVE_LENGTH_MEASURE>/*[2:nil]*/ )?  {
      get {
        return sub_eSOLID_WITH_VARIABLE_RADIUS_EDGE_BLEND?.partialEntity._radius_list
      }
      set(newValue) {
        guard let partial = sub_eSOLID_WITH_VARIABLE_RADIUS_EDGE_BLEND?.super_eSOLID_WITH_VARIABLE_RADIUS_EDGE_BLEND
          .partialEntity else { return }
        partial._radius_list = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eTRACK_BLENDED_SOLID_WITH_END_CONDITIONS`` )
    public var END_CONDITIONS: (SDAI.LIST<sBLEND_END_CONDITION_SELECT>/*[2:2]*/ )?  {
      get {
        return sub_eTRACK_BLENDED_SOLID_WITH_END_CONDITIONS?.partialEntity._end_conditions
      }
      set(newValue) {
        guard let partial = sub_eTRACK_BLENDED_SOLID_WITH_END_CONDITIONS?.super_eTRACK_BLENDED_SOLID_WITH_END_CONDITIONS
          .partialEntity else { return }
        partial._end_conditions = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eSOLID_WITH_VARIABLE_RADIUS_EDGE_BLEND`` )
    public var POINT_LIST: (SDAI.LIST<ePOINT>/*[2:nil]*/ )?  {
      get {
        return sub_eSOLID_WITH_VARIABLE_RADIUS_EDGE_BLEND?.partialEntity._point_list
      }
      set(newValue) {
        guard let partial = sub_eSOLID_WITH_VARIABLE_RADIUS_EDGE_BLEND?.super_eSOLID_WITH_VARIABLE_RADIUS_EDGE_BLEND
          .partialEntity else { return }
        partial._point_list = SDAI.UNWRAP(newValue)
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
    /// - origin: SUPER( ``eEDGE_BLENDED_SOLID`` )
    public var BLENDED_EDGES: SDAI.LIST_UNIQUE<eEDGE_CURVE>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( super_eEDGE_BLENDED_SOLID.partialEntity._blended_edges )
      }
      set(newValue) {
        let partial = super_eEDGE_BLENDED_SOLID.partialEntity
        partial._blended_edges = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eSOLID_WITH_VARIABLE_RADIUS_EDGE_BLEND`` )
    public var EDGE_FUNCTION_LIST: (SDAI.LIST<nBLEND_RADIUS_VARIATION_TYPE>/*[1:nil]*/ )?  {
      get {
        return sub_eSOLID_WITH_VARIABLE_RADIUS_EDGE_BLEND?.partialEntity._edge_function_list
      }
      set(newValue) {
        guard let partial = sub_eSOLID_WITH_VARIABLE_RADIUS_EDGE_BLEND?.super_eSOLID_WITH_VARIABLE_RADIUS_EDGE_BLEND
          .partialEntity else { return }
        partial._edge_function_list = SDAI.UNWRAP(newValue)
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
      guard let partial = complexEntity?.partialEntityInstance(_track_blended_solid.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(eSOLID_MODEL.self) else { return nil }
      self.super_eSOLID_MODEL = super3

      guard let super4 = complexEntity?.entityReference(eMODIFIED_SOLID.self) else { return nil }
      self.super_eMODIFIED_SOLID = super4

      guard let super5 = complexEntity?.entityReference(eEDGE_BLENDED_SOLID.self) else { return nil }
      self.super_eEDGE_BLENDED_SOLID = super5

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
      result[prefix2 + " .WHERE_wr1"] = _track_blended_solid.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "TRACK_BLENDED_SOLID", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eSOLID_MODEL.self)
      entityDef.add(supertype: eMODIFIED_SOLID.self)
      entityDef.add(supertype: eEDGE_BLENDED_SOLID.self)
      entityDef.add(supertype: eTRACK_BLENDED_SOLID.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "RADIUS_LIST", keyPath: \eTRACK_BLENDED_SOLID.RADIUS_LIST, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "END_CONDITIONS", keyPath: \eTRACK_BLENDED_SOLID.END_CONDITIONS, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "POINT_LIST", keyPath: \eTRACK_BLENDED_SOLID.POINT_LIST, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RATIONALE", keyPath: \eTRACK_BLENDED_SOLID.RATIONALE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "BASE_SOLID", keyPath: \eTRACK_BLENDED_SOLID.BASE_SOLID, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "BLENDED_EDGES", keyPath: \eTRACK_BLENDED_SOLID.BLENDED_EDGES, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "EDGE_FUNCTION_LIST", keyPath: \eTRACK_BLENDED_SOLID.EDGE_FUNCTION_LIST, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eTRACK_BLENDED_SOLID.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \eTRACK_BLENDED_SOLID.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
