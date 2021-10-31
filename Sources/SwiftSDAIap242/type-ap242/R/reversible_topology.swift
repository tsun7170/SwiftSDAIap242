/* file: reversible_topology.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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
  TYPE reversible_topology = SELECT
    ( list_of_reversible_topology_item (*TYPE*),
     reversible_topology_item (*SELECT*),
     set_of_reversible_topology_item (*TYPE*) );
  END_TYPE; -- reversible_topology (line:5133 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES FOR SELECT
/*
  list_of_reversible_topology_item (*TYPE*): list_of_reversible_topology_item

  reversible_topology_item (*SELECT*):
  ATTR:  cfs_faces: SET [1 : ?] OF face
  ATTR:  bounds: SET [1 : ?] OF face_bound
  ATTR:  edge_element: edge
  ATTR:  orientation: BOOLEAN *** Multiple Select Case Sources ***
  ATTR:  permanent_aggregate_id: identifier
  ATTR:  pcurve_reference: pcurve
  ATTR:  path_element: path
  ATTR:  edge_list: LIST [1 : ?] OF UNIQUE oriented_edge
  ATTR:  parent_face: face
  ATTR:  open_shell_element: open_shell
  ATTR:  closed_shell_element: closed_shell
  ATTR:  bound: loop
  ATTR:  edge_end: vertex
  ATTR:  face_geometry: surface
  ATTR:  face_element: face
  ATTR:  edge_length: positive_length_measure
  ATTR:  edge_start: vertex
  ATTR:  edge_geometry: curve
  ATTR:  same_sense: BOOLEAN *** Multiple Select Case Sources ***
  ATTR:  permanent_id: identifier
  ATTR:  parent_edge: edge
  ATTR:  name: label

  set_of_reversible_topology_item (*TYPE*): set_of_reversible_topology_item

*/

