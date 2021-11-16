/* file: curve_font_or_scaled_curve_font_select.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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
  TYPE curve_font_or_scaled_curve_font_select = SELECT
    ( curve_style_font_and_scaling (*ENTITY*),
     curve_style_font_select (*SELECT*) );
  END_TYPE; -- curve_font_or_scaled_curve_font_select (line:1820 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES FOR SELECT
/*
  curve_style_font_and_scaling (*ENTITY*):
  ATTR:  curve_font_scaling: REAL
  ATTR:  users: SET [0 : ?] OF founded_item_select
  ATTR:  curve_font: curve_style_font_select
  ATTR:  name: label *** Multiple Select Case Sources ***

  curve_style_font_select (*SELECT*):
  ATTR:  item_id: source_item
  ATTR:  pattern_list: LIST [1 : ?] OF curve_style_font_pattern
  ATTR:  users: SET [0 : ?] OF founded_item_select
  ATTR:  source: external_source
  ATTR:  name: label *** Multiple Select Case Sources ***

*/

/** SELECT type
- EXPRESS:
```express
  TYPE curve_font_or_scaled_curve_font_select = SELECT
    ( curve_style_font_and_scaling (*ENTITY*),
     curve_style_font_select (*SELECT*) );
  END_TYPE; -- curve_font_or_scaled_curve_font_select (line:1820 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public enum sCURVE_FONT_OR_SCALED_CURVE_FONT_SELECT : SDAIValue, AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sCURVE_FONT_OR_SCALED_CURVE_FONT_SELECT__type {

    /// SELECT case ``eCURVE_STYLE_FONT_AND_SCALING`` (ENTITY) in ``sCURVE_FONT_OR_SCALED_CURVE_FONT_SELECT``
    case _CURVE_STYLE_FONT_AND_SCALING(eCURVE_STYLE_FONT_AND_SCALING)	// (ENTITY)

    /// SELECT case ``sCURVE_STYLE_FONT_SELECT`` (SELECT) in ``sCURVE_FONT_OR_SCALED_CURVE_FONT_SELECT``
    case _CURVE_STYLE_FONT_SELECT(sCURVE_STYLE_FONT_SELECT)	// (SELECT)

    //MARK: - CONSTRUCTORS
    public init(fundamental: FundamentalType) { self = fundamental }

    public init?<T: SDAIUnderlyingType>(possiblyFrom underlyingType: T?){
      guard let underlyingType = underlyingType else { return nil }

      if let base = underlyingType as? sCURVE_STYLE_FONT_SELECT {
        self = ._CURVE_STYLE_FONT_SELECT(base)
      }
      else if let base = sCURVE_STYLE_FONT_SELECT(possiblyFrom: underlyingType) {
        self = ._CURVE_STYLE_FONT_SELECT(base)
      }
      else { return nil }
    }

    public init?(possiblyFrom complex: SDAI.ComplexEntity?) {
      guard let complex = complex else { return nil }

      if let base = complex.entityReference(eCURVE_STYLE_FONT_AND_SCALING.self) {self = ._CURVE_STYLE_FONT_AND_SCALING(base) }
      else if let base = sCURVE_STYLE_FONT_SELECT(possiblyFrom: complex) {
        self = ._CURVE_STYLE_FONT_SELECT(base)
      }
      else { return nil }
    }

    public init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let select = generic else { return nil }

      if let fundamental = select as? Self {
        self.init(fundamental: fundamental)
      }
      else if let base = eCURVE_STYLE_FONT_AND_SCALING.convert(fromGeneric: select) {
        self = ._CURVE_STYLE_FONT_AND_SCALING(base)
      }
      else if let base = sCURVE_STYLE_FONT_SELECT.convert(fromGeneric: select) {
        self = ._CURVE_STYLE_FONT_SELECT(base)
      }
      else { return nil }
    }

    // InitializableByP21Parameter
    public static var bareTypeName: String = "CURVE_FONT_OR_SCALED_CURVE_FONT_SELECT"

    public init?(p21typedParam: P21Decode.ExchangeStructure.TypedParameter, from exchangeStructure: P21Decode.ExchangeStructure) {
      guard let keyword = p21typedParam.keyword.asStandardKeyword else { exchangeStructure.error = "unexpected p21parameter(\(p21typedParam)) while resolving \(Self.bareTypeName) select value"; return nil }

      switch(keyword) {
      case sCURVE_STYLE_FONT_SELECT.bareTypeName:
        guard let base = sCURVE_STYLE_FONT_SELECT(p21typedParam: p21typedParam, from: exchangeStructure) else { exchangeStructure.add(errorContext: "while resolving \(Self.bareTypeName) select value"); return nil }
        self = ._CURVE_STYLE_FONT_SELECT(base)

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


    //MARK: - NON-ENTITY UNDERLYING TYPE REFERENCES
    public var super_sCURVE_STYLE_FONT_SELECT: sCURVE_STYLE_FONT_SELECT? {
      switch self {
      case ._CURVE_STYLE_FONT_SELECT(let selectValue): return selectValue
      default: return nil
      }
    }

    //MARK: - ENTITY UNDERLYING TYPE REFERENCES
    public var super_eCURVE_STYLE_FONT_AND_SCALING: eCURVE_STYLE_FONT_AND_SCALING? {
      switch self {
      case ._CURVE_STYLE_FONT_AND_SCALING(let entity): return entity
      default: return nil
      }
    }

    public var super_eFOUNDED_ITEM: eFOUNDED_ITEM? {
      switch self {
      case ._CURVE_STYLE_FONT_AND_SCALING(let entity): return entity.super_eFOUNDED_ITEM
      case ._CURVE_STYLE_FONT_SELECT(let select): return select.super_eFOUNDED_ITEM
      }
    }

    public var super_eCURVE_STYLE_FONT: eCURVE_STYLE_FONT? {
      switch self {
      case ._CURVE_STYLE_FONT_SELECT(let select): return select.super_eCURVE_STYLE_FONT
      default: return nil
      }
    }

    public var super_eEXTERNALLY_DEFINED_CURVE_FONT: eEXTERNALLY_DEFINED_CURVE_FONT? {
      switch self {
      case ._CURVE_STYLE_FONT_SELECT(let select): return select.super_eEXTERNALLY_DEFINED_CURVE_FONT
      default: return nil
      }
    }

    public var super_ePRE_DEFINED_ITEM: ePRE_DEFINED_ITEM? {
      switch self {
      case ._CURVE_STYLE_FONT_SELECT(let select): return select.super_ePRE_DEFINED_ITEM
      default: return nil
      }
    }

    public var super_eEXTERNALLY_DEFINED_ITEM: eEXTERNALLY_DEFINED_ITEM? {
      switch self {
      case ._CURVE_STYLE_FONT_SELECT(let select): return select.super_eEXTERNALLY_DEFINED_ITEM
      default: return nil
      }
    }

    public var super_ePRE_DEFINED_CURVE_FONT: ePRE_DEFINED_CURVE_FONT? {
      switch self {
      case ._CURVE_STYLE_FONT_SELECT(let select): return select.super_ePRE_DEFINED_CURVE_FONT
      default: return nil
      }
    }


    //MARK: - ENTITY ATTRIBUTE REFERENCES
    /// attribute of SELECT type ``sCURVE_FONT_OR_SCALED_CURVE_FONT_SELECT``
    /// - origin: ENTITY( ``eCURVE_STYLE_FONT_AND_SCALING`` )
    public var CURVE_FONT_SCALING: SDAI.REAL?  {
      switch self {
      case ._CURVE_STYLE_FONT_AND_SCALING(let entity): return entity.CURVE_FONT_SCALING
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCURVE_FONT_OR_SCALED_CURVE_FONT_SELECT``
    /// - origin: SELECT( ``sCURVE_STYLE_FONT_SELECT`` )
    public var ITEM_ID: sSOURCE_ITEM?  {
      switch self {
      case ._CURVE_STYLE_FONT_SELECT(let select): return select.ITEM_ID
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCURVE_FONT_OR_SCALED_CURVE_FONT_SELECT``
    /// - origin: SELECT( ``sCURVE_STYLE_FONT_SELECT`` )
    public var PATTERN_LIST: (SDAI.LIST<eCURVE_STYLE_FONT_PATTERN>/*[1:nil]*/ )?  {
      switch self {
      case ._CURVE_STYLE_FONT_SELECT(let select): return select.PATTERN_LIST
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCURVE_FONT_OR_SCALED_CURVE_FONT_SELECT``
    /// - origin: ENTITY( ``eCURVE_STYLE_FONT_AND_SCALING`` )
    /// - origin: SELECT( ``sCURVE_STYLE_FONT_SELECT`` )
    public var USERS: (SDAI.SET<sFOUNDED_ITEM_SELECT>/*[0:nil]*/ )?  {
      switch self {
      case ._CURVE_STYLE_FONT_AND_SCALING(let entity): return entity.USERS
      case ._CURVE_STYLE_FONT_SELECT(let select): return select.USERS
      }
    }

    /// attribute of SELECT type ``sCURVE_FONT_OR_SCALED_CURVE_FONT_SELECT``
    /// - origin: ENTITY( ``eCURVE_STYLE_FONT_AND_SCALING`` )
    public var CURVE_FONT: sCURVE_STYLE_FONT_SELECT?  {
      switch self {
      case ._CURVE_STYLE_FONT_AND_SCALING(let entity): return entity.CURVE_FONT
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCURVE_FONT_OR_SCALED_CURVE_FONT_SELECT``
    /// - origin: SELECT( ``sCURVE_STYLE_FONT_SELECT`` )
    public var SOURCE: eEXTERNAL_SOURCE?  {
      switch self {
      case ._CURVE_STYLE_FONT_SELECT(let select): return select.SOURCE
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCURVE_FONT_OR_SCALED_CURVE_FONT_SELECT``
    /// - origin: ENTITY( ``eCURVE_STYLE_FONT_AND_SCALING`` )
    /// - origin: SELECT( ``sCURVE_STYLE_FONT_SELECT`` )
    public var NAME: tLABEL?  {
      switch self {
      case ._CURVE_STYLE_FONT_AND_SCALING(let entity): return entity.NAME
      case ._CURVE_STYLE_FONT_SELECT(let select): return select.NAME
      }
    }


    //MARK: - SDAIValue
    public func isValueEqual<T: SDAIValue>(to rhs: T) -> Bool {
      switch self {
      case ._CURVE_STYLE_FONT_AND_SCALING(let selection): return selection.value.isValueEqual(to: rhs)
      case ._CURVE_STYLE_FONT_SELECT(let selection): return selection.value.isValueEqual(to: rhs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?) -> Bool? {
      switch self {
      case ._CURVE_STYLE_FONT_AND_SCALING(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._CURVE_STYLE_FONT_SELECT(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      }
    }

    public func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      switch self {
      case ._CURVE_STYLE_FONT_AND_SCALING(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._CURVE_STYLE_FONT_SELECT(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      }
    }

    public func isValueEqual<T: SDAIValue>(to rhs: T, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      switch self {
      case ._CURVE_STYLE_FONT_AND_SCALING(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._CURVE_STYLE_FONT_SELECT(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      switch self {
      case ._CURVE_STYLE_FONT_AND_SCALING(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._CURVE_STYLE_FONT_SELECT(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      }
    }


    //MARK: SDAIGenericTypeBase
    public func copy() -> Self {
      switch self {
      case ._CURVE_STYLE_FONT_AND_SCALING(let selection): return ._CURVE_STYLE_FONT_AND_SCALING(selection.copy())
      case ._CURVE_STYLE_FONT_SELECT(let selection): return ._CURVE_STYLE_FONT_SELECT(selection.copy())
      }
    }

    //MARK: SDAIGenericType
    public var typeMembers: Set<SDAI.STRING> {
      var members: Set<SDAI.STRING> = [SDAI.STRING(Self.typeName)]
      switch self {
      case ._CURVE_STYLE_FONT_AND_SCALING(let selection): members.formUnion(selection.typeMembers)
      case ._CURVE_STYLE_FONT_SELECT(let selection): members.formUnion(selection.typeMembers)
      }
      return members
    }

    public var entityReference: SDAI.EntityReference? {
      switch self {
      case ._CURVE_STYLE_FONT_AND_SCALING(let selection): return selection.entityReference
      case ._CURVE_STYLE_FONT_SELECT(let selection): return selection.entityReference
      }
    }
    public var stringValue: SDAI.STRING? {
      switch self {
      case ._CURVE_STYLE_FONT_AND_SCALING(let selection): return selection.stringValue
      case ._CURVE_STYLE_FONT_SELECT(let selection): return selection.stringValue
      }
    }
    public var binaryValue: SDAI.BINARY? {
      switch self {
      case ._CURVE_STYLE_FONT_AND_SCALING(let selection): return selection.binaryValue
      case ._CURVE_STYLE_FONT_SELECT(let selection): return selection.binaryValue
      }
    }
    public var logicalValue: SDAI.LOGICAL? {
      switch self {
      case ._CURVE_STYLE_FONT_AND_SCALING(let selection): return selection.logicalValue
      case ._CURVE_STYLE_FONT_SELECT(let selection): return selection.logicalValue
      }
    }
    public var booleanValue: SDAI.BOOLEAN? {
      switch self {
      case ._CURVE_STYLE_FONT_AND_SCALING(let selection): return selection.booleanValue
      case ._CURVE_STYLE_FONT_SELECT(let selection): return selection.booleanValue
      }
    }
    public var numberValue: SDAI.NUMBER? {
      switch self {
      case ._CURVE_STYLE_FONT_AND_SCALING(let selection): return selection.numberValue
      case ._CURVE_STYLE_FONT_SELECT(let selection): return selection.numberValue
      }
    }
    public var realValue: SDAI.REAL? {
      switch self {
      case ._CURVE_STYLE_FONT_AND_SCALING(let selection): return selection.realValue
      case ._CURVE_STYLE_FONT_SELECT(let selection): return selection.realValue
      }
    }
    public var integerValue: SDAI.INTEGER? {
      switch self {
      case ._CURVE_STYLE_FONT_AND_SCALING(let selection): return selection.integerValue
      case ._CURVE_STYLE_FONT_SELECT(let selection): return selection.integerValue
      }
    }
    public var genericEnumValue: SDAI.GenericEnumValue? {
      switch self {
      case ._CURVE_STYLE_FONT_AND_SCALING(let selection): return selection.genericEnumValue
      case ._CURVE_STYLE_FONT_SELECT(let selection): return selection.genericEnumValue
      }
    }
    public func arrayOptionalValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY_OPTIONAL<ELEM>? {
      switch self {
      case ._CURVE_STYLE_FONT_AND_SCALING(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._CURVE_STYLE_FONT_SELECT(let selection): return selection.arrayOptionalValue(elementType:elementType)
      }
    }
    public func arrayValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY<ELEM>? {
      switch self {
      case ._CURVE_STYLE_FONT_AND_SCALING(let selection): return selection.arrayValue(elementType:elementType)
      case ._CURVE_STYLE_FONT_SELECT(let selection): return selection.arrayValue(elementType:elementType)
      }
    }
    public func listValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.LIST<ELEM>? {
      switch self {
      case ._CURVE_STYLE_FONT_AND_SCALING(let selection): return selection.listValue(elementType:elementType)
      case ._CURVE_STYLE_FONT_SELECT(let selection): return selection.listValue(elementType:elementType)
      }
    }
    public func bagValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.BAG<ELEM>? {
      switch self {
      case ._CURVE_STYLE_FONT_AND_SCALING(let selection): return selection.bagValue(elementType:elementType)
      case ._CURVE_STYLE_FONT_SELECT(let selection): return selection.bagValue(elementType:elementType)
      }
    }
    public func setValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.SET<ELEM>? {
      switch self {
      case ._CURVE_STYLE_FONT_AND_SCALING(let selection): return selection.setValue(elementType:elementType)
      case ._CURVE_STYLE_FONT_SELECT(let selection): return selection.setValue(elementType:elementType)
      }
    }
    public func enumValue<ENUM:SDAIEnumerationType>(enumType:ENUM.Type) -> ENUM? {
      switch self {
      case ._CURVE_STYLE_FONT_AND_SCALING(let selection): return selection.enumValue(enumType:enumType)
      case ._CURVE_STYLE_FONT_SELECT(let selection): return selection.enumValue(enumType:enumType)
      }
    }

    //MARK: SDAIUnderlyingType
    public typealias FundamentalType = Self
    public static var typeName: String = 
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CURVE_FONT_OR_SCALED_CURVE_FONT_SELECT"
    public var asFundamentalType: FundamentalType { return self }

    //MARK: SDAIObservableAggregateElement
    public var entityReferences: AnySequence<SDAI.EntityReference> {
      switch self {
      case ._CURVE_STYLE_FONT_AND_SCALING(let entity): return entity.entityReferences
      case ._CURVE_STYLE_FONT_SELECT(let select): return select.entityReferences
      }
    }

    public mutating func configure(with observer: SDAI.EntityReferenceObserver) {
      switch self {
      case ._CURVE_STYLE_FONT_AND_SCALING(let entity): 
        entity.configure(with: observer)
        self = ._CURVE_STYLE_FONT_AND_SCALING(entity)
      case ._CURVE_STYLE_FONT_SELECT(var select): 
        select.configure(with: observer)
        self = ._CURVE_STYLE_FONT_SELECT(select)
      }
    }

    public mutating func teardownObserver() {
      switch self {
      case ._CURVE_STYLE_FONT_AND_SCALING(let entity): 
        entity.teardownObserver()
        self = ._CURVE_STYLE_FONT_AND_SCALING(entity)
      case ._CURVE_STYLE_FONT_SELECT(var select): 
        select.teardownObserver()
        self = ._CURVE_STYLE_FONT_SELECT(select)
      }
    }

    //MARK: SDAIAggregationBehavior
    public var aggregationHiBound: Int? {
      switch self {
      case ._CURVE_STYLE_FONT_SELECT(let selection): return selection.aggregationHiBound
      default: return nil
      }
    }
    public var aggregationHiIndex: Int? {
      switch self {
      case ._CURVE_STYLE_FONT_SELECT(let selection): return selection.aggregationHiIndex
      default: return nil
      }
    }
    public var aggregationLoBound: Int? {
      switch self {
      case ._CURVE_STYLE_FONT_SELECT(let selection): return selection.aggregationLoBound
      default: return nil
      }
    }
    public var aggregationLoIndex: Int? {
      switch self {
      case ._CURVE_STYLE_FONT_SELECT(let selection): return selection.aggregationLoIndex
      default: return nil
      }
    }
    public var aggregationSize: Int? {
      switch self {
      case ._CURVE_STYLE_FONT_SELECT(let selection): return selection.aggregationSize
      default: return nil
      }
    }

    //MARK: WHERE RULE VALIDATION (SELECT TYPE)
    public static func validateWhereRules(instance:Self?, prefix:SDAI.WhereLabel) -> [SDAI.WhereLabel:SDAI.LOGICAL] {
      var result: [SDAI.WhereLabel:SDAI.LOGICAL] = [:]
      switch instance {
      case ._CURVE_STYLE_FONT_AND_SCALING(let selectValue): 
        result = eCURVE_STYLE_FONT_AND_SCALING.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\CURVE_STYLE_FONT_AND_SCALING")
      case ._CURVE_STYLE_FONT_SELECT(let selectValue): 
        result = sCURVE_STYLE_FONT_SELECT.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\CURVE_STYLE_FONT_SELECT")
      case nil: break
      }

      return result
    }

  }

}


//MARK: - SELECT TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sCURVE_FONT_OR_SCALED_CURVE_FONT_SELECT__type: 
  SDAISelectType {

  //MARK: GROUP REFERENCES
  var super_sCURVE_STYLE_FONT_SELECT: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sCURVE_STYLE_FONT_SELECT? { get }
  var super_eCURVE_STYLE_FONT_AND_SCALING: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCURVE_STYLE_FONT_AND_SCALING? { get }
  var super_eFOUNDED_ITEM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eFOUNDED_ITEM? { get }
  var super_eCURVE_STYLE_FONT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCURVE_STYLE_FONT? { get }
  var super_eEXTERNALLY_DEFINED_CURVE_FONT: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eEXTERNALLY_DEFINED_CURVE_FONT? { get }
  var super_ePRE_DEFINED_ITEM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRE_DEFINED_ITEM? { get }
  var super_eEXTERNALLY_DEFINED_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eEXTERNALLY_DEFINED_ITEM? { get }
  var super_ePRE_DEFINED_CURVE_FONT: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRE_DEFINED_CURVE_FONT? { get }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var CURVE_FONT_SCALING: SDAI.REAL?  { get }
  var ITEM_ID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sSOURCE_ITEM?  { get }
  var PATTERN_LIST: (SDAI.LIST<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCURVE_STYLE_FONT_PATTERN>/*[1:
    nil]*/ )?  { get }
  var USERS: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sFOUNDED_ITEM_SELECT>/*[0:nil]*/ )?  { get }
  var CURVE_FONT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sCURVE_STYLE_FONT_SELECT?  { get }
  var SOURCE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eEXTERNAL_SOURCE?  { get }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { get }
}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sCURVE_FONT_OR_SCALED_CURVE_FONT_SELECT__subtype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sCURVE_FONT_OR_SCALED_CURVE_FONT_SELECT__type, SDAIDefinedType
where Supertype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sCURVE_FONT_OR_SCALED_CURVE_FONT_SELECT__type
{}

public extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sCURVE_FONT_OR_SCALED_CURVE_FONT_SELECT__subtype {
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
  var super_sCURVE_STYLE_FONT_SELECT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sCURVE_STYLE_FONT_SELECT? { rep.super_sCURVE_STYLE_FONT_SELECT }
  var super_eCURVE_STYLE_FONT_AND_SCALING: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCURVE_STYLE_FONT_AND_SCALING? { rep.super_eCURVE_STYLE_FONT_AND_SCALING }
  var super_eFOUNDED_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eFOUNDED_ITEM? { rep.super_eFOUNDED_ITEM }
  var super_eCURVE_STYLE_FONT: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCURVE_STYLE_FONT? { rep.super_eCURVE_STYLE_FONT }
  var super_eEXTERNALLY_DEFINED_CURVE_FONT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eEXTERNALLY_DEFINED_CURVE_FONT? { rep.super_eEXTERNALLY_DEFINED_CURVE_FONT }
  var super_ePRE_DEFINED_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRE_DEFINED_ITEM? { rep.super_ePRE_DEFINED_ITEM }
  var super_eEXTERNALLY_DEFINED_ITEM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eEXTERNALLY_DEFINED_ITEM? { rep.super_eEXTERNALLY_DEFINED_ITEM }
  var super_ePRE_DEFINED_CURVE_FONT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRE_DEFINED_CURVE_FONT? { rep.super_ePRE_DEFINED_CURVE_FONT }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var CURVE_FONT_SCALING: SDAI.REAL?  { rep.CURVE_FONT_SCALING }
  var ITEM_ID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sSOURCE_ITEM?  { rep.ITEM_ID }
  var PATTERN_LIST: (SDAI.LIST<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCURVE_STYLE_FONT_PATTERN>/*[1:
    nil]*/ )?  { rep.PATTERN_LIST }
  var USERS: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sFOUNDED_ITEM_SELECT>/*[0:nil]*/ )?  { rep.USERS }
  var CURVE_FONT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sCURVE_STYLE_FONT_SELECT?  { rep.CURVE_FONT }
  var SOURCE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eEXTERNAL_SOURCE?  { rep.SOURCE }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { rep.NAME }
}

