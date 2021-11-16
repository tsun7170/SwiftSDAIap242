/* file: swept_surface_or_solid.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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
  TYPE swept_surface_or_solid = SELECT
    ( swept_area_solid (*ENTITY*),
     swept_face_solid (*ENTITY*),
     swept_surface (*ENTITY*) );
  END_TYPE; -- swept_surface_or_solid (line:5705 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES FOR SELECT
/*
  swept_area_solid (*ENTITY*):
  ATTR:  reference_surface: surface *** Multiple Select Case Sources ***
  ATTR:  end_param: REAL
  ATTR:  axis_line: line *** Multiple Select Case Sources ***
  ATTR:  angle: plane_angle_measure *** Multiple Select Case Sources ***
  ATTR:  axis: axis1_placement *** Multiple Select Case Sources ***
  ATTR:  directrix: curve
  ATTR:  extruded_direction: direction *** Multiple Select Case Sources ***
  ATTR:  swept_area: curve_bounded_surface
  ATTR:  start_param: REAL
  ATTR:  name: label
  ATTR:  depth: positive_length_measure *** Multiple Select Case Sources ***
  ATTR:  dim: dimension_count

  swept_face_solid (*ENTITY*):
  ATTR:  second_trim_condition: (AMBIGUOUS (CASE LEVEL))
  ATTR:  first_trim_intent: trim_intent
  ATTR:  second_trim_intent: trim_intent
  ATTR:  swept_face: face_surface
  ATTR:  first_trim_condition: (AMBIGUOUS (CASE LEVEL))
  ATTR:  drafted_edges: LIST [2 : ?] OF SET [1 : ?] OF edge_curve
  ATTR:  axis_line: line *** Multiple Select Case Sources ***
  ATTR:  angle: plane_angle_measure *** Multiple Select Case Sources ***
  ATTR:  axis: axis1_placement *** Multiple Select Case Sources ***
  ATTR:  first_offset: non_negative_length_measure
  ATTR:  draft_angles: LIST [2 : ?] OF plane_angle_measure
  ATTR:  extruded_direction: direction *** Multiple Select Case Sources ***
  ATTR:  second_offset: non_negative_length_measure
  ATTR:  draft_angle: plane_angle_measure
  ATTR:  name: label
  ATTR:  depth: positive_length_measure *** Multiple Select Case Sources ***
  ATTR:  dim: dimension_count

  swept_surface (*ENTITY*):
  ATTR:  swept_curve: curve
  ATTR:  reference_surface: surface *** Multiple Select Case Sources ***
  ATTR:  axis_position: axis1_placement
  ATTR:  axis_line: line *** Multiple Select Case Sources ***
  ATTR:  directrix: (AMBIGUOUS (CASE LEVEL))
  ATTR:  fixed_reference: direction
  ATTR:  name: label
  ATTR:  extrusion_axis: vector
  ATTR:  dim: dimension_count

*/

