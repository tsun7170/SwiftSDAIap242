/* file: basis_11_direction_member.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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
  TYPE basis_11_direction_member = SELECT
    ( cartesian_11 (*ENTITY*),
     curve_11 (*ENTITY*),
     cylindrical_11 (*ENTITY*),
     point_array (*ENTITY*),
     polar_11 (*ENTITY*),
     user_defined_11 (*ENTITY*) );
  END_TYPE; -- basis_11_direction_member (line:1150 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES FOR SELECT
/*
  cartesian_11 (*ENTITY*):
  ATTR:  name: label
  ATTR:  dim: dimension_count

  curve_11 (*ENTITY*):
  ATTR:  name: label
  ATTR:  dim: dimension_count

  cylindrical_11 (*ENTITY*):
  ATTR:  name: label
  ATTR:  dim: dimension_count

  point_array (*ENTITY*):
  ATTR:  item_element: point_array_members
  ATTR:  name: label
  ATTR:  dim: dimension_count

  polar_11 (*ENTITY*):
  ATTR:  name: label
  ATTR:  dim: dimension_count

  user_defined_11 (*ENTITY*):
  ATTR:  name: label

*/

/** SELECT type
- EXPRESS:
```express
  TYPE basis_11_direction_member = SELECT
    ( cartesian_11 (*ENTITY*),
     curve_11 (*ENTITY*),
     cylindrical_11 (*ENTITY*),
     point_array (*ENTITY*),
     polar_11 (*ENTITY*),
     user_defined_11 (*ENTITY*) );
  END_TYPE; -- basis_11_direction_member (line:1150 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public enum sBASIS_11_DIRECTION_MEMBER : SDAIValue, AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sBASIS_11_DIRECTION_MEMBER__type {

    /// SELECT case ``eCARTESIAN_11`` (ENTITY) in ``sBASIS_11_DIRECTION_MEMBER``
    case _CARTESIAN_11(eCARTESIAN_11)	// (ENTITY)

    /// SELECT case ``eCURVE_11`` (ENTITY) in ``sBASIS_11_DIRECTION_MEMBER``
    case _CURVE_11(eCURVE_11)	// (ENTITY)

    /// SELECT case ``eCYLINDRICAL_11`` (ENTITY) in ``sBASIS_11_DIRECTION_MEMBER``
    case _CYLINDRICAL_11(eCYLINDRICAL_11)	// (ENTITY)

    /// SELECT case ``ePOINT_ARRAY`` (ENTITY) in ``sBASIS_11_DIRECTION_MEMBER``
    case _POINT_ARRAY(ePOINT_ARRAY)	// (ENTITY)

    /// SELECT case ``ePOLAR_11`` (ENTITY) in ``sBASIS_11_DIRECTION_MEMBER``
    case _POLAR_11(ePOLAR_11)	// (ENTITY)

    /// SELECT case ``eUSER_DEFINED_11`` (ENTITY) in ``sBASIS_11_DIRECTION_MEMBER``
    case _USER_DEFINED_11(eUSER_DEFINED_11)	// (ENTITY)

    //MARK: - CONSTRUCTORS
    public init(fundamental: FundamentalType) { self = fundamental }

    public init?<T: SDAIUnderlyingType>(possiblyFrom underlyingType: T?){
      return nil
    }

    public init?(possiblyFrom complex: SDAI.ComplexEntity?) {
      guard let complex = complex else { return nil }

      if let base = complex.entityReference(eCARTESIAN_11.self) {self = ._CARTESIAN_11(base) }
      else if let base = complex.entityReference(eCURVE_11.self) {self = ._CURVE_11(base) }
      else if let base = complex.entityReference(eCYLINDRICAL_11.self) {self = ._CYLINDRICAL_11(base) }
      else if let base = complex.entityReference(ePOINT_ARRAY.self) {self = ._POINT_ARRAY(base) }
      else if let base = complex.entityReference(ePOLAR_11.self) {self = ._POLAR_11(base) }
      else if let base = complex.entityReference(eUSER_DEFINED_11.self) {self = ._USER_DEFINED_11(base) }
      else { return nil }
    }

    public init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let select = generic else { return nil }

      if let fundamental = select as? Self {
        self.init(fundamental: fundamental)
      }
      else if let base = eCARTESIAN_11.convert(fromGeneric: select) {
        self = ._CARTESIAN_11(base)
      }
      else if let base = eCURVE_11.convert(fromGeneric: select) {
        self = ._CURVE_11(base)
      }
      else if let base = eCYLINDRICAL_11.convert(fromGeneric: select) {
        self = ._CYLINDRICAL_11(base)
      }
      else if let base = ePOINT_ARRAY.convert(fromGeneric: select) {
        self = ._POINT_ARRAY(base)
      }
      else if let base = ePOLAR_11.convert(fromGeneric: select) {
        self = ._POLAR_11(base)
      }
      else if let base = eUSER_DEFINED_11.convert(fromGeneric: select) {
        self = ._USER_DEFINED_11(base)
      }
      else { return nil }
    }

    // InitializableByP21Parameter
    public static var bareTypeName: String = "BASIS_11_DIRECTION_MEMBER"

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
    public var super_ePOLAR_11: ePOLAR_11? {
      switch self {
      case ._POLAR_11(let entity): return entity
      default: return nil
      }
    }

    public var super_eCYLINDRICAL_11: eCYLINDRICAL_11? {
      switch self {
      case ._CYLINDRICAL_11(let entity): return entity
      default: return nil
      }
    }

    public var super_eCARTESIAN_11: eCARTESIAN_11? {
      switch self {
      case ._CARTESIAN_11(let entity): return entity
      default: return nil
      }
    }

    public var super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM? {
      switch self {
      case ._CARTESIAN_11(let entity): return entity.super_eREPRESENTATION_ITEM
      case ._CURVE_11(let entity): return entity.super_eREPRESENTATION_ITEM
      case ._CYLINDRICAL_11(let entity): return entity.super_eREPRESENTATION_ITEM
      case ._POINT_ARRAY(let entity): return entity.super_eREPRESENTATION_ITEM
      case ._POLAR_11(let entity): return entity.super_eREPRESENTATION_ITEM
      case ._USER_DEFINED_11(let entity): return entity.super_eREPRESENTATION_ITEM
      }
    }

    public var super_eCURVE_11: eCURVE_11? {
      switch self {
      case ._CURVE_11(let entity): return entity
      default: return nil
      }
    }

    public var super_ePOINT_ARRAY: ePOINT_ARRAY? {
      switch self {
      case ._POINT_ARRAY(let entity): return entity
      default: return nil
      }
    }

    public var super_eUSER_DEFINED_11: eUSER_DEFINED_11? {
      switch self {
      case ._USER_DEFINED_11(let entity): return entity
      default: return nil
      }
    }

    public var super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM? {
      switch self {
      case ._CARTESIAN_11(let entity): return entity.super_eGEOMETRIC_REPRESENTATION_ITEM
      case ._CURVE_11(let entity): return entity.super_eGEOMETRIC_REPRESENTATION_ITEM
      case ._CYLINDRICAL_11(let entity): return entity.super_eGEOMETRIC_REPRESENTATION_ITEM
      case ._POINT_ARRAY(let entity): return entity.super_eGEOMETRIC_REPRESENTATION_ITEM
      case ._POLAR_11(let entity): return entity.super_eGEOMETRIC_REPRESENTATION_ITEM
      default: return nil
      }
    }

    public var super_eCOMPOUND_REPRESENTATION_ITEM: eCOMPOUND_REPRESENTATION_ITEM? {
      switch self {
      case ._POINT_ARRAY(let entity): return entity.super_eCOMPOUND_REPRESENTATION_ITEM
      default: return nil
      }
    }


    //MARK: - ENTITY ATTRIBUTE REFERENCES
    /// attribute of SELECT type ``sBASIS_11_DIRECTION_MEMBER``
    /// - origin: ENTITY( ``ePOINT_ARRAY`` )
    public var ITEM_ELEMENT: tPOINT_ARRAY_MEMBERS?  {
      switch self {
      case ._POINT_ARRAY(let entity): return entity.ITEM_ELEMENT
      default: return nil
      }
    }

    /// attribute of SELECT type ``sBASIS_11_DIRECTION_MEMBER``
    /// - origin: ENTITY( ``eCARTESIAN_11`` )
    /// - origin: ENTITY( ``eCURVE_11`` )
    /// - origin: ENTITY( ``eCYLINDRICAL_11`` )
    /// - origin: ENTITY( ``ePOINT_ARRAY`` )
    /// - origin: ENTITY( ``ePOLAR_11`` )
    /// - origin: ENTITY( ``eUSER_DEFINED_11`` )
    public var NAME: tLABEL?  {
      switch self {
      case ._CARTESIAN_11(let entity): return entity.NAME
      case ._CURVE_11(let entity): return entity.NAME
      case ._CYLINDRICAL_11(let entity): return entity.NAME
      case ._POINT_ARRAY(let entity): return entity.NAME
      case ._POLAR_11(let entity): return entity.NAME
      case ._USER_DEFINED_11(let entity): return entity.NAME
      }
    }

    /// attribute of SELECT type ``sBASIS_11_DIRECTION_MEMBER``
    /// - origin: ENTITY( ``eCARTESIAN_11`` )
    /// - origin: ENTITY( ``eCURVE_11`` )
    /// - origin: ENTITY( ``eCYLINDRICAL_11`` )
    /// - origin: ENTITY( ``ePOINT_ARRAY`` )
    /// - origin: ENTITY( ``ePOLAR_11`` )
    public var DIM: tDIMENSION_COUNT?  {
      switch self {
      case ._CARTESIAN_11(let entity): return entity.DIM
      case ._CURVE_11(let entity): return entity.DIM
      case ._CYLINDRICAL_11(let entity): return entity.DIM
      case ._POINT_ARRAY(let entity): return entity.DIM
      case ._POLAR_11(let entity): return entity.DIM
      default: return nil
      }
    }


    //MARK: - SDAIValue
    public func isValueEqual<T: SDAIValue>(to rhs: T) -> Bool {
      switch self {
      case ._CARTESIAN_11(let selection): return selection.value.isValueEqual(to: rhs)
      case ._CURVE_11(let selection): return selection.value.isValueEqual(to: rhs)
      case ._CYLINDRICAL_11(let selection): return selection.value.isValueEqual(to: rhs)
      case ._POINT_ARRAY(let selection): return selection.value.isValueEqual(to: rhs)
      case ._POLAR_11(let selection): return selection.value.isValueEqual(to: rhs)
      case ._USER_DEFINED_11(let selection): return selection.value.isValueEqual(to: rhs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?) -> Bool? {
      switch self {
      case ._CARTESIAN_11(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._CURVE_11(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._CYLINDRICAL_11(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._POINT_ARRAY(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._POLAR_11(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._USER_DEFINED_11(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      }
    }

    public func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      switch self {
      case ._CARTESIAN_11(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._CURVE_11(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._CYLINDRICAL_11(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._POINT_ARRAY(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._POLAR_11(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._USER_DEFINED_11(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      }
    }

    public func isValueEqual<T: SDAIValue>(to rhs: T, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      switch self {
      case ._CARTESIAN_11(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._CURVE_11(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._CYLINDRICAL_11(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._POINT_ARRAY(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._POLAR_11(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._USER_DEFINED_11(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      switch self {
      case ._CARTESIAN_11(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._CURVE_11(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._CYLINDRICAL_11(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._POINT_ARRAY(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._POLAR_11(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._USER_DEFINED_11(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      }
    }


    //MARK: SDAIGenericTypeBase
    public func copy() -> Self {
      switch self {
      case ._CARTESIAN_11(let selection): return ._CARTESIAN_11(selection.copy())
      case ._CURVE_11(let selection): return ._CURVE_11(selection.copy())
      case ._CYLINDRICAL_11(let selection): return ._CYLINDRICAL_11(selection.copy())
      case ._POINT_ARRAY(let selection): return ._POINT_ARRAY(selection.copy())
      case ._POLAR_11(let selection): return ._POLAR_11(selection.copy())
      case ._USER_DEFINED_11(let selection): return ._USER_DEFINED_11(selection.copy())
      }
    }

    //MARK: SDAIGenericType
    public var typeMembers: Set<SDAI.STRING> {
      var members: Set<SDAI.STRING> = [SDAI.STRING(Self.typeName)]
      switch self {
      case ._CARTESIAN_11(let selection): members.formUnion(selection.typeMembers)
      case ._CURVE_11(let selection): members.formUnion(selection.typeMembers)
      case ._CYLINDRICAL_11(let selection): members.formUnion(selection.typeMembers)
      case ._POINT_ARRAY(let selection): members.formUnion(selection.typeMembers)
      case ._POLAR_11(let selection): members.formUnion(selection.typeMembers)
      case ._USER_DEFINED_11(let selection): members.formUnion(selection.typeMembers)
      }
      return members
    }

    public var entityReference: SDAI.EntityReference? {
      switch self {
      case ._CARTESIAN_11(let selection): return selection.entityReference
      case ._CURVE_11(let selection): return selection.entityReference
      case ._CYLINDRICAL_11(let selection): return selection.entityReference
      case ._POINT_ARRAY(let selection): return selection.entityReference
      case ._POLAR_11(let selection): return selection.entityReference
      case ._USER_DEFINED_11(let selection): return selection.entityReference
      }
    }
    public var stringValue: SDAI.STRING? {
      switch self {
      case ._CARTESIAN_11(let selection): return selection.stringValue
      case ._CURVE_11(let selection): return selection.stringValue
      case ._CYLINDRICAL_11(let selection): return selection.stringValue
      case ._POINT_ARRAY(let selection): return selection.stringValue
      case ._POLAR_11(let selection): return selection.stringValue
      case ._USER_DEFINED_11(let selection): return selection.stringValue
      }
    }
    public var binaryValue: SDAI.BINARY? {
      switch self {
      case ._CARTESIAN_11(let selection): return selection.binaryValue
      case ._CURVE_11(let selection): return selection.binaryValue
      case ._CYLINDRICAL_11(let selection): return selection.binaryValue
      case ._POINT_ARRAY(let selection): return selection.binaryValue
      case ._POLAR_11(let selection): return selection.binaryValue
      case ._USER_DEFINED_11(let selection): return selection.binaryValue
      }
    }
    public var logicalValue: SDAI.LOGICAL? {
      switch self {
      case ._CARTESIAN_11(let selection): return selection.logicalValue
      case ._CURVE_11(let selection): return selection.logicalValue
      case ._CYLINDRICAL_11(let selection): return selection.logicalValue
      case ._POINT_ARRAY(let selection): return selection.logicalValue
      case ._POLAR_11(let selection): return selection.logicalValue
      case ._USER_DEFINED_11(let selection): return selection.logicalValue
      }
    }
    public var booleanValue: SDAI.BOOLEAN? {
      switch self {
      case ._CARTESIAN_11(let selection): return selection.booleanValue
      case ._CURVE_11(let selection): return selection.booleanValue
      case ._CYLINDRICAL_11(let selection): return selection.booleanValue
      case ._POINT_ARRAY(let selection): return selection.booleanValue
      case ._POLAR_11(let selection): return selection.booleanValue
      case ._USER_DEFINED_11(let selection): return selection.booleanValue
      }
    }
    public var numberValue: SDAI.NUMBER? {
      switch self {
      case ._CARTESIAN_11(let selection): return selection.numberValue
      case ._CURVE_11(let selection): return selection.numberValue
      case ._CYLINDRICAL_11(let selection): return selection.numberValue
      case ._POINT_ARRAY(let selection): return selection.numberValue
      case ._POLAR_11(let selection): return selection.numberValue
      case ._USER_DEFINED_11(let selection): return selection.numberValue
      }
    }
    public var realValue: SDAI.REAL? {
      switch self {
      case ._CARTESIAN_11(let selection): return selection.realValue
      case ._CURVE_11(let selection): return selection.realValue
      case ._CYLINDRICAL_11(let selection): return selection.realValue
      case ._POINT_ARRAY(let selection): return selection.realValue
      case ._POLAR_11(let selection): return selection.realValue
      case ._USER_DEFINED_11(let selection): return selection.realValue
      }
    }
    public var integerValue: SDAI.INTEGER? {
      switch self {
      case ._CARTESIAN_11(let selection): return selection.integerValue
      case ._CURVE_11(let selection): return selection.integerValue
      case ._CYLINDRICAL_11(let selection): return selection.integerValue
      case ._POINT_ARRAY(let selection): return selection.integerValue
      case ._POLAR_11(let selection): return selection.integerValue
      case ._USER_DEFINED_11(let selection): return selection.integerValue
      }
    }
    public var genericEnumValue: SDAI.GenericEnumValue? {
      switch self {
      case ._CARTESIAN_11(let selection): return selection.genericEnumValue
      case ._CURVE_11(let selection): return selection.genericEnumValue
      case ._CYLINDRICAL_11(let selection): return selection.genericEnumValue
      case ._POINT_ARRAY(let selection): return selection.genericEnumValue
      case ._POLAR_11(let selection): return selection.genericEnumValue
      case ._USER_DEFINED_11(let selection): return selection.genericEnumValue
      }
    }
    public func arrayOptionalValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY_OPTIONAL<ELEM>? {
      switch self {
      case ._CARTESIAN_11(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._CURVE_11(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._CYLINDRICAL_11(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._POINT_ARRAY(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._POLAR_11(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._USER_DEFINED_11(let selection): return selection.arrayOptionalValue(elementType:elementType)
      }
    }
    public func arrayValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY<ELEM>? {
      switch self {
      case ._CARTESIAN_11(let selection): return selection.arrayValue(elementType:elementType)
      case ._CURVE_11(let selection): return selection.arrayValue(elementType:elementType)
      case ._CYLINDRICAL_11(let selection): return selection.arrayValue(elementType:elementType)
      case ._POINT_ARRAY(let selection): return selection.arrayValue(elementType:elementType)
      case ._POLAR_11(let selection): return selection.arrayValue(elementType:elementType)
      case ._USER_DEFINED_11(let selection): return selection.arrayValue(elementType:elementType)
      }
    }
    public func listValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.LIST<ELEM>? {
      switch self {
      case ._CARTESIAN_11(let selection): return selection.listValue(elementType:elementType)
      case ._CURVE_11(let selection): return selection.listValue(elementType:elementType)
      case ._CYLINDRICAL_11(let selection): return selection.listValue(elementType:elementType)
      case ._POINT_ARRAY(let selection): return selection.listValue(elementType:elementType)
      case ._POLAR_11(let selection): return selection.listValue(elementType:elementType)
      case ._USER_DEFINED_11(let selection): return selection.listValue(elementType:elementType)
      }
    }
    public func bagValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.BAG<ELEM>? {
      switch self {
      case ._CARTESIAN_11(let selection): return selection.bagValue(elementType:elementType)
      case ._CURVE_11(let selection): return selection.bagValue(elementType:elementType)
      case ._CYLINDRICAL_11(let selection): return selection.bagValue(elementType:elementType)
      case ._POINT_ARRAY(let selection): return selection.bagValue(elementType:elementType)
      case ._POLAR_11(let selection): return selection.bagValue(elementType:elementType)
      case ._USER_DEFINED_11(let selection): return selection.bagValue(elementType:elementType)
      }
    }
    public func setValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.SET<ELEM>? {
      switch self {
      case ._CARTESIAN_11(let selection): return selection.setValue(elementType:elementType)
      case ._CURVE_11(let selection): return selection.setValue(elementType:elementType)
      case ._CYLINDRICAL_11(let selection): return selection.setValue(elementType:elementType)
      case ._POINT_ARRAY(let selection): return selection.setValue(elementType:elementType)
      case ._POLAR_11(let selection): return selection.setValue(elementType:elementType)
      case ._USER_DEFINED_11(let selection): return selection.setValue(elementType:elementType)
      }
    }
    public func enumValue<ENUM:SDAIEnumerationType>(enumType:ENUM.Type) -> ENUM? {
      switch self {
      case ._CARTESIAN_11(let selection): return selection.enumValue(enumType:enumType)
      case ._CURVE_11(let selection): return selection.enumValue(enumType:enumType)
      case ._CYLINDRICAL_11(let selection): return selection.enumValue(enumType:enumType)
      case ._POINT_ARRAY(let selection): return selection.enumValue(enumType:enumType)
      case ._POLAR_11(let selection): return selection.enumValue(enumType:enumType)
      case ._USER_DEFINED_11(let selection): return selection.enumValue(enumType:enumType)
      }
    }

    //MARK: SDAIUnderlyingType
    public typealias FundamentalType = Self
    public static var typeName: String = 
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.BASIS_11_DIRECTION_MEMBER"
    public var asFundamentalType: FundamentalType { return self }

    //MARK: SDAIObservableAggregateElement
    public var entityReferences: AnySequence<SDAI.EntityReference> {
      switch self {
      case ._CARTESIAN_11(let entity): return entity.entityReferences
      case ._CURVE_11(let entity): return entity.entityReferences
      case ._CYLINDRICAL_11(let entity): return entity.entityReferences
      case ._POINT_ARRAY(let entity): return entity.entityReferences
      case ._POLAR_11(let entity): return entity.entityReferences
      case ._USER_DEFINED_11(let entity): return entity.entityReferences
      }
    }

    public mutating func configure(with observer: SDAI.EntityReferenceObserver) {
      switch self {
      case ._CARTESIAN_11(let entity): 
        entity.configure(with: observer)
        self = ._CARTESIAN_11(entity)
      case ._CURVE_11(let entity): 
        entity.configure(with: observer)
        self = ._CURVE_11(entity)
      case ._CYLINDRICAL_11(let entity): 
        entity.configure(with: observer)
        self = ._CYLINDRICAL_11(entity)
      case ._POINT_ARRAY(let entity): 
        entity.configure(with: observer)
        self = ._POINT_ARRAY(entity)
      case ._POLAR_11(let entity): 
        entity.configure(with: observer)
        self = ._POLAR_11(entity)
      case ._USER_DEFINED_11(let entity): 
        entity.configure(with: observer)
        self = ._USER_DEFINED_11(entity)
      }
    }

    public mutating func teardownObserver() {
      switch self {
      case ._CARTESIAN_11(let entity): 
        entity.teardownObserver()
        self = ._CARTESIAN_11(entity)
      case ._CURVE_11(let entity): 
        entity.teardownObserver()
        self = ._CURVE_11(entity)
      case ._CYLINDRICAL_11(let entity): 
        entity.teardownObserver()
        self = ._CYLINDRICAL_11(entity)
      case ._POINT_ARRAY(let entity): 
        entity.teardownObserver()
        self = ._POINT_ARRAY(entity)
      case ._POLAR_11(let entity): 
        entity.teardownObserver()
        self = ._POLAR_11(entity)
      case ._USER_DEFINED_11(let entity): 
        entity.teardownObserver()
        self = ._USER_DEFINED_11(entity)
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
      case ._CARTESIAN_11(let selectValue): result = eCARTESIAN_11.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\CARTESIAN_11")
      case ._CURVE_11(let selectValue): result = eCURVE_11.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\CURVE_11")
      case ._CYLINDRICAL_11(let selectValue): 
        result = eCYLINDRICAL_11.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\CYLINDRICAL_11")
      case ._POINT_ARRAY(let selectValue): result = ePOINT_ARRAY.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\POINT_ARRAY")
      case ._POLAR_11(let selectValue): result = ePOLAR_11.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\POLAR_11")
      case ._USER_DEFINED_11(let selectValue): 
        result = eUSER_DEFINED_11.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\USER_DEFINED_11")
      case nil: break
      }

      return result
    }

  }

}


//MARK: - SELECT TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sBASIS_11_DIRECTION_MEMBER__type: 
  SDAISelectType {

  //MARK: GROUP REFERENCES
  var super_ePOLAR_11: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePOLAR_11? { get }
  var super_eCYLINDRICAL_11: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCYLINDRICAL_11? { get }
  var super_eCARTESIAN_11: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCARTESIAN_11? { get }
  var super_eREPRESENTATION_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION_ITEM? { get }
  var super_eCURVE_11: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCURVE_11? { get }
  var super_ePOINT_ARRAY: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePOINT_ARRAY? { get }
  var super_eUSER_DEFINED_11: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eUSER_DEFINED_11? { get }
  var super_eGEOMETRIC_REPRESENTATION_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eGEOMETRIC_REPRESENTATION_ITEM? { get }
  var super_eCOMPOUND_REPRESENTATION_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCOMPOUND_REPRESENTATION_ITEM? { get }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var ITEM_ELEMENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tPOINT_ARRAY_MEMBERS?  { get }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { get }
  var DIM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tDIMENSION_COUNT?  { get }
}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sBASIS_11_DIRECTION_MEMBER__subtype: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sBASIS_11_DIRECTION_MEMBER__type, SDAIDefinedType
where Supertype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sBASIS_11_DIRECTION_MEMBER__type
{}

public extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sBASIS_11_DIRECTION_MEMBER__subtype {
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
  var super_ePOLAR_11: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePOLAR_11? { rep.super_ePOLAR_11 }
  var super_eCYLINDRICAL_11: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCYLINDRICAL_11? { rep.super_eCYLINDRICAL_11 }
  var super_eCARTESIAN_11: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCARTESIAN_11? { rep.super_eCARTESIAN_11 }
  var super_eREPRESENTATION_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION_ITEM? { rep.super_eREPRESENTATION_ITEM }
  var super_eCURVE_11: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCURVE_11? { rep.super_eCURVE_11 }
  var super_ePOINT_ARRAY: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePOINT_ARRAY? { rep.super_ePOINT_ARRAY }
  var super_eUSER_DEFINED_11: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eUSER_DEFINED_11? { rep.super_eUSER_DEFINED_11 }
  var super_eGEOMETRIC_REPRESENTATION_ITEM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eGEOMETRIC_REPRESENTATION_ITEM? { rep.super_eGEOMETRIC_REPRESENTATION_ITEM }
  var super_eCOMPOUND_REPRESENTATION_ITEM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCOMPOUND_REPRESENTATION_ITEM? { rep.super_eCOMPOUND_REPRESENTATION_ITEM }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var ITEM_ELEMENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tPOINT_ARRAY_MEMBERS?  { rep.ITEM_ELEMENT }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { rep.NAME }
  var DIM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tDIMENSION_COUNT?  { rep.DIM }
}

