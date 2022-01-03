/* file: character_spacing_select.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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
  TYPE character_spacing_select = SELECT
    ( descriptive_measure (*TYPE*),
     length_measure (*TYPE*),
     measure_with_unit (*ENTITY*),
     ratio_measure (*TYPE*) );
  END_TYPE; -- character_spacing_select (line:1402 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES FOR SELECT
/*
  descriptive_measure (*TYPE*): descriptive_measure

  length_measure (*TYPE*): length_measure

  measure_with_unit (*ENTITY*):
  ATTR:  description: text
  ATTR:  unit_component: unit
  ATTR:  value_component: measure_value
  ATTR:  name: label

  ratio_measure (*TYPE*): ratio_measure

*/

/** SELECT type
- EXPRESS:
```express
  TYPE character_spacing_select = SELECT
    ( descriptive_measure (*TYPE*),
     length_measure (*TYPE*),
     measure_with_unit (*ENTITY*),
     ratio_measure (*TYPE*) );
  END_TYPE; -- character_spacing_select (line:1402 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public enum sCHARACTER_SPACING_SELECT : SDAIValue, AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sCHARACTER_SPACING_SELECT__type {

    /// SELECT case ``tDESCRIPTIVE_MEASURE`` (TYPE) in ``sCHARACTER_SPACING_SELECT``
    case _DESCRIPTIVE_MEASURE(tDESCRIPTIVE_MEASURE)	// (TYPE)

    /// SELECT case ``tLENGTH_MEASURE`` (TYPE) in ``sCHARACTER_SPACING_SELECT``
    case _LENGTH_MEASURE(tLENGTH_MEASURE)	// (TYPE)

    /// SELECT case ``eMEASURE_WITH_UNIT`` (ENTITY) in ``sCHARACTER_SPACING_SELECT``
    case _MEASURE_WITH_UNIT(eMEASURE_WITH_UNIT)	// (ENTITY)

    /// SELECT case ``tRATIO_MEASURE`` (TYPE) in ``sCHARACTER_SPACING_SELECT``
    case _RATIO_MEASURE(tRATIO_MEASURE)	// (TYPE)

    //MARK: - CONSTRUCTORS
    public init(fundamental: FundamentalType) { self = fundamental }

    public init?<T: SDAIUnderlyingType>(possiblyFrom underlyingType: T?){
      guard let underlyingType = underlyingType else { return nil }

      if let base = underlyingType as? tDESCRIPTIVE_MEASURE {
        self = ._DESCRIPTIVE_MEASURE(base)
      }
      else if let base = underlyingType as? tLENGTH_MEASURE {
        self = ._LENGTH_MEASURE(base)
      }
      else if let base = underlyingType as? tRATIO_MEASURE {
        self = ._RATIO_MEASURE(base)
      }
      else if let fundamental = underlyingType.asFundamentalType as? tDESCRIPTIVE_MEASURE.FundamentalType {
        self = ._DESCRIPTIVE_MEASURE( tDESCRIPTIVE_MEASURE(fundamental: fundamental) )
      }
      else if let fundamental = underlyingType.asFundamentalType as? tLENGTH_MEASURE.FundamentalType {
        self = ._LENGTH_MEASURE( tLENGTH_MEASURE(fundamental: fundamental) )
      }
      else if let fundamental = underlyingType.asFundamentalType as? tRATIO_MEASURE.FundamentalType {
        self = ._RATIO_MEASURE( tRATIO_MEASURE(fundamental: fundamental) )
      }
      else { return nil }
    }

    public init?(possiblyFrom complex: SDAI.ComplexEntity?) {
      guard let complex = complex else { return nil }

      if let base = complex.entityReference(eMEASURE_WITH_UNIT.self) {self = ._MEASURE_WITH_UNIT(base) }
      else { return nil }
    }

    public init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let select = generic else { return nil }

      if let fundamental = select as? Self {
        self.init(fundamental: fundamental)
      }
      else if let base = tDESCRIPTIVE_MEASURE.convert(fromGeneric: select) {
        self = ._DESCRIPTIVE_MEASURE(base)
      }
      else if let base = tLENGTH_MEASURE.convert(fromGeneric: select) {
        self = ._LENGTH_MEASURE(base)
      }
      else if let base = eMEASURE_WITH_UNIT.convert(fromGeneric: select) {
        self = ._MEASURE_WITH_UNIT(base)
      }
      else if let base = tRATIO_MEASURE.convert(fromGeneric: select) {
        self = ._RATIO_MEASURE(base)
      }
      else { return nil }
    }

    // InitializableByP21Parameter
    public static var bareTypeName: String = "CHARACTER_SPACING_SELECT"

    public init?(p21typedParam: P21Decode.ExchangeStructure.TypedParameter, from exchangeStructure: P21Decode.ExchangeStructure) {
      guard let keyword = p21typedParam.keyword.asStandardKeyword else { exchangeStructure.error = "unexpected p21parameter(\(p21typedParam)) while resolving \(Self.bareTypeName) select value"; return nil }

      switch(keyword) {
      case tDESCRIPTIVE_MEASURE.bareTypeName:
        guard let base = tDESCRIPTIVE_MEASURE(p21typedParam: p21typedParam, from: exchangeStructure) else { exchangeStructure.add(errorContext: "while resolving \(Self.bareTypeName) select value"); return nil }
        self = ._DESCRIPTIVE_MEASURE(base)

      case tLENGTH_MEASURE.bareTypeName:
        guard let base = tLENGTH_MEASURE(p21typedParam: p21typedParam, from: exchangeStructure) else { exchangeStructure.add(errorContext: "while resolving \(Self.bareTypeName) select value"); return nil }
        self = ._LENGTH_MEASURE(base)

      case tRATIO_MEASURE.bareTypeName:
        guard let base = tRATIO_MEASURE(p21typedParam: p21typedParam, from: exchangeStructure) else { exchangeStructure.add(errorContext: "while resolving \(Self.bareTypeName) select value"); return nil }
        self = ._RATIO_MEASURE(base)

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
    public var super_tDESCRIPTIVE_MEASURE: tDESCRIPTIVE_MEASURE? {
      switch self {
      case ._DESCRIPTIVE_MEASURE(let selectValue): return selectValue
      default: return nil
      }
    }

    public var super_tLENGTH_MEASURE: tLENGTH_MEASURE? {
      switch self {
      case ._LENGTH_MEASURE(let selectValue): return selectValue
      default: return nil
      }
    }

    public var super_tRATIO_MEASURE: tRATIO_MEASURE? {
      switch self {
      case ._RATIO_MEASURE(let selectValue): return selectValue
      default: return nil
      }
    }

    //MARK: - ENTITY UNDERLYING TYPE REFERENCES
    public var super_eMEASURE_WITH_UNIT: eMEASURE_WITH_UNIT? {
      switch self {
      case ._MEASURE_WITH_UNIT(let entity): return entity
      default: return nil
      }
    }


    //MARK: - ENTITY ATTRIBUTE REFERENCES
    /// attribute of SELECT type ``sCHARACTER_SPACING_SELECT``
    /// - origin: ENTITY( ``eMEASURE_WITH_UNIT`` )
    public var DESCRIPTION: tTEXT?  {
      switch self {
      case ._MEASURE_WITH_UNIT(let entity): return entity.DESCRIPTION
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCHARACTER_SPACING_SELECT``
    /// - origin: ENTITY( ``eMEASURE_WITH_UNIT`` )
    public var UNIT_COMPONENT: sUNIT?  {
      switch self {
      case ._MEASURE_WITH_UNIT(let entity): return entity.UNIT_COMPONENT
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCHARACTER_SPACING_SELECT``
    /// - origin: ENTITY( ``eMEASURE_WITH_UNIT`` )
    public var VALUE_COMPONENT: sMEASURE_VALUE?  {
      switch self {
      case ._MEASURE_WITH_UNIT(let entity): return entity.VALUE_COMPONENT
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCHARACTER_SPACING_SELECT``
    /// - origin: ENTITY( ``eMEASURE_WITH_UNIT`` )
    public var NAME: tLABEL?  {
      switch self {
      case ._MEASURE_WITH_UNIT(let entity): return entity.NAME
      default: return nil
      }
    }


    //MARK: - SDAIValue
    public func isValueEqual<T: SDAIValue>(to rhs: T) -> Bool {
      switch self {
      case ._DESCRIPTIVE_MEASURE(let selection): return selection.value.isValueEqual(to: rhs)
      case ._LENGTH_MEASURE(let selection): return selection.value.isValueEqual(to: rhs)
      case ._MEASURE_WITH_UNIT(let selection): return selection.value.isValueEqual(to: rhs)
      case ._RATIO_MEASURE(let selection): return selection.value.isValueEqual(to: rhs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?) -> Bool? {
      switch self {
      case ._DESCRIPTIVE_MEASURE(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._LENGTH_MEASURE(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._MEASURE_WITH_UNIT(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._RATIO_MEASURE(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      }
    }

    public func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      switch self {
      case ._DESCRIPTIVE_MEASURE(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._LENGTH_MEASURE(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._MEASURE_WITH_UNIT(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._RATIO_MEASURE(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      }
    }

    public func isValueEqual<T: SDAIValue>(to rhs: T, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      switch self {
      case ._DESCRIPTIVE_MEASURE(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._LENGTH_MEASURE(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._MEASURE_WITH_UNIT(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._RATIO_MEASURE(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      switch self {
      case ._DESCRIPTIVE_MEASURE(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._LENGTH_MEASURE(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._MEASURE_WITH_UNIT(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._RATIO_MEASURE(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      }
    }


    //MARK: SDAIGenericTypeBase
    public func copy() -> Self {
      switch self {
      case ._DESCRIPTIVE_MEASURE(let selection): return ._DESCRIPTIVE_MEASURE(selection.copy())
      case ._LENGTH_MEASURE(let selection): return ._LENGTH_MEASURE(selection.copy())
      case ._MEASURE_WITH_UNIT(let selection): return ._MEASURE_WITH_UNIT(selection.copy())
      case ._RATIO_MEASURE(let selection): return ._RATIO_MEASURE(selection.copy())
      }
    }

    //MARK: SDAIGenericType
    public var typeMembers: Set<SDAI.STRING> {
      var members: Set<SDAI.STRING> = [SDAI.STRING(Self.typeName)]
      switch self {
      case ._DESCRIPTIVE_MEASURE(let selection): members.formUnion(selection.typeMembers)
      case ._LENGTH_MEASURE(let selection): members.formUnion(selection.typeMembers)
      case ._MEASURE_WITH_UNIT(let selection): members.formUnion(selection.typeMembers)
      case ._RATIO_MEASURE(let selection): members.formUnion(selection.typeMembers)
      }
      return members
    }

    public var entityReference: SDAI.EntityReference? {
      switch self {
      case ._DESCRIPTIVE_MEASURE(let selection): return selection.entityReference
      case ._LENGTH_MEASURE(let selection): return selection.entityReference
      case ._MEASURE_WITH_UNIT(let selection): return selection.entityReference
      case ._RATIO_MEASURE(let selection): return selection.entityReference
      }
    }
    public var stringValue: SDAI.STRING? {
      switch self {
      case ._DESCRIPTIVE_MEASURE(let selection): return selection.stringValue
      case ._LENGTH_MEASURE(let selection): return selection.stringValue
      case ._MEASURE_WITH_UNIT(let selection): return selection.stringValue
      case ._RATIO_MEASURE(let selection): return selection.stringValue
      }
    }
    public var binaryValue: SDAI.BINARY? {
      switch self {
      case ._DESCRIPTIVE_MEASURE(let selection): return selection.binaryValue
      case ._LENGTH_MEASURE(let selection): return selection.binaryValue
      case ._MEASURE_WITH_UNIT(let selection): return selection.binaryValue
      case ._RATIO_MEASURE(let selection): return selection.binaryValue
      }
    }
    public var logicalValue: SDAI.LOGICAL? {
      switch self {
      case ._DESCRIPTIVE_MEASURE(let selection): return selection.logicalValue
      case ._LENGTH_MEASURE(let selection): return selection.logicalValue
      case ._MEASURE_WITH_UNIT(let selection): return selection.logicalValue
      case ._RATIO_MEASURE(let selection): return selection.logicalValue
      }
    }
    public var booleanValue: SDAI.BOOLEAN? {
      switch self {
      case ._DESCRIPTIVE_MEASURE(let selection): return selection.booleanValue
      case ._LENGTH_MEASURE(let selection): return selection.booleanValue
      case ._MEASURE_WITH_UNIT(let selection): return selection.booleanValue
      case ._RATIO_MEASURE(let selection): return selection.booleanValue
      }
    }
    public var numberValue: SDAI.NUMBER? {
      switch self {
      case ._DESCRIPTIVE_MEASURE(let selection): return selection.numberValue
      case ._LENGTH_MEASURE(let selection): return selection.numberValue
      case ._MEASURE_WITH_UNIT(let selection): return selection.numberValue
      case ._RATIO_MEASURE(let selection): return selection.numberValue
      }
    }
    public var realValue: SDAI.REAL? {
      switch self {
      case ._DESCRIPTIVE_MEASURE(let selection): return selection.realValue
      case ._LENGTH_MEASURE(let selection): return selection.realValue
      case ._MEASURE_WITH_UNIT(let selection): return selection.realValue
      case ._RATIO_MEASURE(let selection): return selection.realValue
      }
    }
    public var integerValue: SDAI.INTEGER? {
      switch self {
      case ._DESCRIPTIVE_MEASURE(let selection): return selection.integerValue
      case ._LENGTH_MEASURE(let selection): return selection.integerValue
      case ._MEASURE_WITH_UNIT(let selection): return selection.integerValue
      case ._RATIO_MEASURE(let selection): return selection.integerValue
      }
    }
    public var genericEnumValue: SDAI.GenericEnumValue? {
      switch self {
      case ._DESCRIPTIVE_MEASURE(let selection): return selection.genericEnumValue
      case ._LENGTH_MEASURE(let selection): return selection.genericEnumValue
      case ._MEASURE_WITH_UNIT(let selection): return selection.genericEnumValue
      case ._RATIO_MEASURE(let selection): return selection.genericEnumValue
      }
    }
    public func arrayOptionalValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY_OPTIONAL<ELEM>? {
      switch self {
      case ._DESCRIPTIVE_MEASURE(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._LENGTH_MEASURE(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._MEASURE_WITH_UNIT(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._RATIO_MEASURE(let selection): return selection.arrayOptionalValue(elementType:elementType)
      }
    }
    public func arrayValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY<ELEM>? {
      switch self {
      case ._DESCRIPTIVE_MEASURE(let selection): return selection.arrayValue(elementType:elementType)
      case ._LENGTH_MEASURE(let selection): return selection.arrayValue(elementType:elementType)
      case ._MEASURE_WITH_UNIT(let selection): return selection.arrayValue(elementType:elementType)
      case ._RATIO_MEASURE(let selection): return selection.arrayValue(elementType:elementType)
      }
    }
    public func listValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.LIST<ELEM>? {
      switch self {
      case ._DESCRIPTIVE_MEASURE(let selection): return selection.listValue(elementType:elementType)
      case ._LENGTH_MEASURE(let selection): return selection.listValue(elementType:elementType)
      case ._MEASURE_WITH_UNIT(let selection): return selection.listValue(elementType:elementType)
      case ._RATIO_MEASURE(let selection): return selection.listValue(elementType:elementType)
      }
    }
    public func bagValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.BAG<ELEM>? {
      switch self {
      case ._DESCRIPTIVE_MEASURE(let selection): return selection.bagValue(elementType:elementType)
      case ._LENGTH_MEASURE(let selection): return selection.bagValue(elementType:elementType)
      case ._MEASURE_WITH_UNIT(let selection): return selection.bagValue(elementType:elementType)
      case ._RATIO_MEASURE(let selection): return selection.bagValue(elementType:elementType)
      }
    }
    public func setValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.SET<ELEM>? {
      switch self {
      case ._DESCRIPTIVE_MEASURE(let selection): return selection.setValue(elementType:elementType)
      case ._LENGTH_MEASURE(let selection): return selection.setValue(elementType:elementType)
      case ._MEASURE_WITH_UNIT(let selection): return selection.setValue(elementType:elementType)
      case ._RATIO_MEASURE(let selection): return selection.setValue(elementType:elementType)
      }
    }
    public func enumValue<ENUM:SDAIEnumerationType>(enumType:ENUM.Type) -> ENUM? {
      switch self {
      case ._DESCRIPTIVE_MEASURE(let selection): return selection.enumValue(enumType:enumType)
      case ._LENGTH_MEASURE(let selection): return selection.enumValue(enumType:enumType)
      case ._MEASURE_WITH_UNIT(let selection): return selection.enumValue(enumType:enumType)
      case ._RATIO_MEASURE(let selection): return selection.enumValue(enumType:enumType)
      }
    }

    //MARK: SDAIUnderlyingType
    public typealias FundamentalType = Self
    public static var typeName: String = 
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CHARACTER_SPACING_SELECT"
    public var asFundamentalType: FundamentalType { return self }

    //MARK: SDAIObservableAggregateElement
    public var entityReferences: AnySequence<SDAI.EntityReference> {
      switch self {
      case ._DESCRIPTIVE_MEASURE: return AnySequence<SDAI.EntityReference>(EmptyCollection<SDAI.EntityReference>())
      case ._LENGTH_MEASURE: return AnySequence<SDAI.EntityReference>(EmptyCollection<SDAI.EntityReference>())
      case ._MEASURE_WITH_UNIT(let entity): return entity.entityReferences
      case ._RATIO_MEASURE: return AnySequence<SDAI.EntityReference>(EmptyCollection<SDAI.EntityReference>())
      }
    }

    public mutating func configure(with observer: SDAI.EntityReferenceObserver) {
      switch self {
      case ._DESCRIPTIVE_MEASURE: break
      case ._LENGTH_MEASURE: break
      case ._MEASURE_WITH_UNIT(let entity): 
        entity.configure(with: observer)
        self = ._MEASURE_WITH_UNIT(entity)
      case ._RATIO_MEASURE: break
      }
    }

    public mutating func teardownObserver() {
      switch self {
      case ._DESCRIPTIVE_MEASURE: break
      case ._LENGTH_MEASURE: break
      case ._MEASURE_WITH_UNIT(let entity): 
        entity.teardownObserver()
        self = ._MEASURE_WITH_UNIT(entity)
      case ._RATIO_MEASURE: break
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
      case ._DESCRIPTIVE_MEASURE(let selectValue): 
        result = tDESCRIPTIVE_MEASURE.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\DESCRIPTIVE_MEASURE")
      case ._LENGTH_MEASURE(let selectValue): 
        result = tLENGTH_MEASURE.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\LENGTH_MEASURE")
      case ._MEASURE_WITH_UNIT(let selectValue): 
        result = eMEASURE_WITH_UNIT.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\MEASURE_WITH_UNIT")
      case ._RATIO_MEASURE(let selectValue): 
        result = tRATIO_MEASURE.validateWhereRules(instance:selectValue, prefix:prefix + "\\RATIO_MEASURE")
      case nil: break
      }

      return result
    }

  }

}


//MARK: - SELECT TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sCHARACTER_SPACING_SELECT__type: 
  SDAISelectType {

  //MARK: GROUP REFERENCES
  var super_tDESCRIPTIVE_MEASURE: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tDESCRIPTIVE_MEASURE? { get }
  var super_tLENGTH_MEASURE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLENGTH_MEASURE? { get }
  var super_tRATIO_MEASURE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tRATIO_MEASURE? { get }
  var super_eMEASURE_WITH_UNIT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eMEASURE_WITH_UNIT? { get }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var DESCRIPTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tTEXT?  { get }
  var UNIT_COMPONENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sUNIT?  { get }
  var VALUE_COMPONENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sMEASURE_VALUE?  { get }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { get }
}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sCHARACTER_SPACING_SELECT__subtype: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sCHARACTER_SPACING_SELECT__type, SDAIDefinedType
where Supertype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sCHARACTER_SPACING_SELECT__type
{}

public extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sCHARACTER_SPACING_SELECT__subtype {
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
  var super_tDESCRIPTIVE_MEASURE: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tDESCRIPTIVE_MEASURE? { rep.super_tDESCRIPTIVE_MEASURE }
  var super_tLENGTH_MEASURE: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLENGTH_MEASURE? { rep.super_tLENGTH_MEASURE }
  var super_tRATIO_MEASURE: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tRATIO_MEASURE? { rep.super_tRATIO_MEASURE }
  var super_eMEASURE_WITH_UNIT: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eMEASURE_WITH_UNIT? { rep.super_eMEASURE_WITH_UNIT }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var DESCRIPTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tTEXT?  { rep.DESCRIPTION }
  var UNIT_COMPONENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sUNIT?  { rep.UNIT_COMPONENT }
  var VALUE_COMPONENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sMEASURE_VALUE?  { rep.VALUE_COMPONENT }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { rep.NAME }
}

