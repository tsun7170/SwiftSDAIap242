/* file: gps_filtration_specification_target.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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
  TYPE gps_filtration_specification_target = SELECT
    ( geometric_tolerance (*ENTITY*) );
  END_TYPE; -- gps_filtration_specification_target (line:3398 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES FOR SELECT
/*
  geometric_tolerance (*ENTITY*):
  ATTR:  maximum_upper_tolerance: length_measure_with_unit
  ATTR:  description: text
  ATTR:  tolerance_relationship: SET [0 : ?] OF geometric_tolerance_relationship
  ATTR:  auxiliary_classification: SET [0 : ?] OF geometric_tolerance_auxiliary_classification
  ATTR:  displacement: length_measure_with_unit
  ATTR:  modifier: limit_condition
  ATTR:  datum_system: SET [1 : ?] OF datum_system_or_reference
  ATTR:  unit_size: length_or_plane_angle_measure_with_unit_select
  ATTR:  modifiers: SET [1 : ?] OF geometric_tolerance_modifier
  ATTR:  magnitude: length_measure_with_unit
  ATTR:  id: identifier
  ATTR:  area_type: area_unit_type
  ATTR:  controlling_shape: product_definition_shape
  ATTR:  second_unit_size: length_or_plane_angle_measure_with_unit_select
  ATTR:  name: label
  ATTR:  toleranced_shape_aspect: geometric_tolerance_target

*/

