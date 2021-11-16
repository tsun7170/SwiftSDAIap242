/* file: supported_item.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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
  TYPE supported_item = SELECT
    ( action (*ENTITY*),
     action_directive (*ENTITY*),
     action_method (*ENTITY*) );
  END_TYPE; -- supported_item (line:5661 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES FOR SELECT
/*
  action (*ENTITY*):
  ATTR:  description: text *** Multiple Select Case Sources ***
  ATTR:  properties: SET [1 : ?] OF process_property_association
  ATTR:  directive: action_directive
  ATTR:  chosen_method: action_method
  ATTR:  identification: (AMBIGUOUS (CASE LEVEL))
  ATTR:  product_definitions: SET [1 : ?] OF process_product_association
  ATTR:  id: identifier
  ATTR:  name: label *** Multiple Select Case Sources ***

  action_directive (*ENTITY*):
  ATTR:  description: text *** Multiple Select Case Sources ***
  ATTR:  analysis: text
  ATTR:  requests: SET [1 : ?] OF versioned_action_request
  ATTR:  comment: text
  ATTR:  name: label *** Multiple Select Case Sources ***

  action_method (*ENTITY*):
  ATTR:  description: text *** Multiple Select Case Sources ***
  ATTR:  purpose: text
  ATTR:  consequence: text
  ATTR:  name: label *** Multiple Select Case Sources ***

*/

