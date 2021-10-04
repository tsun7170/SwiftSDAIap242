/* file: font_select.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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
  TYPE font_select = SELECT
    ( externally_defined_text_font (*ENTITY*),
     pre_defined_text_font (*ENTITY*),
     text_font (*ENTITY*) );
  END_TYPE; -- font_select (line:3169 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES FOR SELECT
/*
  externally_defined_text_font (*ENTITY*):
  ATTR:  item_id: source_item
  ATTR:  source: external_source

  pre_defined_text_font (*ENTITY*):
  ATTR:  name: label *** Multiple Select Case Sources ***

  text_font (*ENTITY*):
  ATTR:  description: text
  ATTR:  glyphs: SET [1 : ?] OF character_glyph_font_usage
  ATTR:  id: identifier
  ATTR:  name: label *** Multiple Select Case Sources ***

*/

/** SELECT type
- EXPRESS:
```express
  TYPE font_select = SELECT
    ( externally_defined_text_font (*ENTITY*),
     pre_defined_text_font (*ENTITY*),
     text_font (*ENTITY*) );
  END_TYPE; -- font_select (line:3169 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public enum sFONT_SELECT : SDAIValue, AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sFONT_SELECT__type {

    /// SELECT case ``eEXTERNALLY_DEFINED_TEXT_FONT`` (ENTITY) in ``sFONT_SELECT``
    case _EXTERNALLY_DEFINED_TEXT_FONT(eEXTERNALLY_DEFINED_TEXT_FONT)	// (ENTITY)

    /// SELECT case ``ePRE_DEFINED_TEXT_FONT`` (ENTITY) in ``sFONT_SELECT``
    case _PRE_DEFINED_TEXT_FONT(ePRE_DEFINED_TEXT_FONT)	// (ENTITY)

    /// SELECT case ``eTEXT_FONT`` (ENTITY) in ``sFONT_SELECT``
    case _TEXT_FONT(eTEXT_FONT)	// (ENTITY)

    //MARK: - CONSTRUCTORS
    public init(fundamental: FundamentalType) { self = fundamental }

    public init?<T: SDAIUnderlyingType>(possiblyFrom underlyingType: T?){
      return nil
    }

    public init?(possiblyFrom complex: SDAI.ComplexEntity?) {
      guard let complex = complex else { return nil }

      if let base = complex.entityReference(eEXTERNALLY_DEFINED_TEXT_FONT.self) {self = ._EXTERNALLY_DEFINED_TEXT_FONT(base) }
      else if let base = complex.entityReference(ePRE_DEFINED_TEXT_FONT.self) {self = ._PRE_DEFINED_TEXT_FONT(base) }
      else if let base = complex.entityReference(eTEXT_FONT.self) {self = ._TEXT_FONT(base) }
      else { return nil }
    }

    public init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let select = generic else { return nil }

      if let fundamental = select as? Self {
        self.init(fundamental: fundamental)
      }
      else if let base = eEXTERNALLY_DEFINED_TEXT_FONT.convert(fromGeneric: select) {
        self = ._EXTERNALLY_DEFINED_TEXT_FONT(base)
      }
      else if let base = ePRE_DEFINED_TEXT_FONT.convert(fromGeneric: select) {
        self = ._PRE_DEFINED_TEXT_FONT(base)
      }
      else if let base = eTEXT_FONT.convert(fromGeneric: select) {
        self = ._TEXT_FONT(base)
      }
      else { return nil }
    }

    // InitializableByP21Parameter
    public static var bareTypeName: String = "FONT_SELECT"

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
    public var super_ePRE_DEFINED_TEXT_FONT: ePRE_DEFINED_TEXT_FONT? {
      switch self {
      case ._PRE_DEFINED_TEXT_FONT(let entity): return entity
      default: return nil
      }
    }

    public var super_ePRE_DEFINED_ITEM: ePRE_DEFINED_ITEM? {
      switch self {
      case ._PRE_DEFINED_TEXT_FONT(let entity): return entity.super_ePRE_DEFINED_ITEM
      default: return nil
      }
    }

    public var super_eEXTERNALLY_DEFINED_ITEM: eEXTERNALLY_DEFINED_ITEM? {
      switch self {
      case ._EXTERNALLY_DEFINED_TEXT_FONT(let entity): return entity.super_eEXTERNALLY_DEFINED_ITEM
      default: return nil
      }
    }

    public var super_eEXTERNALLY_DEFINED_TEXT_FONT: eEXTERNALLY_DEFINED_TEXT_FONT? {
      switch self {
      case ._EXTERNALLY_DEFINED_TEXT_FONT(let entity): return entity
      default: return nil
      }
    }

    public var super_eTEXT_FONT: eTEXT_FONT? {
      switch self {
      case ._TEXT_FONT(let entity): return entity
      default: return nil
      }
    }


    //MARK: - ENTITY ATTRIBUTE REFERENCES
    /// attribute of SELECT type ``sFONT_SELECT``
    /// - origin: ENTITY( ``eEXTERNALLY_DEFINED_TEXT_FONT`` )
    public var ITEM_ID: sSOURCE_ITEM?  {
      switch self {
      case ._EXTERNALLY_DEFINED_TEXT_FONT(let entity): return entity.ITEM_ID
      default: return nil
      }
    }

    /// attribute of SELECT type ``sFONT_SELECT``
    /// - origin: ENTITY( ``eTEXT_FONT`` )
    public var DESCRIPTION: tTEXT?  {
      switch self {
      case ._TEXT_FONT(let entity): return entity.DESCRIPTION
      default: return nil
      }
    }

    /// attribute of SELECT type ``sFONT_SELECT``
    /// - origin: ENTITY( ``eTEXT_FONT`` )
    public var GLYPHS: (SDAI.SET<eCHARACTER_GLYPH_FONT_USAGE>/*[1:nil]*/ )?  {
      switch self {
      case ._TEXT_FONT(let entity): return entity.GLYPHS
      default: return nil
      }
    }

    /// attribute of SELECT type ``sFONT_SELECT``
    /// - origin: ENTITY( ``eEXTERNALLY_DEFINED_TEXT_FONT`` )
    public var SOURCE: eEXTERNAL_SOURCE?  {
      switch self {
      case ._EXTERNALLY_DEFINED_TEXT_FONT(let entity): return entity.SOURCE
      default: return nil
      }
    }

    /// attribute of SELECT type ``sFONT_SELECT``
    /// - origin: ENTITY( ``eTEXT_FONT`` )
    public var ID: tIDENTIFIER?  {
      switch self {
      case ._TEXT_FONT(let entity): return entity.ID
      default: return nil
      }
    }

    /// attribute of SELECT type ``sFONT_SELECT``
    /// - origin: ENTITY( ``ePRE_DEFINED_TEXT_FONT`` )
    /// - origin: ENTITY( ``eTEXT_FONT`` )
    public var NAME: tLABEL?  {
      switch self {
      case ._PRE_DEFINED_TEXT_FONT(let entity): return entity.NAME
      case ._TEXT_FONT(let entity): return entity.NAME
      default: return nil
      }
    }


    //MARK: - SDAIValue
    public func isValueEqual<T: SDAIValue>(to rhs: T) -> Bool {
      switch self {
      case ._EXTERNALLY_DEFINED_TEXT_FONT(let selection): return selection.value.isValueEqual(to: rhs)
      case ._PRE_DEFINED_TEXT_FONT(let selection): return selection.value.isValueEqual(to: rhs)
      case ._TEXT_FONT(let selection): return selection.value.isValueEqual(to: rhs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?) -> Bool? {
      switch self {
      case ._EXTERNALLY_DEFINED_TEXT_FONT(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._PRE_DEFINED_TEXT_FONT(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._TEXT_FONT(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      }
    }

    public func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      switch self {
      case ._EXTERNALLY_DEFINED_TEXT_FONT(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._PRE_DEFINED_TEXT_FONT(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._TEXT_FONT(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      }
    }

    public func isValueEqual<T: SDAIValue>(to rhs: T, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      switch self {
      case ._EXTERNALLY_DEFINED_TEXT_FONT(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._PRE_DEFINED_TEXT_FONT(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._TEXT_FONT(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      switch self {
      case ._EXTERNALLY_DEFINED_TEXT_FONT(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._PRE_DEFINED_TEXT_FONT(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._TEXT_FONT(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      }
    }


    //MARK: SDAIGenericTypeBase
    public func copy() -> Self {
      switch self {
      case ._EXTERNALLY_DEFINED_TEXT_FONT(let selection): return ._EXTERNALLY_DEFINED_TEXT_FONT(selection.copy())
      case ._PRE_DEFINED_TEXT_FONT(let selection): return ._PRE_DEFINED_TEXT_FONT(selection.copy())
      case ._TEXT_FONT(let selection): return ._TEXT_FONT(selection.copy())
      }
    }

    //MARK: SDAIGenericType
    public var typeMembers: Set<SDAI.STRING> {
      var members: Set<SDAI.STRING> = [SDAI.STRING(Self.typeName)]
      switch self {
      case ._EXTERNALLY_DEFINED_TEXT_FONT(let selection): members.formUnion(selection.typeMembers)
      case ._PRE_DEFINED_TEXT_FONT(let selection): members.formUnion(selection.typeMembers)
      case ._TEXT_FONT(let selection): members.formUnion(selection.typeMembers)
      }
      return members
    }

    public var entityReference: SDAI.EntityReference? {
      switch self {
      case ._EXTERNALLY_DEFINED_TEXT_FONT(let selection): return selection.entityReference
      case ._PRE_DEFINED_TEXT_FONT(let selection): return selection.entityReference
      case ._TEXT_FONT(let selection): return selection.entityReference
      }
    }
    public var stringValue: SDAI.STRING? {
      switch self {
      case ._EXTERNALLY_DEFINED_TEXT_FONT(let selection): return selection.stringValue
      case ._PRE_DEFINED_TEXT_FONT(let selection): return selection.stringValue
      case ._TEXT_FONT(let selection): return selection.stringValue
      }
    }
    public var binaryValue: SDAI.BINARY? {
      switch self {
      case ._EXTERNALLY_DEFINED_TEXT_FONT(let selection): return selection.binaryValue
      case ._PRE_DEFINED_TEXT_FONT(let selection): return selection.binaryValue
      case ._TEXT_FONT(let selection): return selection.binaryValue
      }
    }
    public var logicalValue: SDAI.LOGICAL? {
      switch self {
      case ._EXTERNALLY_DEFINED_TEXT_FONT(let selection): return selection.logicalValue
      case ._PRE_DEFINED_TEXT_FONT(let selection): return selection.logicalValue
      case ._TEXT_FONT(let selection): return selection.logicalValue
      }
    }
    public var booleanValue: SDAI.BOOLEAN? {
      switch self {
      case ._EXTERNALLY_DEFINED_TEXT_FONT(let selection): return selection.booleanValue
      case ._PRE_DEFINED_TEXT_FONT(let selection): return selection.booleanValue
      case ._TEXT_FONT(let selection): return selection.booleanValue
      }
    }
    public var numberValue: SDAI.NUMBER? {
      switch self {
      case ._EXTERNALLY_DEFINED_TEXT_FONT(let selection): return selection.numberValue
      case ._PRE_DEFINED_TEXT_FONT(let selection): return selection.numberValue
      case ._TEXT_FONT(let selection): return selection.numberValue
      }
    }
    public var realValue: SDAI.REAL? {
      switch self {
      case ._EXTERNALLY_DEFINED_TEXT_FONT(let selection): return selection.realValue
      case ._PRE_DEFINED_TEXT_FONT(let selection): return selection.realValue
      case ._TEXT_FONT(let selection): return selection.realValue
      }
    }
    public var integerValue: SDAI.INTEGER? {
      switch self {
      case ._EXTERNALLY_DEFINED_TEXT_FONT(let selection): return selection.integerValue
      case ._PRE_DEFINED_TEXT_FONT(let selection): return selection.integerValue
      case ._TEXT_FONT(let selection): return selection.integerValue
      }
    }
    public var genericEnumValue: SDAI.GenericEnumValue? {
      switch self {
      case ._EXTERNALLY_DEFINED_TEXT_FONT(let selection): return selection.genericEnumValue
      case ._PRE_DEFINED_TEXT_FONT(let selection): return selection.genericEnumValue
      case ._TEXT_FONT(let selection): return selection.genericEnumValue
      }
    }
    public func arrayOptionalValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY_OPTIONAL<ELEM>? {
      switch self {
      case ._EXTERNALLY_DEFINED_TEXT_FONT(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._PRE_DEFINED_TEXT_FONT(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._TEXT_FONT(let selection): return selection.arrayOptionalValue(elementType:elementType)
      }
    }
    public func arrayValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY<ELEM>? {
      switch self {
      case ._EXTERNALLY_DEFINED_TEXT_FONT(let selection): return selection.arrayValue(elementType:elementType)
      case ._PRE_DEFINED_TEXT_FONT(let selection): return selection.arrayValue(elementType:elementType)
      case ._TEXT_FONT(let selection): return selection.arrayValue(elementType:elementType)
      }
    }
    public func listValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.LIST<ELEM>? {
      switch self {
      case ._EXTERNALLY_DEFINED_TEXT_FONT(let selection): return selection.listValue(elementType:elementType)
      case ._PRE_DEFINED_TEXT_FONT(let selection): return selection.listValue(elementType:elementType)
      case ._TEXT_FONT(let selection): return selection.listValue(elementType:elementType)
      }
    }
    public func bagValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.BAG<ELEM>? {
      switch self {
      case ._EXTERNALLY_DEFINED_TEXT_FONT(let selection): return selection.bagValue(elementType:elementType)
      case ._PRE_DEFINED_TEXT_FONT(let selection): return selection.bagValue(elementType:elementType)
      case ._TEXT_FONT(let selection): return selection.bagValue(elementType:elementType)
      }
    }
    public func setValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.SET<ELEM>? {
      switch self {
      case ._EXTERNALLY_DEFINED_TEXT_FONT(let selection): return selection.setValue(elementType:elementType)
      case ._PRE_DEFINED_TEXT_FONT(let selection): return selection.setValue(elementType:elementType)
      case ._TEXT_FONT(let selection): return selection.setValue(elementType:elementType)
      }
    }
    public func enumValue<ENUM:SDAIEnumerationType>(enumType:ENUM.Type) -> ENUM? {
      switch self {
      case ._EXTERNALLY_DEFINED_TEXT_FONT(let selection): return selection.enumValue(enumType:enumType)
      case ._PRE_DEFINED_TEXT_FONT(let selection): return selection.enumValue(enumType:enumType)
      case ._TEXT_FONT(let selection): return selection.enumValue(enumType:enumType)
      }
    }

    //MARK: SDAIUnderlyingType
    public typealias FundamentalType = Self
    public static var typeName: String = "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.FONT_SELECT"
    public var asFundamentalType: FundamentalType { return self }

    //MARK: SDAIObservableAggregateElement
    public var entityReferences: AnySequence<SDAI.EntityReference> {
      switch self {
      case ._EXTERNALLY_DEFINED_TEXT_FONT(let entity): return entity.entityReferences
      case ._PRE_DEFINED_TEXT_FONT(let entity): return entity.entityReferences
      case ._TEXT_FONT(let entity): return entity.entityReferences
      }
    }

    public mutating func configure(with observer: SDAI.EntityReferenceObserver) {
      switch self {
      case ._EXTERNALLY_DEFINED_TEXT_FONT(let entity): 
        entity.configure(with: observer)
        self = ._EXTERNALLY_DEFINED_TEXT_FONT(entity)
      case ._PRE_DEFINED_TEXT_FONT(let entity): 
        entity.configure(with: observer)
        self = ._PRE_DEFINED_TEXT_FONT(entity)
      case ._TEXT_FONT(let entity): 
        entity.configure(with: observer)
        self = ._TEXT_FONT(entity)
      }
    }

    public mutating func teardownObserver() {
      switch self {
      case ._EXTERNALLY_DEFINED_TEXT_FONT(let entity): 
        entity.teardownObserver()
        self = ._EXTERNALLY_DEFINED_TEXT_FONT(entity)
      case ._PRE_DEFINED_TEXT_FONT(let entity): 
        entity.teardownObserver()
        self = ._PRE_DEFINED_TEXT_FONT(entity)
      case ._TEXT_FONT(let entity): 
        entity.teardownObserver()
        self = ._TEXT_FONT(entity)
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
      case ._EXTERNALLY_DEFINED_TEXT_FONT(let selectValue): 
        result = eEXTERNALLY_DEFINED_TEXT_FONT.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\EXTERNALLY_DEFINED_TEXT_FONT")
      case ._PRE_DEFINED_TEXT_FONT(let selectValue): 
        result = ePRE_DEFINED_TEXT_FONT.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\PRE_DEFINED_TEXT_FONT")
      case ._TEXT_FONT(let selectValue): result = eTEXT_FONT.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\TEXT_FONT")
      case nil: break
      }

      return result
    }

  }

}


//MARK: - SELECT TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sFONT_SELECT__type: SDAISelectType {

  //MARK: GROUP REFERENCES
  var super_ePRE_DEFINED_TEXT_FONT: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRE_DEFINED_TEXT_FONT? { get }
  var super_ePRE_DEFINED_ITEM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRE_DEFINED_ITEM? { get }
  var super_eEXTERNALLY_DEFINED_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eEXTERNALLY_DEFINED_ITEM? { get }
  var super_eEXTERNALLY_DEFINED_TEXT_FONT: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eEXTERNALLY_DEFINED_TEXT_FONT? { get }
  var super_eTEXT_FONT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eTEXT_FONT? { get }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var ITEM_ID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sSOURCE_ITEM?  { get }
  var DESCRIPTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tTEXT?  { get }
  var GLYPHS: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCHARACTER_GLYPH_FONT_USAGE>/*[1:nil]*/ )?  { get }
  var SOURCE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eEXTERNAL_SOURCE?  { get }
  var ID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER?  { get }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { get }
}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sFONT_SELECT__subtype: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sFONT_SELECT__type, SDAIDefinedType
where Supertype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sFONT_SELECT__type
{}

public extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sFONT_SELECT__subtype {
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
  var super_ePRE_DEFINED_TEXT_FONT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRE_DEFINED_TEXT_FONT? { rep.super_ePRE_DEFINED_TEXT_FONT }
  var super_ePRE_DEFINED_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRE_DEFINED_ITEM? { rep.super_ePRE_DEFINED_ITEM }
  var super_eEXTERNALLY_DEFINED_ITEM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eEXTERNALLY_DEFINED_ITEM? { rep.super_eEXTERNALLY_DEFINED_ITEM }
  var super_eEXTERNALLY_DEFINED_TEXT_FONT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eEXTERNALLY_DEFINED_TEXT_FONT? { rep.super_eEXTERNALLY_DEFINED_TEXT_FONT }
  var super_eTEXT_FONT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eTEXT_FONT? { rep.super_eTEXT_FONT }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var ITEM_ID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sSOURCE_ITEM?  { rep.ITEM_ID }
  var DESCRIPTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tTEXT?  { rep.DESCRIPTION }
  var GLYPHS: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCHARACTER_GLYPH_FONT_USAGE>/*[1:nil]*/ )?  { rep.GLYPHS }
  var SOURCE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eEXTERNAL_SOURCE?  { rep.SOURCE }
  var ID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER?  { rep.ID }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { rep.NAME }
}
