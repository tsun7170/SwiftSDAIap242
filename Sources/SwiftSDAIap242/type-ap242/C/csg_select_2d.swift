/* file: csg_select_2d.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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
  TYPE csg_select_2d = SELECT
    ( boolean_result_2d (*ENTITY*),
     bounded_primitive_2d (*SELECT*) );
  END_TYPE; -- csg_select_2d (line:1811 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES FOR SELECT
/*
  boolean_result_2d (*ENTITY*):
  ATTR:  operator: boolean_operator
  ATTR:  second_operand: boolean_operand_2d
  ATTR:  name: label
  ATTR:  first_operand: boolean_operand_2d
  ATTR:  dim: dimension_count

  bounded_primitive_2d (*SELECT*):
  ATTR:  centre: cartesian_point
  ATTR:  bounds: LIST [3 : ?] OF UNIQUE cartesian_point
  ATTR:  x: positive_length_measure
  ATTR:  y: positive_length_measure
  ATTR:  agreement_flag: BOOLEAN
  ATTR:  radius: positive_length_measure
  ATTR:  position: axis2_placement_2d *** Multiple Select Case Sources ***
  ATTR:  base_curve: composite_curve
  ATTR:  semi_axis_1: positive_length_measure
  ATTR:  semi_axis_2: positive_length_measure
  ATTR:  mapping_source: representation_map
  ATTR:  mapping_target: representation_item
  ATTR:  name: label
  ATTR:  dim: dimension_count

*/