/** SELECT type
- EXPRESS:
```express
  TYPE supported_item = SELECT
    ( action (*ENTITY*),
     action_directive (*ENTITY*),
     action_method (*ENTITY*) );
  END_TYPE; -- supported_item (line:5661 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public enum sSUPPORTED_ITEM : SDAIValue, AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sSUPPORTED_ITEM__type {

    /// SELECT case ``eACTION`` (ENTITY) in ``sSUPPORTED_ITEM``
    case _ACTION(eACTION)	// (ENTITY)

    /// SELECT case ``eACTION_DIRECTIVE`` (ENTITY) in ``sSUPPORTED_ITEM``
    case _ACTION_DIRECTIVE(eACTION_DIRECTIVE)	// (ENTITY)

    /// SELECT case ``eACTION_METHOD`` (ENTITY) in ``sSUPPORTED_ITEM``
    case _ACTION_METHOD(eACTION_METHOD)	// (ENTITY)

    //MARK: - CONSTRUCTORS
    public init(fundamental: FundamentalType) { self = fundamental }

    public init?<T: SDAIUnderlyingType>(possiblyFrom underlyingType: T?){
      return nil
    }

    public init?(possiblyFrom complex: SDAI.ComplexEntity?) {
      guard let complex = complex else { return nil }

      if let base = complex.entityReference(eACTION.self) {self = ._ACTION(base) }
      else if let base = complex.entityReference(eACTION_DIRECTIVE.self) {self = ._ACTION_DIRECTIVE(base) }
      else if let base = complex.entityReference(eACTION_METHOD.self) {self = ._ACTION_METHOD(base) }
      else { return nil }
    }

    public init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let select = generic else { return nil }

      if let fundamental = select as? Self {
        self.init(fundamental: fundamental)
      }
      else if let base = eACTION.convert(fromGeneric: select) {
        self = ._ACTION(base)
      }
      else if let base = eACTION_DIRECTIVE.convert(fromGeneric: select) {
        self = ._ACTION_DIRECTIVE(base)
      }
      else if let base = eACTION_METHOD.convert(fromGeneric: select) {
        self = ._ACTION_METHOD(base)
      }
      else { return nil }
    }

    // InitializableByP21Parameter
    public static var bareTypeName: String = "SUPPORTED_ITEM"

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
    public var super_eACTION_METHOD: eACTION_METHOD? {
      switch self {
      case ._ACTION_METHOD(let entity): return entity
      default: return nil
      }
    }

    public var super_eACTION_DIRECTIVE: eACTION_DIRECTIVE? {
      switch self {
      case ._ACTION_DIRECTIVE(let entity): return entity
      default: return nil
      }
    }

    public var super_eACTION: eACTION? {
      switch self {
      case ._ACTION(let entity): return entity
      default: return nil
      }
    }


    //MARK: - ENTITY ATTRIBUTE REFERENCES
    /// attribute of SELECT type ``sSUPPORTED_ITEM``
    /// - origin: ENTITY( ``eACTION`` )
    /// - origin: ENTITY( ``eACTION_DIRECTIVE`` )
    /// - origin: ENTITY( ``eACTION_METHOD`` )
    public var DESCRIPTION: tTEXT?  {
      switch self {
      case ._ACTION(let entity): return entity.DESCRIPTION
      case ._ACTION_DIRECTIVE(let entity): return entity.DESCRIPTION
      case ._ACTION_METHOD(let entity): return entity.DESCRIPTION
      }
    }

    /// attribute of SELECT type ``sSUPPORTED_ITEM``
    /// - origin: ENTITY( ``eACTION`` )
    public var PROPERTIES: (SDAI.SET<ePROCESS_PROPERTY_ASSOCIATION>/*[1:nil]*/ )?  {
      switch self {
      case ._ACTION(let entity): return entity.PROPERTIES
      default: return nil
      }
    }

    /// attribute of SELECT type ``sSUPPORTED_ITEM``
    /// - origin: ENTITY( ``eACTION`` )
    public var DIRECTIVE: eACTION_DIRECTIVE?  {
      switch self {
      case ._ACTION(let entity): return entity.DIRECTIVE
      default: return nil
      }
    }

    /// attribute of SELECT type ``sSUPPORTED_ITEM``
    /// - origin: ENTITY( ``eACTION_DIRECTIVE`` )
    public var ANALYSIS: tTEXT?  {
      switch self {
      case ._ACTION_DIRECTIVE(let entity): return entity.ANALYSIS
      default: return nil
      }
    }

    /// attribute of SELECT type ``sSUPPORTED_ITEM``
    /// - origin: ENTITY( ``eACTION`` )
    public var CHOSEN_METHOD: eACTION_METHOD?  {
      switch self {
      case ._ACTION(let entity): return entity.CHOSEN_METHOD
      default: return nil
      }
    }

    /// attribute of SELECT type ``sSUPPORTED_ITEM``
    /// - origin: ENTITY( ``eACTION_METHOD`` )
    public var PURPOSE: tTEXT?  {
      switch self {
      case ._ACTION_METHOD(let entity): return entity.PURPOSE
      default: return nil
      }
    }

    /// attribute of SELECT type ``sSUPPORTED_ITEM``
    /// - origin: ENTITY( ``eACTION_METHOD`` )
    public var CONSEQUENCE: tTEXT?  {
      switch self {
      case ._ACTION_METHOD(let entity): return entity.CONSEQUENCE
      default: return nil
      }
    }

    /// attribute of SELECT type ``sSUPPORTED_ITEM``
    /// - origin: ENTITY( ``eACTION`` )
    public var PRODUCT_DEFINITIONS: (SDAI.SET<ePROCESS_PRODUCT_ASSOCIATION>/*[1:nil]*/ )?  {
      switch self {
      case ._ACTION(let entity): return entity.PRODUCT_DEFINITIONS
      default: return nil
      }
    }

    /// attribute of SELECT type ``sSUPPORTED_ITEM``
    /// - origin: ENTITY( ``eACTION`` )
    public var ID: tIDENTIFIER?  {
      switch self {
      case ._ACTION(let entity): return entity.ID
      default: return nil
      }
    }

    /// attribute of SELECT type ``sSUPPORTED_ITEM``
    /// - origin: ENTITY( ``eACTION_DIRECTIVE`` )
    public var REQUESTS: (SDAI.SET<eVERSIONED_ACTION_REQUEST>/*[1:nil]*/ )?  {
      switch self {
      case ._ACTION_DIRECTIVE(let entity): return entity.REQUESTS
      default: return nil
      }
    }

    /// attribute of SELECT type ``sSUPPORTED_ITEM``
    /// - origin: ENTITY( ``eACTION_DIRECTIVE`` )
    public var COMMENT: tTEXT?  {
      switch self {
      case ._ACTION_DIRECTIVE(let entity): return entity.COMMENT
      default: return nil
      }
    }

    /// attribute of SELECT type ``sSUPPORTED_ITEM``
    /// - origin: ENTITY( ``eACTION`` )
    /// - origin: ENTITY( ``eACTION_DIRECTIVE`` )
    /// - origin: ENTITY( ``eACTION_METHOD`` )
    public var NAME: tLABEL?  {
      switch self {
      case ._ACTION(let entity): return entity.NAME
      case ._ACTION_DIRECTIVE(let entity): return entity.NAME
      case ._ACTION_METHOD(let entity): return entity.NAME
      }
    }


    //MARK: - SDAIValue
    public func isValueEqual<T: SDAIValue>(to rhs: T) -> Bool {
      switch self {
      case ._ACTION(let selection): return selection.value.isValueEqual(to: rhs)
      case ._ACTION_DIRECTIVE(let selection): return selection.value.isValueEqual(to: rhs)
      case ._ACTION_METHOD(let selection): return selection.value.isValueEqual(to: rhs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?) -> Bool? {
      switch self {
      case ._ACTION(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._ACTION_DIRECTIVE(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._ACTION_METHOD(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      }
    }

    public func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      switch self {
      case ._ACTION(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._ACTION_DIRECTIVE(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._ACTION_METHOD(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      }
    }

    public func isValueEqual<T: SDAIValue>(to rhs: T, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      switch self {
      case ._ACTION(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._ACTION_DIRECTIVE(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._ACTION_METHOD(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      switch self {
      case ._ACTION(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._ACTION_DIRECTIVE(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._ACTION_METHOD(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      }
    }


    //MARK: SDAIGenericTypeBase
    public func copy() -> Self {
      switch self {
      case ._ACTION(let selection): return ._ACTION(selection.copy())
      case ._ACTION_DIRECTIVE(let selection): return ._ACTION_DIRECTIVE(selection.copy())
      case ._ACTION_METHOD(let selection): return ._ACTION_METHOD(selection.copy())
      }
    }

    //MARK: SDAIGenericType
    public var typeMembers: Set<SDAI.STRING> {
      var members: Set<SDAI.STRING> = [SDAI.STRING(Self.typeName)]
      switch self {
      case ._ACTION(let selection): members.formUnion(selection.typeMembers)
      case ._ACTION_DIRECTIVE(let selection): members.formUnion(selection.typeMembers)
      case ._ACTION_METHOD(let selection): members.formUnion(selection.typeMembers)
      }
      return members
    }

    public var entityReference: SDAI.EntityReference? {
      switch self {
      case ._ACTION(let selection): return selection.entityReference
      case ._ACTION_DIRECTIVE(let selection): return selection.entityReference
      case ._ACTION_METHOD(let selection): return selection.entityReference
      }
    }
    public var stringValue: SDAI.STRING? {
      switch self {
      case ._ACTION(let selection): return selection.stringValue
      case ._ACTION_DIRECTIVE(let selection): return selection.stringValue
      case ._ACTION_METHOD(let selection): return selection.stringValue
      }
    }
    public var binaryValue: SDAI.BINARY? {
      switch self {
      case ._ACTION(let selection): return selection.binaryValue
      case ._ACTION_DIRECTIVE(let selection): return selection.binaryValue
      case ._ACTION_METHOD(let selection): return selection.binaryValue
      }
    }
    public var logicalValue: SDAI.LOGICAL? {
      switch self {
      case ._ACTION(let selection): return selection.logicalValue
      case ._ACTION_DIRECTIVE(let selection): return selection.logicalValue
      case ._ACTION_METHOD(let selection): return selection.logicalValue
      }
    }
    public var booleanValue: SDAI.BOOLEAN? {
      switch self {
      case ._ACTION(let selection): return selection.booleanValue
      case ._ACTION_DIRECTIVE(let selection): return selection.booleanValue
      case ._ACTION_METHOD(let selection): return selection.booleanValue
      }
    }
    public var numberValue: SDAI.NUMBER? {
      switch self {
      case ._ACTION(let selection): return selection.numberValue
      case ._ACTION_DIRECTIVE(let selection): return selection.numberValue
      case ._ACTION_METHOD(let selection): return selection.numberValue
      }
    }
    public var realValue: SDAI.REAL? {
      switch self {
      case ._ACTION(let selection): return selection.realValue
      case ._ACTION_DIRECTIVE(let selection): return selection.realValue
      case ._ACTION_METHOD(let selection): return selection.realValue
      }
    }
    public var integerValue: SDAI.INTEGER? {
      switch self {
      case ._ACTION(let selection): return selection.integerValue
      case ._ACTION_DIRECTIVE(let selection): return selection.integerValue
      case ._ACTION_METHOD(let selection): return selection.integerValue
      }
    }
    public var genericEnumValue: SDAI.GenericEnumValue? {
      switch self {
      case ._ACTION(let selection): return selection.genericEnumValue
      case ._ACTION_DIRECTIVE(let selection): return selection.genericEnumValue
      case ._ACTION_METHOD(let selection): return selection.genericEnumValue
      }
    }
    public func arrayOptionalValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY_OPTIONAL<ELEM>? {
      switch self {
      case ._ACTION(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._ACTION_DIRECTIVE(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._ACTION_METHOD(let selection): return selection.arrayOptionalValue(elementType:elementType)
      }
    }
    public func arrayValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY<ELEM>? {
      switch self {
      case ._ACTION(let selection): return selection.arrayValue(elementType:elementType)
      case ._ACTION_DIRECTIVE(let selection): return selection.arrayValue(elementType:elementType)
      case ._ACTION_METHOD(let selection): return selection.arrayValue(elementType:elementType)
      }
    }
    public func listValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.LIST<ELEM>? {
      switch self {
      case ._ACTION(let selection): return selection.listValue(elementType:elementType)
      case ._ACTION_DIRECTIVE(let selection): return selection.listValue(elementType:elementType)
      case ._ACTION_METHOD(let selection): return selection.listValue(elementType:elementType)
      }
    }
    public func bagValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.BAG<ELEM>? {
      switch self {
      case ._ACTION(let selection): return selection.bagValue(elementType:elementType)
      case ._ACTION_DIRECTIVE(let selection): return selection.bagValue(elementType:elementType)
      case ._ACTION_METHOD(let selection): return selection.bagValue(elementType:elementType)
      }
    }
    public func setValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.SET<ELEM>? {
      switch self {
      case ._ACTION(let selection): return selection.setValue(elementType:elementType)
      case ._ACTION_DIRECTIVE(let selection): return selection.setValue(elementType:elementType)
      case ._ACTION_METHOD(let selection): return selection.setValue(elementType:elementType)
      }
    }
    public func enumValue<ENUM:SDAIEnumerationType>(enumType:ENUM.Type) -> ENUM? {
      switch self {
      case ._ACTION(let selection): return selection.enumValue(enumType:enumType)
      case ._ACTION_DIRECTIVE(let selection): return selection.enumValue(enumType:enumType)
      case ._ACTION_METHOD(let selection): return selection.enumValue(enumType:enumType)
      }
    }

    //MARK: SDAIUnderlyingType
    public typealias FundamentalType = Self
    public static var typeName: String = "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SUPPORTED_ITEM"
    public var asFundamentalType: FundamentalType { return self }

    //MARK: SDAIObservableAggregateElement
    public var entityReferences: AnySequence<SDAI.EntityReference> {
      switch self {
      case ._ACTION(let entity): return entity.entityReferences
      case ._ACTION_DIRECTIVE(let entity): return entity.entityReferences
      case ._ACTION_METHOD(let entity): return entity.entityReferences
      }
    }

    public mutating func configure(with observer: SDAI.EntityReferenceObserver) {
      switch self {
      case ._ACTION(let entity): 
        entity.configure(with: observer)
        self = ._ACTION(entity)
      case ._ACTION_DIRECTIVE(let entity): 
        entity.configure(with: observer)
        self = ._ACTION_DIRECTIVE(entity)
      case ._ACTION_METHOD(let entity): 
        entity.configure(with: observer)
        self = ._ACTION_METHOD(entity)
      }
    }

    public mutating func teardownObserver() {
      switch self {
      case ._ACTION(let entity): 
        entity.teardownObserver()
        self = ._ACTION(entity)
      case ._ACTION_DIRECTIVE(let entity): 
        entity.teardownObserver()
        self = ._ACTION_DIRECTIVE(entity)
      case ._ACTION_METHOD(let entity): 
        entity.teardownObserver()
        self = ._ACTION_METHOD(entity)
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
      case ._ACTION(let selectValue): result = eACTION.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\ACTION")
      case ._ACTION_DIRECTIVE(let selectValue): 
        result = eACTION_DIRECTIVE.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\ACTION_DIRECTIVE")
      case ._ACTION_METHOD(let selectValue): 
        result = eACTION_METHOD.validateWhereRules(instance:selectValue, prefix:prefix + "\\ACTION_METHOD")
      case nil: break
      }

      return result
    }

  }

}


//MARK: - SELECT TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sSUPPORTED_ITEM__type: SDAISelectType {

  //MARK: GROUP REFERENCES
  var super_eACTION_METHOD: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eACTION_METHOD? { get }
  var super_eACTION_DIRECTIVE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eACTION_DIRECTIVE? { get }
  var super_eACTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eACTION? { get }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var DESCRIPTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tTEXT?  { get }
  var PROPERTIES: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePROCESS_PROPERTY_ASSOCIATION>/*[
    1:nil]*/ )?  { get }
  var DIRECTIVE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eACTION_DIRECTIVE?  { get }
  var ANALYSIS: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tTEXT?  { get }
  var CHOSEN_METHOD: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eACTION_METHOD?  { get }
  var PURPOSE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tTEXT?  { get }
  var CONSEQUENCE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tTEXT?  { get }
  var PRODUCT_DEFINITIONS: (SDAI.SET<
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePROCESS_PRODUCT_ASSOCIATION>/*[1:nil]*/ )?  { get }
  var ID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER?  { get }
  var REQUESTS: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eVERSIONED_ACTION_REQUEST>/*[1:nil]*/ )?  { get }
  var COMMENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tTEXT?  { get }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { get }
}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sSUPPORTED_ITEM__subtype: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sSUPPORTED_ITEM__type, SDAIDefinedType
where Supertype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sSUPPORTED_ITEM__type
{}

public extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sSUPPORTED_ITEM__subtype {
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
  var super_eACTION_METHOD: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eACTION_METHOD? { rep.super_eACTION_METHOD }
  var super_eACTION_DIRECTIVE: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eACTION_DIRECTIVE? { rep.super_eACTION_DIRECTIVE }
  var super_eACTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eACTION? { rep.super_eACTION }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var DESCRIPTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tTEXT?  { rep.DESCRIPTION }
  var PROPERTIES: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePROCESS_PROPERTY_ASSOCIATION>/*[
    1:nil]*/ )?  { rep.PROPERTIES }
  var DIRECTIVE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eACTION_DIRECTIVE?  { rep.DIRECTIVE }
  var ANALYSIS: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tTEXT?  { rep.ANALYSIS }
  var CHOSEN_METHOD: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eACTION_METHOD?  { rep.CHOSEN_METHOD }
  var PURPOSE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tTEXT?  { rep.PURPOSE }
  var CONSEQUENCE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tTEXT?  { rep.CONSEQUENCE }
  var PRODUCT_DEFINITIONS: (SDAI.SET<
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePROCESS_PRODUCT_ASSOCIATION>/*[1:nil]*/ )?  { rep.PRODUCT_DEFINITIONS }
  var ID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER?  { rep.ID }
  var REQUESTS: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eVERSIONED_ACTION_REQUEST>/*[1:nil]*/ )?  { rep.REQUESTS }
  var COMMENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tTEXT?  { rep.COMMENT }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { rep.NAME }
}

