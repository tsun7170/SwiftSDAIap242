/* file: tessellated_surface_item.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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
  TYPE tessellated_surface_item = SELECT
    ( tessellated_face (*ENTITY*),
     tessellated_shell (*ENTITY*),
     tessellated_solid (*ENTITY*),
     tessellated_surface_set (*ENTITY*) );
  END_TYPE; -- tessellated_surface_item (line:5726 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES FOR SELECT
/*
  tessellated_face (*ENTITY*):
  ATTR:  ctriangles: LIST [1 : ?] OF LIST [10 : 10] OF INTEGER
  ATTR:  normals: LIST [0 : ?] OF LIST [3 : 3] OF REAL *** Multiple Select Case Sources ***
  ATTR:  geometric_link: face_or_surface (AMBIGUOUS (SELECT LEVEL))
  ATTR:  coordinates: coordinates_list *** Multiple Select Case Sources ***
  ATTR:  triangle_strips: LIST [0 : ?] OF LIST [3 : ?] OF INTEGER *** Multiple Select Case Sources ***
  ATTR:  triangles: LIST [1 : ?] OF LIST [3 : 3] OF INTEGER *** Multiple Select Case Sources ***
  ATTR:  pnindex: (AMBIGUOUS (CASE LEVEL))
  ATTR:  pnmax: INTEGER *** Multiple Select Case Sources ***
  ATTR:  name: label
  ATTR:  triangle_fans: LIST [0 : ?] OF LIST [3 : ?] OF INTEGER *** Multiple Select Case Sources ***
  ATTR:  dim: dimension_count

  tessellated_shell (*ENTITY*):
  ATTR:  topological_link: connected_face_set
  ATTR:  items: SET [1 : ?] OF tessellated_structured_item *** Multiple Select Case Sources ***
  ATTR:  name: label
  ATTR:  dim: dimension_count

  tessellated_solid (*ENTITY*):
  ATTR:  geometric_link: manifold_solid_brep (AMBIGUOUS (SELECT LEVEL))
  ATTR:  items: SET [1 : ?] OF tessellated_structured_item *** Multiple Select Case Sources ***
  ATTR:  name: label
  ATTR:  dim: dimension_count

  tessellated_surface_set (*ENTITY*):
  ATTR:  normals: LIST [0 : ?] OF LIST [3 : 3] OF REAL *** Multiple Select Case Sources ***
  ATTR:  coordinates: coordinates_list *** Multiple Select Case Sources ***
  ATTR:  triangle_strips: LIST [0 : ?] OF LIST [3 : ?] OF INTEGER *** Multiple Select Case Sources ***
  ATTR:  triangles: LIST [1 : ?] OF LIST [3 : 3] OF INTEGER *** Multiple Select Case Sources ***
  ATTR:  pnindex: (AMBIGUOUS (CASE LEVEL))
  ATTR:  pnmax: INTEGER *** Multiple Select Case Sources ***
  ATTR:  name: label
  ATTR:  triangle_fans: LIST [0 : ?] OF LIST [3 : ?] OF INTEGER *** Multiple Select Case Sources ***
  ATTR:  dim: dimension_count

*/