/** SELECT type
- EXPRESS:
```express
  TYPE reversible_topology = SELECT
    ( list_of_reversible_topology_item (*TYPE*),
     reversible_topology_item (*SELECT*),
     set_of_reversible_topology_item (*TYPE*) );
  END_TYPE; -- reversible_topology (line:5133 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public enum sREVERSIBLE_TOPOLOGY : SDAIValue, AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sREVERSIBLE_TOPOLOGY__type {

    /// SELECT case ``tLIST_OF_REVERSIBLE_TOPOLOGY_ITEM`` (TYPE) in ``sREVERSIBLE_TOPOLOGY``
    case _LIST_OF_REVERSIBLE_TOPOLOGY_ITEM(tLIST_OF_REVERSIBLE_TOPOLOGY_ITEM)	// (TYPE)

    /// SELECT case ``sREVERSIBLE_TOPOLOGY_ITEM`` (SELECT) in ``sREVERSIBLE_TOPOLOGY``
    case _REVERSIBLE_TOPOLOGY_ITEM(sREVERSIBLE_TOPOLOGY_ITEM)	// (SELECT)

    /// SELECT case ``tSET_OF_REVERSIBLE_TOPOLOGY_ITEM`` (TYPE) in ``sREVERSIBLE_TOPOLOGY``
    case _SET_OF_REVERSIBLE_TOPOLOGY_ITEM(tSET_OF_REVERSIBLE_TOPOLOGY_ITEM)	// (TYPE)

    //MARK: - CONSTRUCTORS
    public init(fundamental: FundamentalType) { self = fundamental }

    public init?<T: SDAIUnderlyingType>(possiblyFrom underlyingType: T?){
      guard let underlyingType = underlyingType else { return nil }

      if let base = underlyingType as? tLIST_OF_REVERSIBLE_TOPOLOGY_ITEM {
        self = ._LIST_OF_REVERSIBLE_TOPOLOGY_ITEM(base)
      }
      else if let base = underlyingType as? sREVERSIBLE_TOPOLOGY_ITEM {
        self = ._REVERSIBLE_TOPOLOGY_ITEM(base)
      }
      else if let base = underlyingType as? tSET_OF_REVERSIBLE_TOPOLOGY_ITEM {
        self = ._SET_OF_REVERSIBLE_TOPOLOGY_ITEM(base)
      }
      else if let fundamental = underlyingType.asFundamentalType as? tLIST_OF_REVERSIBLE_TOPOLOGY_ITEM.FundamentalType {
        self = ._LIST_OF_REVERSIBLE_TOPOLOGY_ITEM( tLIST_OF_REVERSIBLE_TOPOLOGY_ITEM(fundamental: fundamental) )
      }
      else if let base = sREVERSIBLE_TOPOLOGY_ITEM(possiblyFrom: underlyingType) {
        self = ._REVERSIBLE_TOPOLOGY_ITEM(base)
      }
      else if let fundamental = underlyingType.asFundamentalType as? tSET_OF_REVERSIBLE_TOPOLOGY_ITEM.FundamentalType {
        self = ._SET_OF_REVERSIBLE_TOPOLOGY_ITEM( tSET_OF_REVERSIBLE_TOPOLOGY_ITEM(fundamental: fundamental) )
      }
      else { return nil }
    }

    public init?(possiblyFrom complex: SDAI.ComplexEntity?) {
      guard let complex = complex else { return nil }

      if let base = sREVERSIBLE_TOPOLOGY_ITEM(possiblyFrom: complex) {
        self = ._REVERSIBLE_TOPOLOGY_ITEM(base)
      }
      else { return nil }
    }

    public init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let select = generic else { return nil }

      if let fundamental = select as? Self {
        self.init(fundamental: fundamental)
      }
      else if let base = tLIST_OF_REVERSIBLE_TOPOLOGY_ITEM.convert(fromGeneric: select) {
        self = ._LIST_OF_REVERSIBLE_TOPOLOGY_ITEM(base)
      }
      else if let base = sREVERSIBLE_TOPOLOGY_ITEM.convert(fromGeneric: select) {
        self = ._REVERSIBLE_TOPOLOGY_ITEM(base)
      }
      else if let base = tSET_OF_REVERSIBLE_TOPOLOGY_ITEM.convert(fromGeneric: select) {
        self = ._SET_OF_REVERSIBLE_TOPOLOGY_ITEM(base)
      }
      else { return nil }
    }

    // InitializableByP21Parameter
    public static var bareTypeName: String = "REVERSIBLE_TOPOLOGY"

    public init?(p21typedParam: P21Decode.ExchangeStructure.TypedParameter, from exchangeStructure: P21Decode.ExchangeStructure) {
      guard let keyword = p21typedParam.keyword.asStandardKeyword else { exchangeStructure.error = "unexpected p21parameter(\(p21typedParam)) while resolving \(Self.bareTypeName) select value"; return nil }

      switch(keyword) {
      case tLIST_OF_REVERSIBLE_TOPOLOGY_ITEM.bareTypeName:
        guard let base = tLIST_OF_REVERSIBLE_TOPOLOGY_ITEM(p21typedParam: p21typedParam, from: exchangeStructure) else { exchangeStructure.add(errorContext: "while resolving \(Self.bareTypeName) select value"); return nil }
        self = ._LIST_OF_REVERSIBLE_TOPOLOGY_ITEM(base)

      case sREVERSIBLE_TOPOLOGY_ITEM.bareTypeName:
        guard let base = sREVERSIBLE_TOPOLOGY_ITEM(p21typedParam: p21typedParam, from: exchangeStructure) else { exchangeStructure.add(errorContext: "while resolving \(Self.bareTypeName) select value"); return nil }
        self = ._REVERSIBLE_TOPOLOGY_ITEM(base)

      case tSET_OF_REVERSIBLE_TOPOLOGY_ITEM.bareTypeName:
        guard let base = tSET_OF_REVERSIBLE_TOPOLOGY_ITEM(p21typedParam: p21typedParam, from: exchangeStructure) else { exchangeStructure.add(errorContext: "while resolving \(Self.bareTypeName) select value"); return nil }
        self = ._SET_OF_REVERSIBLE_TOPOLOGY_ITEM(base)

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
    public var super_tLIST_OF_REVERSIBLE_TOPOLOGY_ITEM: tLIST_OF_REVERSIBLE_TOPOLOGY_ITEM? {
      switch self {
      case ._LIST_OF_REVERSIBLE_TOPOLOGY_ITEM(let selectValue): return selectValue
      default: return nil
      }
    }

    public var super_sREVERSIBLE_TOPOLOGY_ITEM: sREVERSIBLE_TOPOLOGY_ITEM? {
      switch self {
      case ._REVERSIBLE_TOPOLOGY_ITEM(let selectValue): return selectValue
      default: return nil
      }
    }

    public var super_tSET_OF_REVERSIBLE_TOPOLOGY_ITEM: tSET_OF_REVERSIBLE_TOPOLOGY_ITEM? {
      switch self {
      case ._SET_OF_REVERSIBLE_TOPOLOGY_ITEM(let selectValue): return selectValue
      default: return nil
      }
    }

    //MARK: - ENTITY UNDERLYING TYPE REFERENCES
    public var super_ePATH: ePATH? {
      switch self {
      case ._REVERSIBLE_TOPOLOGY_ITEM(let select): return select.super_ePATH
      default: return nil
      }
    }

    public var super_eTOPOLOGICAL_REPRESENTATION_ITEM: eTOPOLOGICAL_REPRESENTATION_ITEM? {
      switch self {
      case ._REVERSIBLE_TOPOLOGY_ITEM(let select): return select.super_eTOPOLOGICAL_REPRESENTATION_ITEM
      default: return nil
      }
    }

    public var super_eCLOSED_SHELL: eCLOSED_SHELL? {
      switch self {
      case ._REVERSIBLE_TOPOLOGY_ITEM(let select): return select.super_eCLOSED_SHELL
      default: return nil
      }
    }

    public var super_eEDGE: eEDGE? {
      switch self {
      case ._REVERSIBLE_TOPOLOGY_ITEM(let select): return select.super_eEDGE
      default: return nil
      }
    }

    public var super_eOPEN_SHELL: eOPEN_SHELL? {
      switch self {
      case ._REVERSIBLE_TOPOLOGY_ITEM(let select): return select.super_eOPEN_SHELL
      default: return nil
      }
    }

    public var super_eCONNECTED_FACE_SET: eCONNECTED_FACE_SET? {
      switch self {
      case ._REVERSIBLE_TOPOLOGY_ITEM(let select): return select.super_eCONNECTED_FACE_SET
      default: return nil
      }
    }

    public var super_eFACE_BOUND: eFACE_BOUND? {
      switch self {
      case ._REVERSIBLE_TOPOLOGY_ITEM(let select): return select.super_eFACE_BOUND
      default: return nil
      }
    }

    public var super_eFACE: eFACE? {
      switch self {
      case ._REVERSIBLE_TOPOLOGY_ITEM(let select): return select.super_eFACE
      default: return nil
      }
    }

    public var super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM? {
      switch self {
      case ._REVERSIBLE_TOPOLOGY_ITEM(let select): return select.super_eREPRESENTATION_ITEM
      default: return nil
      }
    }


    //MARK: - ENTITY ATTRIBUTE REFERENCES
    /// attribute of SELECT type ``sREVERSIBLE_TOPOLOGY``
    /// - origin: SELECT( ``sREVERSIBLE_TOPOLOGY_ITEM`` )
    public var CFS_FACES: (SDAI.SET<eFACE>/*[1:nil]*/ )?  {
      switch self {
      case ._REVERSIBLE_TOPOLOGY_ITEM(let select): return select.CFS_FACES
      default: return nil
      }
    }

    /// attribute of SELECT type ``sREVERSIBLE_TOPOLOGY``
    /// - origin: SELECT( ``sREVERSIBLE_TOPOLOGY_ITEM`` )
    public var BOUNDS: (SDAI.SET<eFACE_BOUND>/*[1:nil]*/ )?  {
      switch self {
      case ._REVERSIBLE_TOPOLOGY_ITEM(let select): return select.BOUNDS
      default: return nil
      }
    }

    /// attribute of SELECT type ``sREVERSIBLE_TOPOLOGY``
    /// - origin: SELECT( ``sREVERSIBLE_TOPOLOGY_ITEM`` )
    public var EDGE_ELEMENT: eEDGE?  {
      switch self {
      case ._REVERSIBLE_TOPOLOGY_ITEM(let select): return select.EDGE_ELEMENT
      default: return nil
      }
    }

    /// attribute of SELECT type ``sREVERSIBLE_TOPOLOGY``
    /// - origin: SELECT( ``sREVERSIBLE_TOPOLOGY_ITEM`` )
    public var ORIENTATION: SDAI.BOOLEAN?  {
      switch self {
      case ._REVERSIBLE_TOPOLOGY_ITEM(let select): return select.ORIENTATION
      default: return nil
      }
    }

    /// attribute of SELECT type ``sREVERSIBLE_TOPOLOGY``
    /// - origin: SELECT( ``sREVERSIBLE_TOPOLOGY_ITEM`` )
    public var PERMANENT_AGGREGATE_ID: tIDENTIFIER?  {
      switch self {
      case ._REVERSIBLE_TOPOLOGY_ITEM(let select): return select.PERMANENT_AGGREGATE_ID
      default: return nil
      }
    }

    /// attribute of SELECT type ``sREVERSIBLE_TOPOLOGY``
    /// - origin: SELECT( ``sREVERSIBLE_TOPOLOGY_ITEM`` )
    public var PCURVE_REFERENCE: ePCURVE?  {
      switch self {
      case ._REVERSIBLE_TOPOLOGY_ITEM(let select): return select.PCURVE_REFERENCE
      default: return nil
      }
    }

    /// attribute of SELECT type ``sREVERSIBLE_TOPOLOGY``
    /// - origin: SELECT( ``sREVERSIBLE_TOPOLOGY_ITEM`` )
    public var PATH_ELEMENT: ePATH?  {
      switch self {
      case ._REVERSIBLE_TOPOLOGY_ITEM(let select): return select.PATH_ELEMENT
      default: return nil
      }
    }

    /// attribute of SELECT type ``sREVERSIBLE_TOPOLOGY``
    /// - origin: SELECT( ``sREVERSIBLE_TOPOLOGY_ITEM`` )
    public var EDGE_LIST: (SDAI.LIST_UNIQUE<eORIENTED_EDGE>/*[1:nil]*/ )?  {
      switch self {
      case ._REVERSIBLE_TOPOLOGY_ITEM(let select): return select.EDGE_LIST
      default: return nil
      }
    }

    /// attribute of SELECT type ``sREVERSIBLE_TOPOLOGY``
    /// - origin: SELECT( ``sREVERSIBLE_TOPOLOGY_ITEM`` )
    public var PARENT_FACE: eFACE?  {
      switch self {
      case ._REVERSIBLE_TOPOLOGY_ITEM(let select): return select.PARENT_FACE
      default: return nil
      }
    }

    /// attribute of SELECT type ``sREVERSIBLE_TOPOLOGY``
    /// - origin: SELECT( ``sREVERSIBLE_TOPOLOGY_ITEM`` )
    public var OPEN_SHELL_ELEMENT: eOPEN_SHELL?  {
      switch self {
      case ._REVERSIBLE_TOPOLOGY_ITEM(let select): return select.OPEN_SHELL_ELEMENT
      default: return nil
      }
    }

    /// attribute of SELECT type ``sREVERSIBLE_TOPOLOGY``
    /// - origin: SELECT( ``sREVERSIBLE_TOPOLOGY_ITEM`` )
    public var CLOSED_SHELL_ELEMENT: eCLOSED_SHELL?  {
      switch self {
      case ._REVERSIBLE_TOPOLOGY_ITEM(let select): return select.CLOSED_SHELL_ELEMENT
      default: return nil
      }
    }

    /// attribute of SELECT type ``sREVERSIBLE_TOPOLOGY``
    /// - origin: SELECT( ``sREVERSIBLE_TOPOLOGY_ITEM`` )
    public var BOUND: eLOOP?  {
      switch self {
      case ._REVERSIBLE_TOPOLOGY_ITEM(let select): return select.BOUND
      default: return nil
      }
    }

    /// attribute of SELECT type ``sREVERSIBLE_TOPOLOGY``
    /// - origin: SELECT( ``sREVERSIBLE_TOPOLOGY_ITEM`` )
    public var EDGE_END: eVERTEX?  {
      switch self {
      case ._REVERSIBLE_TOPOLOGY_ITEM(let select): return select.EDGE_END
      default: return nil
      }
    }

    /// attribute of SELECT type ``sREVERSIBLE_TOPOLOGY``
    /// - origin: SELECT( ``sREVERSIBLE_TOPOLOGY_ITEM`` )
    public var FACE_GEOMETRY: eSURFACE?  {
      switch self {
      case ._REVERSIBLE_TOPOLOGY_ITEM(let select): return select.FACE_GEOMETRY
      default: return nil
      }
    }

    /// attribute of SELECT type ``sREVERSIBLE_TOPOLOGY``
    /// - origin: SELECT( ``sREVERSIBLE_TOPOLOGY_ITEM`` )
    public var FACE_ELEMENT: eFACE?  {
      switch self {
      case ._REVERSIBLE_TOPOLOGY_ITEM(let select): return select.FACE_ELEMENT
      default: return nil
      }
    }

    /// attribute of SELECT type ``sREVERSIBLE_TOPOLOGY``
    /// - origin: SELECT( ``sREVERSIBLE_TOPOLOGY_ITEM`` )
    public var EDGE_LENGTH: tPOSITIVE_LENGTH_MEASURE?  {
      switch self {
      case ._REVERSIBLE_TOPOLOGY_ITEM(let select): return select.EDGE_LENGTH
      default: return nil
      }
    }

    /// attribute of SELECT type ``sREVERSIBLE_TOPOLOGY``
    /// - origin: SELECT( ``sREVERSIBLE_TOPOLOGY_ITEM`` )
    public var EDGE_START: eVERTEX?  {
      switch self {
      case ._REVERSIBLE_TOPOLOGY_ITEM(let select): return select.EDGE_START
      default: return nil
      }
    }

    /// attribute of SELECT type ``sREVERSIBLE_TOPOLOGY``
    /// - origin: SELECT( ``sREVERSIBLE_TOPOLOGY_ITEM`` )
    public var EDGE_GEOMETRY: eCURVE?  {
      switch self {
      case ._REVERSIBLE_TOPOLOGY_ITEM(let select): return select.EDGE_GEOMETRY
      default: return nil
      }
    }

    /// attribute of SELECT type ``sREVERSIBLE_TOPOLOGY``
    /// - origin: SELECT( ``sREVERSIBLE_TOPOLOGY_ITEM`` )
    public var SAME_SENSE: SDAI.BOOLEAN?  {
      switch self {
      case ._REVERSIBLE_TOPOLOGY_ITEM(let select): return select.SAME_SENSE
      default: return nil
      }
    }

    /// attribute of SELECT type ``sREVERSIBLE_TOPOLOGY``
    /// - origin: SELECT( ``sREVERSIBLE_TOPOLOGY_ITEM`` )
    public var PERMANENT_ID: tIDENTIFIER?  {
      switch self {
      case ._REVERSIBLE_TOPOLOGY_ITEM(let select): return select.PERMANENT_ID
      default: return nil
      }
    }

    /// attribute of SELECT type ``sREVERSIBLE_TOPOLOGY``
    /// - origin: SELECT( ``sREVERSIBLE_TOPOLOGY_ITEM`` )
    public var PARENT_EDGE: eEDGE?  {
      switch self {
      case ._REVERSIBLE_TOPOLOGY_ITEM(let select): return select.PARENT_EDGE
      default: return nil
      }
    }

    /// attribute of SELECT type ``sREVERSIBLE_TOPOLOGY``
    /// - origin: SELECT( ``sREVERSIBLE_TOPOLOGY_ITEM`` )
    public var NAME: tLABEL?  {
      switch self {
      case ._REVERSIBLE_TOPOLOGY_ITEM(let select): return select.NAME
      default: return nil
      }
    }


    //MARK: - SDAIValue
    public func isValueEqual<T: SDAIValue>(to rhs: T) -> Bool {
      switch self {
      case ._LIST_OF_REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.value.isValueEqual(to: rhs)
      case ._REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.value.isValueEqual(to: rhs)
      case ._SET_OF_REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.value.isValueEqual(to: rhs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?) -> Bool? {
      switch self {
      case ._LIST_OF_REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._SET_OF_REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      }
    }

    public func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      switch self {
      case ._LIST_OF_REVERSIBLE_TOPOLOGY_ITEM(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._REVERSIBLE_TOPOLOGY_ITEM(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._SET_OF_REVERSIBLE_TOPOLOGY_ITEM(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      }
    }

    public func isValueEqual<T: SDAIValue>(to rhs: T, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      switch self {
      case ._LIST_OF_REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._SET_OF_REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      switch self {
      case ._LIST_OF_REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._SET_OF_REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      }
    }


    //MARK: SDAIGenericTypeBase
    public func copy() -> Self {
      switch self {
      case ._LIST_OF_REVERSIBLE_TOPOLOGY_ITEM(let selection): return ._LIST_OF_REVERSIBLE_TOPOLOGY_ITEM(selection.copy())
      case ._REVERSIBLE_TOPOLOGY_ITEM(let selection): return ._REVERSIBLE_TOPOLOGY_ITEM(selection.copy())
      case ._SET_OF_REVERSIBLE_TOPOLOGY_ITEM(let selection): return ._SET_OF_REVERSIBLE_TOPOLOGY_ITEM(selection.copy())
      }
    }

    //MARK: SDAIGenericType
    public var typeMembers: Set<SDAI.STRING> {
      var members: Set<SDAI.STRING> = [SDAI.STRING(Self.typeName)]
      switch self {
      case ._LIST_OF_REVERSIBLE_TOPOLOGY_ITEM(let selection): members.formUnion(selection.typeMembers)
      case ._REVERSIBLE_TOPOLOGY_ITEM(let selection): members.formUnion(selection.typeMembers)
      case ._SET_OF_REVERSIBLE_TOPOLOGY_ITEM(let selection): members.formUnion(selection.typeMembers)
      }
      return members
    }

    public var entityReference: SDAI.EntityReference? {
      switch self {
      case ._LIST_OF_REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.entityReference
      case ._REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.entityReference
      case ._SET_OF_REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.entityReference
      }
    }
    public var stringValue: SDAI.STRING? {
      switch self {
      case ._LIST_OF_REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.stringValue
      case ._REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.stringValue
      case ._SET_OF_REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.stringValue
      }
    }
    public var binaryValue: SDAI.BINARY? {
      switch self {
      case ._LIST_OF_REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.binaryValue
      case ._REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.binaryValue
      case ._SET_OF_REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.binaryValue
      }
    }
    public var logicalValue: SDAI.LOGICAL? {
      switch self {
      case ._LIST_OF_REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.logicalValue
      case ._REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.logicalValue
      case ._SET_OF_REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.logicalValue
      }
    }
    public var booleanValue: SDAI.BOOLEAN? {
      switch self {
      case ._LIST_OF_REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.booleanValue
      case ._REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.booleanValue
      case ._SET_OF_REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.booleanValue
      }
    }
    public var numberValue: SDAI.NUMBER? {
      switch self {
      case ._LIST_OF_REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.numberValue
      case ._REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.numberValue
      case ._SET_OF_REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.numberValue
      }
    }
    public var realValue: SDAI.REAL? {
      switch self {
      case ._LIST_OF_REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.realValue
      case ._REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.realValue
      case ._SET_OF_REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.realValue
      }
    }
    public var integerValue: SDAI.INTEGER? {
      switch self {
      case ._LIST_OF_REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.integerValue
      case ._REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.integerValue
      case ._SET_OF_REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.integerValue
      }
    }
    public var genericEnumValue: SDAI.GenericEnumValue? {
      switch self {
      case ._LIST_OF_REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.genericEnumValue
      case ._REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.genericEnumValue
      case ._SET_OF_REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.genericEnumValue
      }
    }
    public func arrayOptionalValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY_OPTIONAL<ELEM>? {
      switch self {
      case ._LIST_OF_REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._SET_OF_REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.arrayOptionalValue(elementType:elementType)
      }
    }
    public func arrayValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY<ELEM>? {
      switch self {
      case ._LIST_OF_REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.arrayValue(elementType:elementType)
      case ._REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.arrayValue(elementType:elementType)
      case ._SET_OF_REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.arrayValue(elementType:elementType)
      }
    }
    public func listValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.LIST<ELEM>? {
      switch self {
      case ._LIST_OF_REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.listValue(elementType:elementType)
      case ._REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.listValue(elementType:elementType)
      case ._SET_OF_REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.listValue(elementType:elementType)
      }
    }
    public func bagValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.BAG<ELEM>? {
      switch self {
      case ._LIST_OF_REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.bagValue(elementType:elementType)
      case ._REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.bagValue(elementType:elementType)
      case ._SET_OF_REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.bagValue(elementType:elementType)
      }
    }
    public func setValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.SET<ELEM>? {
      switch self {
      case ._LIST_OF_REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.setValue(elementType:elementType)
      case ._REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.setValue(elementType:elementType)
      case ._SET_OF_REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.setValue(elementType:elementType)
      }
    }
    public func enumValue<ENUM:SDAIEnumerationType>(enumType:ENUM.Type) -> ENUM? {
      switch self {
      case ._LIST_OF_REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.enumValue(enumType:enumType)
      case ._REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.enumValue(enumType:enumType)
      case ._SET_OF_REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.enumValue(enumType:enumType)
      }
    }

    //MARK: SDAIUnderlyingType
    public typealias FundamentalType = Self
    public static var typeName: String = 
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.REVERSIBLE_TOPOLOGY"
    public var asFundamentalType: FundamentalType { return self }

    //MARK: SDAIObservableAggregateElement
    public var entityReferences: AnySequence<SDAI.EntityReference> {
      switch self {
      case ._LIST_OF_REVERSIBLE_TOPOLOGY_ITEM(let observable): return observable.entityReferences
      case ._REVERSIBLE_TOPOLOGY_ITEM(let select): return select.entityReferences
      case ._SET_OF_REVERSIBLE_TOPOLOGY_ITEM(let observable): return observable.entityReferences
      }
    }

    public mutating func configure(with observer: SDAI.EntityReferenceObserver) {
      switch self {
      case ._LIST_OF_REVERSIBLE_TOPOLOGY_ITEM(var observable): 
        observable.configure(with: observer)
        self = ._LIST_OF_REVERSIBLE_TOPOLOGY_ITEM(observable)
      case ._REVERSIBLE_TOPOLOGY_ITEM(var select): 
        select.configure(with: observer)
        self = ._REVERSIBLE_TOPOLOGY_ITEM(select)
      case ._SET_OF_REVERSIBLE_TOPOLOGY_ITEM(var observable): 
        observable.configure(with: observer)
        self = ._SET_OF_REVERSIBLE_TOPOLOGY_ITEM(observable)
      }
    }

    public mutating func teardownObserver() {
      switch self {
      case ._LIST_OF_REVERSIBLE_TOPOLOGY_ITEM(var observable): 
        observable.teardownObserver()
        self = ._LIST_OF_REVERSIBLE_TOPOLOGY_ITEM(observable)
      case ._REVERSIBLE_TOPOLOGY_ITEM(var select): 
        select.teardownObserver()
        self = ._REVERSIBLE_TOPOLOGY_ITEM(select)
      case ._SET_OF_REVERSIBLE_TOPOLOGY_ITEM(var observable): 
        observable.teardownObserver()
        self = ._SET_OF_REVERSIBLE_TOPOLOGY_ITEM(observable)
      }
    }

    //MARK: SDAIAggregationBehavior
    public var aggregationHiBound: Int? {
      switch self {
      case ._LIST_OF_REVERSIBLE_TOPOLOGY_ITEM(let aggregate): return aggregate.hiBound
      case ._REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.aggregationHiBound
      case ._SET_OF_REVERSIBLE_TOPOLOGY_ITEM(let aggregate): return aggregate.hiBound
      }
    }
    public var aggregationHiIndex: Int? {
      switch self {
      case ._LIST_OF_REVERSIBLE_TOPOLOGY_ITEM(let aggregate): return aggregate.hiIndex
      case ._REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.aggregationHiIndex
      case ._SET_OF_REVERSIBLE_TOPOLOGY_ITEM(let aggregate): return aggregate.hiIndex
      }
    }
    public var aggregationLoBound: Int? {
      switch self {
      case ._LIST_OF_REVERSIBLE_TOPOLOGY_ITEM(let aggregate): return aggregate.loBound
      case ._REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.aggregationLoBound
      case ._SET_OF_REVERSIBLE_TOPOLOGY_ITEM(let aggregate): return aggregate.loBound
      }
    }
    public var aggregationLoIndex: Int? {
      switch self {
      case ._LIST_OF_REVERSIBLE_TOPOLOGY_ITEM(let aggregate): return aggregate.loIndex
      case ._REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.aggregationLoIndex
      case ._SET_OF_REVERSIBLE_TOPOLOGY_ITEM(let aggregate): return aggregate.loIndex
      }
    }
    public var aggregationSize: Int? {
      switch self {
      case ._LIST_OF_REVERSIBLE_TOPOLOGY_ITEM(let aggregate): return aggregate.size
      case ._REVERSIBLE_TOPOLOGY_ITEM(let selection): return selection.aggregationSize
      case ._SET_OF_REVERSIBLE_TOPOLOGY_ITEM(let aggregate): return aggregate.size
      }
    }

    //MARK: WHERE RULE VALIDATION (SELECT TYPE)
    public static func validateWhereRules(instance:Self?, prefix:SDAI.WhereLabel) -> [SDAI.WhereLabel:SDAI.LOGICAL] {
      var result: [SDAI.WhereLabel:SDAI.LOGICAL] = [:]
      switch instance {
      case ._LIST_OF_REVERSIBLE_TOPOLOGY_ITEM(let selectValue): 
        result = tLIST_OF_REVERSIBLE_TOPOLOGY_ITEM.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\LIST_OF_REVERSIBLE_TOPOLOGY_ITEM")
      case ._REVERSIBLE_TOPOLOGY_ITEM(let selectValue): 
        result = sREVERSIBLE_TOPOLOGY_ITEM.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\REVERSIBLE_TOPOLOGY_ITEM")
      case ._SET_OF_REVERSIBLE_TOPOLOGY_ITEM(let selectValue): 
        result = tSET_OF_REVERSIBLE_TOPOLOGY_ITEM.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\SET_OF_REVERSIBLE_TOPOLOGY_ITEM")
      case nil: break
      }

      return result
    }

  }

}


//MARK: - SELECT TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sREVERSIBLE_TOPOLOGY__type: SDAISelectType {

  //MARK: GROUP REFERENCES
  var super_tLIST_OF_REVERSIBLE_TOPOLOGY_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLIST_OF_REVERSIBLE_TOPOLOGY_ITEM? { get }
  var super_sREVERSIBLE_TOPOLOGY_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sREVERSIBLE_TOPOLOGY_ITEM? { get }
  var super_tSET_OF_REVERSIBLE_TOPOLOGY_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tSET_OF_REVERSIBLE_TOPOLOGY_ITEM? { get }
  var super_ePATH: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePATH? { get }
  var super_eTOPOLOGICAL_REPRESENTATION_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eTOPOLOGICAL_REPRESENTATION_ITEM? { get }
  var super_eCLOSED_SHELL: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCLOSED_SHELL? { get }
  var super_eEDGE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eEDGE? { get }
  var super_eOPEN_SHELL: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eOPEN_SHELL? { get }
  var super_eCONNECTED_FACE_SET: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCONNECTED_FACE_SET? { get }
  var super_eFACE_BOUND: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eFACE_BOUND? { get }
  var super_eFACE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eFACE? { get }
  var super_eREPRESENTATION_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION_ITEM? { get }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var CFS_FACES: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eFACE>/*[1:nil]*/ )?  { get }
  var BOUNDS: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eFACE_BOUND>/*[1:nil]*/ )?  { get }
  var EDGE_ELEMENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eEDGE?  { get }
  var ORIENTATION: SDAI.BOOLEAN?  { get }
  var PERMANENT_AGGREGATE_ID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER?  { get }
  var PCURVE_REFERENCE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePCURVE?  { get }
  var PATH_ELEMENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePATH?  { get }
  var EDGE_LIST: (SDAI.LIST_UNIQUE<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eORIENTED_EDGE>/*[1:nil]*/ )?  { get }
  var PARENT_FACE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eFACE?  { get }
  var OPEN_SHELL_ELEMENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eOPEN_SHELL?  { get }
  var CLOSED_SHELL_ELEMENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCLOSED_SHELL?  { get }
  var BOUND: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eLOOP?  { get }
  var EDGE_END: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eVERTEX?  { get }
  var FACE_GEOMETRY: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSURFACE?  { get }
  var FACE_ELEMENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eFACE?  { get }
  var EDGE_LENGTH: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tPOSITIVE_LENGTH_MEASURE?  { get }
  var EDGE_START: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eVERTEX?  { get }
  var EDGE_GEOMETRY: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCURVE?  { get }
  var SAME_SENSE: SDAI.BOOLEAN?  { get }
  var PERMANENT_ID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER?  { get }
  var PARENT_EDGE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eEDGE?  { get }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { get }
}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sREVERSIBLE_TOPOLOGY__subtype: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sREVERSIBLE_TOPOLOGY__type, SDAIDefinedType
where Supertype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sREVERSIBLE_TOPOLOGY__type
{}

public extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sREVERSIBLE_TOPOLOGY__subtype {
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
  var super_tLIST_OF_REVERSIBLE_TOPOLOGY_ITEM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLIST_OF_REVERSIBLE_TOPOLOGY_ITEM? { rep.super_tLIST_OF_REVERSIBLE_TOPOLOGY_ITEM }
  var super_sREVERSIBLE_TOPOLOGY_ITEM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sREVERSIBLE_TOPOLOGY_ITEM? { rep.super_sREVERSIBLE_TOPOLOGY_ITEM }
  var super_tSET_OF_REVERSIBLE_TOPOLOGY_ITEM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tSET_OF_REVERSIBLE_TOPOLOGY_ITEM? { rep.super_tSET_OF_REVERSIBLE_TOPOLOGY_ITEM }
  var super_ePATH: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePATH? { rep.super_ePATH }
  var super_eTOPOLOGICAL_REPRESENTATION_ITEM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eTOPOLOGICAL_REPRESENTATION_ITEM? { rep.super_eTOPOLOGICAL_REPRESENTATION_ITEM }
  var super_eCLOSED_SHELL: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCLOSED_SHELL? { rep.super_eCLOSED_SHELL }
  var super_eEDGE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eEDGE? { rep.super_eEDGE }
  var super_eOPEN_SHELL: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eOPEN_SHELL? { rep.super_eOPEN_SHELL }
  var super_eCONNECTED_FACE_SET: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCONNECTED_FACE_SET? { rep.super_eCONNECTED_FACE_SET }
  var super_eFACE_BOUND: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eFACE_BOUND? { rep.super_eFACE_BOUND }
  var super_eFACE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eFACE? { rep.super_eFACE }
  var super_eREPRESENTATION_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION_ITEM? { rep.super_eREPRESENTATION_ITEM }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var CFS_FACES: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eFACE>/*[1:nil]*/ )?  { rep.CFS_FACES }
  var BOUNDS: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eFACE_BOUND>/*[1:nil]*/ )?  { rep.BOUNDS }
  var EDGE_ELEMENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eEDGE?  { rep.EDGE_ELEMENT }
  var ORIENTATION: SDAI.BOOLEAN?  { rep.ORIENTATION }
  var PERMANENT_AGGREGATE_ID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER?  { rep.PERMANENT_AGGREGATE_ID }
  var PCURVE_REFERENCE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePCURVE?  { rep.PCURVE_REFERENCE }
  var PATH_ELEMENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePATH?  { rep.PATH_ELEMENT }
  var EDGE_LIST: (SDAI.LIST_UNIQUE<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eORIENTED_EDGE>/*[1:nil]*/ )?  { rep.EDGE_LIST }
  var PARENT_FACE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eFACE?  { rep.PARENT_FACE }
  var OPEN_SHELL_ELEMENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eOPEN_SHELL?  { rep.OPEN_SHELL_ELEMENT }
  var CLOSED_SHELL_ELEMENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCLOSED_SHELL?  { rep.CLOSED_SHELL_ELEMENT }
  var BOUND: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eLOOP?  { rep.BOUND }
  var EDGE_END: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eVERTEX?  { rep.EDGE_END }
  var FACE_GEOMETRY: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSURFACE?  { rep.FACE_GEOMETRY }
  var FACE_ELEMENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eFACE?  { rep.FACE_ELEMENT }
  var EDGE_LENGTH: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tPOSITIVE_LENGTH_MEASURE?  { rep.EDGE_LENGTH }
  var EDGE_START: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eVERTEX?  { rep.EDGE_START }
  var EDGE_GEOMETRY: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCURVE?  { rep.EDGE_GEOMETRY }
  var SAME_SENSE: SDAI.BOOLEAN?  { rep.SAME_SENSE }
  var PERMANENT_ID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER?  { rep.PERMANENT_ID }
  var PARENT_EDGE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eEDGE?  { rep.PARENT_EDGE }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { rep.NAME }
}

