/* file: b_spline_or_rectangular_composite_surface_select.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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
  TYPE b_spline_or_rectangular_composite_surface_select = SELECT
    ( b_spline_surface (*ENTITY*),
     rectangular_composite_surface (*ENTITY*) );
  END_TYPE; -- b_spline_or_rectangular_composite_surface_select (line:1122 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES FOR SELECT
/*
  b_spline_surface (*ENTITY*):
  ATTR:  knot_v_upper: INTEGER
  ATTR:  u_multiplicities: LIST [2 : ?] OF INTEGER
  ATTR:  weights_data: LIST [2 : ?] OF LIST [2 : ?] OF REAL
  ATTR:  control_points_list: LIST [2 : ?] OF LIST [2 : ?] OF cartesian_point
  ATTR:  v_degree: INTEGER
  ATTR:  v_multiplicities: LIST [2 : ?] OF INTEGER
  ATTR:  v_upper: INTEGER
  ATTR:  v_closed: LOGICAL
  ATTR:  surface_form: b_spline_surface_form
  ATTR:  u_closed: LOGICAL
  ATTR:  u_knots: LIST [2 : ?] OF parameter_value
  ATTR:  knot_spec: knot_type
  ATTR:  self_intersect: LOGICAL
  ATTR:  v_knots: LIST [2 : ?] OF parameter_value
  ATTR:  control_points: ARRAY [0 : u_upper] OF ARRAY [0 : v_upper] OF cartesian_point
  ATTR:  u_degree: INTEGER
  ATTR:  knot_u_upper: INTEGER
  ATTR:  u_upper: INTEGER
  ATTR:  name: label
  ATTR:  weights: ARRAY [0 : u_upper] OF ARRAY [0 : v_upper] OF REAL
  ATTR:  dim: dimension_count

  rectangular_composite_surface (*ENTITY*):
  ATTR:  n_u: INTEGER
  ATTR:  n_v: INTEGER
  ATTR:  segments: LIST [1 : ?] OF LIST [1 : ?] OF surface_patch
  ATTR:  name: label
  ATTR:  dim: dimension_count

*/

