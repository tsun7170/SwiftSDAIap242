/* file: datum_reference_modifier.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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
  TYPE datum_reference_modifier = SELECT
    ( datum_reference_modifier_with_value (*ENTITY*),
     simple_datum_reference_modifier (*ENUM*) );
  END_TYPE; -- datum_reference_modifier (line:2095 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES FOR SELECT
/*
  datum_reference_modifier_with_value (*ENTITY*):
  ATTR:  modifier_value: length_measure_with_unit
  ATTR:  modifier_type: datum_reference_modifier_type

  simple_datum_reference_modifier (*ENUM*): simple_datum_reference_modifier

*/

/** SELECT type
- EXPRESS:
```express
  TYPE datum_reference_modifier = SELECT
    ( datum_reference_modifier_with_value (*ENTITY*),
     simple_datum_reference_modifier (*ENUM*) );
  END_TYPE; -- datum_reference_modifier (line:2095 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public enum sDATUM_REFERENCE_MODIFIER : SDAIValue, AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sDATUM_REFERENCE_MODIFIER__type {

    /// SELECT case ``eDATUM_REFERENCE_MODIFIER_WITH_VALUE`` (ENTITY) in ``sDATUM_REFERENCE_MODIFIER``
    case _DATUM_REFERENCE_MODIFIER_WITH_VALUE(eDATUM_REFERENCE_MODIFIER_WITH_VALUE)	// (ENTITY)

    /// SELECT case ``nSIMPLE_DATUM_REFERENCE_MODIFIER`` (ENUM) in ``sDATUM_REFERENCE_MODIFIER``
    case _SIMPLE_DATUM_REFERENCE_MODIFIER(nSIMPLE_DATUM_REFERENCE_MODIFIER)	// (ENUM)

    //MARK: - CONSTRUCTORS
    public init(fundamental: FundamentalType) { self = fundamental }

    public init?<T: SDAIUnderlyingType>(possiblyFrom underlyingType: T?){
      guard let underlyingType = underlyingType else { return nil }

      if let base = underlyingType as? nSIMPLE_DATUM_REFERENCE_MODIFIER {
        self = ._SIMPLE_DATUM_REFERENCE_MODIFIER(base)
      }
      else if let fundamental = underlyingType.asFundamentalType as? nSIMPLE_DATUM_REFERENCE_MODIFIER.FundamentalType {
        self = ._SIMPLE_DATUM_REFERENCE_MODIFIER( nSIMPLE_DATUM_REFERENCE_MODIFIER(fundamental: fundamental) )
      }
      else { return nil }
    }

    public init?(possiblyFrom complex: SDAI.ComplexEntity?) {
      guard let complex = complex else { return nil }

      if let base = complex.entityReference(eDATUM_REFERENCE_MODIFIER_WITH_VALUE.self) {self = ._DATUM_REFERENCE_MODIFIER_WITH_VALUE(base) }
      else { return nil }
    }

    public init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let select = generic else { return nil }

      if let fundamental = select as? Self {
        self.init(fundamental: fundamental)
      }
      else if let base = eDATUM_REFERENCE_MODIFIER_WITH_VALUE.convert(fromGeneric: select) {
        self = ._DATUM_REFERENCE_MODIFIER_WITH_VALUE(base)
      }
      else if let base = nSIMPLE_DATUM_REFERENCE_MODIFIER.convert(fromGeneric: select) {
        self = ._SIMPLE_DATUM_REFERENCE_MODIFIER(base)
      }
      else { return nil }
    }

    // InitializableByP21Parameter
    public static var bareTypeName: String = "DATUM_REFERENCE_MODIFIER"

    public init?(p21typedParam: P21Decode.ExchangeStructure.TypedParameter, from exchangeStructure: P21Decode.ExchangeStructure) {
      guard let keyword = p21typedParam.keyword.asStandardKeyword else { exchangeStructure.error = "unexpected p21parameter(\(p21typedParam)) while resolving \(Self.bareTypeName) select value"; return nil }

      switch(keyword) {
      case nSIMPLE_DATUM_REFERENCE_MODIFIER.bareTypeName:
        guard let base = nSIMPLE_DATUM_REFERENCE_MODIFIER(p21typedParam: p21typedParam, from: exchangeStructure) else { exchangeStructure.add(errorContext: "while resolving \(Self.bareTypeName) select value"); return nil }
        self = ._SIMPLE_DATUM_REFERENCE_MODIFIER(base)

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
    public var super_nSIMPLE_DATUM_REFERENCE_MODIFIER: nSIMPLE_DATUM_REFERENCE_MODIFIER? {
      switch self {
      case ._SIMPLE_DATUM_REFERENCE_MODIFIER(let selectValue): return selectValue
      default: return nil
      }
    }

    //MARK: - ENTITY UNDERLYING TYPE REFERENCES
    public var super_eDATUM_REFERENCE_MODIFIER_WITH_VALUE: eDATUM_REFERENCE_MODIFIER_WITH_VALUE? {
      switch self {
      case ._DATUM_REFERENCE_MODIFIER_WITH_VALUE(let entity): return entity
      default: return nil
      }
    }


    //MARK: - ENTITY ATTRIBUTE REFERENCES
    /// attribute of SELECT type ``sDATUM_REFERENCE_MODIFIER``
    /// - origin: ENTITY( ``eDATUM_REFERENCE_MODIFIER_WITH_VALUE`` )
    public var MODIFIER_VALUE: eLENGTH_MEASURE_WITH_UNIT?  {
      switch self {
      case ._DATUM_REFERENCE_MODIFIER_WITH_VALUE(let entity): return entity.MODIFIER_VALUE
      default: return nil
      }
    }

    /// attribute of SELECT type ``sDATUM_REFERENCE_MODIFIER``
    /// - origin: ENTITY( ``eDATUM_REFERENCE_MODIFIER_WITH_VALUE`` )
    public var MODIFIER_TYPE: nDATUM_REFERENCE_MODIFIER_TYPE?  {
      switch self {
      case ._DATUM_REFERENCE_MODIFIER_WITH_VALUE(let entity): return entity.MODIFIER_TYPE
      default: return nil
      }
    }


    //MARK: - SDAIValue
    public func isValueEqual<T: SDAIValue>(to rhs: T) -> Bool {
      switch self {
      case ._DATUM_REFERENCE_MODIFIER_WITH_VALUE(let selection): return selection.value.isValueEqual(to: rhs)
      case ._SIMPLE_DATUM_REFERENCE_MODIFIER(let selection): return selection.value.isValueEqual(to: rhs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?) -> Bool? {
      switch self {
      case ._DATUM_REFERENCE_MODIFIER_WITH_VALUE(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._SIMPLE_DATUM_REFERENCE_MODIFIER(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      }
    }

    public func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      switch self {
      case ._DATUM_REFERENCE_MODIFIER_WITH_VALUE(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._SIMPLE_DATUM_REFERENCE_MODIFIER(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      }
    }

    public func isValueEqual<T: SDAIValue>(to rhs: T, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      switch self {
      case ._DATUM_REFERENCE_MODIFIER_WITH_VALUE(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._SIMPLE_DATUM_REFERENCE_MODIFIER(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      switch self {
      case ._DATUM_REFERENCE_MODIFIER_WITH_VALUE(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._SIMPLE_DATUM_REFERENCE_MODIFIER(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      }
    }


    //MARK: SDAIGenericTypeBase
    public func copy() -> Self {
      switch self {
      case ._DATUM_REFERENCE_MODIFIER_WITH_VALUE(let selection): return ._DATUM_REFERENCE_MODIFIER_WITH_VALUE(selection.copy())
      case ._SIMPLE_DATUM_REFERENCE_MODIFIER(let selection): return ._SIMPLE_DATUM_REFERENCE_MODIFIER(selection.copy())
      }
    }

    //MARK: SDAIGenericType
    public var typeMembers: Set<SDAI.STRING> {
      var members: Set<SDAI.STRING> = [SDAI.STRING(Self.typeName)]
      switch self {
      case ._DATUM_REFERENCE_MODIFIER_WITH_VALUE(let selection): members.formUnion(selection.typeMembers)
      case ._SIMPLE_DATUM_REFERENCE_MODIFIER(let selection): members.formUnion(selection.typeMembers)
      }
      return members
    }

    public var entityReference: SDAI.EntityReference? {
      switch self {
      case ._DATUM_REFERENCE_MODIFIER_WITH_VALUE(let selection): return selection.entityReference
      case ._SIMPLE_DATUM_REFERENCE_MODIFIER(let selection): return selection.entityReference
      }
    }
    public var stringValue: SDAI.STRING? {
      switch self {
      case ._DATUM_REFERENCE_MODIFIER_WITH_VALUE(let selection): return selection.stringValue
      case ._SIMPLE_DATUM_REFERENCE_MODIFIER(let selection): return selection.stringValue
      }
    }
    public var binaryValue: SDAI.BINARY? {
      switch self {
      case ._DATUM_REFERENCE_MODIFIER_WITH_VALUE(let selection): return selection.binaryValue
      case ._SIMPLE_DATUM_REFERENCE_MODIFIER(let selection): return selection.binaryValue
      }
    }
    public var logicalValue: SDAI.LOGICAL? {
      switch self {
      case ._DATUM_REFERENCE_MODIFIER_WITH_VALUE(let selection): return selection.logicalValue
      case ._SIMPLE_DATUM_REFERENCE_MODIFIER(let selection): return selection.logicalValue
      }
    }
    public var booleanValue: SDAI.BOOLEAN? {
      switch self {
      case ._DATUM_REFERENCE_MODIFIER_WITH_VALUE(let selection): return selection.booleanValue
      case ._SIMPLE_DATUM_REFERENCE_MODIFIER(let selection): return selection.booleanValue
      }
    }
    public var numberValue: SDAI.NUMBER? {
      switch self {
      case ._DATUM_REFERENCE_MODIFIER_WITH_VALUE(let selection): return selection.numberValue
      case ._SIMPLE_DATUM_REFERENCE_MODIFIER(let selection): return selection.numberValue
      }
    }
    public var realValue: SDAI.REAL? {
      switch self {
      case ._DATUM_REFERENCE_MODIFIER_WITH_VALUE(let selection): return selection.realValue
      case ._SIMPLE_DATUM_REFERENCE_MODIFIER(let selection): return selection.realValue
      }
    }
    public var integerValue: SDAI.INTEGER? {
      switch self {
      case ._DATUM_REFERENCE_MODIFIER_WITH_VALUE(let selection): return selection.integerValue
      case ._SIMPLE_DATUM_REFERENCE_MODIFIER(let selection): return selection.integerValue
      }
    }
    public var genericEnumValue: SDAI.GenericEnumValue? {
      switch self {
      case ._DATUM_REFERENCE_MODIFIER_WITH_VALUE(let selection): return selection.genericEnumValue
      case ._SIMPLE_DATUM_REFERENCE_MODIFIER(let selection): return selection.genericEnumValue
      }
    }
    public func arrayOptionalValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY_OPTIONAL<ELEM>? {
      switch self {
      case ._DATUM_REFERENCE_MODIFIER_WITH_VALUE(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._SIMPLE_DATUM_REFERENCE_MODIFIER(let selection): return selection.arrayOptionalValue(elementType:elementType)
      }
    }
    public func arrayValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY<ELEM>? {
      switch self {
      case ._DATUM_REFERENCE_MODIFIER_WITH_VALUE(let selection): return selection.arrayValue(elementType:elementType)
      case ._SIMPLE_DATUM_REFERENCE_MODIFIER(let selection): return selection.arrayValue(elementType:elementType)
      }
    }
    public func listValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.LIST<ELEM>? {
      switch self {
      case ._DATUM_REFERENCE_MODIFIER_WITH_VALUE(let selection): return selection.listValue(elementType:elementType)
      case ._SIMPLE_DATUM_REFERENCE_MODIFIER(let selection): return selection.listValue(elementType:elementType)
      }
    }
    public func bagValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.BAG<ELEM>? {
      switch self {
      case ._DATUM_REFERENCE_MODIFIER_WITH_VALUE(let selection): return selection.bagValue(elementType:elementType)
      case ._SIMPLE_DATUM_REFERENCE_MODIFIER(let selection): return selection.bagValue(elementType:elementType)
      }
    }
    public func setValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.SET<ELEM>? {
      switch self {
      case ._DATUM_REFERENCE_MODIFIER_WITH_VALUE(let selection): return selection.setValue(elementType:elementType)
      case ._SIMPLE_DATUM_REFERENCE_MODIFIER(let selection): return selection.setValue(elementType:elementType)
      }
    }
    public func enumValue<ENUM:SDAIEnumerationType>(enumType:ENUM.Type) -> ENUM? {
      switch self {
      case ._DATUM_REFERENCE_MODIFIER_WITH_VALUE(let selection): return selection.enumValue(enumType:enumType)
      case ._SIMPLE_DATUM_REFERENCE_MODIFIER(let selection): return selection.enumValue(enumType:enumType)
      }
    }

    //MARK: SDAIUnderlyingType
    public typealias FundamentalType = Self
    public static var typeName: String = 
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DATUM_REFERENCE_MODIFIER"
    public var asFundamentalType: FundamentalType { return self }

    //MARK: SDAIObservableAggregateElement
    public var entityReferences: AnySequence<SDAI.EntityReference> {
      switch self {
      case ._DATUM_REFERENCE_MODIFIER_WITH_VALUE(let entity): return entity.entityReferences
      case ._SIMPLE_DATUM_REFERENCE_MODIFIER: return AnySequence<SDAI.EntityReference>(EmptyCollection<SDAI.EntityReference>())
      }
    }

    public mutating func configure(with observer: SDAI.EntityReferenceObserver) {
      switch self {
      case ._DATUM_REFERENCE_MODIFIER_WITH_VALUE(let entity): 
        entity.configure(with: observer)
        self = ._DATUM_REFERENCE_MODIFIER_WITH_VALUE(entity)
      case ._SIMPLE_DATUM_REFERENCE_MODIFIER: break
      }
    }

    public mutating func teardownObserver() {
      switch self {
      case ._DATUM_REFERENCE_MODIFIER_WITH_VALUE(let entity): 
        entity.teardownObserver()
        self = ._DATUM_REFERENCE_MODIFIER_WITH_VALUE(entity)
      case ._SIMPLE_DATUM_REFERENCE_MODIFIER: break
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
      case ._DATUM_REFERENCE_MODIFIER_WITH_VALUE(let selectValue): 
        result = eDATUM_REFERENCE_MODIFIER_WITH_VALUE.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\DATUM_REFERENCE_MODIFIER_WITH_VALUE")
      case ._SIMPLE_DATUM_REFERENCE_MODIFIER(let selectValue): 
        result = nSIMPLE_DATUM_REFERENCE_MODIFIER.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\SIMPLE_DATUM_REFERENCE_MODIFIER")
      case nil: break
      }

      return result
    }

  }

}


//MARK: - SELECT TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sDATUM_REFERENCE_MODIFIER__type: 
  SDAISelectType {

  //MARK: GROUP REFERENCES
  var super_nSIMPLE_DATUM_REFERENCE_MODIFIER: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.nSIMPLE_DATUM_REFERENCE_MODIFIER? { get }
  var super_eDATUM_REFERENCE_MODIFIER_WITH_VALUE: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDATUM_REFERENCE_MODIFIER_WITH_VALUE? { get }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var MODIFIER_VALUE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eLENGTH_MEASURE_WITH_UNIT?  { get }
  var MODIFIER_TYPE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.nDATUM_REFERENCE_MODIFIER_TYPE?  { get }
}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sDATUM_REFERENCE_MODIFIER__subtype: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sDATUM_REFERENCE_MODIFIER__type, SDAIDefinedType
where Supertype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sDATUM_REFERENCE_MODIFIER__type
{}

public extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sDATUM_REFERENCE_MODIFIER__subtype {
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
  var super_nSIMPLE_DATUM_REFERENCE_MODIFIER: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.nSIMPLE_DATUM_REFERENCE_MODIFIER? { rep.super_nSIMPLE_DATUM_REFERENCE_MODIFIER }
  var super_eDATUM_REFERENCE_MODIFIER_WITH_VALUE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDATUM_REFERENCE_MODIFIER_WITH_VALUE? { rep.super_eDATUM_REFERENCE_MODIFIER_WITH_VALUE }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var MODIFIER_VALUE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eLENGTH_MEASURE_WITH_UNIT?  { rep.MODIFIER_VALUE }
  var MODIFIER_TYPE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.nDATUM_REFERENCE_MODIFIER_TYPE?  { rep.MODIFIER_TYPE }
}
