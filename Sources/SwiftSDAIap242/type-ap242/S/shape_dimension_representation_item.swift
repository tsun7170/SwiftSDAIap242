/* file: shape_dimension_representation_item.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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
  TYPE shape_dimension_representation_item = SELECT
    ( compound_representation_item (*ENTITY*),
     descriptive_representation_item (*ENTITY*),
     measure_representation_item (*ENTITY*),
     placement (*ENTITY*) );
  END_TYPE; -- shape_dimension_representation_item (line:5352 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES FOR SELECT
/*
  compound_representation_item (*ENTITY*):
  ATTR:  inner_boundary: compound_inner_area_boundary
  ATTR:  item_element: compound_item_definition
  ATTR:  name: label

  descriptive_representation_item (*ENTITY*):
  ATTR:  description: text
  ATTR:  name: label

  measure_representation_item (*ENTITY*):
  ATTR:  unit_component: unit
  ATTR:  value_component: measure_value
  ATTR:  name: label

  placement (*ENTITY*):
  ATTR:  p: (AMBIGUOUS (CASE LEVEL))
  ATTR:  z: direction
  ATTR:  axis: (AMBIGUOUS (CASE LEVEL))
  ATTR:  ref_direction: (AMBIGUOUS (CASE LEVEL))
  ATTR:  location: cartesian_point
  ATTR:  name: label
  ATTR:  dim: dimension_count

*/