/** SELECT type
- EXPRESS:
```express
  TYPE b_spline_or_rectangular_composite_surface_select = SELECT
    ( b_spline_surface (*ENTITY*),
     rectangular_composite_surface (*ENTITY*) );
  END_TYPE; -- b_spline_or_rectangular_composite_surface_select (line:1122 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public enum sB_SPLINE_OR_RECTANGULAR_COMPOSITE_SURFACE_SELECT : SDAIValue, 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sB_SPLINE_OR_RECTANGULAR_COMPOSITE_SURFACE_SELECT__type {

    /// SELECT case ``eB_SPLINE_SURFACE`` (ENTITY) in ``sB_SPLINE_OR_RECTANGULAR_COMPOSITE_SURFACE_SELECT``
    case _B_SPLINE_SURFACE(eB_SPLINE_SURFACE)	// (ENTITY)

    /// SELECT case ``eRECTANGULAR_COMPOSITE_SURFACE`` (ENTITY) in ``sB_SPLINE_OR_RECTANGULAR_COMPOSITE_SURFACE_SELECT``
    case _RECTANGULAR_COMPOSITE_SURFACE(eRECTANGULAR_COMPOSITE_SURFACE)	// (ENTITY)

    //MARK: - CONSTRUCTORS
    public init(fundamental: FundamentalType) { self = fundamental }

    public init?<T: SDAIUnderlyingType>(possiblyFrom underlyingType: T?){
      return nil
    }

    public init?(possiblyFrom complex: SDAI.ComplexEntity?) {
      guard let complex = complex else { return nil }

      if let base = complex.entityReference(eB_SPLINE_SURFACE.self) {self = ._B_SPLINE_SURFACE(base) }
      else if let base = complex.entityReference(eRECTANGULAR_COMPOSITE_SURFACE.self) {self = ._RECTANGULAR_COMPOSITE_SURFACE(base) }
      else { return nil }
    }

    public init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let select = generic else { return nil }

      if let fundamental = select as? Self {
        self.init(fundamental: fundamental)
      }
      else if let base = eB_SPLINE_SURFACE.convert(fromGeneric: select) {
        self = ._B_SPLINE_SURFACE(base)
      }
      else if let base = eRECTANGULAR_COMPOSITE_SURFACE.convert(fromGeneric: select) {
        self = ._RECTANGULAR_COMPOSITE_SURFACE(base)
      }
      else { return nil }
    }

    // InitializableByP21Parameter
    public static var bareTypeName: String = "B_SPLINE_OR_RECTANGULAR_COMPOSITE_SURFACE_SELECT"

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
    public var super_eRECTANGULAR_COMPOSITE_SURFACE: eRECTANGULAR_COMPOSITE_SURFACE? {
      switch self {
      case ._RECTANGULAR_COMPOSITE_SURFACE(let entity): return entity
      default: return nil
      }
    }

    public var super_eBOUNDED_SURFACE: eBOUNDED_SURFACE? {
      switch self {
      case ._B_SPLINE_SURFACE(let entity): return entity.super_eBOUNDED_SURFACE
      case ._RECTANGULAR_COMPOSITE_SURFACE(let entity): return entity.super_eBOUNDED_SURFACE
      }
    }

    public var super_eB_SPLINE_SURFACE: eB_SPLINE_SURFACE? {
      switch self {
      case ._B_SPLINE_SURFACE(let entity): return entity
      default: return nil
      }
    }

    public var super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM? {
      switch self {
      case ._B_SPLINE_SURFACE(let entity): return entity.super_eREPRESENTATION_ITEM
      case ._RECTANGULAR_COMPOSITE_SURFACE(let entity): return entity.super_eREPRESENTATION_ITEM
      }
    }

    public var super_eSURFACE: eSURFACE? {
      switch self {
      case ._B_SPLINE_SURFACE(let entity): return entity.super_eSURFACE
      case ._RECTANGULAR_COMPOSITE_SURFACE(let entity): return entity.super_eSURFACE
      }
    }

    public var super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM? {
      switch self {
      case ._B_SPLINE_SURFACE(let entity): return entity.super_eGEOMETRIC_REPRESENTATION_ITEM
      case ._RECTANGULAR_COMPOSITE_SURFACE(let entity): return entity.super_eGEOMETRIC_REPRESENTATION_ITEM
      }
    }


    //MARK: - ENTITY ATTRIBUTE REFERENCES
    /// attribute of SELECT type ``sB_SPLINE_OR_RECTANGULAR_COMPOSITE_SURFACE_SELECT``
    /// - origin: ENTITY( ``eB_SPLINE_SURFACE`` )
    public var KNOT_V_UPPER: SDAI.INTEGER?  {
      switch self {
      case ._B_SPLINE_SURFACE(let entity): return entity.KNOT_V_UPPER
      default: return nil
      }
    }

    /// attribute of SELECT type ``sB_SPLINE_OR_RECTANGULAR_COMPOSITE_SURFACE_SELECT``
    /// - origin: ENTITY( ``eB_SPLINE_SURFACE`` )
    public var U_MULTIPLICITIES: (SDAI.LIST<SDAI.INTEGER>/*[2:nil]*/ )?  {
      switch self {
      case ._B_SPLINE_SURFACE(let entity): return entity.U_MULTIPLICITIES
      default: return nil
      }
    }

    /// attribute of SELECT type ``sB_SPLINE_OR_RECTANGULAR_COMPOSITE_SURFACE_SELECT``
    /// - origin: ENTITY( ``eB_SPLINE_SURFACE`` )
    public var WEIGHTS_DATA: (SDAI.LIST<SDAI.LIST<SDAI.REAL>/*[2:nil]*/ >/*[2:nil]*/ )?  {
      switch self {
      case ._B_SPLINE_SURFACE(let entity): return entity.WEIGHTS_DATA
      default: return nil
      }
    }

    /// attribute of SELECT type ``sB_SPLINE_OR_RECTANGULAR_COMPOSITE_SURFACE_SELECT``
    /// - origin: ENTITY( ``eB_SPLINE_SURFACE`` )
    public var CONTROL_POINTS_LIST: (SDAI.LIST<SDAI.LIST<eCARTESIAN_POINT>/*[2:nil]*/ >/*[2:nil]*/ )?  {
      switch self {
      case ._B_SPLINE_SURFACE(let entity): return entity.CONTROL_POINTS_LIST
      default: return nil
      }
    }

    /// attribute of SELECT type ``sB_SPLINE_OR_RECTANGULAR_COMPOSITE_SURFACE_SELECT``
    /// - origin: ENTITY( ``eRECTANGULAR_COMPOSITE_SURFACE`` )
    public var N_U: SDAI.INTEGER?  {
      switch self {
      case ._RECTANGULAR_COMPOSITE_SURFACE(let entity): return entity.N_U
      default: return nil
      }
    }

    /// attribute of SELECT type ``sB_SPLINE_OR_RECTANGULAR_COMPOSITE_SURFACE_SELECT``
    /// - origin: ENTITY( ``eRECTANGULAR_COMPOSITE_SURFACE`` )
    public var N_V: SDAI.INTEGER?  {
      switch self {
      case ._RECTANGULAR_COMPOSITE_SURFACE(let entity): return entity.N_V
      default: return nil
      }
    }

    /// attribute of SELECT type ``sB_SPLINE_OR_RECTANGULAR_COMPOSITE_SURFACE_SELECT``
    /// - origin: ENTITY( ``eB_SPLINE_SURFACE`` )
    public var V_DEGREE: SDAI.INTEGER?  {
      switch self {
      case ._B_SPLINE_SURFACE(let entity): return entity.V_DEGREE
      default: return nil
      }
    }

    /// attribute of SELECT type ``sB_SPLINE_OR_RECTANGULAR_COMPOSITE_SURFACE_SELECT``
    /// - origin: ENTITY( ``eB_SPLINE_SURFACE`` )
    public var V_MULTIPLICITIES: (SDAI.LIST<SDAI.INTEGER>/*[2:nil]*/ )?  {
      switch self {
      case ._B_SPLINE_SURFACE(let entity): return entity.V_MULTIPLICITIES
      default: return nil
      }
    }

    /// attribute of SELECT type ``sB_SPLINE_OR_RECTANGULAR_COMPOSITE_SURFACE_SELECT``
    /// - origin: ENTITY( ``eB_SPLINE_SURFACE`` )
    public var V_UPPER: SDAI.INTEGER?  {
      switch self {
      case ._B_SPLINE_SURFACE(let entity): return entity.V_UPPER
      default: return nil
      }
    }

    /// attribute of SELECT type ``sB_SPLINE_OR_RECTANGULAR_COMPOSITE_SURFACE_SELECT``
    /// - origin: ENTITY( ``eB_SPLINE_SURFACE`` )
    public var V_CLOSED: SDAI.LOGICAL {
      switch self {
      case ._B_SPLINE_SURFACE(let entity): return entity.V_CLOSED
      default: return nil
      }
    }

    /// attribute of SELECT type ``sB_SPLINE_OR_RECTANGULAR_COMPOSITE_SURFACE_SELECT``
    /// - origin: ENTITY( ``eB_SPLINE_SURFACE`` )
    public var SURFACE_FORM: nB_SPLINE_SURFACE_FORM?  {
      switch self {
      case ._B_SPLINE_SURFACE(let entity): return entity.SURFACE_FORM
      default: return nil
      }
    }

    /// attribute of SELECT type ``sB_SPLINE_OR_RECTANGULAR_COMPOSITE_SURFACE_SELECT``
    /// - origin: ENTITY( ``eB_SPLINE_SURFACE`` )
    public var U_CLOSED: SDAI.LOGICAL {
      switch self {
      case ._B_SPLINE_SURFACE(let entity): return entity.U_CLOSED
      default: return nil
      }
    }

    /// attribute of SELECT type ``sB_SPLINE_OR_RECTANGULAR_COMPOSITE_SURFACE_SELECT``
    /// - origin: ENTITY( ``eB_SPLINE_SURFACE`` )
    public var U_KNOTS: (SDAI.LIST<tPARAMETER_VALUE>/*[2:nil]*/ )?  {
      switch self {
      case ._B_SPLINE_SURFACE(let entity): return entity.U_KNOTS
      default: return nil
      }
    }

    /// attribute of SELECT type ``sB_SPLINE_OR_RECTANGULAR_COMPOSITE_SURFACE_SELECT``
    /// - origin: ENTITY( ``eB_SPLINE_SURFACE`` )
    public var KNOT_SPEC: nKNOT_TYPE?  {
      switch self {
      case ._B_SPLINE_SURFACE(let entity): return entity.KNOT_SPEC
      default: return nil
      }
    }

    /// attribute of SELECT type ``sB_SPLINE_OR_RECTANGULAR_COMPOSITE_SURFACE_SELECT``
    /// - origin: ENTITY( ``eB_SPLINE_SURFACE`` )
    public var SELF_INTERSECT: SDAI.LOGICAL {
      switch self {
      case ._B_SPLINE_SURFACE(let entity): return entity.SELF_INTERSECT
      default: return nil
      }
    }

    /// attribute of SELECT type ``sB_SPLINE_OR_RECTANGULAR_COMPOSITE_SURFACE_SELECT``
    /// - origin: ENTITY( ``eRECTANGULAR_COMPOSITE_SURFACE`` )
    public var SEGMENTS: (SDAI.LIST<SDAI.LIST<eSURFACE_PATCH>/*[1:nil]*/ >/*[1:nil]*/ )?  {
      switch self {
      case ._RECTANGULAR_COMPOSITE_SURFACE(let entity): return entity.SEGMENTS
      default: return nil
      }
    }

    /// attribute of SELECT type ``sB_SPLINE_OR_RECTANGULAR_COMPOSITE_SURFACE_SELECT``
    /// - origin: ENTITY( ``eB_SPLINE_SURFACE`` )
    public var V_KNOTS: (SDAI.LIST<tPARAMETER_VALUE>/*[2:nil]*/ )?  {
      switch self {
      case ._B_SPLINE_SURFACE(let entity): return entity.V_KNOTS
      default: return nil
      }
    }

    /// attribute of SELECT type ``sB_SPLINE_OR_RECTANGULAR_COMPOSITE_SURFACE_SELECT``
    /// - origin: ENTITY( ``eB_SPLINE_SURFACE`` )
    public var CONTROL_POINTS: (SDAI.ARRAY<SDAI.ARRAY<eCARTESIAN_POINT>/*[0:V_UPPER]*/ >/*[0:U_UPPER]*/ )?  {
      switch self {
      case ._B_SPLINE_SURFACE(let entity): return entity.CONTROL_POINTS
      default: return nil
      }
    }

    /// attribute of SELECT type ``sB_SPLINE_OR_RECTANGULAR_COMPOSITE_SURFACE_SELECT``
    /// - origin: ENTITY( ``eB_SPLINE_SURFACE`` )
    public var U_DEGREE: SDAI.INTEGER?  {
      switch self {
      case ._B_SPLINE_SURFACE(let entity): return entity.U_DEGREE
      default: return nil
      }
    }

    /// attribute of SELECT type ``sB_SPLINE_OR_RECTANGULAR_COMPOSITE_SURFACE_SELECT``
    /// - origin: ENTITY( ``eB_SPLINE_SURFACE`` )
    public var KNOT_U_UPPER: SDAI.INTEGER?  {
      switch self {
      case ._B_SPLINE_SURFACE(let entity): return entity.KNOT_U_UPPER
      default: return nil
      }
    }

    /// attribute of SELECT type ``sB_SPLINE_OR_RECTANGULAR_COMPOSITE_SURFACE_SELECT``
    /// - origin: ENTITY( ``eB_SPLINE_SURFACE`` )
    public var U_UPPER: SDAI.INTEGER?  {
      switch self {
      case ._B_SPLINE_SURFACE(let entity): return entity.U_UPPER
      default: return nil
      }
    }

    /// attribute of SELECT type ``sB_SPLINE_OR_RECTANGULAR_COMPOSITE_SURFACE_SELECT``
    /// - origin: ENTITY( ``eB_SPLINE_SURFACE`` )
    /// - origin: ENTITY( ``eRECTANGULAR_COMPOSITE_SURFACE`` )
    public var NAME: tLABEL?  {
      switch self {
      case ._B_SPLINE_SURFACE(let entity): return entity.NAME
      case ._RECTANGULAR_COMPOSITE_SURFACE(let entity): return entity.NAME
      }
    }

    /// attribute of SELECT type ``sB_SPLINE_OR_RECTANGULAR_COMPOSITE_SURFACE_SELECT``
    /// - origin: ENTITY( ``eB_SPLINE_SURFACE`` )
    public var WEIGHTS: (SDAI.ARRAY<SDAI.ARRAY<SDAI.REAL>/*[0:V_UPPER]*/ >/*[0:U_UPPER]*/ )?  {
      switch self {
      case ._B_SPLINE_SURFACE(let entity): return entity.WEIGHTS
      default: return nil
      }
    }

    /// attribute of SELECT type ``sB_SPLINE_OR_RECTANGULAR_COMPOSITE_SURFACE_SELECT``
    /// - origin: ENTITY( ``eB_SPLINE_SURFACE`` )
    /// - origin: ENTITY( ``eRECTANGULAR_COMPOSITE_SURFACE`` )
    public var DIM: tDIMENSION_COUNT?  {
      switch self {
      case ._B_SPLINE_SURFACE(let entity): return entity.DIM
      case ._RECTANGULAR_COMPOSITE_SURFACE(let entity): return entity.DIM
      }
    }


    //MARK: - SDAIValue
    public func isValueEqual<T: SDAIValue>(to rhs: T) -> Bool {
      switch self {
      case ._B_SPLINE_SURFACE(let selection): return selection.value.isValueEqual(to: rhs)
      case ._RECTANGULAR_COMPOSITE_SURFACE(let selection): return selection.value.isValueEqual(to: rhs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?) -> Bool? {
      switch self {
      case ._B_SPLINE_SURFACE(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._RECTANGULAR_COMPOSITE_SURFACE(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      }
    }

    public func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      switch self {
      case ._B_SPLINE_SURFACE(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._RECTANGULAR_COMPOSITE_SURFACE(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      }
    }

    public func isValueEqual<T: SDAIValue>(to rhs: T, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      switch self {
      case ._B_SPLINE_SURFACE(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._RECTANGULAR_COMPOSITE_SURFACE(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      switch self {
      case ._B_SPLINE_SURFACE(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._RECTANGULAR_COMPOSITE_SURFACE(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      }
    }


    //MARK: SDAIGenericTypeBase
    public func copy() -> Self {
      switch self {
      case ._B_SPLINE_SURFACE(let selection): return ._B_SPLINE_SURFACE(selection.copy())
      case ._RECTANGULAR_COMPOSITE_SURFACE(let selection): return ._RECTANGULAR_COMPOSITE_SURFACE(selection.copy())
      }
    }

    //MARK: SDAIGenericType
    public var typeMembers: Set<SDAI.STRING> {
      var members: Set<SDAI.STRING> = [SDAI.STRING(Self.typeName)]
      switch self {
      case ._B_SPLINE_SURFACE(let selection): members.formUnion(selection.typeMembers)
      case ._RECTANGULAR_COMPOSITE_SURFACE(let selection): members.formUnion(selection.typeMembers)
      }
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sINSPECTED_ECDQ_ELEMENT_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sLOCATION_OF_EXTREME_VALUE_SELECT.typeName)) // -> sINSPECTED_ECDQ_ELEMENT_SELECT
      members.insert(SDAI.STRING(sINSPECTED_SHAPE_ELEMENT_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sINSPECTED_ELEMENT_SELECT.typeName)) // -> Self
      return members
    }

    public var entityReference: SDAI.EntityReference? {
      switch self {
      case ._B_SPLINE_SURFACE(let selection): return selection.entityReference
      case ._RECTANGULAR_COMPOSITE_SURFACE(let selection): return selection.entityReference
      }
    }
    public var stringValue: SDAI.STRING? {
      switch self {
      case ._B_SPLINE_SURFACE(let selection): return selection.stringValue
      case ._RECTANGULAR_COMPOSITE_SURFACE(let selection): return selection.stringValue
      }
    }
    public var binaryValue: SDAI.BINARY? {
      switch self {
      case ._B_SPLINE_SURFACE(let selection): return selection.binaryValue
      case ._RECTANGULAR_COMPOSITE_SURFACE(let selection): return selection.binaryValue
      }
    }
    public var logicalValue: SDAI.LOGICAL? {
      switch self {
      case ._B_SPLINE_SURFACE(let selection): return selection.logicalValue
      case ._RECTANGULAR_COMPOSITE_SURFACE(let selection): return selection.logicalValue
      }
    }
    public var booleanValue: SDAI.BOOLEAN? {
      switch self {
      case ._B_SPLINE_SURFACE(let selection): return selection.booleanValue
      case ._RECTANGULAR_COMPOSITE_SURFACE(let selection): return selection.booleanValue
      }
    }
    public var numberValue: SDAI.NUMBER? {
      switch self {
      case ._B_SPLINE_SURFACE(let selection): return selection.numberValue
      case ._RECTANGULAR_COMPOSITE_SURFACE(let selection): return selection.numberValue
      }
    }
    public var realValue: SDAI.REAL? {
      switch self {
      case ._B_SPLINE_SURFACE(let selection): return selection.realValue
      case ._RECTANGULAR_COMPOSITE_SURFACE(let selection): return selection.realValue
      }
    }
    public var integerValue: SDAI.INTEGER? {
      switch self {
      case ._B_SPLINE_SURFACE(let selection): return selection.integerValue
      case ._RECTANGULAR_COMPOSITE_SURFACE(let selection): return selection.integerValue
      }
    }
    public var genericEnumValue: SDAI.GenericEnumValue? {
      switch self {
      case ._B_SPLINE_SURFACE(let selection): return selection.genericEnumValue
      case ._RECTANGULAR_COMPOSITE_SURFACE(let selection): return selection.genericEnumValue
      }
    }
    public func arrayOptionalValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY_OPTIONAL<ELEM>? {
      switch self {
      case ._B_SPLINE_SURFACE(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._RECTANGULAR_COMPOSITE_SURFACE(let selection): return selection.arrayOptionalValue(elementType:elementType)
      }
    }
    public func arrayValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY<ELEM>? {
      switch self {
      case ._B_SPLINE_SURFACE(let selection): return selection.arrayValue(elementType:elementType)
      case ._RECTANGULAR_COMPOSITE_SURFACE(let selection): return selection.arrayValue(elementType:elementType)
      }
    }
    public func listValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.LIST<ELEM>? {
      switch self {
      case ._B_SPLINE_SURFACE(let selection): return selection.listValue(elementType:elementType)
      case ._RECTANGULAR_COMPOSITE_SURFACE(let selection): return selection.listValue(elementType:elementType)
      }
    }
    public func bagValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.BAG<ELEM>? {
      switch self {
      case ._B_SPLINE_SURFACE(let selection): return selection.bagValue(elementType:elementType)
      case ._RECTANGULAR_COMPOSITE_SURFACE(let selection): return selection.bagValue(elementType:elementType)
      }
    }
    public func setValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.SET<ELEM>? {
      switch self {
      case ._B_SPLINE_SURFACE(let selection): return selection.setValue(elementType:elementType)
      case ._RECTANGULAR_COMPOSITE_SURFACE(let selection): return selection.setValue(elementType:elementType)
      }
    }
    public func enumValue<ENUM:SDAIEnumerationType>(enumType:ENUM.Type) -> ENUM? {
      switch self {
      case ._B_SPLINE_SURFACE(let selection): return selection.enumValue(enumType:enumType)
      case ._RECTANGULAR_COMPOSITE_SURFACE(let selection): return selection.enumValue(enumType:enumType)
      }
    }

    //MARK: SDAIUnderlyingType
    public typealias FundamentalType = Self
    public static var typeName: String = 
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.B_SPLINE_OR_RECTANGULAR_COMPOSITE_SURFACE_SELECT"
    public var asFundamentalType: FundamentalType { return self }

    //MARK: SDAIObservableAggregateElement
    public var entityReferences: AnySequence<SDAI.EntityReference> {
      switch self {
      case ._B_SPLINE_SURFACE(let entity): return entity.entityReferences
      case ._RECTANGULAR_COMPOSITE_SURFACE(let entity): return entity.entityReferences
      }
    }

    public mutating func configure(with observer: SDAI.EntityReferenceObserver) {
      switch self {
      case ._B_SPLINE_SURFACE(let entity): 
        entity.configure(with: observer)
        self = ._B_SPLINE_SURFACE(entity)
      case ._RECTANGULAR_COMPOSITE_SURFACE(let entity): 
        entity.configure(with: observer)
        self = ._RECTANGULAR_COMPOSITE_SURFACE(entity)
      }
    }

    public mutating func teardownObserver() {
      switch self {
      case ._B_SPLINE_SURFACE(let entity): 
        entity.teardownObserver()
        self = ._B_SPLINE_SURFACE(entity)
      case ._RECTANGULAR_COMPOSITE_SURFACE(let entity): 
        entity.teardownObserver()
        self = ._RECTANGULAR_COMPOSITE_SURFACE(entity)
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
      case ._B_SPLINE_SURFACE(let selectValue): 
        result = eB_SPLINE_SURFACE.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\B_SPLINE_SURFACE")
      case ._RECTANGULAR_COMPOSITE_SURFACE(let selectValue): 
        result = eRECTANGULAR_COMPOSITE_SURFACE.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\RECTANGULAR_COMPOSITE_SURFACE")
      case nil: break
      }

      return result
    }

  }

}


//MARK: - SELECT TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sB_SPLINE_OR_RECTANGULAR_COMPOSITE_SURFACE_SELECT__type: 
  SDAISelectType {

  //MARK: GROUP REFERENCES
  var super_eRECTANGULAR_COMPOSITE_SURFACE: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eRECTANGULAR_COMPOSITE_SURFACE? { get }
  var super_eBOUNDED_SURFACE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eBOUNDED_SURFACE? { get }
  var super_eB_SPLINE_SURFACE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eB_SPLINE_SURFACE? { get }
  var super_eREPRESENTATION_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION_ITEM? { get }
  var super_eSURFACE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSURFACE? { get }
  var super_eGEOMETRIC_REPRESENTATION_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eGEOMETRIC_REPRESENTATION_ITEM? { get }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var KNOT_V_UPPER: SDAI.INTEGER?  { get }
  var U_MULTIPLICITIES: (SDAI.LIST<SDAI.INTEGER>/*[2:nil]*/ )?  { get }
  var WEIGHTS_DATA: (SDAI.LIST<SDAI.LIST<SDAI.REAL>/*[2:nil]*/ >/*[2:nil]*/ )?  { get }
  var CONTROL_POINTS_LIST: (SDAI.LIST<SDAI.LIST<
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCARTESIAN_POINT>/*[2:nil]*/ >/*[2:nil]*/ )?  { get }
  var N_U: SDAI.INTEGER?  { get }
  var N_V: SDAI.INTEGER?  { get }
  var V_DEGREE: SDAI.INTEGER?  { get }
  var V_MULTIPLICITIES: (SDAI.LIST<SDAI.INTEGER>/*[2:nil]*/ )?  { get }
  var V_UPPER: SDAI.INTEGER?  { get }
  var V_CLOSED: SDAI.LOGICAL { get }
  var SURFACE_FORM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.nB_SPLINE_SURFACE_FORM?  { get }
  var U_CLOSED: SDAI.LOGICAL { get }
  var U_KNOTS: (SDAI.LIST<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tPARAMETER_VALUE>/*[2:nil]*/ )?  { get }
  var KNOT_SPEC: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.nKNOT_TYPE?  { get }
  var SELF_INTERSECT: SDAI.LOGICAL { get }
  var SEGMENTS: (SDAI.LIST<SDAI.LIST<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSURFACE_PATCH>/*[1:nil]*/ >
    /*[1:nil]*/ )?  { get }
  var V_KNOTS: (SDAI.LIST<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tPARAMETER_VALUE>/*[2:nil]*/ )?  { get }
  var CONTROL_POINTS: (SDAI.ARRAY<SDAI.ARRAY<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCARTESIAN_POINT>
    /*[0:V_UPPER]*/ >/*[0:U_UPPER]*/ )?  { get }
  var U_DEGREE: SDAI.INTEGER?  { get }
  var KNOT_U_UPPER: SDAI.INTEGER?  { get }
  var U_UPPER: SDAI.INTEGER?  { get }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { get }
  var WEIGHTS: (SDAI.ARRAY<SDAI.ARRAY<SDAI.REAL>/*[0:V_UPPER]*/ >/*[0:U_UPPER]*/ )?  { get }
  var DIM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tDIMENSION_COUNT?  { get }
}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sB_SPLINE_OR_RECTANGULAR_COMPOSITE_SURFACE_SELECT__subtype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sB_SPLINE_OR_RECTANGULAR_COMPOSITE_SURFACE_SELECT__type, SDAIDefinedType
where Supertype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sB_SPLINE_OR_RECTANGULAR_COMPOSITE_SURFACE_SELECT__type
{}

public extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sB_SPLINE_OR_RECTANGULAR_COMPOSITE_SURFACE_SELECT__subtype {
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
  var super_eRECTANGULAR_COMPOSITE_SURFACE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eRECTANGULAR_COMPOSITE_SURFACE? { rep.super_eRECTANGULAR_COMPOSITE_SURFACE }
  var super_eBOUNDED_SURFACE: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eBOUNDED_SURFACE? { rep.super_eBOUNDED_SURFACE }
  var super_eB_SPLINE_SURFACE: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eB_SPLINE_SURFACE? { rep.super_eB_SPLINE_SURFACE }
  var super_eREPRESENTATION_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION_ITEM? { rep.super_eREPRESENTATION_ITEM }
  var super_eSURFACE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSURFACE? { rep.super_eSURFACE }
  var super_eGEOMETRIC_REPRESENTATION_ITEM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eGEOMETRIC_REPRESENTATION_ITEM? { rep.super_eGEOMETRIC_REPRESENTATION_ITEM }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var KNOT_V_UPPER: SDAI.INTEGER?  { rep.KNOT_V_UPPER }
  var U_MULTIPLICITIES: (SDAI.LIST<SDAI.INTEGER>/*[2:nil]*/ )?  { rep.U_MULTIPLICITIES }
  var WEIGHTS_DATA: (SDAI.LIST<SDAI.LIST<SDAI.REAL>/*[2:nil]*/ >/*[2:nil]*/ )?  { rep.WEIGHTS_DATA }
  var CONTROL_POINTS_LIST: (SDAI.LIST<SDAI.LIST<
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCARTESIAN_POINT>/*[2:nil]*/ >/*[2:nil]*/ )?  { rep.CONTROL_POINTS_LIST }
  var N_U: SDAI.INTEGER?  { rep.N_U }
  var N_V: SDAI.INTEGER?  { rep.N_V }
  var V_DEGREE: SDAI.INTEGER?  { rep.V_DEGREE }
  var V_MULTIPLICITIES: (SDAI.LIST<SDAI.INTEGER>/*[2:nil]*/ )?  { rep.V_MULTIPLICITIES }
  var V_UPPER: SDAI.INTEGER?  { rep.V_UPPER }
  var V_CLOSED: SDAI.LOGICAL { rep.V_CLOSED }
  var SURFACE_FORM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.nB_SPLINE_SURFACE_FORM?  { rep.SURFACE_FORM }
  var U_CLOSED: SDAI.LOGICAL { rep.U_CLOSED }
  var U_KNOTS: (SDAI.LIST<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tPARAMETER_VALUE>/*[2:nil]*/ )?  { rep.U_KNOTS }
  var KNOT_SPEC: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.nKNOT_TYPE?  { rep.KNOT_SPEC }
  var SELF_INTERSECT: SDAI.LOGICAL { rep.SELF_INTERSECT }
  var SEGMENTS: (SDAI.LIST<SDAI.LIST<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSURFACE_PATCH>/*[1:nil]*/ >
    /*[1:nil]*/ )?  { rep.SEGMENTS }
  var V_KNOTS: (SDAI.LIST<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tPARAMETER_VALUE>/*[2:nil]*/ )?  { rep.V_KNOTS }
  var CONTROL_POINTS: (SDAI.ARRAY<SDAI.ARRAY<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCARTESIAN_POINT>
    /*[0:V_UPPER]*/ >/*[0:U_UPPER]*/ )?  { rep.CONTROL_POINTS }
  var U_DEGREE: SDAI.INTEGER?  { rep.U_DEGREE }
  var KNOT_U_UPPER: SDAI.INTEGER?  { rep.KNOT_U_UPPER }
  var U_UPPER: SDAI.INTEGER?  { rep.U_UPPER }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { rep.NAME }
  var WEIGHTS: (SDAI.ARRAY<SDAI.ARRAY<SDAI.REAL>/*[0:V_UPPER]*/ >/*[0:U_UPPER]*/ )?  { rep.WEIGHTS }
  var DIM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tDIMENSION_COUNT?  { rep.DIM }
}

