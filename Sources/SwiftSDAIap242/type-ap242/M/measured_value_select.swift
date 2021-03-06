/* file: measured_value_select.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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
  TYPE measured_value_select = SELECT
    ( boolean_value (*TYPE*),
     measure_value (*SELECT*),
     plane_angle_and_length_pair (*ENTITY*),
     plane_angle_and_ratio_pair (*ENTITY*) );
  END_TYPE; -- measured_value_select (line:4230 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES FOR SELECT
/*
  boolean_value (*TYPE*): boolean_value

  measure_value (*SELECT*):

  plane_angle_and_length_pair (*ENTITY*):
  ATTR:  users: SET [0 : ?] OF founded_item_select
  ATTR:  length_value: length_measure
  ATTR:  plane_angle_value: plane_angle_measure *** Multiple Select Case Sources ***

  plane_angle_and_ratio_pair (*ENTITY*):
  ATTR:  users: SET [0 : ?] OF founded_item_select
  ATTR:  plane_angle_value: plane_angle_measure *** Multiple Select Case Sources ***
  ATTR:  ratio_value: ratio_measure

*/

/** SELECT type
- EXPRESS:
```express
  TYPE measured_value_select = SELECT
    ( boolean_value (*TYPE*),
     measure_value (*SELECT*),
     plane_angle_and_length_pair (*ENTITY*),
     plane_angle_and_ratio_pair (*ENTITY*) );
  END_TYPE; -- measured_value_select (line:4230 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public enum sMEASURED_VALUE_SELECT : SDAIValue, AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sMEASURED_VALUE_SELECT__type {

    /// SELECT case ``tBOOLEAN_VALUE`` (TYPE) in ``sMEASURED_VALUE_SELECT``
    case _BOOLEAN_VALUE(tBOOLEAN_VALUE)	// (TYPE)

    /// SELECT case ``sMEASURE_VALUE`` (SELECT) in ``sMEASURED_VALUE_SELECT``
    case _MEASURE_VALUE(sMEASURE_VALUE)	// (SELECT)

    /// SELECT case ``ePLANE_ANGLE_AND_LENGTH_PAIR`` (ENTITY) in ``sMEASURED_VALUE_SELECT``
    case _PLANE_ANGLE_AND_LENGTH_PAIR(ePLANE_ANGLE_AND_LENGTH_PAIR)	// (ENTITY)

    /// SELECT case ``ePLANE_ANGLE_AND_RATIO_PAIR`` (ENTITY) in ``sMEASURED_VALUE_SELECT``
    case _PLANE_ANGLE_AND_RATIO_PAIR(ePLANE_ANGLE_AND_RATIO_PAIR)	// (ENTITY)

    //MARK: - CONSTRUCTORS
    public init(fundamental: FundamentalType) { self = fundamental }

    public init?<T: SDAIUnderlyingType>(possiblyFrom underlyingType: T?){
      guard let underlyingType = underlyingType else { return nil }

      if let base = underlyingType as? tBOOLEAN_VALUE {
        self = ._BOOLEAN_VALUE(base)
      }
      else if let base = underlyingType as? sMEASURE_VALUE {
        self = ._MEASURE_VALUE(base)
      }
      else if let fundamental = underlyingType.asFundamentalType as? tBOOLEAN_VALUE.FundamentalType {
        self = ._BOOLEAN_VALUE( tBOOLEAN_VALUE(fundamental: fundamental) )
      }
      else if let base = sMEASURE_VALUE(possiblyFrom: underlyingType) {
        self = ._MEASURE_VALUE(base)
      }
      else { return nil }
    }

    public init?(possiblyFrom complex: SDAI.ComplexEntity?) {
      guard let complex = complex else { return nil }

      if let base = sMEASURE_VALUE(possiblyFrom: complex) {
        self = ._MEASURE_VALUE(base)
      }
      else if let base = complex.entityReference(ePLANE_ANGLE_AND_LENGTH_PAIR.self) {self = ._PLANE_ANGLE_AND_LENGTH_PAIR(base) }
      else if let base = complex.entityReference(ePLANE_ANGLE_AND_RATIO_PAIR.self) {self = ._PLANE_ANGLE_AND_RATIO_PAIR(base) }
      else { return nil }
    }

    public init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let select = generic else { return nil }

      if let fundamental = select as? Self {
        self.init(fundamental: fundamental)
      }
      else if let base = tBOOLEAN_VALUE.convert(fromGeneric: select) {
        self = ._BOOLEAN_VALUE(base)
      }
      else if let base = sMEASURE_VALUE.convert(fromGeneric: select) {
        self = ._MEASURE_VALUE(base)
      }
      else if let base = ePLANE_ANGLE_AND_LENGTH_PAIR.convert(fromGeneric: select) {
        self = ._PLANE_ANGLE_AND_LENGTH_PAIR(base)
      }
      else if let base = ePLANE_ANGLE_AND_RATIO_PAIR.convert(fromGeneric: select) {
        self = ._PLANE_ANGLE_AND_RATIO_PAIR(base)
      }
      else { return nil }
    }

    // InitializableByP21Parameter
    public static var bareTypeName: String = "MEASURED_VALUE_SELECT"

    public init?(p21typedParam: P21Decode.ExchangeStructure.TypedParameter, from exchangeStructure: P21Decode.ExchangeStructure) {
      guard let keyword = p21typedParam.keyword.asStandardKeyword else { exchangeStructure.error = "unexpected p21parameter(\(p21typedParam)) while resolving \(Self.bareTypeName) select value"; return nil }

      switch(keyword) {
      case tBOOLEAN_VALUE.bareTypeName:
        guard let base = tBOOLEAN_VALUE(p21typedParam: p21typedParam, from: exchangeStructure) else { exchangeStructure.add(errorContext: "while resolving \(Self.bareTypeName) select value"); return nil }
        self = ._BOOLEAN_VALUE(base)

      case sMEASURE_VALUE.bareTypeName:
        guard let base = sMEASURE_VALUE(p21typedParam: p21typedParam, from: exchangeStructure) else { exchangeStructure.add(errorContext: "while resolving \(Self.bareTypeName) select value"); return nil }
        self = ._MEASURE_VALUE(base)

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
    public var super_tBOOLEAN_VALUE: tBOOLEAN_VALUE? {
      switch self {
      case ._BOOLEAN_VALUE(let selectValue): return selectValue
      default: return nil
      }
    }

    public var super_sMEASURE_VALUE: sMEASURE_VALUE? {
      switch self {
      case ._MEASURE_VALUE(let selectValue): return selectValue
      default: return nil
      }
    }

    //MARK: - ENTITY UNDERLYING TYPE REFERENCES
    public var super_ePLANE_ANGLE_AND_RATIO_PAIR: ePLANE_ANGLE_AND_RATIO_PAIR? {
      switch self {
      case ._PLANE_ANGLE_AND_RATIO_PAIR(let entity): return entity
      default: return nil
      }
    }

    public var super_eFOUNDED_ITEM: eFOUNDED_ITEM? {
      switch self {
      case ._PLANE_ANGLE_AND_LENGTH_PAIR(let entity): return entity.super_eFOUNDED_ITEM
      case ._PLANE_ANGLE_AND_RATIO_PAIR(let entity): return entity.super_eFOUNDED_ITEM
      default: return nil
      }
    }

    public var super_ePLANE_ANGLE_AND_LENGTH_PAIR: ePLANE_ANGLE_AND_LENGTH_PAIR? {
      switch self {
      case ._PLANE_ANGLE_AND_LENGTH_PAIR(let entity): return entity
      default: return nil
      }
    }


    //MARK: - ENTITY ATTRIBUTE REFERENCES
    /// attribute of SELECT type ``sMEASURED_VALUE_SELECT``
    /// - origin: ENTITY( ``ePLANE_ANGLE_AND_LENGTH_PAIR`` )
    /// - origin: ENTITY( ``ePLANE_ANGLE_AND_RATIO_PAIR`` )
    public var USERS: (SDAI.SET<sFOUNDED_ITEM_SELECT>/*[0:nil]*/ )?  {
      switch self {
      case ._PLANE_ANGLE_AND_LENGTH_PAIR(let entity): return entity.USERS
      case ._PLANE_ANGLE_AND_RATIO_PAIR(let entity): return entity.USERS
      default: return nil
      }
    }

    /// attribute of SELECT type ``sMEASURED_VALUE_SELECT``
    /// - origin: ENTITY( ``ePLANE_ANGLE_AND_LENGTH_PAIR`` )
    public var LENGTH_VALUE: tLENGTH_MEASURE?  {
      switch self {
      case ._PLANE_ANGLE_AND_LENGTH_PAIR(let entity): return entity.LENGTH_VALUE
      default: return nil
      }
    }

    /// attribute of SELECT type ``sMEASURED_VALUE_SELECT``
    /// - origin: ENTITY( ``ePLANE_ANGLE_AND_LENGTH_PAIR`` )
    /// - origin: ENTITY( ``ePLANE_ANGLE_AND_RATIO_PAIR`` )
    public var PLANE_ANGLE_VALUE: tPLANE_ANGLE_MEASURE?  {
      switch self {
      case ._PLANE_ANGLE_AND_LENGTH_PAIR(let entity): return entity.PLANE_ANGLE_VALUE
      case ._PLANE_ANGLE_AND_RATIO_PAIR(let entity): return entity.PLANE_ANGLE_VALUE
      default: return nil
      }
    }

    /// attribute of SELECT type ``sMEASURED_VALUE_SELECT``
    /// - origin: ENTITY( ``ePLANE_ANGLE_AND_RATIO_PAIR`` )
    public var RATIO_VALUE: tRATIO_MEASURE?  {
      switch self {
      case ._PLANE_ANGLE_AND_RATIO_PAIR(let entity): return entity.RATIO_VALUE
      default: return nil
      }
    }


    //MARK: - SDAIValue
    public func isValueEqual<T: SDAIValue>(to rhs: T) -> Bool {
      switch self {
      case ._BOOLEAN_VALUE(let selection): return selection.value.isValueEqual(to: rhs)
      case ._MEASURE_VALUE(let selection): return selection.value.isValueEqual(to: rhs)
      case ._PLANE_ANGLE_AND_LENGTH_PAIR(let selection): return selection.value.isValueEqual(to: rhs)
      case ._PLANE_ANGLE_AND_RATIO_PAIR(let selection): return selection.value.isValueEqual(to: rhs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?) -> Bool? {
      switch self {
      case ._BOOLEAN_VALUE(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._MEASURE_VALUE(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._PLANE_ANGLE_AND_LENGTH_PAIR(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._PLANE_ANGLE_AND_RATIO_PAIR(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      }
    }

    public func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      switch self {
      case ._BOOLEAN_VALUE(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._MEASURE_VALUE(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._PLANE_ANGLE_AND_LENGTH_PAIR(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._PLANE_ANGLE_AND_RATIO_PAIR(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      }
    }

    public func isValueEqual<T: SDAIValue>(to rhs: T, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      switch self {
      case ._BOOLEAN_VALUE(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._MEASURE_VALUE(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._PLANE_ANGLE_AND_LENGTH_PAIR(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._PLANE_ANGLE_AND_RATIO_PAIR(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      switch self {
      case ._BOOLEAN_VALUE(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._MEASURE_VALUE(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._PLANE_ANGLE_AND_LENGTH_PAIR(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._PLANE_ANGLE_AND_RATIO_PAIR(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      }
    }


    //MARK: SDAIGenericTypeBase
    public func copy() -> Self {
      switch self {
      case ._BOOLEAN_VALUE(let selection): return ._BOOLEAN_VALUE(selection.copy())
      case ._MEASURE_VALUE(let selection): return ._MEASURE_VALUE(selection.copy())
      case ._PLANE_ANGLE_AND_LENGTH_PAIR(let selection): return ._PLANE_ANGLE_AND_LENGTH_PAIR(selection.copy())
      case ._PLANE_ANGLE_AND_RATIO_PAIR(let selection): return ._PLANE_ANGLE_AND_RATIO_PAIR(selection.copy())
      }
    }

    //MARK: SDAIGenericType
    public var typeMembers: Set<SDAI.STRING> {
      var members: Set<SDAI.STRING> = [SDAI.STRING(Self.typeName)]
      switch self {
      case ._BOOLEAN_VALUE(let selection): members.formUnion(selection.typeMembers)
      case ._MEASURE_VALUE(let selection): members.formUnion(selection.typeMembers)
      case ._PLANE_ANGLE_AND_LENGTH_PAIR(let selection): members.formUnion(selection.typeMembers)
      case ._PLANE_ANGLE_AND_RATIO_PAIR(let selection): members.formUnion(selection.typeMembers)
      }
      return members
    }

    public var entityReference: SDAI.EntityReference? {
      switch self {
      case ._BOOLEAN_VALUE(let selection): return selection.entityReference
      case ._MEASURE_VALUE(let selection): return selection.entityReference
      case ._PLANE_ANGLE_AND_LENGTH_PAIR(let selection): return selection.entityReference
      case ._PLANE_ANGLE_AND_RATIO_PAIR(let selection): return selection.entityReference
      }
    }
    public var stringValue: SDAI.STRING? {
      switch self {
      case ._BOOLEAN_VALUE(let selection): return selection.stringValue
      case ._MEASURE_VALUE(let selection): return selection.stringValue
      case ._PLANE_ANGLE_AND_LENGTH_PAIR(let selection): return selection.stringValue
      case ._PLANE_ANGLE_AND_RATIO_PAIR(let selection): return selection.stringValue
      }
    }
    public var binaryValue: SDAI.BINARY? {
      switch self {
      case ._BOOLEAN_VALUE(let selection): return selection.binaryValue
      case ._MEASURE_VALUE(let selection): return selection.binaryValue
      case ._PLANE_ANGLE_AND_LENGTH_PAIR(let selection): return selection.binaryValue
      case ._PLANE_ANGLE_AND_RATIO_PAIR(let selection): return selection.binaryValue
      }
    }
    public var logicalValue: SDAI.LOGICAL? {
      switch self {
      case ._BOOLEAN_VALUE(let selection): return selection.logicalValue
      case ._MEASURE_VALUE(let selection): return selection.logicalValue
      case ._PLANE_ANGLE_AND_LENGTH_PAIR(let selection): return selection.logicalValue
      case ._PLANE_ANGLE_AND_RATIO_PAIR(let selection): return selection.logicalValue
      }
    }
    public var booleanValue: SDAI.BOOLEAN? {
      switch self {
      case ._BOOLEAN_VALUE(let selection): return selection.booleanValue
      case ._MEASURE_VALUE(let selection): return selection.booleanValue
      case ._PLANE_ANGLE_AND_LENGTH_PAIR(let selection): return selection.booleanValue
      case ._PLANE_ANGLE_AND_RATIO_PAIR(let selection): return selection.booleanValue
      }
    }
    public var numberValue: SDAI.NUMBER? {
      switch self {
      case ._BOOLEAN_VALUE(let selection): return selection.numberValue
      case ._MEASURE_VALUE(let selection): return selection.numberValue
      case ._PLANE_ANGLE_AND_LENGTH_PAIR(let selection): return selection.numberValue
      case ._PLANE_ANGLE_AND_RATIO_PAIR(let selection): return selection.numberValue
      }
    }
    public var realValue: SDAI.REAL? {
      switch self {
      case ._BOOLEAN_VALUE(let selection): return selection.realValue
      case ._MEASURE_VALUE(let selection): return selection.realValue
      case ._PLANE_ANGLE_AND_LENGTH_PAIR(let selection): return selection.realValue
      case ._PLANE_ANGLE_AND_RATIO_PAIR(let selection): return selection.realValue
      }
    }
    public var integerValue: SDAI.INTEGER? {
      switch self {
      case ._BOOLEAN_VALUE(let selection): return selection.integerValue
      case ._MEASURE_VALUE(let selection): return selection.integerValue
      case ._PLANE_ANGLE_AND_LENGTH_PAIR(let selection): return selection.integerValue
      case ._PLANE_ANGLE_AND_RATIO_PAIR(let selection): return selection.integerValue
      }
    }
    public var genericEnumValue: SDAI.GenericEnumValue? {
      switch self {
      case ._BOOLEAN_VALUE(let selection): return selection.genericEnumValue
      case ._MEASURE_VALUE(let selection): return selection.genericEnumValue
      case ._PLANE_ANGLE_AND_LENGTH_PAIR(let selection): return selection.genericEnumValue
      case ._PLANE_ANGLE_AND_RATIO_PAIR(let selection): return selection.genericEnumValue
      }
    }
    public func arrayOptionalValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY_OPTIONAL<ELEM>? {
      switch self {
      case ._BOOLEAN_VALUE(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._MEASURE_VALUE(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._PLANE_ANGLE_AND_LENGTH_PAIR(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._PLANE_ANGLE_AND_RATIO_PAIR(let selection): return selection.arrayOptionalValue(elementType:elementType)
      }
    }
    public func arrayValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY<ELEM>? {
      switch self {
      case ._BOOLEAN_VALUE(let selection): return selection.arrayValue(elementType:elementType)
      case ._MEASURE_VALUE(let selection): return selection.arrayValue(elementType:elementType)
      case ._PLANE_ANGLE_AND_LENGTH_PAIR(let selection): return selection.arrayValue(elementType:elementType)
      case ._PLANE_ANGLE_AND_RATIO_PAIR(let selection): return selection.arrayValue(elementType:elementType)
      }
    }
    public func listValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.LIST<ELEM>? {
      switch self {
      case ._BOOLEAN_VALUE(let selection): return selection.listValue(elementType:elementType)
      case ._MEASURE_VALUE(let selection): return selection.listValue(elementType:elementType)
      case ._PLANE_ANGLE_AND_LENGTH_PAIR(let selection): return selection.listValue(elementType:elementType)
      case ._PLANE_ANGLE_AND_RATIO_PAIR(let selection): return selection.listValue(elementType:elementType)
      }
    }
    public func bagValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.BAG<ELEM>? {
      switch self {
      case ._BOOLEAN_VALUE(let selection): return selection.bagValue(elementType:elementType)
      case ._MEASURE_VALUE(let selection): return selection.bagValue(elementType:elementType)
      case ._PLANE_ANGLE_AND_LENGTH_PAIR(let selection): return selection.bagValue(elementType:elementType)
      case ._PLANE_ANGLE_AND_RATIO_PAIR(let selection): return selection.bagValue(elementType:elementType)
      }
    }
    public func setValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.SET<ELEM>? {
      switch self {
      case ._BOOLEAN_VALUE(let selection): return selection.setValue(elementType:elementType)
      case ._MEASURE_VALUE(let selection): return selection.setValue(elementType:elementType)
      case ._PLANE_ANGLE_AND_LENGTH_PAIR(let selection): return selection.setValue(elementType:elementType)
      case ._PLANE_ANGLE_AND_RATIO_PAIR(let selection): return selection.setValue(elementType:elementType)
      }
    }
    public func enumValue<ENUM:SDAIEnumerationType>(enumType:ENUM.Type) -> ENUM? {
      switch self {
      case ._BOOLEAN_VALUE(let selection): return selection.enumValue(enumType:enumType)
      case ._MEASURE_VALUE(let selection): return selection.enumValue(enumType:enumType)
      case ._PLANE_ANGLE_AND_LENGTH_PAIR(let selection): return selection.enumValue(enumType:enumType)
      case ._PLANE_ANGLE_AND_RATIO_PAIR(let selection): return selection.enumValue(enumType:enumType)
      }
    }

    //MARK: SDAIUnderlyingType
    public typealias FundamentalType = Self
    public static var typeName: String = 
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.MEASURED_VALUE_SELECT"
    public var asFundamentalType: FundamentalType { return self }

    //MARK: SDAIObservableAggregateElement
    public var entityReferences: AnySequence<SDAI.EntityReference> {
      switch self {
      case ._BOOLEAN_VALUE: return AnySequence<SDAI.EntityReference>(EmptyCollection<SDAI.EntityReference>())
      case ._MEASURE_VALUE(let select): return select.entityReferences
      case ._PLANE_ANGLE_AND_LENGTH_PAIR(let entity): return entity.entityReferences
      case ._PLANE_ANGLE_AND_RATIO_PAIR(let entity): return entity.entityReferences
      }
    }

    public mutating func configure(with observer: SDAI.EntityReferenceObserver) {
      switch self {
      case ._BOOLEAN_VALUE: break
      case ._MEASURE_VALUE(var select): 
        select.configure(with: observer)
        self = ._MEASURE_VALUE(select)
      case ._PLANE_ANGLE_AND_LENGTH_PAIR(let entity): 
        entity.configure(with: observer)
        self = ._PLANE_ANGLE_AND_LENGTH_PAIR(entity)
      case ._PLANE_ANGLE_AND_RATIO_PAIR(let entity): 
        entity.configure(with: observer)
        self = ._PLANE_ANGLE_AND_RATIO_PAIR(entity)
      }
    }

    public mutating func teardownObserver() {
      switch self {
      case ._BOOLEAN_VALUE: break
      case ._MEASURE_VALUE(var select): 
        select.teardownObserver()
        self = ._MEASURE_VALUE(select)
      case ._PLANE_ANGLE_AND_LENGTH_PAIR(let entity): 
        entity.teardownObserver()
        self = ._PLANE_ANGLE_AND_LENGTH_PAIR(entity)
      case ._PLANE_ANGLE_AND_RATIO_PAIR(let entity): 
        entity.teardownObserver()
        self = ._PLANE_ANGLE_AND_RATIO_PAIR(entity)
      }
    }

    //MARK: SDAIAggregationBehavior
    public var aggregationHiBound: Int? {
      switch self {
      case ._MEASURE_VALUE(let selection): return selection.aggregationHiBound
      default: return nil
      }
    }
    public var aggregationHiIndex: Int? {
      switch self {
      case ._MEASURE_VALUE(let selection): return selection.aggregationHiIndex
      default: return nil
      }
    }
    public var aggregationLoBound: Int? {
      switch self {
      case ._MEASURE_VALUE(let selection): return selection.aggregationLoBound
      default: return nil
      }
    }
    public var aggregationLoIndex: Int? {
      switch self {
      case ._MEASURE_VALUE(let selection): return selection.aggregationLoIndex
      default: return nil
      }
    }
    public var aggregationSize: Int? {
      switch self {
      case ._MEASURE_VALUE(let selection): return selection.aggregationSize
      default: return nil
      }
    }

    //MARK: WHERE RULE VALIDATION (SELECT TYPE)
    public static func validateWhereRules(instance:Self?, prefix:SDAI.WhereLabel) -> [SDAI.WhereLabel:SDAI.LOGICAL] {
      var result: [SDAI.WhereLabel:SDAI.LOGICAL] = [:]
      switch instance {
      case ._BOOLEAN_VALUE(let selectValue): 
        result = tBOOLEAN_VALUE.validateWhereRules(instance:selectValue, prefix:prefix + "\\BOOLEAN_VALUE")
      case ._MEASURE_VALUE(let selectValue): 
        result = sMEASURE_VALUE.validateWhereRules(instance:selectValue, prefix:prefix + "\\MEASURE_VALUE")
      case ._PLANE_ANGLE_AND_LENGTH_PAIR(let selectValue): 
        result = ePLANE_ANGLE_AND_LENGTH_PAIR.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\PLANE_ANGLE_AND_LENGTH_PAIR")
      case ._PLANE_ANGLE_AND_RATIO_PAIR(let selectValue): 
        result = ePLANE_ANGLE_AND_RATIO_PAIR.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\PLANE_ANGLE_AND_RATIO_PAIR")
      case nil: break
      }

      return result
    }

  }

}


//MARK: - SELECT TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sMEASURED_VALUE_SELECT__type: SDAISelectType {

  //MARK: GROUP REFERENCES
  var super_tBOOLEAN_VALUE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tBOOLEAN_VALUE? { get }
  var super_sMEASURE_VALUE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sMEASURE_VALUE? { get }
  var super_ePLANE_ANGLE_AND_RATIO_PAIR: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePLANE_ANGLE_AND_RATIO_PAIR? { get }
  var super_eFOUNDED_ITEM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eFOUNDED_ITEM? { get }
  var super_ePLANE_ANGLE_AND_LENGTH_PAIR: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePLANE_ANGLE_AND_LENGTH_PAIR? { get }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var USERS: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sFOUNDED_ITEM_SELECT>/*[0:nil]*/ )?  { get }
  var LENGTH_VALUE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLENGTH_MEASURE?  { get }
  var PLANE_ANGLE_VALUE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tPLANE_ANGLE_MEASURE?  { get }
  var RATIO_VALUE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tRATIO_MEASURE?  { get }
}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sMEASURED_VALUE_SELECT__subtype: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sMEASURED_VALUE_SELECT__type, SDAIDefinedType
where Supertype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sMEASURED_VALUE_SELECT__type
{}

public extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sMEASURED_VALUE_SELECT__subtype {
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
  var super_tBOOLEAN_VALUE: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tBOOLEAN_VALUE? { rep.super_tBOOLEAN_VALUE }
  var super_sMEASURE_VALUE: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sMEASURE_VALUE? { rep.super_sMEASURE_VALUE }
  var super_ePLANE_ANGLE_AND_RATIO_PAIR: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePLANE_ANGLE_AND_RATIO_PAIR? { rep.super_ePLANE_ANGLE_AND_RATIO_PAIR }
  var super_eFOUNDED_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eFOUNDED_ITEM? { rep.super_eFOUNDED_ITEM }
  var super_ePLANE_ANGLE_AND_LENGTH_PAIR: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePLANE_ANGLE_AND_LENGTH_PAIR? { rep.super_ePLANE_ANGLE_AND_LENGTH_PAIR }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var USERS: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sFOUNDED_ITEM_SELECT>/*[0:nil]*/ )?  { rep.USERS }
  var LENGTH_VALUE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLENGTH_MEASURE?  { rep.LENGTH_VALUE }
  var PLANE_ANGLE_VALUE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tPLANE_ANGLE_MEASURE?  { rep.PLANE_ANGLE_VALUE }
  var RATIO_VALUE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tRATIO_MEASURE?  { rep.RATIO_VALUE }
}

