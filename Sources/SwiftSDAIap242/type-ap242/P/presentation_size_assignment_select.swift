/* file: presentation_size_assignment_select.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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
  TYPE presentation_size_assignment_select = SELECT
    ( area_in_set (*ENTITY*),
     presentation_area (*ENTITY*),
     presentation_view (*ENTITY*) );
  END_TYPE; -- presentation_size_assignment_select (line:4878 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES FOR SELECT
/*
  area_in_set (*ENTITY*):
  ATTR:  sheet_number: identifier
  ATTR:  in_set: presentation_set
  ATTR:  area: presentation_area

  presentation_area (*ENTITY*):
  ATTR:  description: text
  ATTR:  items: SET [1 : ?] OF representation_item
  ATTR:  revision_identifier: identifier
  ATTR:  id: identifier
  ATTR:  context_of_items: geometric_representation_context
  ATTR:  name: label

  presentation_view (*ENTITY*):
  ATTR:  description: text
  ATTR:  items: SET [1 : ?] OF representation_item
  ATTR:  size: presentation_size
  ATTR:  id: identifier
  ATTR:  context_of_items: geometric_representation_context
  ATTR:  name: label

*/

/** SELECT type
- EXPRESS:
```express
  TYPE presentation_size_assignment_select = SELECT
    ( area_in_set (*ENTITY*),
     presentation_area (*ENTITY*),
     presentation_view (*ENTITY*) );
  END_TYPE; -- presentation_size_assignment_select (line:4878 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public enum sPRESENTATION_SIZE_ASSIGNMENT_SELECT : SDAIValue, AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sPRESENTATION_SIZE_ASSIGNMENT_SELECT__type {

    /// SELECT case ``eAREA_IN_SET`` (ENTITY) in ``sPRESENTATION_SIZE_ASSIGNMENT_SELECT``
    case _AREA_IN_SET(eAREA_IN_SET)	// (ENTITY)

    /// SELECT case ``ePRESENTATION_AREA`` (ENTITY) in ``sPRESENTATION_SIZE_ASSIGNMENT_SELECT``
    case _PRESENTATION_AREA(ePRESENTATION_AREA)	// (ENTITY)

    /// SELECT case ``ePRESENTATION_VIEW`` (ENTITY) in ``sPRESENTATION_SIZE_ASSIGNMENT_SELECT``
    case _PRESENTATION_VIEW(ePRESENTATION_VIEW)	// (ENTITY)

    //MARK: - CONSTRUCTORS
    public init(fundamental: FundamentalType) { self = fundamental }

    public init?<T: SDAIUnderlyingType>(possiblyFrom underlyingType: T?){
      return nil
    }

    public init?(possiblyFrom complex: SDAI.ComplexEntity?) {
      guard let complex = complex else { return nil }

      if let base = complex.entityReference(eAREA_IN_SET.self) {self = ._AREA_IN_SET(base) }
      else if let base = complex.entityReference(ePRESENTATION_AREA.self) {self = ._PRESENTATION_AREA(base) }
      else if let base = complex.entityReference(ePRESENTATION_VIEW.self) {self = ._PRESENTATION_VIEW(base) }
      else { return nil }
    }

    public init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let select = generic else { return nil }

      if let fundamental = select as? Self {
        self.init(fundamental: fundamental)
      }
      else if let base = eAREA_IN_SET.convert(fromGeneric: select) {
        self = ._AREA_IN_SET(base)
      }
      else if let base = ePRESENTATION_AREA.convert(fromGeneric: select) {
        self = ._PRESENTATION_AREA(base)
      }
      else if let base = ePRESENTATION_VIEW.convert(fromGeneric: select) {
        self = ._PRESENTATION_VIEW(base)
      }
      else { return nil }
    }

    // InitializableByP21Parameter
    public static var bareTypeName: String = "PRESENTATION_SIZE_ASSIGNMENT_SELECT"

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
    public var super_eREPRESENTATION: eREPRESENTATION? {
      switch self {
      case ._PRESENTATION_AREA(let entity): return entity.super_eREPRESENTATION
      case ._PRESENTATION_VIEW(let entity): return entity.super_eREPRESENTATION
      default: return nil
      }
    }

    public var super_eAREA_IN_SET: eAREA_IN_SET? {
      switch self {
      case ._AREA_IN_SET(let entity): return entity
      default: return nil
      }
    }

    public var super_ePRESENTATION_REPRESENTATION: ePRESENTATION_REPRESENTATION? {
      switch self {
      case ._PRESENTATION_AREA(let entity): return entity.super_ePRESENTATION_REPRESENTATION
      case ._PRESENTATION_VIEW(let entity): return entity.super_ePRESENTATION_REPRESENTATION
      default: return nil
      }
    }

    public var super_ePRESENTATION_VIEW: ePRESENTATION_VIEW? {
      switch self {
      case ._PRESENTATION_VIEW(let entity): return entity
      default: return nil
      }
    }

    public var super_ePRESENTATION_AREA: ePRESENTATION_AREA? {
      switch self {
      case ._PRESENTATION_AREA(let entity): return entity
      default: return nil
      }
    }


    //MARK: - ENTITY ATTRIBUTE REFERENCES
    /// attribute of SELECT type ``sPRESENTATION_SIZE_ASSIGNMENT_SELECT``
    /// - origin: ENTITY( ``ePRESENTATION_AREA`` )
    /// - origin: ENTITY( ``ePRESENTATION_VIEW`` )
    public var DESCRIPTION: tTEXT?  {
      switch self {
      case ._PRESENTATION_AREA(let entity): return entity.DESCRIPTION
      case ._PRESENTATION_VIEW(let entity): return entity.DESCRIPTION
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPRESENTATION_SIZE_ASSIGNMENT_SELECT``
    /// - origin: ENTITY( ``ePRESENTATION_AREA`` )
    /// - origin: ENTITY( ``ePRESENTATION_VIEW`` )
    public var ITEMS: (SDAI.SET<eREPRESENTATION_ITEM>/*[1:nil]*/ )?  {
      switch self {
      case ._PRESENTATION_AREA(let entity): return entity.ITEMS
      case ._PRESENTATION_VIEW(let entity): return entity.ITEMS
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPRESENTATION_SIZE_ASSIGNMENT_SELECT``
    /// - origin: ENTITY( ``eAREA_IN_SET`` )
    public var SHEET_NUMBER: tIDENTIFIER?  {
      switch self {
      case ._AREA_IN_SET(let entity): return entity.SHEET_NUMBER
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPRESENTATION_SIZE_ASSIGNMENT_SELECT``
    /// - origin: ENTITY( ``ePRESENTATION_AREA`` )
    public var REVISION_IDENTIFIER: tIDENTIFIER?  {
      switch self {
      case ._PRESENTATION_AREA(let entity): return entity.REVISION_IDENTIFIER
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPRESENTATION_SIZE_ASSIGNMENT_SELECT``
    /// - origin: ENTITY( ``ePRESENTATION_VIEW`` )
    public var SIZE: ePRESENTATION_SIZE?  {
      switch self {
      case ._PRESENTATION_VIEW(let entity): return entity.SIZE
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPRESENTATION_SIZE_ASSIGNMENT_SELECT``
    /// - origin: ENTITY( ``eAREA_IN_SET`` )
    public var IN_SET: ePRESENTATION_SET?  {
      switch self {
      case ._AREA_IN_SET(let entity): return entity.IN_SET
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPRESENTATION_SIZE_ASSIGNMENT_SELECT``
    /// - origin: ENTITY( ``ePRESENTATION_AREA`` )
    /// - origin: ENTITY( ``ePRESENTATION_VIEW`` )
    public var ID: tIDENTIFIER?  {
      switch self {
      case ._PRESENTATION_AREA(let entity): return entity.ID
      case ._PRESENTATION_VIEW(let entity): return entity.ID
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPRESENTATION_SIZE_ASSIGNMENT_SELECT``
    /// - origin: ENTITY( ``ePRESENTATION_AREA`` )
    /// - origin: ENTITY( ``ePRESENTATION_VIEW`` )
    public var CONTEXT_OF_ITEMS: eGEOMETRIC_REPRESENTATION_CONTEXT?  {
      switch self {
      case ._PRESENTATION_AREA(let entity): return entity.CONTEXT_OF_ITEMS
      case ._PRESENTATION_VIEW(let entity): return entity.CONTEXT_OF_ITEMS
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPRESENTATION_SIZE_ASSIGNMENT_SELECT``
    /// - origin: ENTITY( ``ePRESENTATION_AREA`` )
    /// - origin: ENTITY( ``ePRESENTATION_VIEW`` )
    public var NAME: tLABEL?  {
      switch self {
      case ._PRESENTATION_AREA(let entity): return entity.NAME
      case ._PRESENTATION_VIEW(let entity): return entity.NAME
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPRESENTATION_SIZE_ASSIGNMENT_SELECT``
    /// - origin: ENTITY( ``eAREA_IN_SET`` )
    public var AREA: ePRESENTATION_AREA?  {
      switch self {
      case ._AREA_IN_SET(let entity): return entity.AREA
      default: return nil
      }
    }


    //MARK: - SDAIValue
    public func isValueEqual<T: SDAIValue>(to rhs: T) -> Bool {
      switch self {
      case ._AREA_IN_SET(let selection): return selection.value.isValueEqual(to: rhs)
      case ._PRESENTATION_AREA(let selection): return selection.value.isValueEqual(to: rhs)
      case ._PRESENTATION_VIEW(let selection): return selection.value.isValueEqual(to: rhs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?) -> Bool? {
      switch self {
      case ._AREA_IN_SET(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._PRESENTATION_AREA(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._PRESENTATION_VIEW(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      }
    }

    public func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      switch self {
      case ._AREA_IN_SET(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._PRESENTATION_AREA(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._PRESENTATION_VIEW(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      }
    }

    public func isValueEqual<T: SDAIValue>(to rhs: T, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      switch self {
      case ._AREA_IN_SET(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._PRESENTATION_AREA(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._PRESENTATION_VIEW(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      switch self {
      case ._AREA_IN_SET(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._PRESENTATION_AREA(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._PRESENTATION_VIEW(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      }
    }


    //MARK: SDAIGenericTypeBase
    public func copy() -> Self {
      switch self {
      case ._AREA_IN_SET(let selection): return ._AREA_IN_SET(selection.copy())
      case ._PRESENTATION_AREA(let selection): return ._PRESENTATION_AREA(selection.copy())
      case ._PRESENTATION_VIEW(let selection): return ._PRESENTATION_VIEW(selection.copy())
      }
    }

    //MARK: SDAIGenericType
    public var typeMembers: Set<SDAI.STRING> {
      var members: Set<SDAI.STRING> = [SDAI.STRING(Self.typeName)]
      switch self {
      case ._AREA_IN_SET(let selection): members.formUnion(selection.typeMembers)
      case ._PRESENTATION_AREA(let selection): members.formUnion(selection.typeMembers)
      case ._PRESENTATION_VIEW(let selection): members.formUnion(selection.typeMembers)
      }
      return members
    }

    public var entityReference: SDAI.EntityReference? {
      switch self {
      case ._AREA_IN_SET(let selection): return selection.entityReference
      case ._PRESENTATION_AREA(let selection): return selection.entityReference
      case ._PRESENTATION_VIEW(let selection): return selection.entityReference
      }
    }
    public var stringValue: SDAI.STRING? {
      switch self {
      case ._AREA_IN_SET(let selection): return selection.stringValue
      case ._PRESENTATION_AREA(let selection): return selection.stringValue
      case ._PRESENTATION_VIEW(let selection): return selection.stringValue
      }
    }
    public var binaryValue: SDAI.BINARY? {
      switch self {
      case ._AREA_IN_SET(let selection): return selection.binaryValue
      case ._PRESENTATION_AREA(let selection): return selection.binaryValue
      case ._PRESENTATION_VIEW(let selection): return selection.binaryValue
      }
    }
    public var logicalValue: SDAI.LOGICAL? {
      switch self {
      case ._AREA_IN_SET(let selection): return selection.logicalValue
      case ._PRESENTATION_AREA(let selection): return selection.logicalValue
      case ._PRESENTATION_VIEW(let selection): return selection.logicalValue
      }
    }
    public var booleanValue: SDAI.BOOLEAN? {
      switch self {
      case ._AREA_IN_SET(let selection): return selection.booleanValue
      case ._PRESENTATION_AREA(let selection): return selection.booleanValue
      case ._PRESENTATION_VIEW(let selection): return selection.booleanValue
      }
    }
    public var numberValue: SDAI.NUMBER? {
      switch self {
      case ._AREA_IN_SET(let selection): return selection.numberValue
      case ._PRESENTATION_AREA(let selection): return selection.numberValue
      case ._PRESENTATION_VIEW(let selection): return selection.numberValue
      }
    }
    public var realValue: SDAI.REAL? {
      switch self {
      case ._AREA_IN_SET(let selection): return selection.realValue
      case ._PRESENTATION_AREA(let selection): return selection.realValue
      case ._PRESENTATION_VIEW(let selection): return selection.realValue
      }
    }
    public var integerValue: SDAI.INTEGER? {
      switch self {
      case ._AREA_IN_SET(let selection): return selection.integerValue
      case ._PRESENTATION_AREA(let selection): return selection.integerValue
      case ._PRESENTATION_VIEW(let selection): return selection.integerValue
      }
    }
    public var genericEnumValue: SDAI.GenericEnumValue? {
      switch self {
      case ._AREA_IN_SET(let selection): return selection.genericEnumValue
      case ._PRESENTATION_AREA(let selection): return selection.genericEnumValue
      case ._PRESENTATION_VIEW(let selection): return selection.genericEnumValue
      }
    }
    public func arrayOptionalValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY_OPTIONAL<ELEM>? {
      switch self {
      case ._AREA_IN_SET(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._PRESENTATION_AREA(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._PRESENTATION_VIEW(let selection): return selection.arrayOptionalValue(elementType:elementType)
      }
    }
    public func arrayValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY<ELEM>? {
      switch self {
      case ._AREA_IN_SET(let selection): return selection.arrayValue(elementType:elementType)
      case ._PRESENTATION_AREA(let selection): return selection.arrayValue(elementType:elementType)
      case ._PRESENTATION_VIEW(let selection): return selection.arrayValue(elementType:elementType)
      }
    }
    public func listValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.LIST<ELEM>? {
      switch self {
      case ._AREA_IN_SET(let selection): return selection.listValue(elementType:elementType)
      case ._PRESENTATION_AREA(let selection): return selection.listValue(elementType:elementType)
      case ._PRESENTATION_VIEW(let selection): return selection.listValue(elementType:elementType)
      }
    }
    public func bagValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.BAG<ELEM>? {
      switch self {
      case ._AREA_IN_SET(let selection): return selection.bagValue(elementType:elementType)
      case ._PRESENTATION_AREA(let selection): return selection.bagValue(elementType:elementType)
      case ._PRESENTATION_VIEW(let selection): return selection.bagValue(elementType:elementType)
      }
    }
    public func setValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.SET<ELEM>? {
      switch self {
      case ._AREA_IN_SET(let selection): return selection.setValue(elementType:elementType)
      case ._PRESENTATION_AREA(let selection): return selection.setValue(elementType:elementType)
      case ._PRESENTATION_VIEW(let selection): return selection.setValue(elementType:elementType)
      }
    }
    public func enumValue<ENUM:SDAIEnumerationType>(enumType:ENUM.Type) -> ENUM? {
      switch self {
      case ._AREA_IN_SET(let selection): return selection.enumValue(enumType:enumType)
      case ._PRESENTATION_AREA(let selection): return selection.enumValue(enumType:enumType)
      case ._PRESENTATION_VIEW(let selection): return selection.enumValue(enumType:enumType)
      }
    }

    //MARK: SDAIUnderlyingType
    public typealias FundamentalType = Self
    public static var typeName: String = 
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRESENTATION_SIZE_ASSIGNMENT_SELECT"
    public var asFundamentalType: FundamentalType { return self }

    //MARK: SDAIObservableAggregateElement
    public var entityReferences: AnySequence<SDAI.EntityReference> {
      switch self {
      case ._AREA_IN_SET(let entity): return entity.entityReferences
      case ._PRESENTATION_AREA(let entity): return entity.entityReferences
      case ._PRESENTATION_VIEW(let entity): return entity.entityReferences
      }
    }

    public mutating func configure(with observer: SDAI.EntityReferenceObserver) {
      switch self {
      case ._AREA_IN_SET(let entity): 
        entity.configure(with: observer)
        self = ._AREA_IN_SET(entity)
      case ._PRESENTATION_AREA(let entity): 
        entity.configure(with: observer)
        self = ._PRESENTATION_AREA(entity)
      case ._PRESENTATION_VIEW(let entity): 
        entity.configure(with: observer)
        self = ._PRESENTATION_VIEW(entity)
      }
    }

    public mutating func teardownObserver() {
      switch self {
      case ._AREA_IN_SET(let entity): 
        entity.teardownObserver()
        self = ._AREA_IN_SET(entity)
      case ._PRESENTATION_AREA(let entity): 
        entity.teardownObserver()
        self = ._PRESENTATION_AREA(entity)
      case ._PRESENTATION_VIEW(let entity): 
        entity.teardownObserver()
        self = ._PRESENTATION_VIEW(entity)
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
      case ._AREA_IN_SET(let selectValue): result = eAREA_IN_SET.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\AREA_IN_SET")
      case ._PRESENTATION_AREA(let selectValue): 
        result = ePRESENTATION_AREA.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\PRESENTATION_AREA")
      case ._PRESENTATION_VIEW(let selectValue): 
        result = ePRESENTATION_VIEW.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\PRESENTATION_VIEW")
      case nil: break
      }

      return result
    }

  }

}


//MARK: - SELECT TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sPRESENTATION_SIZE_ASSIGNMENT_SELECT__type: 
  SDAISelectType {

  //MARK: GROUP REFERENCES
  var super_eREPRESENTATION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION? { get }
  var super_eAREA_IN_SET: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eAREA_IN_SET? { get }
  var super_ePRESENTATION_REPRESENTATION: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRESENTATION_REPRESENTATION? { get }
  var super_ePRESENTATION_VIEW: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRESENTATION_VIEW? { get }
  var super_ePRESENTATION_AREA: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRESENTATION_AREA? { get }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var DESCRIPTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tTEXT?  { get }
  var ITEMS: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION_ITEM>/*[1:nil]*/ )?  { get }
  var SHEET_NUMBER: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER?  { get }
  var REVISION_IDENTIFIER: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER?  { get }
  var SIZE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRESENTATION_SIZE?  { get }
  var IN_SET: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRESENTATION_SET?  { get }
  var ID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER?  { get }
  var CONTEXT_OF_ITEMS: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eGEOMETRIC_REPRESENTATION_CONTEXT?  { get }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { get }
  var AREA: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRESENTATION_AREA?  { get }
}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sPRESENTATION_SIZE_ASSIGNMENT_SELECT__subtype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sPRESENTATION_SIZE_ASSIGNMENT_SELECT__type, SDAIDefinedType
where Supertype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sPRESENTATION_SIZE_ASSIGNMENT_SELECT__type
{}

public extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sPRESENTATION_SIZE_ASSIGNMENT_SELECT__subtype {
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
  var super_eREPRESENTATION: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION? { rep.super_eREPRESENTATION }
  var super_eAREA_IN_SET: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eAREA_IN_SET? { rep.super_eAREA_IN_SET }
  var super_ePRESENTATION_REPRESENTATION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRESENTATION_REPRESENTATION? { rep.super_ePRESENTATION_REPRESENTATION }
  var super_ePRESENTATION_VIEW: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRESENTATION_VIEW? { rep.super_ePRESENTATION_VIEW }
  var super_ePRESENTATION_AREA: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRESENTATION_AREA? { rep.super_ePRESENTATION_AREA }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var DESCRIPTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tTEXT?  { rep.DESCRIPTION }
  var ITEMS: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION_ITEM>/*[1:nil]*/ )?  { rep.ITEMS }
  var SHEET_NUMBER: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER?  { rep.SHEET_NUMBER }
  var REVISION_IDENTIFIER: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER?  { rep.REVISION_IDENTIFIER }
  var SIZE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRESENTATION_SIZE?  { rep.SIZE }
  var IN_SET: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRESENTATION_SET?  { rep.IN_SET }
  var ID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER?  { rep.ID }
  var CONTEXT_OF_ITEMS: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eGEOMETRIC_REPRESENTATION_CONTEXT?  { rep.CONTEXT_OF_ITEMS }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { rep.NAME }
  var AREA: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRESENTATION_AREA?  { rep.AREA }
}
