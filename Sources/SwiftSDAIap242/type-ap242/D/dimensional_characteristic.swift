/* file: dimensional_characteristic.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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
  TYPE dimensional_characteristic = SELECT
    ( dimensional_location (*ENTITY*),
     dimensional_size (*ENTITY*) );
  END_TYPE; -- dimensional_characteristic (line:2354 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES FOR SELECT
/*
  dimensional_location (*ENTITY*):
  ATTR:  description: text
  ATTR:  path: shape_aspect *** Multiple Select Case Sources ***
  ATTR:  id: identifier *** Multiple Select Case Sources ***
  ATTR:  related_shape_aspect: shape_aspect
  ATTR:  angle_selection: angle_relator *** Multiple Select Case Sources ***
  ATTR:  name: label *** Multiple Select Case Sources ***
  ATTR:  relating_shape_aspect: shape_aspect

  dimensional_size (*ENTITY*):
  ATTR:  path: shape_aspect *** Multiple Select Case Sources ***
  ATTR:  applies_to: shape_aspect
  ATTR:  id: identifier *** Multiple Select Case Sources ***
  ATTR:  angle_selection: angle_relator *** Multiple Select Case Sources ***
  ATTR:  name: label *** Multiple Select Case Sources ***

*/

/** SELECT type
- EXPRESS:
```express
  TYPE dimensional_characteristic = SELECT
    ( dimensional_location (*ENTITY*),
     dimensional_size (*ENTITY*) );
  END_TYPE; -- dimensional_characteristic (line:2354 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public enum sDIMENSIONAL_CHARACTERISTIC : SDAIValue, AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sDIMENSIONAL_CHARACTERISTIC__type {

    /// SELECT case ``eDIMENSIONAL_LOCATION`` (ENTITY) in ``sDIMENSIONAL_CHARACTERISTIC``
    case _DIMENSIONAL_LOCATION(eDIMENSIONAL_LOCATION)	// (ENTITY)

    /// SELECT case ``eDIMENSIONAL_SIZE`` (ENTITY) in ``sDIMENSIONAL_CHARACTERISTIC``
    case _DIMENSIONAL_SIZE(eDIMENSIONAL_SIZE)	// (ENTITY)

    //MARK: - CONSTRUCTORS
    public init(fundamental: FundamentalType) { self = fundamental }

    public init?<T: SDAIUnderlyingType>(possiblyFrom underlyingType: T?){
      return nil
    }

    public init?(possiblyFrom complex: SDAI.ComplexEntity?) {
      guard let complex = complex else { return nil }

      if let base = complex.entityReference(eDIMENSIONAL_LOCATION.self) {self = ._DIMENSIONAL_LOCATION(base) }
      else if let base = complex.entityReference(eDIMENSIONAL_SIZE.self) {self = ._DIMENSIONAL_SIZE(base) }
      else { return nil }
    }

    public init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let select = generic else { return nil }

      if let fundamental = select as? Self {
        self.init(fundamental: fundamental)
      }
      else if let base = eDIMENSIONAL_LOCATION.convert(fromGeneric: select) {
        self = ._DIMENSIONAL_LOCATION(base)
      }
      else if let base = eDIMENSIONAL_SIZE.convert(fromGeneric: select) {
        self = ._DIMENSIONAL_SIZE(base)
      }
      else { return nil }
    }

    // InitializableByP21Parameter
    public static var bareTypeName: String = "DIMENSIONAL_CHARACTERISTIC"

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
    public var super_eSHAPE_ASPECT_RELATIONSHIP: eSHAPE_ASPECT_RELATIONSHIP? {
      switch self {
      case ._DIMENSIONAL_LOCATION(let entity): return entity.super_eSHAPE_ASPECT_RELATIONSHIP
      default: return nil
      }
    }

    public var super_eDIMENSIONAL_SIZE: eDIMENSIONAL_SIZE? {
      switch self {
      case ._DIMENSIONAL_SIZE(let entity): return entity
      default: return nil
      }
    }

    public var super_eDIMENSIONAL_LOCATION: eDIMENSIONAL_LOCATION? {
      switch self {
      case ._DIMENSIONAL_LOCATION(let entity): return entity
      default: return nil
      }
    }


    //MARK: - ENTITY ATTRIBUTE REFERENCES
    /// attribute of SELECT type ``sDIMENSIONAL_CHARACTERISTIC``
    /// - origin: ENTITY( ``eDIMENSIONAL_LOCATION`` )
    public var DESCRIPTION: tTEXT?  {
      switch self {
      case ._DIMENSIONAL_LOCATION(let entity): return entity.DESCRIPTION
      default: return nil
      }
    }

    /// attribute of SELECT type ``sDIMENSIONAL_CHARACTERISTIC``
    /// - origin: ENTITY( ``eDIMENSIONAL_LOCATION`` )
    /// - origin: ENTITY( ``eDIMENSIONAL_SIZE`` )
    public var PATH: eSHAPE_ASPECT?  {
      switch self {
      case ._DIMENSIONAL_LOCATION(let entity): return entity.PATH
      case ._DIMENSIONAL_SIZE(let entity): return entity.PATH
      }
    }

    /// attribute of SELECT type ``sDIMENSIONAL_CHARACTERISTIC``
    /// - origin: ENTITY( ``eDIMENSIONAL_LOCATION`` )
    /// - origin: ENTITY( ``eDIMENSIONAL_SIZE`` )
    public var ID: tIDENTIFIER?  {
      switch self {
      case ._DIMENSIONAL_LOCATION(let entity): return entity.ID
      case ._DIMENSIONAL_SIZE(let entity): return entity.ID
      }
    }

    /// attribute of SELECT type ``sDIMENSIONAL_CHARACTERISTIC``
    /// - origin: ENTITY( ``eDIMENSIONAL_SIZE`` )
    public var APPLIES_TO: eSHAPE_ASPECT?  {
      switch self {
      case ._DIMENSIONAL_SIZE(let entity): return entity.APPLIES_TO
      default: return nil
      }
    }

    /// attribute of SELECT type ``sDIMENSIONAL_CHARACTERISTIC``
    /// - origin: ENTITY( ``eDIMENSIONAL_LOCATION`` )
    public var RELATED_SHAPE_ASPECT: eSHAPE_ASPECT?  {
      switch self {
      case ._DIMENSIONAL_LOCATION(let entity): return entity.RELATED_SHAPE_ASPECT
      default: return nil
      }
    }

    /// attribute of SELECT type ``sDIMENSIONAL_CHARACTERISTIC``
    /// - origin: ENTITY( ``eDIMENSIONAL_LOCATION`` )
    /// - origin: ENTITY( ``eDIMENSIONAL_SIZE`` )
    public var ANGLE_SELECTION: nANGLE_RELATOR?  {
      switch self {
      case ._DIMENSIONAL_LOCATION(let entity): return entity.ANGLE_SELECTION
      case ._DIMENSIONAL_SIZE(let entity): return entity.ANGLE_SELECTION
      }
    }

    /// attribute of SELECT type ``sDIMENSIONAL_CHARACTERISTIC``
    /// - origin: ENTITY( ``eDIMENSIONAL_LOCATION`` )
    /// - origin: ENTITY( ``eDIMENSIONAL_SIZE`` )
    public var NAME: tLABEL?  {
      switch self {
      case ._DIMENSIONAL_LOCATION(let entity): return entity.NAME
      case ._DIMENSIONAL_SIZE(let entity): return entity.NAME
      }
    }

    /// attribute of SELECT type ``sDIMENSIONAL_CHARACTERISTIC``
    /// - origin: ENTITY( ``eDIMENSIONAL_LOCATION`` )
    public var RELATING_SHAPE_ASPECT: eSHAPE_ASPECT?  {
      switch self {
      case ._DIMENSIONAL_LOCATION(let entity): return entity.RELATING_SHAPE_ASPECT
      default: return nil
      }
    }


    //MARK: - SDAIValue
    public func isValueEqual<T: SDAIValue>(to rhs: T) -> Bool {
      switch self {
      case ._DIMENSIONAL_LOCATION(let selection): return selection.value.isValueEqual(to: rhs)
      case ._DIMENSIONAL_SIZE(let selection): return selection.value.isValueEqual(to: rhs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?) -> Bool? {
      switch self {
      case ._DIMENSIONAL_LOCATION(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._DIMENSIONAL_SIZE(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      }
    }

    public func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      switch self {
      case ._DIMENSIONAL_LOCATION(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._DIMENSIONAL_SIZE(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      }
    }

    public func isValueEqual<T: SDAIValue>(to rhs: T, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      switch self {
      case ._DIMENSIONAL_LOCATION(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._DIMENSIONAL_SIZE(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      switch self {
      case ._DIMENSIONAL_LOCATION(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._DIMENSIONAL_SIZE(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      }
    }


    //MARK: SDAIGenericTypeBase
    public func copy() -> Self {
      switch self {
      case ._DIMENSIONAL_LOCATION(let selection): return ._DIMENSIONAL_LOCATION(selection.copy())
      case ._DIMENSIONAL_SIZE(let selection): return ._DIMENSIONAL_SIZE(selection.copy())
      }
    }

    //MARK: SDAIGenericType
    public var typeMembers: Set<SDAI.STRING> {
      var members: Set<SDAI.STRING> = [SDAI.STRING(Self.typeName)]
      switch self {
      case ._DIMENSIONAL_LOCATION(let selection): members.formUnion(selection.typeMembers)
      case ._DIMENSIONAL_SIZE(let selection): members.formUnion(selection.typeMembers)
      }
      return members
    }

    public var entityReference: SDAI.EntityReference? {
      switch self {
      case ._DIMENSIONAL_LOCATION(let selection): return selection.entityReference
      case ._DIMENSIONAL_SIZE(let selection): return selection.entityReference
      }
    }
    public var stringValue: SDAI.STRING? {
      switch self {
      case ._DIMENSIONAL_LOCATION(let selection): return selection.stringValue
      case ._DIMENSIONAL_SIZE(let selection): return selection.stringValue
      }
    }
    public var binaryValue: SDAI.BINARY? {
      switch self {
      case ._DIMENSIONAL_LOCATION(let selection): return selection.binaryValue
      case ._DIMENSIONAL_SIZE(let selection): return selection.binaryValue
      }
    }
    public var logicalValue: SDAI.LOGICAL? {
      switch self {
      case ._DIMENSIONAL_LOCATION(let selection): return selection.logicalValue
      case ._DIMENSIONAL_SIZE(let selection): return selection.logicalValue
      }
    }
    public var booleanValue: SDAI.BOOLEAN? {
      switch self {
      case ._DIMENSIONAL_LOCATION(let selection): return selection.booleanValue
      case ._DIMENSIONAL_SIZE(let selection): return selection.booleanValue
      }
    }
    public var numberValue: SDAI.NUMBER? {
      switch self {
      case ._DIMENSIONAL_LOCATION(let selection): return selection.numberValue
      case ._DIMENSIONAL_SIZE(let selection): return selection.numberValue
      }
    }
    public var realValue: SDAI.REAL? {
      switch self {
      case ._DIMENSIONAL_LOCATION(let selection): return selection.realValue
      case ._DIMENSIONAL_SIZE(let selection): return selection.realValue
      }
    }
    public var integerValue: SDAI.INTEGER? {
      switch self {
      case ._DIMENSIONAL_LOCATION(let selection): return selection.integerValue
      case ._DIMENSIONAL_SIZE(let selection): return selection.integerValue
      }
    }
    public var genericEnumValue: SDAI.GenericEnumValue? {
      switch self {
      case ._DIMENSIONAL_LOCATION(let selection): return selection.genericEnumValue
      case ._DIMENSIONAL_SIZE(let selection): return selection.genericEnumValue
      }
    }
    public func arrayOptionalValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY_OPTIONAL<ELEM>? {
      switch self {
      case ._DIMENSIONAL_LOCATION(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._DIMENSIONAL_SIZE(let selection): return selection.arrayOptionalValue(elementType:elementType)
      }
    }
    public func arrayValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY<ELEM>? {
      switch self {
      case ._DIMENSIONAL_LOCATION(let selection): return selection.arrayValue(elementType:elementType)
      case ._DIMENSIONAL_SIZE(let selection): return selection.arrayValue(elementType:elementType)
      }
    }
    public func listValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.LIST<ELEM>? {
      switch self {
      case ._DIMENSIONAL_LOCATION(let selection): return selection.listValue(elementType:elementType)
      case ._DIMENSIONAL_SIZE(let selection): return selection.listValue(elementType:elementType)
      }
    }
    public func bagValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.BAG<ELEM>? {
      switch self {
      case ._DIMENSIONAL_LOCATION(let selection): return selection.bagValue(elementType:elementType)
      case ._DIMENSIONAL_SIZE(let selection): return selection.bagValue(elementType:elementType)
      }
    }
    public func setValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.SET<ELEM>? {
      switch self {
      case ._DIMENSIONAL_LOCATION(let selection): return selection.setValue(elementType:elementType)
      case ._DIMENSIONAL_SIZE(let selection): return selection.setValue(elementType:elementType)
      }
    }
    public func enumValue<ENUM:SDAIEnumerationType>(enumType:ENUM.Type) -> ENUM? {
      switch self {
      case ._DIMENSIONAL_LOCATION(let selection): return selection.enumValue(enumType:enumType)
      case ._DIMENSIONAL_SIZE(let selection): return selection.enumValue(enumType:enumType)
      }
    }

    //MARK: SDAIUnderlyingType
    public typealias FundamentalType = Self
    public static var typeName: String = 
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DIMENSIONAL_CHARACTERISTIC"
    public var asFundamentalType: FundamentalType { return self }

    //MARK: SDAIObservableAggregateElement
    public var entityReferences: AnySequence<SDAI.EntityReference> {
      switch self {
      case ._DIMENSIONAL_LOCATION(let entity): return entity.entityReferences
      case ._DIMENSIONAL_SIZE(let entity): return entity.entityReferences
      }
    }

    public mutating func configure(with observer: SDAI.EntityReferenceObserver) {
      switch self {
      case ._DIMENSIONAL_LOCATION(let entity): 
        entity.configure(with: observer)
        self = ._DIMENSIONAL_LOCATION(entity)
      case ._DIMENSIONAL_SIZE(let entity): 
        entity.configure(with: observer)
        self = ._DIMENSIONAL_SIZE(entity)
      }
    }

    public mutating func teardownObserver() {
      switch self {
      case ._DIMENSIONAL_LOCATION(let entity): 
        entity.teardownObserver()
        self = ._DIMENSIONAL_LOCATION(entity)
      case ._DIMENSIONAL_SIZE(let entity): 
        entity.teardownObserver()
        self = ._DIMENSIONAL_SIZE(entity)
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
      case ._DIMENSIONAL_LOCATION(let selectValue): 
        result = eDIMENSIONAL_LOCATION.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\DIMENSIONAL_LOCATION")
      case ._DIMENSIONAL_SIZE(let selectValue): 
        result = eDIMENSIONAL_SIZE.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\DIMENSIONAL_SIZE")
      case nil: break
      }

      return result
    }

  }

}


//MARK: - SELECT TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sDIMENSIONAL_CHARACTERISTIC__type: 
  SDAISelectType {

  //MARK: GROUP REFERENCES
  var super_eSHAPE_ASPECT_RELATIONSHIP: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSHAPE_ASPECT_RELATIONSHIP? { get }
  var super_eDIMENSIONAL_SIZE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDIMENSIONAL_SIZE? { get }
  var super_eDIMENSIONAL_LOCATION: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDIMENSIONAL_LOCATION? { get }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var DESCRIPTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tTEXT?  { get }
  var PATH: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSHAPE_ASPECT?  { get }
  var ID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER?  { get }
  var APPLIES_TO: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSHAPE_ASPECT?  { get }
  var RELATED_SHAPE_ASPECT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSHAPE_ASPECT?  { get }
  var ANGLE_SELECTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.nANGLE_RELATOR?  { get }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { get }
  var RELATING_SHAPE_ASPECT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSHAPE_ASPECT?  { get }
}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sDIMENSIONAL_CHARACTERISTIC__subtype: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sDIMENSIONAL_CHARACTERISTIC__type, SDAIDefinedType
where Supertype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sDIMENSIONAL_CHARACTERISTIC__type
{}

public extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sDIMENSIONAL_CHARACTERISTIC__subtype {
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
  var super_eSHAPE_ASPECT_RELATIONSHIP: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSHAPE_ASPECT_RELATIONSHIP? { rep.super_eSHAPE_ASPECT_RELATIONSHIP }
  var super_eDIMENSIONAL_SIZE: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDIMENSIONAL_SIZE? { rep.super_eDIMENSIONAL_SIZE }
  var super_eDIMENSIONAL_LOCATION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDIMENSIONAL_LOCATION? { rep.super_eDIMENSIONAL_LOCATION }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var DESCRIPTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tTEXT?  { rep.DESCRIPTION }
  var PATH: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSHAPE_ASPECT?  { rep.PATH }
  var ID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER?  { rep.ID }
  var APPLIES_TO: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSHAPE_ASPECT?  { rep.APPLIES_TO }
  var RELATED_SHAPE_ASPECT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSHAPE_ASPECT?  { rep.RELATED_SHAPE_ASPECT }
  var ANGLE_SELECTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.nANGLE_RELATOR?  { rep.ANGLE_SELECTION }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { rep.NAME }
  var RELATING_SHAPE_ASPECT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSHAPE_ASPECT?  { rep.RELATING_SHAPE_ASPECT }
}

