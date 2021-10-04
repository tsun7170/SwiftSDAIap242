/* file: length_or_plane_angle_measure_with_unit_select.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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
  TYPE length_or_plane_angle_measure_with_unit_select = SELECT
    ( length_measure_with_unit (*ENTITY*),
     plane_angle_measure_with_unit (*ENTITY*) );
  END_TYPE; -- length_or_plane_angle_measure_with_unit_select (line:3937 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES FOR SELECT
/*
  length_measure_with_unit (*ENTITY*):
  ATTR:  unit_component: unit
  ATTR:  value_component: measure_value

  plane_angle_measure_with_unit (*ENTITY*):
  ATTR:  unit_component: unit
  ATTR:  value_component: measure_value

*/

/** SELECT type
- EXPRESS:
```express
  TYPE length_or_plane_angle_measure_with_unit_select = SELECT
    ( length_measure_with_unit (*ENTITY*),
     plane_angle_measure_with_unit (*ENTITY*) );
  END_TYPE; -- length_or_plane_angle_measure_with_unit_select (line:3937 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public enum sLENGTH_OR_PLANE_ANGLE_MEASURE_WITH_UNIT_SELECT : SDAIValue, 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sLENGTH_OR_PLANE_ANGLE_MEASURE_WITH_UNIT_SELECT__type {

    /// SELECT case ``eLENGTH_MEASURE_WITH_UNIT`` (ENTITY) in ``sLENGTH_OR_PLANE_ANGLE_MEASURE_WITH_UNIT_SELECT``
    case _LENGTH_MEASURE_WITH_UNIT(eLENGTH_MEASURE_WITH_UNIT)	// (ENTITY)

    /// SELECT case ``ePLANE_ANGLE_MEASURE_WITH_UNIT`` (ENTITY) in ``sLENGTH_OR_PLANE_ANGLE_MEASURE_WITH_UNIT_SELECT``
    case _PLANE_ANGLE_MEASURE_WITH_UNIT(ePLANE_ANGLE_MEASURE_WITH_UNIT)	// (ENTITY)

    //MARK: - CONSTRUCTORS
    public init(fundamental: FundamentalType) { self = fundamental }

    public init?<T: SDAIUnderlyingType>(possiblyFrom underlyingType: T?){
      return nil
    }

    public init?(possiblyFrom complex: SDAI.ComplexEntity?) {
      guard let complex = complex else { return nil }

      if let base = complex.entityReference(eLENGTH_MEASURE_WITH_UNIT.self) {self = ._LENGTH_MEASURE_WITH_UNIT(base) }
      else if let base = complex.entityReference(ePLANE_ANGLE_MEASURE_WITH_UNIT.self) {self = ._PLANE_ANGLE_MEASURE_WITH_UNIT(base) }
      else { return nil }
    }

    public init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let select = generic else { return nil }

      if let fundamental = select as? Self {
        self.init(fundamental: fundamental)
      }
      else if let base = eLENGTH_MEASURE_WITH_UNIT.convert(fromGeneric: select) {
        self = ._LENGTH_MEASURE_WITH_UNIT(base)
      }
      else if let base = ePLANE_ANGLE_MEASURE_WITH_UNIT.convert(fromGeneric: select) {
        self = ._PLANE_ANGLE_MEASURE_WITH_UNIT(base)
      }
      else { return nil }
    }

    // InitializableByP21Parameter
    public static var bareTypeName: String = "LENGTH_OR_PLANE_ANGLE_MEASURE_WITH_UNIT_SELECT"

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
    public var super_eMEASURE_WITH_UNIT: eMEASURE_WITH_UNIT? {
      switch self {
      case ._LENGTH_MEASURE_WITH_UNIT(let entity): return entity.super_eMEASURE_WITH_UNIT
      case ._PLANE_ANGLE_MEASURE_WITH_UNIT(let entity): return entity.super_eMEASURE_WITH_UNIT
      }
    }

    public var super_eLENGTH_MEASURE_WITH_UNIT: eLENGTH_MEASURE_WITH_UNIT? {
      switch self {
      case ._LENGTH_MEASURE_WITH_UNIT(let entity): return entity
      default: return nil
      }
    }

    public var super_ePLANE_ANGLE_MEASURE_WITH_UNIT: ePLANE_ANGLE_MEASURE_WITH_UNIT? {
      switch self {
      case ._PLANE_ANGLE_MEASURE_WITH_UNIT(let entity): return entity
      default: return nil
      }
    }


    //MARK: - ENTITY ATTRIBUTE REFERENCES
    /// attribute of SELECT type ``sLENGTH_OR_PLANE_ANGLE_MEASURE_WITH_UNIT_SELECT``
    /// - origin: ENTITY( ``eLENGTH_MEASURE_WITH_UNIT`` )
    /// - origin: ENTITY( ``ePLANE_ANGLE_MEASURE_WITH_UNIT`` )
    public var UNIT_COMPONENT: sUNIT?  {
      switch self {
      case ._LENGTH_MEASURE_WITH_UNIT(let entity): return entity.UNIT_COMPONENT
      case ._PLANE_ANGLE_MEASURE_WITH_UNIT(let entity): return entity.UNIT_COMPONENT
      }
    }

    /// attribute of SELECT type ``sLENGTH_OR_PLANE_ANGLE_MEASURE_WITH_UNIT_SELECT``
    /// - origin: ENTITY( ``eLENGTH_MEASURE_WITH_UNIT`` )
    /// - origin: ENTITY( ``ePLANE_ANGLE_MEASURE_WITH_UNIT`` )
    public var VALUE_COMPONENT: sMEASURE_VALUE?  {
      switch self {
      case ._LENGTH_MEASURE_WITH_UNIT(let entity): return entity.VALUE_COMPONENT
      case ._PLANE_ANGLE_MEASURE_WITH_UNIT(let entity): return entity.VALUE_COMPONENT
      }
    }


    //MARK: - SDAIValue
    public func isValueEqual<T: SDAIValue>(to rhs: T) -> Bool {
      switch self {
      case ._LENGTH_MEASURE_WITH_UNIT(let selection): return selection.value.isValueEqual(to: rhs)
      case ._PLANE_ANGLE_MEASURE_WITH_UNIT(let selection): return selection.value.isValueEqual(to: rhs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?) -> Bool? {
      switch self {
      case ._LENGTH_MEASURE_WITH_UNIT(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._PLANE_ANGLE_MEASURE_WITH_UNIT(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      }
    }

    public func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      switch self {
      case ._LENGTH_MEASURE_WITH_UNIT(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._PLANE_ANGLE_MEASURE_WITH_UNIT(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      }
    }

    public func isValueEqual<T: SDAIValue>(to rhs: T, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      switch self {
      case ._LENGTH_MEASURE_WITH_UNIT(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._PLANE_ANGLE_MEASURE_WITH_UNIT(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      switch self {
      case ._LENGTH_MEASURE_WITH_UNIT(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._PLANE_ANGLE_MEASURE_WITH_UNIT(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      }
    }


    //MARK: SDAIGenericTypeBase
    public func copy() -> Self {
      switch self {
      case ._LENGTH_MEASURE_WITH_UNIT(let selection): return ._LENGTH_MEASURE_WITH_UNIT(selection.copy())
      case ._PLANE_ANGLE_MEASURE_WITH_UNIT(let selection): return ._PLANE_ANGLE_MEASURE_WITH_UNIT(selection.copy())
      }
    }

    //MARK: SDAIGenericType
    public var typeMembers: Set<SDAI.STRING> {
      var members: Set<SDAI.STRING> = [SDAI.STRING(Self.typeName)]
      switch self {
      case ._LENGTH_MEASURE_WITH_UNIT(let selection): members.formUnion(selection.typeMembers)
      case ._PLANE_ANGLE_MEASURE_WITH_UNIT(let selection): members.formUnion(selection.typeMembers)
      }
      return members
    }

    public var entityReference: SDAI.EntityReference? {
      switch self {
      case ._LENGTH_MEASURE_WITH_UNIT(let selection): return selection.entityReference
      case ._PLANE_ANGLE_MEASURE_WITH_UNIT(let selection): return selection.entityReference
      }
    }
    public var stringValue: SDAI.STRING? {
      switch self {
      case ._LENGTH_MEASURE_WITH_UNIT(let selection): return selection.stringValue
      case ._PLANE_ANGLE_MEASURE_WITH_UNIT(let selection): return selection.stringValue
      }
    }
    public var binaryValue: SDAI.BINARY? {
      switch self {
      case ._LENGTH_MEASURE_WITH_UNIT(let selection): return selection.binaryValue
      case ._PLANE_ANGLE_MEASURE_WITH_UNIT(let selection): return selection.binaryValue
      }
    }
    public var logicalValue: SDAI.LOGICAL? {
      switch self {
      case ._LENGTH_MEASURE_WITH_UNIT(let selection): return selection.logicalValue
      case ._PLANE_ANGLE_MEASURE_WITH_UNIT(let selection): return selection.logicalValue
      }
    }
    public var booleanValue: SDAI.BOOLEAN? {
      switch self {
      case ._LENGTH_MEASURE_WITH_UNIT(let selection): return selection.booleanValue
      case ._PLANE_ANGLE_MEASURE_WITH_UNIT(let selection): return selection.booleanValue
      }
    }
    public var numberValue: SDAI.NUMBER? {
      switch self {
      case ._LENGTH_MEASURE_WITH_UNIT(let selection): return selection.numberValue
      case ._PLANE_ANGLE_MEASURE_WITH_UNIT(let selection): return selection.numberValue
      }
    }
    public var realValue: SDAI.REAL? {
      switch self {
      case ._LENGTH_MEASURE_WITH_UNIT(let selection): return selection.realValue
      case ._PLANE_ANGLE_MEASURE_WITH_UNIT(let selection): return selection.realValue
      }
    }
    public var integerValue: SDAI.INTEGER? {
      switch self {
      case ._LENGTH_MEASURE_WITH_UNIT(let selection): return selection.integerValue
      case ._PLANE_ANGLE_MEASURE_WITH_UNIT(let selection): return selection.integerValue
      }
    }
    public var genericEnumValue: SDAI.GenericEnumValue? {
      switch self {
      case ._LENGTH_MEASURE_WITH_UNIT(let selection): return selection.genericEnumValue
      case ._PLANE_ANGLE_MEASURE_WITH_UNIT(let selection): return selection.genericEnumValue
      }
    }
    public func arrayOptionalValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY_OPTIONAL<ELEM>? {
      switch self {
      case ._LENGTH_MEASURE_WITH_UNIT(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._PLANE_ANGLE_MEASURE_WITH_UNIT(let selection): return selection.arrayOptionalValue(elementType:elementType)
      }
    }
    public func arrayValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY<ELEM>? {
      switch self {
      case ._LENGTH_MEASURE_WITH_UNIT(let selection): return selection.arrayValue(elementType:elementType)
      case ._PLANE_ANGLE_MEASURE_WITH_UNIT(let selection): return selection.arrayValue(elementType:elementType)
      }
    }
    public func listValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.LIST<ELEM>? {
      switch self {
      case ._LENGTH_MEASURE_WITH_UNIT(let selection): return selection.listValue(elementType:elementType)
      case ._PLANE_ANGLE_MEASURE_WITH_UNIT(let selection): return selection.listValue(elementType:elementType)
      }
    }
    public func bagValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.BAG<ELEM>? {
      switch self {
      case ._LENGTH_MEASURE_WITH_UNIT(let selection): return selection.bagValue(elementType:elementType)
      case ._PLANE_ANGLE_MEASURE_WITH_UNIT(let selection): return selection.bagValue(elementType:elementType)
      }
    }
    public func setValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.SET<ELEM>? {
      switch self {
      case ._LENGTH_MEASURE_WITH_UNIT(let selection): return selection.setValue(elementType:elementType)
      case ._PLANE_ANGLE_MEASURE_WITH_UNIT(let selection): return selection.setValue(elementType:elementType)
      }
    }
    public func enumValue<ENUM:SDAIEnumerationType>(enumType:ENUM.Type) -> ENUM? {
      switch self {
      case ._LENGTH_MEASURE_WITH_UNIT(let selection): return selection.enumValue(enumType:enumType)
      case ._PLANE_ANGLE_MEASURE_WITH_UNIT(let selection): return selection.enumValue(enumType:enumType)
      }
    }

    //MARK: SDAIUnderlyingType
    public typealias FundamentalType = Self
    public static var typeName: String = 
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.LENGTH_OR_PLANE_ANGLE_MEASURE_WITH_UNIT_SELECT"
    public var asFundamentalType: FundamentalType { return self }

    //MARK: SDAIObservableAggregateElement
    public var entityReferences: AnySequence<SDAI.EntityReference> {
      switch self {
      case ._LENGTH_MEASURE_WITH_UNIT(let entity): return entity.entityReferences
      case ._PLANE_ANGLE_MEASURE_WITH_UNIT(let entity): return entity.entityReferences
      }
    }

    public mutating func configure(with observer: SDAI.EntityReferenceObserver) {
      switch self {
      case ._LENGTH_MEASURE_WITH_UNIT(let entity): 
        entity.configure(with: observer)
        self = ._LENGTH_MEASURE_WITH_UNIT(entity)
      case ._PLANE_ANGLE_MEASURE_WITH_UNIT(let entity): 
        entity.configure(with: observer)
        self = ._PLANE_ANGLE_MEASURE_WITH_UNIT(entity)
      }
    }

    public mutating func teardownObserver() {
      switch self {
      case ._LENGTH_MEASURE_WITH_UNIT(let entity): 
        entity.teardownObserver()
        self = ._LENGTH_MEASURE_WITH_UNIT(entity)
      case ._PLANE_ANGLE_MEASURE_WITH_UNIT(let entity): 
        entity.teardownObserver()
        self = ._PLANE_ANGLE_MEASURE_WITH_UNIT(entity)
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
      case ._LENGTH_MEASURE_WITH_UNIT(let selectValue): 
        result = eLENGTH_MEASURE_WITH_UNIT.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\LENGTH_MEASURE_WITH_UNIT")
      case ._PLANE_ANGLE_MEASURE_WITH_UNIT(let selectValue): 
        result = ePLANE_ANGLE_MEASURE_WITH_UNIT.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\PLANE_ANGLE_MEASURE_WITH_UNIT")
      case nil: break
      }

      return result
    }

  }

}


//MARK: - SELECT TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sLENGTH_OR_PLANE_ANGLE_MEASURE_WITH_UNIT_SELECT__type: 
  SDAISelectType {

  //MARK: GROUP REFERENCES
  var super_eMEASURE_WITH_UNIT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eMEASURE_WITH_UNIT? { get }
  var super_eLENGTH_MEASURE_WITH_UNIT: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eLENGTH_MEASURE_WITH_UNIT? { get }
  var super_ePLANE_ANGLE_MEASURE_WITH_UNIT: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePLANE_ANGLE_MEASURE_WITH_UNIT? { get }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var UNIT_COMPONENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sUNIT?  { get }
  var VALUE_COMPONENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sMEASURE_VALUE?  { get }
}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sLENGTH_OR_PLANE_ANGLE_MEASURE_WITH_UNIT_SELECT__subtype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sLENGTH_OR_PLANE_ANGLE_MEASURE_WITH_UNIT_SELECT__type, SDAIDefinedType
where Supertype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sLENGTH_OR_PLANE_ANGLE_MEASURE_WITH_UNIT_SELECT__type
{}

public extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sLENGTH_OR_PLANE_ANGLE_MEASURE_WITH_UNIT_SELECT__subtype {
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
  var super_eMEASURE_WITH_UNIT: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eMEASURE_WITH_UNIT? { rep.super_eMEASURE_WITH_UNIT }
  var super_eLENGTH_MEASURE_WITH_UNIT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eLENGTH_MEASURE_WITH_UNIT? { rep.super_eLENGTH_MEASURE_WITH_UNIT }
  var super_ePLANE_ANGLE_MEASURE_WITH_UNIT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePLANE_ANGLE_MEASURE_WITH_UNIT? { rep.super_ePLANE_ANGLE_MEASURE_WITH_UNIT }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var UNIT_COMPONENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sUNIT?  { rep.UNIT_COMPONENT }
  var VALUE_COMPONENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sMEASURE_VALUE?  { rep.VALUE_COMPONENT }
}