/** SELECT type
- EXPRESS:
```express
  TYPE csg_select_2d = SELECT
    ( boolean_result_2d (*ENTITY*),
     bounded_primitive_2d (*SELECT*) );
  END_TYPE; -- csg_select_2d (line:1811 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public enum sCSG_SELECT_2D : SDAIValue, AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sCSG_SELECT_2D__type {

    /// SELECT case ``eBOOLEAN_RESULT_2D`` (ENTITY) in ``sCSG_SELECT_2D``
    case _BOOLEAN_RESULT_2D(eBOOLEAN_RESULT_2D)	// (ENTITY)

    /// SELECT case ``sBOUNDED_PRIMITIVE_2D`` (SELECT) in ``sCSG_SELECT_2D``
    case _BOUNDED_PRIMITIVE_2D(sBOUNDED_PRIMITIVE_2D)	// (SELECT)

    //MARK: - CONSTRUCTORS
    public init(fundamental: FundamentalType) { self = fundamental }

    public init?<T: SDAIUnderlyingType>(possiblyFrom underlyingType: T?){
      guard let underlyingType = underlyingType else { return nil }

      if let base = underlyingType as? sBOUNDED_PRIMITIVE_2D {
        self = ._BOUNDED_PRIMITIVE_2D(base)
      }
      else if let base = sBOUNDED_PRIMITIVE_2D(possiblyFrom: underlyingType) {
        self = ._BOUNDED_PRIMITIVE_2D(base)
      }
      else { return nil }
    }

    public init?(possiblyFrom complex: SDAI.ComplexEntity?) {
      guard let complex = complex else { return nil }

      if let base = complex.entityReference(eBOOLEAN_RESULT_2D.self) {self = ._BOOLEAN_RESULT_2D(base) }
      else if let base = sBOUNDED_PRIMITIVE_2D(possiblyFrom: complex) {
        self = ._BOUNDED_PRIMITIVE_2D(base)
      }
      else { return nil }
    }

    public init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let select = generic else { return nil }

      if let fundamental = select as? Self {
        self.init(fundamental: fundamental)
      }
      else if let base = eBOOLEAN_RESULT_2D.convert(fromGeneric: select) {
        self = ._BOOLEAN_RESULT_2D(base)
      }
      else if let base = sBOUNDED_PRIMITIVE_2D.convert(fromGeneric: select) {
        self = ._BOUNDED_PRIMITIVE_2D(base)
      }
      else { return nil }
    }

    // InitializableByP21Parameter
    public static var bareTypeName: String = "CSG_SELECT_2D"

    public init?(p21typedParam: P21Decode.ExchangeStructure.TypedParameter, from exchangeStructure: P21Decode.ExchangeStructure) {
      guard let keyword = p21typedParam.keyword.asStandardKeyword else { exchangeStructure.error = "unexpected p21parameter(\(p21typedParam)) while resolving \(Self.bareTypeName) select value"; return nil }

      switch(keyword) {
      case sBOUNDED_PRIMITIVE_2D.bareTypeName:
        guard let base = sBOUNDED_PRIMITIVE_2D(p21typedParam: p21typedParam, from: exchangeStructure) else { exchangeStructure.add(errorContext: "while resolving \(Self.bareTypeName) select value"); return nil }
        self = ._BOUNDED_PRIMITIVE_2D(base)

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
    public var super_sBOUNDED_PRIMITIVE_2D: sBOUNDED_PRIMITIVE_2D? {
      switch self {
      case ._BOUNDED_PRIMITIVE_2D(let selectValue): return selectValue
      default: return nil
      }
    }

    //MARK: - ENTITY UNDERLYING TYPE REFERENCES
    public var super_eELLIPTIC_AREA: eELLIPTIC_AREA? {
      switch self {
      case ._BOUNDED_PRIMITIVE_2D(let select): return select.super_eELLIPTIC_AREA
      default: return nil
      }
    }

    public var super_ePRIMITIVE_2D: ePRIMITIVE_2D? {
      switch self {
      case ._BOUNDED_PRIMITIVE_2D(let select): return select.super_ePRIMITIVE_2D
      default: return nil
      }
    }

    public var super_ePOLYGONAL_AREA: ePOLYGONAL_AREA? {
      switch self {
      case ._BOUNDED_PRIMITIVE_2D(let select): return select.super_ePOLYGONAL_AREA
      default: return nil
      }
    }

    public var super_eHALF_SPACE_2D: eHALF_SPACE_2D? {
      switch self {
      case ._BOUNDED_PRIMITIVE_2D(let select): return select.super_eHALF_SPACE_2D
      default: return nil
      }
    }

    public var super_eMAPPED_ITEM: eMAPPED_ITEM? {
      switch self {
      case ._BOUNDED_PRIMITIVE_2D(let select): return select.super_eMAPPED_ITEM
      default: return nil
      }
    }

    public var super_eBOOLEAN_RESULT_2D: eBOOLEAN_RESULT_2D? {
      switch self {
      case ._BOOLEAN_RESULT_2D(let entity): return entity
      default: return nil
      }
    }

    public var super_eRECTANGULAR_AREA: eRECTANGULAR_AREA? {
      switch self {
      case ._BOUNDED_PRIMITIVE_2D(let select): return select.super_eRECTANGULAR_AREA
      default: return nil
      }
    }

    public var super_eAREA_WITH_OUTER_BOUNDARY: eAREA_WITH_OUTER_BOUNDARY? {
      switch self {
      case ._BOUNDED_PRIMITIVE_2D(let select): return select.super_eAREA_WITH_OUTER_BOUNDARY
      default: return nil
      }
    }

    public var super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM? {
      switch self {
      case ._BOOLEAN_RESULT_2D(let entity): return entity.super_eREPRESENTATION_ITEM
      case ._BOUNDED_PRIMITIVE_2D(let select): return select.super_eREPRESENTATION_ITEM
      }
    }

    public var super_eBOOLEAN_RESULT: eBOOLEAN_RESULT? {
      switch self {
      case ._BOOLEAN_RESULT_2D(let entity): return entity.super_eBOOLEAN_RESULT
      default: return nil
      }
    }

    public var super_ePATH_AREA_WITH_PARAMETERS: ePATH_AREA_WITH_PARAMETERS? {
      switch self {
      case ._BOUNDED_PRIMITIVE_2D(let select): return select.super_ePATH_AREA_WITH_PARAMETERS
      default: return nil
      }
    }

    public var super_eCIRCULAR_AREA: eCIRCULAR_AREA? {
      switch self {
      case ._BOUNDED_PRIMITIVE_2D(let select): return select.super_eCIRCULAR_AREA
      default: return nil
      }
    }

    public var super_eCOMPLEX_AREA: eCOMPLEX_AREA? {
      switch self {
      case ._BOUNDED_PRIMITIVE_2D(let select): return select.super_eCOMPLEX_AREA
      default: return nil
      }
    }

    public var super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM? {
      switch self {
      case ._BOOLEAN_RESULT_2D(let entity): return entity.super_eGEOMETRIC_REPRESENTATION_ITEM
      case ._BOUNDED_PRIMITIVE_2D(let select): return select.super_eGEOMETRIC_REPRESENTATION_ITEM
      }
    }


    //MARK: - ENTITY ATTRIBUTE REFERENCES
    /// attribute of SELECT type ``sCSG_SELECT_2D``
    /// - origin: SELECT( ``sBOUNDED_PRIMITIVE_2D`` )
    public var CENTRE: eCARTESIAN_POINT?  {
      switch self {
      case ._BOUNDED_PRIMITIVE_2D(let select): return select.CENTRE
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCSG_SELECT_2D``
    /// - origin: SELECT( ``sBOUNDED_PRIMITIVE_2D`` )
    public var BOUNDS: (SDAI.LIST_UNIQUE<eCARTESIAN_POINT>/*[3:nil]*/ )?  {
      switch self {
      case ._BOUNDED_PRIMITIVE_2D(let select): return select.BOUNDS
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCSG_SELECT_2D``
    /// - origin: ENTITY( ``eBOOLEAN_RESULT_2D`` )
    public var OPERATOR: nBOOLEAN_OPERATOR?  {
      switch self {
      case ._BOOLEAN_RESULT_2D(let entity): return entity.OPERATOR
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCSG_SELECT_2D``
    /// - origin: ENTITY( ``eBOOLEAN_RESULT_2D`` )
    public var SECOND_OPERAND: sBOOLEAN_OPERAND_2D?  {
      switch self {
      case ._BOOLEAN_RESULT_2D(let entity): return entity.SECOND_OPERAND
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCSG_SELECT_2D``
    /// - origin: SELECT( ``sBOUNDED_PRIMITIVE_2D`` )
    public var X: tPOSITIVE_LENGTH_MEASURE?  {
      switch self {
      case ._BOUNDED_PRIMITIVE_2D(let select): return select.X
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCSG_SELECT_2D``
    /// - origin: SELECT( ``sBOUNDED_PRIMITIVE_2D`` )
    public var Y: tPOSITIVE_LENGTH_MEASURE?  {
      switch self {
      case ._BOUNDED_PRIMITIVE_2D(let select): return select.Y
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCSG_SELECT_2D``
    /// - origin: SELECT( ``sBOUNDED_PRIMITIVE_2D`` )
    public var AGREEMENT_FLAG: SDAI.BOOLEAN?  {
      switch self {
      case ._BOUNDED_PRIMITIVE_2D(let select): return select.AGREEMENT_FLAG
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCSG_SELECT_2D``
    /// - origin: SELECT( ``sBOUNDED_PRIMITIVE_2D`` )
    public var RADIUS: tPOSITIVE_LENGTH_MEASURE?  {
      switch self {
      case ._BOUNDED_PRIMITIVE_2D(let select): return select.RADIUS
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCSG_SELECT_2D``
    /// - origin: SELECT( ``sBOUNDED_PRIMITIVE_2D`` )
    public var POSITION: eAXIS2_PLACEMENT_2D?  {
      switch self {
      case ._BOUNDED_PRIMITIVE_2D(let select): return select.POSITION
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCSG_SELECT_2D``
    /// - origin: SELECT( ``sBOUNDED_PRIMITIVE_2D`` )
    public var BASE_CURVE: eCOMPOSITE_CURVE?  {
      switch self {
      case ._BOUNDED_PRIMITIVE_2D(let select): return select.BASE_CURVE
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCSG_SELECT_2D``
    /// - origin: SELECT( ``sBOUNDED_PRIMITIVE_2D`` )
    public var SEMI_AXIS_1: tPOSITIVE_LENGTH_MEASURE?  {
      switch self {
      case ._BOUNDED_PRIMITIVE_2D(let select): return select.SEMI_AXIS_1
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCSG_SELECT_2D``
    /// - origin: SELECT( ``sBOUNDED_PRIMITIVE_2D`` )
    public var SEMI_AXIS_2: tPOSITIVE_LENGTH_MEASURE?  {
      switch self {
      case ._BOUNDED_PRIMITIVE_2D(let select): return select.SEMI_AXIS_2
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCSG_SELECT_2D``
    /// - origin: SELECT( ``sBOUNDED_PRIMITIVE_2D`` )
    public var MAPPING_SOURCE: eREPRESENTATION_MAP?  {
      switch self {
      case ._BOUNDED_PRIMITIVE_2D(let select): return select.MAPPING_SOURCE
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCSG_SELECT_2D``
    /// - origin: SELECT( ``sBOUNDED_PRIMITIVE_2D`` )
    public var MAPPING_TARGET: eREPRESENTATION_ITEM?  {
      switch self {
      case ._BOUNDED_PRIMITIVE_2D(let select): return select.MAPPING_TARGET
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCSG_SELECT_2D``
    /// - origin: ENTITY( ``eBOOLEAN_RESULT_2D`` )
    /// - origin: SELECT( ``sBOUNDED_PRIMITIVE_2D`` )
    public var NAME: tLABEL?  {
      switch self {
      case ._BOOLEAN_RESULT_2D(let entity): return entity.NAME
      case ._BOUNDED_PRIMITIVE_2D(let select): return select.NAME
      }
    }

    /// attribute of SELECT type ``sCSG_SELECT_2D``
    /// - origin: ENTITY( ``eBOOLEAN_RESULT_2D`` )
    public var FIRST_OPERAND: sBOOLEAN_OPERAND_2D?  {
      switch self {
      case ._BOOLEAN_RESULT_2D(let entity): return entity.FIRST_OPERAND
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCSG_SELECT_2D``
    /// - origin: ENTITY( ``eBOOLEAN_RESULT_2D`` )
    /// - origin: SELECT( ``sBOUNDED_PRIMITIVE_2D`` )
    public var DIM: tDIMENSION_COUNT?  {
      switch self {
      case ._BOOLEAN_RESULT_2D(let entity): return entity.DIM
      case ._BOUNDED_PRIMITIVE_2D(let select): return select.DIM
      }
    }


    //MARK: - SDAIValue
    public func isValueEqual<T: SDAIValue>(to rhs: T) -> Bool {
      switch self {
      case ._BOOLEAN_RESULT_2D(let selection): return selection.value.isValueEqual(to: rhs)
      case ._BOUNDED_PRIMITIVE_2D(let selection): return selection.value.isValueEqual(to: rhs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?) -> Bool? {
      switch self {
      case ._BOOLEAN_RESULT_2D(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._BOUNDED_PRIMITIVE_2D(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      }
    }

    public func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      switch self {
      case ._BOOLEAN_RESULT_2D(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._BOUNDED_PRIMITIVE_2D(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      }
    }

    public func isValueEqual<T: SDAIValue>(to rhs: T, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      switch self {
      case ._BOOLEAN_RESULT_2D(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._BOUNDED_PRIMITIVE_2D(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      switch self {
      case ._BOOLEAN_RESULT_2D(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._BOUNDED_PRIMITIVE_2D(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      }
    }


    //MARK: SDAIGenericTypeBase
    public func copy() -> Self {
      switch self {
      case ._BOOLEAN_RESULT_2D(let selection): return ._BOOLEAN_RESULT_2D(selection.copy())
      case ._BOUNDED_PRIMITIVE_2D(let selection): return ._BOUNDED_PRIMITIVE_2D(selection.copy())
      }
    }

    //MARK: SDAIGenericType
    public var typeMembers: Set<SDAI.STRING> {
      var members: Set<SDAI.STRING> = [SDAI.STRING(Self.typeName)]
      switch self {
      case ._BOOLEAN_RESULT_2D(let selection): members.formUnion(selection.typeMembers)
      case ._BOUNDED_PRIMITIVE_2D(let selection): members.formUnion(selection.typeMembers)
      }
      return members
    }

    public var entityReference: SDAI.EntityReference? {
      switch self {
      case ._BOOLEAN_RESULT_2D(let selection): return selection.entityReference
      case ._BOUNDED_PRIMITIVE_2D(let selection): return selection.entityReference
      }
    }
    public var stringValue: SDAI.STRING? {
      switch self {
      case ._BOOLEAN_RESULT_2D(let selection): return selection.stringValue
      case ._BOUNDED_PRIMITIVE_2D(let selection): return selection.stringValue
      }
    }
    public var binaryValue: SDAI.BINARY? {
      switch self {
      case ._BOOLEAN_RESULT_2D(let selection): return selection.binaryValue
      case ._BOUNDED_PRIMITIVE_2D(let selection): return selection.binaryValue
      }
    }
    public var logicalValue: SDAI.LOGICAL? {
      switch self {
      case ._BOOLEAN_RESULT_2D(let selection): return selection.logicalValue
      case ._BOUNDED_PRIMITIVE_2D(let selection): return selection.logicalValue
      }
    }
    public var booleanValue: SDAI.BOOLEAN? {
      switch self {
      case ._BOOLEAN_RESULT_2D(let selection): return selection.booleanValue
      case ._BOUNDED_PRIMITIVE_2D(let selection): return selection.booleanValue
      }
    }
    public var numberValue: SDAI.NUMBER? {
      switch self {
      case ._BOOLEAN_RESULT_2D(let selection): return selection.numberValue
      case ._BOUNDED_PRIMITIVE_2D(let selection): return selection.numberValue
      }
    }
    public var realValue: SDAI.REAL? {
      switch self {
      case ._BOOLEAN_RESULT_2D(let selection): return selection.realValue
      case ._BOUNDED_PRIMITIVE_2D(let selection): return selection.realValue
      }
    }
    public var integerValue: SDAI.INTEGER? {
      switch self {
      case ._BOOLEAN_RESULT_2D(let selection): return selection.integerValue
      case ._BOUNDED_PRIMITIVE_2D(let selection): return selection.integerValue
      }
    }
    public var genericEnumValue: SDAI.GenericEnumValue? {
      switch self {
      case ._BOOLEAN_RESULT_2D(let selection): return selection.genericEnumValue
      case ._BOUNDED_PRIMITIVE_2D(let selection): return selection.genericEnumValue
      }
    }
    public func arrayOptionalValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY_OPTIONAL<ELEM>? {
      switch self {
      case ._BOOLEAN_RESULT_2D(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._BOUNDED_PRIMITIVE_2D(let selection): return selection.arrayOptionalValue(elementType:elementType)
      }
    }
    public func arrayValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY<ELEM>? {
      switch self {
      case ._BOOLEAN_RESULT_2D(let selection): return selection.arrayValue(elementType:elementType)
      case ._BOUNDED_PRIMITIVE_2D(let selection): return selection.arrayValue(elementType:elementType)
      }
    }
    public func listValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.LIST<ELEM>? {
      switch self {
      case ._BOOLEAN_RESULT_2D(let selection): return selection.listValue(elementType:elementType)
      case ._BOUNDED_PRIMITIVE_2D(let selection): return selection.listValue(elementType:elementType)
      }
    }
    public func bagValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.BAG<ELEM>? {
      switch self {
      case ._BOOLEAN_RESULT_2D(let selection): return selection.bagValue(elementType:elementType)
      case ._BOUNDED_PRIMITIVE_2D(let selection): return selection.bagValue(elementType:elementType)
      }
    }
    public func setValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.SET<ELEM>? {
      switch self {
      case ._BOOLEAN_RESULT_2D(let selection): return selection.setValue(elementType:elementType)
      case ._BOUNDED_PRIMITIVE_2D(let selection): return selection.setValue(elementType:elementType)
      }
    }
    public func enumValue<ENUM:SDAIEnumerationType>(enumType:ENUM.Type) -> ENUM? {
      switch self {
      case ._BOOLEAN_RESULT_2D(let selection): return selection.enumValue(enumType:enumType)
      case ._BOUNDED_PRIMITIVE_2D(let selection): return selection.enumValue(enumType:enumType)
      }
    }

    //MARK: SDAIUnderlyingType
    public typealias FundamentalType = Self
    public static var typeName: String = "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CSG_SELECT_2D"
    public var asFundamentalType: FundamentalType { return self }

    //MARK: SDAIObservableAggregateElement
    public var entityReferences: AnySequence<SDAI.EntityReference> {
      switch self {
      case ._BOOLEAN_RESULT_2D(let entity): return entity.entityReferences
      case ._BOUNDED_PRIMITIVE_2D(let select): return select.entityReferences
      }
    }

    public mutating func configure(with observer: SDAI.EntityReferenceObserver) {
      switch self {
      case ._BOOLEAN_RESULT_2D(let entity): 
        entity.configure(with: observer)
        self = ._BOOLEAN_RESULT_2D(entity)
      case ._BOUNDED_PRIMITIVE_2D(var select): 
        select.configure(with: observer)
        self = ._BOUNDED_PRIMITIVE_2D(select)
      }
    }

    public mutating func teardownObserver() {
      switch self {
      case ._BOOLEAN_RESULT_2D(let entity): 
        entity.teardownObserver()
        self = ._BOOLEAN_RESULT_2D(entity)
      case ._BOUNDED_PRIMITIVE_2D(var select): 
        select.teardownObserver()
        self = ._BOUNDED_PRIMITIVE_2D(select)
      }
    }

    //MARK: SDAIAggregationBehavior
    public var aggregationHiBound: Int? {
      switch self {
      case ._BOUNDED_PRIMITIVE_2D(let selection): return selection.aggregationHiBound
      default: return nil
      }
    }
    public var aggregationHiIndex: Int? {
      switch self {
      case ._BOUNDED_PRIMITIVE_2D(let selection): return selection.aggregationHiIndex
      default: return nil
      }
    }
    public var aggregationLoBound: Int? {
      switch self {
      case ._BOUNDED_PRIMITIVE_2D(let selection): return selection.aggregationLoBound
      default: return nil
      }
    }
    public var aggregationLoIndex: Int? {
      switch self {
      case ._BOUNDED_PRIMITIVE_2D(let selection): return selection.aggregationLoIndex
      default: return nil
      }
    }
    public var aggregationSize: Int? {
      switch self {
      case ._BOUNDED_PRIMITIVE_2D(let selection): return selection.aggregationSize
      default: return nil
      }
    }

    //MARK: WHERE RULE VALIDATION (SELECT TYPE)
    public static func validateWhereRules(instance:Self?, prefix:SDAI.WhereLabel) -> [SDAI.WhereLabel:SDAI.LOGICAL] {
      var result: [SDAI.WhereLabel:SDAI.LOGICAL] = [:]
      switch instance {
      case ._BOOLEAN_RESULT_2D(let selectValue): 
        result = eBOOLEAN_RESULT_2D.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\BOOLEAN_RESULT_2D")
      case ._BOUNDED_PRIMITIVE_2D(let selectValue): 
        result = sBOUNDED_PRIMITIVE_2D.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\BOUNDED_PRIMITIVE_2D")
      case nil: break
      }

      return result
    }

  }

}


//MARK: - SELECT TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sCSG_SELECT_2D__type: SDAISelectType {

  //MARK: GROUP REFERENCES
  var super_sBOUNDED_PRIMITIVE_2D: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sBOUNDED_PRIMITIVE_2D? { get }
  var super_eELLIPTIC_AREA: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eELLIPTIC_AREA? { get }
  var super_ePRIMITIVE_2D: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRIMITIVE_2D? { get }
  var super_ePOLYGONAL_AREA: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePOLYGONAL_AREA? { get }
  var super_eHALF_SPACE_2D: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eHALF_SPACE_2D? { get }
  var super_eMAPPED_ITEM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eMAPPED_ITEM? { get }
  var super_eBOOLEAN_RESULT_2D: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eBOOLEAN_RESULT_2D? { get }
  var super_eRECTANGULAR_AREA: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eRECTANGULAR_AREA? { get }
  var super_eAREA_WITH_OUTER_BOUNDARY: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eAREA_WITH_OUTER_BOUNDARY? { get }
  var super_eREPRESENTATION_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION_ITEM? { get }
  var super_eBOOLEAN_RESULT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eBOOLEAN_RESULT? { get }
  var super_ePATH_AREA_WITH_PARAMETERS: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePATH_AREA_WITH_PARAMETERS? { get }
  var super_eCIRCULAR_AREA: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCIRCULAR_AREA? { get }
  var super_eCOMPLEX_AREA: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCOMPLEX_AREA? { get }
  var super_eGEOMETRIC_REPRESENTATION_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eGEOMETRIC_REPRESENTATION_ITEM? { get }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var CENTRE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCARTESIAN_POINT?  { get }
  var BOUNDS: (SDAI.LIST_UNIQUE<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCARTESIAN_POINT>/*[3:nil]*/ )?  { get }
  var OPERATOR: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.nBOOLEAN_OPERATOR?  { get }
  var SECOND_OPERAND: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sBOOLEAN_OPERAND_2D?  { get }
  var X: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tPOSITIVE_LENGTH_MEASURE?  { get }
  var Y: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tPOSITIVE_LENGTH_MEASURE?  { get }
  var AGREEMENT_FLAG: SDAI.BOOLEAN?  { get }
  var RADIUS: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tPOSITIVE_LENGTH_MEASURE?  { get }
  var POSITION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eAXIS2_PLACEMENT_2D?  { get }
  var BASE_CURVE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCOMPOSITE_CURVE?  { get }
  var SEMI_AXIS_1: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tPOSITIVE_LENGTH_MEASURE?  { get }
  var SEMI_AXIS_2: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tPOSITIVE_LENGTH_MEASURE?  { get }
  var MAPPING_SOURCE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION_MAP?  { get }
  var MAPPING_TARGET: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION_ITEM?  { get }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { get }
  var FIRST_OPERAND: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sBOOLEAN_OPERAND_2D?  { get }
  var DIM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tDIMENSION_COUNT?  { get }
}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sCSG_SELECT_2D__subtype: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sCSG_SELECT_2D__type, SDAIDefinedType
where Supertype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sCSG_SELECT_2D__type
{}

public extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sCSG_SELECT_2D__subtype {
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
  var super_sBOUNDED_PRIMITIVE_2D: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sBOUNDED_PRIMITIVE_2D? { rep.super_sBOUNDED_PRIMITIVE_2D }
  var super_eELLIPTIC_AREA: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eELLIPTIC_AREA? { rep.super_eELLIPTIC_AREA }
  var super_ePRIMITIVE_2D: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRIMITIVE_2D? { rep.super_ePRIMITIVE_2D }
  var super_ePOLYGONAL_AREA: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePOLYGONAL_AREA? { rep.super_ePOLYGONAL_AREA }
  var super_eHALF_SPACE_2D: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eHALF_SPACE_2D? { rep.super_eHALF_SPACE_2D }
  var super_eMAPPED_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eMAPPED_ITEM? { rep.super_eMAPPED_ITEM }
  var super_eBOOLEAN_RESULT_2D: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eBOOLEAN_RESULT_2D? { rep.super_eBOOLEAN_RESULT_2D }
  var super_eRECTANGULAR_AREA: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eRECTANGULAR_AREA? { rep.super_eRECTANGULAR_AREA }
  var super_eAREA_WITH_OUTER_BOUNDARY: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eAREA_WITH_OUTER_BOUNDARY? { rep.super_eAREA_WITH_OUTER_BOUNDARY }
  var super_eREPRESENTATION_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION_ITEM? { rep.super_eREPRESENTATION_ITEM }
  var super_eBOOLEAN_RESULT: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eBOOLEAN_RESULT? { rep.super_eBOOLEAN_RESULT }
  var super_ePATH_AREA_WITH_PARAMETERS: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePATH_AREA_WITH_PARAMETERS? { rep.super_ePATH_AREA_WITH_PARAMETERS }
  var super_eCIRCULAR_AREA: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCIRCULAR_AREA? { rep.super_eCIRCULAR_AREA }
  var super_eCOMPLEX_AREA: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCOMPLEX_AREA? { rep.super_eCOMPLEX_AREA }
  var super_eGEOMETRIC_REPRESENTATION_ITEM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eGEOMETRIC_REPRESENTATION_ITEM? { rep.super_eGEOMETRIC_REPRESENTATION_ITEM }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var CENTRE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCARTESIAN_POINT?  { rep.CENTRE }
  var BOUNDS: (SDAI.LIST_UNIQUE<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCARTESIAN_POINT>/*[3:nil]*/ )?  { rep.BOUNDS }
  var OPERATOR: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.nBOOLEAN_OPERATOR?  { rep.OPERATOR }
  var SECOND_OPERAND: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sBOOLEAN_OPERAND_2D?  { rep.SECOND_OPERAND }
  var X: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tPOSITIVE_LENGTH_MEASURE?  { rep.X }
  var Y: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tPOSITIVE_LENGTH_MEASURE?  { rep.Y }
  var AGREEMENT_FLAG: SDAI.BOOLEAN?  { rep.AGREEMENT_FLAG }
  var RADIUS: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tPOSITIVE_LENGTH_MEASURE?  { rep.RADIUS }
  var POSITION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eAXIS2_PLACEMENT_2D?  { rep.POSITION }
  var BASE_CURVE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCOMPOSITE_CURVE?  { rep.BASE_CURVE }
  var SEMI_AXIS_1: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tPOSITIVE_LENGTH_MEASURE?  { rep.SEMI_AXIS_1 }
  var SEMI_AXIS_2: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tPOSITIVE_LENGTH_MEASURE?  { rep.SEMI_AXIS_2 }
  var MAPPING_SOURCE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION_MAP?  { rep.MAPPING_SOURCE }
  var MAPPING_TARGET: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION_ITEM?  { rep.MAPPING_TARGET }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { rep.NAME }
  var FIRST_OPERAND: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sBOOLEAN_OPERAND_2D?  { rep.FIRST_OPERAND }
  var DIM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tDIMENSION_COUNT?  { rep.DIM }
}

