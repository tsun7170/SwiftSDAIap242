/* file: gps_filtration_type.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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
  TYPE gps_filtration_type = SELECT
    ( geometric_tolerance_modifier (*ENUM*) );
  END_TYPE; -- gps_filtration_type (line:3417 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES FOR SELECT
/*
  geometric_tolerance_modifier (*ENUM*): geometric_tolerance_modifier

*/

/** SELECT type
- EXPRESS:
```express
  TYPE gps_filtration_type = SELECT
    ( geometric_tolerance_modifier (*ENUM*) );
  END_TYPE; -- gps_filtration_type (line:3417 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public enum sGPS_FILTRATION_TYPE : SDAIValue, AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sGPS_FILTRATION_TYPE__type {

    /// SELECT case ``nGEOMETRIC_TOLERANCE_MODIFIER`` (ENUM) in ``sGPS_FILTRATION_TYPE``
    case _GEOMETRIC_TOLERANCE_MODIFIER(nGEOMETRIC_TOLERANCE_MODIFIER)	// (ENUM)

    //MARK: - CONSTRUCTORS
    public init(fundamental: FundamentalType) { self = fundamental }

    public init?<T: SDAIUnderlyingType>(possiblyFrom underlyingType: T?){
      guard let underlyingType = underlyingType else { return nil }

      if let base = underlyingType as? nGEOMETRIC_TOLERANCE_MODIFIER {
        self = ._GEOMETRIC_TOLERANCE_MODIFIER(base)
      }
      else if let fundamental = underlyingType.asFundamentalType as? nGEOMETRIC_TOLERANCE_MODIFIER.FundamentalType {
        self = ._GEOMETRIC_TOLERANCE_MODIFIER( nGEOMETRIC_TOLERANCE_MODIFIER(fundamental: fundamental) )
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
      else if let base = nGEOMETRIC_TOLERANCE_MODIFIER.convert(fromGeneric: select) {
        self = ._GEOMETRIC_TOLERANCE_MODIFIER(base)
      }
      else { return nil }
    }

    // InitializableByP21Parameter
    public static var bareTypeName: String = "GPS_FILTRATION_TYPE"

    public init?(p21typedParam: P21Decode.ExchangeStructure.TypedParameter, from exchangeStructure: P21Decode.ExchangeStructure) {
      guard let keyword = p21typedParam.keyword.asStandardKeyword else { exchangeStructure.error = "unexpected p21parameter(\(p21typedParam)) while resolving \(Self.bareTypeName) select value"; return nil }

      switch(keyword) {
      case nGEOMETRIC_TOLERANCE_MODIFIER.bareTypeName:
        guard let base = nGEOMETRIC_TOLERANCE_MODIFIER(p21typedParam: p21typedParam, from: exchangeStructure) else { exchangeStructure.add(errorContext: "while resolving \(Self.bareTypeName) select value"); return nil }
        self = ._GEOMETRIC_TOLERANCE_MODIFIER(base)

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
    public var super_nGEOMETRIC_TOLERANCE_MODIFIER: nGEOMETRIC_TOLERANCE_MODIFIER? {
      switch self {
      case ._GEOMETRIC_TOLERANCE_MODIFIER(let selectValue): return selectValue
      }
    }



    //MARK: - SDAIValue
    public func isValueEqual<T: SDAIValue>(to rhs: T) -> Bool {
      switch self {
      case ._GEOMETRIC_TOLERANCE_MODIFIER(let selection): return selection.value.isValueEqual(to: rhs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?) -> Bool? {
      switch self {
      case ._GEOMETRIC_TOLERANCE_MODIFIER(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      }
    }

    public func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      switch self {
      case ._GEOMETRIC_TOLERANCE_MODIFIER(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      }
    }

    public func isValueEqual<T: SDAIValue>(to rhs: T, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      switch self {
      case ._GEOMETRIC_TOLERANCE_MODIFIER(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      switch self {
      case ._GEOMETRIC_TOLERANCE_MODIFIER(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      }
    }


    //MARK: SDAIGenericTypeBase
    public func copy() -> Self {
      switch self {
      case ._GEOMETRIC_TOLERANCE_MODIFIER(let selection): return ._GEOMETRIC_TOLERANCE_MODIFIER(selection.copy())
      }
    }

    //MARK: SDAIGenericType
    public var typeMembers: Set<SDAI.STRING> {
      var members: Set<SDAI.STRING> = [SDAI.STRING(Self.typeName)]
      switch self {
      case ._GEOMETRIC_TOLERANCE_MODIFIER(let selection): members.formUnion(selection.typeMembers)
      }
      return members
    }

    public var entityReference: SDAI.EntityReference? {
      switch self {
      case ._GEOMETRIC_TOLERANCE_MODIFIER(let selection): return selection.entityReference
      }
    }
    public var stringValue: SDAI.STRING? {
      switch self {
      case ._GEOMETRIC_TOLERANCE_MODIFIER(let selection): return selection.stringValue
      }
    }
    public var binaryValue: SDAI.BINARY? {
      switch self {
      case ._GEOMETRIC_TOLERANCE_MODIFIER(let selection): return selection.binaryValue
      }
    }
    public var logicalValue: SDAI.LOGICAL? {
      switch self {
      case ._GEOMETRIC_TOLERANCE_MODIFIER(let selection): return selection.logicalValue
      }
    }
    public var booleanValue: SDAI.BOOLEAN? {
      switch self {
      case ._GEOMETRIC_TOLERANCE_MODIFIER(let selection): return selection.booleanValue
      }
    }
    public var numberValue: SDAI.NUMBER? {
      switch self {
      case ._GEOMETRIC_TOLERANCE_MODIFIER(let selection): return selection.numberValue
      }
    }
    public var realValue: SDAI.REAL? {
      switch self {
      case ._GEOMETRIC_TOLERANCE_MODIFIER(let selection): return selection.realValue
      }
    }
    public var integerValue: SDAI.INTEGER? {
      switch self {
      case ._GEOMETRIC_TOLERANCE_MODIFIER(let selection): return selection.integerValue
      }
    }
    public var genericEnumValue: SDAI.GenericEnumValue? {
      switch self {
      case ._GEOMETRIC_TOLERANCE_MODIFIER(let selection): return selection.genericEnumValue
      }
    }
    public func arrayOptionalValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY_OPTIONAL<ELEM>? {
      switch self {
      case ._GEOMETRIC_TOLERANCE_MODIFIER(let selection): return selection.arrayOptionalValue(elementType:elementType)
      }
    }
    public func arrayValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY<ELEM>? {
      switch self {
      case ._GEOMETRIC_TOLERANCE_MODIFIER(let selection): return selection.arrayValue(elementType:elementType)
      }
    }
    public func listValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.LIST<ELEM>? {
      switch self {
      case ._GEOMETRIC_TOLERANCE_MODIFIER(let selection): return selection.listValue(elementType:elementType)
      }
    }
    public func bagValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.BAG<ELEM>? {
      switch self {
      case ._GEOMETRIC_TOLERANCE_MODIFIER(let selection): return selection.bagValue(elementType:elementType)
      }
    }
    public func setValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.SET<ELEM>? {
      switch self {
      case ._GEOMETRIC_TOLERANCE_MODIFIER(let selection): return selection.setValue(elementType:elementType)
      }
    }
    public func enumValue<ENUM:SDAIEnumerationType>(enumType:ENUM.Type) -> ENUM? {
      switch self {
      case ._GEOMETRIC_TOLERANCE_MODIFIER(let selection): return selection.enumValue(enumType:enumType)
      }
    }

    //MARK: SDAIUnderlyingType
    public typealias FundamentalType = Self
    public static var typeName: String = 
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.GPS_FILTRATION_TYPE"
    public var asFundamentalType: FundamentalType { return self }

    //MARK: SDAIObservableAggregateElement
    public var entityReferences: AnySequence<SDAI.EntityReference> {
      switch self {
      case ._GEOMETRIC_TOLERANCE_MODIFIER: return AnySequence<SDAI.EntityReference>(EmptyCollection<SDAI.EntityReference>())
      }
    }

    public mutating func configure(with observer: SDAI.EntityReferenceObserver) {
      switch self {
      case ._GEOMETRIC_TOLERANCE_MODIFIER: break
      }
    }

    public mutating func teardownObserver() {
      switch self {
      case ._GEOMETRIC_TOLERANCE_MODIFIER: break
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
      case ._GEOMETRIC_TOLERANCE_MODIFIER(let selectValue): 
        result = nGEOMETRIC_TOLERANCE_MODIFIER.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\GEOMETRIC_TOLERANCE_MODIFIER")
      case nil: break
      }

      return result
    }

  }

}


//MARK: - SELECT TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sGPS_FILTRATION_TYPE__type: SDAISelectType {

  //MARK: GROUP REFERENCES
  var super_nGEOMETRIC_TOLERANCE_MODIFIER: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.nGEOMETRIC_TOLERANCE_MODIFIER? { get }

}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sGPS_FILTRATION_TYPE__subtype: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sGPS_FILTRATION_TYPE__type, SDAIDefinedType
where Supertype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sGPS_FILTRATION_TYPE__type
{}

public extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sGPS_FILTRATION_TYPE__subtype {
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
  var super_nGEOMETRIC_TOLERANCE_MODIFIER: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.nGEOMETRIC_TOLERANCE_MODIFIER? { rep.super_nGEOMETRIC_TOLERANCE_MODIFIER }

}

