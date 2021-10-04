/* file: direction_count_select.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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
  TYPE direction_count_select = SELECT
    ( u_direction_count (*TYPE*),
     v_direction_count (*TYPE*) );
  END_TYPE; -- direction_count_select (line:2350 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES FOR SELECT
/*
  u_direction_count (*TYPE*): u_direction_count

  v_direction_count (*TYPE*): v_direction_count

*/

/** SELECT type
- EXPRESS:
```express
  TYPE direction_count_select = SELECT
    ( u_direction_count (*TYPE*),
     v_direction_count (*TYPE*) );
  END_TYPE; -- direction_count_select (line:2350 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public enum sDIRECTION_COUNT_SELECT : SDAIValue, AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sDIRECTION_COUNT_SELECT__type {

    /// SELECT case ``tU_DIRECTION_COUNT`` (TYPE) in ``sDIRECTION_COUNT_SELECT``
    case _U_DIRECTION_COUNT(tU_DIRECTION_COUNT)	// (TYPE)

    /// SELECT case ``tV_DIRECTION_COUNT`` (TYPE) in ``sDIRECTION_COUNT_SELECT``
    case _V_DIRECTION_COUNT(tV_DIRECTION_COUNT)	// (TYPE)

    //MARK: - CONSTRUCTORS
    public init(fundamental: FundamentalType) { self = fundamental }

    public init?<T: SDAIUnderlyingType>(possiblyFrom underlyingType: T?){
      guard let underlyingType = underlyingType else { return nil }

      if let base = underlyingType as? tU_DIRECTION_COUNT {
        self = ._U_DIRECTION_COUNT(base)
      }
      else if let base = underlyingType as? tV_DIRECTION_COUNT {
        self = ._V_DIRECTION_COUNT(base)
      }
      else if let fundamental = underlyingType.asFundamentalType as? tU_DIRECTION_COUNT.FundamentalType {
        self = ._U_DIRECTION_COUNT( tU_DIRECTION_COUNT(fundamental: fundamental) )
      }
      else if let fundamental = underlyingType.asFundamentalType as? tV_DIRECTION_COUNT.FundamentalType {
        self = ._V_DIRECTION_COUNT( tV_DIRECTION_COUNT(fundamental: fundamental) )
      }
      else { return nil }
    }

    public init?(possiblyFrom complex: SDAI.ComplexEntity?) {
      return nil
    }

    public init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let select = generic else { return nil }

      if let fundamental = select as? Self {
        self.init(fundamental: fundamental)
      }
      else if let base = tU_DIRECTION_COUNT.convert(fromGeneric: select) {
        self = ._U_DIRECTION_COUNT(base)
      }
      else if let base = tV_DIRECTION_COUNT.convert(fromGeneric: select) {
        self = ._V_DIRECTION_COUNT(base)
      }
      else { return nil }
    }

    // InitializableByP21Parameter
    public static var bareTypeName: String = "DIRECTION_COUNT_SELECT"

    public init?(p21typedParam: P21Decode.ExchangeStructure.TypedParameter, from exchangeStructure: P21Decode.ExchangeStructure) {
      guard let keyword = p21typedParam.keyword.asStandardKeyword else { exchangeStructure.error = "unexpected p21parameter(\(p21typedParam)) while resolving \(Self.bareTypeName) select value"; return nil }

      switch(keyword) {
      case tU_DIRECTION_COUNT.bareTypeName:
        guard let base = tU_DIRECTION_COUNT(p21typedParam: p21typedParam, from: exchangeStructure) else { exchangeStructure.add(errorContext: "while resolving \(Self.bareTypeName) select value"); return nil }
        self = ._U_DIRECTION_COUNT(base)

      case tV_DIRECTION_COUNT.bareTypeName:
        guard let base = tV_DIRECTION_COUNT(p21typedParam: p21typedParam, from: exchangeStructure) else { exchangeStructure.add(errorContext: "while resolving \(Self.bareTypeName) select value"); return nil }
        self = ._V_DIRECTION_COUNT(base)

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
    public var super_tU_DIRECTION_COUNT: tU_DIRECTION_COUNT? {
      switch self {
      case ._U_DIRECTION_COUNT(let selectValue): return selectValue
      default: return nil
      }
    }

    public var super_tV_DIRECTION_COUNT: tV_DIRECTION_COUNT? {
      switch self {
      case ._V_DIRECTION_COUNT(let selectValue): return selectValue
      default: return nil
      }
    }



    //MARK: - SDAIValue
    public func isValueEqual<T: SDAIValue>(to rhs: T) -> Bool {
      switch self {
      case ._U_DIRECTION_COUNT(let selection): return selection.value.isValueEqual(to: rhs)
      case ._V_DIRECTION_COUNT(let selection): return selection.value.isValueEqual(to: rhs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?) -> Bool? {
      switch self {
      case ._U_DIRECTION_COUNT(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._V_DIRECTION_COUNT(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      }
    }

    public func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      switch self {
      case ._U_DIRECTION_COUNT(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._V_DIRECTION_COUNT(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      }
    }

    public func isValueEqual<T: SDAIValue>(to rhs: T, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      switch self {
      case ._U_DIRECTION_COUNT(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._V_DIRECTION_COUNT(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      switch self {
      case ._U_DIRECTION_COUNT(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._V_DIRECTION_COUNT(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      }
    }


    //MARK: SDAIGenericTypeBase
    public func copy() -> Self {
      switch self {
      case ._U_DIRECTION_COUNT(let selection): return ._U_DIRECTION_COUNT(selection.copy())
      case ._V_DIRECTION_COUNT(let selection): return ._V_DIRECTION_COUNT(selection.copy())
      }
    }

    //MARK: SDAIGenericType
    public var typeMembers: Set<SDAI.STRING> {
      var members: Set<SDAI.STRING> = [SDAI.STRING(Self.typeName)]
      switch self {
      case ._U_DIRECTION_COUNT(let selection): members.formUnion(selection.typeMembers)
      case ._V_DIRECTION_COUNT(let selection): members.formUnion(selection.typeMembers)
      }
      return members
    }

    public var entityReference: SDAI.EntityReference? {
      switch self {
      case ._U_DIRECTION_COUNT(let selection): return selection.entityReference
      case ._V_DIRECTION_COUNT(let selection): return selection.entityReference
      }
    }
    public var stringValue: SDAI.STRING? {
      switch self {
      case ._U_DIRECTION_COUNT(let selection): return selection.stringValue
      case ._V_DIRECTION_COUNT(let selection): return selection.stringValue
      }
    }
    public var binaryValue: SDAI.BINARY? {
      switch self {
      case ._U_DIRECTION_COUNT(let selection): return selection.binaryValue
      case ._V_DIRECTION_COUNT(let selection): return selection.binaryValue
      }
    }
    public var logicalValue: SDAI.LOGICAL? {
      switch self {
      case ._U_DIRECTION_COUNT(let selection): return selection.logicalValue
      case ._V_DIRECTION_COUNT(let selection): return selection.logicalValue
      }
    }
    public var booleanValue: SDAI.BOOLEAN? {
      switch self {
      case ._U_DIRECTION_COUNT(let selection): return selection.booleanValue
      case ._V_DIRECTION_COUNT(let selection): return selection.booleanValue
      }
    }
    public var numberValue: SDAI.NUMBER? {
      switch self {
      case ._U_DIRECTION_COUNT(let selection): return selection.numberValue
      case ._V_DIRECTION_COUNT(let selection): return selection.numberValue
      }
    }
    public var realValue: SDAI.REAL? {
      switch self {
      case ._U_DIRECTION_COUNT(let selection): return selection.realValue
      case ._V_DIRECTION_COUNT(let selection): return selection.realValue
      }
    }
    public var integerValue: SDAI.INTEGER? {
      switch self {
      case ._U_DIRECTION_COUNT(let selection): return selection.integerValue
      case ._V_DIRECTION_COUNT(let selection): return selection.integerValue
      }
    }
    public var genericEnumValue: SDAI.GenericEnumValue? {
      switch self {
      case ._U_DIRECTION_COUNT(let selection): return selection.genericEnumValue
      case ._V_DIRECTION_COUNT(let selection): return selection.genericEnumValue
      }
    }
    public func arrayOptionalValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY_OPTIONAL<ELEM>? {
      switch self {
      case ._U_DIRECTION_COUNT(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._V_DIRECTION_COUNT(let selection): return selection.arrayOptionalValue(elementType:elementType)
      }
    }
    public func arrayValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY<ELEM>? {
      switch self {
      case ._U_DIRECTION_COUNT(let selection): return selection.arrayValue(elementType:elementType)
      case ._V_DIRECTION_COUNT(let selection): return selection.arrayValue(elementType:elementType)
      }
    }
    public func listValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.LIST<ELEM>? {
      switch self {
      case ._U_DIRECTION_COUNT(let selection): return selection.listValue(elementType:elementType)
      case ._V_DIRECTION_COUNT(let selection): return selection.listValue(elementType:elementType)
      }
    }
    public func bagValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.BAG<ELEM>? {
      switch self {
      case ._U_DIRECTION_COUNT(let selection): return selection.bagValue(elementType:elementType)
      case ._V_DIRECTION_COUNT(let selection): return selection.bagValue(elementType:elementType)
      }
    }
    public func setValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.SET<ELEM>? {
      switch self {
      case ._U_DIRECTION_COUNT(let selection): return selection.setValue(elementType:elementType)
      case ._V_DIRECTION_COUNT(let selection): return selection.setValue(elementType:elementType)
      }
    }
    public func enumValue<ENUM:SDAIEnumerationType>(enumType:ENUM.Type) -> ENUM? {
      switch self {
      case ._U_DIRECTION_COUNT(let selection): return selection.enumValue(enumType:enumType)
      case ._V_DIRECTION_COUNT(let selection): return selection.enumValue(enumType:enumType)
      }
    }

    //MARK: SDAIUnderlyingType
    public typealias FundamentalType = Self
    public static var typeName: String = 
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DIRECTION_COUNT_SELECT"
    public var asFundamentalType: FundamentalType { return self }

    //MARK: SDAIObservableAggregateElement
    public var entityReferences: AnySequence<SDAI.EntityReference> {
      switch self {
      case ._U_DIRECTION_COUNT: return AnySequence<SDAI.EntityReference>(EmptyCollection<SDAI.EntityReference>())
      case ._V_DIRECTION_COUNT: return AnySequence<SDAI.EntityReference>(EmptyCollection<SDAI.EntityReference>())
      }
    }

    public mutating func configure(with observer: SDAI.EntityReferenceObserver) {
      switch self {
      case ._U_DIRECTION_COUNT: break
      case ._V_DIRECTION_COUNT: break
      }
    }

    public mutating func teardownObserver() {
      switch self {
      case ._U_DIRECTION_COUNT: break
      case ._V_DIRECTION_COUNT: break
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
      case ._U_DIRECTION_COUNT(let selectValue): 
        result = tU_DIRECTION_COUNT.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\U_DIRECTION_COUNT")
      case ._V_DIRECTION_COUNT(let selectValue): 
        result = tV_DIRECTION_COUNT.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\V_DIRECTION_COUNT")
      case nil: break
      }

      return result
    }

  }

}


//MARK: - SELECT TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sDIRECTION_COUNT_SELECT__type: 
  SDAISelectType {

  //MARK: GROUP REFERENCES
  var super_tU_DIRECTION_COUNT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tU_DIRECTION_COUNT? { get }
  var super_tV_DIRECTION_COUNT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tV_DIRECTION_COUNT? { get }

}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sDIRECTION_COUNT_SELECT__subtype: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sDIRECTION_COUNT_SELECT__type, SDAIDefinedType
where Supertype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sDIRECTION_COUNT_SELECT__type
{}

public extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sDIRECTION_COUNT_SELECT__subtype {
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
  var super_tU_DIRECTION_COUNT: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tU_DIRECTION_COUNT? { rep.super_tU_DIRECTION_COUNT }
  var super_tV_DIRECTION_COUNT: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tV_DIRECTION_COUNT? { rep.super_tV_DIRECTION_COUNT }

}
