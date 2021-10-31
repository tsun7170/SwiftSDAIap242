/* file: csg_2d_area_select.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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
  TYPE csg_2d_area_select = SELECT
    ( axis2_placement_2d (*ENTITY*),
     csg_primitive_solid_2d (*ENTITY*) );
  END_TYPE; -- csg_2d_area_select (line:1765 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES FOR SELECT
/*
  axis2_placement_2d (*ENTITY*):
  ATTR:  p: LIST [2 : 2] OF direction
  ATTR:  ref_direction: direction
  ATTR:  location: cartesian_point
  ATTR:  name: label
  ATTR:  dim: dimension_count

  csg_primitive_solid_2d (*ENTITY*):
  ATTR:  tree_root_expression: bounded_primitive_2d
  ATTR:  name: label
  ATTR:  dim: dimension_count

*/

/** SELECT type
- EXPRESS:
```express
  TYPE csg_2d_area_select = SELECT
    ( axis2_placement_2d (*ENTITY*),
     csg_primitive_solid_2d (*ENTITY*) );
  END_TYPE; -- csg_2d_area_select (line:1765 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public enum sCSG_2D_AREA_SELECT : SDAIValue, AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sCSG_2D_AREA_SELECT__type {

    /// SELECT case ``eAXIS2_PLACEMENT_2D`` (ENTITY) in ``sCSG_2D_AREA_SELECT``
    case _AXIS2_PLACEMENT_2D(eAXIS2_PLACEMENT_2D)	// (ENTITY)

    /// SELECT case ``eCSG_PRIMITIVE_SOLID_2D`` (ENTITY) in ``sCSG_2D_AREA_SELECT``
    case _CSG_PRIMITIVE_SOLID_2D(eCSG_PRIMITIVE_SOLID_2D)	// (ENTITY)

    //MARK: - CONSTRUCTORS
    public init(fundamental: FundamentalType) { self = fundamental }

    public init?<T: SDAIUnderlyingType>(possiblyFrom underlyingType: T?){
      return nil
    }

    public init?(possiblyFrom complex: SDAI.ComplexEntity?) {
      guard let complex = complex else { return nil }

      if let base = complex.entityReference(eAXIS2_PLACEMENT_2D.self) {self = ._AXIS2_PLACEMENT_2D(base) }
      else if let base = complex.entityReference(eCSG_PRIMITIVE_SOLID_2D.self) {self = ._CSG_PRIMITIVE_SOLID_2D(base) }
      else { return nil }
    }

    public init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let select = generic else { return nil }

      if let fundamental = select as? Self {
        self.init(fundamental: fundamental)
      }
      else if let base = eAXIS2_PLACEMENT_2D.convert(fromGeneric: select) {
        self = ._AXIS2_PLACEMENT_2D(base)
      }
      else if let base = eCSG_PRIMITIVE_SOLID_2D.convert(fromGeneric: select) {
        self = ._CSG_PRIMITIVE_SOLID_2D(base)
      }
      else { return nil }
    }

    // InitializableByP21Parameter
    public static var bareTypeName: String = "CSG_2D_AREA_SELECT"

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
    public var super_eCSG_PRIMITIVE_SOLID_2D: eCSG_PRIMITIVE_SOLID_2D? {
      switch self {
      case ._CSG_PRIMITIVE_SOLID_2D(let entity): return entity
      default: return nil
      }
    }

    public var super_eSOLID_MODEL: eSOLID_MODEL? {
      switch self {
      case ._CSG_PRIMITIVE_SOLID_2D(let entity): return entity.super_eSOLID_MODEL
      default: return nil
      }
    }

    public var super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM? {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let entity): return entity.super_eREPRESENTATION_ITEM
      case ._CSG_PRIMITIVE_SOLID_2D(let entity): return entity.super_eREPRESENTATION_ITEM
      }
    }

    public var super_ePLACEMENT: ePLACEMENT? {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let entity): return entity.super_ePLACEMENT
      default: return nil
      }
    }

    public var super_eAXIS2_PLACEMENT_2D: eAXIS2_PLACEMENT_2D? {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let entity): return entity
      default: return nil
      }
    }

    public var super_eCSG_SOLID_2D: eCSG_SOLID_2D? {
      switch self {
      case ._CSG_PRIMITIVE_SOLID_2D(let entity): return entity.super_eCSG_SOLID_2D
      default: return nil
      }
    }

    public var super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM? {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let entity): return entity.super_eGEOMETRIC_REPRESENTATION_ITEM
      case ._CSG_PRIMITIVE_SOLID_2D(let entity): return entity.super_eGEOMETRIC_REPRESENTATION_ITEM
      }
    }

    public var super_eCSG_SOLID: eCSG_SOLID? {
      switch self {
      case ._CSG_PRIMITIVE_SOLID_2D(let entity): return entity.super_eCSG_SOLID
      default: return nil
      }
    }


    //MARK: - ENTITY ATTRIBUTE REFERENCES
    /// attribute of SELECT type ``sCSG_2D_AREA_SELECT``
    /// - origin: ENTITY( ``eAXIS2_PLACEMENT_2D`` )
    public var P: (SDAI.LIST<eDIRECTION>/*[2:2]*/ )?  {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let entity): return entity.P
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCSG_2D_AREA_SELECT``
    /// - origin: ENTITY( ``eCSG_PRIMITIVE_SOLID_2D`` )
    public var TREE_ROOT_EXPRESSION: sBOUNDED_PRIMITIVE_2D?  {
      switch self {
      case ._CSG_PRIMITIVE_SOLID_2D(let entity): return entity.TREE_ROOT_EXPRESSION
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCSG_2D_AREA_SELECT``
    /// - origin: ENTITY( ``eAXIS2_PLACEMENT_2D`` )
    public var REF_DIRECTION: eDIRECTION?  {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let entity): return entity.REF_DIRECTION
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCSG_2D_AREA_SELECT``
    /// - origin: ENTITY( ``eAXIS2_PLACEMENT_2D`` )
    public var LOCATION: eCARTESIAN_POINT?  {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let entity): return entity.LOCATION
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCSG_2D_AREA_SELECT``
    /// - origin: ENTITY( ``eAXIS2_PLACEMENT_2D`` )
    /// - origin: ENTITY( ``eCSG_PRIMITIVE_SOLID_2D`` )
    public var NAME: tLABEL?  {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let entity): return entity.NAME
      case ._CSG_PRIMITIVE_SOLID_2D(let entity): return entity.NAME
      }
    }

    /// attribute of SELECT type ``sCSG_2D_AREA_SELECT``
    /// - origin: ENTITY( ``eAXIS2_PLACEMENT_2D`` )
    /// - origin: ENTITY( ``eCSG_PRIMITIVE_SOLID_2D`` )
    public var DIM: tDIMENSION_COUNT?  {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let entity): return entity.DIM
      case ._CSG_PRIMITIVE_SOLID_2D(let entity): return entity.DIM
      }
    }


    //MARK: - SDAIValue
    public func isValueEqual<T: SDAIValue>(to rhs: T) -> Bool {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let selection): return selection.value.isValueEqual(to: rhs)
      case ._CSG_PRIMITIVE_SOLID_2D(let selection): return selection.value.isValueEqual(to: rhs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?) -> Bool? {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._CSG_PRIMITIVE_SOLID_2D(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      }
    }

    public func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._CSG_PRIMITIVE_SOLID_2D(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      }
    }

    public func isValueEqual<T: SDAIValue>(to rhs: T, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._CSG_PRIMITIVE_SOLID_2D(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._CSG_PRIMITIVE_SOLID_2D(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      }
    }


    //MARK: SDAIGenericTypeBase
    public func copy() -> Self {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let selection): return ._AXIS2_PLACEMENT_2D(selection.copy())
      case ._CSG_PRIMITIVE_SOLID_2D(let selection): return ._CSG_PRIMITIVE_SOLID_2D(selection.copy())
      }
    }

    //MARK: SDAIGenericType
    public var typeMembers: Set<SDAI.STRING> {
      var members: Set<SDAI.STRING> = [SDAI.STRING(Self.typeName)]
      switch self {
      case ._AXIS2_PLACEMENT_2D(let selection): members.formUnion(selection.typeMembers)
      case ._CSG_PRIMITIVE_SOLID_2D(let selection): members.formUnion(selection.typeMembers)
      }
      return members
    }

    public var entityReference: SDAI.EntityReference? {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let selection): return selection.entityReference
      case ._CSG_PRIMITIVE_SOLID_2D(let selection): return selection.entityReference
      }
    }
    public var stringValue: SDAI.STRING? {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let selection): return selection.stringValue
      case ._CSG_PRIMITIVE_SOLID_2D(let selection): return selection.stringValue
      }
    }
    public var binaryValue: SDAI.BINARY? {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let selection): return selection.binaryValue
      case ._CSG_PRIMITIVE_SOLID_2D(let selection): return selection.binaryValue
      }
    }
    public var logicalValue: SDAI.LOGICAL? {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let selection): return selection.logicalValue
      case ._CSG_PRIMITIVE_SOLID_2D(let selection): return selection.logicalValue
      }
    }
    public var booleanValue: SDAI.BOOLEAN? {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let selection): return selection.booleanValue
      case ._CSG_PRIMITIVE_SOLID_2D(let selection): return selection.booleanValue
      }
    }
    public var numberValue: SDAI.NUMBER? {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let selection): return selection.numberValue
      case ._CSG_PRIMITIVE_SOLID_2D(let selection): return selection.numberValue
      }
    }
    public var realValue: SDAI.REAL? {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let selection): return selection.realValue
      case ._CSG_PRIMITIVE_SOLID_2D(let selection): return selection.realValue
      }
    }
    public var integerValue: SDAI.INTEGER? {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let selection): return selection.integerValue
      case ._CSG_PRIMITIVE_SOLID_2D(let selection): return selection.integerValue
      }
    }
    public var genericEnumValue: SDAI.GenericEnumValue? {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let selection): return selection.genericEnumValue
      case ._CSG_PRIMITIVE_SOLID_2D(let selection): return selection.genericEnumValue
      }
    }
    public func arrayOptionalValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY_OPTIONAL<ELEM>? {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._CSG_PRIMITIVE_SOLID_2D(let selection): return selection.arrayOptionalValue(elementType:elementType)
      }
    }
    public func arrayValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY<ELEM>? {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let selection): return selection.arrayValue(elementType:elementType)
      case ._CSG_PRIMITIVE_SOLID_2D(let selection): return selection.arrayValue(elementType:elementType)
      }
    }
    public func listValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.LIST<ELEM>? {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let selection): return selection.listValue(elementType:elementType)
      case ._CSG_PRIMITIVE_SOLID_2D(let selection): return selection.listValue(elementType:elementType)
      }
    }
    public func bagValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.BAG<ELEM>? {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let selection): return selection.bagValue(elementType:elementType)
      case ._CSG_PRIMITIVE_SOLID_2D(let selection): return selection.bagValue(elementType:elementType)
      }
    }
    public func setValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.SET<ELEM>? {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let selection): return selection.setValue(elementType:elementType)
      case ._CSG_PRIMITIVE_SOLID_2D(let selection): return selection.setValue(elementType:elementType)
      }
    }
    public func enumValue<ENUM:SDAIEnumerationType>(enumType:ENUM.Type) -> ENUM? {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let selection): return selection.enumValue(enumType:enumType)
      case ._CSG_PRIMITIVE_SOLID_2D(let selection): return selection.enumValue(enumType:enumType)
      }
    }

    //MARK: SDAIUnderlyingType
    public typealias FundamentalType = Self
    public static var typeName: String = 
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CSG_2D_AREA_SELECT"
    public var asFundamentalType: FundamentalType { return self }

    //MARK: SDAIObservableAggregateElement
    public var entityReferences: AnySequence<SDAI.EntityReference> {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let entity): return entity.entityReferences
      case ._CSG_PRIMITIVE_SOLID_2D(let entity): return entity.entityReferences
      }
    }

    public mutating func configure(with observer: SDAI.EntityReferenceObserver) {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let entity): 
        entity.configure(with: observer)
        self = ._AXIS2_PLACEMENT_2D(entity)
      case ._CSG_PRIMITIVE_SOLID_2D(let entity): 
        entity.configure(with: observer)
        self = ._CSG_PRIMITIVE_SOLID_2D(entity)
      }
    }

    public mutating func teardownObserver() {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let entity): 
        entity.teardownObserver()
        self = ._AXIS2_PLACEMENT_2D(entity)
      case ._CSG_PRIMITIVE_SOLID_2D(let entity): 
        entity.teardownObserver()
        self = ._CSG_PRIMITIVE_SOLID_2D(entity)
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
      case ._AXIS2_PLACEMENT_2D(let selectValue): 
        result = eAXIS2_PLACEMENT_2D.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\AXIS2_PLACEMENT_2D")
      case ._CSG_PRIMITIVE_SOLID_2D(let selectValue): 
        result = eCSG_PRIMITIVE_SOLID_2D.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\CSG_PRIMITIVE_SOLID_2D")
      case nil: break
      }

      return result
    }

  }

}


