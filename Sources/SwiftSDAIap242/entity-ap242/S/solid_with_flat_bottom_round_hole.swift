/* file: solid_with_flat_bottom_round_hole.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY solid_with_flat_bottom_round_hole
    SUBTYPE OF ( solid_with_stepped_round_hole );
      fillet_radius  : non_negative_length_measure;
    WHERE
      wr1: ( fillet_radius < SELF\solid_with_stepped_round_hole.segment_radii[segments] );
  END_ENTITY; -- solid_with_flat_bottom_round_hole (line:30028 file:ap242ed2_mim_lf_v1.101.TY.exp)

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
      *** ENTITY: solid_with_stepped_round_hole,	TYPE: positive_length_measure	(as DERIVED)


  SUPER- ENTITY(7)	solid_with_hole
    (no local attributes)

  SUPER- ENTITY(8)	solid_with_stepped_round_hole
    ATTR:  segments,	TYPE: positive_integer -- EXPLICIT

    ATTR:  segment_radii,	TYPE: LIST [1 : segments] OF positive_length_measure -- EXPLICIT

    ATTR:  segment_depths,	TYPE: LIST [1 : segments] OF positive_length_measure -- EXPLICIT

    REDCR: depth,	TYPE: positive_length_measure -- DERIVED (DYNAMIC)
      := compute_total_depth( SELF )
      -- OVERRIDING ENTITY: solid_with_depression


  ENTITY(SELF)	solid_with_flat_bottom_round_hole
    ATTR:  fillet_radius,	TYPE: non_negative_length_measure -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _solid_with_flat_bottom_round_hole : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eSOLID_WITH_FLAT_BOTTOM_ROUND_HOLE.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _fillet_radius: tNON_NEGATIVE_LENGTH_MEASURE // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._fillet_radius.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._fillet_radius.value.isValueEqualOptionally(to: rhs._fillet_radius.value, visited: &comppairs)	{
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
      if let comp = self._fillet_radius.value.isValueEqualOptionally(to: rhs._fillet_radius.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eSOLID_WITH_FLAT_BOTTOM_ROUND_HOLE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.GROUP_REF(eSOLID_WITH_STEPPED_ROUND_HOLE.self)
      let _TEMP2 = _TEMP1?.SEGMENT_RADII
      let _TEMP3 = _TEMP2?[SELF.SEGMENTS]
      let _TEMP4 = SDAI.FORCE_OPTIONAL(SELF.FILLET_RADIUS) < _TEMP3
      return _TEMP4
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(FILLET_RADIUS: tNON_NEGATIVE_LENGTH_MEASURE) {
      self._fillet_radius = FILLET_RADIUS
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: 
        tNON_NEGATIVE_LENGTH_MEASURE.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( FILLET_RADIUS: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY solid_with_flat_bottom_round_hole
    SUBTYPE OF ( solid_with_stepped_round_hole );
      fillet_radius  : non_negative_length_measure;
    WHERE
      wr1: ( fillet_radius < SELF\solid_with_stepped_round_hole.segment_radii[segments] );
  END_ENTITY; -- solid_with_flat_bottom_round_hole (line:30028 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eSOLID_WITH_FLAT_BOTTOM_ROUND_HOLE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _solid_with_flat_bottom_round_hole.self
    }
    public let partialEntity: _solid_with_flat_bottom_round_hole

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_eSOLID_MODEL: eSOLID_MODEL 	// [3]
    public let super_eMODIFIED_SOLID: eMODIFIED_SOLID 	// [4]
    public let super_eMODIFIED_SOLID_WITH_PLACED_CONFIGURATION: eMODIFIED_SOLID_WITH_PLACED_CONFIGURATION 	// [5]
    public let super_eSOLID_WITH_DEPRESSION: eSOLID_WITH_DEPRESSION 	// [6]
    public let super_eSOLID_WITH_HOLE: eSOLID_WITH_HOLE 	// [7]
    public let super_eSOLID_WITH_STEPPED_ROUND_HOLE: eSOLID_WITH_STEPPED_ROUND_HOLE 	// [8]
    public var super_eSOLID_WITH_FLAT_BOTTOM_ROUND_HOLE: eSOLID_WITH_FLAT_BOTTOM_ROUND_HOLE { return self } 	// [9]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eSOLID_WITH_STEPPED_ROUND_HOLE`` )
    public var SEGMENT_RADII: SDAI.LIST<tPOSITIVE_LENGTH_MEASURE>/*[1:SEGMENTS]*/  {
      get {
        return SDAI.UNWRAP( super_eSOLID_WITH_STEPPED_ROUND_HOLE.partialEntity._segment_radii )
      }
      set(newValue) {
        let partial = super_eSOLID_WITH_STEPPED_ROUND_HOLE.partialEntity
        partial._segment_radii = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eSOLID_WITH_FLAT_BOTTOM_ROUND_HOLE`` )
    public var FILLET_RADIUS: tNON_NEGATIVE_LENGTH_MEASURE {
      get {
        return SDAI.UNWRAP( self.partialEntity._fillet_radius )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._fillet_radius = SDAI.UNWRAP(newValue)
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
    /// - origin: SUPER( ``eSOLID_WITH_STEPPED_ROUND_HOLE`` )
    public var SEGMENT_DEPTHS: SDAI.LIST<tPOSITIVE_LENGTH_MEASURE>/*[1:SEGMENTS]*/  {
      get {
        return SDAI.UNWRAP( super_eSOLID_WITH_STEPPED_ROUND_HOLE.partialEntity._segment_depths )
      }
      set(newValue) {
        let partial = super_eSOLID_WITH_STEPPED_ROUND_HOLE.partialEntity
        partial._segment_depths = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eSOLID_WITH_STEPPED_ROUND_HOLE`` )
    public var SEGMENTS: tPOSITIVE_INTEGER {
      get {
        return SDAI.UNWRAP( super_eSOLID_WITH_STEPPED_ROUND_HOLE.partialEntity._segments )
      }
      set(newValue) {
        let partial = super_eSOLID_WITH_STEPPED_ROUND_HOLE.partialEntity
        partial._segments = SDAI.UNWRAP(newValue)
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

    /// __EXPLICIT REDEF(DERIVE)__ attribute
    /// - origin: SUPER( ``eSOLID_WITH_STEPPED_ROUND_HOLE`` )
    public var DEPTH: tPOSITIVE_LENGTH_MEASURE {
      get {
        if let cached = cachedValue(derivedAttributeName:"DEPTH") {
          return cached.value as! tPOSITIVE_LENGTH_MEASURE
        }
        let origin = super_eSOLID_WITH_STEPPED_ROUND_HOLE
        let value = SDAI.UNWRAP( tPOSITIVE_LENGTH_MEASURE(origin.partialEntity._depth__getter(SELF: origin)) )
        updateCache(derivedAttributeName:"DEPTH", value:value)
        return value
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
      guard let partial = complexEntity?.partialEntityInstance(_solid_with_flat_bottom_round_hole.self) else { return nil }
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

      guard let super7 = complexEntity?.entityReference(eSOLID_WITH_HOLE.self) else { return nil }
      self.super_eSOLID_WITH_HOLE = super7

      guard let super8 = complexEntity?.entityReference(eSOLID_WITH_STEPPED_ROUND_HOLE.self) else { return nil }
      self.super_eSOLID_WITH_STEPPED_ROUND_HOLE = super8

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
      result[prefix2 + " .WHERE_wr1"] = _solid_with_flat_bottom_round_hole.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "SOLID_WITH_FLAT_BOTTOM_ROUND_HOLE", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eSOLID_MODEL.self)
      entityDef.add(supertype: eMODIFIED_SOLID.self)
      entityDef.add(supertype: eMODIFIED_SOLID_WITH_PLACED_CONFIGURATION.self)
      entityDef.add(supertype: eSOLID_WITH_DEPRESSION.self)
      entityDef.add(supertype: eSOLID_WITH_HOLE.self)
      entityDef.add(supertype: eSOLID_WITH_STEPPED_ROUND_HOLE.self)
      entityDef.add(supertype: eSOLID_WITH_FLAT_BOTTOM_ROUND_HOLE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "SEGMENT_RADII", keyPath: \eSOLID_WITH_FLAT_BOTTOM_ROUND_HOLE.SEGMENT_RADII, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "FILLET_RADIUS", keyPath: \eSOLID_WITH_FLAT_BOTTOM_ROUND_HOLE.FILLET_RADIUS, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "RATIONALE", keyPath: \eSOLID_WITH_FLAT_BOTTOM_ROUND_HOLE.RATIONALE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "BASE_SOLID", keyPath: \eSOLID_WITH_FLAT_BOTTOM_ROUND_HOLE.BASE_SOLID, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "SEGMENT_DEPTHS", keyPath: \eSOLID_WITH_FLAT_BOTTOM_ROUND_HOLE.SEGMENT_DEPTHS, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SEGMENTS", keyPath: \eSOLID_WITH_FLAT_BOTTOM_ROUND_HOLE.SEGMENTS, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "PLACING", keyPath: \eSOLID_WITH_FLAT_BOTTOM_ROUND_HOLE.PLACING, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eSOLID_WITH_FLAT_BOTTOM_ROUND_HOLE.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DEPTH", keyPath: \eSOLID_WITH_FLAT_BOTTOM_ROUND_HOLE.DEPTH, 
        kind: .derivedRedeclaring, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \eSOLID_WITH_FLAT_BOTTOM_ROUND_HOLE.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
