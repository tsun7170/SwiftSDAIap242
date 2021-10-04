/* file: target_annotated_3d_model_select.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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
  TYPE target_annotated_3d_model_select = SELECT
    ( shape_representation_relationship (*ENTITY*) );
  END_TYPE; -- target_annotated_3d_model_select (line:5714 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES FOR SELECT
/*
  shape_representation_relationship (*ENTITY*):
  ATTR:  description: text
  ATTR:  rep_1: representation_or_representation_reference
  ATTR:  rep_2: representation_or_representation_reference
  ATTR:  name: label

*/

/** SELECT type
- EXPRESS:
```express
  TYPE target_annotated_3d_model_select = SELECT
    ( shape_representation_relationship (*ENTITY*) );
  END_TYPE; -- target_annotated_3d_model_select (line:5714 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public enum sTARGET_ANNOTATED_3D_MODEL_SELECT : SDAIValue, AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sTARGET_ANNOTATED_3D_MODEL_SELECT__type {

    /// SELECT case ``eSHAPE_REPRESENTATION_RELATIONSHIP`` (ENTITY) in ``sTARGET_ANNOTATED_3D_MODEL_SELECT``
    case _SHAPE_REPRESENTATION_RELATIONSHIP(eSHAPE_REPRESENTATION_RELATIONSHIP)	// (ENTITY)

    //MARK: - CONSTRUCTORS
    public init(fundamental: FundamentalType) { self = fundamental }

    public init?<T: SDAIUnderlyingType>(possiblyFrom underlyingType: T?){
      return nil
    }

    public init?(possiblyFrom complex: SDAI.ComplexEntity?) {
      guard let complex = complex else { return nil }

      if let base = complex.entityReference(eSHAPE_REPRESENTATION_RELATIONSHIP.self) {self = ._SHAPE_REPRESENTATION_RELATIONSHIP(base) }
      else { return nil }
    }

    public init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let select = generic else { return nil }

      if let fundamental = select as? Self {
        self.init(fundamental: fundamental)
      }
      else if let base = eSHAPE_REPRESENTATION_RELATIONSHIP.convert(fromGeneric: select) {
        self = ._SHAPE_REPRESENTATION_RELATIONSHIP(base)
      }
      else { return nil }
    }

    // InitializableByP21Parameter
    public static var bareTypeName: String = "TARGET_ANNOTATED_3D_MODEL_SELECT"

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
    public var super_eREPRESENTATION_RELATIONSHIP: eREPRESENTATION_RELATIONSHIP? {
      switch self {
      case ._SHAPE_REPRESENTATION_RELATIONSHIP(let entity): return entity.super_eREPRESENTATION_RELATIONSHIP
      }
    }

    public var super_eSHAPE_REPRESENTATION_RELATIONSHIP: eSHAPE_REPRESENTATION_RELATIONSHIP? {
      switch self {
      case ._SHAPE_REPRESENTATION_RELATIONSHIP(let entity): return entity
      }
    }


    //MARK: - ENTITY ATTRIBUTE REFERENCES
    /// attribute of SELECT type ``sTARGET_ANNOTATED_3D_MODEL_SELECT``
    /// - origin: ENTITY( ``eSHAPE_REPRESENTATION_RELATIONSHIP`` )
    public var DESCRIPTION: tTEXT?  {
      switch self {
      case ._SHAPE_REPRESENTATION_RELATIONSHIP(let entity): return entity.DESCRIPTION
      }
    }

    /// attribute of SELECT type ``sTARGET_ANNOTATED_3D_MODEL_SELECT``
    /// - origin: ENTITY( ``eSHAPE_REPRESENTATION_RELATIONSHIP`` )
    public var REP_1: sREPRESENTATION_OR_REPRESENTATION_REFERENCE?  {
      switch self {
      case ._SHAPE_REPRESENTATION_RELATIONSHIP(let entity): return entity.REP_1
      }
    }

    /// attribute of SELECT type ``sTARGET_ANNOTATED_3D_MODEL_SELECT``
    /// - origin: ENTITY( ``eSHAPE_REPRESENTATION_RELATIONSHIP`` )
    public var REP_2: sREPRESENTATION_OR_REPRESENTATION_REFERENCE?  {
      switch self {
      case ._SHAPE_REPRESENTATION_RELATIONSHIP(let entity): return entity.REP_2
      }
    }

    /// attribute of SELECT type ``sTARGET_ANNOTATED_3D_MODEL_SELECT``
    /// - origin: ENTITY( ``eSHAPE_REPRESENTATION_RELATIONSHIP`` )
    public var NAME: tLABEL?  {
      switch self {
      case ._SHAPE_REPRESENTATION_RELATIONSHIP(let entity): return entity.NAME
      }
    }


    //MARK: - SDAIValue
    public func isValueEqual<T: SDAIValue>(to rhs: T) -> Bool {
      switch self {
      case ._SHAPE_REPRESENTATION_RELATIONSHIP(let selection): return selection.value.isValueEqual(to: rhs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?) -> Bool? {
      switch self {
      case ._SHAPE_REPRESENTATION_RELATIONSHIP(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      }
    }

    public func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      switch self {
      case ._SHAPE_REPRESENTATION_RELATIONSHIP(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      }
    }

    public func isValueEqual<T: SDAIValue>(to rhs: T, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      switch self {
      case ._SHAPE_REPRESENTATION_RELATIONSHIP(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      switch self {
      case ._SHAPE_REPRESENTATION_RELATIONSHIP(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      }
    }


    //MARK: SDAIGenericTypeBase
    public func copy() -> Self {
      switch self {
      case ._SHAPE_REPRESENTATION_RELATIONSHIP(let selection): return ._SHAPE_REPRESENTATION_RELATIONSHIP(selection.copy())
      }
    }

    //MARK: SDAIGenericType
    public var typeMembers: Set<SDAI.STRING> {
      var members: Set<SDAI.STRING> = [SDAI.STRING(Self.typeName)]
      switch self {
      case ._SHAPE_REPRESENTATION_RELATIONSHIP(let selection): members.formUnion(selection.typeMembers)
      }
      return members
    }

    public var entityReference: SDAI.EntityReference? {
      switch self {
      case ._SHAPE_REPRESENTATION_RELATIONSHIP(let selection): return selection.entityReference
      }
    }
    public var stringValue: SDAI.STRING? {
      switch self {
      case ._SHAPE_REPRESENTATION_RELATIONSHIP(let selection): return selection.stringValue
      }
    }
    public var binaryValue: SDAI.BINARY? {
      switch self {
      case ._SHAPE_REPRESENTATION_RELATIONSHIP(let selection): return selection.binaryValue
      }
    }
    public var logicalValue: SDAI.LOGICAL? {
      switch self {
      case ._SHAPE_REPRESENTATION_RELATIONSHIP(let selection): return selection.logicalValue
      }
    }
    public var booleanValue: SDAI.BOOLEAN? {
      switch self {
      case ._SHAPE_REPRESENTATION_RELATIONSHIP(let selection): return selection.booleanValue
      }
    }
    public var numberValue: SDAI.NUMBER? {
      switch self {
      case ._SHAPE_REPRESENTATION_RELATIONSHIP(let selection): return selection.numberValue
      }
    }
    public var realValue: SDAI.REAL? {
      switch self {
      case ._SHAPE_REPRESENTATION_RELATIONSHIP(let selection): return selection.realValue
      }
    }
    public var integerValue: SDAI.INTEGER? {
      switch self {
      case ._SHAPE_REPRESENTATION_RELATIONSHIP(let selection): return selection.integerValue
      }
    }
    public var genericEnumValue: SDAI.GenericEnumValue? {
      switch self {
      case ._SHAPE_REPRESENTATION_RELATIONSHIP(let selection): return selection.genericEnumValue
      }
    }
    public func arrayOptionalValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY_OPTIONAL<ELEM>? {
      switch self {
      case ._SHAPE_REPRESENTATION_RELATIONSHIP(let selection): return selection.arrayOptionalValue(elementType:elementType)
      }
    }
    public func arrayValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY<ELEM>? {
      switch self {
      case ._SHAPE_REPRESENTATION_RELATIONSHIP(let selection): return selection.arrayValue(elementType:elementType)
      }
    }
    public func listValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.LIST<ELEM>? {
      switch self {
      case ._SHAPE_REPRESENTATION_RELATIONSHIP(let selection): return selection.listValue(elementType:elementType)
      }
    }
    public func bagValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.BAG<ELEM>? {
      switch self {
      case ._SHAPE_REPRESENTATION_RELATIONSHIP(let selection): return selection.bagValue(elementType:elementType)
      }
    }
    public func setValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.SET<ELEM>? {
      switch self {
      case ._SHAPE_REPRESENTATION_RELATIONSHIP(let selection): return selection.setValue(elementType:elementType)
      }
    }
    public func enumValue<ENUM:SDAIEnumerationType>(enumType:ENUM.Type) -> ENUM? {
      switch self {
      case ._SHAPE_REPRESENTATION_RELATIONSHIP(let selection): return selection.enumValue(enumType:enumType)
      }
    }

    //MARK: SDAIUnderlyingType
    public typealias FundamentalType = Self
    public static var typeName: String = 
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.TARGET_ANNOTATED_3D_MODEL_SELECT"
    public var asFundamentalType: FundamentalType { return self }

    //MARK: SDAIObservableAggregateElement
    public var entityReferences: AnySequence<SDAI.EntityReference> {
      switch self {
      case ._SHAPE_REPRESENTATION_RELATIONSHIP(let entity): return entity.entityReferences
      }
    }

    public mutating func configure(with observer: SDAI.EntityReferenceObserver) {
      switch self {
      case ._SHAPE_REPRESENTATION_RELATIONSHIP(let entity): 
        entity.configure(with: observer)
        self = ._SHAPE_REPRESENTATION_RELATIONSHIP(entity)
      }
    }

    public mutating func teardownObserver() {
      switch self {
      case ._SHAPE_REPRESENTATION_RELATIONSHIP(let entity): 
        entity.teardownObserver()
        self = ._SHAPE_REPRESENTATION_RELATIONSHIP(entity)
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
      case ._SHAPE_REPRESENTATION_RELATIONSHIP(let selectValue): 
        result = eSHAPE_REPRESENTATION_RELATIONSHIP.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\SHAPE_REPRESENTATION_RELATIONSHIP")
      case nil: break
      }

      return result
    }

  }

}


//MARK: - SELECT TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sTARGET_ANNOTATED_3D_MODEL_SELECT__type: 
  SDAISelectType {

  //MARK: GROUP REFERENCES
  var super_eREPRESENTATION_RELATIONSHIP: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION_RELATIONSHIP? { get }
  var super_eSHAPE_REPRESENTATION_RELATIONSHIP: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSHAPE_REPRESENTATION_RELATIONSHIP? { get }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var DESCRIPTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tTEXT?  { get }
  var REP_1: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sREPRESENTATION_OR_REPRESENTATION_REFERENCE?  { get }
  var REP_2: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sREPRESENTATION_OR_REPRESENTATION_REFERENCE?  { get }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { get }
}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sTARGET_ANNOTATED_3D_MODEL_SELECT__subtype: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sTARGET_ANNOTATED_3D_MODEL_SELECT__type, SDAIDefinedType
where Supertype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sTARGET_ANNOTATED_3D_MODEL_SELECT__type
{}

public extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sTARGET_ANNOTATED_3D_MODEL_SELECT__subtype {
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
  var super_eREPRESENTATION_RELATIONSHIP: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION_RELATIONSHIP? { rep.super_eREPRESENTATION_RELATIONSHIP }
  var super_eSHAPE_REPRESENTATION_RELATIONSHIP: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSHAPE_REPRESENTATION_RELATIONSHIP? { rep.super_eSHAPE_REPRESENTATION_RELATIONSHIP }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var DESCRIPTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tTEXT?  { rep.DESCRIPTION }
  var REP_1: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sREPRESENTATION_OR_REPRESENTATION_REFERENCE?  { rep.REP_1 }
  var REP_2: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sREPRESENTATION_OR_REPRESENTATION_REFERENCE?  { rep.REP_2 }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { rep.NAME }
}

