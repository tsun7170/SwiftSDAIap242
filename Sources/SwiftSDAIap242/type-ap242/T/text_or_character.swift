/* file: text_or_character.swift 	 generated: Sun Oct 31 15:32:10 2021 */

/* This file was generated by the EXPRESS to Swift translator "exp2swift", 
  derived from STEPcode (formerly NIST's SCL).
 exp2swift version: v.1.0.0, derived from stepcode v0.8 as of 2019/11/23 
 WARNING: You probably don't want to edit it since your modifications 
  will be lost if exp2swift is used to regenerate it.
 */

 
import SwiftSDAIcore

extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF {
//MARK: -TYPE DEFINITION in EXPRESS
/*
  TYPE text_or_character = SELECT
    ( annotation_text (*ENTITY*),
     annotation_text_character (*ENTITY*),
     composite_text (*ENTITY*),
     defined_character_glyph (*ENTITY*),
     text_literal (*ENTITY*) );
  END_TYPE; -- text_or_character (line:5750 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES FOR SELECT
/*
  annotation_text (*ENTITY*):
  ATTR:  mapping_source: representation_map
  ATTR:  mapping_target: axis2_placement *** Multiple Select Case Sources ***
  ATTR:  name: label

  annotation_text_character (*ENTITY*):
  ATTR:  mapping_source: representation_map
  ATTR:  mapping_target: axis2_placement *** Multiple Select Case Sources ***
  ATTR:  name: label
  ATTR:  alignment: text_alignment *** Multiple Select Case Sources ***

  composite_text (*ENTITY*):
  ATTR:  delineation: text_delineation *** Multiple Select Case Sources ***
  ATTR:  extent: planar_extent *** Multiple Select Case Sources ***
  ATTR:  blanking: planar_box *** Multiple Select Case Sources ***
  ATTR:  collected_text: SET [2 : ?] OF text_or_character
  ATTR:  name: label
  ATTR:  dim: dimension_count
  ATTR:  associated_curves: SET [1 : ?] OF curve *** Multiple Select Case Sources ***

  defined_character_glyph (*ENTITY*):
  ATTR:  placement: axis2_placement *** Multiple Select Case Sources ***
  ATTR:  definition: defined_glyph_select
  ATTR:  name: label
  ATTR:  dim: dimension_count

  text_literal (*ENTITY*):
  ATTR:  path: text_path
  ATTR:  literal: presentable_text
  ATTR:  delineation: text_delineation *** Multiple Select Case Sources ***
  ATTR:  placement: axis2_placement *** Multiple Select Case Sources ***
  ATTR:  extent: planar_extent *** Multiple Select Case Sources ***
  ATTR:  blanking: planar_box *** Multiple Select Case Sources ***
  ATTR:  name: label
  ATTR:  alignment: text_alignment *** Multiple Select Case Sources ***
  ATTR:  dim: dimension_count
  ATTR:  font: font_select
  ATTR:  associated_curves: SET [1 : ?] OF curve *** Multiple Select Case Sources ***

*/

/** SELECT type
- EXPRESS:
```express
  TYPE text_or_character = SELECT
    ( annotation_text (*ENTITY*),
     annotation_text_character (*ENTITY*),
     composite_text (*ENTITY*),
     defined_character_glyph (*ENTITY*),
     text_literal (*ENTITY*) );
  END_TYPE; -- text_or_character (line:5750 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public enum sTEXT_OR_CHARACTER : SDAIValue, AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sTEXT_OR_CHARACTER__type {

    /// SELECT case ``eANNOTATION_TEXT`` (ENTITY) in ``sTEXT_OR_CHARACTER``
    case _ANNOTATION_TEXT(eANNOTATION_TEXT)	// (ENTITY)

    /// SELECT case ``eANNOTATION_TEXT_CHARACTER`` (ENTITY) in ``sTEXT_OR_CHARACTER``
    case _ANNOTATION_TEXT_CHARACTER(eANNOTATION_TEXT_CHARACTER)	// (ENTITY)

    /// SELECT case ``eCOMPOSITE_TEXT`` (ENTITY) in ``sTEXT_OR_CHARACTER``
    case _COMPOSITE_TEXT(eCOMPOSITE_TEXT)	// (ENTITY)

    /// SELECT case ``eDEFINED_CHARACTER_GLYPH`` (ENTITY) in ``sTEXT_OR_CHARACTER``
    case _DEFINED_CHARACTER_GLYPH(eDEFINED_CHARACTER_GLYPH)	// (ENTITY)

    /// SELECT case ``eTEXT_LITERAL`` (ENTITY) in ``sTEXT_OR_CHARACTER``
    case _TEXT_LITERAL(eTEXT_LITERAL)	// (ENTITY)

    //MARK: - CONSTRUCTORS
    public init(fundamental: FundamentalType) { self = fundamental }

    public init?<T: SDAIUnderlyingType>(possiblyFrom underlyingType: T?){
      return nil
    }

    public init?(possiblyFrom complex: SDAI.ComplexEntity?) {
      guard let complex = complex else { return nil }

      if let base = complex.entityReference(eANNOTATION_TEXT.self) {self = ._ANNOTATION_TEXT(base) }
      else if let base = complex.entityReference(eANNOTATION_TEXT_CHARACTER.self) {self = ._ANNOTATION_TEXT_CHARACTER(base) }
      else if let base = complex.entityReference(eCOMPOSITE_TEXT.self) {self = ._COMPOSITE_TEXT(base) }
      else if let base = complex.entityReference(eDEFINED_CHARACTER_GLYPH.self) {self = ._DEFINED_CHARACTER_GLYPH(base) }
      else if let base = complex.entityReference(eTEXT_LITERAL.self) {self = ._TEXT_LITERAL(base) }
      else { return nil }
    }

    public init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let select = generic else { return nil }

      if let fundamental = select as? Self {
        self.init(fundamental: fundamental)
      }
      else if let base = eANNOTATION_TEXT.convert(fromGeneric: select) {
        self = ._ANNOTATION_TEXT(base)
      }
      else if let base = eANNOTATION_TEXT_CHARACTER.convert(fromGeneric: select) {
        self = ._ANNOTATION_TEXT_CHARACTER(base)
      }
      else if let base = eCOMPOSITE_TEXT.convert(fromGeneric: select) {
        self = ._COMPOSITE_TEXT(base)
      }
      else if let base = eDEFINED_CHARACTER_GLYPH.convert(fromGeneric: select) {
        self = ._DEFINED_CHARACTER_GLYPH(base)
      }
      else if let base = eTEXT_LITERAL.convert(fromGeneric: select) {
        self = ._TEXT_LITERAL(base)
      }
      else { return nil }
    }

    // InitializableByP21Parameter
    public static var bareTypeName: String = "TEXT_OR_CHARACTER"

    public init?(p21typedParam: P21Decode.ExchangeStructure.TypedParameter, from exchangeStructure: P21Decode.ExchangeStructure) {
      guard let keyword = p21typedParam.keyword.asStandardKeyword else { exchangeStructure.error = "unexpected p21parameter(\(p21typedParam)) while resolving \(Self.bareTypeName) select value"; return nil }

      switch(keyword) {
      default:
        exchangeStructure.error = "unexpected p21parameter(\(p21typedParam)) while resolving \(Self.bareTypeName) select value"
        return nil
      }
    }

    public init?(p21untypedParam: P21Decode.ExchangeStructure.UntypedParameter, from exchangeStructure: P21Decode.ExchangeStructure) {
      switch p21untypedParam {
      case .rhsOccurenceName(let rhsname):
        switch rhsname {
        case .constantEntityName(let name):
          guard let entity = exchangeStructure.resolve(constantEntityName: name) else {exchangeStructure.add(errorContext: "while resolving \(Self.bareTypeName) instance"); return nil }
          self.init(possiblyFrom: entity.complexEntity)

        case .entityInstanceName(let name):
          guard let complex = exchangeStructure.resolve(entityInstanceName: name) else {exchangeStructure.add(errorContext: "while resolving \(Self.bareTypeName) instance"); return nil }
          self.init(possiblyFrom: complex)

        default:
          exchangeStructure.error = "unexpected p21parameter(\(p21untypedParam)) while resolving \(Self.bareTypeName) select instance"
          return nil
        }

      default:
        exchangeStructure.error = "unexpected p21parameter(\(p21untypedParam)) while resolving \(Self.bareTypeName) select instance"
        return nil
      }
    }

    public init?(p21omittedParamfrom exchangeStructure: P21Decode.ExchangeStructure) {
      return nil
    }


    //MARK: - ENTITY UNDERLYING TYPE REFERENCES
    public var super_eANNOTATION_TEXT_CHARACTER: eANNOTATION_TEXT_CHARACTER? {
      switch self {
      case ._ANNOTATION_TEXT_CHARACTER(let entity): return entity
      default: return nil
      }
    }

    public var super_eCOMPOSITE_TEXT: eCOMPOSITE_TEXT? {
      switch self {
      case ._COMPOSITE_TEXT(let entity): return entity
      default: return nil
      }
    }

    public var super_eTEXT_LITERAL: eTEXT_LITERAL? {
      switch self {
      case ._TEXT_LITERAL(let entity): return entity
      default: return nil
      }
    }

    public var super_eDEFINED_CHARACTER_GLYPH: eDEFINED_CHARACTER_GLYPH? {
      switch self {
      case ._DEFINED_CHARACTER_GLYPH(let entity): return entity
      default: return nil
      }
    }

    public var super_eMAPPED_ITEM: eMAPPED_ITEM? {
      switch self {
      case ._ANNOTATION_TEXT(let entity): return entity.super_eMAPPED_ITEM
      case ._ANNOTATION_TEXT_CHARACTER(let entity): return entity.super_eMAPPED_ITEM
      default: return nil
      }
    }

    public var super_eANNOTATION_TEXT: eANNOTATION_TEXT? {
      switch self {
      case ._ANNOTATION_TEXT(let entity): return entity
      default: return nil
      }
    }

    public var super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM? {
      switch self {
      case ._ANNOTATION_TEXT(let entity): return entity.super_eREPRESENTATION_ITEM
      case ._ANNOTATION_TEXT_CHARACTER(let entity): return entity.super_eREPRESENTATION_ITEM
      case ._COMPOSITE_TEXT(let entity): return entity.super_eREPRESENTATION_ITEM
      case ._DEFINED_CHARACTER_GLYPH(let entity): return entity.super_eREPRESENTATION_ITEM
      case ._TEXT_LITERAL(let entity): return entity.super_eREPRESENTATION_ITEM
      }
    }

    public var super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM? {
      switch self {
      case ._COMPOSITE_TEXT(let entity): return entity.super_eGEOMETRIC_REPRESENTATION_ITEM
      case ._DEFINED_CHARACTER_GLYPH(let entity): return entity.super_eGEOMETRIC_REPRESENTATION_ITEM
      case ._TEXT_LITERAL(let entity): return entity.super_eGEOMETRIC_REPRESENTATION_ITEM
      default: return nil
      }
    }


    //MARK: - ENTITY ATTRIBUTE REFERENCES
    /// attribute of SELECT type ``sTEXT_OR_CHARACTER``
    /// - origin: ENTITY( ``eTEXT_LITERAL`` )
    public var PATH: nTEXT_PATH?  {
      switch self {
      case ._TEXT_LITERAL(let entity): return entity.PATH
      default: return nil
      }
    }

    /// attribute of SELECT type ``sTEXT_OR_CHARACTER``
    /// - origin: ENTITY( ``eTEXT_LITERAL`` )
    public var LITERAL: tPRESENTABLE_TEXT?  {
      switch self {
      case ._TEXT_LITERAL(let entity): return entity.LITERAL
      default: return nil
      }
    }

    /// attribute of SELECT type ``sTEXT_OR_CHARACTER``
    /// - origin: ENTITY( ``eCOMPOSITE_TEXT`` )
    /// - origin: ENTITY( ``eTEXT_LITERAL`` )
    public var DELINEATION: tTEXT_DELINEATION?  {
      switch self {
      case ._COMPOSITE_TEXT(let entity): return entity.DELINEATION
      case ._TEXT_LITERAL(let entity): return entity.DELINEATION
      default: return nil
      }
    }

    /// attribute of SELECT type ``sTEXT_OR_CHARACTER``
    /// - origin: ENTITY( ``eDEFINED_CHARACTER_GLYPH`` )
    /// - origin: ENTITY( ``eTEXT_LITERAL`` )
    public var PLACEMENT: sAXIS2_PLACEMENT?  {
      switch self {
      case ._DEFINED_CHARACTER_GLYPH(let entity): return entity.PLACEMENT
      case ._TEXT_LITERAL(let entity): return entity.PLACEMENT
      default: return nil
      }
    }

    /// attribute of SELECT type ``sTEXT_OR_CHARACTER``
    /// - origin: ENTITY( ``eCOMPOSITE_TEXT`` )
    /// - origin: ENTITY( ``eTEXT_LITERAL`` )
    public var EXTENT: ePLANAR_EXTENT?  {
      switch self {
      case ._COMPOSITE_TEXT(let entity): return entity.EXTENT
      case ._TEXT_LITERAL(let entity): return entity.EXTENT
      default: return nil
      }
    }

    /// attribute of SELECT type ``sTEXT_OR_CHARACTER``
    /// - origin: ENTITY( ``eCOMPOSITE_TEXT`` )
    /// - origin: ENTITY( ``eTEXT_LITERAL`` )
    public var BLANKING: ePLANAR_BOX?  {
      switch self {
      case ._COMPOSITE_TEXT(let entity): return entity.BLANKING
      case ._TEXT_LITERAL(let entity): return entity.BLANKING
      default: return nil
      }
    }

    /// attribute of SELECT type ``sTEXT_OR_CHARACTER``
    /// - origin: ENTITY( ``eCOMPOSITE_TEXT`` )
    public var COLLECTED_TEXT: (SDAI.SET<sTEXT_OR_CHARACTER>/*[2:nil]*/ )?  {
      switch self {
      case ._COMPOSITE_TEXT(let entity): return entity.COLLECTED_TEXT
      default: return nil
      }
    }

    /// attribute of SELECT type ``sTEXT_OR_CHARACTER``
    /// - origin: ENTITY( ``eANNOTATION_TEXT`` )
    /// - origin: ENTITY( ``eANNOTATION_TEXT_CHARACTER`` )
    public var MAPPING_SOURCE: eREPRESENTATION_MAP?  {
      switch self {
      case ._ANNOTATION_TEXT(let entity): return entity.MAPPING_SOURCE
      case ._ANNOTATION_TEXT_CHARACTER(let entity): return entity.MAPPING_SOURCE
      default: return nil
      }
    }

    /// attribute of SELECT type ``sTEXT_OR_CHARACTER``
    /// - origin: ENTITY( ``eDEFINED_CHARACTER_GLYPH`` )
    public var DEFINITION: sDEFINED_GLYPH_SELECT?  {
      switch self {
      case ._DEFINED_CHARACTER_GLYPH(let entity): return entity.DEFINITION
      default: return nil
      }
    }

    /// attribute of SELECT type ``sTEXT_OR_CHARACTER``
    /// - origin: ENTITY( ``eANNOTATION_TEXT`` )
    /// - origin: ENTITY( ``eANNOTATION_TEXT_CHARACTER`` )
    public var MAPPING_TARGET: sAXIS2_PLACEMENT?  {
      switch self {
      case ._ANNOTATION_TEXT(let entity): return entity.MAPPING_TARGET
      case ._ANNOTATION_TEXT_CHARACTER(let entity): return entity.MAPPING_TARGET
      default: return nil
      }
    }

    /// attribute of SELECT type ``sTEXT_OR_CHARACTER``
    /// - origin: ENTITY( ``eANNOTATION_TEXT`` )
    /// - origin: ENTITY( ``eANNOTATION_TEXT_CHARACTER`` )
    /// - origin: ENTITY( ``eCOMPOSITE_TEXT`` )
    /// - origin: ENTITY( ``eDEFINED_CHARACTER_GLYPH`` )
    /// - origin: ENTITY( ``eTEXT_LITERAL`` )
    public var NAME: tLABEL?  {
      switch self {
      case ._ANNOTATION_TEXT(let entity): return entity.NAME
      case ._ANNOTATION_TEXT_CHARACTER(let entity): return entity.NAME
      case ._COMPOSITE_TEXT(let entity): return entity.NAME
      case ._DEFINED_CHARACTER_GLYPH(let entity): return entity.NAME
      case ._TEXT_LITERAL(let entity): return entity.NAME
      }
    }

    /// attribute of SELECT type ``sTEXT_OR_CHARACTER``
    /// - origin: ENTITY( ``eANNOTATION_TEXT_CHARACTER`` )
    /// - origin: ENTITY( ``eTEXT_LITERAL`` )
    public var ALIGNMENT: tTEXT_ALIGNMENT?  {
      switch self {
      case ._ANNOTATION_TEXT_CHARACTER(let entity): return entity.ALIGNMENT
      case ._TEXT_LITERAL(let entity): return entity.ALIGNMENT
      default: return nil
      }
    }

    /// attribute of SELECT type ``sTEXT_OR_CHARACTER``
    /// - origin: ENTITY( ``eCOMPOSITE_TEXT`` )
    /// - origin: ENTITY( ``eDEFINED_CHARACTER_GLYPH`` )
    /// - origin: ENTITY( ``eTEXT_LITERAL`` )
    public var DIM: tDIMENSION_COUNT?  {
      switch self {
      case ._COMPOSITE_TEXT(let entity): return entity.DIM
      case ._DEFINED_CHARACTER_GLYPH(let entity): return entity.DIM
      case ._TEXT_LITERAL(let entity): return entity.DIM
      default: return nil
      }
    }

    /// attribute of SELECT type ``sTEXT_OR_CHARACTER``
    /// - origin: ENTITY( ``eTEXT_LITERAL`` )
    public var FONT: sFONT_SELECT?  {
      switch self {
      case ._TEXT_LITERAL(let entity): return entity.FONT
      default: return nil
      }
    }

    /// attribute of SELECT type ``sTEXT_OR_CHARACTER``
    /// - origin: ENTITY( ``eCOMPOSITE_TEXT`` )
    /// - origin: ENTITY( ``eTEXT_LITERAL`` )
    public var ASSOCIATED_CURVES: (SDAI.SET<eCURVE>/*[1:nil]*/ )?  {
      switch self {
      case ._COMPOSITE_TEXT(let entity): return entity.ASSOCIATED_CURVES
      case ._TEXT_LITERAL(let entity): return entity.ASSOCIATED_CURVES
      default: return nil
      }
    }


    //MARK: - SDAIValue
    public func isValueEqual<T: SDAIValue>(to rhs: T) -> Bool {
      switch self {
      case ._ANNOTATION_TEXT(let selection): return selection.value.isValueEqual(to: rhs)
      case ._ANNOTATION_TEXT_CHARACTER(let selection): return selection.value.isValueEqual(to: rhs)
      case ._COMPOSITE_TEXT(let selection): return selection.value.isValueEqual(to: rhs)
      case ._DEFINED_CHARACTER_GLYPH(let selection): return selection.value.isValueEqual(to: rhs)
      case ._TEXT_LITERAL(let selection): return selection.value.isValueEqual(to: rhs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?) -> Bool? {
      switch self {
      case ._ANNOTATION_TEXT(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._ANNOTATION_TEXT_CHARACTER(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._COMPOSITE_TEXT(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._DEFINED_CHARACTER_GLYPH(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._TEXT_LITERAL(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      }
    }

    public func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      switch self {
      case ._ANNOTATION_TEXT(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._ANNOTATION_TEXT_CHARACTER(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._COMPOSITE_TEXT(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._DEFINED_CHARACTER_GLYPH(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._TEXT_LITERAL(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      }
    }

    public func isValueEqual<T: SDAIValue>(to rhs: T, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      switch self {
      case ._ANNOTATION_TEXT(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._ANNOTATION_TEXT_CHARACTER(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._COMPOSITE_TEXT(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._DEFINED_CHARACTER_GLYPH(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._TEXT_LITERAL(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      switch self {
      case ._ANNOTATION_TEXT(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._ANNOTATION_TEXT_CHARACTER(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._COMPOSITE_TEXT(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._DEFINED_CHARACTER_GLYPH(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._TEXT_LITERAL(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      }
    }


    //MARK: SDAIGenericTypeBase
    public func copy() -> Self {
      switch self {
      case ._ANNOTATION_TEXT(let selection): return ._ANNOTATION_TEXT(selection.copy())
      case ._ANNOTATION_TEXT_CHARACTER(let selection): return ._ANNOTATION_TEXT_CHARACTER(selection.copy())
      case ._COMPOSITE_TEXT(let selection): return ._COMPOSITE_TEXT(selection.copy())
      case ._DEFINED_CHARACTER_GLYPH(let selection): return ._DEFINED_CHARACTER_GLYPH(selection.copy())
      case ._TEXT_LITERAL(let selection): return ._TEXT_LITERAL(selection.copy())
      }
    }

    //MARK: SDAIGenericType
    public var typeMembers: Set<SDAI.STRING> {
      var members: Set<SDAI.STRING> = [SDAI.STRING(Self.typeName)]
      switch self {
      case ._ANNOTATION_TEXT(let selection): members.formUnion(selection.typeMembers)
      case ._ANNOTATION_TEXT_CHARACTER(let selection): members.formUnion(selection.typeMembers)
      case ._COMPOSITE_TEXT(let selection): members.formUnion(selection.typeMembers)
      case ._DEFINED_CHARACTER_GLYPH(let selection): members.formUnion(selection.typeMembers)
      case ._TEXT_LITERAL(let selection): members.formUnion(selection.typeMembers)
      }
      return members
    }

    public var entityReference: SDAI.EntityReference? {
      switch self {
      case ._ANNOTATION_TEXT(let selection): return selection.entityReference
      case ._ANNOTATION_TEXT_CHARACTER(let selection): return selection.entityReference
      case ._COMPOSITE_TEXT(let selection): return selection.entityReference
      case ._DEFINED_CHARACTER_GLYPH(let selection): return selection.entityReference
      case ._TEXT_LITERAL(let selection): return selection.entityReference
      }
    }
    public var stringValue: SDAI.STRING? {
      switch self {
      case ._ANNOTATION_TEXT(let selection): return selection.stringValue
      case ._ANNOTATION_TEXT_CHARACTER(let selection): return selection.stringValue
      case ._COMPOSITE_TEXT(let selection): return selection.stringValue
      case ._DEFINED_CHARACTER_GLYPH(let selection): return selection.stringValue
      case ._TEXT_LITERAL(let selection): return selection.stringValue
      }
    }
    public var binaryValue: SDAI.BINARY? {
      switch self {
      case ._ANNOTATION_TEXT(let selection): return selection.binaryValue
      case ._ANNOTATION_TEXT_CHARACTER(let selection): return selection.binaryValue
      case ._COMPOSITE_TEXT(let selection): return selection.binaryValue
      case ._DEFINED_CHARACTER_GLYPH(let selection): return selection.binaryValue
      case ._TEXT_LITERAL(let selection): return selection.binaryValue
      }
    }
    public var logicalValue: SDAI.LOGICAL? {
      switch self {
      case ._ANNOTATION_TEXT(let selection): return selection.logicalValue
      case ._ANNOTATION_TEXT_CHARACTER(let selection): return selection.logicalValue
      case ._COMPOSITE_TEXT(let selection): return selection.logicalValue
      case ._DEFINED_CHARACTER_GLYPH(let selection): return selection.logicalValue
      case ._TEXT_LITERAL(let selection): return selection.logicalValue
      }
    }
    public var booleanValue: SDAI.BOOLEAN? {
      switch self {
      case ._ANNOTATION_TEXT(let selection): return selection.booleanValue
      case ._ANNOTATION_TEXT_CHARACTER(let selection): return selection.booleanValue
      case ._COMPOSITE_TEXT(let selection): return selection.booleanValue
      case ._DEFINED_CHARACTER_GLYPH(let selection): return selection.booleanValue
      case ._TEXT_LITERAL(let selection): return selection.booleanValue
      }
    }
    public var numberValue: SDAI.NUMBER? {
      switch self {
      case ._ANNOTATION_TEXT(let selection): return selection.numberValue
      case ._ANNOTATION_TEXT_CHARACTER(let selection): return selection.numberValue
      case ._COMPOSITE_TEXT(let selection): return selection.numberValue
      case ._DEFINED_CHARACTER_GLYPH(let selection): return selection.numberValue
      case ._TEXT_LITERAL(let selection): return selection.numberValue
      }
    }
    public var realValue: SDAI.REAL? {
      switch self {
      case ._ANNOTATION_TEXT(let selection): return selection.realValue
      case ._ANNOTATION_TEXT_CHARACTER(let selection): return selection.realValue
      case ._COMPOSITE_TEXT(let selection): return selection.realValue
      case ._DEFINED_CHARACTER_GLYPH(let selection): return selection.realValue
      case ._TEXT_LITERAL(let selection): return selection.realValue
      }
    }
    public var integerValue: SDAI.INTEGER? {
      switch self {
      case ._ANNOTATION_TEXT(let selection): return selection.integerValue
      case ._ANNOTATION_TEXT_CHARACTER(let selection): return selection.integerValue
      case ._COMPOSITE_TEXT(let selection): return selection.integerValue
      case ._DEFINED_CHARACTER_GLYPH(let selection): return selection.integerValue
      case ._TEXT_LITERAL(let selection): return selection.integerValue
      }
    }
    public var genericEnumValue: SDAI.GenericEnumValue? {
      switch self {
      case ._ANNOTATION_TEXT(let selection): return selection.genericEnumValue
      case ._ANNOTATION_TEXT_CHARACTER(let selection): return selection.genericEnumValue
      case ._COMPOSITE_TEXT(let selection): return selection.genericEnumValue
      case ._DEFINED_CHARACTER_GLYPH(let selection): return selection.genericEnumValue
      case ._TEXT_LITERAL(let selection): return selection.genericEnumValue
      }
    }
    public func arrayOptionalValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY_OPTIONAL<ELEM>? {
      switch self {
      case ._ANNOTATION_TEXT(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._ANNOTATION_TEXT_CHARACTER(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._COMPOSITE_TEXT(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._DEFINED_CHARACTER_GLYPH(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._TEXT_LITERAL(let selection): return selection.arrayOptionalValue(elementType:elementType)
      }
    }
    public func arrayValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY<ELEM>? {
      switch self {
      case ._ANNOTATION_TEXT(let selection): return selection.arrayValue(elementType:elementType)
      case ._ANNOTATION_TEXT_CHARACTER(let selection): return selection.arrayValue(elementType:elementType)
      case ._COMPOSITE_TEXT(let selection): return selection.arrayValue(elementType:elementType)
      case ._DEFINED_CHARACTER_GLYPH(let selection): return selection.arrayValue(elementType:elementType)
      case ._TEXT_LITERAL(let selection): return selection.arrayValue(elementType:elementType)
      }
    }
    public func listValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.LIST<ELEM>? {
      switch self {
      case ._ANNOTATION_TEXT(let selection): return selection.listValue(elementType:elementType)
      case ._ANNOTATION_TEXT_CHARACTER(let selection): return selection.listValue(elementType:elementType)
      case ._COMPOSITE_TEXT(let selection): return selection.listValue(elementType:elementType)
      case ._DEFINED_CHARACTER_GLYPH(let selection): return selection.listValue(elementType:elementType)
      case ._TEXT_LITERAL(let selection): return selection.listValue(elementType:elementType)
      }
    }
    public func bagValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.BAG<ELEM>? {
      switch self {
      case ._ANNOTATION_TEXT(let selection): return selection.bagValue(elementType:elementType)
      case ._ANNOTATION_TEXT_CHARACTER(let selection): return selection.bagValue(elementType:elementType)
      case ._COMPOSITE_TEXT(let selection): return selection.bagValue(elementType:elementType)
      case ._DEFINED_CHARACTER_GLYPH(let selection): return selection.bagValue(elementType:elementType)
      case ._TEXT_LITERAL(let selection): return selection.bagValue(elementType:elementType)
      }
    }
    public func setValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.SET<ELEM>? {
      switch self {
      case ._ANNOTATION_TEXT(let selection): return selection.setValue(elementType:elementType)
      case ._ANNOTATION_TEXT_CHARACTER(let selection): return selection.setValue(elementType:elementType)
      case ._COMPOSITE_TEXT(let selection): return selection.setValue(elementType:elementType)
      case ._DEFINED_CHARACTER_GLYPH(let selection): return selection.setValue(elementType:elementType)
      case ._TEXT_LITERAL(let selection): return selection.setValue(elementType:elementType)
      }
    }
    public func enumValue<ENUM:SDAIEnumerationType>(enumType:ENUM.Type) -> ENUM? {
      switch self {
      case ._ANNOTATION_TEXT(let selection): return selection.enumValue(enumType:enumType)
      case ._ANNOTATION_TEXT_CHARACTER(let selection): return selection.enumValue(enumType:enumType)
      case ._COMPOSITE_TEXT(let selection): return selection.enumValue(enumType:enumType)
      case ._DEFINED_CHARACTER_GLYPH(let selection): return selection.enumValue(enumType:enumType)
      case ._TEXT_LITERAL(let selection): return selection.enumValue(enumType:enumType)
      }
    }

    //MARK: SDAIUnderlyingType
    public typealias FundamentalType = Self
    public static var typeName: String = "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.TEXT_OR_CHARACTER"
    public var asFundamentalType: FundamentalType { return self }

    //MARK: SDAIObservableAggregateElement
    public var entityReferences: AnySequence<SDAI.EntityReference> {
      switch self {
      case ._ANNOTATION_TEXT(let entity): return entity.entityReferences
      case ._ANNOTATION_TEXT_CHARACTER(let entity): return entity.entityReferences
      case ._COMPOSITE_TEXT(let entity): return entity.entityReferences
      case ._DEFINED_CHARACTER_GLYPH(let entity): return entity.entityReferences
      case ._TEXT_LITERAL(let entity): return entity.entityReferences
      }
    }

    public mutating func configure(with observer: SDAI.EntityReferenceObserver) {
      switch self {
      case ._ANNOTATION_TEXT(let entity): 
        entity.configure(with: observer)
        self = ._ANNOTATION_TEXT(entity)
      case ._ANNOTATION_TEXT_CHARACTER(let entity): 
        entity.configure(with: observer)
        self = ._ANNOTATION_TEXT_CHARACTER(entity)
      case ._COMPOSITE_TEXT(let entity): 
        entity.configure(with: observer)
        self = ._COMPOSITE_TEXT(entity)
      case ._DEFINED_CHARACTER_GLYPH(let entity): 
        entity.configure(with: observer)
        self = ._DEFINED_CHARACTER_GLYPH(entity)
      case ._TEXT_LITERAL(let entity): 
        entity.configure(with: observer)
        self = ._TEXT_LITERAL(entity)
      }
    }

    public mutating func teardownObserver() {
      switch self {
      case ._ANNOTATION_TEXT(let entity): 
        entity.teardownObserver()
        self = ._ANNOTATION_TEXT(entity)
      case ._ANNOTATION_TEXT_CHARACTER(let entity): 
        entity.teardownObserver()
        self = ._ANNOTATION_TEXT_CHARACTER(entity)
      case ._COMPOSITE_TEXT(let entity): 
        entity.teardownObserver()
        self = ._COMPOSITE_TEXT(entity)
      case ._DEFINED_CHARACTER_GLYPH(let entity): 
        entity.teardownObserver()
        self = ._DEFINED_CHARACTER_GLYPH(entity)
      case ._TEXT_LITERAL(let entity): 
        entity.teardownObserver()
        self = ._TEXT_LITERAL(entity)
      }
    }

    //MARK: SDAIAggregationBehavior
    public var aggregationHiBound: Int? {
      switch self {
      default: return nil
      }
    }
    public var aggregationHiIndex: Int? {
      switch self {
      default: return nil
      }
    }
    public var aggregationLoBound: Int? {
      switch self {
      default: return nil
      }
    }
    public var aggregationLoIndex: Int? {
      switch self {
      default: return nil
      }
    }
    public var aggregationSize: Int? {
      switch self {
      default: return nil
      }
    }

    //MARK: WHERE RULE VALIDATION (SELECT TYPE)
    public static func validateWhereRules(instance:Self?, prefix:SDAI.WhereLabel) -> [SDAI.WhereLabel:SDAI.LOGICAL] {
      var result: [SDAI.WhereLabel:SDAI.LOGICAL] = [:]
      switch instance {
      case ._ANNOTATION_TEXT(let selectValue): 
        result = eANNOTATION_TEXT.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\ANNOTATION_TEXT")
      case ._ANNOTATION_TEXT_CHARACTER(let selectValue): 
        result = eANNOTATION_TEXT_CHARACTER.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\ANNOTATION_TEXT_CHARACTER")
      case ._COMPOSITE_TEXT(let selectValue): 
        result = eCOMPOSITE_TEXT.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\COMPOSITE_TEXT")
      case ._DEFINED_CHARACTER_GLYPH(let selectValue): 
        result = eDEFINED_CHARACTER_GLYPH.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\DEFINED_CHARACTER_GLYPH")
      case ._TEXT_LITERAL(let selectValue): result = eTEXT_LITERAL.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\TEXT_LITERAL")
      case nil: break
      }

      return result
    }

  }

}


//MARK: - SELECT TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sTEXT_OR_CHARACTER__type: SDAISelectType {

  //MARK: GROUP REFERENCES
  var super_eANNOTATION_TEXT_CHARACTER: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eANNOTATION_TEXT_CHARACTER? { get }
  var super_eCOMPOSITE_TEXT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCOMPOSITE_TEXT? { get }
  var super_eTEXT_LITERAL: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eTEXT_LITERAL? { get }
  var super_eDEFINED_CHARACTER_GLYPH: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDEFINED_CHARACTER_GLYPH? { get }
  var super_eMAPPED_ITEM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eMAPPED_ITEM? { get }
  var super_eANNOTATION_TEXT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eANNOTATION_TEXT? { get }
  var super_eREPRESENTATION_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION_ITEM? { get }
  var super_eGEOMETRIC_REPRESENTATION_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eGEOMETRIC_REPRESENTATION_ITEM? { get }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var PATH: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.nTEXT_PATH?  { get }
  var LITERAL: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tPRESENTABLE_TEXT?  { get }
  var DELINEATION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tTEXT_DELINEATION?  { get }
  var PLACEMENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sAXIS2_PLACEMENT?  { get }
  var EXTENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePLANAR_EXTENT?  { get }
  var BLANKING: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePLANAR_BOX?  { get }
  var COLLECTED_TEXT: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sTEXT_OR_CHARACTER>/*[2:nil]*/ )?  { get }
  var MAPPING_SOURCE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION_MAP?  { get }
  var DEFINITION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sDEFINED_GLYPH_SELECT?  { get }
  var MAPPING_TARGET: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sAXIS2_PLACEMENT?  { get }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { get }
  var ALIGNMENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tTEXT_ALIGNMENT?  { get }
  var DIM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tDIMENSION_COUNT?  { get }
  var FONT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sFONT_SELECT?  { get }
  var ASSOCIATED_CURVES: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCURVE>/*[1:nil]*/ )?  { get }
}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sTEXT_OR_CHARACTER__subtype: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sTEXT_OR_CHARACTER__type, SDAIDefinedType
where Supertype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sTEXT_OR_CHARACTER__type
{}

public extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sTEXT_OR_CHARACTER__subtype {
  //MARK: CONSTRUCTORS
  init?(possiblyFrom complex: SDAI.ComplexEntity?) {
    self.init(fundamental: FundamentalType(possiblyFrom: complex))
  }

  init?<T: SDAIUnderlyingType>(possiblyFrom underlyingType: T?) {
    self.init(fundamental: FundamentalType(possiblyFrom: underlyingType))
  }

  init?<G: SDAIGenericType>(fromGeneric generic: G?) {
    self.init(fundamental: FundamentalType.convert(fromGeneric: generic))
  }

  //MARK: GROUP REFERENCES
  var super_eANNOTATION_TEXT_CHARACTER: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eANNOTATION_TEXT_CHARACTER? { rep.super_eANNOTATION_TEXT_CHARACTER }
  var super_eCOMPOSITE_TEXT: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCOMPOSITE_TEXT? { rep.super_eCOMPOSITE_TEXT }
  var super_eTEXT_LITERAL: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eTEXT_LITERAL? { rep.super_eTEXT_LITERAL }
  var super_eDEFINED_CHARACTER_GLYPH: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDEFINED_CHARACTER_GLYPH? { rep.super_eDEFINED_CHARACTER_GLYPH }
  var super_eMAPPED_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eMAPPED_ITEM? { rep.super_eMAPPED_ITEM }
  var super_eANNOTATION_TEXT: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eANNOTATION_TEXT? { rep.super_eANNOTATION_TEXT }
  var super_eREPRESENTATION_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION_ITEM? { rep.super_eREPRESENTATION_ITEM }
  var super_eGEOMETRIC_REPRESENTATION_ITEM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eGEOMETRIC_REPRESENTATION_ITEM? { rep.super_eGEOMETRIC_REPRESENTATION_ITEM }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var PATH: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.nTEXT_PATH?  { rep.PATH }
  var LITERAL: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tPRESENTABLE_TEXT?  { rep.LITERAL }
  var DELINEATION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tTEXT_DELINEATION?  { rep.DELINEATION }
  var PLACEMENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sAXIS2_PLACEMENT?  { rep.PLACEMENT }
  var EXTENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePLANAR_EXTENT?  { rep.EXTENT }
  var BLANKING: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePLANAR_BOX?  { rep.BLANKING }
  var COLLECTED_TEXT: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sTEXT_OR_CHARACTER>/*[2:nil]*/ )?  { rep.COLLECTED_TEXT }
  var MAPPING_SOURCE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION_MAP?  { rep.MAPPING_SOURCE }
  var DEFINITION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sDEFINED_GLYPH_SELECT?  { rep.DEFINITION }
  var MAPPING_TARGET: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sAXIS2_PLACEMENT?  { rep.MAPPING_TARGET }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { rep.NAME }
  var ALIGNMENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tTEXT_ALIGNMENT?  { rep.ALIGNMENT }
  var DIM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tDIMENSION_COUNT?  { rep.DIM }
  var FONT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sFONT_SELECT?  { rep.FONT }
  var ASSOCIATED_CURVES: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCURVE>/*[1:nil]*/ )?  { rep.ASSOCIATED_CURVES }
}

