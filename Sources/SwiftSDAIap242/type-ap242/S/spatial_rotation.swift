/* file: spatial_rotation.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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
  TYPE spatial_rotation = SELECT
    ( rotation_about_direction (*ENTITY*),
     ypr_rotation (*TYPE*) );
  END_TYPE; -- spatial_rotation (line:5503 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES FOR SELECT
/*
  rotation_about_direction (*ENTITY*):
  ATTR:  rotation_angle: plane_angle_measure
  ATTR:  direction_of_axis: direction
  ATTR:  name: label
  ATTR:  dim: dimension_count

  ypr_rotation (*TYPE*): ypr_rotation

*/

/** SELECT type
- EXPRESS:
```express
  TYPE spatial_rotation = SELECT
    ( rotation_about_direction (*ENTITY*),
     ypr_rotation (*TYPE*) );
  END_TYPE; -- spatial_rotation (line:5503 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public enum sSPATIAL_ROTATION : SDAIValue, AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sSPATIAL_ROTATION__type {

    /// SELECT case ``eROTATION_ABOUT_DIRECTION`` (ENTITY) in ``sSPATIAL_ROTATION``
    case _ROTATION_ABOUT_DIRECTION(eROTATION_ABOUT_DIRECTION)	// (ENTITY)

    /// SELECT case ``tYPR_ROTATION`` (TYPE) in ``sSPATIAL_ROTATION``
    case _YPR_ROTATION(tYPR_ROTATION)	// (TYPE)

    //MARK: - CONSTRUCTORS
    public init(fundamental: FundamentalType) { self = fundamental }

    public init?<T: SDAIUnderlyingType>(possiblyFrom underlyingType: T?){
      guard let underlyingType = underlyingType else { return nil }

      if let base = underlyingType as? tYPR_ROTATION {
        self = ._YPR_ROTATION(base)
      }
      else if let fundamental = underlyingType.asFundamentalType as? tYPR_ROTATION.FundamentalType {
        self = ._YPR_ROTATION( tYPR_ROTATION(fundamental: fundamental) )
      }
      else { return nil }
    }

    public init?(possiblyFrom complex: SDAI.ComplexEntity?) {
      guard let complex = complex else { return nil }

      if let base = complex.entityReference(eROTATION_ABOUT_DIRECTION.self) {self = ._ROTATION_ABOUT_DIRECTION(base) }
      else { return nil }
    }

    public init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let select = generic else { return nil }

      if let fundamental = select as? Self {
        self.init(fundamental: fundamental)
      }
      else if let base = eROTATION_ABOUT_DIRECTION.convert(fromGeneric: select) {
        self = ._ROTATION_ABOUT_DIRECTION(base)
      }
      else if let base = tYPR_ROTATION.convert(fromGeneric: select) {
        self = ._YPR_ROTATION(base)
      }
      else { return nil }
    }

    // InitializableByP21Parameter
    public static var bareTypeName: String = "SPATIAL_ROTATION"

    public init?(p21typedParam: P21Decode.ExchangeStructure.TypedParameter, from exchangeStructure: P21Decode.ExchangeStructure) {
      guard let keyword = p21typedParam.keyword.asStandardKeyword else { exchangeStructure.error = "unexpected p21parameter(\(p21typedParam)) while resolving \(Self.bareTypeName) select value"; return nil }

      switch(keyword) {
      case tYPR_ROTATION.bareTypeName:
        guard let base = tYPR_ROTATION(p21typedParam: p21typedParam, from: exchangeStructure) else { exchangeStructure.add(errorContext: "while resolving \(Self.bareTypeName) select value"); return nil }
        self = ._YPR_ROTATION(base)

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
    public var super_tYPR_ROTATION: tYPR_ROTATION? {
      switch self {
      case ._YPR_ROTATION(let selectValue): return selectValue
      default: return nil
      }
    }

    //MARK: - ENTITY UNDERLYING TYPE REFERENCES
    public var super_eROTATION_ABOUT_DIRECTION: eROTATION_ABOUT_DIRECTION? {
      switch self {
      case ._ROTATION_ABOUT_DIRECTION(let entity): return entity
      default: return nil
      }
    }

    public var super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM? {
      switch self {
      case ._ROTATION_ABOUT_DIRECTION(let entity): return entity.super_eREPRESENTATION_ITEM
      default: return nil
      }
    }

    public var super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM? {
      switch self {
      case ._ROTATION_ABOUT_DIRECTION(let entity): return entity.super_eGEOMETRIC_REPRESENTATION_ITEM
      default: return nil
      }
    }


    //MARK: - ENTITY ATTRIBUTE REFERENCES
    /// attribute of SELECT type ``sSPATIAL_ROTATION``
    /// - origin: ENTITY( ``eROTATION_ABOUT_DIRECTION`` )
    public var ROTATION_ANGLE: tPLANE_ANGLE_MEASURE?  {
      switch self {
      case ._ROTATION_ABOUT_DIRECTION(let entity): return entity.ROTATION_ANGLE
      default: return nil
      }
    }

    /// attribute of SELECT type ``sSPATIAL_ROTATION``
    /// - origin: ENTITY( ``eROTATION_ABOUT_DIRECTION`` )
    public var DIRECTION_OF_AXIS: eDIRECTION?  {
      switch self {
      case ._ROTATION_ABOUT_DIRECTION(let entity): return entity.DIRECTION_OF_AXIS
      default: return nil
      }
    }

    /// attribute of SELECT type ``sSPATIAL_ROTATION``
    /// - origin: ENTITY( ``eROTATION_ABOUT_DIRECTION`` )
    public var NAME: tLABEL?  {
      switch self {
      case ._ROTATION_ABOUT_DIRECTION(let entity): return entity.NAME
      default: return nil
      }
    }

    /// attribute of SELECT type ``sSPATIAL_ROTATION``
    /// - origin: ENTITY( ``eROTATION_ABOUT_DIRECTION`` )
    public var DIM: tDIMENSION_COUNT?  {
      switch self {
      case ._ROTATION_ABOUT_DIRECTION(let entity): return entity.DIM
      default: return nil
      }
    }


    //MARK: - SDAIValue
    public func isValueEqual<T: SDAIValue>(to rhs: T) -> Bool {
      switch self {
      case ._ROTATION_ABOUT_DIRECTION(let selection): return selection.value.isValueEqual(to: rhs)
      case ._YPR_ROTATION(let selection): return selection.value.isValueEqual(to: rhs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?) -> Bool? {
      switch self {
      case ._ROTATION_ABOUT_DIRECTION(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._YPR_ROTATION(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      }
    }

    public func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      switch self {
      case ._ROTATION_ABOUT_DIRECTION(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._YPR_ROTATION(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      }
    }

    public func isValueEqual<T: SDAIValue>(to rhs: T, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      switch self {
      case ._ROTATION_ABOUT_DIRECTION(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._YPR_ROTATION(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      switch self {
      case ._ROTATION_ABOUT_DIRECTION(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._YPR_ROTATION(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      }
    }


    //MARK: SDAIGenericTypeBase
    public func copy() -> Self {
      switch self {
      case ._ROTATION_ABOUT_DIRECTION(let selection): return ._ROTATION_ABOUT_DIRECTION(selection.copy())
      case ._YPR_ROTATION(let selection): return ._YPR_ROTATION(selection.copy())
      }
    }

    //MARK: SDAIGenericType
    public var typeMembers: Set<SDAI.STRING> {
      var members: Set<SDAI.STRING> = [SDAI.STRING(Self.typeName)]
      switch self {
      case ._ROTATION_ABOUT_DIRECTION(let selection): members.formUnion(selection.typeMembers)
      case ._YPR_ROTATION(let selection): members.formUnion(selection.typeMembers)
      }
      return members
    }

    public var entityReference: SDAI.EntityReference? {
      switch self {
      case ._ROTATION_ABOUT_DIRECTION(let selection): return selection.entityReference
      case ._YPR_ROTATION(let selection): return selection.entityReference
      }
    }
    public var stringValue: SDAI.STRING? {
      switch self {
      case ._ROTATION_ABOUT_DIRECTION(let selection): return selection.stringValue
      case ._YPR_ROTATION(let selection): return selection.stringValue
      }
    }
    public var binaryValue: SDAI.BINARY? {
      switch self {
      case ._ROTATION_ABOUT_DIRECTION(let selection): return selection.binaryValue
      case ._YPR_ROTATION(let selection): return selection.binaryValue
      }
    }
    public var logicalValue: SDAI.LOGICAL? {
      switch self {
      case ._ROTATION_ABOUT_DIRECTION(let selection): return selection.logicalValue
      case ._YPR_ROTATION(let selection): return selection.logicalValue
      }
    }
    public var booleanValue: SDAI.BOOLEAN? {
      switch self {
      case ._ROTATION_ABOUT_DIRECTION(let selection): return selection.booleanValue
      case ._YPR_ROTATION(let selection): return selection.booleanValue
      }
    }
    public var numberValue: SDAI.NUMBER? {
      switch self {
      case ._ROTATION_ABOUT_DIRECTION(let selection): return selection.numberValue
      case ._YPR_ROTATION(let selection): return selection.numberValue
      }
    }
    public var realValue: SDAI.REAL? {
      switch self {
      case ._ROTATION_ABOUT_DIRECTION(let selection): return selection.realValue
      case ._YPR_ROTATION(let selection): return selection.realValue
      }
    }
    public var integerValue: SDAI.INTEGER? {
      switch self {
      case ._ROTATION_ABOUT_DIRECTION(let selection): return selection.integerValue
      case ._YPR_ROTATION(let selection): return selection.integerValue
      }
    }
    public var genericEnumValue: SDAI.GenericEnumValue? {
      switch self {
      case ._ROTATION_ABOUT_DIRECTION(let selection): return selection.genericEnumValue
      case ._YPR_ROTATION(let selection): return selection.genericEnumValue
      }
    }
    public func arrayOptionalValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY_OPTIONAL<ELEM>? {
      switch self {
      case ._ROTATION_ABOUT_DIRECTION(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._YPR_ROTATION(let selection): return selection.arrayOptionalValue(elementType:elementType)
      }
    }
    public func arrayValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY<ELEM>? {
      switch self {
      case ._ROTATION_ABOUT_DIRECTION(let selection): return selection.arrayValue(elementType:elementType)
      case ._YPR_ROTATION(let selection): return selection.arrayValue(elementType:elementType)
      }
    }
    public func listValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.LIST<ELEM>? {
      switch self {
      case ._ROTATION_ABOUT_DIRECTION(let selection): return selection.listValue(elementType:elementType)
      case ._YPR_ROTATION(let selection): return selection.listValue(elementType:elementType)
      }
    }
    public func bagValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.BAG<ELEM>? {
      switch self {
      case ._ROTATION_ABOUT_DIRECTION(let selection): return selection.bagValue(elementType:elementType)
      case ._YPR_ROTATION(let selection): return selection.bagValue(elementType:elementType)
      }
    }
    public func setValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.SET<ELEM>? {
      switch self {
      case ._ROTATION_ABOUT_DIRECTION(let selection): return selection.setValue(elementType:elementType)
      case ._YPR_ROTATION(let selection): return selection.setValue(elementType:elementType)
      }
    }
    public func enumValue<ENUM:SDAIEnumerationType>(enumType:ENUM.Type) -> ENUM? {
      switch self {
      case ._ROTATION_ABOUT_DIRECTION(let selection): return selection.enumValue(enumType:enumType)
      case ._YPR_ROTATION(let selection): return selection.enumValue(enumType:enumType)
      }
    }

    //MARK: SDAIUnderlyingType
    public typealias FundamentalType = Self
    public static var typeName: String = "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SPATIAL_ROTATION"
    public var asFundamentalType: FundamentalType { return self }

    //MARK: SDAIObservableAggregateElement
    public var entityReferences: AnySequence<SDAI.EntityReference> {
      switch self {
      case ._ROTATION_ABOUT_DIRECTION(let entity): return entity.entityReferences
      case ._YPR_ROTATION: return AnySequence<SDAI.EntityReference>(EmptyCollection<SDAI.EntityReference>())
      }
    }

    public mutating func configure(with observer: SDAI.EntityReferenceObserver) {
      switch self {
      case ._ROTATION_ABOUT_DIRECTION(let entity): 
        entity.configure(with: observer)
        self = ._ROTATION_ABOUT_DIRECTION(entity)
      case ._YPR_ROTATION: break
      }
    }

    public mutating func teardownObserver() {
      switch self {
      case ._ROTATION_ABOUT_DIRECTION(let entity): 
        entity.teardownObserver()
        self = ._ROTATION_ABOUT_DIRECTION(entity)
      case ._YPR_ROTATION: break
      }
    }

    //MARK: SDAIAggregationBehavior
    public var aggregationHiBound: Int? {
      switch self {
      case ._YPR_ROTATION(let aggregate): return aggregate.hiBound
      default: return nil
      }
    }
    public var aggregationHiIndex: Int? {
      switch self {
      case ._YPR_ROTATION(let aggregate): return aggregate.hiIndex
      default: return nil
      }
    }
    public var aggregationLoBound: Int? {
      switch self {
      case ._YPR_ROTATION(let aggregate): return aggregate.loBound
      default: return nil
      }
    }
    public var aggregationLoIndex: Int? {
      switch self {
      case ._YPR_ROTATION(let aggregate): return aggregate.loIndex
      default: return nil
      }
    }
    public var aggregationSize: Int? {
      switch self {
      case ._YPR_ROTATION(let aggregate): return aggregate.size
      default: return nil
      }
    }

    //MARK: WHERE RULE VALIDATION (SELECT TYPE)
    public static func validateWhereRules(instance:Self?, prefix:SDAI.WhereLabel) -> [SDAI.WhereLabel:SDAI.LOGICAL] {
      var result: [SDAI.WhereLabel:SDAI.LOGICAL] = [:]
      switch instance {
      case ._ROTATION_ABOUT_DIRECTION(let selectValue): 
        result = eROTATION_ABOUT_DIRECTION.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\ROTATION_ABOUT_DIRECTION")
      case ._YPR_ROTATION(let selectValue): result = tYPR_ROTATION.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\YPR_ROTATION")
      case nil: break
      }

      return result
    }

  }

}


//MARK: - SELECT TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sSPATIAL_ROTATION__type: SDAISelectType {

  //MARK: GROUP REFERENCES
  var super_tYPR_ROTATION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tYPR_ROTATION? { get }
  var super_eROTATION_ABOUT_DIRECTION: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eROTATION_ABOUT_DIRECTION? { get }
  var super_eREPRESENTATION_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION_ITEM? { get }
  var super_eGEOMETRIC_REPRESENTATION_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eGEOMETRIC_REPRESENTATION_ITEM? { get }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var ROTATION_ANGLE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tPLANE_ANGLE_MEASURE?  { get }
  var DIRECTION_OF_AXIS: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDIRECTION?  { get }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { get }
  var DIM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tDIMENSION_COUNT?  { get }
}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sSPATIAL_ROTATION__subtype: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sSPATIAL_ROTATION__type, SDAIDefinedType
where Supertype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sSPATIAL_ROTATION__type
{}

public extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sSPATIAL_ROTATION__subtype {
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
  var super_tYPR_ROTATION: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tYPR_ROTATION? { rep.super_tYPR_ROTATION }
  var super_eROTATION_ABOUT_DIRECTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eROTATION_ABOUT_DIRECTION? { rep.super_eROTATION_ABOUT_DIRECTION }
  var super_eREPRESENTATION_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION_ITEM? { rep.super_eREPRESENTATION_ITEM }
  var super_eGEOMETRIC_REPRESENTATION_ITEM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eGEOMETRIC_REPRESENTATION_ITEM? { rep.super_eGEOMETRIC_REPRESENTATION_ITEM }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var ROTATION_ANGLE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tPLANE_ANGLE_MEASURE?  { rep.ROTATION_ANGLE }
  var DIRECTION_OF_AXIS: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDIRECTION?  { rep.DIRECTION_OF_AXIS }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { rep.NAME }
  var DIM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tDIMENSION_COUNT?  { rep.DIM }
}

