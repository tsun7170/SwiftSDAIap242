/* file: atom_based_value.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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
  TYPE atom_based_value = SELECT
    ( atom_based_tuple (*TYPE*),
     maths_atom (*SELECT*) );
  END_TYPE; -- atom_based_value (line:843 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES FOR SELECT
/*
  atom_based_tuple (*TYPE*): atom_based_tuple

  maths_atom (*SELECT*):

*/

/** SELECT type
- EXPRESS:
```express
  TYPE atom_based_value = SELECT
    ( atom_based_tuple (*TYPE*),
     maths_atom (*SELECT*) );
  END_TYPE; -- atom_based_value (line:843 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public enum sATOM_BASED_VALUE : SDAIValue, AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sATOM_BASED_VALUE__type {

    /// SELECT case ``tATOM_BASED_TUPLE`` (TYPE) in ``sATOM_BASED_VALUE``
    case _ATOM_BASED_TUPLE(tATOM_BASED_TUPLE)	// (TYPE)

    /// SELECT case ``sMATHS_ATOM`` (SELECT) in ``sATOM_BASED_VALUE``
    case _MATHS_ATOM(sMATHS_ATOM)	// (SELECT)

    //MARK: - CONSTRUCTORS
    public init(fundamental: FundamentalType) { self = fundamental }

    public init?<T: SDAIUnderlyingType>(possiblyFrom underlyingType: T?){
      guard let underlyingType = underlyingType else { return nil }

      if let base = underlyingType as? tATOM_BASED_TUPLE {
        self = ._ATOM_BASED_TUPLE(base)
      }
      else if let base = underlyingType as? sMATHS_ATOM {
        self = ._MATHS_ATOM(base)
      }
      else if let fundamental = underlyingType.asFundamentalType as? tATOM_BASED_TUPLE.FundamentalType {
        self = ._ATOM_BASED_TUPLE( tATOM_BASED_TUPLE(fundamental: fundamental) )
      }
      else if let base = sMATHS_ATOM(possiblyFrom: underlyingType) {
        self = ._MATHS_ATOM(base)
      }
      else { return nil }
    }

    public init?(possiblyFrom complex: SDAI.ComplexEntity?) {
      guard let complex = complex else { return nil }

      if let base = sMATHS_ATOM(possiblyFrom: complex) {
        self = ._MATHS_ATOM(base)
      }
      else { return nil }
    }

    public init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let select = generic else { return nil }

      if let fundamental = select as? Self {
        self.init(fundamental: fundamental)
      }
      else if let base = tATOM_BASED_TUPLE.convert(fromGeneric: select) {
        self = ._ATOM_BASED_TUPLE(base)
      }
      else if let base = sMATHS_ATOM.convert(fromGeneric: select) {
        self = ._MATHS_ATOM(base)
      }
      else { return nil }
    }

    // InitializableByP21Parameter
    public static var bareTypeName: String = "ATOM_BASED_VALUE"

    public init?(p21typedParam: P21Decode.ExchangeStructure.TypedParameter, from exchangeStructure: P21Decode.ExchangeStructure) {
      guard let keyword = p21typedParam.keyword.asStandardKeyword else { exchangeStructure.error = "unexpected p21parameter(\(p21typedParam)) while resolving \(Self.bareTypeName) select value"; return nil }

      switch(keyword) {
      case tATOM_BASED_TUPLE.bareTypeName:
        guard let base = tATOM_BASED_TUPLE(p21typedParam: p21typedParam, from: exchangeStructure) else { exchangeStructure.add(errorContext: "while resolving \(Self.bareTypeName) select value"); return nil }
        self = ._ATOM_BASED_TUPLE(base)

      case sMATHS_ATOM.bareTypeName:
        guard let base = sMATHS_ATOM(p21typedParam: p21typedParam, from: exchangeStructure) else { exchangeStructure.add(errorContext: "while resolving \(Self.bareTypeName) select value"); return nil }
        self = ._MATHS_ATOM(base)

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
    public var super_tATOM_BASED_TUPLE: tATOM_BASED_TUPLE? {
      switch self {
      case ._ATOM_BASED_TUPLE(let selectValue): return selectValue
      default: return nil
      }
    }

    public var super_sMATHS_ATOM: sMATHS_ATOM? {
      switch self {
      case ._MATHS_ATOM(let selectValue): return selectValue
      default: return nil
      }
    }



    //MARK: - SDAIValue
    public func isValueEqual<T: SDAIValue>(to rhs: T) -> Bool {
      switch self {
      case ._ATOM_BASED_TUPLE(let selection): return selection.value.isValueEqual(to: rhs)
      case ._MATHS_ATOM(let selection): return selection.value.isValueEqual(to: rhs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?) -> Bool? {
      switch self {
      case ._ATOM_BASED_TUPLE(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._MATHS_ATOM(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      }
    }

    public func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      switch self {
      case ._ATOM_BASED_TUPLE(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._MATHS_ATOM(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      }
    }

    public func isValueEqual<T: SDAIValue>(to rhs: T, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      switch self {
      case ._ATOM_BASED_TUPLE(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._MATHS_ATOM(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      switch self {
      case ._ATOM_BASED_TUPLE(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._MATHS_ATOM(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      }
    }


    //MARK: SDAIGenericTypeBase
    public func copy() -> Self {
      switch self {
      case ._ATOM_BASED_TUPLE(let selection): return ._ATOM_BASED_TUPLE(selection.copy())
      case ._MATHS_ATOM(let selection): return ._MATHS_ATOM(selection.copy())
      }
    }

    //MARK: SDAIGenericType
    public var typeMembers: Set<SDAI.STRING> {
      var members: Set<SDAI.STRING> = [SDAI.STRING(Self.typeName)]
      switch self {
      case ._ATOM_BASED_TUPLE(let selection): members.formUnion(selection.typeMembers)
      case ._MATHS_ATOM(let selection): members.formUnion(selection.typeMembers)
      }
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sMATHS_VALUE.typeName)) // -> Self
      members.insert(SDAI.STRING(sMATHS_EXPRESSION.typeName)) // -> Self
      return members
    }

    public var entityReference: SDAI.EntityReference? {
      switch self {
      case ._ATOM_BASED_TUPLE(let selection): return selection.entityReference
      case ._MATHS_ATOM(let selection): return selection.entityReference
      }
    }
    public var stringValue: SDAI.STRING? {
      switch self {
      case ._ATOM_BASED_TUPLE(let selection): return selection.stringValue
      case ._MATHS_ATOM(let selection): return selection.stringValue
      }
    }
    public var binaryValue: SDAI.BINARY? {
      switch self {
      case ._ATOM_BASED_TUPLE(let selection): return selection.binaryValue
      case ._MATHS_ATOM(let selection): return selection.binaryValue
      }
    }
    public var logicalValue: SDAI.LOGICAL? {
      switch self {
      case ._ATOM_BASED_TUPLE(let selection): return selection.logicalValue
      case ._MATHS_ATOM(let selection): return selection.logicalValue
      }
    }
    public var booleanValue: SDAI.BOOLEAN? {
      switch self {
      case ._ATOM_BASED_TUPLE(let selection): return selection.booleanValue
      case ._MATHS_ATOM(let selection): return selection.booleanValue
      }
    }
    public var numberValue: SDAI.NUMBER? {
      switch self {
      case ._ATOM_BASED_TUPLE(let selection): return selection.numberValue
      case ._MATHS_ATOM(let selection): return selection.numberValue
      }
    }
    public var realValue: SDAI.REAL? {
      switch self {
      case ._ATOM_BASED_TUPLE(let selection): return selection.realValue
      case ._MATHS_ATOM(let selection): return selection.realValue
      }
    }
    public var integerValue: SDAI.INTEGER? {
      switch self {
      case ._ATOM_BASED_TUPLE(let selection): return selection.integerValue
      case ._MATHS_ATOM(let selection): return selection.integerValue
      }
    }
    public var genericEnumValue: SDAI.GenericEnumValue? {
      switch self {
      case ._ATOM_BASED_TUPLE(let selection): return selection.genericEnumValue
      case ._MATHS_ATOM(let selection): return selection.genericEnumValue
      }
    }
    public func arrayOptionalValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY_OPTIONAL<ELEM>? {
      switch self {
      case ._ATOM_BASED_TUPLE(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._MATHS_ATOM(let selection): return selection.arrayOptionalValue(elementType:elementType)
      }
    }
    public func arrayValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY<ELEM>? {
      switch self {
      case ._ATOM_BASED_TUPLE(let selection): return selection.arrayValue(elementType:elementType)
      case ._MATHS_ATOM(let selection): return selection.arrayValue(elementType:elementType)
      }
    }
    public func listValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.LIST<ELEM>? {
      switch self {
      case ._ATOM_BASED_TUPLE(let selection): return selection.listValue(elementType:elementType)
      case ._MATHS_ATOM(let selection): return selection.listValue(elementType:elementType)
      }
    }
    public func bagValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.BAG<ELEM>? {
      switch self {
      case ._ATOM_BASED_TUPLE(let selection): return selection.bagValue(elementType:elementType)
      case ._MATHS_ATOM(let selection): return selection.bagValue(elementType:elementType)
      }
    }
    public func setValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.SET<ELEM>? {
      switch self {
      case ._ATOM_BASED_TUPLE(let selection): return selection.setValue(elementType:elementType)
      case ._MATHS_ATOM(let selection): return selection.setValue(elementType:elementType)
      }
    }
    public func enumValue<ENUM:SDAIEnumerationType>(enumType:ENUM.Type) -> ENUM? {
      switch self {
      case ._ATOM_BASED_TUPLE(let selection): return selection.enumValue(enumType:enumType)
      case ._MATHS_ATOM(let selection): return selection.enumValue(enumType:enumType)
      }
    }

    //MARK: SDAIUnderlyingType
    public typealias FundamentalType = Self
    public static var typeName: String = "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ATOM_BASED_VALUE"
    public var asFundamentalType: FundamentalType { return self }

    //MARK: SDAIObservableAggregateElement
    public var entityReferences: AnySequence<SDAI.EntityReference> {
      switch self {
      case ._ATOM_BASED_TUPLE(let observable): return observable.entityReferences
      case ._MATHS_ATOM(let select): return select.entityReferences
      }
    }

    public mutating func configure(with observer: SDAI.EntityReferenceObserver) {
      switch self {
      case ._ATOM_BASED_TUPLE(var observable): 
        observable.configure(with: observer)
        self = ._ATOM_BASED_TUPLE(observable)
      case ._MATHS_ATOM(var select): 
        select.configure(with: observer)
        self = ._MATHS_ATOM(select)
      }
    }

    public mutating func teardownObserver() {
      switch self {
      case ._ATOM_BASED_TUPLE(var observable): 
        observable.teardownObserver()
        self = ._ATOM_BASED_TUPLE(observable)
      case ._MATHS_ATOM(var select): 
        select.teardownObserver()
        self = ._MATHS_ATOM(select)
      }
    }

    //MARK: SDAIAggregationBehavior
    public var aggregationHiBound: Int? {
      switch self {
      case ._ATOM_BASED_TUPLE(let aggregate): return aggregate.hiBound
      case ._MATHS_ATOM(let selection): return selection.aggregationHiBound
      }
    }
    public var aggregationHiIndex: Int? {
      switch self {
      case ._ATOM_BASED_TUPLE(let aggregate): return aggregate.hiIndex
      case ._MATHS_ATOM(let selection): return selection.aggregationHiIndex
      }
    }
    public var aggregationLoBound: Int? {
      switch self {
      case ._ATOM_BASED_TUPLE(let aggregate): return aggregate.loBound
      case ._MATHS_ATOM(let selection): return selection.aggregationLoBound
      }
    }
    public var aggregationLoIndex: Int? {
      switch self {
      case ._ATOM_BASED_TUPLE(let aggregate): return aggregate.loIndex
      case ._MATHS_ATOM(let selection): return selection.aggregationLoIndex
      }
    }
    public var aggregationSize: Int? {
      switch self {
      case ._ATOM_BASED_TUPLE(let aggregate): return aggregate.size
      case ._MATHS_ATOM(let selection): return selection.aggregationSize
      }
    }

    //MARK: WHERE RULE VALIDATION (SELECT TYPE)
    public static func validateWhereRules(instance:Self?, prefix:SDAI.WhereLabel) -> [SDAI.WhereLabel:SDAI.LOGICAL] {
      var result: [SDAI.WhereLabel:SDAI.LOGICAL] = [:]
      switch instance {
      case ._ATOM_BASED_TUPLE(let selectValue): 
        result = tATOM_BASED_TUPLE.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\ATOM_BASED_TUPLE")
      case ._MATHS_ATOM(let selectValue): result = sMATHS_ATOM.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\MATHS_ATOM")
      case nil: break
      }

      return result
    }

  }

}


//MARK: - SELECT TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sATOM_BASED_VALUE__type: SDAISelectType {

  //MARK: GROUP REFERENCES
  var super_tATOM_BASED_TUPLE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tATOM_BASED_TUPLE? { get }
  var super_sMATHS_ATOM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sMATHS_ATOM? { get }

}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sATOM_BASED_VALUE__subtype: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sATOM_BASED_VALUE__type, SDAIDefinedType
where Supertype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sATOM_BASED_VALUE__type
{}

public extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sATOM_BASED_VALUE__subtype {
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
  var super_tATOM_BASED_TUPLE: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tATOM_BASED_TUPLE? { rep.super_tATOM_BASED_TUPLE }
  var super_sMATHS_ATOM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sMATHS_ATOM? { rep.super_sMATHS_ATOM }

}
