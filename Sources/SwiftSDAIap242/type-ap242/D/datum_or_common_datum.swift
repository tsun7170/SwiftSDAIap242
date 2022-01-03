/* file: datum_or_common_datum.swift 	 generated: Mon Jan  3 16:32:52 2022 */

/* This file was generated by the EXPRESS to Swift translator "exp2swift", 
  derived from STEPcode (formerly NIST's SCL).
 exp2swift version: v.1.0.1, derived from stepcode v0.8 as of 2019/11/23 
 WARNING: You probably don't want to edit it since your modifications 
  will be lost if exp2swift is used to regenerate it.
 */

 
import SwiftSDAIcore

extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF {
//MARK: -TYPE DEFINITION in EXPRESS
/*
  TYPE datum_or_common_datum = SELECT
    ( common_datum_list (*TYPE*),
     datum (*ENTITY*) );
  END_TYPE; -- datum_or_common_datum (line:2105 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES FOR SELECT
/*
  common_datum_list (*TYPE*): common_datum_list

  datum (*ENTITY*):
  ATTR:  product_definitional: LOGICAL
  ATTR:  description: text
  ATTR:  of_shape: product_definition_shape
  ATTR:  identification: identifier
  ATTR:  established_by_relationships: SET [1 : ?] OF shape_aspect_relationship
  ATTR:  id: identifier
  ATTR:  name: label

*/

/** SELECT type
- EXPRESS:
```express
  TYPE datum_or_common_datum = SELECT
    ( common_datum_list (*TYPE*),
     datum (*ENTITY*) );
  END_TYPE; -- datum_or_common_datum (line:2105 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public enum sDATUM_OR_COMMON_DATUM : SDAIValue, AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sDATUM_OR_COMMON_DATUM__type {

    /// SELECT case ``tCOMMON_DATUM_LIST`` (TYPE) in ``sDATUM_OR_COMMON_DATUM``
    case _COMMON_DATUM_LIST(tCOMMON_DATUM_LIST)	// (TYPE)

    /// SELECT case ``eDATUM`` (ENTITY) in ``sDATUM_OR_COMMON_DATUM``
    case _DATUM(eDATUM)	// (ENTITY)

    //MARK: - CONSTRUCTORS
    public init(fundamental: FundamentalType) { self = fundamental }

    public init?<T: SDAIUnderlyingType>(possiblyFrom underlyingType: T?){
      guard let underlyingType = underlyingType else { return nil }

      if let base = underlyingType as? tCOMMON_DATUM_LIST {
        self = ._COMMON_DATUM_LIST(base)
      }
      else if let fundamental = underlyingType.asFundamentalType as? tCOMMON_DATUM_LIST.FundamentalType {
        self = ._COMMON_DATUM_LIST( tCOMMON_DATUM_LIST(fundamental: fundamental) )
      }
      else { return nil }
    }

    public init?(possiblyFrom complex: SDAI.ComplexEntity?) {
      guard let complex = complex else { return nil }

      if let base = complex.entityReference(eDATUM.self) {self = ._DATUM(base) }
      else { return nil }
    }

    public init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let select = generic else { return nil }

      if let fundamental = select as? Self {
        self.init(fundamental: fundamental)
      }
      else if let base = tCOMMON_DATUM_LIST.convert(fromGeneric: select) {
        self = ._COMMON_DATUM_LIST(base)
      }
      else if let base = eDATUM.convert(fromGeneric: select) {
        self = ._DATUM(base)
      }
      else { return nil }
    }

    // InitializableByP21Parameter
    public static var bareTypeName: String = "DATUM_OR_COMMON_DATUM"

    public init?(p21typedParam: P21Decode.ExchangeStructure.TypedParameter, from exchangeStructure: P21Decode.ExchangeStructure) {
      guard let keyword = p21typedParam.keyword.asStandardKeyword else { exchangeStructure.error = "unexpected p21parameter(\(p21typedParam)) while resolving \(Self.bareTypeName) select value"; return nil }

      switch(keyword) {
      case tCOMMON_DATUM_LIST.bareTypeName:
        guard let base = tCOMMON_DATUM_LIST(p21typedParam: p21typedParam, from: exchangeStructure) else { exchangeStructure.add(errorContext: "while resolving \(Self.bareTypeName) select value"); return nil }
        self = ._COMMON_DATUM_LIST(base)

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
    public var super_tCOMMON_DATUM_LIST: tCOMMON_DATUM_LIST? {
      switch self {
      case ._COMMON_DATUM_LIST(let selectValue): return selectValue
      default: return nil
      }
    }

    //MARK: - ENTITY UNDERLYING TYPE REFERENCES
    public var super_eDATUM: eDATUM? {
      switch self {
      case ._DATUM(let entity): return entity
      default: return nil
      }
    }

    public var super_eSHAPE_ASPECT: eSHAPE_ASPECT? {
      switch self {
      case ._DATUM(let entity): return entity.super_eSHAPE_ASPECT
      default: return nil
      }
    }


    //MARK: - ENTITY ATTRIBUTE REFERENCES
    /// attribute of SELECT type ``sDATUM_OR_COMMON_DATUM``
    /// - origin: ENTITY( ``eDATUM`` )
    public var PRODUCT_DEFINITIONAL: SDAI.LOGICAL {
      switch self {
      case ._DATUM(let entity): return entity.PRODUCT_DEFINITIONAL
      default: return nil
      }
    }

    /// attribute of SELECT type ``sDATUM_OR_COMMON_DATUM``
    /// - origin: ENTITY( ``eDATUM`` )
    public var DESCRIPTION: tTEXT?  {
      switch self {
      case ._DATUM(let entity): return entity.DESCRIPTION
      default: return nil
      }
    }

    /// attribute of SELECT type ``sDATUM_OR_COMMON_DATUM``
    /// - origin: ENTITY( ``eDATUM`` )
    public var OF_SHAPE: ePRODUCT_DEFINITION_SHAPE?  {
      switch self {
      case ._DATUM(let entity): return entity.OF_SHAPE
      default: return nil
      }
    }

    /// attribute of SELECT type ``sDATUM_OR_COMMON_DATUM``
    /// - origin: ENTITY( ``eDATUM`` )
    public var IDENTIFICATION: tIDENTIFIER?  {
      switch self {
      case ._DATUM(let entity): return entity.IDENTIFICATION
      default: return nil
      }
    }

    /// attribute of SELECT type ``sDATUM_OR_COMMON_DATUM``
    /// - origin: ENTITY( ``eDATUM`` )
    public var ESTABLISHED_BY_RELATIONSHIPS: (SDAI.SET<eSHAPE_ASPECT_RELATIONSHIP>/*[1:nil]*/ )?  {
      switch self {
      case ._DATUM(let entity): return entity.ESTABLISHED_BY_RELATIONSHIPS
      default: return nil
      }
    }

    /// attribute of SELECT type ``sDATUM_OR_COMMON_DATUM``
    /// - origin: ENTITY( ``eDATUM`` )
    public var ID: tIDENTIFIER?  {
      switch self {
      case ._DATUM(let entity): return entity.ID
      default: return nil
      }
    }

    /// attribute of SELECT type ``sDATUM_OR_COMMON_DATUM``
    /// - origin: ENTITY( ``eDATUM`` )
    public var NAME: tLABEL?  {
      switch self {
      case ._DATUM(let entity): return entity.NAME
      default: return nil
      }
    }


    //MARK: - SDAIValue
    public func isValueEqual<T: SDAIValue>(to rhs: T) -> Bool {
      switch self {
      case ._COMMON_DATUM_LIST(let selection): return selection.value.isValueEqual(to: rhs)
      case ._DATUM(let selection): return selection.value.isValueEqual(to: rhs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?) -> Bool? {
      switch self {
      case ._COMMON_DATUM_LIST(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._DATUM(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      }
    }

    public func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      switch self {
      case ._COMMON_DATUM_LIST(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._DATUM(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      }
    }

    public func isValueEqual<T: SDAIValue>(to rhs: T, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      switch self {
      case ._COMMON_DATUM_LIST(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._DATUM(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      switch self {
      case ._COMMON_DATUM_LIST(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._DATUM(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      }
    }


    //MARK: SDAIGenericTypeBase
    public func copy() -> Self {
      switch self {
      case ._COMMON_DATUM_LIST(let selection): return ._COMMON_DATUM_LIST(selection.copy())
      case ._DATUM(let selection): return ._DATUM(selection.copy())
      }
    }

    //MARK: SDAIGenericType
    public var typeMembers: Set<SDAI.STRING> {
      var members: Set<SDAI.STRING> = [SDAI.STRING(Self.typeName)]
      switch self {
      case ._COMMON_DATUM_LIST(let selection): members.formUnion(selection.typeMembers)
      case ._DATUM(let selection): members.formUnion(selection.typeMembers)
      }
      return members
    }

    public var entityReference: SDAI.EntityReference? {
      switch self {
      case ._COMMON_DATUM_LIST(let selection): return selection.entityReference
      case ._DATUM(let selection): return selection.entityReference
      }
    }
    public var stringValue: SDAI.STRING? {
      switch self {
      case ._COMMON_DATUM_LIST(let selection): return selection.stringValue
      case ._DATUM(let selection): return selection.stringValue
      }
    }
    public var binaryValue: SDAI.BINARY? {
      switch self {
      case ._COMMON_DATUM_LIST(let selection): return selection.binaryValue
      case ._DATUM(let selection): return selection.binaryValue
      }
    }
    public var logicalValue: SDAI.LOGICAL? {
      switch self {
      case ._COMMON_DATUM_LIST(let selection): return selection.logicalValue
      case ._DATUM(let selection): return selection.logicalValue
      }
    }
    public var booleanValue: SDAI.BOOLEAN? {
      switch self {
      case ._COMMON_DATUM_LIST(let selection): return selection.booleanValue
      case ._DATUM(let selection): return selection.booleanValue
      }
    }
    public var numberValue: SDAI.NUMBER? {
      switch self {
      case ._COMMON_DATUM_LIST(let selection): return selection.numberValue
      case ._DATUM(let selection): return selection.numberValue
      }
    }
    public var realValue: SDAI.REAL? {
      switch self {
      case ._COMMON_DATUM_LIST(let selection): return selection.realValue
      case ._DATUM(let selection): return selection.realValue
      }
    }
    public var integerValue: SDAI.INTEGER? {
      switch self {
      case ._COMMON_DATUM_LIST(let selection): return selection.integerValue
      case ._DATUM(let selection): return selection.integerValue
      }
    }
    public var genericEnumValue: SDAI.GenericEnumValue? {
      switch self {
      case ._COMMON_DATUM_LIST(let selection): return selection.genericEnumValue
      case ._DATUM(let selection): return selection.genericEnumValue
      }
    }
    public func arrayOptionalValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY_OPTIONAL<ELEM>? {
      switch self {
      case ._COMMON_DATUM_LIST(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._DATUM(let selection): return selection.arrayOptionalValue(elementType:elementType)
      }
    }
    public func arrayValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY<ELEM>? {
      switch self {
      case ._COMMON_DATUM_LIST(let selection): return selection.arrayValue(elementType:elementType)
      case ._DATUM(let selection): return selection.arrayValue(elementType:elementType)
      }
    }
    public func listValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.LIST<ELEM>? {
      switch self {
      case ._COMMON_DATUM_LIST(let selection): return selection.listValue(elementType:elementType)
      case ._DATUM(let selection): return selection.listValue(elementType:elementType)
      }
    }
    public func bagValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.BAG<ELEM>? {
      switch self {
      case ._COMMON_DATUM_LIST(let selection): return selection.bagValue(elementType:elementType)
      case ._DATUM(let selection): return selection.bagValue(elementType:elementType)
      }
    }
    public func setValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.SET<ELEM>? {
      switch self {
      case ._COMMON_DATUM_LIST(let selection): return selection.setValue(elementType:elementType)
      case ._DATUM(let selection): return selection.setValue(elementType:elementType)
      }
    }
    public func enumValue<ENUM:SDAIEnumerationType>(enumType:ENUM.Type) -> ENUM? {
      switch self {
      case ._COMMON_DATUM_LIST(let selection): return selection.enumValue(enumType:enumType)
      case ._DATUM(let selection): return selection.enumValue(enumType:enumType)
      }
    }

    //MARK: SDAIUnderlyingType
    public typealias FundamentalType = Self
    public static var typeName: String = 
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DATUM_OR_COMMON_DATUM"
    public var asFundamentalType: FundamentalType { return self }

    //MARK: SDAIObservableAggregateElement
    public var entityReferences: AnySequence<SDAI.EntityReference> {
      switch self {
      case ._COMMON_DATUM_LIST(let observable): return observable.entityReferences
      case ._DATUM(let entity): return entity.entityReferences
      }
    }

    public mutating func configure(with observer: SDAI.EntityReferenceObserver) {
      switch self {
      case ._COMMON_DATUM_LIST(var observable): 
        observable.configure(with: observer)
        self = ._COMMON_DATUM_LIST(observable)
      case ._DATUM(let entity): 
        entity.configure(with: observer)
        self = ._DATUM(entity)
      }
    }

    public mutating func teardownObserver() {
      switch self {
      case ._COMMON_DATUM_LIST(var observable): 
        observable.teardownObserver()
        self = ._COMMON_DATUM_LIST(observable)
      case ._DATUM(let entity): 
        entity.teardownObserver()
        self = ._DATUM(entity)
      }
    }

    //MARK: SDAIAggregationBehavior
    public var aggregationHiBound: Int? {
      switch self {
      case ._COMMON_DATUM_LIST(let aggregate): return aggregate.hiBound
      default: return nil
      }
    }
    public var aggregationHiIndex: Int? {
      switch self {
      case ._COMMON_DATUM_LIST(let aggregate): return aggregate.hiIndex
      default: return nil
      }
    }
    public var aggregationLoBound: Int? {
      switch self {
      case ._COMMON_DATUM_LIST(let aggregate): return aggregate.loBound
      default: return nil
      }
    }
    public var aggregationLoIndex: Int? {
      switch self {
      case ._COMMON_DATUM_LIST(let aggregate): return aggregate.loIndex
      default: return nil
      }
    }
    public var aggregationSize: Int? {
      switch self {
      case ._COMMON_DATUM_LIST(let aggregate): return aggregate.size
      default: return nil
      }
    }

    //MARK: WHERE RULE VALIDATION (SELECT TYPE)
    public static func validateWhereRules(instance:Self?, prefix:SDAI.WhereLabel) -> [SDAI.WhereLabel:SDAI.LOGICAL] {
      var result: [SDAI.WhereLabel:SDAI.LOGICAL] = [:]
      switch instance {
      case ._COMMON_DATUM_LIST(let selectValue): 
        result = tCOMMON_DATUM_LIST.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\COMMON_DATUM_LIST")
      case ._DATUM(let selectValue): result = eDATUM.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\DATUM")
      case nil: break
      }

      return result
    }

  }

}


//MARK: - SELECT TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sDATUM_OR_COMMON_DATUM__type: SDAISelectType {

  //MARK: GROUP REFERENCES
  var super_tCOMMON_DATUM_LIST: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tCOMMON_DATUM_LIST? { get }
  var super_eDATUM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDATUM? { get }
  var super_eSHAPE_ASPECT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSHAPE_ASPECT? { get }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var PRODUCT_DEFINITIONAL: SDAI.LOGICAL { get }
  var DESCRIPTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tTEXT?  { get }
  var OF_SHAPE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRODUCT_DEFINITION_SHAPE?  { get }
  var IDENTIFICATION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER?  { get }
  var ESTABLISHED_BY_RELATIONSHIPS: (SDAI.SET<
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSHAPE_ASPECT_RELATIONSHIP>/*[1:nil]*/ )?  { get }
  var ID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER?  { get }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { get }
}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sDATUM_OR_COMMON_DATUM__subtype: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sDATUM_OR_COMMON_DATUM__type, SDAIDefinedType
where Supertype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sDATUM_OR_COMMON_DATUM__type
{}

public extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sDATUM_OR_COMMON_DATUM__subtype {
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
  var super_tCOMMON_DATUM_LIST: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tCOMMON_DATUM_LIST? { rep.super_tCOMMON_DATUM_LIST }
  var super_eDATUM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDATUM? { rep.super_eDATUM }
  var super_eSHAPE_ASPECT: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSHAPE_ASPECT? { rep.super_eSHAPE_ASPECT }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var PRODUCT_DEFINITIONAL: SDAI.LOGICAL { rep.PRODUCT_DEFINITIONAL }
  var DESCRIPTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tTEXT?  { rep.DESCRIPTION }
  var OF_SHAPE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRODUCT_DEFINITION_SHAPE?  { rep.OF_SHAPE }
  var IDENTIFICATION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER?  { rep.IDENTIFICATION }
  var ESTABLISHED_BY_RELATIONSHIPS: (SDAI.SET<
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSHAPE_ASPECT_RELATIONSHIP>/*[1:nil]*/ )?  { rep.ESTABLISHED_BY_RELATIONSHIPS }
  var ID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER?  { rep.ID }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { rep.NAME }
}