/** SELECT type
- EXPRESS:
```express
  TYPE swept_surface_or_solid = SELECT
    ( swept_area_solid (*ENTITY*),
     swept_face_solid (*ENTITY*),
     swept_surface (*ENTITY*) );
  END_TYPE; -- swept_surface_or_solid (line:5705 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public enum sSWEPT_SURFACE_OR_SOLID : SDAIValue, AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sSWEPT_SURFACE_OR_SOLID__type {

    /// SELECT case ``eSWEPT_AREA_SOLID`` (ENTITY) in ``sSWEPT_SURFACE_OR_SOLID``
    case _SWEPT_AREA_SOLID(eSWEPT_AREA_SOLID)	// (ENTITY)

    /// SELECT case ``eSWEPT_FACE_SOLID`` (ENTITY) in ``sSWEPT_SURFACE_OR_SOLID``
    case _SWEPT_FACE_SOLID(eSWEPT_FACE_SOLID)	// (ENTITY)

    /// SELECT case ``eSWEPT_SURFACE`` (ENTITY) in ``sSWEPT_SURFACE_OR_SOLID``
    case _SWEPT_SURFACE(eSWEPT_SURFACE)	// (ENTITY)

    //MARK: - CONSTRUCTORS
    public init(fundamental: FundamentalType) { self = fundamental }

    public init?<T: SDAIUnderlyingType>(possiblyFrom underlyingType: T?){
      return nil
    }

    public init?(possiblyFrom complex: SDAI.ComplexEntity?) {
      guard let complex = complex else { return nil }

      if let base = complex.entityReference(eSWEPT_AREA_SOLID.self) {self = ._SWEPT_AREA_SOLID(base) }
      else if let base = complex.entityReference(eSWEPT_FACE_SOLID.self) {self = ._SWEPT_FACE_SOLID(base) }
      else if let base = complex.entityReference(eSWEPT_SURFACE.self) {self = ._SWEPT_SURFACE(base) }
      else { return nil }
    }

    public init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let select = generic else { return nil }

      if let fundamental = select as? Self {
        self.init(fundamental: fundamental)
      }
      else if let base = eSWEPT_AREA_SOLID.convert(fromGeneric: select) {
        self = ._SWEPT_AREA_SOLID(base)
      }
      else if let base = eSWEPT_FACE_SOLID.convert(fromGeneric: select) {
        self = ._SWEPT_FACE_SOLID(base)
      }
      else if let base = eSWEPT_SURFACE.convert(fromGeneric: select) {
        self = ._SWEPT_SURFACE(base)
      }
      else { return nil }
    }

    // InitializableByP21Parameter
    public static var bareTypeName: String = "SWEPT_SURFACE_OR_SOLID"

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
    public var super_eSWEPT_AREA_SOLID: eSWEPT_AREA_SOLID? {
      switch self {
      case ._SWEPT_AREA_SOLID(let entity): return entity
      default: return nil
      }
    }

    public var super_eSOLID_MODEL: eSOLID_MODEL? {
      switch self {
      case ._SWEPT_AREA_SOLID(let entity): return entity.super_eSOLID_MODEL
      case ._SWEPT_FACE_SOLID(let entity): return entity.super_eSOLID_MODEL
      default: return nil
      }
    }

    public var super_eSWEPT_SURFACE: eSWEPT_SURFACE? {
      switch self {
      case ._SWEPT_SURFACE(let entity): return entity
      default: return nil
      }
    }

    public var super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM? {
      switch self {
      case ._SWEPT_AREA_SOLID(let entity): return entity.super_eREPRESENTATION_ITEM
      case ._SWEPT_FACE_SOLID(let entity): return entity.super_eREPRESENTATION_ITEM
      case ._SWEPT_SURFACE(let entity): return entity.super_eREPRESENTATION_ITEM
      }
    }

    public var super_eSURFACE: eSURFACE? {
      switch self {
      case ._SWEPT_SURFACE(let entity): return entity.super_eSURFACE
      default: return nil
      }
    }

    public var super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM? {
      switch self {
      case ._SWEPT_AREA_SOLID(let entity): return entity.super_eGEOMETRIC_REPRESENTATION_ITEM
      case ._SWEPT_FACE_SOLID(let entity): return entity.super_eGEOMETRIC_REPRESENTATION_ITEM
      case ._SWEPT_SURFACE(let entity): return entity.super_eGEOMETRIC_REPRESENTATION_ITEM
      }
    }

    public var super_eSWEPT_FACE_SOLID: eSWEPT_FACE_SOLID? {
      switch self {
      case ._SWEPT_FACE_SOLID(let entity): return entity
      default: return nil
      }
    }


    //MARK: - ENTITY ATTRIBUTE REFERENCES
    /// attribute of SELECT type ``sSWEPT_SURFACE_OR_SOLID``
    /// - origin: ENTITY( ``eSWEPT_SURFACE`` )
    public var SWEPT_CURVE: eCURVE?  {
      switch self {
      case ._SWEPT_SURFACE(let entity): return entity.SWEPT_CURVE
      default: return nil
      }
    }

    /// attribute of SELECT type ``sSWEPT_SURFACE_OR_SOLID``
    /// - origin: ENTITY( ``eSWEPT_AREA_SOLID`` )
    /// - origin: ENTITY( ``eSWEPT_SURFACE`` )
    public var REFERENCE_SURFACE: eSURFACE?  {
      switch self {
      case ._SWEPT_AREA_SOLID(let entity): return entity.REFERENCE_SURFACE
      case ._SWEPT_SURFACE(let entity): return entity.REFERENCE_SURFACE
      default: return nil
      }
    }

    /// attribute of SELECT type ``sSWEPT_SURFACE_OR_SOLID``
    /// - origin: ENTITY( ``eSWEPT_FACE_SOLID`` )
    public var FIRST_TRIM_INTENT: nTRIM_INTENT?  {
      switch self {
      case ._SWEPT_FACE_SOLID(let entity): return entity.FIRST_TRIM_INTENT
      default: return nil
      }
    }

    /// attribute of SELECT type ``sSWEPT_SURFACE_OR_SOLID``
    /// - origin: ENTITY( ``eSWEPT_FACE_SOLID`` )
    public var SECOND_TRIM_INTENT: nTRIM_INTENT?  {
      switch self {
      case ._SWEPT_FACE_SOLID(let entity): return entity.SECOND_TRIM_INTENT
      default: return nil
      }
    }

    /// attribute of SELECT type ``sSWEPT_SURFACE_OR_SOLID``
    /// - origin: ENTITY( ``eSWEPT_FACE_SOLID`` )
    public var SWEPT_FACE: eFACE_SURFACE?  {
      switch self {
      case ._SWEPT_FACE_SOLID(let entity): return entity.SWEPT_FACE
      default: return nil
      }
    }

    /// attribute of SELECT type ``sSWEPT_SURFACE_OR_SOLID``
    /// - origin: ENTITY( ``eSWEPT_AREA_SOLID`` )
    public var END_PARAM: SDAI.REAL?  {
      switch self {
      case ._SWEPT_AREA_SOLID(let entity): return entity.END_PARAM
      default: return nil
      }
    }

    /// attribute of SELECT type ``sSWEPT_SURFACE_OR_SOLID``
    /// - origin: ENTITY( ``eSWEPT_SURFACE`` )
    public var AXIS_POSITION: eAXIS1_PLACEMENT?  {
      switch self {
      case ._SWEPT_SURFACE(let entity): return entity.AXIS_POSITION
      default: return nil
      }
    }

    /// attribute of SELECT type ``sSWEPT_SURFACE_OR_SOLID``
    /// - origin: ENTITY( ``eSWEPT_FACE_SOLID`` )
    public var DRAFTED_EDGES: (SDAI.LIST<SDAI.SET<eEDGE_CURVE>/*[1:nil]*/ >/*[2:nil]*/ )?  {
      switch self {
      case ._SWEPT_FACE_SOLID(let entity): return entity.DRAFTED_EDGES
      default: return nil
      }
    }

    /// attribute of SELECT type ``sSWEPT_SURFACE_OR_SOLID``
    /// - origin: ENTITY( ``eSWEPT_AREA_SOLID`` )
    /// - origin: ENTITY( ``eSWEPT_FACE_SOLID`` )
    /// - origin: ENTITY( ``eSWEPT_SURFACE`` )
    public var AXIS_LINE: eLINE?  {
      switch self {
      case ._SWEPT_AREA_SOLID(let entity): return entity.AXIS_LINE
      case ._SWEPT_FACE_SOLID(let entity): return entity.AXIS_LINE
      case ._SWEPT_SURFACE(let entity): return entity.AXIS_LINE
      }
    }

    /// attribute of SELECT type ``sSWEPT_SURFACE_OR_SOLID``
    /// - origin: ENTITY( ``eSWEPT_AREA_SOLID`` )
    /// - origin: ENTITY( ``eSWEPT_FACE_SOLID`` )
    public var ANGLE: tPLANE_ANGLE_MEASURE?  {
      switch self {
      case ._SWEPT_AREA_SOLID(let entity): return entity.ANGLE
      case ._SWEPT_FACE_SOLID(let entity): return entity.ANGLE
      default: return nil
      }
    }

    /// attribute of SELECT type ``sSWEPT_SURFACE_OR_SOLID``
    /// - origin: ENTITY( ``eSWEPT_AREA_SOLID`` )
    /// - origin: ENTITY( ``eSWEPT_FACE_SOLID`` )
    public var AXIS: eAXIS1_PLACEMENT?  {
      switch self {
      case ._SWEPT_AREA_SOLID(let entity): return entity.AXIS
      case ._SWEPT_FACE_SOLID(let entity): return entity.AXIS
      default: return nil
      }
    }

    /// attribute of SELECT type ``sSWEPT_SURFACE_OR_SOLID``
    /// - origin: ENTITY( ``eSWEPT_AREA_SOLID`` )
    public var DIRECTRIX: eCURVE?  {
      switch self {
      case ._SWEPT_AREA_SOLID(let entity): return entity.DIRECTRIX
      case ._SWEPT_SURFACE/*(let entity)*/: return nil // AMBIGUOUS ATTRIBUTE for eSWEPT_SURFACE
      default: return nil
      }
    }

    /// attribute of SELECT type ``sSWEPT_SURFACE_OR_SOLID``
    /// - origin: ENTITY( ``eSWEPT_FACE_SOLID`` )
    public var FIRST_OFFSET: tNON_NEGATIVE_LENGTH_MEASURE?  {
      switch self {
      case ._SWEPT_FACE_SOLID(let entity): return entity.FIRST_OFFSET
      default: return nil
      }
    }

    /// attribute of SELECT type ``sSWEPT_SURFACE_OR_SOLID``
    /// - origin: ENTITY( ``eSWEPT_FACE_SOLID`` )
    public var DRAFT_ANGLES: (SDAI.LIST<tPLANE_ANGLE_MEASURE>/*[2:nil]*/ )?  {
      switch self {
      case ._SWEPT_FACE_SOLID(let entity): return entity.DRAFT_ANGLES
      default: return nil
      }
    }

    /// attribute of SELECT type ``sSWEPT_SURFACE_OR_SOLID``
    /// - origin: ENTITY( ``eSWEPT_AREA_SOLID`` )
    /// - origin: ENTITY( ``eSWEPT_FACE_SOLID`` )
    public var EXTRUDED_DIRECTION: eDIRECTION?  {
      switch self {
      case ._SWEPT_AREA_SOLID(let entity): return entity.EXTRUDED_DIRECTION
      case ._SWEPT_FACE_SOLID(let entity): return entity.EXTRUDED_DIRECTION
      default: return nil
      }
    }

    /// attribute of SELECT type ``sSWEPT_SURFACE_OR_SOLID``
    /// - origin: ENTITY( ``eSWEPT_AREA_SOLID`` )
    public var SWEPT_AREA: eCURVE_BOUNDED_SURFACE?  {
      switch self {
      case ._SWEPT_AREA_SOLID(let entity): return entity.SWEPT_AREA
      default: return nil
      }
    }

    /// attribute of SELECT type ``sSWEPT_SURFACE_OR_SOLID``
    /// - origin: ENTITY( ``eSWEPT_AREA_SOLID`` )
    public var START_PARAM: SDAI.REAL?  {
      switch self {
      case ._SWEPT_AREA_SOLID(let entity): return entity.START_PARAM
      default: return nil
      }
    }

    /// attribute of SELECT type ``sSWEPT_SURFACE_OR_SOLID``
    /// - origin: ENTITY( ``eSWEPT_SURFACE`` )
    public var FIXED_REFERENCE: eDIRECTION?  {
      switch self {
      case ._SWEPT_SURFACE(let entity): return entity.FIXED_REFERENCE
      default: return nil
      }
    }

    /// attribute of SELECT type ``sSWEPT_SURFACE_OR_SOLID``
    /// - origin: ENTITY( ``eSWEPT_FACE_SOLID`` )
    public var SECOND_OFFSET: tNON_NEGATIVE_LENGTH_MEASURE?  {
      switch self {
      case ._SWEPT_FACE_SOLID(let entity): return entity.SECOND_OFFSET
      default: return nil
      }
    }

    /// attribute of SELECT type ``sSWEPT_SURFACE_OR_SOLID``
    /// - origin: ENTITY( ``eSWEPT_FACE_SOLID`` )
    public var DRAFT_ANGLE: tPLANE_ANGLE_MEASURE?  {
      switch self {
      case ._SWEPT_FACE_SOLID(let entity): return entity.DRAFT_ANGLE
      default: return nil
      }
    }

    /// attribute of SELECT type ``sSWEPT_SURFACE_OR_SOLID``
    /// - origin: ENTITY( ``eSWEPT_AREA_SOLID`` )
    /// - origin: ENTITY( ``eSWEPT_FACE_SOLID`` )
    /// - origin: ENTITY( ``eSWEPT_SURFACE`` )
    public var NAME: tLABEL?  {
      switch self {
      case ._SWEPT_AREA_SOLID(let entity): return entity.NAME
      case ._SWEPT_FACE_SOLID(let entity): return entity.NAME
      case ._SWEPT_SURFACE(let entity): return entity.NAME
      }
    }

    /// attribute of SELECT type ``sSWEPT_SURFACE_OR_SOLID``
    /// - origin: ENTITY( ``eSWEPT_AREA_SOLID`` )
    /// - origin: ENTITY( ``eSWEPT_FACE_SOLID`` )
    public var DEPTH: tPOSITIVE_LENGTH_MEASURE?  {
      switch self {
      case ._SWEPT_AREA_SOLID(let entity): return entity.DEPTH
      case ._SWEPT_FACE_SOLID(let entity): return entity.DEPTH
      default: return nil
      }
    }

    /// attribute of SELECT type ``sSWEPT_SURFACE_OR_SOLID``
    /// - origin: ENTITY( ``eSWEPT_SURFACE`` )
    public var EXTRUSION_AXIS: eVECTOR?  {
      switch self {
      case ._SWEPT_SURFACE(let entity): return entity.EXTRUSION_AXIS
      default: return nil
      }
    }

    /// attribute of SELECT type ``sSWEPT_SURFACE_OR_SOLID``
    /// - origin: ENTITY( ``eSWEPT_AREA_SOLID`` )
    /// - origin: ENTITY( ``eSWEPT_FACE_SOLID`` )
    /// - origin: ENTITY( ``eSWEPT_SURFACE`` )
    public var DIM: tDIMENSION_COUNT?  {
      switch self {
      case ._SWEPT_AREA_SOLID(let entity): return entity.DIM
      case ._SWEPT_FACE_SOLID(let entity): return entity.DIM
      case ._SWEPT_SURFACE(let entity): return entity.DIM
      }
    }


    //MARK: - SDAIValue
    public func isValueEqual<T: SDAIValue>(to rhs: T) -> Bool {
      switch self {
      case ._SWEPT_AREA_SOLID(let selection): return selection.value.isValueEqual(to: rhs)
      case ._SWEPT_FACE_SOLID(let selection): return selection.value.isValueEqual(to: rhs)
      case ._SWEPT_SURFACE(let selection): return selection.value.isValueEqual(to: rhs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?) -> Bool? {
      switch self {
      case ._SWEPT_AREA_SOLID(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._SWEPT_FACE_SOLID(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._SWEPT_SURFACE(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      }
    }

    public func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      switch self {
      case ._SWEPT_AREA_SOLID(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._SWEPT_FACE_SOLID(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._SWEPT_SURFACE(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      }
    }

    public func isValueEqual<T: SDAIValue>(to rhs: T, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      switch self {
      case ._SWEPT_AREA_SOLID(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._SWEPT_FACE_SOLID(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._SWEPT_SURFACE(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      switch self {
      case ._SWEPT_AREA_SOLID(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._SWEPT_FACE_SOLID(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._SWEPT_SURFACE(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      }
    }


    //MARK: SDAIGenericTypeBase
    public func copy() -> Self {
      switch self {
      case ._SWEPT_AREA_SOLID(let selection): return ._SWEPT_AREA_SOLID(selection.copy())
      case ._SWEPT_FACE_SOLID(let selection): return ._SWEPT_FACE_SOLID(selection.copy())
      case ._SWEPT_SURFACE(let selection): return ._SWEPT_SURFACE(selection.copy())
      }
    }

    //MARK: SDAIGenericType
    public var typeMembers: Set<SDAI.STRING> {
      var members: Set<SDAI.STRING> = [SDAI.STRING(Self.typeName)]
      switch self {
      case ._SWEPT_AREA_SOLID(let selection): members.formUnion(selection.typeMembers)
      case ._SWEPT_FACE_SOLID(let selection): members.formUnion(selection.typeMembers)
      case ._SWEPT_SURFACE(let selection): members.formUnion(selection.typeMembers)
      }
      return members
    }

    public var entityReference: SDAI.EntityReference? {
      switch self {
      case ._SWEPT_AREA_SOLID(let selection): return selection.entityReference
      case ._SWEPT_FACE_SOLID(let selection): return selection.entityReference
      case ._SWEPT_SURFACE(let selection): return selection.entityReference
      }
    }
    public var stringValue: SDAI.STRING? {
      switch self {
      case ._SWEPT_AREA_SOLID(let selection): return selection.stringValue
      case ._SWEPT_FACE_SOLID(let selection): return selection.stringValue
      case ._SWEPT_SURFACE(let selection): return selection.stringValue
      }
    }
    public var binaryValue: SDAI.BINARY? {
      switch self {
      case ._SWEPT_AREA_SOLID(let selection): return selection.binaryValue
      case ._SWEPT_FACE_SOLID(let selection): return selection.binaryValue
      case ._SWEPT_SURFACE(let selection): return selection.binaryValue
      }
    }
    public var logicalValue: SDAI.LOGICAL? {
      switch self {
      case ._SWEPT_AREA_SOLID(let selection): return selection.logicalValue
      case ._SWEPT_FACE_SOLID(let selection): return selection.logicalValue
      case ._SWEPT_SURFACE(let selection): return selection.logicalValue
      }
    }
    public var booleanValue: SDAI.BOOLEAN? {
      switch self {
      case ._SWEPT_AREA_SOLID(let selection): return selection.booleanValue
      case ._SWEPT_FACE_SOLID(let selection): return selection.booleanValue
      case ._SWEPT_SURFACE(let selection): return selection.booleanValue
      }
    }
    public var numberValue: SDAI.NUMBER? {
      switch self {
      case ._SWEPT_AREA_SOLID(let selection): return selection.numberValue
      case ._SWEPT_FACE_SOLID(let selection): return selection.numberValue
      case ._SWEPT_SURFACE(let selection): return selection.numberValue
      }
    }
    public var realValue: SDAI.REAL? {
      switch self {
      case ._SWEPT_AREA_SOLID(let selection): return selection.realValue
      case ._SWEPT_FACE_SOLID(let selection): return selection.realValue
      case ._SWEPT_SURFACE(let selection): return selection.realValue
      }
    }
    public var integerValue: SDAI.INTEGER? {
      switch self {
      case ._SWEPT_AREA_SOLID(let selection): return selection.integerValue
      case ._SWEPT_FACE_SOLID(let selection): return selection.integerValue
      case ._SWEPT_SURFACE(let selection): return selection.integerValue
      }
    }
    public var genericEnumValue: SDAI.GenericEnumValue? {
      switch self {
      case ._SWEPT_AREA_SOLID(let selection): return selection.genericEnumValue
      case ._SWEPT_FACE_SOLID(let selection): return selection.genericEnumValue
      case ._SWEPT_SURFACE(let selection): return selection.genericEnumValue
      }
    }
    public func arrayOptionalValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY_OPTIONAL<ELEM>? {
      switch self {
      case ._SWEPT_AREA_SOLID(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._SWEPT_FACE_SOLID(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._SWEPT_SURFACE(let selection): return selection.arrayOptionalValue(elementType:elementType)
      }
    }
    public func arrayValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY<ELEM>? {
      switch self {
      case ._SWEPT_AREA_SOLID(let selection): return selection.arrayValue(elementType:elementType)
      case ._SWEPT_FACE_SOLID(let selection): return selection.arrayValue(elementType:elementType)
      case ._SWEPT_SURFACE(let selection): return selection.arrayValue(elementType:elementType)
      }
    }
    public func listValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.LIST<ELEM>? {
      switch self {
      case ._SWEPT_AREA_SOLID(let selection): return selection.listValue(elementType:elementType)
      case ._SWEPT_FACE_SOLID(let selection): return selection.listValue(elementType:elementType)
      case ._SWEPT_SURFACE(let selection): return selection.listValue(elementType:elementType)
      }
    }
    public func bagValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.BAG<ELEM>? {
      switch self {
      case ._SWEPT_AREA_SOLID(let selection): return selection.bagValue(elementType:elementType)
      case ._SWEPT_FACE_SOLID(let selection): return selection.bagValue(elementType:elementType)
      case ._SWEPT_SURFACE(let selection): return selection.bagValue(elementType:elementType)
      }
    }
    public func setValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.SET<ELEM>? {
      switch self {
      case ._SWEPT_AREA_SOLID(let selection): return selection.setValue(elementType:elementType)
      case ._SWEPT_FACE_SOLID(let selection): return selection.setValue(elementType:elementType)
      case ._SWEPT_SURFACE(let selection): return selection.setValue(elementType:elementType)
      }
    }
    public func enumValue<ENUM:SDAIEnumerationType>(enumType:ENUM.Type) -> ENUM? {
      switch self {
      case ._SWEPT_AREA_SOLID(let selection): return selection.enumValue(enumType:enumType)
      case ._SWEPT_FACE_SOLID(let selection): return selection.enumValue(enumType:enumType)
      case ._SWEPT_SURFACE(let selection): return selection.enumValue(enumType:enumType)
      }
    }

    //MARK: SDAIUnderlyingType
    public typealias FundamentalType = Self
    public static var typeName: String = 
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SWEPT_SURFACE_OR_SOLID"
    public var asFundamentalType: FundamentalType { return self }

    //MARK: SDAIObservableAggregateElement
    public var entityReferences: AnySequence<SDAI.EntityReference> {
      switch self {
      case ._SWEPT_AREA_SOLID(let entity): return entity.entityReferences
      case ._SWEPT_FACE_SOLID(let entity): return entity.entityReferences
      case ._SWEPT_SURFACE(let entity): return entity.entityReferences
      }
    }

    public mutating func configure(with observer: SDAI.EntityReferenceObserver) {
      switch self {
      case ._SWEPT_AREA_SOLID(let entity): 
        entity.configure(with: observer)
        self = ._SWEPT_AREA_SOLID(entity)
      case ._SWEPT_FACE_SOLID(let entity): 
        entity.configure(with: observer)
        self = ._SWEPT_FACE_SOLID(entity)
      case ._SWEPT_SURFACE(let entity): 
        entity.configure(with: observer)
        self = ._SWEPT_SURFACE(entity)
      }
    }

    public mutating func teardownObserver() {
      switch self {
      case ._SWEPT_AREA_SOLID(let entity): 
        entity.teardownObserver()
        self = ._SWEPT_AREA_SOLID(entity)
      case ._SWEPT_FACE_SOLID(let entity): 
        entity.teardownObserver()
        self = ._SWEPT_FACE_SOLID(entity)
      case ._SWEPT_SURFACE(let entity): 
        entity.teardownObserver()
        self = ._SWEPT_SURFACE(entity)
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
      case ._SWEPT_AREA_SOLID(let selectValue): 
        result = eSWEPT_AREA_SOLID.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\SWEPT_AREA_SOLID")
      case ._SWEPT_FACE_SOLID(let selectValue): 
        result = eSWEPT_FACE_SOLID.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\SWEPT_FACE_SOLID")
      case ._SWEPT_SURFACE(let selectValue): 
        result = eSWEPT_SURFACE.validateWhereRules(instance:selectValue, prefix:prefix + "\\SWEPT_SURFACE")
      case nil: break
      }

      return result
    }

  }

}


//MARK: - SELECT TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sSWEPT_SURFACE_OR_SOLID__type: 
  SDAISelectType {

  //MARK: GROUP REFERENCES
  var super_eSWEPT_AREA_SOLID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSWEPT_AREA_SOLID? { get }
  var super_eSOLID_MODEL: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSOLID_MODEL? { get }
  var super_eSWEPT_SURFACE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSWEPT_SURFACE? { get }
  var super_eREPRESENTATION_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION_ITEM? { get }
  var super_eSURFACE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSURFACE? { get }
  var super_eGEOMETRIC_REPRESENTATION_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eGEOMETRIC_REPRESENTATION_ITEM? { get }
  var super_eSWEPT_FACE_SOLID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSWEPT_FACE_SOLID? { get }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var SWEPT_CURVE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCURVE?  { get }
  var REFERENCE_SURFACE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSURFACE?  { get }
  var FIRST_TRIM_INTENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.nTRIM_INTENT?  { get }
  var SECOND_TRIM_INTENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.nTRIM_INTENT?  { get }
  var SWEPT_FACE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eFACE_SURFACE?  { get }
  var END_PARAM: SDAI.REAL?  { get }
  var AXIS_POSITION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eAXIS1_PLACEMENT?  { get }
  var DRAFTED_EDGES: (SDAI.LIST<SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eEDGE_CURVE>/*[1:nil]*/ >
    /*[2:nil]*/ )?  { get }
  var AXIS_LINE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eLINE?  { get }
  var ANGLE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tPLANE_ANGLE_MEASURE?  { get }
  var AXIS: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eAXIS1_PLACEMENT?  { get }
  var DIRECTRIX: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCURVE?  { get }
  var FIRST_OFFSET: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tNON_NEGATIVE_LENGTH_MEASURE?  { get }
  var DRAFT_ANGLES: (SDAI.LIST<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tPLANE_ANGLE_MEASURE>/*[2:nil]*/ )?  { get }
  var EXTRUDED_DIRECTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDIRECTION?  { get }
  var SWEPT_AREA: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCURVE_BOUNDED_SURFACE?  { get }
  var START_PARAM: SDAI.REAL?  { get }
  var FIXED_REFERENCE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDIRECTION?  { get }
  var SECOND_OFFSET: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tNON_NEGATIVE_LENGTH_MEASURE?  { get }
  var DRAFT_ANGLE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tPLANE_ANGLE_MEASURE?  { get }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { get }
  var DEPTH: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tPOSITIVE_LENGTH_MEASURE?  { get }
  var EXTRUSION_AXIS: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eVECTOR?  { get }
  var DIM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tDIMENSION_COUNT?  { get }
}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sSWEPT_SURFACE_OR_SOLID__subtype: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sSWEPT_SURFACE_OR_SOLID__type, SDAIDefinedType
where Supertype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sSWEPT_SURFACE_OR_SOLID__type
{}

public extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sSWEPT_SURFACE_OR_SOLID__subtype {
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
  var super_eSWEPT_AREA_SOLID: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSWEPT_AREA_SOLID? { rep.super_eSWEPT_AREA_SOLID }
  var super_eSOLID_MODEL: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSOLID_MODEL? { rep.super_eSOLID_MODEL }
  var super_eSWEPT_SURFACE: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSWEPT_SURFACE? { rep.super_eSWEPT_SURFACE }
  var super_eREPRESENTATION_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION_ITEM? { rep.super_eREPRESENTATION_ITEM }
  var super_eSURFACE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSURFACE? { rep.super_eSURFACE }
  var super_eGEOMETRIC_REPRESENTATION_ITEM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eGEOMETRIC_REPRESENTATION_ITEM? { rep.super_eGEOMETRIC_REPRESENTATION_ITEM }
  var super_eSWEPT_FACE_SOLID: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSWEPT_FACE_SOLID? { rep.super_eSWEPT_FACE_SOLID }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var SWEPT_CURVE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCURVE?  { rep.SWEPT_CURVE }
  var REFERENCE_SURFACE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSURFACE?  { rep.REFERENCE_SURFACE }
  var FIRST_TRIM_INTENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.nTRIM_INTENT?  { rep.FIRST_TRIM_INTENT }
  var SECOND_TRIM_INTENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.nTRIM_INTENT?  { rep.SECOND_TRIM_INTENT }
  var SWEPT_FACE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eFACE_SURFACE?  { rep.SWEPT_FACE }
  var END_PARAM: SDAI.REAL?  { rep.END_PARAM }
  var AXIS_POSITION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eAXIS1_PLACEMENT?  { rep.AXIS_POSITION }
  var DRAFTED_EDGES: (SDAI.LIST<SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eEDGE_CURVE>/*[1:nil]*/ >
    /*[2:nil]*/ )?  { rep.DRAFTED_EDGES }
  var AXIS_LINE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eLINE?  { rep.AXIS_LINE }
  var ANGLE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tPLANE_ANGLE_MEASURE?  { rep.ANGLE }
  var AXIS: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eAXIS1_PLACEMENT?  { rep.AXIS }
  var DIRECTRIX: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCURVE?  { rep.DIRECTRIX }
  var FIRST_OFFSET: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tNON_NEGATIVE_LENGTH_MEASURE?  { rep.FIRST_OFFSET }
  var DRAFT_ANGLES: (SDAI.LIST<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tPLANE_ANGLE_MEASURE>/*[2:nil]*/ )?  { rep.DRAFT_ANGLES }
  var EXTRUDED_DIRECTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDIRECTION?  { rep.EXTRUDED_DIRECTION }
  var SWEPT_AREA: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCURVE_BOUNDED_SURFACE?  { rep.SWEPT_AREA }
  var START_PARAM: SDAI.REAL?  { rep.START_PARAM }
  var FIXED_REFERENCE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDIRECTION?  { rep.FIXED_REFERENCE }
  var SECOND_OFFSET: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tNON_NEGATIVE_LENGTH_MEASURE?  { rep.SECOND_OFFSET }
  var DRAFT_ANGLE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tPLANE_ANGLE_MEASURE?  { rep.DRAFT_ANGLE }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { rep.NAME }
  var DEPTH: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tPOSITIVE_LENGTH_MEASURE?  { rep.DEPTH }
  var EXTRUSION_AXIS: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eVECTOR?  { rep.EXTRUSION_AXIS }
  var DIM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tDIMENSION_COUNT?  { rep.DIM }
}

