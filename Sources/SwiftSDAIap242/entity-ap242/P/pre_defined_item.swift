/* file: pre_defined_item.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY pre_defined_item;
      name  : label;
  END_ENTITY; -- pre_defined_item (line:25542 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  ENTITY(SELF)	pre_defined_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUB- ENTITY(2)	draughting_pre_defined_text_font
    (no local attributes)

  SUB- ENTITY(3)	pre_defined_text_font
    (no local attributes)

  SUB- ENTITY(4)	known_source
    (no local attributes)

  SUB- ENTITY(5)	pre_defined_surface_side_style
    (no local attributes)

  SUB- ENTITY(6)	draughting_pre_defined_colour
    (no local attributes)

  SUB- ENTITY(7)	pre_defined_colour
    (no local attributes)

  SUB- ENTITY(8)	externally_defined_marker
    (no local attributes)

  SUB- ENTITY(9)	pre_defined_point_marker_symbol
    (no local attributes)

  SUB- ENTITY(10)	user_defined_marker
    (no local attributes)

  SUB- ENTITY(11)	pre_defined_marker
    (no local attributes)

  SUB- ENTITY(12)	pre_defined_tile
    (no local attributes)

  SUB- ENTITY(13)	vector_style
    (no local attributes)

  SUB- ENTITY(14)	pre_defined_terminator_symbol
    (no local attributes)

  SUB- ENTITY(15)	pre_defined_dimension_symbol
    (no local attributes)

  SUB- ENTITY(16)	pre_defined_surface_condition_symbol
    (no local attributes)

  SUB- ENTITY(17)	pre_defined_geometrical_tolerance_symbol
    (no local attributes)

  SUB- ENTITY(18)	user_defined_terminator_symbol
    (no local attributes)

  SUB- ENTITY(19)	pre_defined_symbol
    (no local attributes)

  SUB- ENTITY(20)	draughting_pre_defined_curve_font
    (no local attributes)

  SUB- ENTITY(21)	solid_curve_font
    (no local attributes)

  SUB- ENTITY(22)	pre_defined_curve_font
    (no local attributes)

  SUB- ENTITY(23)	pre_defined_character_glyph
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _pre_defined_item : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      ePRE_DEFINED_ITEM.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _name: tLABEL // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._name.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._name.value.isValueEqualOptionally(to: rhs._name.value, visited: &comppairs)	{
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
      if let comp = self._name.value.isValueEqualOptionally(to: rhs._name.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(NAME: tLABEL) {
      self._name = NAME
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: tLABEL.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( NAME: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY pre_defined_item;
      name  : label;
  END_ENTITY; -- pre_defined_item (line:25542 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class ePRE_DEFINED_ITEM : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _pre_defined_item.self
    }
    public let partialEntity: _pre_defined_item

    //MARK: SUPERTYPES
    public var super_ePRE_DEFINED_ITEM: ePRE_DEFINED_ITEM { return self } 	// [1]

    //MARK: SUBTYPES
    public var sub_eDRAUGHTING_PRE_DEFINED_TEXT_FONT: eDRAUGHTING_PRE_DEFINED_TEXT_FONT? {	// [2]
      return self.complexEntity.entityReference(eDRAUGHTING_PRE_DEFINED_TEXT_FONT.self)
    }

    public var sub_ePRE_DEFINED_TEXT_FONT: ePRE_DEFINED_TEXT_FONT? {	// [3]
      return self.complexEntity.entityReference(ePRE_DEFINED_TEXT_FONT.self)
    }

    public var sub_eKNOWN_SOURCE: eKNOWN_SOURCE? {	// [4]
      return self.complexEntity.entityReference(eKNOWN_SOURCE.self)
    }

    public var sub_ePRE_DEFINED_SURFACE_SIDE_STYLE: ePRE_DEFINED_SURFACE_SIDE_STYLE? {	// [5]
      return self.complexEntity.entityReference(ePRE_DEFINED_SURFACE_SIDE_STYLE.self)
    }

    public var sub_eDRAUGHTING_PRE_DEFINED_COLOUR: eDRAUGHTING_PRE_DEFINED_COLOUR? {	// [6]
      return self.complexEntity.entityReference(eDRAUGHTING_PRE_DEFINED_COLOUR.self)
    }

    public var sub_ePRE_DEFINED_COLOUR: ePRE_DEFINED_COLOUR? {	// [7]
      return self.complexEntity.entityReference(ePRE_DEFINED_COLOUR.self)
    }

    public var sub_eEXTERNALLY_DEFINED_MARKER: eEXTERNALLY_DEFINED_MARKER? {	// [8]
      return self.complexEntity.entityReference(eEXTERNALLY_DEFINED_MARKER.self)
    }

    public var sub_ePRE_DEFINED_POINT_MARKER_SYMBOL: ePRE_DEFINED_POINT_MARKER_SYMBOL? {	// [9]
      return self.complexEntity.entityReference(ePRE_DEFINED_POINT_MARKER_SYMBOL.self)
    }

    public var sub_eUSER_DEFINED_MARKER: eUSER_DEFINED_MARKER? {	// [10]
      return self.complexEntity.entityReference(eUSER_DEFINED_MARKER.self)
    }

    public var sub_ePRE_DEFINED_MARKER: ePRE_DEFINED_MARKER? {	// [11]
      return self.complexEntity.entityReference(ePRE_DEFINED_MARKER.self)
    }

    public var sub_ePRE_DEFINED_TILE: ePRE_DEFINED_TILE? {	// [12]
      return self.complexEntity.entityReference(ePRE_DEFINED_TILE.self)
    }

    public var sub_eVECTOR_STYLE: eVECTOR_STYLE? {	// [13]
      return self.complexEntity.entityReference(eVECTOR_STYLE.self)
    }

    public var sub_ePRE_DEFINED_TERMINATOR_SYMBOL: ePRE_DEFINED_TERMINATOR_SYMBOL? {	// [14]
      return self.complexEntity.entityReference(ePRE_DEFINED_TERMINATOR_SYMBOL.self)
    }

    public var sub_ePRE_DEFINED_DIMENSION_SYMBOL: ePRE_DEFINED_DIMENSION_SYMBOL? {	// [15]
      return self.complexEntity.entityReference(ePRE_DEFINED_DIMENSION_SYMBOL.self)
    }

    public var sub_ePRE_DEFINED_SURFACE_CONDITION_SYMBOL: ePRE_DEFINED_SURFACE_CONDITION_SYMBOL? {	// [16]
      return self.complexEntity.entityReference(ePRE_DEFINED_SURFACE_CONDITION_SYMBOL.self)
    }

    public var sub_ePRE_DEFINED_GEOMETRICAL_TOLERANCE_SYMBOL: ePRE_DEFINED_GEOMETRICAL_TOLERANCE_SYMBOL? {	// [17]
      return self.complexEntity.entityReference(ePRE_DEFINED_GEOMETRICAL_TOLERANCE_SYMBOL.self)
    }

    public var sub_eUSER_DEFINED_TERMINATOR_SYMBOL: eUSER_DEFINED_TERMINATOR_SYMBOL? {	// [18]
      return self.complexEntity.entityReference(eUSER_DEFINED_TERMINATOR_SYMBOL.self)
    }

    public var sub_ePRE_DEFINED_SYMBOL: ePRE_DEFINED_SYMBOL? {	// [19]
      return self.complexEntity.entityReference(ePRE_DEFINED_SYMBOL.self)
    }

    public var sub_eDRAUGHTING_PRE_DEFINED_CURVE_FONT: eDRAUGHTING_PRE_DEFINED_CURVE_FONT? {	// [20]
      return self.complexEntity.entityReference(eDRAUGHTING_PRE_DEFINED_CURVE_FONT.self)
    }

    public var sub_eSOLID_CURVE_FONT: eSOLID_CURVE_FONT? {	// [21]
      return self.complexEntity.entityReference(eSOLID_CURVE_FONT.self)
    }

    public var sub_ePRE_DEFINED_CURVE_FONT: ePRE_DEFINED_CURVE_FONT? {	// [22]
      return self.complexEntity.entityReference(ePRE_DEFINED_CURVE_FONT.self)
    }

    public var sub_ePRE_DEFINED_CHARACTER_GLYPH: ePRE_DEFINED_CHARACTER_GLYPH? {	// [23]
      return self.complexEntity.entityReference(ePRE_DEFINED_CHARACTER_GLYPH.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``ePRE_DEFINED_ITEM`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( self.partialEntity._name )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_pre_defined_item.self) else { return nil }
      self.partialEntity = partial

      super.init(complex: complexEntity)
    }

    public required convenience init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let entityRef = generic?.entityReference else { return nil }
      self.init(complex: entityRef.complexEntity)
    }

    public convenience init?<S: SDAISelectType>(_ select: S?) { self.init(possiblyFrom: select) }
    public convenience init?(_ complex: SDAI.ComplexEntity?) { self.init(complex: complex) }

    //SIMPLE ENTITY REFERENCE
    public convenience init?(_ partial:_pre_defined_item) {
      let complex = SDAI.ComplexEntity(entities:[partial])
      self.init(complex: complex)
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "PRE_DEFINED_ITEM", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: ePRE_DEFINED_ITEM.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "NAME", keyPath: \ePRE_DEFINED_ITEM.NAME, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
