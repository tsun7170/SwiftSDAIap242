/* file: linear_geometry_constraint_element.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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
  TYPE linear_geometry_constraint_element = SELECT
    ( direction (*ENTITY*),
     line (*ENTITY*),
     plane (*ENTITY*),
     vector (*ENTITY*) );
  END_TYPE; -- linear_geometry_constraint_element (line:3951 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES FOR SELECT
/*
  direction (*ENTITY*):
  ATTR:  direction_ratios: LIST [2 : 3] OF REAL
  ATTR:  name: label
  ATTR:  dim: dimension_count

  line (*ENTITY*):
  ATTR:  pnt: cartesian_point
  ATTR:  dir: vector
  ATTR:  name: label
  ATTR:  dim: dimension_count

  plane (*ENTITY*):
  ATTR:  position: axis2_placement_3d
  ATTR:  name: label
  ATTR:  dim: dimension_count

  vector (*ENTITY*):
  ATTR:  orientation: direction
  ATTR:  magnitude: length_measure
  ATTR:  name: label
  ATTR:  dim: dimension_count

*/

/** SELECT type
- EXPRESS:
```express
  TYPE linear_geometry_constraint_element = SELECT
    ( direction (*ENTITY*),
     line (*ENTITY*),
     plane (*ENTITY*),
     vector (*ENTITY*) );
  END_TYPE; -- linear_geometry_constraint_element (line:3951 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public enum sLINEAR_GEOMETRY_CONSTRAINT_ELEMENT : SDAIValue, AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sLINEAR_GEOMETRY_CONSTRAINT_ELEMENT__type {

    /// SELECT case ``eDIRECTION`` (ENTITY) in ``sLINEAR_GEOMETRY_CONSTRAINT_ELEMENT``
    case _DIRECTION(eDIRECTION)	// (ENTITY)

    /// SELECT case ``eLINE`` (ENTITY) in ``sLINEAR_GEOMETRY_CONSTRAINT_ELEMENT``
    case _LINE(eLINE)	// (ENTITY)

    /// SELECT case ``ePLANE`` (ENTITY) in ``sLINEAR_GEOMETRY_CONSTRAINT_ELEMENT``
    case _PLANE(ePLANE)	// (ENTITY)

    /// SELECT case ``eVECTOR`` (ENTITY) in ``sLINEAR_GEOMETRY_CONSTRAINT_ELEMENT``
    case _VECTOR(eVECTOR)	// (ENTITY)

    //MARK: - CONSTRUCTORS
    public init(fundamental: FundamentalType) { self = fundamental }

    public init?<T: SDAIUnderlyingType>(possiblyFrom underlyingType: T?){
      return nil
    }

    public init?(possiblyFrom complex: SDAI.ComplexEntity?) {
      guard let complex = complex else { return nil }

      if let base = complex.entityReference(eDIRECTION.self) {self = ._DIRECTION(base) }
      else if let base = complex.entityReference(eLINE.self) {self = ._LINE(base) }
      else if let base = complex.entityReference(ePLANE.self) {self = ._PLANE(base) }
      else if let base = complex.entityReference(eVECTOR.self) {self = ._VECTOR(base) }
      else { return nil }
    }

    public init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let select = generic else { return nil }

      if let fundamental = select as? Self {
        self.init(fundamental: fundamental)
      }
      else if let base = eDIRECTION.convert(fromGeneric: select) {
        self = ._DIRECTION(base)
      }
      else if let base = eLINE.convert(fromGeneric: select) {
        self = ._LINE(base)
      }
      else if let base = ePLANE.convert(fromGeneric: select) {
        self = ._PLANE(base)
      }
      else if let base = eVECTOR.convert(fromGeneric: select) {
        self = ._VECTOR(base)
      }
      else { return nil }
    }

    // InitializableByP21Parameter
    public static var bareTypeName: String = "LINEAR_GEOMETRY_CONSTRAINT_ELEMENT"

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
    public var super_eVECTOR: eVECTOR? {
      switch self {
      case ._VECTOR(let entity): return entity
      default: return nil
      }
    }

    public var super_eELEMENTARY_SURFACE: eELEMENTARY_SURFACE? {
      switch self {
      case ._PLANE(let entity): return entity.super_eELEMENTARY_SURFACE
      default: return nil
      }
    }

    public var super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM? {
      switch self {
      case ._DIRECTION(let entity): return entity.super_eREPRESENTATION_ITEM
      case ._LINE(let entity): return entity.super_eREPRESENTATION_ITEM
      case ._PLANE(let entity): return entity.super_eREPRESENTATION_ITEM
      case ._VECTOR(let entity): return entity.super_eREPRESENTATION_ITEM
      }
    }

    public var super_ePLANE: ePLANE? {
      switch self {
      case ._PLANE(let entity): return entity
      default: return nil
      }
    }

    public var super_eLINE: eLINE? {
      switch self {
      case ._LINE(let entity): return entity
      default: return nil
      }
    }

    public var super_eCURVE: eCURVE? {
      switch self {
      case ._LINE(let entity): return entity.super_eCURVE
      default: return nil
      }
    }

    public var super_eSURFACE: eSURFACE? {
      switch self {
      case ._PLANE(let entity): return entity.super_eSURFACE
      default: return nil
      }
    }

    public var super_eDIRECTION: eDIRECTION? {
      switch self {
      case ._DIRECTION(let entity): return entity
      default: return nil
      }
    }

    public var super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM? {
      switch self {
      case ._DIRECTION(let entity): return entity.super_eGEOMETRIC_REPRESENTATION_ITEM
      case ._LINE(let entity): return entity.super_eGEOMETRIC_REPRESENTATION_ITEM
      case ._PLANE(let entity): return entity.super_eGEOMETRIC_REPRESENTATION_ITEM
      case ._VECTOR(let entity): return entity.super_eGEOMETRIC_REPRESENTATION_ITEM
      }
    }


    //MARK: - ENTITY ATTRIBUTE REFERENCES
    /// attribute of SELECT type ``sLINEAR_GEOMETRY_CONSTRAINT_ELEMENT``
    /// - origin: ENTITY( ``eLINE`` )
    public var PNT: eCARTESIAN_POINT?  {
      switch self {
      case ._LINE(let entity): return entity.PNT
      default: return nil
      }
    }

    /// attribute of SELECT type ``sLINEAR_GEOMETRY_CONSTRAINT_ELEMENT``
    /// - origin: ENTITY( ``eVECTOR`` )
    public var ORIENTATION: eDIRECTION?  {
      switch self {
      case ._VECTOR(let entity): return entity.ORIENTATION
      default: return nil
      }
    }

    /// attribute of SELECT type ``sLINEAR_GEOMETRY_CONSTRAINT_ELEMENT``
    /// - origin: ENTITY( ``ePLANE`` )
    public var POSITION: eAXIS2_PLACEMENT_3D?  {
      switch self {
      case ._PLANE(let entity): return entity.POSITION
      default: return nil
      }
    }

    /// attribute of SELECT type ``sLINEAR_GEOMETRY_CONSTRAINT_ELEMENT``
    /// - origin: ENTITY( ``eDIRECTION`` )
    public var DIRECTION_RATIOS: (SDAI.LIST<SDAI.REAL>/*[2:3]*/ )?  {
      switch self {
      case ._DIRECTION(let entity): return entity.DIRECTION_RATIOS
      default: return nil
      }
    }

    /// attribute of SELECT type ``sLINEAR_GEOMETRY_CONSTRAINT_ELEMENT``
    /// - origin: ENTITY( ``eVECTOR`` )
    public var MAGNITUDE: tLENGTH_MEASURE?  {
      switch self {
      case ._VECTOR(let entity): return entity.MAGNITUDE
      default: return nil
      }
    }

    /// attribute of SELECT type ``sLINEAR_GEOMETRY_CONSTRAINT_ELEMENT``
    /// - origin: ENTITY( ``eLINE`` )
    public var DIR: eVECTOR?  {
      switch self {
      case ._LINE(let entity): return entity.DIR
      default: return nil
      }
    }

    /// attribute of SELECT type ``sLINEAR_GEOMETRY_CONSTRAINT_ELEMENT``
    /// - origin: ENTITY( ``eDIRECTION`` )
    /// - origin: ENTITY( ``eLINE`` )
    /// - origin: ENTITY( ``ePLANE`` )
    /// - origin: ENTITY( ``eVECTOR`` )
    public var NAME: tLABEL?  {
      switch self {
      case ._DIRECTION(let entity): return entity.NAME
      case ._LINE(let entity): return entity.NAME
      case ._PLANE(let entity): return entity.NAME
      case ._VECTOR(let entity): return entity.NAME
      }
    }

    /// attribute of SELECT type ``sLINEAR_GEOMETRY_CONSTRAINT_ELEMENT``
    /// - origin: ENTITY( ``eDIRECTION`` )
    /// - origin: ENTITY( ``eLINE`` )
    /// - origin: ENTITY( ``ePLANE`` )
    /// - origin: ENTITY( ``eVECTOR`` )
    public var DIM: tDIMENSION_COUNT?  {
      switch self {
      case ._DIRECTION(let entity): return entity.DIM
      case ._LINE(let entity): return entity.DIM
      case ._PLANE(let entity): return entity.DIM
      case ._VECTOR(let entity): return entity.DIM
      }
    }


    //MARK: - SDAIValue
    public func isValueEqual<T: SDAIValue>(to rhs: T) -> Bool {
      switch self {
      case ._DIRECTION(let selection): return selection.value.isValueEqual(to: rhs)
      case ._LINE(let selection): return selection.value.isValueEqual(to: rhs)
      case ._PLANE(let selection): return selection.value.isValueEqual(to: rhs)
      case ._VECTOR(let selection): return selection.value.isValueEqual(to: rhs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?) -> Bool? {
      switch self {
      case ._DIRECTION(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._LINE(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._PLANE(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._VECTOR(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      }
    }

    public func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      switch self {
      case ._DIRECTION(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._LINE(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._PLANE(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._VECTOR(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      }
    }

    public func isValueEqual<T: SDAIValue>(to rhs: T, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      switch self {
      case ._DIRECTION(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._LINE(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._PLANE(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._VECTOR(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      switch self {
      case ._DIRECTION(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._LINE(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._PLANE(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._VECTOR(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      }
    }


    //MARK: SDAIGenericTypeBase
    public func copy() -> Self {
      switch self {
      case ._DIRECTION(let selection): return ._DIRECTION(selection.copy())
      case ._LINE(let selection): return ._LINE(selection.copy())
      case ._PLANE(let selection): return ._PLANE(selection.copy())
      case ._VECTOR(let selection): return ._VECTOR(selection.copy())
      }
    }

    //MARK: SDAIGenericType
    public var typeMembers: Set<SDAI.STRING> {
      var members: Set<SDAI.STRING> = [SDAI.STRING(Self.typeName)]
      switch self {
      case ._DIRECTION(let selection): members.formUnion(selection.typeMembers)
      case ._LINE(let selection): members.formUnion(selection.typeMembers)
      case ._PLANE(let selection): members.formUnion(selection.typeMembers)
      case ._VECTOR(let selection): members.formUnion(selection.typeMembers)
      }
      return members
    }

    public var entityReference: SDAI.EntityReference? {
      switch self {
      case ._DIRECTION(let selection): return selection.entityReference
      case ._LINE(let selection): return selection.entityReference
      case ._PLANE(let selection): return selection.entityReference
      case ._VECTOR(let selection): return selection.entityReference
      }
    }
    public var stringValue: SDAI.STRING? {
      switch self {
      case ._DIRECTION(let selection): return selection.stringValue
      case ._LINE(let selection): return selection.stringValue
      case ._PLANE(let selection): return selection.stringValue
      case ._VECTOR(let selection): return selection.stringValue
      }
    }
    public var binaryValue: SDAI.BINARY? {
      switch self {
      case ._DIRECTION(let selection): return selection.binaryValue
      case ._LINE(let selection): return selection.binaryValue
      case ._PLANE(let selection): return selection.binaryValue
      case ._VECTOR(let selection): return selection.binaryValue
      }
    }
    public var logicalValue: SDAI.LOGICAL? {
      switch self {
      case ._DIRECTION(let selection): return selection.logicalValue
      case ._LINE(let selection): return selection.logicalValue
      case ._PLANE(let selection): return selection.logicalValue
      case ._VECTOR(let selection): return selection.logicalValue
      }
    }
    public var booleanValue: SDAI.BOOLEAN? {
      switch self {
      case ._DIRECTION(let selection): return selection.booleanValue
      case ._LINE(let selection): return selection.booleanValue
      case ._PLANE(let selection): return selection.booleanValue
      case ._VECTOR(let selection): return selection.booleanValue
      }
    }
    public var numberValue: SDAI.NUMBER? {
      switch self {
      case ._DIRECTION(let selection): return selection.numberValue
      case ._LINE(let selection): return selection.numberValue
      case ._PLANE(let selection): return selection.numberValue
      case ._VECTOR(let selection): return selection.numberValue
      }
    }
    public var realValue: SDAI.REAL? {
      switch self {
      case ._DIRECTION(let selection): return selection.realValue
      case ._LINE(let selection): return selection.realValue
      case ._PLANE(let selection): return selection.realValue
      case ._VECTOR(let selection): return selection.realValue
      }
    }
    public var integerValue: SDAI.INTEGER? {
      switch self {
      case ._DIRECTION(let selection): return selection.integerValue
      case ._LINE(let selection): return selection.integerValue
      case ._PLANE(let selection): return selection.integerValue
      case ._VECTOR(let selection): return selection.integerValue
      }
    }
    public var genericEnumValue: SDAI.GenericEnumValue? {
      switch self {
      case ._DIRECTION(let selection): return selection.genericEnumValue
      case ._LINE(let selection): return selection.genericEnumValue
      case ._PLANE(let selection): return selection.genericEnumValue
      case ._VECTOR(let selection): return selection.genericEnumValue
      }
    }
    public func arrayOptionalValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY_OPTIONAL<ELEM>? {
      switch self {
      case ._DIRECTION(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._LINE(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._PLANE(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._VECTOR(let selection): return selection.arrayOptionalValue(elementType:elementType)
      }
    }
    public func arrayValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY<ELEM>? {
      switch self {
      case ._DIRECTION(let selection): return selection.arrayValue(elementType:elementType)
      case ._LINE(let selection): return selection.arrayValue(elementType:elementType)
      case ._PLANE(let selection): return selection.arrayValue(elementType:elementType)
      case ._VECTOR(let selection): return selection.arrayValue(elementType:elementType)
      }
    }
    public func listValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.LIST<ELEM>? {
      switch self {
      case ._DIRECTION(let selection): return selection.listValue(elementType:elementType)
      case ._LINE(let selection): return selection.listValue(elementType:elementType)
      case ._PLANE(let selection): return selection.listValue(elementType:elementType)
      case ._VECTOR(let selection): return selection.listValue(elementType:elementType)
      }
    }
    public func bagValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.BAG<ELEM>? {
      switch self {
      case ._DIRECTION(let selection): return selection.bagValue(elementType:elementType)
      case ._LINE(let selection): return selection.bagValue(elementType:elementType)
      case ._PLANE(let selection): return selection.bagValue(elementType:elementType)
      case ._VECTOR(let selection): return selection.bagValue(elementType:elementType)
      }
    }
    public func setValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.SET<ELEM>? {
      switch self {
      case ._DIRECTION(let selection): return selection.setValue(elementType:elementType)
      case ._LINE(let selection): return selection.setValue(elementType:elementType)
      case ._PLANE(let selection): return selection.setValue(elementType:elementType)
      case ._VECTOR(let selection): return selection.setValue(elementType:elementType)
      }
    }
    public func enumValue<ENUM:SDAIEnumerationType>(enumType:ENUM.Type) -> ENUM? {
      switch self {
      case ._DIRECTION(let selection): return selection.enumValue(enumType:enumType)
      case ._LINE(let selection): return selection.enumValue(enumType:enumType)
      case ._PLANE(let selection): return selection.enumValue(enumType:enumType)
      case ._VECTOR(let selection): return selection.enumValue(enumType:enumType)
      }
    }

    //MARK: SDAIUnderlyingType
    public typealias FundamentalType = Self
    public static var typeName: String = 
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.LINEAR_GEOMETRY_CONSTRAINT_ELEMENT"
    public var asFundamentalType: FundamentalType { return self }

    //MARK: SDAIObservableAggregateElement
    public var entityReferences: AnySequence<SDAI.EntityReference> {
      switch self {
      case ._DIRECTION(let entity): return entity.entityReferences
      case ._LINE(let entity): return entity.entityReferences
      case ._PLANE(let entity): return entity.entityReferences
      case ._VECTOR(let entity): return entity.entityReferences
      }
    }

    public mutating func configure(with observer: SDAI.EntityReferenceObserver) {
      switch self {
      case ._DIRECTION(let entity): 
        entity.configure(with: observer)
        self = ._DIRECTION(entity)
      case ._LINE(let entity): 
        entity.configure(with: observer)
        self = ._LINE(entity)
      case ._PLANE(let entity): 
        entity.configure(with: observer)
        self = ._PLANE(entity)
      case ._VECTOR(let entity): 
        entity.configure(with: observer)
        self = ._VECTOR(entity)
      }
    }

    public mutating func teardownObserver() {
      switch self {
      case ._DIRECTION(let entity): 
        entity.teardownObserver()
        self = ._DIRECTION(entity)
      case ._LINE(let entity): 
        entity.teardownObserver()
        self = ._LINE(entity)
      case ._PLANE(let entity): 
        entity.teardownObserver()
        self = ._PLANE(entity)
      case ._VECTOR(let entity): 
        entity.teardownObserver()
        self = ._VECTOR(entity)
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
      case ._DIRECTION(let selectValue): result = eDIRECTION.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\DIRECTION")
      case ._LINE(let selectValue): result = eLINE.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\LINE")
      case ._PLANE(let selectValue): result = ePLANE.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\PLANE")
      case ._VECTOR(let selectValue): result = eVECTOR.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\VECTOR")
      case nil: break
      }

      return result
    }

  }

}


//MARK: - SELECT TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sLINEAR_GEOMETRY_CONSTRAINT_ELEMENT__type: 
  SDAISelectType {

  //MARK: GROUP REFERENCES
  var super_eVECTOR: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eVECTOR? { get }
  var super_eELEMENTARY_SURFACE: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eELEMENTARY_SURFACE? { get }
  var super_eREPRESENTATION_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION_ITEM? { get }
  var super_ePLANE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePLANE? { get }
  var super_eLINE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eLINE? { get }
  var super_eCURVE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCURVE? { get }
  var super_eSURFACE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSURFACE? { get }
  var super_eDIRECTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDIRECTION? { get }
  var super_eGEOMETRIC_REPRESENTATION_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eGEOMETRIC_REPRESENTATION_ITEM? { get }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var PNT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCARTESIAN_POINT?  { get }
  var ORIENTATION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDIRECTION?  { get }
  var POSITION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eAXIS2_PLACEMENT_3D?  { get }
  var DIRECTION_RATIOS: (SDAI.LIST<SDAI.REAL>/*[2:3]*/ )?  { get }
  var MAGNITUDE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLENGTH_MEASURE?  { get }
  var DIR: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eVECTOR?  { get }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { get }
  var DIM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tDIMENSION_COUNT?  { get }
}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sLINEAR_GEOMETRY_CONSTRAINT_ELEMENT__subtype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sLINEAR_GEOMETRY_CONSTRAINT_ELEMENT__type, SDAIDefinedType
where Supertype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sLINEAR_GEOMETRY_CONSTRAINT_ELEMENT__type
{}

public extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sLINEAR_GEOMETRY_CONSTRAINT_ELEMENT__subtype {
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
  var super_eVECTOR: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eVECTOR? { rep.super_eVECTOR }
  var super_eELEMENTARY_SURFACE: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eELEMENTARY_SURFACE? { rep.super_eELEMENTARY_SURFACE }
  var super_eREPRESENTATION_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION_ITEM? { rep.super_eREPRESENTATION_ITEM }
  var super_ePLANE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePLANE? { rep.super_ePLANE }
  var super_eLINE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eLINE? { rep.super_eLINE }
  var super_eCURVE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCURVE? { rep.super_eCURVE }
  var super_eSURFACE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSURFACE? { rep.super_eSURFACE }
  var super_eDIRECTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDIRECTION? { rep.super_eDIRECTION }
  var super_eGEOMETRIC_REPRESENTATION_ITEM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eGEOMETRIC_REPRESENTATION_ITEM? { rep.super_eGEOMETRIC_REPRESENTATION_ITEM }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var PNT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCARTESIAN_POINT?  { rep.PNT }
  var ORIENTATION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDIRECTION?  { rep.ORIENTATION }
  var POSITION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eAXIS2_PLACEMENT_3D?  { rep.POSITION }
  var DIRECTION_RATIOS: (SDAI.LIST<SDAI.REAL>/*[2:3]*/ )?  { rep.DIRECTION_RATIOS }
  var MAGNITUDE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLENGTH_MEASURE?  { rep.MAGNITUDE }
  var DIR: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eVECTOR?  { rep.DIR }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { rep.NAME }
  var DIM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tDIMENSION_COUNT?  { rep.DIM }
}