/** SELECT type
- EXPRESS:
```express
  TYPE shape_dimension_representation_item = SELECT
    ( compound_representation_item (*ENTITY*),
     descriptive_representation_item (*ENTITY*),
     measure_representation_item (*ENTITY*),
     placement (*ENTITY*) );
  END_TYPE; -- shape_dimension_representation_item (line:5352 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public enum sSHAPE_DIMENSION_REPRESENTATION_ITEM : SDAIValue, AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sSHAPE_DIMENSION_REPRESENTATION_ITEM__type {

    /// SELECT case ``eCOMPOUND_REPRESENTATION_ITEM`` (ENTITY) in ``sSHAPE_DIMENSION_REPRESENTATION_ITEM``
    case _COMPOUND_REPRESENTATION_ITEM(eCOMPOUND_REPRESENTATION_ITEM)	// (ENTITY)

    /// SELECT case ``eDESCRIPTIVE_REPRESENTATION_ITEM`` (ENTITY) in ``sSHAPE_DIMENSION_REPRESENTATION_ITEM``
    case _DESCRIPTIVE_REPRESENTATION_ITEM(eDESCRIPTIVE_REPRESENTATION_ITEM)	// (ENTITY)

    /// SELECT case ``eMEASURE_REPRESENTATION_ITEM`` (ENTITY) in ``sSHAPE_DIMENSION_REPRESENTATION_ITEM``
    case _MEASURE_REPRESENTATION_ITEM(eMEASURE_REPRESENTATION_ITEM)	// (ENTITY)

    /// SELECT case ``ePLACEMENT`` (ENTITY) in ``sSHAPE_DIMENSION_REPRESENTATION_ITEM``
    case _PLACEMENT(ePLACEMENT)	// (ENTITY)

    //MARK: - CONSTRUCTORS
    public init(fundamental: FundamentalType) { self = fundamental }

    public init?<T: SDAIUnderlyingType>(possiblyFrom underlyingType: T?){
      return nil
    }

    public init?(possiblyFrom complex: SDAI.ComplexEntity?) {
      guard let complex = complex else { return nil }

      if let base = complex.entityReference(eCOMPOUND_REPRESENTATION_ITEM.self) {self = ._COMPOUND_REPRESENTATION_ITEM(base) }
      else if let base = complex.entityReference(eDESCRIPTIVE_REPRESENTATION_ITEM.self) {self = ._DESCRIPTIVE_REPRESENTATION_ITEM(base) }
      else if let base = complex.entityReference(eMEASURE_REPRESENTATION_ITEM.self) {self = ._MEASURE_REPRESENTATION_ITEM(base) }
      else if let base = complex.entityReference(ePLACEMENT.self) {self = ._PLACEMENT(base) }
      else { return nil }
    }

    public init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let select = generic else { return nil }

      if let fundamental = select as? Self {
        self.init(fundamental: fundamental)
      }
      else if let base = eCOMPOUND_REPRESENTATION_ITEM.convert(fromGeneric: select) {
        self = ._COMPOUND_REPRESENTATION_ITEM(base)
      }
      else if let base = eDESCRIPTIVE_REPRESENTATION_ITEM.convert(fromGeneric: select) {
        self = ._DESCRIPTIVE_REPRESENTATION_ITEM(base)
      }
      else if let base = eMEASURE_REPRESENTATION_ITEM.convert(fromGeneric: select) {
        self = ._MEASURE_REPRESENTATION_ITEM(base)
      }
      else if let base = ePLACEMENT.convert(fromGeneric: select) {
        self = ._PLACEMENT(base)
      }
      else { return nil }
    }

    // InitializableByP21Parameter
    public static var bareTypeName: String = "SHAPE_DIMENSION_REPRESENTATION_ITEM"

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
    public var super_eMEASURE_REPRESENTATION_ITEM: eMEASURE_REPRESENTATION_ITEM? {
      switch self {
      case ._MEASURE_REPRESENTATION_ITEM(let entity): return entity
      default: return nil
      }
    }

    public var super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM? {
      switch self {
      case ._COMPOUND_REPRESENTATION_ITEM(let entity): return entity.super_eREPRESENTATION_ITEM
      case ._DESCRIPTIVE_REPRESENTATION_ITEM(let entity): return entity.super_eREPRESENTATION_ITEM
      case ._MEASURE_REPRESENTATION_ITEM(let entity): return entity.super_eREPRESENTATION_ITEM
      case ._PLACEMENT(let entity): return entity.super_eREPRESENTATION_ITEM
      }
    }

    public var super_ePLACEMENT: ePLACEMENT? {
      switch self {
      case ._PLACEMENT(let entity): return entity
      default: return nil
      }
    }

    public var super_eMEASURE_WITH_UNIT: eMEASURE_WITH_UNIT? {
      switch self {
      case ._MEASURE_REPRESENTATION_ITEM(let entity): return entity.super_eMEASURE_WITH_UNIT
      default: return nil
      }
    }

    public var super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM? {
      switch self {
      case ._PLACEMENT(let entity): return entity.super_eGEOMETRIC_REPRESENTATION_ITEM
      default: return nil
      }
    }

    public var super_eDESCRIPTIVE_REPRESENTATION_ITEM: eDESCRIPTIVE_REPRESENTATION_ITEM? {
      switch self {
      case ._DESCRIPTIVE_REPRESENTATION_ITEM(let entity): return entity
      default: return nil
      }
    }

    public var super_eCOMPOUND_REPRESENTATION_ITEM: eCOMPOUND_REPRESENTATION_ITEM? {
      switch self {
      case ._COMPOUND_REPRESENTATION_ITEM(let entity): return entity
      default: return nil
      }
    }


    //MARK: - ENTITY ATTRIBUTE REFERENCES
    /// attribute of SELECT type ``sSHAPE_DIMENSION_REPRESENTATION_ITEM``
    /// - origin: ENTITY( ``eDESCRIPTIVE_REPRESENTATION_ITEM`` )
    public var DESCRIPTION: tTEXT?  {
      switch self {
      case ._DESCRIPTIVE_REPRESENTATION_ITEM(let entity): return entity.DESCRIPTION
      default: return nil
      }
    }

    /// attribute of SELECT type ``sSHAPE_DIMENSION_REPRESENTATION_ITEM``
    /// - origin: ENTITY( ``eCOMPOUND_REPRESENTATION_ITEM`` )
    public var INNER_BOUNDARY: sCOMPOUND_INNER_AREA_BOUNDARY?  {
      switch self {
      case ._COMPOUND_REPRESENTATION_ITEM(let entity): return entity.INNER_BOUNDARY
      default: return nil
      }
    }

    /// attribute of SELECT type ``sSHAPE_DIMENSION_REPRESENTATION_ITEM``
    /// - origin: ENTITY( ``ePLACEMENT`` )
    public var Z: eDIRECTION?  {
      switch self {
      case ._PLACEMENT(let entity): return entity.Z
      default: return nil
      }
    }

    /// attribute of SELECT type ``sSHAPE_DIMENSION_REPRESENTATION_ITEM``
    /// - origin: ENTITY( ``eMEASURE_REPRESENTATION_ITEM`` )
    public var UNIT_COMPONENT: sUNIT?  {
      switch self {
      case ._MEASURE_REPRESENTATION_ITEM(let entity): return entity.UNIT_COMPONENT
      default: return nil
      }
    }

    /// attribute of SELECT type ``sSHAPE_DIMENSION_REPRESENTATION_ITEM``
    /// - origin: ENTITY( ``eCOMPOUND_REPRESENTATION_ITEM`` )
    public var ITEM_ELEMENT: sCOMPOUND_ITEM_DEFINITION?  {
      switch self {
      case ._COMPOUND_REPRESENTATION_ITEM(let entity): return entity.ITEM_ELEMENT
      default: return nil
      }
    }

    /// attribute of SELECT type ``sSHAPE_DIMENSION_REPRESENTATION_ITEM``
    /// - origin: ENTITY( ``eMEASURE_REPRESENTATION_ITEM`` )
    public var VALUE_COMPONENT: sMEASURE_VALUE?  {
      switch self {
      case ._MEASURE_REPRESENTATION_ITEM(let entity): return entity.VALUE_COMPONENT
      default: return nil
      }
    }

    /// attribute of SELECT type ``sSHAPE_DIMENSION_REPRESENTATION_ITEM``
    /// - origin: ENTITY( ``ePLACEMENT`` )
    public var LOCATION: eCARTESIAN_POINT?  {
      switch self {
      case ._PLACEMENT(let entity): return entity.LOCATION
      default: return nil
      }
    }

    /// attribute of SELECT type ``sSHAPE_DIMENSION_REPRESENTATION_ITEM``
    /// - origin: ENTITY( ``eCOMPOUND_REPRESENTATION_ITEM`` )
    /// - origin: ENTITY( ``eDESCRIPTIVE_REPRESENTATION_ITEM`` )
    /// - origin: ENTITY( ``eMEASURE_REPRESENTATION_ITEM`` )
    /// - origin: ENTITY( ``ePLACEMENT`` )
    public var NAME: tLABEL?  {
      switch self {
      case ._COMPOUND_REPRESENTATION_ITEM(let entity): return entity.NAME
      case ._DESCRIPTIVE_REPRESENTATION_ITEM(let entity): return entity.NAME
      case ._MEASURE_REPRESENTATION_ITEM(let entity): return entity.NAME
      case ._PLACEMENT(let entity): return entity.NAME
      }
    }

    /// attribute of SELECT type ``sSHAPE_DIMENSION_REPRESENTATION_ITEM``
    /// - origin: ENTITY( ``ePLACEMENT`` )
    public var DIM: tDIMENSION_COUNT?  {
      switch self {
      case ._PLACEMENT(let entity): return entity.DIM
      default: return nil
      }
    }


    //MARK: - SDAIValue
    public func isValueEqual<T: SDAIValue>(to rhs: T) -> Bool {
      switch self {
      case ._COMPOUND_REPRESENTATION_ITEM(let selection): return selection.value.isValueEqual(to: rhs)
      case ._DESCRIPTIVE_REPRESENTATION_ITEM(let selection): return selection.value.isValueEqual(to: rhs)
      case ._MEASURE_REPRESENTATION_ITEM(let selection): return selection.value.isValueEqual(to: rhs)
      case ._PLACEMENT(let selection): return selection.value.isValueEqual(to: rhs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?) -> Bool? {
      switch self {
      case ._COMPOUND_REPRESENTATION_ITEM(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._DESCRIPTIVE_REPRESENTATION_ITEM(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._MEASURE_REPRESENTATION_ITEM(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._PLACEMENT(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      }
    }

    public func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      switch self {
      case ._COMPOUND_REPRESENTATION_ITEM(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._DESCRIPTIVE_REPRESENTATION_ITEM(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._MEASURE_REPRESENTATION_ITEM(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._PLACEMENT(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      }
    }

    public func isValueEqual<T: SDAIValue>(to rhs: T, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      switch self {
      case ._COMPOUND_REPRESENTATION_ITEM(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._DESCRIPTIVE_REPRESENTATION_ITEM(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._MEASURE_REPRESENTATION_ITEM(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._PLACEMENT(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      switch self {
      case ._COMPOUND_REPRESENTATION_ITEM(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._DESCRIPTIVE_REPRESENTATION_ITEM(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._MEASURE_REPRESENTATION_ITEM(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._PLACEMENT(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      }
    }


    //MARK: SDAIGenericTypeBase
    public func copy() -> Self {
      switch self {
      case ._COMPOUND_REPRESENTATION_ITEM(let selection): return ._COMPOUND_REPRESENTATION_ITEM(selection.copy())
      case ._DESCRIPTIVE_REPRESENTATION_ITEM(let selection): return ._DESCRIPTIVE_REPRESENTATION_ITEM(selection.copy())
      case ._MEASURE_REPRESENTATION_ITEM(let selection): return ._MEASURE_REPRESENTATION_ITEM(selection.copy())
      case ._PLACEMENT(let selection): return ._PLACEMENT(selection.copy())
      }
    }

    //MARK: SDAIGenericType
    public var typeMembers: Set<SDAI.STRING> {
      var members: Set<SDAI.STRING> = [SDAI.STRING(Self.typeName)]
      switch self {
      case ._COMPOUND_REPRESENTATION_ITEM(let selection): members.formUnion(selection.typeMembers)
      case ._DESCRIPTIVE_REPRESENTATION_ITEM(let selection): members.formUnion(selection.typeMembers)
      case ._MEASURE_REPRESENTATION_ITEM(let selection): members.formUnion(selection.typeMembers)
      case ._PLACEMENT(let selection): members.formUnion(selection.typeMembers)
      }
      return members
    }

    public var entityReference: SDAI.EntityReference? {
      switch self {
      case ._COMPOUND_REPRESENTATION_ITEM(let selection): return selection.entityReference
      case ._DESCRIPTIVE_REPRESENTATION_ITEM(let selection): return selection.entityReference
      case ._MEASURE_REPRESENTATION_ITEM(let selection): return selection.entityReference
      case ._PLACEMENT(let selection): return selection.entityReference
      }
    }
    public var stringValue: SDAI.STRING? {
      switch self {
      case ._COMPOUND_REPRESENTATION_ITEM(let selection): return selection.stringValue
      case ._DESCRIPTIVE_REPRESENTATION_ITEM(let selection): return selection.stringValue
      case ._MEASURE_REPRESENTATION_ITEM(let selection): return selection.stringValue
      case ._PLACEMENT(let selection): return selection.stringValue
      }
    }
    public var binaryValue: SDAI.BINARY? {
      switch self {
      case ._COMPOUND_REPRESENTATION_ITEM(let selection): return selection.binaryValue
      case ._DESCRIPTIVE_REPRESENTATION_ITEM(let selection): return selection.binaryValue
      case ._MEASURE_REPRESENTATION_ITEM(let selection): return selection.binaryValue
      case ._PLACEMENT(let selection): return selection.binaryValue
      }
    }
    public var logicalValue: SDAI.LOGICAL? {
      switch self {
      case ._COMPOUND_REPRESENTATION_ITEM(let selection): return selection.logicalValue
      case ._DESCRIPTIVE_REPRESENTATION_ITEM(let selection): return selection.logicalValue
      case ._MEASURE_REPRESENTATION_ITEM(let selection): return selection.logicalValue
      case ._PLACEMENT(let selection): return selection.logicalValue
      }
    }
    public var booleanValue: SDAI.BOOLEAN? {
      switch self {
      case ._COMPOUND_REPRESENTATION_ITEM(let selection): return selection.booleanValue
      case ._DESCRIPTIVE_REPRESENTATION_ITEM(let selection): return selection.booleanValue
      case ._MEASURE_REPRESENTATION_ITEM(let selection): return selection.booleanValue
      case ._PLACEMENT(let selection): return selection.booleanValue
      }
    }
    public var numberValue: SDAI.NUMBER? {
      switch self {
      case ._COMPOUND_REPRESENTATION_ITEM(let selection): return selection.numberValue
      case ._DESCRIPTIVE_REPRESENTATION_ITEM(let selection): return selection.numberValue
      case ._MEASURE_REPRESENTATION_ITEM(let selection): return selection.numberValue
      case ._PLACEMENT(let selection): return selection.numberValue
      }
    }
    public var realValue: SDAI.REAL? {
      switch self {
      case ._COMPOUND_REPRESENTATION_ITEM(let selection): return selection.realValue
      case ._DESCRIPTIVE_REPRESENTATION_ITEM(let selection): return selection.realValue
      case ._MEASURE_REPRESENTATION_ITEM(let selection): return selection.realValue
      case ._PLACEMENT(let selection): return selection.realValue
      }
    }
    public var integerValue: SDAI.INTEGER? {
      switch self {
      case ._COMPOUND_REPRESENTATION_ITEM(let selection): return selection.integerValue
      case ._DESCRIPTIVE_REPRESENTATION_ITEM(let selection): return selection.integerValue
      case ._MEASURE_REPRESENTATION_ITEM(let selection): return selection.integerValue
      case ._PLACEMENT(let selection): return selection.integerValue
      }
    }
    public var genericEnumValue: SDAI.GenericEnumValue? {
      switch self {
      case ._COMPOUND_REPRESENTATION_ITEM(let selection): return selection.genericEnumValue
      case ._DESCRIPTIVE_REPRESENTATION_ITEM(let selection): return selection.genericEnumValue
      case ._MEASURE_REPRESENTATION_ITEM(let selection): return selection.genericEnumValue
      case ._PLACEMENT(let selection): return selection.genericEnumValue
      }
    }
    public func arrayOptionalValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY_OPTIONAL<ELEM>? {
      switch self {
      case ._COMPOUND_REPRESENTATION_ITEM(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._DESCRIPTIVE_REPRESENTATION_ITEM(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._MEASURE_REPRESENTATION_ITEM(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._PLACEMENT(let selection): return selection.arrayOptionalValue(elementType:elementType)
      }
    }
    public func arrayValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY<ELEM>? {
      switch self {
      case ._COMPOUND_REPRESENTATION_ITEM(let selection): return selection.arrayValue(elementType:elementType)
      case ._DESCRIPTIVE_REPRESENTATION_ITEM(let selection): return selection.arrayValue(elementType:elementType)
      case ._MEASURE_REPRESENTATION_ITEM(let selection): return selection.arrayValue(elementType:elementType)
      case ._PLACEMENT(let selection): return selection.arrayValue(elementType:elementType)
      }
    }
    public func listValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.LIST<ELEM>? {
      switch self {
      case ._COMPOUND_REPRESENTATION_ITEM(let selection): return selection.listValue(elementType:elementType)
      case ._DESCRIPTIVE_REPRESENTATION_ITEM(let selection): return selection.listValue(elementType:elementType)
      case ._MEASURE_REPRESENTATION_ITEM(let selection): return selection.listValue(elementType:elementType)
      case ._PLACEMENT(let selection): return selection.listValue(elementType:elementType)
      }
    }
    public func bagValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.BAG<ELEM>? {
      switch self {
      case ._COMPOUND_REPRESENTATION_ITEM(let selection): return selection.bagValue(elementType:elementType)
      case ._DESCRIPTIVE_REPRESENTATION_ITEM(let selection): return selection.bagValue(elementType:elementType)
      case ._MEASURE_REPRESENTATION_ITEM(let selection): return selection.bagValue(elementType:elementType)
      case ._PLACEMENT(let selection): return selection.bagValue(elementType:elementType)
      }
    }
    public func setValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.SET<ELEM>? {
      switch self {
      case ._COMPOUND_REPRESENTATION_ITEM(let selection): return selection.setValue(elementType:elementType)
      case ._DESCRIPTIVE_REPRESENTATION_ITEM(let selection): return selection.setValue(elementType:elementType)
      case ._MEASURE_REPRESENTATION_ITEM(let selection): return selection.setValue(elementType:elementType)
      case ._PLACEMENT(let selection): return selection.setValue(elementType:elementType)
      }
    }
    public func enumValue<ENUM:SDAIEnumerationType>(enumType:ENUM.Type) -> ENUM? {
      switch self {
      case ._COMPOUND_REPRESENTATION_ITEM(let selection): return selection.enumValue(enumType:enumType)
      case ._DESCRIPTIVE_REPRESENTATION_ITEM(let selection): return selection.enumValue(enumType:enumType)
      case ._MEASURE_REPRESENTATION_ITEM(let selection): return selection.enumValue(enumType:enumType)
      case ._PLACEMENT(let selection): return selection.enumValue(enumType:enumType)
      }
    }

    //MARK: SDAIUnderlyingType
    public typealias FundamentalType = Self
    public static var typeName: String = 
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_DIMENSION_REPRESENTATION_ITEM"
    public var asFundamentalType: FundamentalType { return self }

    //MARK: SDAIObservableAggregateElement
    public var entityReferences: AnySequence<SDAI.EntityReference> {
      switch self {
      case ._COMPOUND_REPRESENTATION_ITEM(let entity): return entity.entityReferences
      case ._DESCRIPTIVE_REPRESENTATION_ITEM(let entity): return entity.entityReferences
      case ._MEASURE_REPRESENTATION_ITEM(let entity): return entity.entityReferences
      case ._PLACEMENT(let entity): return entity.entityReferences
      }
    }

    public mutating func configure(with observer: SDAI.EntityReferenceObserver) {
      switch self {
      case ._COMPOUND_REPRESENTATION_ITEM(let entity): 
        entity.configure(with: observer)
        self = ._COMPOUND_REPRESENTATION_ITEM(entity)
      case ._DESCRIPTIVE_REPRESENTATION_ITEM(let entity): 
        entity.configure(with: observer)
        self = ._DESCRIPTIVE_REPRESENTATION_ITEM(entity)
      case ._MEASURE_REPRESENTATION_ITEM(let entity): 
        entity.configure(with: observer)
        self = ._MEASURE_REPRESENTATION_ITEM(entity)
      case ._PLACEMENT(let entity): 
        entity.configure(with: observer)
        self = ._PLACEMENT(entity)
      }
    }

    public mutating func teardownObserver() {
      switch self {
      case ._COMPOUND_REPRESENTATION_ITEM(let entity): 
        entity.teardownObserver()
        self = ._COMPOUND_REPRESENTATION_ITEM(entity)
      case ._DESCRIPTIVE_REPRESENTATION_ITEM(let entity): 
        entity.teardownObserver()
        self = ._DESCRIPTIVE_REPRESENTATION_ITEM(entity)
      case ._MEASURE_REPRESENTATION_ITEM(let entity): 
        entity.teardownObserver()
        self = ._MEASURE_REPRESENTATION_ITEM(entity)
      case ._PLACEMENT(let entity): 
        entity.teardownObserver()
        self = ._PLACEMENT(entity)
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
      case ._COMPOUND_REPRESENTATION_ITEM(let selectValue): 
        result = eCOMPOUND_REPRESENTATION_ITEM.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\COMPOUND_REPRESENTATION_ITEM")
      case ._DESCRIPTIVE_REPRESENTATION_ITEM(let selectValue): 
        result = eDESCRIPTIVE_REPRESENTATION_ITEM.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\DESCRIPTIVE_REPRESENTATION_ITEM")
      case ._MEASURE_REPRESENTATION_ITEM(let selectValue): 
        result = eMEASURE_REPRESENTATION_ITEM.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\MEASURE_REPRESENTATION_ITEM")
      case ._PLACEMENT(let selectValue): result = ePLACEMENT.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\PLACEMENT")
      case nil: break
      }

      return result
    }

  }

}


//MARK: - SELECT TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sSHAPE_DIMENSION_REPRESENTATION_ITEM__type: 
  SDAISelectType {

  //MARK: GROUP REFERENCES
  var super_eMEASURE_REPRESENTATION_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eMEASURE_REPRESENTATION_ITEM? { get }
  var super_eREPRESENTATION_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION_ITEM? { get }
  var super_ePLACEMENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePLACEMENT? { get }
  var super_eMEASURE_WITH_UNIT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eMEASURE_WITH_UNIT? { get }
  var super_eGEOMETRIC_REPRESENTATION_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eGEOMETRIC_REPRESENTATION_ITEM? { get }
  var super_eDESCRIPTIVE_REPRESENTATION_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDESCRIPTIVE_REPRESENTATION_ITEM? { get }
  var super_eCOMPOUND_REPRESENTATION_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCOMPOUND_REPRESENTATION_ITEM? { get }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var DESCRIPTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tTEXT?  { get }
  var INNER_BOUNDARY: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sCOMPOUND_INNER_AREA_BOUNDARY?  { get }
  var Z: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDIRECTION?  { get }
  var UNIT_COMPONENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sUNIT?  { get }
  var ITEM_ELEMENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sCOMPOUND_ITEM_DEFINITION?  { get }
  var VALUE_COMPONENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sMEASURE_VALUE?  { get }
  var LOCATION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCARTESIAN_POINT?  { get }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { get }
  var DIM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tDIMENSION_COUNT?  { get }
}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sSHAPE_DIMENSION_REPRESENTATION_ITEM__subtype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sSHAPE_DIMENSION_REPRESENTATION_ITEM__type, SDAIDefinedType
where Supertype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sSHAPE_DIMENSION_REPRESENTATION_ITEM__type
{}

public extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sSHAPE_DIMENSION_REPRESENTATION_ITEM__subtype {
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
  var super_eMEASURE_REPRESENTATION_ITEM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eMEASURE_REPRESENTATION_ITEM? { rep.super_eMEASURE_REPRESENTATION_ITEM }
  var super_eREPRESENTATION_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION_ITEM? { rep.super_eREPRESENTATION_ITEM }
  var super_ePLACEMENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePLACEMENT? { rep.super_ePLACEMENT }
  var super_eMEASURE_WITH_UNIT: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eMEASURE_WITH_UNIT? { rep.super_eMEASURE_WITH_UNIT }
  var super_eGEOMETRIC_REPRESENTATION_ITEM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eGEOMETRIC_REPRESENTATION_ITEM? { rep.super_eGEOMETRIC_REPRESENTATION_ITEM }
  var super_eDESCRIPTIVE_REPRESENTATION_ITEM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDESCRIPTIVE_REPRESENTATION_ITEM? { rep.super_eDESCRIPTIVE_REPRESENTATION_ITEM }
  var super_eCOMPOUND_REPRESENTATION_ITEM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCOMPOUND_REPRESENTATION_ITEM? { rep.super_eCOMPOUND_REPRESENTATION_ITEM }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var DESCRIPTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tTEXT?  { rep.DESCRIPTION }
  var INNER_BOUNDARY: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sCOMPOUND_INNER_AREA_BOUNDARY?  { rep.INNER_BOUNDARY }
  var Z: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDIRECTION?  { rep.Z }
  var UNIT_COMPONENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sUNIT?  { rep.UNIT_COMPONENT }
  var ITEM_ELEMENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sCOMPOUND_ITEM_DEFINITION?  { rep.ITEM_ELEMENT }
  var VALUE_COMPONENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sMEASURE_VALUE?  { rep.VALUE_COMPONENT }
  var LOCATION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCARTESIAN_POINT?  { rep.LOCATION }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { rep.NAME }
  var DIM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tDIMENSION_COUNT?  { rep.DIM }
}

