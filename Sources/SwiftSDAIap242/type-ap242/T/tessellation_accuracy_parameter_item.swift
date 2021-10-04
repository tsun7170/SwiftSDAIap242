/* file: tessellation_accuracy_parameter_item.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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
  TYPE tessellation_accuracy_parameter_item = SELECT
    ( angular_deviation (*TYPE*),
     chordal_deviation (*TYPE*),
     length_to_height_ratio (*TYPE*),
     maximum_edge_length (*TYPE*),
     tessellated_facet_long_short_edge_ratio (*TYPE*) );
  END_TYPE; -- tessellation_accuracy_parameter_item (line:5733 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES FOR SELECT
/*
  angular_deviation (*TYPE*): angular_deviation

  chordal_deviation (*TYPE*): chordal_deviation

  length_to_height_ratio (*TYPE*): length_to_height_ratio

  maximum_edge_length (*TYPE*): maximum_edge_length

  tessellated_facet_long_short_edge_ratio (*TYPE*): tessellated_facet_long_short_edge_ratio

*/

/** SELECT type
- EXPRESS:
```express
  TYPE tessellation_accuracy_parameter_item = SELECT
    ( angular_deviation (*TYPE*),
     chordal_deviation (*TYPE*),
     length_to_height_ratio (*TYPE*),
     maximum_edge_length (*TYPE*),
     tessellated_facet_long_short_edge_ratio (*TYPE*) );
  END_TYPE; -- tessellation_accuracy_parameter_item (line:5733 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public enum sTESSELLATION_ACCURACY_PARAMETER_ITEM : SDAIValue, AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sTESSELLATION_ACCURACY_PARAMETER_ITEM__type {

    /// SELECT case ``tANGULAR_DEVIATION`` (TYPE) in ``sTESSELLATION_ACCURACY_PARAMETER_ITEM``
    case _ANGULAR_DEVIATION(tANGULAR_DEVIATION)	// (TYPE)

    /// SELECT case ``tCHORDAL_DEVIATION`` (TYPE) in ``sTESSELLATION_ACCURACY_PARAMETER_ITEM``
    case _CHORDAL_DEVIATION(tCHORDAL_DEVIATION)	// (TYPE)

    /// SELECT case ``tLENGTH_TO_HEIGHT_RATIO`` (TYPE) in ``sTESSELLATION_ACCURACY_PARAMETER_ITEM``
    case _LENGTH_TO_HEIGHT_RATIO(tLENGTH_TO_HEIGHT_RATIO)	// (TYPE)

    /// SELECT case ``tMAXIMUM_EDGE_LENGTH`` (TYPE) in ``sTESSELLATION_ACCURACY_PARAMETER_ITEM``
    case _MAXIMUM_EDGE_LENGTH(tMAXIMUM_EDGE_LENGTH)	// (TYPE)

    /// SELECT case ``tTESSELLATED_FACET_LONG_SHORT_EDGE_RATIO`` (TYPE) in ``sTESSELLATION_ACCURACY_PARAMETER_ITEM``
    case _TESSELLATED_FACET_LONG_SHORT_EDGE_RATIO(tTESSELLATED_FACET_LONG_SHORT_EDGE_RATIO)	// (TYPE)

    //MARK: - CONSTRUCTORS
    public init(fundamental: FundamentalType) { self = fundamental }

    public init?<T: SDAIUnderlyingType>(possiblyFrom underlyingType: T?){
      guard let underlyingType = underlyingType else { return nil }

      if let base = underlyingType as? tANGULAR_DEVIATION {
        self = ._ANGULAR_DEVIATION(base)
      }
      else if let base = underlyingType as? tCHORDAL_DEVIATION {
        self = ._CHORDAL_DEVIATION(base)
      }
      else if let base = underlyingType as? tLENGTH_TO_HEIGHT_RATIO {
        self = ._LENGTH_TO_HEIGHT_RATIO(base)
      }
      else if let base = underlyingType as? tMAXIMUM_EDGE_LENGTH {
        self = ._MAXIMUM_EDGE_LENGTH(base)
      }
      else if let base = underlyingType as? tTESSELLATED_FACET_LONG_SHORT_EDGE_RATIO {
        self = ._TESSELLATED_FACET_LONG_SHORT_EDGE_RATIO(base)
      }
      else if let fundamental = underlyingType.asFundamentalType as? tANGULAR_DEVIATION.FundamentalType {
        self = ._ANGULAR_DEVIATION( tANGULAR_DEVIATION(fundamental: fundamental) )
      }
      else if let fundamental = underlyingType.asFundamentalType as? tCHORDAL_DEVIATION.FundamentalType {
        self = ._CHORDAL_DEVIATION( tCHORDAL_DEVIATION(fundamental: fundamental) )
      }
      else if let fundamental = underlyingType.asFundamentalType as? tLENGTH_TO_HEIGHT_RATIO.FundamentalType {
        self = ._LENGTH_TO_HEIGHT_RATIO( tLENGTH_TO_HEIGHT_RATIO(fundamental: fundamental) )
      }
      else if let fundamental = underlyingType.asFundamentalType as? tMAXIMUM_EDGE_LENGTH.FundamentalType {
        self = ._MAXIMUM_EDGE_LENGTH( tMAXIMUM_EDGE_LENGTH(fundamental: fundamental) )
      }
      else if let fundamental = underlyingType.asFundamentalType as? tTESSELLATED_FACET_LONG_SHORT_EDGE_RATIO.FundamentalType {
        self = ._TESSELLATED_FACET_LONG_SHORT_EDGE_RATIO( tTESSELLATED_FACET_LONG_SHORT_EDGE_RATIO(fundamental: fundamental) )
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
      else if let base = tANGULAR_DEVIATION.convert(fromGeneric: select) {
        self = ._ANGULAR_DEVIATION(base)
      }
      else if let base = tCHORDAL_DEVIATION.convert(fromGeneric: select) {
        self = ._CHORDAL_DEVIATION(base)
      }
      else if let base = tLENGTH_TO_HEIGHT_RATIO.convert(fromGeneric: select) {
        self = ._LENGTH_TO_HEIGHT_RATIO(base)
      }
      else if let base = tMAXIMUM_EDGE_LENGTH.convert(fromGeneric: select) {
        self = ._MAXIMUM_EDGE_LENGTH(base)
      }
      else if let base = tTESSELLATED_FACET_LONG_SHORT_EDGE_RATIO.convert(fromGeneric: select) {
        self = ._TESSELLATED_FACET_LONG_SHORT_EDGE_RATIO(base)
      }
      else { return nil }
    }

    // InitializableByP21Parameter
    public static var bareTypeName: String = "TESSELLATION_ACCURACY_PARAMETER_ITEM"

    public init?(p21typedParam: P21Decode.ExchangeStructure.TypedParameter, from exchangeStructure: P21Decode.ExchangeStructure) {
      guard let keyword = p21typedParam.keyword.asStandardKeyword else { exchangeStructure.error = "unexpected p21parameter(\(p21typedParam)) while resolving \(Self.bareTypeName) select value"; return nil }

      switch(keyword) {
      case tANGULAR_DEVIATION.bareTypeName:
        guard let base = tANGULAR_DEVIATION(p21typedParam: p21typedParam, from: exchangeStructure) else { exchangeStructure.add(errorContext: "while resolving \(Self.bareTypeName) select value"); return nil }
        self = ._ANGULAR_DEVIATION(base)

      case tCHORDAL_DEVIATION.bareTypeName:
        guard let base = tCHORDAL_DEVIATION(p21typedParam: p21typedParam, from: exchangeStructure) else { exchangeStructure.add(errorContext: "while resolving \(Self.bareTypeName) select value"); return nil }
        self = ._CHORDAL_DEVIATION(base)

      case tLENGTH_TO_HEIGHT_RATIO.bareTypeName:
        guard let base = tLENGTH_TO_HEIGHT_RATIO(p21typedParam: p21typedParam, from: exchangeStructure) else { exchangeStructure.add(errorContext: "while resolving \(Self.bareTypeName) select value"); return nil }
        self = ._LENGTH_TO_HEIGHT_RATIO(base)

      case tMAXIMUM_EDGE_LENGTH.bareTypeName:
        guard let base = tMAXIMUM_EDGE_LENGTH(p21typedParam: p21typedParam, from: exchangeStructure) else { exchangeStructure.add(errorContext: "while resolving \(Self.bareTypeName) select value"); return nil }
        self = ._MAXIMUM_EDGE_LENGTH(base)

      case tTESSELLATED_FACET_LONG_SHORT_EDGE_RATIO.bareTypeName:
        guard let base = tTESSELLATED_FACET_LONG_SHORT_EDGE_RATIO(p21typedParam: p21typedParam, from: exchangeStructure) else { exchangeStructure.add(errorContext: "while resolving \(Self.bareTypeName) select value"); return nil }
        self = ._TESSELLATED_FACET_LONG_SHORT_EDGE_RATIO(base)

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
    public var super_tANGULAR_DEVIATION: tANGULAR_DEVIATION? {
      switch self {
      case ._ANGULAR_DEVIATION(let selectValue): return selectValue
      default: return nil
      }
    }

    public var super_tCHORDAL_DEVIATION: tCHORDAL_DEVIATION? {
      switch self {
      case ._CHORDAL_DEVIATION(let selectValue): return selectValue
      default: return nil
      }
    }

    public var super_tLENGTH_TO_HEIGHT_RATIO: tLENGTH_TO_HEIGHT_RATIO? {
      switch self {
      case ._LENGTH_TO_HEIGHT_RATIO(let selectValue): return selectValue
      default: return nil
      }
    }

    public var super_tMAXIMUM_EDGE_LENGTH: tMAXIMUM_EDGE_LENGTH? {
      switch self {
      case ._MAXIMUM_EDGE_LENGTH(let selectValue): return selectValue
      default: return nil
      }
    }

    public var super_tTESSELLATED_FACET_LONG_SHORT_EDGE_RATIO: tTESSELLATED_FACET_LONG_SHORT_EDGE_RATIO? {
      switch self {
      case ._TESSELLATED_FACET_LONG_SHORT_EDGE_RATIO(let selectValue): return selectValue
      default: return nil
      }
    }



    //MARK: - SDAIValue
    public func isValueEqual<T: SDAIValue>(to rhs: T) -> Bool {
      switch self {
      case ._ANGULAR_DEVIATION(let selection): return selection.value.isValueEqual(to: rhs)
      case ._CHORDAL_DEVIATION(let selection): return selection.value.isValueEqual(to: rhs)
      case ._LENGTH_TO_HEIGHT_RATIO(let selection): return selection.value.isValueEqual(to: rhs)
      case ._MAXIMUM_EDGE_LENGTH(let selection): return selection.value.isValueEqual(to: rhs)
      case ._TESSELLATED_FACET_LONG_SHORT_EDGE_RATIO(let selection): return selection.value.isValueEqual(to: rhs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?) -> Bool? {
      switch self {
      case ._ANGULAR_DEVIATION(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._CHORDAL_DEVIATION(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._LENGTH_TO_HEIGHT_RATIO(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._MAXIMUM_EDGE_LENGTH(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._TESSELLATED_FACET_LONG_SHORT_EDGE_RATIO(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      }
    }

    public func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      switch self {
      case ._ANGULAR_DEVIATION(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._CHORDAL_DEVIATION(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._LENGTH_TO_HEIGHT_RATIO(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._MAXIMUM_EDGE_LENGTH(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._TESSELLATED_FACET_LONG_SHORT_EDGE_RATIO(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      }
    }

    public func isValueEqual<T: SDAIValue>(to rhs: T, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      switch self {
      case ._ANGULAR_DEVIATION(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._CHORDAL_DEVIATION(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._LENGTH_TO_HEIGHT_RATIO(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._MAXIMUM_EDGE_LENGTH(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._TESSELLATED_FACET_LONG_SHORT_EDGE_RATIO(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      switch self {
      case ._ANGULAR_DEVIATION(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._CHORDAL_DEVIATION(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._LENGTH_TO_HEIGHT_RATIO(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._MAXIMUM_EDGE_LENGTH(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._TESSELLATED_FACET_LONG_SHORT_EDGE_RATIO(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      }
    }


    //MARK: SDAIGenericTypeBase
    public func copy() -> Self {
      switch self {
      case ._ANGULAR_DEVIATION(let selection): return ._ANGULAR_DEVIATION(selection.copy())
      case ._CHORDAL_DEVIATION(let selection): return ._CHORDAL_DEVIATION(selection.copy())
      case ._LENGTH_TO_HEIGHT_RATIO(let selection): return ._LENGTH_TO_HEIGHT_RATIO(selection.copy())
      case ._MAXIMUM_EDGE_LENGTH(let selection): return ._MAXIMUM_EDGE_LENGTH(selection.copy())
      case ._TESSELLATED_FACET_LONG_SHORT_EDGE_RATIO(let selection): return ._TESSELLATED_FACET_LONG_SHORT_EDGE_RATIO(selection.copy())
      }
    }

    //MARK: SDAIGenericType
    public var typeMembers: Set<SDAI.STRING> {
      var members: Set<SDAI.STRING> = [SDAI.STRING(Self.typeName)]
      switch self {
      case ._ANGULAR_DEVIATION(let selection): members.formUnion(selection.typeMembers)
      case ._CHORDAL_DEVIATION(let selection): members.formUnion(selection.typeMembers)
      case ._LENGTH_TO_HEIGHT_RATIO(let selection): members.formUnion(selection.typeMembers)
      case ._MAXIMUM_EDGE_LENGTH(let selection): members.formUnion(selection.typeMembers)
      case ._TESSELLATED_FACET_LONG_SHORT_EDGE_RATIO(let selection): members.formUnion(selection.typeMembers)
      }
      return members
    }

    public var entityReference: SDAI.EntityReference? {
      switch self {
      case ._ANGULAR_DEVIATION(let selection): return selection.entityReference
      case ._CHORDAL_DEVIATION(let selection): return selection.entityReference
      case ._LENGTH_TO_HEIGHT_RATIO(let selection): return selection.entityReference
      case ._MAXIMUM_EDGE_LENGTH(let selection): return selection.entityReference
      case ._TESSELLATED_FACET_LONG_SHORT_EDGE_RATIO(let selection): return selection.entityReference
      }
    }
    public var stringValue: SDAI.STRING? {
      switch self {
      case ._ANGULAR_DEVIATION(let selection): return selection.stringValue
      case ._CHORDAL_DEVIATION(let selection): return selection.stringValue
      case ._LENGTH_TO_HEIGHT_RATIO(let selection): return selection.stringValue
      case ._MAXIMUM_EDGE_LENGTH(let selection): return selection.stringValue
      case ._TESSELLATED_FACET_LONG_SHORT_EDGE_RATIO(let selection): return selection.stringValue
      }
    }
    public var binaryValue: SDAI.BINARY? {
      switch self {
      case ._ANGULAR_DEVIATION(let selection): return selection.binaryValue
      case ._CHORDAL_DEVIATION(let selection): return selection.binaryValue
      case ._LENGTH_TO_HEIGHT_RATIO(let selection): return selection.binaryValue
      case ._MAXIMUM_EDGE_LENGTH(let selection): return selection.binaryValue
      case ._TESSELLATED_FACET_LONG_SHORT_EDGE_RATIO(let selection): return selection.binaryValue
      }
    }
    public var logicalValue: SDAI.LOGICAL? {
      switch self {
      case ._ANGULAR_DEVIATION(let selection): return selection.logicalValue
      case ._CHORDAL_DEVIATION(let selection): return selection.logicalValue
      case ._LENGTH_TO_HEIGHT_RATIO(let selection): return selection.logicalValue
      case ._MAXIMUM_EDGE_LENGTH(let selection): return selection.logicalValue
      case ._TESSELLATED_FACET_LONG_SHORT_EDGE_RATIO(let selection): return selection.logicalValue
      }
    }
    public var booleanValue: SDAI.BOOLEAN? {
      switch self {
      case ._ANGULAR_DEVIATION(let selection): return selection.booleanValue
      case ._CHORDAL_DEVIATION(let selection): return selection.booleanValue
      case ._LENGTH_TO_HEIGHT_RATIO(let selection): return selection.booleanValue
      case ._MAXIMUM_EDGE_LENGTH(let selection): return selection.booleanValue
      case ._TESSELLATED_FACET_LONG_SHORT_EDGE_RATIO(let selection): return selection.booleanValue
      }
    }
    public var numberValue: SDAI.NUMBER? {
      switch self {
      case ._ANGULAR_DEVIATION(let selection): return selection.numberValue
      case ._CHORDAL_DEVIATION(let selection): return selection.numberValue
      case ._LENGTH_TO_HEIGHT_RATIO(let selection): return selection.numberValue
      case ._MAXIMUM_EDGE_LENGTH(let selection): return selection.numberValue
      case ._TESSELLATED_FACET_LONG_SHORT_EDGE_RATIO(let selection): return selection.numberValue
      }
    }
    public var realValue: SDAI.REAL? {
      switch self {
      case ._ANGULAR_DEVIATION(let selection): return selection.realValue
      case ._CHORDAL_DEVIATION(let selection): return selection.realValue
      case ._LENGTH_TO_HEIGHT_RATIO(let selection): return selection.realValue
      case ._MAXIMUM_EDGE_LENGTH(let selection): return selection.realValue
      case ._TESSELLATED_FACET_LONG_SHORT_EDGE_RATIO(let selection): return selection.realValue
      }
    }
    public var integerValue: SDAI.INTEGER? {
      switch self {
      case ._ANGULAR_DEVIATION(let selection): return selection.integerValue
      case ._CHORDAL_DEVIATION(let selection): return selection.integerValue
      case ._LENGTH_TO_HEIGHT_RATIO(let selection): return selection.integerValue
      case ._MAXIMUM_EDGE_LENGTH(let selection): return selection.integerValue
      case ._TESSELLATED_FACET_LONG_SHORT_EDGE_RATIO(let selection): return selection.integerValue
      }
    }
    public var genericEnumValue: SDAI.GenericEnumValue? {
      switch self {
      case ._ANGULAR_DEVIATION(let selection): return selection.genericEnumValue
      case ._CHORDAL_DEVIATION(let selection): return selection.genericEnumValue
      case ._LENGTH_TO_HEIGHT_RATIO(let selection): return selection.genericEnumValue
      case ._MAXIMUM_EDGE_LENGTH(let selection): return selection.genericEnumValue
      case ._TESSELLATED_FACET_LONG_SHORT_EDGE_RATIO(let selection): return selection.genericEnumValue
      }
    }
    public func arrayOptionalValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY_OPTIONAL<ELEM>? {
      switch self {
      case ._ANGULAR_DEVIATION(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._CHORDAL_DEVIATION(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._LENGTH_TO_HEIGHT_RATIO(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._MAXIMUM_EDGE_LENGTH(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._TESSELLATED_FACET_LONG_SHORT_EDGE_RATIO(let selection): return selection.arrayOptionalValue(elementType:elementType)
      }
    }
    public func arrayValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY<ELEM>? {
      switch self {
      case ._ANGULAR_DEVIATION(let selection): return selection.arrayValue(elementType:elementType)
      case ._CHORDAL_DEVIATION(let selection): return selection.arrayValue(elementType:elementType)
      case ._LENGTH_TO_HEIGHT_RATIO(let selection): return selection.arrayValue(elementType:elementType)
      case ._MAXIMUM_EDGE_LENGTH(let selection): return selection.arrayValue(elementType:elementType)
      case ._TESSELLATED_FACET_LONG_SHORT_EDGE_RATIO(let selection): return selection.arrayValue(elementType:elementType)
      }
    }
    public func listValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.LIST<ELEM>? {
      switch self {
      case ._ANGULAR_DEVIATION(let selection): return selection.listValue(elementType:elementType)
      case ._CHORDAL_DEVIATION(let selection): return selection.listValue(elementType:elementType)
      case ._LENGTH_TO_HEIGHT_RATIO(let selection): return selection.listValue(elementType:elementType)
      case ._MAXIMUM_EDGE_LENGTH(let selection): return selection.listValue(elementType:elementType)
      case ._TESSELLATED_FACET_LONG_SHORT_EDGE_RATIO(let selection): return selection.listValue(elementType:elementType)
      }
    }
    public func bagValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.BAG<ELEM>? {
      switch self {
      case ._ANGULAR_DEVIATION(let selection): return selection.bagValue(elementType:elementType)
      case ._CHORDAL_DEVIATION(let selection): return selection.bagValue(elementType:elementType)
      case ._LENGTH_TO_HEIGHT_RATIO(let selection): return selection.bagValue(elementType:elementType)
      case ._MAXIMUM_EDGE_LENGTH(let selection): return selection.bagValue(elementType:elementType)
      case ._TESSELLATED_FACET_LONG_SHORT_EDGE_RATIO(let selection): return selection.bagValue(elementType:elementType)
      }
    }
    public func setValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.SET<ELEM>? {
      switch self {
      case ._ANGULAR_DEVIATION(let selection): return selection.setValue(elementType:elementType)
      case ._CHORDAL_DEVIATION(let selection): return selection.setValue(elementType:elementType)
      case ._LENGTH_TO_HEIGHT_RATIO(let selection): return selection.setValue(elementType:elementType)
      case ._MAXIMUM_EDGE_LENGTH(let selection): return selection.setValue(elementType:elementType)
      case ._TESSELLATED_FACET_LONG_SHORT_EDGE_RATIO(let selection): return selection.setValue(elementType:elementType)
      }
    }
    public func enumValue<ENUM:SDAIEnumerationType>(enumType:ENUM.Type) -> ENUM? {
      switch self {
      case ._ANGULAR_DEVIATION(let selection): return selection.enumValue(enumType:enumType)
      case ._CHORDAL_DEVIATION(let selection): return selection.enumValue(enumType:enumType)
      case ._LENGTH_TO_HEIGHT_RATIO(let selection): return selection.enumValue(enumType:enumType)
      case ._MAXIMUM_EDGE_LENGTH(let selection): return selection.enumValue(enumType:enumType)
      case ._TESSELLATED_FACET_LONG_SHORT_EDGE_RATIO(let selection): return selection.enumValue(enumType:enumType)
      }
    }

    //MARK: SDAIUnderlyingType
    public typealias FundamentalType = Self
    public static var typeName: String = 
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.TESSELLATION_ACCURACY_PARAMETER_ITEM"
    public var asFundamentalType: FundamentalType { return self }

    //MARK: SDAIObservableAggregateElement
    public var entityReferences: AnySequence<SDAI.EntityReference> {
      switch self {
      case ._ANGULAR_DEVIATION: return AnySequence<SDAI.EntityReference>(EmptyCollection<SDAI.EntityReference>())
      case ._CHORDAL_DEVIATION: return AnySequence<SDAI.EntityReference>(EmptyCollection<SDAI.EntityReference>())
      case ._LENGTH_TO_HEIGHT_RATIO: return AnySequence<SDAI.EntityReference>(EmptyCollection<SDAI.EntityReference>())
      case ._MAXIMUM_EDGE_LENGTH: return AnySequence<SDAI.EntityReference>(EmptyCollection<SDAI.EntityReference>())
      case ._TESSELLATED_FACET_LONG_SHORT_EDGE_RATIO: return AnySequence<SDAI.EntityReference>(EmptyCollection<SDAI.EntityReference>())
      }
    }

    public mutating func configure(with observer: SDAI.EntityReferenceObserver) {
      switch self {
      case ._ANGULAR_DEVIATION: break
      case ._CHORDAL_DEVIATION: break
      case ._LENGTH_TO_HEIGHT_RATIO: break
      case ._MAXIMUM_EDGE_LENGTH: break
      case ._TESSELLATED_FACET_LONG_SHORT_EDGE_RATIO: break
      }
    }

    public mutating func teardownObserver() {
      switch self {
      case ._ANGULAR_DEVIATION: break
      case ._CHORDAL_DEVIATION: break
      case ._LENGTH_TO_HEIGHT_RATIO: break
      case ._MAXIMUM_EDGE_LENGTH: break
      case ._TESSELLATED_FACET_LONG_SHORT_EDGE_RATIO: break
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
      case ._ANGULAR_DEVIATION(let selectValue): 
        result = tANGULAR_DEVIATION.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\ANGULAR_DEVIATION")
      case ._CHORDAL_DEVIATION(let selectValue): 
        result = tCHORDAL_DEVIATION.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\CHORDAL_DEVIATION")
      case ._LENGTH_TO_HEIGHT_RATIO(let selectValue): 
        result = tLENGTH_TO_HEIGHT_RATIO.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\LENGTH_TO_HEIGHT_RATIO")
      case ._MAXIMUM_EDGE_LENGTH(let selectValue): 
        result = tMAXIMUM_EDGE_LENGTH.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\MAXIMUM_EDGE_LENGTH")
      case ._TESSELLATED_FACET_LONG_SHORT_EDGE_RATIO(let selectValue): 
        result = tTESSELLATED_FACET_LONG_SHORT_EDGE_RATIO.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\TESSELLATED_FACET_LONG_SHORT_EDGE_RATIO")
      case nil: break
      }

      return result
    }

  }

}


//MARK: - SELECT TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sTESSELLATION_ACCURACY_PARAMETER_ITEM__type: 
  SDAISelectType {

  //MARK: GROUP REFERENCES
  var super_tANGULAR_DEVIATION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tANGULAR_DEVIATION? { get }
  var super_tCHORDAL_DEVIATION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tCHORDAL_DEVIATION? { get }
  var super_tLENGTH_TO_HEIGHT_RATIO: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLENGTH_TO_HEIGHT_RATIO? { get }
  var super_tMAXIMUM_EDGE_LENGTH: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tMAXIMUM_EDGE_LENGTH? { get }
  var super_tTESSELLATED_FACET_LONG_SHORT_EDGE_RATIO: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tTESSELLATED_FACET_LONG_SHORT_EDGE_RATIO? { get }

}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sTESSELLATION_ACCURACY_PARAMETER_ITEM__subtype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sTESSELLATION_ACCURACY_PARAMETER_ITEM__type, SDAIDefinedType
where Supertype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sTESSELLATION_ACCURACY_PARAMETER_ITEM__type
{}

public extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sTESSELLATION_ACCURACY_PARAMETER_ITEM__subtype {
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
  var super_tANGULAR_DEVIATION: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tANGULAR_DEVIATION? { rep.super_tANGULAR_DEVIATION }
  var super_tCHORDAL_DEVIATION: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tCHORDAL_DEVIATION? { rep.super_tCHORDAL_DEVIATION }
  var super_tLENGTH_TO_HEIGHT_RATIO: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLENGTH_TO_HEIGHT_RATIO? { rep.super_tLENGTH_TO_HEIGHT_RATIO }
  var super_tMAXIMUM_EDGE_LENGTH: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tMAXIMUM_EDGE_LENGTH? { rep.super_tMAXIMUM_EDGE_LENGTH }
  var super_tTESSELLATED_FACET_LONG_SHORT_EDGE_RATIO: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tTESSELLATED_FACET_LONG_SHORT_EDGE_RATIO? { rep.super_tTESSELLATED_FACET_LONG_SHORT_EDGE_RATIO }

}

