/* file: expression_extension_select.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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
  TYPE expression_extension_select = SELECT
    ( expression_extension_numeric (*ENTITY*),
     expression_extension_string (*ENTITY*) );
  END_TYPE; -- expression_extension_select (line:3028 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES FOR SELECT
/*
  expression_extension_numeric (*ENTITY*):
  ATTR:  is_int: BOOLEAN
  ATTR:  unit_component: unit
  ATTR:  sql_mappable: BOOLEAN
  ATTR:  value_component: measure_value

  expression_extension_string (*ENTITY*):
  ATTR:  unit_component: unit
  ATTR:  value_component: measure_value

*/

/** SELECT type
- EXPRESS:
```express
  TYPE expression_extension_select = SELECT
    ( expression_extension_numeric (*ENTITY*),
     expression_extension_string (*ENTITY*) );
  END_TYPE; -- expression_extension_select (line:3028 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public enum sEXPRESSION_EXTENSION_SELECT : SDAIValue, AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sEXPRESSION_EXTENSION_SELECT__type {

    /// SELECT case ``eEXPRESSION_EXTENSION_NUMERIC`` (ENTITY) in ``sEXPRESSION_EXTENSION_SELECT``
    case _EXPRESSION_EXTENSION_NUMERIC(eEXPRESSION_EXTENSION_NUMERIC)	// (ENTITY)

    /// SELECT case ``eEXPRESSION_EXTENSION_STRING`` (ENTITY) in ``sEXPRESSION_EXTENSION_SELECT``
    case _EXPRESSION_EXTENSION_STRING(eEXPRESSION_EXTENSION_STRING)	// (ENTITY)

    //MARK: - CONSTRUCTORS
    public init(fundamental: FundamentalType) { self = fundamental }

    public init?<T: SDAIUnderlyingType>(possiblyFrom underlyingType: T?){
      return nil
    }

    public init?(possiblyFrom complex: SDAI.ComplexEntity?) {
      guard let complex = complex else { return nil }

      if let base = complex.entityReference(eEXPRESSION_EXTENSION_NUMERIC.self) {self = ._EXPRESSION_EXTENSION_NUMERIC(base) }
      else if let base = complex.entityReference(eEXPRESSION_EXTENSION_STRING.self) {self = ._EXPRESSION_EXTENSION_STRING(base) }
      else { return nil }
    }

    public init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let select = generic else { return nil }

      if let fundamental = select as? Self {
        self.init(fundamental: fundamental)
      }
      else if let base = eEXPRESSION_EXTENSION_NUMERIC.convert(fromGeneric: select) {
        self = ._EXPRESSION_EXTENSION_NUMERIC(base)
      }
      else if let base = eEXPRESSION_EXTENSION_STRING.convert(fromGeneric: select) {
        self = ._EXPRESSION_EXTENSION_STRING(base)
      }
      else { return nil }
    }

    // InitializableByP21Parameter
    public static var bareTypeName: String = "EXPRESSION_EXTENSION_SELECT"

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
    public var super_eSTRING_EXPRESSION: eSTRING_EXPRESSION? {
      switch self {
      case ._EXPRESSION_EXTENSION_STRING(let entity): return entity.super_eSTRING_EXPRESSION
      default: return nil
      }
    }

    public var super_eMEASURE_WITH_UNIT: eMEASURE_WITH_UNIT? {
      switch self {
      case ._EXPRESSION_EXTENSION_NUMERIC(let entity): return entity.super_eMEASURE_WITH_UNIT
      case ._EXPRESSION_EXTENSION_STRING(let entity): return entity.super_eMEASURE_WITH_UNIT
      }
    }

    public var super_eEXPRESSION: eEXPRESSION? {
      switch self {
      case ._EXPRESSION_EXTENSION_NUMERIC(let entity): return entity.super_eEXPRESSION
      case ._EXPRESSION_EXTENSION_STRING(let entity): return entity.super_eEXPRESSION
      }
    }

    public var super_eEXPRESSION_EXTENSION_STRING: eEXPRESSION_EXTENSION_STRING? {
      switch self {
      case ._EXPRESSION_EXTENSION_STRING(let entity): return entity
      default: return nil
      }
    }

    public var super_eNUMERIC_EXPRESSION: eNUMERIC_EXPRESSION? {
      switch self {
      case ._EXPRESSION_EXTENSION_NUMERIC(let entity): return entity.super_eNUMERIC_EXPRESSION
      default: return nil
      }
    }

    public var super_eEXPRESSION_EXTENSION_NUMERIC: eEXPRESSION_EXTENSION_NUMERIC? {
      switch self {
      case ._EXPRESSION_EXTENSION_NUMERIC(let entity): return entity
      default: return nil
      }
    }

    public var super_eGENERIC_EXPRESSION: eGENERIC_EXPRESSION? {
      switch self {
      case ._EXPRESSION_EXTENSION_NUMERIC(let entity): return entity.super_eGENERIC_EXPRESSION
      case ._EXPRESSION_EXTENSION_STRING(let entity): return entity.super_eGENERIC_EXPRESSION
      }
    }


    //MARK: - ENTITY ATTRIBUTE REFERENCES
    /// attribute of SELECT type ``sEXPRESSION_EXTENSION_SELECT``
    /// - origin: ENTITY( ``eEXPRESSION_EXTENSION_NUMERIC`` )
    public var IS_INT: SDAI.BOOLEAN?  {
      switch self {
      case ._EXPRESSION_EXTENSION_NUMERIC(let entity): return entity.IS_INT
      default: return nil
      }
    }

    /// attribute of SELECT type ``sEXPRESSION_EXTENSION_SELECT``
    /// - origin: ENTITY( ``eEXPRESSION_EXTENSION_NUMERIC`` )
    /// - origin: ENTITY( ``eEXPRESSION_EXTENSION_STRING`` )
    public var UNIT_COMPONENT: sUNIT?  {
      switch self {
      case ._EXPRESSION_EXTENSION_NUMERIC(let entity): return entity.UNIT_COMPONENT
      case ._EXPRESSION_EXTENSION_STRING(let entity): return entity.UNIT_COMPONENT
      }
    }

    /// attribute of SELECT type ``sEXPRESSION_EXTENSION_SELECT``
    /// - origin: ENTITY( ``eEXPRESSION_EXTENSION_NUMERIC`` )
    public var SQL_MAPPABLE: SDAI.BOOLEAN?  {
      switch self {
      case ._EXPRESSION_EXTENSION_NUMERIC(let entity): return entity.SQL_MAPPABLE
      default: return nil
      }
    }

    /// attribute of SELECT type ``sEXPRESSION_EXTENSION_SELECT``
    /// - origin: ENTITY( ``eEXPRESSION_EXTENSION_NUMERIC`` )
    /// - origin: ENTITY( ``eEXPRESSION_EXTENSION_STRING`` )
    public var VALUE_COMPONENT: sMEASURE_VALUE?  {
      switch self {
      case ._EXPRESSION_EXTENSION_NUMERIC(let entity): return entity.VALUE_COMPONENT
      case ._EXPRESSION_EXTENSION_STRING(let entity): return entity.VALUE_COMPONENT
      }
    }


    //MARK: - SDAIValue
    public func isValueEqual<T: SDAIValue>(to rhs: T) -> Bool {
      switch self {
      case ._EXPRESSION_EXTENSION_NUMERIC(let selection): return selection.value.isValueEqual(to: rhs)
      case ._EXPRESSION_EXTENSION_STRING(let selection): return selection.value.isValueEqual(to: rhs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?) -> Bool? {
      switch self {
      case ._EXPRESSION_EXTENSION_NUMERIC(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._EXPRESSION_EXTENSION_STRING(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      }
    }

    public func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      switch self {
      case ._EXPRESSION_EXTENSION_NUMERIC(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._EXPRESSION_EXTENSION_STRING(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      }
    }

    public func isValueEqual<T: SDAIValue>(to rhs: T, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      switch self {
      case ._EXPRESSION_EXTENSION_NUMERIC(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._EXPRESSION_EXTENSION_STRING(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      switch self {
      case ._EXPRESSION_EXTENSION_NUMERIC(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._EXPRESSION_EXTENSION_STRING(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      }
    }


    //MARK: SDAIGenericTypeBase
    public func copy() -> Self {
      switch self {
      case ._EXPRESSION_EXTENSION_NUMERIC(let selection): return ._EXPRESSION_EXTENSION_NUMERIC(selection.copy())
      case ._EXPRESSION_EXTENSION_STRING(let selection): return ._EXPRESSION_EXTENSION_STRING(selection.copy())
      }
    }

    //MARK: SDAIGenericType
    public var typeMembers: Set<SDAI.STRING> {
      var members: Set<SDAI.STRING> = [SDAI.STRING(Self.typeName)]
      switch self {
      case ._EXPRESSION_EXTENSION_NUMERIC(let selection): members.formUnion(selection.typeMembers)
      case ._EXPRESSION_EXTENSION_STRING(let selection): members.formUnion(selection.typeMembers)
      }
      return members
    }

    public var entityReference: SDAI.EntityReference? {
      switch self {
      case ._EXPRESSION_EXTENSION_NUMERIC(let selection): return selection.entityReference
      case ._EXPRESSION_EXTENSION_STRING(let selection): return selection.entityReference
      }
    }
    public var stringValue: SDAI.STRING? {
      switch self {
      case ._EXPRESSION_EXTENSION_NUMERIC(let selection): return selection.stringValue
      case ._EXPRESSION_EXTENSION_STRING(let selection): return selection.stringValue
      }
    }
    public var binaryValue: SDAI.BINARY? {
      switch self {
      case ._EXPRESSION_EXTENSION_NUMERIC(let selection): return selection.binaryValue
      case ._EXPRESSION_EXTENSION_STRING(let selection): return selection.binaryValue
      }
    }
    public var logicalValue: SDAI.LOGICAL? {
      switch self {
      case ._EXPRESSION_EXTENSION_NUMERIC(let selection): return selection.logicalValue
      case ._EXPRESSION_EXTENSION_STRING(let selection): return selection.logicalValue
      }
    }
    public var booleanValue: SDAI.BOOLEAN? {
      switch self {
      case ._EXPRESSION_EXTENSION_NUMERIC(let selection): return selection.booleanValue
      case ._EXPRESSION_EXTENSION_STRING(let selection): return selection.booleanValue
      }
    }
    public var numberValue: SDAI.NUMBER? {
      switch self {
      case ._EXPRESSION_EXTENSION_NUMERIC(let selection): return selection.numberValue
      case ._EXPRESSION_EXTENSION_STRING(let selection): return selection.numberValue
      }
    }
    public var realValue: SDAI.REAL? {
      switch self {
      case ._EXPRESSION_EXTENSION_NUMERIC(let selection): return selection.realValue
      case ._EXPRESSION_EXTENSION_STRING(let selection): return selection.realValue
      }
    }
    public var integerValue: SDAI.INTEGER? {
      switch self {
      case ._EXPRESSION_EXTENSION_NUMERIC(let selection): return selection.integerValue
      case ._EXPRESSION_EXTENSION_STRING(let selection): return selection.integerValue
      }
    }
    public var genericEnumValue: SDAI.GenericEnumValue? {
      switch self {
      case ._EXPRESSION_EXTENSION_NUMERIC(let selection): return selection.genericEnumValue
      case ._EXPRESSION_EXTENSION_STRING(let selection): return selection.genericEnumValue
      }
    }
    public func arrayOptionalValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY_OPTIONAL<ELEM>? {
      switch self {
      case ._EXPRESSION_EXTENSION_NUMERIC(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._EXPRESSION_EXTENSION_STRING(let selection): return selection.arrayOptionalValue(elementType:elementType)
      }
    }
    public func arrayValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY<ELEM>? {
      switch self {
      case ._EXPRESSION_EXTENSION_NUMERIC(let selection): return selection.arrayValue(elementType:elementType)
      case ._EXPRESSION_EXTENSION_STRING(let selection): return selection.arrayValue(elementType:elementType)
      }
    }
    public func listValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.LIST<ELEM>? {
      switch self {
      case ._EXPRESSION_EXTENSION_NUMERIC(let selection): return selection.listValue(elementType:elementType)
      case ._EXPRESSION_EXTENSION_STRING(let selection): return selection.listValue(elementType:elementType)
      }
    }
    public func bagValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.BAG<ELEM>? {
      switch self {
      case ._EXPRESSION_EXTENSION_NUMERIC(let selection): return selection.bagValue(elementType:elementType)
      case ._EXPRESSION_EXTENSION_STRING(let selection): return selection.bagValue(elementType:elementType)
      }
    }
    public func setValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.SET<ELEM>? {
      switch self {
      case ._EXPRESSION_EXTENSION_NUMERIC(let selection): return selection.setValue(elementType:elementType)
      case ._EXPRESSION_EXTENSION_STRING(let selection): return selection.setValue(elementType:elementType)
      }
    }
    public func enumValue<ENUM:SDAIEnumerationType>(enumType:ENUM.Type) -> ENUM? {
      switch self {
      case ._EXPRESSION_EXTENSION_NUMERIC(let selection): return selection.enumValue(enumType:enumType)
      case ._EXPRESSION_EXTENSION_STRING(let selection): return selection.enumValue(enumType:enumType)
      }
    }

    //MARK: SDAIUnderlyingType
    public typealias FundamentalType = Self
    public static var typeName: String = 
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.EXPRESSION_EXTENSION_SELECT"
    public var asFundamentalType: FundamentalType { return self }

    //MARK: SDAIObservableAggregateElement
    public var entityReferences: AnySequence<SDAI.EntityReference> {
      switch self {
      case ._EXPRESSION_EXTENSION_NUMERIC(let entity): return entity.entityReferences
      case ._EXPRESSION_EXTENSION_STRING(let entity): return entity.entityReferences
      }
    }

    public mutating func configure(with observer: SDAI.EntityReferenceObserver) {
      switch self {
      case ._EXPRESSION_EXTENSION_NUMERIC(let entity): 
        entity.configure(with: observer)
        self = ._EXPRESSION_EXTENSION_NUMERIC(entity)
      case ._EXPRESSION_EXTENSION_STRING(let entity): 
        entity.configure(with: observer)
        self = ._EXPRESSION_EXTENSION_STRING(entity)
      }
    }

    public mutating func teardownObserver() {
      switch self {
      case ._EXPRESSION_EXTENSION_NUMERIC(let entity): 
        entity.teardownObserver()
        self = ._EXPRESSION_EXTENSION_NUMERIC(entity)
      case ._EXPRESSION_EXTENSION_STRING(let entity): 
        entity.teardownObserver()
        self = ._EXPRESSION_EXTENSION_STRING(entity)
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
      case ._EXPRESSION_EXTENSION_NUMERIC(let selectValue): 
        result = eEXPRESSION_EXTENSION_NUMERIC.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\EXPRESSION_EXTENSION_NUMERIC")
      case ._EXPRESSION_EXTENSION_STRING(let selectValue): 
        result = eEXPRESSION_EXTENSION_STRING.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\EXPRESSION_EXTENSION_STRING")
      case nil: break
      }

      return result
    }

  }

}


//MARK: - SELECT TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sEXPRESSION_EXTENSION_SELECT__type: 
  SDAISelectType {

  //MARK: GROUP REFERENCES
  var super_eSTRING_EXPRESSION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSTRING_EXPRESSION? { get }
  var super_eMEASURE_WITH_UNIT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eMEASURE_WITH_UNIT? { get }
  var super_eEXPRESSION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eEXPRESSION? { get }
  var super_eEXPRESSION_EXTENSION_STRING: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eEXPRESSION_EXTENSION_STRING? { get }
  var super_eNUMERIC_EXPRESSION: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eNUMERIC_EXPRESSION? { get }
  var super_eEXPRESSION_EXTENSION_NUMERIC: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eEXPRESSION_EXTENSION_NUMERIC? { get }
  var super_eGENERIC_EXPRESSION: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eGENERIC_EXPRESSION? { get }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var IS_INT: SDAI.BOOLEAN?  { get }
  var UNIT_COMPONENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sUNIT?  { get }
  var SQL_MAPPABLE: SDAI.BOOLEAN?  { get }
  var VALUE_COMPONENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sMEASURE_VALUE?  { get }
}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sEXPRESSION_EXTENSION_SELECT__subtype: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sEXPRESSION_EXTENSION_SELECT__type, SDAIDefinedType
where Supertype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sEXPRESSION_EXTENSION_SELECT__type
{}

public extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sEXPRESSION_EXTENSION_SELECT__subtype {
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
  var super_eSTRING_EXPRESSION: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSTRING_EXPRESSION? { rep.super_eSTRING_EXPRESSION }
  var super_eMEASURE_WITH_UNIT: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eMEASURE_WITH_UNIT? { rep.super_eMEASURE_WITH_UNIT }
  var super_eEXPRESSION: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eEXPRESSION? { rep.super_eEXPRESSION }
  var super_eEXPRESSION_EXTENSION_STRING: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eEXPRESSION_EXTENSION_STRING? { rep.super_eEXPRESSION_EXTENSION_STRING }
  var super_eNUMERIC_EXPRESSION: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eNUMERIC_EXPRESSION? { rep.super_eNUMERIC_EXPRESSION }
  var super_eEXPRESSION_EXTENSION_NUMERIC: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eEXPRESSION_EXTENSION_NUMERIC? { rep.super_eEXPRESSION_EXTENSION_NUMERIC }
  var super_eGENERIC_EXPRESSION: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eGENERIC_EXPRESSION? { rep.super_eGENERIC_EXPRESSION }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var IS_INT: SDAI.BOOLEAN?  { rep.IS_INT }
  var UNIT_COMPONENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sUNIT?  { rep.UNIT_COMPONENT }
  var SQL_MAPPABLE: SDAI.BOOLEAN?  { rep.SQL_MAPPABLE }
  var VALUE_COMPONENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sMEASURE_VALUE?  { rep.VALUE_COMPONENT }
}