/** SELECT type
- EXPRESS:
```express
  TYPE gps_filtration_specification_target = SELECT
    ( geometric_tolerance (*ENTITY*) );
  END_TYPE; -- gps_filtration_specification_target (line:3398 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public enum sGPS_FILTRATION_SPECIFICATION_TARGET : SDAIValue, AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sGPS_FILTRATION_SPECIFICATION_TARGET__type {

    /// SELECT case ``eGEOMETRIC_TOLERANCE`` (ENTITY) in ``sGPS_FILTRATION_SPECIFICATION_TARGET``
    case _GEOMETRIC_TOLERANCE(eGEOMETRIC_TOLERANCE)	// (ENTITY)

    //MARK: - CONSTRUCTORS
    public init(fundamental: FundamentalType) { self = fundamental }

    public init?<T: SDAIUnderlyingType>(possiblyFrom underlyingType: T?){
      return nil
    }

    public init?(possiblyFrom complex: SDAI.ComplexEntity?) {
      guard let complex = complex else { return nil }

      if let base = complex.entityReference(eGEOMETRIC_TOLERANCE.self) {self = ._GEOMETRIC_TOLERANCE(base) }
      else { return nil }
    }

    public init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let select = generic else { return nil }

      if let fundamental = select as? Self {
        self.init(fundamental: fundamental)
      }
      else if let base = eGEOMETRIC_TOLERANCE.convert(fromGeneric: select) {
        self = ._GEOMETRIC_TOLERANCE(base)
      }
      else { return nil }
    }

    // InitializableByP21Parameter
    public static var bareTypeName: String = "GPS_FILTRATION_SPECIFICATION_TARGET"

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
    public var super_eGEOMETRIC_TOLERANCE: eGEOMETRIC_TOLERANCE? {
      switch self {
      case ._GEOMETRIC_TOLERANCE(let entity): return entity
      }
    }


    //MARK: - ENTITY ATTRIBUTE REFERENCES
    /// attribute of SELECT type ``sGPS_FILTRATION_SPECIFICATION_TARGET``
    /// - origin: ENTITY( ``eGEOMETRIC_TOLERANCE`` )
    public var MAXIMUM_UPPER_TOLERANCE: eLENGTH_MEASURE_WITH_UNIT?  {
      switch self {
      case ._GEOMETRIC_TOLERANCE(let entity): return entity.MAXIMUM_UPPER_TOLERANCE
      }
    }

    /// attribute of SELECT type ``sGPS_FILTRATION_SPECIFICATION_TARGET``
    /// - origin: ENTITY( ``eGEOMETRIC_TOLERANCE`` )
    public var DESCRIPTION: tTEXT?  {
      switch self {
      case ._GEOMETRIC_TOLERANCE(let entity): return entity.DESCRIPTION
      }
    }

    /// attribute of SELECT type ``sGPS_FILTRATION_SPECIFICATION_TARGET``
    /// - origin: ENTITY( ``eGEOMETRIC_TOLERANCE`` )
    public var TOLERANCE_RELATIONSHIP: (SDAI.SET<eGEOMETRIC_TOLERANCE_RELATIONSHIP>/*[0:nil]*/ )?  {
      switch self {
      case ._GEOMETRIC_TOLERANCE(let entity): return entity.TOLERANCE_RELATIONSHIP
      }
    }

    /// attribute of SELECT type ``sGPS_FILTRATION_SPECIFICATION_TARGET``
    /// - origin: ENTITY( ``eGEOMETRIC_TOLERANCE`` )
    public var AUXILIARY_CLASSIFICATION: (SDAI.SET<eGEOMETRIC_TOLERANCE_AUXILIARY_CLASSIFICATION>/*[0:nil]*/ )?  {
      switch self {
      case ._GEOMETRIC_TOLERANCE(let entity): return entity.AUXILIARY_CLASSIFICATION
      }
    }

    /// attribute of SELECT type ``sGPS_FILTRATION_SPECIFICATION_TARGET``
    /// - origin: ENTITY( ``eGEOMETRIC_TOLERANCE`` )
    public var DISPLACEMENT: eLENGTH_MEASURE_WITH_UNIT?  {
      switch self {
      case ._GEOMETRIC_TOLERANCE(let entity): return entity.DISPLACEMENT
      }
    }

    /// attribute of SELECT type ``sGPS_FILTRATION_SPECIFICATION_TARGET``
    /// - origin: ENTITY( ``eGEOMETRIC_TOLERANCE`` )
    public var MODIFIER: nLIMIT_CONDITION?  {
      switch self {
      case ._GEOMETRIC_TOLERANCE(let entity): return entity.MODIFIER
      }
    }

    /// attribute of SELECT type ``sGPS_FILTRATION_SPECIFICATION_TARGET``
    /// - origin: ENTITY( ``eGEOMETRIC_TOLERANCE`` )
    public var DATUM_SYSTEM: (SDAI.SET<sDATUM_SYSTEM_OR_REFERENCE>/*[1:nil]*/ )?  {
      switch self {
      case ._GEOMETRIC_TOLERANCE(let entity): return entity.DATUM_SYSTEM
      }
    }

    /// attribute of SELECT type ``sGPS_FILTRATION_SPECIFICATION_TARGET``
    /// - origin: ENTITY( ``eGEOMETRIC_TOLERANCE`` )
    public var UNIT_SIZE: sLENGTH_OR_PLANE_ANGLE_MEASURE_WITH_UNIT_SELECT?  {
      switch self {
      case ._GEOMETRIC_TOLERANCE(let entity): return entity.UNIT_SIZE
      }
    }

    /// attribute of SELECT type ``sGPS_FILTRATION_SPECIFICATION_TARGET``
    /// - origin: ENTITY( ``eGEOMETRIC_TOLERANCE`` )
    public var MODIFIERS: (SDAI.SET<nGEOMETRIC_TOLERANCE_MODIFIER>/*[1:nil]*/ )?  {
      switch self {
      case ._GEOMETRIC_TOLERANCE(let entity): return entity.MODIFIERS
      }
    }

    /// attribute of SELECT type ``sGPS_FILTRATION_SPECIFICATION_TARGET``
    /// - origin: ENTITY( ``eGEOMETRIC_TOLERANCE`` )
    public var MAGNITUDE: eLENGTH_MEASURE_WITH_UNIT?  {
      switch self {
      case ._GEOMETRIC_TOLERANCE(let entity): return entity.MAGNITUDE
      }
    }

    /// attribute of SELECT type ``sGPS_FILTRATION_SPECIFICATION_TARGET``
    /// - origin: ENTITY( ``eGEOMETRIC_TOLERANCE`` )
    public var ID: tIDENTIFIER?  {
      switch self {
      case ._GEOMETRIC_TOLERANCE(let entity): return entity.ID
      }
    }

    /// attribute of SELECT type ``sGPS_FILTRATION_SPECIFICATION_TARGET``
    /// - origin: ENTITY( ``eGEOMETRIC_TOLERANCE`` )
    public var AREA_TYPE: nAREA_UNIT_TYPE?  {
      switch self {
      case ._GEOMETRIC_TOLERANCE(let entity): return entity.AREA_TYPE
      }
    }

    /// attribute of SELECT type ``sGPS_FILTRATION_SPECIFICATION_TARGET``
    /// - origin: ENTITY( ``eGEOMETRIC_TOLERANCE`` )
    public var CONTROLLING_SHAPE: ePRODUCT_DEFINITION_SHAPE?  {
      switch self {
      case ._GEOMETRIC_TOLERANCE(let entity): return entity.CONTROLLING_SHAPE
      }
    }

    /// attribute of SELECT type ``sGPS_FILTRATION_SPECIFICATION_TARGET``
    /// - origin: ENTITY( ``eGEOMETRIC_TOLERANCE`` )
    public var SECOND_UNIT_SIZE: sLENGTH_OR_PLANE_ANGLE_MEASURE_WITH_UNIT_SELECT?  {
      switch self {
      case ._GEOMETRIC_TOLERANCE(let entity): return entity.SECOND_UNIT_SIZE
      }
    }

    /// attribute of SELECT type ``sGPS_FILTRATION_SPECIFICATION_TARGET``
    /// - origin: ENTITY( ``eGEOMETRIC_TOLERANCE`` )
    public var NAME: tLABEL?  {
      switch self {
      case ._GEOMETRIC_TOLERANCE(let entity): return entity.NAME
      }
    }

    /// attribute of SELECT type ``sGPS_FILTRATION_SPECIFICATION_TARGET``
    /// - origin: ENTITY( ``eGEOMETRIC_TOLERANCE`` )
    public var TOLERANCED_SHAPE_ASPECT: sGEOMETRIC_TOLERANCE_TARGET?  {
      switch self {
      case ._GEOMETRIC_TOLERANCE(let entity): return entity.TOLERANCED_SHAPE_ASPECT
      }
    }


    //MARK: - SDAIValue
    public func isValueEqual<T: SDAIValue>(to rhs: T) -> Bool {
      switch self {
      case ._GEOMETRIC_TOLERANCE(let selection): return selection.value.isValueEqual(to: rhs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?) -> Bool? {
      switch self {
      case ._GEOMETRIC_TOLERANCE(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      }
    }

    public func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      switch self {
      case ._GEOMETRIC_TOLERANCE(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      }
    }

    public func isValueEqual<T: SDAIValue>(to rhs: T, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      switch self {
      case ._GEOMETRIC_TOLERANCE(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      switch self {
      case ._GEOMETRIC_TOLERANCE(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      }
    }


    //MARK: SDAIGenericTypeBase
    public func copy() -> Self {
      switch self {
      case ._GEOMETRIC_TOLERANCE(let selection): return ._GEOMETRIC_TOLERANCE(selection.copy())
      }
    }

    //MARK: SDAIGenericType
    public var typeMembers: Set<SDAI.STRING> {
      var members: Set<SDAI.STRING> = [SDAI.STRING(Self.typeName)]
      switch self {
      case ._GEOMETRIC_TOLERANCE(let selection): members.formUnion(selection.typeMembers)
      }
      return members
    }

    public var entityReference: SDAI.EntityReference? {
      switch self {
      case ._GEOMETRIC_TOLERANCE(let selection): return selection.entityReference
      }
    }
    public var stringValue: SDAI.STRING? {
      switch self {
      case ._GEOMETRIC_TOLERANCE(let selection): return selection.stringValue
      }
    }
    public var binaryValue: SDAI.BINARY? {
      switch self {
      case ._GEOMETRIC_TOLERANCE(let selection): return selection.binaryValue
      }
    }
    public var logicalValue: SDAI.LOGICAL? {
      switch self {
      case ._GEOMETRIC_TOLERANCE(let selection): return selection.logicalValue
      }
    }
    public var booleanValue: SDAI.BOOLEAN? {
      switch self {
      case ._GEOMETRIC_TOLERANCE(let selection): return selection.booleanValue
      }
    }
    public var numberValue: SDAI.NUMBER? {
      switch self {
      case ._GEOMETRIC_TOLERANCE(let selection): return selection.numberValue
      }
    }
    public var realValue: SDAI.REAL? {
      switch self {
      case ._GEOMETRIC_TOLERANCE(let selection): return selection.realValue
      }
    }
    public var integerValue: SDAI.INTEGER? {
      switch self {
      case ._GEOMETRIC_TOLERANCE(let selection): return selection.integerValue
      }
    }
    public var genericEnumValue: SDAI.GenericEnumValue? {
      switch self {
      case ._GEOMETRIC_TOLERANCE(let selection): return selection.genericEnumValue
      }
    }
    public func arrayOptionalValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY_OPTIONAL<ELEM>? {
      switch self {
      case ._GEOMETRIC_TOLERANCE(let selection): return selection.arrayOptionalValue(elementType:elementType)
      }
    }
    public func arrayValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY<ELEM>? {
      switch self {
      case ._GEOMETRIC_TOLERANCE(let selection): return selection.arrayValue(elementType:elementType)
      }
    }
    public func listValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.LIST<ELEM>? {
      switch self {
      case ._GEOMETRIC_TOLERANCE(let selection): return selection.listValue(elementType:elementType)
      }
    }
    public func bagValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.BAG<ELEM>? {
      switch self {
      case ._GEOMETRIC_TOLERANCE(let selection): return selection.bagValue(elementType:elementType)
      }
    }
    public func setValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.SET<ELEM>? {
      switch self {
      case ._GEOMETRIC_TOLERANCE(let selection): return selection.setValue(elementType:elementType)
      }
    }
    public func enumValue<ENUM:SDAIEnumerationType>(enumType:ENUM.Type) -> ENUM? {
      switch self {
      case ._GEOMETRIC_TOLERANCE(let selection): return selection.enumValue(enumType:enumType)
      }
    }

    //MARK: SDAIUnderlyingType
    public typealias FundamentalType = Self
    public static var typeName: String = 
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.GPS_FILTRATION_SPECIFICATION_TARGET"
    public var asFundamentalType: FundamentalType { return self }

    //MARK: SDAIObservableAggregateElement
    public var entityReferences: AnySequence<SDAI.EntityReference> {
      switch self {
      case ._GEOMETRIC_TOLERANCE(let entity): return entity.entityReferences
      }
    }

    public mutating func configure(with observer: SDAI.EntityReferenceObserver) {
      switch self {
      case ._GEOMETRIC_TOLERANCE(let entity): 
        entity.configure(with: observer)
        self = ._GEOMETRIC_TOLERANCE(entity)
      }
    }

    public mutating func teardownObserver() {
      switch self {
      case ._GEOMETRIC_TOLERANCE(let entity): 
        entity.teardownObserver()
        self = ._GEOMETRIC_TOLERANCE(entity)
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
      case ._GEOMETRIC_TOLERANCE(let selectValue): 
        result = eGEOMETRIC_TOLERANCE.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\GEOMETRIC_TOLERANCE")
      case nil: break
      }

      return result
    }

  }

}


//MARK: - SELECT TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sGPS_FILTRATION_SPECIFICATION_TARGET__type: 
  SDAISelectType {

  //MARK: GROUP REFERENCES
  var super_eGEOMETRIC_TOLERANCE: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eGEOMETRIC_TOLERANCE? { get }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var MAXIMUM_UPPER_TOLERANCE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eLENGTH_MEASURE_WITH_UNIT?  { get }
  var DESCRIPTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tTEXT?  { get }
  var TOLERANCE_RELATIONSHIP: (SDAI.SET<
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eGEOMETRIC_TOLERANCE_RELATIONSHIP>/*[0:nil]*/ )?  { get }
  var AUXILIARY_CLASSIFICATION: (SDAI.SET<
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eGEOMETRIC_TOLERANCE_AUXILIARY_CLASSIFICATION>/*[0:nil]*/ )?  { get }
  var DISPLACEMENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eLENGTH_MEASURE_WITH_UNIT?  { get }
  var MODIFIER: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.nLIMIT_CONDITION?  { get }
  var DATUM_SYSTEM: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sDATUM_SYSTEM_OR_REFERENCE>/*[1:
    nil]*/ )?  { get }
  var UNIT_SIZE: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sLENGTH_OR_PLANE_ANGLE_MEASURE_WITH_UNIT_SELECT?  { get }
  var MODIFIERS: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.nGEOMETRIC_TOLERANCE_MODIFIER>/*[1:
    nil]*/ )?  { get }
  var MAGNITUDE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eLENGTH_MEASURE_WITH_UNIT?  { get }
  var ID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER?  { get }
  var AREA_TYPE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.nAREA_UNIT_TYPE?  { get }
  var CONTROLLING_SHAPE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRODUCT_DEFINITION_SHAPE?  { get }
  var SECOND_UNIT_SIZE: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sLENGTH_OR_PLANE_ANGLE_MEASURE_WITH_UNIT_SELECT?  { get }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { get }
  var TOLERANCED_SHAPE_ASPECT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sGEOMETRIC_TOLERANCE_TARGET?  { get }
}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sGPS_FILTRATION_SPECIFICATION_TARGET__subtype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sGPS_FILTRATION_SPECIFICATION_TARGET__type, SDAIDefinedType
where Supertype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sGPS_FILTRATION_SPECIFICATION_TARGET__type
{}

public extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sGPS_FILTRATION_SPECIFICATION_TARGET__subtype {
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
  var super_eGEOMETRIC_TOLERANCE: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eGEOMETRIC_TOLERANCE? { rep.super_eGEOMETRIC_TOLERANCE }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var MAXIMUM_UPPER_TOLERANCE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eLENGTH_MEASURE_WITH_UNIT?  { rep.MAXIMUM_UPPER_TOLERANCE }
  var DESCRIPTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tTEXT?  { rep.DESCRIPTION }
  var TOLERANCE_RELATIONSHIP: (SDAI.SET<
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eGEOMETRIC_TOLERANCE_RELATIONSHIP>/*[0:nil]*/ )?  { rep.TOLERANCE_RELATIONSHIP }
  var AUXILIARY_CLASSIFICATION: (SDAI.SET<
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eGEOMETRIC_TOLERANCE_AUXILIARY_CLASSIFICATION>/*[0:nil]*/ )?  { rep.AUXILIARY_CLASSIFICATION }
  var DISPLACEMENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eLENGTH_MEASURE_WITH_UNIT?  { rep.DISPLACEMENT }
  var MODIFIER: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.nLIMIT_CONDITION?  { rep.MODIFIER }
  var DATUM_SYSTEM: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sDATUM_SYSTEM_OR_REFERENCE>/*[1:
    nil]*/ )?  { rep.DATUM_SYSTEM }
  var UNIT_SIZE: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sLENGTH_OR_PLANE_ANGLE_MEASURE_WITH_UNIT_SELECT?  { rep.UNIT_SIZE }
  var MODIFIERS: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.nGEOMETRIC_TOLERANCE_MODIFIER>/*[1:
    nil]*/ )?  { rep.MODIFIERS }
  var MAGNITUDE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eLENGTH_MEASURE_WITH_UNIT?  { rep.MAGNITUDE }
  var ID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER?  { rep.ID }
  var AREA_TYPE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.nAREA_UNIT_TYPE?  { rep.AREA_TYPE }
  var CONTROLLING_SHAPE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRODUCT_DEFINITION_SHAPE?  { rep.CONTROLLING_SHAPE }
  var SECOND_UNIT_SIZE: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sLENGTH_OR_PLANE_ANGLE_MEASURE_WITH_UNIT_SELECT?  { rep.SECOND_UNIT_SIZE }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { rep.NAME }
  var TOLERANCED_SHAPE_ASPECT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sGEOMETRIC_TOLERANCE_TARGET?  { rep.TOLERANCED_SHAPE_ASPECT }
}
