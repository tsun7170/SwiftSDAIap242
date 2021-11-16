/* file: path_or_composite_curve.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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
  TYPE path_or_composite_curve = SELECT
    ( composite_curve (*ENTITY*),
     path (*ENTITY*) );
  END_TYPE; -- path_or_composite_curve (line:4670 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES FOR SELECT
/*
  composite_curve (*ENTITY*):
  ATTR:  n_segments: INTEGER
  ATTR:  self_intersect: LOGICAL
  ATTR:  segments: LIST [1 : ?] OF composite_curve_segment
  ATTR:  basis_surface: SET [0 : 2] OF surface
  ATTR:  closed_curve: LOGICAL
  ATTR:  name: label
  ATTR:  dim: dimension_count

  path (*ENTITY*):
  ATTR:  ne: (AMBIGUOUS (CASE LEVEL))
  ATTR:  orientation: BOOLEAN
  ATTR:  permanent_aggregate_id: identifier
  ATTR:  path_element: path
  ATTR:  edge_list: LIST [1 : ?] OF UNIQUE oriented_edge
  ATTR:  permanent_id: identifier
  ATTR:  name: label

*/

/** SELECT type
- EXPRESS:
```express
  TYPE path_or_composite_curve = SELECT
    ( composite_curve (*ENTITY*),
     path (*ENTITY*) );
  END_TYPE; -- path_or_composite_curve (line:4670 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public enum sPATH_OR_COMPOSITE_CURVE : SDAIValue, AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sPATH_OR_COMPOSITE_CURVE__type {

    /// SELECT case ``eCOMPOSITE_CURVE`` (ENTITY) in ``sPATH_OR_COMPOSITE_CURVE``
    case _COMPOSITE_CURVE(eCOMPOSITE_CURVE)	// (ENTITY)

    /// SELECT case ``ePATH`` (ENTITY) in ``sPATH_OR_COMPOSITE_CURVE``
    case _PATH(ePATH)	// (ENTITY)

    //MARK: - CONSTRUCTORS
    public init(fundamental: FundamentalType) { self = fundamental }

    public init?<T: SDAIUnderlyingType>(possiblyFrom underlyingType: T?){
      return nil
    }

    public init?(possiblyFrom complex: SDAI.ComplexEntity?) {
      guard let complex = complex else { return nil }

      if let base = complex.entityReference(eCOMPOSITE_CURVE.self) {self = ._COMPOSITE_CURVE(base) }
      else if let base = complex.entityReference(ePATH.self) {self = ._PATH(base) }
      else { return nil }
    }

    public init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let select = generic else { return nil }

      if let fundamental = select as? Self {
        self.init(fundamental: fundamental)
      }
      else if let base = eCOMPOSITE_CURVE.convert(fromGeneric: select) {
        self = ._COMPOSITE_CURVE(base)
      }
      else if let base = ePATH.convert(fromGeneric: select) {
        self = ._PATH(base)
      }
      else { return nil }
    }

    // InitializableByP21Parameter
    public static var bareTypeName: String = "PATH_OR_COMPOSITE_CURVE"

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
    public var super_eCOMPOSITE_CURVE: eCOMPOSITE_CURVE? {
      switch self {
      case ._COMPOSITE_CURVE(let entity): return entity
      default: return nil
      }
    }

    public var super_ePATH: ePATH? {
      switch self {
      case ._PATH(let entity): return entity
      default: return nil
      }
    }

    public var super_eTOPOLOGICAL_REPRESENTATION_ITEM: eTOPOLOGICAL_REPRESENTATION_ITEM? {
      switch self {
      case ._PATH(let entity): return entity.super_eTOPOLOGICAL_REPRESENTATION_ITEM
      default: return nil
      }
    }

    public var super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM? {
      switch self {
      case ._COMPOSITE_CURVE(let entity): return entity.super_eREPRESENTATION_ITEM
      case ._PATH(let entity): return entity.super_eREPRESENTATION_ITEM
      }
    }

    public var super_eCURVE: eCURVE? {
      switch self {
      case ._COMPOSITE_CURVE(let entity): return entity.super_eCURVE
      default: return nil
      }
    }

    public var super_eBOUNDED_CURVE: eBOUNDED_CURVE? {
      switch self {
      case ._COMPOSITE_CURVE(let entity): return entity.super_eBOUNDED_CURVE
      default: return nil
      }
    }

    public var super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM? {
      switch self {
      case ._COMPOSITE_CURVE(let entity): return entity.super_eGEOMETRIC_REPRESENTATION_ITEM
      default: return nil
      }
    }


    //MARK: - ENTITY ATTRIBUTE REFERENCES
    /// attribute of SELECT type ``sPATH_OR_COMPOSITE_CURVE``
    /// - origin: ENTITY( ``ePATH`` )
    public var ORIENTATION: SDAI.BOOLEAN?  {
      switch self {
      case ._PATH(let entity): return entity.ORIENTATION
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPATH_OR_COMPOSITE_CURVE``
    /// - origin: ENTITY( ``ePATH`` )
    public var PERMANENT_AGGREGATE_ID: tIDENTIFIER?  {
      switch self {
      case ._PATH(let entity): return entity.PERMANENT_AGGREGATE_ID
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPATH_OR_COMPOSITE_CURVE``
    /// - origin: ENTITY( ``ePATH`` )
    public var PATH_ELEMENT: ePATH?  {
      switch self {
      case ._PATH(let entity): return entity.PATH_ELEMENT
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPATH_OR_COMPOSITE_CURVE``
    /// - origin: ENTITY( ``ePATH`` )
    public var EDGE_LIST: (SDAI.LIST_UNIQUE<eORIENTED_EDGE>/*[1:nil]*/ )?  {
      switch self {
      case ._PATH(let entity): return entity.EDGE_LIST
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPATH_OR_COMPOSITE_CURVE``
    /// - origin: ENTITY( ``eCOMPOSITE_CURVE`` )
    public var N_SEGMENTS: SDAI.INTEGER?  {
      switch self {
      case ._COMPOSITE_CURVE(let entity): return entity.N_SEGMENTS
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPATH_OR_COMPOSITE_CURVE``
    /// - origin: ENTITY( ``eCOMPOSITE_CURVE`` )
    public var SELF_INTERSECT: SDAI.LOGICAL {
      switch self {
      case ._COMPOSITE_CURVE(let entity): return entity.SELF_INTERSECT
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPATH_OR_COMPOSITE_CURVE``
    /// - origin: ENTITY( ``eCOMPOSITE_CURVE`` )
    public var SEGMENTS: (SDAI.LIST<eCOMPOSITE_CURVE_SEGMENT>/*[1:nil]*/ )?  {
      switch self {
      case ._COMPOSITE_CURVE(let entity): return entity.SEGMENTS
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPATH_OR_COMPOSITE_CURVE``
    /// - origin: ENTITY( ``eCOMPOSITE_CURVE`` )
    public var BASIS_SURFACE: (SDAI.SET<eSURFACE>/*[0:2]*/ )?  {
      switch self {
      case ._COMPOSITE_CURVE(let entity): return entity.BASIS_SURFACE
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPATH_OR_COMPOSITE_CURVE``
    /// - origin: ENTITY( ``eCOMPOSITE_CURVE`` )
    public var CLOSED_CURVE: SDAI.LOGICAL {
      switch self {
      case ._COMPOSITE_CURVE(let entity): return entity.CLOSED_CURVE
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPATH_OR_COMPOSITE_CURVE``
    /// - origin: ENTITY( ``ePATH`` )
    public var PERMANENT_ID: tIDENTIFIER?  {
      switch self {
      case ._PATH(let entity): return entity.PERMANENT_ID
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPATH_OR_COMPOSITE_CURVE``
    /// - origin: ENTITY( ``eCOMPOSITE_CURVE`` )
    /// - origin: ENTITY( ``ePATH`` )
    public var NAME: tLABEL?  {
      switch self {
      case ._COMPOSITE_CURVE(let entity): return entity.NAME
      case ._PATH(let entity): return entity.NAME
      }
    }

    /// attribute of SELECT type ``sPATH_OR_COMPOSITE_CURVE``
    /// - origin: ENTITY( ``eCOMPOSITE_CURVE`` )
    public var DIM: tDIMENSION_COUNT?  {
      switch self {
      case ._COMPOSITE_CURVE(let entity): return entity.DIM
      default: return nil
      }
    }


    //MARK: - SDAIValue
    public func isValueEqual<T: SDAIValue>(to rhs: T) -> Bool {
      switch self {
      case ._COMPOSITE_CURVE(let selection): return selection.value.isValueEqual(to: rhs)
      case ._PATH(let selection): return selection.value.isValueEqual(to: rhs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?) -> Bool? {
      switch self {
      case ._COMPOSITE_CURVE(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._PATH(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      }
    }

    public func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      switch self {
      case ._COMPOSITE_CURVE(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._PATH(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      }
    }

    public func isValueEqual<T: SDAIValue>(to rhs: T, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      switch self {
      case ._COMPOSITE_CURVE(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._PATH(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      switch self {
      case ._COMPOSITE_CURVE(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._PATH(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      }
    }


    //MARK: SDAIGenericTypeBase
    public func copy() -> Self {
      switch self {
      case ._COMPOSITE_CURVE(let selection): return ._COMPOSITE_CURVE(selection.copy())
      case ._PATH(let selection): return ._PATH(selection.copy())
      }
    }

    //MARK: SDAIGenericType
    public var typeMembers: Set<SDAI.STRING> {
      var members: Set<SDAI.STRING> = [SDAI.STRING(Self.typeName)]
      switch self {
      case ._COMPOSITE_CURVE(let selection): members.formUnion(selection.typeMembers)
      case ._PATH(let selection): members.formUnion(selection.typeMembers)
      }
      return members
    }

    public var entityReference: SDAI.EntityReference? {
      switch self {
      case ._COMPOSITE_CURVE(let selection): return selection.entityReference
      case ._PATH(let selection): return selection.entityReference
      }
    }
    public var stringValue: SDAI.STRING? {
      switch self {
      case ._COMPOSITE_CURVE(let selection): return selection.stringValue
      case ._PATH(let selection): return selection.stringValue
      }
    }
    public var binaryValue: SDAI.BINARY? {
      switch self {
      case ._COMPOSITE_CURVE(let selection): return selection.binaryValue
      case ._PATH(let selection): return selection.binaryValue
      }
    }
    public var logicalValue: SDAI.LOGICAL? {
      switch self {
      case ._COMPOSITE_CURVE(let selection): return selection.logicalValue
      case ._PATH(let selection): return selection.logicalValue
      }
    }
    public var booleanValue: SDAI.BOOLEAN? {
      switch self {
      case ._COMPOSITE_CURVE(let selection): return selection.booleanValue
      case ._PATH(let selection): return selection.booleanValue
      }
    }
    public var numberValue: SDAI.NUMBER? {
      switch self {
      case ._COMPOSITE_CURVE(let selection): return selection.numberValue
      case ._PATH(let selection): return selection.numberValue
      }
    }
    public var realValue: SDAI.REAL? {
      switch self {
      case ._COMPOSITE_CURVE(let selection): return selection.realValue
      case ._PATH(let selection): return selection.realValue
      }
    }
    public var integerValue: SDAI.INTEGER? {
      switch self {
      case ._COMPOSITE_CURVE(let selection): return selection.integerValue
      case ._PATH(let selection): return selection.integerValue
      }
    }
    public var genericEnumValue: SDAI.GenericEnumValue? {
      switch self {
      case ._COMPOSITE_CURVE(let selection): return selection.genericEnumValue
      case ._PATH(let selection): return selection.genericEnumValue
      }
    }
    public func arrayOptionalValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY_OPTIONAL<ELEM>? {
      switch self {
      case ._COMPOSITE_CURVE(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._PATH(let selection): return selection.arrayOptionalValue(elementType:elementType)
      }
    }
    public func arrayValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY<ELEM>? {
      switch self {
      case ._COMPOSITE_CURVE(let selection): return selection.arrayValue(elementType:elementType)
      case ._PATH(let selection): return selection.arrayValue(elementType:elementType)
      }
    }
    public func listValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.LIST<ELEM>? {
      switch self {
      case ._COMPOSITE_CURVE(let selection): return selection.listValue(elementType:elementType)
      case ._PATH(let selection): return selection.listValue(elementType:elementType)
      }
    }
    public func bagValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.BAG<ELEM>? {
      switch self {
      case ._COMPOSITE_CURVE(let selection): return selection.bagValue(elementType:elementType)
      case ._PATH(let selection): return selection.bagValue(elementType:elementType)
      }
    }
    public func setValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.SET<ELEM>? {
      switch self {
      case ._COMPOSITE_CURVE(let selection): return selection.setValue(elementType:elementType)
      case ._PATH(let selection): return selection.setValue(elementType:elementType)
      }
    }
    public func enumValue<ENUM:SDAIEnumerationType>(enumType:ENUM.Type) -> ENUM? {
      switch self {
      case ._COMPOSITE_CURVE(let selection): return selection.enumValue(enumType:enumType)
      case ._PATH(let selection): return selection.enumValue(enumType:enumType)
      }
    }

    //MARK: SDAIUnderlyingType
    public typealias FundamentalType = Self
    public static var typeName: String = 
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PATH_OR_COMPOSITE_CURVE"
    public var asFundamentalType: FundamentalType { return self }

    //MARK: SDAIObservableAggregateElement
    public var entityReferences: AnySequence<SDAI.EntityReference> {
      switch self {
      case ._COMPOSITE_CURVE(let entity): return entity.entityReferences
      case ._PATH(let entity): return entity.entityReferences
      }
    }

    public mutating func configure(with observer: SDAI.EntityReferenceObserver) {
      switch self {
      case ._COMPOSITE_CURVE(let entity): 
        entity.configure(with: observer)
        self = ._COMPOSITE_CURVE(entity)
      case ._PATH(let entity): 
        entity.configure(with: observer)
        self = ._PATH(entity)
      }
    }

    public mutating func teardownObserver() {
      switch self {
      case ._COMPOSITE_CURVE(let entity): 
        entity.teardownObserver()
        self = ._COMPOSITE_CURVE(entity)
      case ._PATH(let entity): 
        entity.teardownObserver()
        self = ._PATH(entity)
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
      case ._COMPOSITE_CURVE(let selectValue): 
        result = eCOMPOSITE_CURVE.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\COMPOSITE_CURVE")
      case ._PATH(let selectValue): result = ePATH.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\PATH")
      case nil: break
      }

      return result
    }

  }

}


//MARK: - SELECT TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sPATH_OR_COMPOSITE_CURVE__type: 
  SDAISelectType {

  //MARK: GROUP REFERENCES
  var super_eCOMPOSITE_CURVE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCOMPOSITE_CURVE? { get }
  var super_ePATH: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePATH? { get }
  var super_eTOPOLOGICAL_REPRESENTATION_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eTOPOLOGICAL_REPRESENTATION_ITEM? { get }
  var super_eREPRESENTATION_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION_ITEM? { get }
  var super_eCURVE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCURVE? { get }
  var super_eBOUNDED_CURVE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eBOUNDED_CURVE? { get }
  var super_eGEOMETRIC_REPRESENTATION_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eGEOMETRIC_REPRESENTATION_ITEM? { get }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var ORIENTATION: SDAI.BOOLEAN?  { get }
  var PERMANENT_AGGREGATE_ID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER?  { get }
  var PATH_ELEMENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePATH?  { get }
  var EDGE_LIST: (SDAI.LIST_UNIQUE<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eORIENTED_EDGE>/*[1:nil]*/ )?  { get }
  var N_SEGMENTS: SDAI.INTEGER?  { get }
  var SELF_INTERSECT: SDAI.LOGICAL { get }
  var SEGMENTS: (SDAI.LIST<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCOMPOSITE_CURVE_SEGMENT>/*[1:nil]*/ )?  { get }
  var BASIS_SURFACE: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSURFACE>/*[0:2]*/ )?  { get }
  var CLOSED_CURVE: SDAI.LOGICAL { get }
  var PERMANENT_ID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER?  { get }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { get }
  var DIM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tDIMENSION_COUNT?  { get }
}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sPATH_OR_COMPOSITE_CURVE__subtype: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sPATH_OR_COMPOSITE_CURVE__type, SDAIDefinedType
where Supertype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sPATH_OR_COMPOSITE_CURVE__type
{}

public extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sPATH_OR_COMPOSITE_CURVE__subtype {
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
  var super_eCOMPOSITE_CURVE: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCOMPOSITE_CURVE? { rep.super_eCOMPOSITE_CURVE }
  var super_ePATH: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePATH? { rep.super_ePATH }
  var super_eTOPOLOGICAL_REPRESENTATION_ITEM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eTOPOLOGICAL_REPRESENTATION_ITEM? { rep.super_eTOPOLOGICAL_REPRESENTATION_ITEM }
  var super_eREPRESENTATION_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION_ITEM? { rep.super_eREPRESENTATION_ITEM }
  var super_eCURVE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCURVE? { rep.super_eCURVE }
  var super_eBOUNDED_CURVE: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eBOUNDED_CURVE? { rep.super_eBOUNDED_CURVE }
  var super_eGEOMETRIC_REPRESENTATION_ITEM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eGEOMETRIC_REPRESENTATION_ITEM? { rep.super_eGEOMETRIC_REPRESENTATION_ITEM }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var ORIENTATION: SDAI.BOOLEAN?  { rep.ORIENTATION }
  var PERMANENT_AGGREGATE_ID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER?  { rep.PERMANENT_AGGREGATE_ID }
  var PATH_ELEMENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePATH?  { rep.PATH_ELEMENT }
  var EDGE_LIST: (SDAI.LIST_UNIQUE<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eORIENTED_EDGE>/*[1:nil]*/ )?  { rep.EDGE_LIST }
  var N_SEGMENTS: SDAI.INTEGER?  { rep.N_SEGMENTS }
  var SELF_INTERSECT: SDAI.LOGICAL { rep.SELF_INTERSECT }
  var SEGMENTS: (SDAI.LIST<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCOMPOSITE_CURVE_SEGMENT>/*[1:nil]*/ )?  { rep.SEGMENTS }
  var BASIS_SURFACE: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSURFACE>/*[0:2]*/ )?  { rep.BASIS_SURFACE }
  var CLOSED_CURVE: SDAI.LOGICAL { rep.CLOSED_CURVE }
  var PERMANENT_ID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER?  { rep.PERMANENT_ID }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { rep.NAME }
  var DIM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tDIMENSION_COUNT?  { rep.DIM }
}