/** SELECT type
- EXPRESS:
```express
  TYPE tessellated_surface_item = SELECT
    ( tessellated_face (*ENTITY*),
     tessellated_shell (*ENTITY*),
     tessellated_solid (*ENTITY*),
     tessellated_surface_set (*ENTITY*) );
  END_TYPE; -- tessellated_surface_item (line:5726 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public enum sTESSELLATED_SURFACE_ITEM : SDAIValue, AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sTESSELLATED_SURFACE_ITEM__type {

    /// SELECT case ``eTESSELLATED_FACE`` (ENTITY) in ``sTESSELLATED_SURFACE_ITEM``
    case _TESSELLATED_FACE(eTESSELLATED_FACE)	// (ENTITY)

    /// SELECT case ``eTESSELLATED_SHELL`` (ENTITY) in ``sTESSELLATED_SURFACE_ITEM``
    case _TESSELLATED_SHELL(eTESSELLATED_SHELL)	// (ENTITY)

    /// SELECT case ``eTESSELLATED_SOLID`` (ENTITY) in ``sTESSELLATED_SURFACE_ITEM``
    case _TESSELLATED_SOLID(eTESSELLATED_SOLID)	// (ENTITY)

    /// SELECT case ``eTESSELLATED_SURFACE_SET`` (ENTITY) in ``sTESSELLATED_SURFACE_ITEM``
    case _TESSELLATED_SURFACE_SET(eTESSELLATED_SURFACE_SET)	// (ENTITY)

    //MARK: - CONSTRUCTORS
    public init(fundamental: FundamentalType) { self = fundamental }

    public init?<T: SDAIUnderlyingType>(possiblyFrom underlyingType: T?){
      return nil
    }

    public init?(possiblyFrom complex: SDAI.ComplexEntity?) {
      guard let complex = complex else { return nil }

      if let base = complex.entityReference(eTESSELLATED_FACE.self) {self = ._TESSELLATED_FACE(base) }
      else if let base = complex.entityReference(eTESSELLATED_SHELL.self) {self = ._TESSELLATED_SHELL(base) }
      else if let base = complex.entityReference(eTESSELLATED_SOLID.self) {self = ._TESSELLATED_SOLID(base) }
      else if let base = complex.entityReference(eTESSELLATED_SURFACE_SET.self) {self = ._TESSELLATED_SURFACE_SET(base) }
      else { return nil }
    }

    public init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let select = generic else { return nil }

      if let fundamental = select as? Self {
        self.init(fundamental: fundamental)
      }
      else if let base = eTESSELLATED_FACE.convert(fromGeneric: select) {
        self = ._TESSELLATED_FACE(base)
      }
      else if let base = eTESSELLATED_SHELL.convert(fromGeneric: select) {
        self = ._TESSELLATED_SHELL(base)
      }
      else if let base = eTESSELLATED_SOLID.convert(fromGeneric: select) {
        self = ._TESSELLATED_SOLID(base)
      }
      else if let base = eTESSELLATED_SURFACE_SET.convert(fromGeneric: select) {
        self = ._TESSELLATED_SURFACE_SET(base)
      }
      else { return nil }
    }

    // InitializableByP21Parameter
    public static var bareTypeName: String = "TESSELLATED_SURFACE_ITEM"

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
    public var super_eTESSELLATED_ITEM: eTESSELLATED_ITEM? {
      switch self {
      case ._TESSELLATED_FACE(let entity): return entity.super_eTESSELLATED_ITEM
      case ._TESSELLATED_SHELL(let entity): return entity.super_eTESSELLATED_ITEM
      case ._TESSELLATED_SOLID(let entity): return entity.super_eTESSELLATED_ITEM
      case ._TESSELLATED_SURFACE_SET(let entity): return entity.super_eTESSELLATED_ITEM
      }
    }

    public var super_eTESSELLATED_FACE: eTESSELLATED_FACE? {
      switch self {
      case ._TESSELLATED_FACE(let entity): return entity
      default: return nil
      }
    }

    public var super_eTESSELLATED_SHELL: eTESSELLATED_SHELL? {
      switch self {
      case ._TESSELLATED_SHELL(let entity): return entity
      default: return nil
      }
    }

    public var super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM? {
      switch self {
      case ._TESSELLATED_FACE(let entity): return entity.super_eREPRESENTATION_ITEM
      case ._TESSELLATED_SHELL(let entity): return entity.super_eREPRESENTATION_ITEM
      case ._TESSELLATED_SOLID(let entity): return entity.super_eREPRESENTATION_ITEM
      case ._TESSELLATED_SURFACE_SET(let entity): return entity.super_eREPRESENTATION_ITEM
      }
    }

    public var super_eTESSELLATED_SOLID: eTESSELLATED_SOLID? {
      switch self {
      case ._TESSELLATED_SOLID(let entity): return entity
      default: return nil
      }
    }

    public var super_eTESSELLATED_SURFACE_SET: eTESSELLATED_SURFACE_SET? {
      switch self {
      case ._TESSELLATED_SURFACE_SET(let entity): return entity
      default: return nil
      }
    }

    public var super_eTESSELLATED_STRUCTURED_ITEM: eTESSELLATED_STRUCTURED_ITEM? {
      switch self {
      case ._TESSELLATED_FACE(let entity): return entity.super_eTESSELLATED_STRUCTURED_ITEM
      default: return nil
      }
    }

    public var super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM? {
      switch self {
      case ._TESSELLATED_FACE(let entity): return entity.super_eGEOMETRIC_REPRESENTATION_ITEM
      case ._TESSELLATED_SHELL(let entity): return entity.super_eGEOMETRIC_REPRESENTATION_ITEM
      case ._TESSELLATED_SOLID(let entity): return entity.super_eGEOMETRIC_REPRESENTATION_ITEM
      case ._TESSELLATED_SURFACE_SET(let entity): return entity.super_eGEOMETRIC_REPRESENTATION_ITEM
      }
    }


    //MARK: - ENTITY ATTRIBUTE REFERENCES
    /// attribute of SELECT type ``sTESSELLATED_SURFACE_ITEM``
    /// - origin: ENTITY( ``eTESSELLATED_FACE`` )
    public var CTRIANGLES: (SDAI.LIST<SDAI.LIST<SDAI.INTEGER>/*[10:10]*/ >/*[1:nil]*/ )?  {
      switch self {
      case ._TESSELLATED_FACE(let entity): return entity.CTRIANGLES
      default: return nil
      }
    }

    /// attribute of SELECT type ``sTESSELLATED_SURFACE_ITEM``
    /// - origin: ENTITY( ``eTESSELLATED_FACE`` )
    /// - origin: ENTITY( ``eTESSELLATED_SURFACE_SET`` )
    public var NORMALS: (SDAI.LIST<SDAI.LIST<SDAI.REAL>/*[3:3]*/ >/*[0:nil]*/ )?  {
      switch self {
      case ._TESSELLATED_FACE(let entity): return entity.NORMALS
      case ._TESSELLATED_SURFACE_SET(let entity): return entity.NORMALS
      default: return nil
      }
    }

    //MARK: var GEOMETRIC_LINK: (AMBIGUOUS)

    /// attribute of SELECT type ``sTESSELLATED_SURFACE_ITEM``
    /// - origin: ENTITY( ``eTESSELLATED_SHELL`` )
    public var TOPOLOGICAL_LINK: eCONNECTED_FACE_SET?  {
      switch self {
      case ._TESSELLATED_SHELL(let entity): return entity.TOPOLOGICAL_LINK
      default: return nil
      }
    }

    /// attribute of SELECT type ``sTESSELLATED_SURFACE_ITEM``
    /// - origin: ENTITY( ``eTESSELLATED_SHELL`` )
    /// - origin: ENTITY( ``eTESSELLATED_SOLID`` )
    public var ITEMS: (SDAI.SET<eTESSELLATED_STRUCTURED_ITEM>/*[1:nil]*/ )?  {
      switch self {
      case ._TESSELLATED_SHELL(let entity): return entity.ITEMS
      case ._TESSELLATED_SOLID(let entity): return entity.ITEMS
      default: return nil
      }
    }

    /// attribute of SELECT type ``sTESSELLATED_SURFACE_ITEM``
    /// - origin: ENTITY( ``eTESSELLATED_FACE`` )
    /// - origin: ENTITY( ``eTESSELLATED_SURFACE_SET`` )
    public var COORDINATES: eCOORDINATES_LIST?  {
      switch self {
      case ._TESSELLATED_FACE(let entity): return entity.COORDINATES
      case ._TESSELLATED_SURFACE_SET(let entity): return entity.COORDINATES
      default: return nil
      }
    }

    /// attribute of SELECT type ``sTESSELLATED_SURFACE_ITEM``
    /// - origin: ENTITY( ``eTESSELLATED_FACE`` )
    /// - origin: ENTITY( ``eTESSELLATED_SURFACE_SET`` )
    public var TRIANGLE_STRIPS: (SDAI.LIST<SDAI.LIST<SDAI.INTEGER>/*[3:nil]*/ >/*[0:nil]*/ )?  {
      switch self {
      case ._TESSELLATED_FACE(let entity): return entity.TRIANGLE_STRIPS
      case ._TESSELLATED_SURFACE_SET(let entity): return entity.TRIANGLE_STRIPS
      default: return nil
      }
    }

    /// attribute of SELECT type ``sTESSELLATED_SURFACE_ITEM``
    /// - origin: ENTITY( ``eTESSELLATED_FACE`` )
    /// - origin: ENTITY( ``eTESSELLATED_SURFACE_SET`` )
    public var TRIANGLES: (SDAI.LIST<SDAI.LIST<SDAI.INTEGER>/*[3:3]*/ >/*[1:nil]*/ )?  {
      switch self {
      case ._TESSELLATED_FACE(let entity): return entity.TRIANGLES
      case ._TESSELLATED_SURFACE_SET(let entity): return entity.TRIANGLES
      default: return nil
      }
    }

    /// attribute of SELECT type ``sTESSELLATED_SURFACE_ITEM``
    /// - origin: ENTITY( ``eTESSELLATED_FACE`` )
    /// - origin: ENTITY( ``eTESSELLATED_SURFACE_SET`` )
    public var PNMAX: SDAI.INTEGER?  {
      switch self {
      case ._TESSELLATED_FACE(let entity): return entity.PNMAX
      case ._TESSELLATED_SURFACE_SET(let entity): return entity.PNMAX
      default: return nil
      }
    }

    /// attribute of SELECT type ``sTESSELLATED_SURFACE_ITEM``
    /// - origin: ENTITY( ``eTESSELLATED_FACE`` )
    /// - origin: ENTITY( ``eTESSELLATED_SHELL`` )
    /// - origin: ENTITY( ``eTESSELLATED_SOLID`` )
    /// - origin: ENTITY( ``eTESSELLATED_SURFACE_SET`` )
    public var NAME: tLABEL?  {
      switch self {
      case ._TESSELLATED_FACE(let entity): return entity.NAME
      case ._TESSELLATED_SHELL(let entity): return entity.NAME
      case ._TESSELLATED_SOLID(let entity): return entity.NAME
      case ._TESSELLATED_SURFACE_SET(let entity): return entity.NAME
      }
    }

    /// attribute of SELECT type ``sTESSELLATED_SURFACE_ITEM``
    /// - origin: ENTITY( ``eTESSELLATED_FACE`` )
    /// - origin: ENTITY( ``eTESSELLATED_SURFACE_SET`` )
    public var TRIANGLE_FANS: (SDAI.LIST<SDAI.LIST<SDAI.INTEGER>/*[3:nil]*/ >/*[0:nil]*/ )?  {
      switch self {
      case ._TESSELLATED_FACE(let entity): return entity.TRIANGLE_FANS
      case ._TESSELLATED_SURFACE_SET(let entity): return entity.TRIANGLE_FANS
      default: return nil
      }
    }

    /// attribute of SELECT type ``sTESSELLATED_SURFACE_ITEM``
    /// - origin: ENTITY( ``eTESSELLATED_FACE`` )
    /// - origin: ENTITY( ``eTESSELLATED_SHELL`` )
    /// - origin: ENTITY( ``eTESSELLATED_SOLID`` )
    /// - origin: ENTITY( ``eTESSELLATED_SURFACE_SET`` )
    public var DIM: tDIMENSION_COUNT?  {
      switch self {
      case ._TESSELLATED_FACE(let entity): return entity.DIM
      case ._TESSELLATED_SHELL(let entity): return entity.DIM
      case ._TESSELLATED_SOLID(let entity): return entity.DIM
      case ._TESSELLATED_SURFACE_SET(let entity): return entity.DIM
      }
    }


    //MARK: - SDAIValue
    public func isValueEqual<T: SDAIValue>(to rhs: T) -> Bool {
      switch self {
      case ._TESSELLATED_FACE(let selection): return selection.value.isValueEqual(to: rhs)
      case ._TESSELLATED_SHELL(let selection): return selection.value.isValueEqual(to: rhs)
      case ._TESSELLATED_SOLID(let selection): return selection.value.isValueEqual(to: rhs)
      case ._TESSELLATED_SURFACE_SET(let selection): return selection.value.isValueEqual(to: rhs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?) -> Bool? {
      switch self {
      case ._TESSELLATED_FACE(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._TESSELLATED_SHELL(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._TESSELLATED_SOLID(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._TESSELLATED_SURFACE_SET(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      }
    }

    public func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      switch self {
      case ._TESSELLATED_FACE(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._TESSELLATED_SHELL(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._TESSELLATED_SOLID(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._TESSELLATED_SURFACE_SET(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      }
    }

    public func isValueEqual<T: SDAIValue>(to rhs: T, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      switch self {
      case ._TESSELLATED_FACE(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._TESSELLATED_SHELL(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._TESSELLATED_SOLID(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._TESSELLATED_SURFACE_SET(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      switch self {
      case ._TESSELLATED_FACE(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._TESSELLATED_SHELL(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._TESSELLATED_SOLID(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._TESSELLATED_SURFACE_SET(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      }
    }


    //MARK: SDAIGenericTypeBase
    public func copy() -> Self {
      switch self {
      case ._TESSELLATED_FACE(let selection): return ._TESSELLATED_FACE(selection.copy())
      case ._TESSELLATED_SHELL(let selection): return ._TESSELLATED_SHELL(selection.copy())
      case ._TESSELLATED_SOLID(let selection): return ._TESSELLATED_SOLID(selection.copy())
      case ._TESSELLATED_SURFACE_SET(let selection): return ._TESSELLATED_SURFACE_SET(selection.copy())
      }
    }

    //MARK: SDAIGenericType
    public var typeMembers: Set<SDAI.STRING> {
      var members: Set<SDAI.STRING> = [SDAI.STRING(Self.typeName)]
      switch self {
      case ._TESSELLATED_FACE(let selection): members.formUnion(selection.typeMembers)
      case ._TESSELLATED_SHELL(let selection): members.formUnion(selection.typeMembers)
      case ._TESSELLATED_SOLID(let selection): members.formUnion(selection.typeMembers)
      case ._TESSELLATED_SURFACE_SET(let selection): members.formUnion(selection.typeMembers)
      }
      return members
    }

    public var entityReference: SDAI.EntityReference? {
      switch self {
      case ._TESSELLATED_FACE(let selection): return selection.entityReference
      case ._TESSELLATED_SHELL(let selection): return selection.entityReference
      case ._TESSELLATED_SOLID(let selection): return selection.entityReference
      case ._TESSELLATED_SURFACE_SET(let selection): return selection.entityReference
      }
    }
    public var stringValue: SDAI.STRING? {
      switch self {
      case ._TESSELLATED_FACE(let selection): return selection.stringValue
      case ._TESSELLATED_SHELL(let selection): return selection.stringValue
      case ._TESSELLATED_SOLID(let selection): return selection.stringValue
      case ._TESSELLATED_SURFACE_SET(let selection): return selection.stringValue
      }
    }
    public var binaryValue: SDAI.BINARY? {
      switch self {
      case ._TESSELLATED_FACE(let selection): return selection.binaryValue
      case ._TESSELLATED_SHELL(let selection): return selection.binaryValue
      case ._TESSELLATED_SOLID(let selection): return selection.binaryValue
      case ._TESSELLATED_SURFACE_SET(let selection): return selection.binaryValue
      }
    }
    public var logicalValue: SDAI.LOGICAL? {
      switch self {
      case ._TESSELLATED_FACE(let selection): return selection.logicalValue
      case ._TESSELLATED_SHELL(let selection): return selection.logicalValue
      case ._TESSELLATED_SOLID(let selection): return selection.logicalValue
      case ._TESSELLATED_SURFACE_SET(let selection): return selection.logicalValue
      }
    }
    public var booleanValue: SDAI.BOOLEAN? {
      switch self {
      case ._TESSELLATED_FACE(let selection): return selection.booleanValue
      case ._TESSELLATED_SHELL(let selection): return selection.booleanValue
      case ._TESSELLATED_SOLID(let selection): return selection.booleanValue
      case ._TESSELLATED_SURFACE_SET(let selection): return selection.booleanValue
      }
    }
    public var numberValue: SDAI.NUMBER? {
      switch self {
      case ._TESSELLATED_FACE(let selection): return selection.numberValue
      case ._TESSELLATED_SHELL(let selection): return selection.numberValue
      case ._TESSELLATED_SOLID(let selection): return selection.numberValue
      case ._TESSELLATED_SURFACE_SET(let selection): return selection.numberValue
      }
    }
    public var realValue: SDAI.REAL? {
      switch self {
      case ._TESSELLATED_FACE(let selection): return selection.realValue
      case ._TESSELLATED_SHELL(let selection): return selection.realValue
      case ._TESSELLATED_SOLID(let selection): return selection.realValue
      case ._TESSELLATED_SURFACE_SET(let selection): return selection.realValue
      }
    }
    public var integerValue: SDAI.INTEGER? {
      switch self {
      case ._TESSELLATED_FACE(let selection): return selection.integerValue
      case ._TESSELLATED_SHELL(let selection): return selection.integerValue
      case ._TESSELLATED_SOLID(let selection): return selection.integerValue
      case ._TESSELLATED_SURFACE_SET(let selection): return selection.integerValue
      }
    }
    public var genericEnumValue: SDAI.GenericEnumValue? {
      switch self {
      case ._TESSELLATED_FACE(let selection): return selection.genericEnumValue
      case ._TESSELLATED_SHELL(let selection): return selection.genericEnumValue
      case ._TESSELLATED_SOLID(let selection): return selection.genericEnumValue
      case ._TESSELLATED_SURFACE_SET(let selection): return selection.genericEnumValue
      }
    }
    public func arrayOptionalValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY_OPTIONAL<ELEM>? {
      switch self {
      case ._TESSELLATED_FACE(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._TESSELLATED_SHELL(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._TESSELLATED_SOLID(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._TESSELLATED_SURFACE_SET(let selection): return selection.arrayOptionalValue(elementType:elementType)
      }
    }
    public func arrayValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY<ELEM>? {
      switch self {
      case ._TESSELLATED_FACE(let selection): return selection.arrayValue(elementType:elementType)
      case ._TESSELLATED_SHELL(let selection): return selection.arrayValue(elementType:elementType)
      case ._TESSELLATED_SOLID(let selection): return selection.arrayValue(elementType:elementType)
      case ._TESSELLATED_SURFACE_SET(let selection): return selection.arrayValue(elementType:elementType)
      }
    }
    public func listValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.LIST<ELEM>? {
      switch self {
      case ._TESSELLATED_FACE(let selection): return selection.listValue(elementType:elementType)
      case ._TESSELLATED_SHELL(let selection): return selection.listValue(elementType:elementType)
      case ._TESSELLATED_SOLID(let selection): return selection.listValue(elementType:elementType)
      case ._TESSELLATED_SURFACE_SET(let selection): return selection.listValue(elementType:elementType)
      }
    }
    public func bagValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.BAG<ELEM>? {
      switch self {
      case ._TESSELLATED_FACE(let selection): return selection.bagValue(elementType:elementType)
      case ._TESSELLATED_SHELL(let selection): return selection.bagValue(elementType:elementType)
      case ._TESSELLATED_SOLID(let selection): return selection.bagValue(elementType:elementType)
      case ._TESSELLATED_SURFACE_SET(let selection): return selection.bagValue(elementType:elementType)
      }
    }
    public func setValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.SET<ELEM>? {
      switch self {
      case ._TESSELLATED_FACE(let selection): return selection.setValue(elementType:elementType)
      case ._TESSELLATED_SHELL(let selection): return selection.setValue(elementType:elementType)
      case ._TESSELLATED_SOLID(let selection): return selection.setValue(elementType:elementType)
      case ._TESSELLATED_SURFACE_SET(let selection): return selection.setValue(elementType:elementType)
      }
    }
    public func enumValue<ENUM:SDAIEnumerationType>(enumType:ENUM.Type) -> ENUM? {
      switch self {
      case ._TESSELLATED_FACE(let selection): return selection.enumValue(enumType:enumType)
      case ._TESSELLATED_SHELL(let selection): return selection.enumValue(enumType:enumType)
      case ._TESSELLATED_SOLID(let selection): return selection.enumValue(enumType:enumType)
      case ._TESSELLATED_SURFACE_SET(let selection): return selection.enumValue(enumType:enumType)
      }
    }

    //MARK: SDAIUnderlyingType
    public typealias FundamentalType = Self
    public static var typeName: String = 
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.TESSELLATED_SURFACE_ITEM"
    public var asFundamentalType: FundamentalType { return self }

    //MARK: SDAIObservableAggregateElement
    public var entityReferences: AnySequence<SDAI.EntityReference> {
      switch self {
      case ._TESSELLATED_FACE(let entity): return entity.entityReferences
      case ._TESSELLATED_SHELL(let entity): return entity.entityReferences
      case ._TESSELLATED_SOLID(let entity): return entity.entityReferences
      case ._TESSELLATED_SURFACE_SET(let entity): return entity.entityReferences
      }
    }

    public mutating func configure(with observer: SDAI.EntityReferenceObserver) {
      switch self {
      case ._TESSELLATED_FACE(let entity): 
        entity.configure(with: observer)
        self = ._TESSELLATED_FACE(entity)
      case ._TESSELLATED_SHELL(let entity): 
        entity.configure(with: observer)
        self = ._TESSELLATED_SHELL(entity)
      case ._TESSELLATED_SOLID(let entity): 
        entity.configure(with: observer)
        self = ._TESSELLATED_SOLID(entity)
      case ._TESSELLATED_SURFACE_SET(let entity): 
        entity.configure(with: observer)
        self = ._TESSELLATED_SURFACE_SET(entity)
      }
    }

    public mutating func teardownObserver() {
      switch self {
      case ._TESSELLATED_FACE(let entity): 
        entity.teardownObserver()
        self = ._TESSELLATED_FACE(entity)
      case ._TESSELLATED_SHELL(let entity): 
        entity.teardownObserver()
        self = ._TESSELLATED_SHELL(entity)
      case ._TESSELLATED_SOLID(let entity): 
        entity.teardownObserver()
        self = ._TESSELLATED_SOLID(entity)
      case ._TESSELLATED_SURFACE_SET(let entity): 
        entity.teardownObserver()
        self = ._TESSELLATED_SURFACE_SET(entity)
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
      case ._TESSELLATED_FACE(let selectValue): 
        result = eTESSELLATED_FACE.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\TESSELLATED_FACE")
      case ._TESSELLATED_SHELL(let selectValue): 
        result = eTESSELLATED_SHELL.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\TESSELLATED_SHELL")
      case ._TESSELLATED_SOLID(let selectValue): 
        result = eTESSELLATED_SOLID.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\TESSELLATED_SOLID")
      case ._TESSELLATED_SURFACE_SET(let selectValue): 
        result = eTESSELLATED_SURFACE_SET.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\TESSELLATED_SURFACE_SET")
      case nil: break
      }

      return result
    }

  }

}


//MARK: - SELECT TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sTESSELLATED_SURFACE_ITEM__type: 
  SDAISelectType {

  //MARK: GROUP REFERENCES
  var super_eTESSELLATED_ITEM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eTESSELLATED_ITEM? { get }
  var super_eTESSELLATED_FACE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eTESSELLATED_FACE? { get }
  var super_eTESSELLATED_SHELL: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eTESSELLATED_SHELL? { get }
  var super_eREPRESENTATION_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION_ITEM? { get }
  var super_eTESSELLATED_SOLID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eTESSELLATED_SOLID? { get }
  var super_eTESSELLATED_SURFACE_SET: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eTESSELLATED_SURFACE_SET? { get }
  var super_eTESSELLATED_STRUCTURED_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eTESSELLATED_STRUCTURED_ITEM? { get }
  var super_eGEOMETRIC_REPRESENTATION_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eGEOMETRIC_REPRESENTATION_ITEM? { get }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var CTRIANGLES: (SDAI.LIST<SDAI.LIST<SDAI.INTEGER>/*[10:10]*/ >/*[1:nil]*/ )?  { get }
  var NORMALS: (SDAI.LIST<SDAI.LIST<SDAI.REAL>/*[3:3]*/ >/*[0:nil]*/ )?  { get }
  var TOPOLOGICAL_LINK: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCONNECTED_FACE_SET?  { get }
  var ITEMS: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eTESSELLATED_STRUCTURED_ITEM>/*[1:nil]*/ )?  { get }
  var COORDINATES: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCOORDINATES_LIST?  { get }
  var TRIANGLE_STRIPS: (SDAI.LIST<SDAI.LIST<SDAI.INTEGER>/*[3:nil]*/ >/*[0:nil]*/ )?  { get }
  var TRIANGLES: (SDAI.LIST<SDAI.LIST<SDAI.INTEGER>/*[3:3]*/ >/*[1:nil]*/ )?  { get }
  var PNMAX: SDAI.INTEGER?  { get }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { get }
  var TRIANGLE_FANS: (SDAI.LIST<SDAI.LIST<SDAI.INTEGER>/*[3:nil]*/ >/*[0:nil]*/ )?  { get }
  var DIM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tDIMENSION_COUNT?  { get }
}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sTESSELLATED_SURFACE_ITEM__subtype: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sTESSELLATED_SURFACE_ITEM__type, SDAIDefinedType
where Supertype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sTESSELLATED_SURFACE_ITEM__type
{}

public extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sTESSELLATED_SURFACE_ITEM__subtype {
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
  var super_eTESSELLATED_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eTESSELLATED_ITEM? { rep.super_eTESSELLATED_ITEM }
  var super_eTESSELLATED_FACE: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eTESSELLATED_FACE? { rep.super_eTESSELLATED_FACE }
  var super_eTESSELLATED_SHELL: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eTESSELLATED_SHELL? { rep.super_eTESSELLATED_SHELL }
  var super_eREPRESENTATION_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION_ITEM? { rep.super_eREPRESENTATION_ITEM }
  var super_eTESSELLATED_SOLID: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eTESSELLATED_SOLID? { rep.super_eTESSELLATED_SOLID }
  var super_eTESSELLATED_SURFACE_SET: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eTESSELLATED_SURFACE_SET? { rep.super_eTESSELLATED_SURFACE_SET }
  var super_eTESSELLATED_STRUCTURED_ITEM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eTESSELLATED_STRUCTURED_ITEM? { rep.super_eTESSELLATED_STRUCTURED_ITEM }
  var super_eGEOMETRIC_REPRESENTATION_ITEM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eGEOMETRIC_REPRESENTATION_ITEM? { rep.super_eGEOMETRIC_REPRESENTATION_ITEM }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var CTRIANGLES: (SDAI.LIST<SDAI.LIST<SDAI.INTEGER>/*[10:10]*/ >/*[1:nil]*/ )?  { rep.CTRIANGLES }
  var NORMALS: (SDAI.LIST<SDAI.LIST<SDAI.REAL>/*[3:3]*/ >/*[0:nil]*/ )?  { rep.NORMALS }
  var TOPOLOGICAL_LINK: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCONNECTED_FACE_SET?  { rep.TOPOLOGICAL_LINK }
  var ITEMS: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eTESSELLATED_STRUCTURED_ITEM>/*[1:nil]*/ )?  { rep.ITEMS }
  var COORDINATES: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCOORDINATES_LIST?  { rep.COORDINATES }
  var TRIANGLE_STRIPS: (SDAI.LIST<SDAI.LIST<SDAI.INTEGER>/*[3:nil]*/ >/*[0:nil]*/ )?  { rep.TRIANGLE_STRIPS }
  var TRIANGLES: (SDAI.LIST<SDAI.LIST<SDAI.INTEGER>/*[3:3]*/ >/*[1:nil]*/ )?  { rep.TRIANGLES }
  var PNMAX: SDAI.INTEGER?  { rep.PNMAX }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { rep.NAME }
  var TRIANGLE_FANS: (SDAI.LIST<SDAI.LIST<SDAI.INTEGER>/*[3:nil]*/ >/*[0:nil]*/ )?  { rep.TRIANGLE_FANS }
  var DIM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tDIMENSION_COUNT?  { rep.DIM }
}

