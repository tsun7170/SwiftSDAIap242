/* file: a3m_equivalence_assessment_specification_select.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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
  TYPE a3m_equivalence_assessment_specification_select = SELECT
    ( a3m_equivalence_assessment_by_logical_test (*ENTITY*),
     a3m_equivalence_assessment_by_numerical_test (*ENTITY*) );
  END_TYPE; -- a3m_equivalence_assessment_specification_select (line:197 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES FOR SELECT
/*
  a3m_equivalence_assessment_by_logical_test (*ENTITY*):
  ATTR:  description: text
  ATTR:  id: identifier
  ATTR:  name: label

  a3m_equivalence_assessment_by_numerical_test (*ENTITY*):
  ATTR:  description: text
  ATTR:  threshold: shape_data_quality_value_limit_type_select
  ATTR:  id: identifier
  ATTR:  name: label

*/

/** SELECT type
- EXPRESS:
```express
  TYPE a3m_equivalence_assessment_specification_select = SELECT
    ( a3m_equivalence_assessment_by_logical_test (*ENTITY*),
     a3m_equivalence_assessment_by_numerical_test (*ENTITY*) );
  END_TYPE; -- a3m_equivalence_assessment_specification_select (line:197 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public enum sA3M_EQUIVALENCE_ASSESSMENT_SPECIFICATION_SELECT : SDAIValue, 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sA3M_EQUIVALENCE_ASSESSMENT_SPECIFICATION_SELECT__type {

    /// SELECT case ``eA3M_EQUIVALENCE_ASSESSMENT_BY_LOGICAL_TEST`` (ENTITY) in ``sA3M_EQUIVALENCE_ASSESSMENT_SPECIFICATION_SELECT``
    case _A3M_EQUIVALENCE_ASSESSMENT_BY_LOGICAL_TEST(
      eA3M_EQUIVALENCE_ASSESSMENT_BY_LOGICAL_TEST)	// (ENTITY)

    /// SELECT case ``eA3M_EQUIVALENCE_ASSESSMENT_BY_NUMERICAL_TEST`` (ENTITY) in ``sA3M_EQUIVALENCE_ASSESSMENT_SPECIFICATION_SELECT``
    case _A3M_EQUIVALENCE_ASSESSMENT_BY_NUMERICAL_TEST(
      eA3M_EQUIVALENCE_ASSESSMENT_BY_NUMERICAL_TEST)	// (ENTITY)

    //MARK: - CONSTRUCTORS
    public init(fundamental: FundamentalType) { self = fundamental }

    public init?<T: SDAIUnderlyingType>(possiblyFrom underlyingType: T?){
      return nil
    }

    public init?(possiblyFrom complex: SDAI.ComplexEntity?) {
      guard let complex = complex else { return nil }

      if let base = complex.entityReference(eA3M_EQUIVALENCE_ASSESSMENT_BY_LOGICAL_TEST.self) {self = ._A3M_EQUIVALENCE_ASSESSMENT_BY_LOGICAL_TEST(base) }
      else if let base = complex.entityReference(eA3M_EQUIVALENCE_ASSESSMENT_BY_NUMERICAL_TEST.self) {self = ._A3M_EQUIVALENCE_ASSESSMENT_BY_NUMERICAL_TEST(base) }
      else { return nil }
    }

    public init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let select = generic else { return nil }

      if let fundamental = select as? Self {
        self.init(fundamental: fundamental)
      }
      else if let base = eA3M_EQUIVALENCE_ASSESSMENT_BY_LOGICAL_TEST.convert(fromGeneric: select) {
        self = ._A3M_EQUIVALENCE_ASSESSMENT_BY_LOGICAL_TEST(base)
      }
      else if let base = eA3M_EQUIVALENCE_ASSESSMENT_BY_NUMERICAL_TEST.convert(fromGeneric: select) {
        self = ._A3M_EQUIVALENCE_ASSESSMENT_BY_NUMERICAL_TEST(base)
      }
      else { return nil }
    }

    // InitializableByP21Parameter
    public static var bareTypeName: String = "A3M_EQUIVALENCE_ASSESSMENT_SPECIFICATION_SELECT"

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
    public var super_eA3M_EQUIVALENCE_ASSESSMENT_BY_NUMERICAL_TEST: 
      eA3M_EQUIVALENCE_ASSESSMENT_BY_NUMERICAL_TEST? {
      switch self {
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_NUMERICAL_TEST(let entity): return entity
      default: return nil
      }
    }

    public var super_eA3M_EQUIVALENCE_ASSESSMENT_BY_LOGICAL_TEST: 
      eA3M_EQUIVALENCE_ASSESSMENT_BY_LOGICAL_TEST? {
      switch self {
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_LOGICAL_TEST(let entity): return entity
      default: return nil
      }
    }

    public var super_eDATA_EQUIVALENCE_ASSESSMENT_SPECIFICATION: 
      eDATA_EQUIVALENCE_ASSESSMENT_SPECIFICATION? {
      switch self {
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_LOGICAL_TEST(let entity): return entity
        .super_eDATA_EQUIVALENCE_ASSESSMENT_SPECIFICATION
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_NUMERICAL_TEST(let entity): return entity
        .super_eDATA_EQUIVALENCE_ASSESSMENT_SPECIFICATION
      }
    }


    //MARK: - ENTITY ATTRIBUTE REFERENCES
    /// attribute of SELECT type ``sA3M_EQUIVALENCE_ASSESSMENT_SPECIFICATION_SELECT``
    /// - origin: ENTITY( ``eA3M_EQUIVALENCE_ASSESSMENT_BY_LOGICAL_TEST`` )
    /// - origin: ENTITY( ``eA3M_EQUIVALENCE_ASSESSMENT_BY_NUMERICAL_TEST`` )
    public var DESCRIPTION: tTEXT?  {
      switch self {
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_LOGICAL_TEST(let entity): return entity.DESCRIPTION
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_NUMERICAL_TEST(let entity): return entity.DESCRIPTION
      }
    }

    /// attribute of SELECT type ``sA3M_EQUIVALENCE_ASSESSMENT_SPECIFICATION_SELECT``
    /// - origin: ENTITY( ``eA3M_EQUIVALENCE_ASSESSMENT_BY_NUMERICAL_TEST`` )
    public var THRESHOLD: sSHAPE_DATA_QUALITY_VALUE_LIMIT_TYPE_SELECT?  {
      switch self {
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_NUMERICAL_TEST(let entity): return entity.THRESHOLD
      default: return nil
      }
    }

    /// attribute of SELECT type ``sA3M_EQUIVALENCE_ASSESSMENT_SPECIFICATION_SELECT``
    /// - origin: ENTITY( ``eA3M_EQUIVALENCE_ASSESSMENT_BY_LOGICAL_TEST`` )
    /// - origin: ENTITY( ``eA3M_EQUIVALENCE_ASSESSMENT_BY_NUMERICAL_TEST`` )
    public var ID: tIDENTIFIER?  {
      switch self {
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_LOGICAL_TEST(let entity): return entity.ID
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_NUMERICAL_TEST(let entity): return entity.ID
      }
    }

    /// attribute of SELECT type ``sA3M_EQUIVALENCE_ASSESSMENT_SPECIFICATION_SELECT``
    /// - origin: ENTITY( ``eA3M_EQUIVALENCE_ASSESSMENT_BY_LOGICAL_TEST`` )
    /// - origin: ENTITY( ``eA3M_EQUIVALENCE_ASSESSMENT_BY_NUMERICAL_TEST`` )
    public var NAME: tLABEL?  {
      switch self {
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_LOGICAL_TEST(let entity): return entity.NAME
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_NUMERICAL_TEST(let entity): return entity.NAME
      }
    }


    //MARK: - SDAIValue
    public func isValueEqual<T: SDAIValue>(to rhs: T) -> Bool {
      switch self {
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_LOGICAL_TEST(let selection): return selection.value.isValueEqual(to: rhs)
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_NUMERICAL_TEST(let selection): return selection.value.isValueEqual(to: rhs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?) -> Bool? {
      switch self {
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_LOGICAL_TEST(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_NUMERICAL_TEST(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      }
    }

    public func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      switch self {
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_LOGICAL_TEST(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_NUMERICAL_TEST(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      }
    }

    public func isValueEqual<T: SDAIValue>(to rhs: T, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      switch self {
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_LOGICAL_TEST(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_NUMERICAL_TEST(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      switch self {
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_LOGICAL_TEST(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_NUMERICAL_TEST(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      }
    }


    //MARK: SDAIGenericTypeBase
    public func copy() -> Self {
      switch self {
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_LOGICAL_TEST(let selection): return ._A3M_EQUIVALENCE_ASSESSMENT_BY_LOGICAL_TEST(selection.copy())
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_NUMERICAL_TEST(let selection): return ._A3M_EQUIVALENCE_ASSESSMENT_BY_NUMERICAL_TEST(selection.copy())
      }
    }

    //MARK: SDAIGenericType
    public var typeMembers: Set<SDAI.STRING> {
      var members: Set<SDAI.STRING> = [SDAI.STRING(Self.typeName)]
      switch self {
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_LOGICAL_TEST(let selection): members.formUnion(selection.typeMembers)
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_NUMERICAL_TEST(let selection): members.formUnion(selection.typeMembers)
      }
      return members
    }

    public var entityReference: SDAI.EntityReference? {
      switch self {
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_LOGICAL_TEST(let selection): return selection.entityReference
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_NUMERICAL_TEST(let selection): return selection.entityReference
      }
    }
    public var stringValue: SDAI.STRING? {
      switch self {
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_LOGICAL_TEST(let selection): return selection.stringValue
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_NUMERICAL_TEST(let selection): return selection.stringValue
      }
    }
    public var binaryValue: SDAI.BINARY? {
      switch self {
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_LOGICAL_TEST(let selection): return selection.binaryValue
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_NUMERICAL_TEST(let selection): return selection.binaryValue
      }
    }
    public var logicalValue: SDAI.LOGICAL? {
      switch self {
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_LOGICAL_TEST(let selection): return selection.logicalValue
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_NUMERICAL_TEST(let selection): return selection.logicalValue
      }
    }
    public var booleanValue: SDAI.BOOLEAN? {
      switch self {
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_LOGICAL_TEST(let selection): return selection.booleanValue
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_NUMERICAL_TEST(let selection): return selection.booleanValue
      }
    }
    public var numberValue: SDAI.NUMBER? {
      switch self {
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_LOGICAL_TEST(let selection): return selection.numberValue
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_NUMERICAL_TEST(let selection): return selection.numberValue
      }
    }
    public var realValue: SDAI.REAL? {
      switch self {
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_LOGICAL_TEST(let selection): return selection.realValue
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_NUMERICAL_TEST(let selection): return selection.realValue
      }
    }
    public var integerValue: SDAI.INTEGER? {
      switch self {
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_LOGICAL_TEST(let selection): return selection.integerValue
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_NUMERICAL_TEST(let selection): return selection.integerValue
      }
    }
    public var genericEnumValue: SDAI.GenericEnumValue? {
      switch self {
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_LOGICAL_TEST(let selection): return selection.genericEnumValue
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_NUMERICAL_TEST(let selection): return selection.genericEnumValue
      }
    }
    public func arrayOptionalValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY_OPTIONAL<ELEM>? {
      switch self {
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_LOGICAL_TEST(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_NUMERICAL_TEST(let selection): return selection.arrayOptionalValue(elementType:elementType)
      }
    }
    public func arrayValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY<ELEM>? {
      switch self {
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_LOGICAL_TEST(let selection): return selection.arrayValue(elementType:elementType)
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_NUMERICAL_TEST(let selection): return selection.arrayValue(elementType:elementType)
      }
    }
    public func listValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.LIST<ELEM>? {
      switch self {
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_LOGICAL_TEST(let selection): return selection.listValue(elementType:elementType)
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_NUMERICAL_TEST(let selection): return selection.listValue(elementType:elementType)
      }
    }
    public func bagValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.BAG<ELEM>? {
      switch self {
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_LOGICAL_TEST(let selection): return selection.bagValue(elementType:elementType)
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_NUMERICAL_TEST(let selection): return selection.bagValue(elementType:elementType)
      }
    }
    public func setValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.SET<ELEM>? {
      switch self {
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_LOGICAL_TEST(let selection): return selection.setValue(elementType:elementType)
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_NUMERICAL_TEST(let selection): return selection.setValue(elementType:elementType)
      }
    }
    public func enumValue<ENUM:SDAIEnumerationType>(enumType:ENUM.Type) -> ENUM? {
      switch self {
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_LOGICAL_TEST(let selection): return selection.enumValue(enumType:enumType)
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_NUMERICAL_TEST(let selection): return selection.enumValue(enumType:enumType)
      }
    }

    //MARK: SDAIUnderlyingType
    public typealias FundamentalType = Self
    public static var typeName: String = 
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.A3M_EQUIVALENCE_ASSESSMENT_SPECIFICATION_SELECT"
    public var asFundamentalType: FundamentalType { return self }

    //MARK: SDAIObservableAggregateElement
    public var entityReferences: AnySequence<SDAI.EntityReference> {
      switch self {
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_LOGICAL_TEST(let entity): return entity.entityReferences
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_NUMERICAL_TEST(let entity): return entity.entityReferences
      }
    }

    public mutating func configure(with observer: SDAI.EntityReferenceObserver) {
      switch self {
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_LOGICAL_TEST(let entity): 
        entity.configure(with: observer)
        self = ._A3M_EQUIVALENCE_ASSESSMENT_BY_LOGICAL_TEST(entity)
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_NUMERICAL_TEST(let entity): 
        entity.configure(with: observer)
        self = ._A3M_EQUIVALENCE_ASSESSMENT_BY_NUMERICAL_TEST(entity)
      }
    }

    public mutating func teardownObserver() {
      switch self {
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_LOGICAL_TEST(let entity): 
        entity.teardownObserver()
        self = ._A3M_EQUIVALENCE_ASSESSMENT_BY_LOGICAL_TEST(entity)
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_NUMERICAL_TEST(let entity): 
        entity.teardownObserver()
        self = ._A3M_EQUIVALENCE_ASSESSMENT_BY_NUMERICAL_TEST(entity)
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
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_LOGICAL_TEST(let selectValue): 
        result = eA3M_EQUIVALENCE_ASSESSMENT_BY_LOGICAL_TEST.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\A3M_EQUIVALENCE_ASSESSMENT_BY_LOGICAL_TEST")
      case ._A3M_EQUIVALENCE_ASSESSMENT_BY_NUMERICAL_TEST(let selectValue): 
        result = eA3M_EQUIVALENCE_ASSESSMENT_BY_NUMERICAL_TEST.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\A3M_EQUIVALENCE_ASSESSMENT_BY_NUMERICAL_TEST")
      case nil: break
      }

      return result
    }

  }

}


//MARK: - SELECT TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sA3M_EQUIVALENCE_ASSESSMENT_SPECIFICATION_SELECT__type: 
  SDAISelectType {

  //MARK: GROUP REFERENCES
  var super_eA3M_EQUIVALENCE_ASSESSMENT_BY_NUMERICAL_TEST: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eA3M_EQUIVALENCE_ASSESSMENT_BY_NUMERICAL_TEST? { get }
  var super_eA3M_EQUIVALENCE_ASSESSMENT_BY_LOGICAL_TEST: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eA3M_EQUIVALENCE_ASSESSMENT_BY_LOGICAL_TEST? { get }
  var super_eDATA_EQUIVALENCE_ASSESSMENT_SPECIFICATION: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDATA_EQUIVALENCE_ASSESSMENT_SPECIFICATION? { get }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var DESCRIPTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tTEXT?  { get }
  var THRESHOLD: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sSHAPE_DATA_QUALITY_VALUE_LIMIT_TYPE_SELECT?  { get }
  var ID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER?  { get }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { get }
}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sA3M_EQUIVALENCE_ASSESSMENT_SPECIFICATION_SELECT__subtype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sA3M_EQUIVALENCE_ASSESSMENT_SPECIFICATION_SELECT__type, SDAIDefinedType
where Supertype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sA3M_EQUIVALENCE_ASSESSMENT_SPECIFICATION_SELECT__type
{}

public extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sA3M_EQUIVALENCE_ASSESSMENT_SPECIFICATION_SELECT__subtype {
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
  var super_eA3M_EQUIVALENCE_ASSESSMENT_BY_NUMERICAL_TEST: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eA3M_EQUIVALENCE_ASSESSMENT_BY_NUMERICAL_TEST? { rep.super_eA3M_EQUIVALENCE_ASSESSMENT_BY_NUMERICAL_TEST }
  var super_eA3M_EQUIVALENCE_ASSESSMENT_BY_LOGICAL_TEST: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eA3M_EQUIVALENCE_ASSESSMENT_BY_LOGICAL_TEST? { rep.super_eA3M_EQUIVALENCE_ASSESSMENT_BY_LOGICAL_TEST }
  var super_eDATA_EQUIVALENCE_ASSESSMENT_SPECIFICATION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDATA_EQUIVALENCE_ASSESSMENT_SPECIFICATION? { rep.super_eDATA_EQUIVALENCE_ASSESSMENT_SPECIFICATION }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var DESCRIPTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tTEXT?  { rep.DESCRIPTION }
  var THRESHOLD: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sSHAPE_DATA_QUALITY_VALUE_LIMIT_TYPE_SELECT?  { rep.THRESHOLD }
  var ID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER?  { rep.ID }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { rep.NAME }
}

