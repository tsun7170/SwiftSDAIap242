/* file: tolerance_method_definition.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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
  TYPE tolerance_method_definition = SELECT
    ( limits_and_fits (*ENTITY*),
     tolerance_value (*ENTITY*) );
  END_TYPE; -- tolerance_method_definition (line:5849 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES FOR SELECT
/*
  limits_and_fits (*ENTITY*):
  ATTR:  form_variance: label
  ATTR:  grade: label
  ATTR:  source: text
  ATTR:  zone_variance: label

  tolerance_value (*ENTITY*):
  ATTR:  upper_bound: measure_with_unit
  ATTR:  lower_bound: measure_with_unit
  ATTR:  ubvc: REAL
  ATTR:  lbvc: REAL

*/

/** SELECT type
- EXPRESS:
```express
  TYPE tolerance_method_definition = SELECT
    ( limits_and_fits (*ENTITY*),
     tolerance_value (*ENTITY*) );
  END_TYPE; -- tolerance_method_definition (line:5849 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public enum sTOLERANCE_METHOD_DEFINITION : SDAIValue, AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sTOLERANCE_METHOD_DEFINITION__type {

    /// SELECT case ``eLIMITS_AND_FITS`` (ENTITY) in ``sTOLERANCE_METHOD_DEFINITION``
    case _LIMITS_AND_FITS(eLIMITS_AND_FITS)	// (ENTITY)

    /// SELECT case ``eTOLERANCE_VALUE`` (ENTITY) in ``sTOLERANCE_METHOD_DEFINITION``
    case _TOLERANCE_VALUE(eTOLERANCE_VALUE)	// (ENTITY)

    //MARK: - CONSTRUCTORS
    public init(fundamental: FundamentalType) { self = fundamental }

    public init?<T: SDAIUnderlyingType>(possiblyFrom underlyingType: T?){
      return nil
    }

    public init?(possiblyFrom complex: SDAI.ComplexEntity?) {
      guard let complex = complex else { return nil }

      if let base = complex.entityReference(eLIMITS_AND_FITS.self) {self = ._LIMITS_AND_FITS(base) }
      else if let base = complex.entityReference(eTOLERANCE_VALUE.self) {self = ._TOLERANCE_VALUE(base) }
      else { return nil }
    }

    public init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let select = generic else { return nil }

      if let fundamental = select as? Self {
        self.init(fundamental: fundamental)
      }
      else if let base = eLIMITS_AND_FITS.convert(fromGeneric: select) {
        self = ._LIMITS_AND_FITS(base)
      }
      else if let base = eTOLERANCE_VALUE.convert(fromGeneric: select) {
        self = ._TOLERANCE_VALUE(base)
      }
      else { return nil }
    }

    // InitializableByP21Parameter
    public static var bareTypeName: String = "TOLERANCE_METHOD_DEFINITION"

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
    public var super_eLIMITS_AND_FITS: eLIMITS_AND_FITS? {
      switch self {
      case ._LIMITS_AND_FITS(let entity): return entity
      default: return nil
      }
    }

    public var super_eTOLERANCE_VALUE: eTOLERANCE_VALUE? {
      switch self {
      case ._TOLERANCE_VALUE(let entity): return entity
      default: return nil
      }
    }


    //MARK: - ENTITY ATTRIBUTE REFERENCES
    /// attribute of SELECT type ``sTOLERANCE_METHOD_DEFINITION``
    /// - origin: ENTITY( ``eTOLERANCE_VALUE`` )
    public var UPPER_BOUND: eMEASURE_WITH_UNIT?  {
      switch self {
      case ._TOLERANCE_VALUE(let entity): return entity.UPPER_BOUND
      default: return nil
      }
    }

    /// attribute of SELECT type ``sTOLERANCE_METHOD_DEFINITION``
    /// - origin: ENTITY( ``eLIMITS_AND_FITS`` )
    public var FORM_VARIANCE: tLABEL?  {
      switch self {
      case ._LIMITS_AND_FITS(let entity): return entity.FORM_VARIANCE
      default: return nil
      }
    }

    /// attribute of SELECT type ``sTOLERANCE_METHOD_DEFINITION``
    /// - origin: ENTITY( ``eLIMITS_AND_FITS`` )
    public var GRADE: tLABEL?  {
      switch self {
      case ._LIMITS_AND_FITS(let entity): return entity.GRADE
      default: return nil
      }
    }

    /// attribute of SELECT type ``sTOLERANCE_METHOD_DEFINITION``
    /// - origin: ENTITY( ``eTOLERANCE_VALUE`` )
    public var LOWER_BOUND: eMEASURE_WITH_UNIT?  {
      switch self {
      case ._TOLERANCE_VALUE(let entity): return entity.LOWER_BOUND
      default: return nil
      }
    }

    /// attribute of SELECT type ``sTOLERANCE_METHOD_DEFINITION``
    /// - origin: ENTITY( ``eTOLERANCE_VALUE`` )
    public var UBVC: SDAI.REAL?  {
      switch self {
      case ._TOLERANCE_VALUE(let entity): return entity.UBVC
      default: return nil
      }
    }

    /// attribute of SELECT type ``sTOLERANCE_METHOD_DEFINITION``
    /// - origin: ENTITY( ``eLIMITS_AND_FITS`` )
    public var SOURCE: tTEXT?  {
      switch self {
      case ._LIMITS_AND_FITS(let entity): return entity.SOURCE
      default: return nil
      }
    }

    /// attribute of SELECT type ``sTOLERANCE_METHOD_DEFINITION``
    /// - origin: ENTITY( ``eTOLERANCE_VALUE`` )
    public var LBVC: SDAI.REAL?  {
      switch self {
      case ._TOLERANCE_VALUE(let entity): return entity.LBVC
      default: return nil
      }
    }

    /// attribute of SELECT type ``sTOLERANCE_METHOD_DEFINITION``
    /// - origin: ENTITY( ``eLIMITS_AND_FITS`` )
    public var ZONE_VARIANCE: tLABEL?  {
      switch self {
      case ._LIMITS_AND_FITS(let entity): return entity.ZONE_VARIANCE
      default: return nil
      }
    }


    //MARK: - SDAIValue
    public func isValueEqual<T: SDAIValue>(to rhs: T) -> Bool {
      switch self {
      case ._LIMITS_AND_FITS(let selection): return selection.value.isValueEqual(to: rhs)
      case ._TOLERANCE_VALUE(let selection): return selection.value.isValueEqual(to: rhs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?) -> Bool? {
      switch self {
      case ._LIMITS_AND_FITS(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._TOLERANCE_VALUE(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      }
    }

    public func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      switch self {
      case ._LIMITS_AND_FITS(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._TOLERANCE_VALUE(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      }
    }

    public func isValueEqual<T: SDAIValue>(to rhs: T, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      switch self {
      case ._LIMITS_AND_FITS(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._TOLERANCE_VALUE(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      switch self {
      case ._LIMITS_AND_FITS(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._TOLERANCE_VALUE(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      }
    }


    //MARK: SDAIGenericTypeBase
    public func copy() -> Self {
      switch self {
      case ._LIMITS_AND_FITS(let selection): return ._LIMITS_AND_FITS(selection.copy())
      case ._TOLERANCE_VALUE(let selection): return ._TOLERANCE_VALUE(selection.copy())
      }
    }

    //MARK: SDAIGenericType
    public var typeMembers: Set<SDAI.STRING> {
      var members: Set<SDAI.STRING> = [SDAI.STRING(Self.typeName)]
      switch self {
      case ._LIMITS_AND_FITS(let selection): members.formUnion(selection.typeMembers)
      case ._TOLERANCE_VALUE(let selection): members.formUnion(selection.typeMembers)
      }
      return members
    }

    public var entityReference: SDAI.EntityReference? {
      switch self {
      case ._LIMITS_AND_FITS(let selection): return selection.entityReference
      case ._TOLERANCE_VALUE(let selection): return selection.entityReference
      }
    }
    public var stringValue: SDAI.STRING? {
      switch self {
      case ._LIMITS_AND_FITS(let selection): return selection.stringValue
      case ._TOLERANCE_VALUE(let selection): return selection.stringValue
      }
    }
    public var binaryValue: SDAI.BINARY? {
      switch self {
      case ._LIMITS_AND_FITS(let selection): return selection.binaryValue
      case ._TOLERANCE_VALUE(let selection): return selection.binaryValue
      }
    }
    public var logicalValue: SDAI.LOGICAL? {
      switch self {
      case ._LIMITS_AND_FITS(let selection): return selection.logicalValue
      case ._TOLERANCE_VALUE(let selection): return selection.logicalValue
      }
    }
    public var booleanValue: SDAI.BOOLEAN? {
      switch self {
      case ._LIMITS_AND_FITS(let selection): return selection.booleanValue
      case ._TOLERANCE_VALUE(let selection): return selection.booleanValue
      }
    }
    public var numberValue: SDAI.NUMBER? {
      switch self {
      case ._LIMITS_AND_FITS(let selection): return selection.numberValue
      case ._TOLERANCE_VALUE(let selection): return selection.numberValue
      }
    }
    public var realValue: SDAI.REAL? {
      switch self {
      case ._LIMITS_AND_FITS(let selection): return selection.realValue
      case ._TOLERANCE_VALUE(let selection): return selection.realValue
      }
    }
    public var integerValue: SDAI.INTEGER? {
      switch self {
      case ._LIMITS_AND_FITS(let selection): return selection.integerValue
      case ._TOLERANCE_VALUE(let selection): return selection.integerValue
      }
    }
    public var genericEnumValue: SDAI.GenericEnumValue? {
      switch self {
      case ._LIMITS_AND_FITS(let selection): return selection.genericEnumValue
      case ._TOLERANCE_VALUE(let selection): return selection.genericEnumValue
      }
    }
    public func arrayOptionalValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY_OPTIONAL<ELEM>? {
      switch self {
      case ._LIMITS_AND_FITS(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._TOLERANCE_VALUE(let selection): return selection.arrayOptionalValue(elementType:elementType)
      }
    }
    public func arrayValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY<ELEM>? {
      switch self {
      case ._LIMITS_AND_FITS(let selection): return selection.arrayValue(elementType:elementType)
      case ._TOLERANCE_VALUE(let selection): return selection.arrayValue(elementType:elementType)
      }
    }
    public func listValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.LIST<ELEM>? {
      switch self {
      case ._LIMITS_AND_FITS(let selection): return selection.listValue(elementType:elementType)
      case ._TOLERANCE_VALUE(let selection): return selection.listValue(elementType:elementType)
      }
    }
    public func bagValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.BAG<ELEM>? {
      switch self {
      case ._LIMITS_AND_FITS(let selection): return selection.bagValue(elementType:elementType)
      case ._TOLERANCE_VALUE(let selection): return selection.bagValue(elementType:elementType)
      }
    }
    public func setValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.SET<ELEM>? {
      switch self {
      case ._LIMITS_AND_FITS(let selection): return selection.setValue(elementType:elementType)
      case ._TOLERANCE_VALUE(let selection): return selection.setValue(elementType:elementType)
      }
    }
    public func enumValue<ENUM:SDAIEnumerationType>(enumType:ENUM.Type) -> ENUM? {
      switch self {
      case ._LIMITS_AND_FITS(let selection): return selection.enumValue(enumType:enumType)
      case ._TOLERANCE_VALUE(let selection): return selection.enumValue(enumType:enumType)
      }
    }

    //MARK: SDAIUnderlyingType
    public typealias FundamentalType = Self
    public static var typeName: String = 
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.TOLERANCE_METHOD_DEFINITION"
    public var asFundamentalType: FundamentalType { return self }

    //MARK: SDAIObservableAggregateElement
    public var entityReferences: AnySequence<SDAI.EntityReference> {
      switch self {
      case ._LIMITS_AND_FITS(let entity): return entity.entityReferences
      case ._TOLERANCE_VALUE(let entity): return entity.entityReferences
      }
    }

    public mutating func configure(with observer: SDAI.EntityReferenceObserver) {
      switch self {
      case ._LIMITS_AND_FITS(let entity): 
        entity.configure(with: observer)
        self = ._LIMITS_AND_FITS(entity)
      case ._TOLERANCE_VALUE(let entity): 
        entity.configure(with: observer)
        self = ._TOLERANCE_VALUE(entity)
      }
    }

    public mutating func teardownObserver() {
      switch self {
      case ._LIMITS_AND_FITS(let entity): 
        entity.teardownObserver()
        self = ._LIMITS_AND_FITS(entity)
      case ._TOLERANCE_VALUE(let entity): 
        entity.teardownObserver()
        self = ._TOLERANCE_VALUE(entity)
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
      case ._LIMITS_AND_FITS(let selectValue): 
        result = eLIMITS_AND_FITS.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\LIMITS_AND_FITS")
      case ._TOLERANCE_VALUE(let selectValue): 
        result = eTOLERANCE_VALUE.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\TOLERANCE_VALUE")
      case nil: break
      }

      return result
    }

  }

}


//MARK: - SELECT TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sTOLERANCE_METHOD_DEFINITION__type: 
  SDAISelectType {

  //MARK: GROUP REFERENCES
  var super_eLIMITS_AND_FITS: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eLIMITS_AND_FITS? { get }
  var super_eTOLERANCE_VALUE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eTOLERANCE_VALUE? { get }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var UPPER_BOUND: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eMEASURE_WITH_UNIT?  { get }
  var FORM_VARIANCE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { get }
  var GRADE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { get }
  var LOWER_BOUND: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eMEASURE_WITH_UNIT?  { get }
  var UBVC: SDAI.REAL?  { get }
  var SOURCE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tTEXT?  { get }
  var LBVC: SDAI.REAL?  { get }
  var ZONE_VARIANCE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { get }
}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sTOLERANCE_METHOD_DEFINITION__subtype: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sTOLERANCE_METHOD_DEFINITION__type, SDAIDefinedType
where Supertype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sTOLERANCE_METHOD_DEFINITION__type
{}

public extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sTOLERANCE_METHOD_DEFINITION__subtype {
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
  var super_eLIMITS_AND_FITS: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eLIMITS_AND_FITS? { rep.super_eLIMITS_AND_FITS }
  var super_eTOLERANCE_VALUE: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eTOLERANCE_VALUE? { rep.super_eTOLERANCE_VALUE }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var UPPER_BOUND: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eMEASURE_WITH_UNIT?  { rep.UPPER_BOUND }
  var FORM_VARIANCE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { rep.FORM_VARIANCE }
  var GRADE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { rep.GRADE }
  var LOWER_BOUND: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eMEASURE_WITH_UNIT?  { rep.LOWER_BOUND }
  var UBVC: SDAI.REAL?  { rep.UBVC }
  var SOURCE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tTEXT?  { rep.SOURCE }
  var LBVC: SDAI.REAL?  { rep.LBVC }
  var ZONE_VARIANCE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { rep.ZONE_VARIANCE }
}

