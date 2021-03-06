/* file: closed_or_open_shell_select.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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
  TYPE closed_or_open_shell_select = SELECT
    ( closed_shell (*ENTITY*),
     open_shell (*ENTITY*) );
  END_TYPE; -- closed_or_open_shell_select (line:1670 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES FOR SELECT
/*
  closed_shell (*ENTITY*):
  ATTR:  cfs_faces: SET [1 : ?] OF face
  ATTR:  orientation: BOOLEAN *** Multiple Select Case Sources ***
  ATTR:  permanent_aggregate_id: identifier
  ATTR:  closed_shell_element: closed_shell
  ATTR:  permanent_id: identifier
  ATTR:  name: label

  open_shell (*ENTITY*):
  ATTR:  cfs_faces: SET [1 : ?] OF face
  ATTR:  orientation: BOOLEAN *** Multiple Select Case Sources ***
  ATTR:  permanent_aggregate_id: identifier
  ATTR:  open_shell_element: open_shell
  ATTR:  permanent_id: identifier
  ATTR:  name: label

*/

/** SELECT type
- EXPRESS:
```express
  TYPE closed_or_open_shell_select = SELECT
    ( closed_shell (*ENTITY*),
     open_shell (*ENTITY*) );
  END_TYPE; -- closed_or_open_shell_select (line:1670 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public enum sCLOSED_OR_OPEN_SHELL_SELECT : SDAIValue, AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sCLOSED_OR_OPEN_SHELL_SELECT__type {

    /// SELECT case ``eCLOSED_SHELL`` (ENTITY) in ``sCLOSED_OR_OPEN_SHELL_SELECT``
    case _CLOSED_SHELL(eCLOSED_SHELL)	// (ENTITY)

    /// SELECT case ``eOPEN_SHELL`` (ENTITY) in ``sCLOSED_OR_OPEN_SHELL_SELECT``
    case _OPEN_SHELL(eOPEN_SHELL)	// (ENTITY)

    //MARK: - CONSTRUCTORS
    public init(fundamental: FundamentalType) { self = fundamental }

    public init?<T: SDAIUnderlyingType>(possiblyFrom underlyingType: T?){
      return nil
    }

    public init?(possiblyFrom complex: SDAI.ComplexEntity?) {
      guard let complex = complex else { return nil }

      if let base = complex.entityReference(eCLOSED_SHELL.self) {self = ._CLOSED_SHELL(base) }
      else if let base = complex.entityReference(eOPEN_SHELL.self) {self = ._OPEN_SHELL(base) }
      else { return nil }
    }

    public init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let select = generic else { return nil }

      if let fundamental = select as? Self {
        self.init(fundamental: fundamental)
      }
      else if let base = eCLOSED_SHELL.convert(fromGeneric: select) {
        self = ._CLOSED_SHELL(base)
      }
      else if let base = eOPEN_SHELL.convert(fromGeneric: select) {
        self = ._OPEN_SHELL(base)
      }
      else { return nil }
    }

    // InitializableByP21Parameter
    public static var bareTypeName: String = "CLOSED_OR_OPEN_SHELL_SELECT"

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
    public var super_eTOPOLOGICAL_REPRESENTATION_ITEM: eTOPOLOGICAL_REPRESENTATION_ITEM? {
      switch self {
      case ._CLOSED_SHELL(let entity): return entity.super_eTOPOLOGICAL_REPRESENTATION_ITEM
      case ._OPEN_SHELL(let entity): return entity.super_eTOPOLOGICAL_REPRESENTATION_ITEM
      }
    }

    public var super_eCLOSED_SHELL: eCLOSED_SHELL? {
      switch self {
      case ._CLOSED_SHELL(let entity): return entity
      default: return nil
      }
    }

    public var super_eOPEN_SHELL: eOPEN_SHELL? {
      switch self {
      case ._OPEN_SHELL(let entity): return entity
      default: return nil
      }
    }

    public var super_eCONNECTED_FACE_SET: eCONNECTED_FACE_SET? {
      switch self {
      case ._CLOSED_SHELL(let entity): return entity.super_eCONNECTED_FACE_SET
      case ._OPEN_SHELL(let entity): return entity.super_eCONNECTED_FACE_SET
      }
    }

    public var super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM? {
      switch self {
      case ._CLOSED_SHELL(let entity): return entity.super_eREPRESENTATION_ITEM
      case ._OPEN_SHELL(let entity): return entity.super_eREPRESENTATION_ITEM
      }
    }


    //MARK: - ENTITY ATTRIBUTE REFERENCES
    /// attribute of SELECT type ``sCLOSED_OR_OPEN_SHELL_SELECT``
    /// - origin: ENTITY( ``eCLOSED_SHELL`` )
    /// - origin: ENTITY( ``eOPEN_SHELL`` )
    public var CFS_FACES: (SDAI.SET<eFACE>/*[1:nil]*/ )?  {
      switch self {
      case ._CLOSED_SHELL(let entity): return entity.CFS_FACES
      case ._OPEN_SHELL(let entity): return entity.CFS_FACES
      }
    }

    /// attribute of SELECT type ``sCLOSED_OR_OPEN_SHELL_SELECT``
    /// - origin: ENTITY( ``eCLOSED_SHELL`` )
    /// - origin: ENTITY( ``eOPEN_SHELL`` )
    public var ORIENTATION: SDAI.BOOLEAN?  {
      switch self {
      case ._CLOSED_SHELL(let entity): return entity.ORIENTATION
      case ._OPEN_SHELL(let entity): return entity.ORIENTATION
      }
    }

    /// attribute of SELECT type ``sCLOSED_OR_OPEN_SHELL_SELECT``
    /// - origin: ENTITY( ``eCLOSED_SHELL`` )
    /// - origin: ENTITY( ``eOPEN_SHELL`` )
    public var PERMANENT_AGGREGATE_ID: tIDENTIFIER?  {
      switch self {
      case ._CLOSED_SHELL(let entity): return entity.PERMANENT_AGGREGATE_ID
      case ._OPEN_SHELL(let entity): return entity.PERMANENT_AGGREGATE_ID
      }
    }

    /// attribute of SELECT type ``sCLOSED_OR_OPEN_SHELL_SELECT``
    /// - origin: ENTITY( ``eOPEN_SHELL`` )
    public var OPEN_SHELL_ELEMENT: eOPEN_SHELL?  {
      switch self {
      case ._OPEN_SHELL(let entity): return entity.OPEN_SHELL_ELEMENT
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCLOSED_OR_OPEN_SHELL_SELECT``
    /// - origin: ENTITY( ``eCLOSED_SHELL`` )
    public var CLOSED_SHELL_ELEMENT: eCLOSED_SHELL?  {
      switch self {
      case ._CLOSED_SHELL(let entity): return entity.CLOSED_SHELL_ELEMENT
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCLOSED_OR_OPEN_SHELL_SELECT``
    /// - origin: ENTITY( ``eCLOSED_SHELL`` )
    /// - origin: ENTITY( ``eOPEN_SHELL`` )
    public var PERMANENT_ID: tIDENTIFIER?  {
      switch self {
      case ._CLOSED_SHELL(let entity): return entity.PERMANENT_ID
      case ._OPEN_SHELL(let entity): return entity.PERMANENT_ID
      }
    }

    /// attribute of SELECT type ``sCLOSED_OR_OPEN_SHELL_SELECT``
    /// - origin: ENTITY( ``eCLOSED_SHELL`` )
    /// - origin: ENTITY( ``eOPEN_SHELL`` )
    public var NAME: tLABEL?  {
      switch self {
      case ._CLOSED_SHELL(let entity): return entity.NAME
      case ._OPEN_SHELL(let entity): return entity.NAME
      }
    }


    //MARK: - SDAIValue
    public func isValueEqual<T: SDAIValue>(to rhs: T) -> Bool {
      switch self {
      case ._CLOSED_SHELL(let selection): return selection.value.isValueEqual(to: rhs)
      case ._OPEN_SHELL(let selection): return selection.value.isValueEqual(to: rhs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?) -> Bool? {
      switch self {
      case ._CLOSED_SHELL(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._OPEN_SHELL(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      }
    }

    public func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      switch self {
      case ._CLOSED_SHELL(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._OPEN_SHELL(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      }
    }

    public func isValueEqual<T: SDAIValue>(to rhs: T, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      switch self {
      case ._CLOSED_SHELL(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._OPEN_SHELL(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      switch self {
      case ._CLOSED_SHELL(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._OPEN_SHELL(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      }
    }


    //MARK: SDAIGenericTypeBase
    public func copy() -> Self {
      switch self {
      case ._CLOSED_SHELL(let selection): return ._CLOSED_SHELL(selection.copy())
      case ._OPEN_SHELL(let selection): return ._OPEN_SHELL(selection.copy())
      }
    }

    //MARK: SDAIGenericType
    public var typeMembers: Set<SDAI.STRING> {
      var members: Set<SDAI.STRING> = [SDAI.STRING(Self.typeName)]
      switch self {
      case ._CLOSED_SHELL(let selection): members.formUnion(selection.typeMembers)
      case ._OPEN_SHELL(let selection): members.formUnion(selection.typeMembers)
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
      case ._CLOSED_SHELL(let selection): return selection.entityReference
      case ._OPEN_SHELL(let selection): return selection.entityReference
      }
    }
    public var stringValue: SDAI.STRING? {
      switch self {
      case ._CLOSED_SHELL(let selection): return selection.stringValue
      case ._OPEN_SHELL(let selection): return selection.stringValue
      }
    }
    public var binaryValue: SDAI.BINARY? {
      switch self {
      case ._CLOSED_SHELL(let selection): return selection.binaryValue
      case ._OPEN_SHELL(let selection): return selection.binaryValue
      }
    }
    public var logicalValue: SDAI.LOGICAL? {
      switch self {
      case ._CLOSED_SHELL(let selection): return selection.logicalValue
      case ._OPEN_SHELL(let selection): return selection.logicalValue
      }
    }
    public var booleanValue: SDAI.BOOLEAN? {
      switch self {
      case ._CLOSED_SHELL(let selection): return selection.booleanValue
      case ._OPEN_SHELL(let selection): return selection.booleanValue
      }
    }
    public var numberValue: SDAI.NUMBER? {
      switch self {
      case ._CLOSED_SHELL(let selection): return selection.numberValue
      case ._OPEN_SHELL(let selection): return selection.numberValue
      }
    }
    public var realValue: SDAI.REAL? {
      switch self {
      case ._CLOSED_SHELL(let selection): return selection.realValue
      case ._OPEN_SHELL(let selection): return selection.realValue
      }
    }
    public var integerValue: SDAI.INTEGER? {
      switch self {
      case ._CLOSED_SHELL(let selection): return selection.integerValue
      case ._OPEN_SHELL(let selection): return selection.integerValue
      }
    }
    public var genericEnumValue: SDAI.GenericEnumValue? {
      switch self {
      case ._CLOSED_SHELL(let selection): return selection.genericEnumValue
      case ._OPEN_SHELL(let selection): return selection.genericEnumValue
      }
    }
    public func arrayOptionalValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY_OPTIONAL<ELEM>? {
      switch self {
      case ._CLOSED_SHELL(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._OPEN_SHELL(let selection): return selection.arrayOptionalValue(elementType:elementType)
      }
    }
    public func arrayValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY<ELEM>? {
      switch self {
      case ._CLOSED_SHELL(let selection): return selection.arrayValue(elementType:elementType)
      case ._OPEN_SHELL(let selection): return selection.arrayValue(elementType:elementType)
      }
    }
    public func listValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.LIST<ELEM>? {
      switch self {
      case ._CLOSED_SHELL(let selection): return selection.listValue(elementType:elementType)
      case ._OPEN_SHELL(let selection): return selection.listValue(elementType:elementType)
      }
    }
    public func bagValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.BAG<ELEM>? {
      switch self {
      case ._CLOSED_SHELL(let selection): return selection.bagValue(elementType:elementType)
      case ._OPEN_SHELL(let selection): return selection.bagValue(elementType:elementType)
      }
    }
    public func setValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.SET<ELEM>? {
      switch self {
      case ._CLOSED_SHELL(let selection): return selection.setValue(elementType:elementType)
      case ._OPEN_SHELL(let selection): return selection.setValue(elementType:elementType)
      }
    }
    public func enumValue<ENUM:SDAIEnumerationType>(enumType:ENUM.Type) -> ENUM? {
      switch self {
      case ._CLOSED_SHELL(let selection): return selection.enumValue(enumType:enumType)
      case ._OPEN_SHELL(let selection): return selection.enumValue(enumType:enumType)
      }
    }

    //MARK: SDAIUnderlyingType
    public typealias FundamentalType = Self
    public static var typeName: String = 
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CLOSED_OR_OPEN_SHELL_SELECT"
    public var asFundamentalType: FundamentalType { return self }

    //MARK: SDAIObservableAggregateElement
    public var entityReferences: AnySequence<SDAI.EntityReference> {
      switch self {
      case ._CLOSED_SHELL(let entity): return entity.entityReferences
      case ._OPEN_SHELL(let entity): return entity.entityReferences
      }
    }

    public mutating func configure(with observer: SDAI.EntityReferenceObserver) {
      switch self {
      case ._CLOSED_SHELL(let entity): 
        entity.configure(with: observer)
        self = ._CLOSED_SHELL(entity)
      case ._OPEN_SHELL(let entity): 
        entity.configure(with: observer)
        self = ._OPEN_SHELL(entity)
      }
    }

    public mutating func teardownObserver() {
      switch self {
      case ._CLOSED_SHELL(let entity): 
        entity.teardownObserver()
        self = ._CLOSED_SHELL(entity)
      case ._OPEN_SHELL(let entity): 
        entity.teardownObserver()
        self = ._OPEN_SHELL(entity)
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
      case ._CLOSED_SHELL(let selectValue): result = eCLOSED_SHELL.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\CLOSED_SHELL")
      case ._OPEN_SHELL(let selectValue): result = eOPEN_SHELL.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\OPEN_SHELL")
      case nil: break
      }

      return result
    }

  }

}


//MARK: - SELECT TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sCLOSED_OR_OPEN_SHELL_SELECT__type: 
  SDAISelectType {

  //MARK: GROUP REFERENCES
  var super_eTOPOLOGICAL_REPRESENTATION_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eTOPOLOGICAL_REPRESENTATION_ITEM? { get }
  var super_eCLOSED_SHELL: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCLOSED_SHELL? { get }
  var super_eOPEN_SHELL: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eOPEN_SHELL? { get }
  var super_eCONNECTED_FACE_SET: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCONNECTED_FACE_SET? { get }
  var super_eREPRESENTATION_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION_ITEM? { get }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var CFS_FACES: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eFACE>/*[1:nil]*/ )?  { get }
  var ORIENTATION: SDAI.BOOLEAN?  { get }
  var PERMANENT_AGGREGATE_ID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER?  { get }
  var OPEN_SHELL_ELEMENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eOPEN_SHELL?  { get }
  var CLOSED_SHELL_ELEMENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCLOSED_SHELL?  { get }
  var PERMANENT_ID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER?  { get }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { get }
}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sCLOSED_OR_OPEN_SHELL_SELECT__subtype: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sCLOSED_OR_OPEN_SHELL_SELECT__type, SDAIDefinedType
where Supertype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sCLOSED_OR_OPEN_SHELL_SELECT__type
{}

public extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sCLOSED_OR_OPEN_SHELL_SELECT__subtype {
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
  var super_eTOPOLOGICAL_REPRESENTATION_ITEM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eTOPOLOGICAL_REPRESENTATION_ITEM? { rep.super_eTOPOLOGICAL_REPRESENTATION_ITEM }
  var super_eCLOSED_SHELL: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCLOSED_SHELL? { rep.super_eCLOSED_SHELL }
  var super_eOPEN_SHELL: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eOPEN_SHELL? { rep.super_eOPEN_SHELL }
  var super_eCONNECTED_FACE_SET: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCONNECTED_FACE_SET? { rep.super_eCONNECTED_FACE_SET }
  var super_eREPRESENTATION_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION_ITEM? { rep.super_eREPRESENTATION_ITEM }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var CFS_FACES: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eFACE>/*[1:nil]*/ )?  { rep.CFS_FACES }
  var ORIENTATION: SDAI.BOOLEAN?  { rep.ORIENTATION }
  var PERMANENT_AGGREGATE_ID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER?  { rep.PERMANENT_AGGREGATE_ID }
  var OPEN_SHELL_ELEMENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eOPEN_SHELL?  { rep.OPEN_SHELL_ELEMENT }
  var CLOSED_SHELL_ELEMENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCLOSED_SHELL?  { rep.CLOSED_SHELL_ELEMENT }
  var PERMANENT_ID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER?  { rep.PERMANENT_ID }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { rep.NAME }
}

