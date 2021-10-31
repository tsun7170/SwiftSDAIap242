/* file: fill_area_style_tiles.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  ENTITY fill_area_style_tiles
    SUBTYPE OF ( geometric_representation_item );
      tiling_pattern  : two_direction_repeat_factor;
      tiles           : SET [1 : ?] OF fill_area_style_tile_shape_select;
      tiling_scale    : positive_ratio_measure;
  END_ENTITY; -- fill_area_style_tiles (line:15482 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(2)	geometric_representation_item
    ATTR:  dim,	TYPE: dimension_count -- DERIVED
      := dimension_of( SELF )


  ENTITY(SELF)	fill_area_style_tiles
    ATTR:  tiling_pattern,	TYPE: two_direction_repeat_factor -- EXPLICIT

    ATTR:  tiles,	TYPE: SET [1 : ?] OF fill_area_style_tile_shape_select -- EXPLICIT

    ATTR:  tiling_scale,	TYPE: positive_ratio_measure -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _fill_area_style_tiles : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eFILL_AREA_STYLE_TILES.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _tiling_pattern: eTWO_DIRECTION_REPEAT_FACTOR // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _tiles: SDAI.SET<sFILL_AREA_STYLE_TILE_SHAPE_SELECT>/*[1:nil]*/  // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _tiling_scale: tPOSITIVE_RATIO_MEASURE // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sFILL_STYLE_SELECT.typeName)) // -> Self
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._tiling_pattern.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._tiles.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._tiling_scale.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._tiling_pattern.value.isValueEqualOptionally(to: rhs._tiling_pattern.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._tiles.value.isValueEqualOptionally(to: rhs._tiles.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._tiling_scale.value.isValueEqualOptionally(to: rhs._tiling_scale.value, visited: &comppairs)	{
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
      if let comp = self._tiling_pattern.value.isValueEqualOptionally(to: rhs._tiling_pattern.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._tiles.value.isValueEqualOptionally(to: rhs._tiles.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._tiling_scale.value.isValueEqualOptionally(to: rhs._tiling_scale.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(TILING_PATTERN: eTWO_DIRECTION_REPEAT_FACTOR, TILES: SDAI.SET<
                sFILL_AREA_STYLE_TILE_SHAPE_SELECT>/*[1:nil]*/ , TILING_SCALE: tPOSITIVE_RATIO_MEASURE) {
      self._tiling_pattern = TILING_PATTERN
      self._tiles = TILES
      self._tiling_scale = TILING_SCALE
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 3
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: 
        eTWO_DIRECTION_REPEAT_FACTOR.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: SDAI.SET<
        sFILL_AREA_STYLE_TILE_SHAPE_SELECT>.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p2) = exchangeStructure.recoverRequiredParameter(as: tPOSITIVE_RATIO_MEASURE.self, from: parameters[2])
      else { exchangeStructure.add(errorContext: "while recovering parameter #2 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( TILING_PATTERN: p0, TILES: p1, TILING_SCALE: p2 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY fill_area_style_tiles
    SUBTYPE OF ( geometric_representation_item );
      tiling_pattern  : two_direction_repeat_factor;
      tiles           : SET [1 : ?] OF fill_area_style_tile_shape_select;
      tiling_scale    : positive_ratio_measure;
  END_ENTITY; -- fill_area_style_tiles (line:15482 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eFILL_AREA_STYLE_TILES : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _fill_area_style_tiles.self
    }
    public let partialEntity: _fill_area_style_tiles

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public var super_eFILL_AREA_STYLE_TILES: eFILL_AREA_STYLE_TILES { return self } 	// [3]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eFILL_AREA_STYLE_TILES`` )
    public var TILES: SDAI.SET<sFILL_AREA_STYLE_TILE_SHAPE_SELECT>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._tiles )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._tiles = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eFILL_AREA_STYLE_TILES`` )
    public var TILING_PATTERN: eTWO_DIRECTION_REPEAT_FACTOR {
      get {
        return SDAI.UNWRAP( self.partialEntity._tiling_pattern )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._tiling_pattern = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eFILL_AREA_STYLE_TILES`` )
    public var TILING_SCALE: tPOSITIVE_RATIO_MEASURE {
      get {
        return SDAI.UNWRAP( self.partialEntity._tiling_scale )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._tiling_scale = SDAI.UNWRAP(newValue)
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
      guard let partial = complexEntity?.partialEntityInstance(_fill_area_style_tiles.self) else { return nil }
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


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "FILL_AREA_STYLE_TILES", type: self, explicitAttributeCount: 3)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eFILL_AREA_STYLE_TILES.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "TILES", keyPath: \eFILL_AREA_STYLE_TILES.TILES, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "TILING_PATTERN", keyPath: \eFILL_AREA_STYLE_TILES.TILING_PATTERN, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "TILING_SCALE", keyPath: \eFILL_AREA_STYLE_TILES.TILING_SCALE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eFILL_AREA_STYLE_TILES.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \eFILL_AREA_STYLE_TILES.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