//MARK: - SELECT TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sCSG_2D_AREA_SELECT__type: SDAISelectType {

  //MARK: GROUP REFERENCES
  var super_eCSG_PRIMITIVE_SOLID_2D: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCSG_PRIMITIVE_SOLID_2D? { get }
  var super_eSOLID_MODEL: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSOLID_MODEL? { get }
  var super_eREPRESENTATION_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION_ITEM? { get }
  var super_ePLACEMENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePLACEMENT? { get }
  var super_eAXIS2_PLACEMENT_2D: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eAXIS2_PLACEMENT_2D? { get }
  var super_eCSG_SOLID_2D: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCSG_SOLID_2D? { get }
  var super_eGEOMETRIC_REPRESENTATION_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eGEOMETRIC_REPRESENTATION_ITEM? { get }
  var super_eCSG_SOLID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCSG_SOLID? { get }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var P: (SDAI.LIST<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDIRECTION>/*[2:2]*/ )?  { get }
  var TREE_ROOT_EXPRESSION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sBOUNDED_PRIMITIVE_2D?  { get }
  var REF_DIRECTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDIRECTION?  { get }
  var LOCATION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCARTESIAN_POINT?  { get }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { get }
  var DIM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tDIMENSION_COUNT?  { get }
}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sCSG_2D_AREA_SELECT__subtype: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sCSG_2D_AREA_SELECT__type, SDAIDefinedType
where Supertype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sCSG_2D_AREA_SELECT__type
{}

public extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sCSG_2D_AREA_SELECT__subtype {
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
  var super_eCSG_PRIMITIVE_SOLID_2D: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCSG_PRIMITIVE_SOLID_2D? { rep.super_eCSG_PRIMITIVE_SOLID_2D }
  var super_eSOLID_MODEL: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSOLID_MODEL? { rep.super_eSOLID_MODEL }
  var super_eREPRESENTATION_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION_ITEM? { rep.super_eREPRESENTATION_ITEM }
  var super_ePLACEMENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePLACEMENT? { rep.super_ePLACEMENT }
  var super_eAXIS2_PLACEMENT_2D: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eAXIS2_PLACEMENT_2D? { rep.super_eAXIS2_PLACEMENT_2D }
  var super_eCSG_SOLID_2D: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCSG_SOLID_2D? { rep.super_eCSG_SOLID_2D }
  var super_eGEOMETRIC_REPRESENTATION_ITEM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eGEOMETRIC_REPRESENTATION_ITEM? { rep.super_eGEOMETRIC_REPRESENTATION_ITEM }
  var super_eCSG_SOLID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCSG_SOLID? { rep.super_eCSG_SOLID }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var P: (SDAI.LIST<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDIRECTION>/*[2:2]*/ )?  { rep.P }
  var TREE_ROOT_EXPRESSION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sBOUNDED_PRIMITIVE_2D?  { rep.TREE_ROOT_EXPRESSION }
  var REF_DIRECTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDIRECTION?  { rep.REF_DIRECTION }
  var LOCATION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCARTESIAN_POINT?  { rep.LOCATION }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { rep.NAME }
  var DIM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tDIMENSION_COUNT?  { rep.DIM }
}

