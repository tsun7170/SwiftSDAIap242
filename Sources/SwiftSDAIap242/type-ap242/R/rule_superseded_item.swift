/* file: rule_superseded_item.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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
  TYPE rule_superseded_item = SELECT
    ( product_definition_formation (*ENTITY*) );
  END_TYPE; -- rule_superseded_item (line:5168 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES FOR SELECT
/*
  product_definition_formation (*ENTITY*):
  ATTR:  description: text
  ATTR:  status: STRING
  ATTR:  of_collection: collection
  ATTR:  make_or_buy: source
  ATTR:  specification: SET [1 : ?] OF product_definition
  ATTR:  id: identifier
  ATTR:  of_product: product

*/

/** SELECT type
- EXPRESS:
```express
  TYPE rule_superseded_item = SELECT
    ( product_definition_formation (*ENTITY*) );
  END_TYPE; -- rule_superseded_item (line:5168 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public enum sRULE_SUPERSEDED_ITEM : SDAIValue, AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sRULE_SUPERSEDED_ITEM__type {

    /// SELECT case ``ePRODUCT_DEFINITION_FORMATION`` (ENTITY) in ``sRULE_SUPERSEDED_ITEM``
    case _PRODUCT_DEFINITION_FORMATION(ePRODUCT_DEFINITION_FORMATION)	// (ENTITY)

    //MARK: - CONSTRUCTORS
    public init(fundamental: FundamentalType) { self = fundamental }

    public init?<T: SDAIUnderlyingType>(possiblyFrom underlyingType: T?){
      return nil
    }

    public init?(possiblyFrom complex: SDAI.ComplexEntity?) {
      guard let complex = complex else { return nil }

      if let base = complex.entityReference(ePRODUCT_DEFINITION_FORMATION.self) {self = ._PRODUCT_DEFINITION_FORMATION(base) }
      else { return nil }
    }

    public init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let select = generic else { return nil }

      if let fundamental = select as? Self {
        self.init(fundamental: fundamental)
      }
      else if let base = ePRODUCT_DEFINITION_FORMATION.convert(fromGeneric: select) {
        self = ._PRODUCT_DEFINITION_FORMATION(base)
      }
      else { return nil }
    }

    // InitializableByP21Parameter
    public static var bareTypeName: String = "RULE_SUPERSEDED_ITEM"

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
    public var super_ePRODUCT_DEFINITION_FORMATION: ePRODUCT_DEFINITION_FORMATION? {
      switch self {
      case ._PRODUCT_DEFINITION_FORMATION(let entity): return entity
      }
    }


    //MARK: - ENTITY ATTRIBUTE REFERENCES
    /// attribute of SELECT type ``sRULE_SUPERSEDED_ITEM``
    /// - origin: ENTITY( ``ePRODUCT_DEFINITION_FORMATION`` )
    public var DESCRIPTION: tTEXT?  {
      switch self {
      case ._PRODUCT_DEFINITION_FORMATION(let entity): return entity.DESCRIPTION
      }
    }

    /// attribute of SELECT type ``sRULE_SUPERSEDED_ITEM``
    /// - origin: ENTITY( ``ePRODUCT_DEFINITION_FORMATION`` )
    public var STATUS: SDAI.STRING?  {
      switch self {
      case ._PRODUCT_DEFINITION_FORMATION(let entity): return entity.STATUS
      }
    }

    /// attribute of SELECT type ``sRULE_SUPERSEDED_ITEM``
    /// - origin: ENTITY( ``ePRODUCT_DEFINITION_FORMATION`` )
    public var OF_COLLECTION: eCOLLECTION?  {
      switch self {
      case ._PRODUCT_DEFINITION_FORMATION(let entity): return entity.OF_COLLECTION
      }
    }

    /// attribute of SELECT type ``sRULE_SUPERSEDED_ITEM``
    /// - origin: ENTITY( ``ePRODUCT_DEFINITION_FORMATION`` )
    public var MAKE_OR_BUY: nSOURCE?  {
      switch self {
      case ._PRODUCT_DEFINITION_FORMATION(let entity): return entity.MAKE_OR_BUY
      }
    }

    /// attribute of SELECT type ``sRULE_SUPERSEDED_ITEM``
    /// - origin: ENTITY( ``ePRODUCT_DEFINITION_FORMATION`` )
    public var SPECIFICATION: (SDAI.SET<ePRODUCT_DEFINITION>/*[1:nil]*/ )?  {
      switch self {
      case ._PRODUCT_DEFINITION_FORMATION(let entity): return entity.SPECIFICATION
      }
    }

    /// attribute of SELECT type ``sRULE_SUPERSEDED_ITEM``
    /// - origin: ENTITY( ``ePRODUCT_DEFINITION_FORMATION`` )
    public var ID: tIDENTIFIER?  {
      switch self {
      case ._PRODUCT_DEFINITION_FORMATION(let entity): return entity.ID
      }
    }

    /// attribute of SELECT type ``sRULE_SUPERSEDED_ITEM``
    /// - origin: ENTITY( ``ePRODUCT_DEFINITION_FORMATION`` )
    public var OF_PRODUCT: ePRODUCT?  {
      switch self {
      case ._PRODUCT_DEFINITION_FORMATION(let entity): return entity.OF_PRODUCT
      }
    }


    //MARK: - SDAIValue
    public func isValueEqual<T: SDAIValue>(to rhs: T) -> Bool {
      switch self {
      case ._PRODUCT_DEFINITION_FORMATION(let selection): return selection.value.isValueEqual(to: rhs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?) -> Bool? {
      switch self {
      case ._PRODUCT_DEFINITION_FORMATION(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      }
    }

    public func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      switch self {
      case ._PRODUCT_DEFINITION_FORMATION(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      }
    }

    public func isValueEqual<T: SDAIValue>(to rhs: T, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      switch self {
      case ._PRODUCT_DEFINITION_FORMATION(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      switch self {
      case ._PRODUCT_DEFINITION_FORMATION(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      }
    }


    //MARK: SDAIGenericTypeBase
    public func copy() -> Self {
      switch self {
      case ._PRODUCT_DEFINITION_FORMATION(let selection): return ._PRODUCT_DEFINITION_FORMATION(selection.copy())
      }
    }

    //MARK: SDAIGenericType
    public var typeMembers: Set<SDAI.STRING> {
      var members: Set<SDAI.STRING> = [SDAI.STRING(Self.typeName)]
      switch self {
      case ._PRODUCT_DEFINITION_FORMATION(let selection): members.formUnion(selection.typeMembers)
      }
      return members
    }

    public var entityReference: SDAI.EntityReference? {
      switch self {
      case ._PRODUCT_DEFINITION_FORMATION(let selection): return selection.entityReference
      }
    }
    public var stringValue: SDAI.STRING? {
      switch self {
      case ._PRODUCT_DEFINITION_FORMATION(let selection): return selection.stringValue
      }
    }
    public var binaryValue: SDAI.BINARY? {
      switch self {
      case ._PRODUCT_DEFINITION_FORMATION(let selection): return selection.binaryValue
      }
    }
    public var logicalValue: SDAI.LOGICAL? {
      switch self {
      case ._PRODUCT_DEFINITION_FORMATION(let selection): return selection.logicalValue
      }
    }
    public var booleanValue: SDAI.BOOLEAN? {
      switch self {
      case ._PRODUCT_DEFINITION_FORMATION(let selection): return selection.booleanValue
      }
    }
    public var numberValue: SDAI.NUMBER? {
      switch self {
      case ._PRODUCT_DEFINITION_FORMATION(let selection): return selection.numberValue
      }
    }
    public var realValue: SDAI.REAL? {
      switch self {
      case ._PRODUCT_DEFINITION_FORMATION(let selection): return selection.realValue
      }
    }
    public var integerValue: SDAI.INTEGER? {
      switch self {
      case ._PRODUCT_DEFINITION_FORMATION(let selection): return selection.integerValue
      }
    }
    public var genericEnumValue: SDAI.GenericEnumValue? {
      switch self {
      case ._PRODUCT_DEFINITION_FORMATION(let selection): return selection.genericEnumValue
      }
    }
    public func arrayOptionalValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY_OPTIONAL<ELEM>? {
      switch self {
      case ._PRODUCT_DEFINITION_FORMATION(let selection): return selection.arrayOptionalValue(elementType:elementType)
      }
    }
    public func arrayValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY<ELEM>? {
      switch self {
      case ._PRODUCT_DEFINITION_FORMATION(let selection): return selection.arrayValue(elementType:elementType)
      }
    }
    public func listValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.LIST<ELEM>? {
      switch self {
      case ._PRODUCT_DEFINITION_FORMATION(let selection): return selection.listValue(elementType:elementType)
      }
    }
    public func bagValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.BAG<ELEM>? {
      switch self {
      case ._PRODUCT_DEFINITION_FORMATION(let selection): return selection.bagValue(elementType:elementType)
      }
    }
    public func setValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.SET<ELEM>? {
      switch self {
      case ._PRODUCT_DEFINITION_FORMATION(let selection): return selection.setValue(elementType:elementType)
      }
    }
    public func enumValue<ENUM:SDAIEnumerationType>(enumType:ENUM.Type) -> ENUM? {
      switch self {
      case ._PRODUCT_DEFINITION_FORMATION(let selection): return selection.enumValue(enumType:enumType)
      }
    }

    //MARK: SDAIUnderlyingType
    public typealias FundamentalType = Self
    public static var typeName: String = 
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.RULE_SUPERSEDED_ITEM"
    public var asFundamentalType: FundamentalType { return self }

    //MARK: SDAIObservableAggregateElement
    public var entityReferences: AnySequence<SDAI.EntityReference> {
      switch self {
      case ._PRODUCT_DEFINITION_FORMATION(let entity): return entity.entityReferences
      }
    }

    public mutating func configure(with observer: SDAI.EntityReferenceObserver) {
      switch self {
      case ._PRODUCT_DEFINITION_FORMATION(let entity): 
        entity.configure(with: observer)
        self = ._PRODUCT_DEFINITION_FORMATION(entity)
      }
    }

    public mutating func teardownObserver() {
      switch self {
      case ._PRODUCT_DEFINITION_FORMATION(let entity): 
        entity.teardownObserver()
        self = ._PRODUCT_DEFINITION_FORMATION(entity)
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
      case ._PRODUCT_DEFINITION_FORMATION(let selectValue): 
        result = ePRODUCT_DEFINITION_FORMATION.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\PRODUCT_DEFINITION_FORMATION")
      case nil: break
      }

      return result
    }

  }

}


//MARK: - SELECT TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sRULE_SUPERSEDED_ITEM__type: SDAISelectType {

  //MARK: GROUP REFERENCES
  var super_ePRODUCT_DEFINITION_FORMATION: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRODUCT_DEFINITION_FORMATION? { get }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var DESCRIPTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tTEXT?  { get }
  var STATUS: SDAI.STRING?  { get }
  var OF_COLLECTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCOLLECTION?  { get }
  var MAKE_OR_BUY: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.nSOURCE?  { get }
  var SPECIFICATION: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRODUCT_DEFINITION>/*[1:nil]*/ )?  { get }
  var ID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER?  { get }
  var OF_PRODUCT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRODUCT?  { get }
}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sRULE_SUPERSEDED_ITEM__subtype: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sRULE_SUPERSEDED_ITEM__type, SDAIDefinedType
where Supertype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sRULE_SUPERSEDED_ITEM__type
{}

public extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sRULE_SUPERSEDED_ITEM__subtype {
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
  var super_ePRODUCT_DEFINITION_FORMATION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRODUCT_DEFINITION_FORMATION? { rep.super_ePRODUCT_DEFINITION_FORMATION }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var DESCRIPTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tTEXT?  { rep.DESCRIPTION }
  var STATUS: SDAI.STRING?  { rep.STATUS }
  var OF_COLLECTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCOLLECTION?  { rep.OF_COLLECTION }
  var MAKE_OR_BUY: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.nSOURCE?  { rep.MAKE_OR_BUY }
  var SPECIFICATION: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRODUCT_DEFINITION>/*[1:nil]*/ )?  { rep.SPECIFICATION }
  var ID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER?  { rep.ID }
  var OF_PRODUCT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRODUCT?  { rep.OF_PRODUCT }
}

