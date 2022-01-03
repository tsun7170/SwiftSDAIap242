/* file: product_or_formation_or_definition.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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
  TYPE product_or_formation_or_definition = SELECT
    ( product (*ENTITY*),
     product_definition (*ENTITY*),
     product_definition_formation (*ENTITY*) );
  END_TYPE; -- product_or_formation_or_definition (line:4965 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES FOR SELECT
/*
  product (*ENTITY*):
  ATTR:  description: text *** Multiple Select Case Sources ***
  ATTR:  id: identifier *** Multiple Select Case Sources ***
  ATTR:  frame_of_reference: SET [1 : ?] OF product_context (AMBIGUOUS (SELECT LEVEL))
  ATTR:  name: label *** Multiple Select Case Sources ***

  product_definition (*ENTITY*):
  ATTR:  description: text *** Multiple Select Case Sources ***
  ATTR:  defined_version: collection_version
  ATTR:  documentation_ids: SET [1 : ?] OF document
  ATTR:  relating_product_definition: linear_array_placement_group_component
  ATTR:  id: identifier *** Multiple Select Case Sources ***
  ATTR:  frame_of_reference: product_definition_context (AMBIGUOUS (SELECT LEVEL))
  ATTR:  definition: assembly_component
  ATTR:  related_product_definition: linear_array_placement_group_component
  ATTR:  name: label *** Multiple Select Case Sources ***
  ATTR:  formation: product_definition_formation

  product_definition_formation (*ENTITY*):
  ATTR:  description: text *** Multiple Select Case Sources ***
  ATTR:  status: STRING
  ATTR:  of_collection: collection
  ATTR:  make_or_buy: source
  ATTR:  specification: SET [1 : ?] OF product_definition
  ATTR:  id: identifier *** Multiple Select Case Sources ***
  ATTR:  of_product: product

*/

/** SELECT type
- EXPRESS:
```express
  TYPE product_or_formation_or_definition = SELECT
    ( product (*ENTITY*),
     product_definition (*ENTITY*),
     product_definition_formation (*ENTITY*) );
  END_TYPE; -- product_or_formation_or_definition (line:4965 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public enum sPRODUCT_OR_FORMATION_OR_DEFINITION : SDAIValue, AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sPRODUCT_OR_FORMATION_OR_DEFINITION__type {

    /// SELECT case ``ePRODUCT`` (ENTITY) in ``sPRODUCT_OR_FORMATION_OR_DEFINITION``
    case _PRODUCT(ePRODUCT)	// (ENTITY)

    /// SELECT case ``ePRODUCT_DEFINITION`` (ENTITY) in ``sPRODUCT_OR_FORMATION_OR_DEFINITION``
    case _PRODUCT_DEFINITION(ePRODUCT_DEFINITION)	// (ENTITY)

    /// SELECT case ``ePRODUCT_DEFINITION_FORMATION`` (ENTITY) in ``sPRODUCT_OR_FORMATION_OR_DEFINITION``
    case _PRODUCT_DEFINITION_FORMATION(ePRODUCT_DEFINITION_FORMATION)	// (ENTITY)

    //MARK: - CONSTRUCTORS
    public init(fundamental: FundamentalType) { self = fundamental }

    public init?<T: SDAIUnderlyingType>(possiblyFrom underlyingType: T?){
      return nil
    }

    public init?(possiblyFrom complex: SDAI.ComplexEntity?) {
      guard let complex = complex else { return nil }

      if let base = complex.entityReference(ePRODUCT.self) {self = ._PRODUCT(base) }
      else if let base = complex.entityReference(ePRODUCT_DEFINITION.self) {self = ._PRODUCT_DEFINITION(base) }
      else if let base = complex.entityReference(ePRODUCT_DEFINITION_FORMATION.self) {self = ._PRODUCT_DEFINITION_FORMATION(base) }
      else { return nil }
    }

    public init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let select = generic else { return nil }

      if let fundamental = select as? Self {
        self.init(fundamental: fundamental)
      }
      else if let base = ePRODUCT.convert(fromGeneric: select) {
        self = ._PRODUCT(base)
      }
      else if let base = ePRODUCT_DEFINITION.convert(fromGeneric: select) {
        self = ._PRODUCT_DEFINITION(base)
      }
      else if let base = ePRODUCT_DEFINITION_FORMATION.convert(fromGeneric: select) {
        self = ._PRODUCT_DEFINITION_FORMATION(base)
      }
      else { return nil }
    }

    // InitializableByP21Parameter
    public static var bareTypeName: String = "PRODUCT_OR_FORMATION_OR_DEFINITION"

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
    public var super_ePRODUCT_DEFINITION: ePRODUCT_DEFINITION? {
      switch self {
      case ._PRODUCT_DEFINITION(let entity): return entity
      default: return nil
      }
    }

    public var super_ePRODUCT: ePRODUCT? {
      switch self {
      case ._PRODUCT(let entity): return entity
      default: return nil
      }
    }

    public var super_ePRODUCT_DEFINITION_FORMATION: ePRODUCT_DEFINITION_FORMATION? {
      switch self {
      case ._PRODUCT_DEFINITION_FORMATION(let entity): return entity
      default: return nil
      }
    }


    //MARK: - ENTITY ATTRIBUTE REFERENCES
    /// attribute of SELECT type ``sPRODUCT_OR_FORMATION_OR_DEFINITION``
    /// - origin: ENTITY( ``ePRODUCT`` )
    /// - origin: ENTITY( ``ePRODUCT_DEFINITION`` )
    /// - origin: ENTITY( ``ePRODUCT_DEFINITION_FORMATION`` )
    public var DESCRIPTION: tTEXT?  {
      switch self {
      case ._PRODUCT(let entity): return entity.DESCRIPTION
      case ._PRODUCT_DEFINITION(let entity): return entity.DESCRIPTION
      case ._PRODUCT_DEFINITION_FORMATION(let entity): return entity.DESCRIPTION
      }
    }

    /// attribute of SELECT type ``sPRODUCT_OR_FORMATION_OR_DEFINITION``
    /// - origin: ENTITY( ``ePRODUCT_DEFINITION_FORMATION`` )
    public var STATUS: SDAI.STRING?  {
      switch self {
      case ._PRODUCT_DEFINITION_FORMATION(let entity): return entity.STATUS
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPRODUCT_OR_FORMATION_OR_DEFINITION``
    /// - origin: ENTITY( ``ePRODUCT_DEFINITION`` )
    public var DEFINED_VERSION: eCOLLECTION_VERSION?  {
      switch self {
      case ._PRODUCT_DEFINITION(let entity): return entity.DEFINED_VERSION
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPRODUCT_OR_FORMATION_OR_DEFINITION``
    /// - origin: ENTITY( ``ePRODUCT_DEFINITION_FORMATION`` )
    public var OF_COLLECTION: eCOLLECTION?  {
      switch self {
      case ._PRODUCT_DEFINITION_FORMATION(let entity): return entity.OF_COLLECTION
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPRODUCT_OR_FORMATION_OR_DEFINITION``
    /// - origin: ENTITY( ``ePRODUCT_DEFINITION_FORMATION`` )
    public var MAKE_OR_BUY: nSOURCE?  {
      switch self {
      case ._PRODUCT_DEFINITION_FORMATION(let entity): return entity.MAKE_OR_BUY
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPRODUCT_OR_FORMATION_OR_DEFINITION``
    /// - origin: ENTITY( ``ePRODUCT_DEFINITION`` )
    public var DOCUMENTATION_IDS: (SDAI.SET<eDOCUMENT>/*[1:nil]*/ )?  {
      switch self {
      case ._PRODUCT_DEFINITION(let entity): return entity.DOCUMENTATION_IDS
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPRODUCT_OR_FORMATION_OR_DEFINITION``
    /// - origin: ENTITY( ``ePRODUCT_DEFINITION_FORMATION`` )
    public var SPECIFICATION: (SDAI.SET<ePRODUCT_DEFINITION>/*[1:nil]*/ )?  {
      switch self {
      case ._PRODUCT_DEFINITION_FORMATION(let entity): return entity.SPECIFICATION
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPRODUCT_OR_FORMATION_OR_DEFINITION``
    /// - origin: ENTITY( ``ePRODUCT_DEFINITION`` )
    public var RELATING_PRODUCT_DEFINITION: eLINEAR_ARRAY_PLACEMENT_GROUP_COMPONENT?  {
      switch self {
      case ._PRODUCT_DEFINITION(let entity): return entity.RELATING_PRODUCT_DEFINITION
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPRODUCT_OR_FORMATION_OR_DEFINITION``
    /// - origin: ENTITY( ``ePRODUCT`` )
    /// - origin: ENTITY( ``ePRODUCT_DEFINITION`` )
    /// - origin: ENTITY( ``ePRODUCT_DEFINITION_FORMATION`` )
    public var ID: tIDENTIFIER?  {
      switch self {
      case ._PRODUCT(let entity): return entity.ID
      case ._PRODUCT_DEFINITION(let entity): return entity.ID
      case ._PRODUCT_DEFINITION_FORMATION(let entity): return entity.ID
      }
    }

    /// attribute of SELECT type ``sPRODUCT_OR_FORMATION_OR_DEFINITION``
    /// - origin: ENTITY( ``ePRODUCT_DEFINITION_FORMATION`` )
    public var OF_PRODUCT: ePRODUCT?  {
      switch self {
      case ._PRODUCT_DEFINITION_FORMATION(let entity): return entity.OF_PRODUCT
      default: return nil
      }
    }

    //MARK: var FRAME_OF_REFERENCE: (AMBIGUOUS)

    /// attribute of SELECT type ``sPRODUCT_OR_FORMATION_OR_DEFINITION``
    /// - origin: ENTITY( ``ePRODUCT_DEFINITION`` )
    public var DEFINITION: eASSEMBLY_COMPONENT?  {
      switch self {
      case ._PRODUCT_DEFINITION(let entity): return entity.DEFINITION
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPRODUCT_OR_FORMATION_OR_DEFINITION``
    /// - origin: ENTITY( ``ePRODUCT_DEFINITION`` )
    public var RELATED_PRODUCT_DEFINITION: eLINEAR_ARRAY_PLACEMENT_GROUP_COMPONENT?  {
      switch self {
      case ._PRODUCT_DEFINITION(let entity): return entity.RELATED_PRODUCT_DEFINITION
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPRODUCT_OR_FORMATION_OR_DEFINITION``
    /// - origin: ENTITY( ``ePRODUCT`` )
    /// - origin: ENTITY( ``ePRODUCT_DEFINITION`` )
    public var NAME: tLABEL?  {
      switch self {
      case ._PRODUCT(let entity): return entity.NAME
      case ._PRODUCT_DEFINITION(let entity): return entity.NAME
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPRODUCT_OR_FORMATION_OR_DEFINITION``
    /// - origin: ENTITY( ``ePRODUCT_DEFINITION`` )
    public var FORMATION: ePRODUCT_DEFINITION_FORMATION?  {
      switch self {
      case ._PRODUCT_DEFINITION(let entity): return entity.FORMATION
      default: return nil
      }
    }


    //MARK: - SDAIValue
    public func isValueEqual<T: SDAIValue>(to rhs: T) -> Bool {
      switch self {
      case ._PRODUCT(let selection): return selection.value.isValueEqual(to: rhs)
      case ._PRODUCT_DEFINITION(let selection): return selection.value.isValueEqual(to: rhs)
      case ._PRODUCT_DEFINITION_FORMATION(let selection): return selection.value.isValueEqual(to: rhs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?) -> Bool? {
      switch self {
      case ._PRODUCT(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._PRODUCT_DEFINITION(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._PRODUCT_DEFINITION_FORMATION(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      }
    }

    public func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      switch self {
      case ._PRODUCT(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._PRODUCT_DEFINITION(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._PRODUCT_DEFINITION_FORMATION(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      }
    }

    public func isValueEqual<T: SDAIValue>(to rhs: T, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      switch self {
      case ._PRODUCT(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._PRODUCT_DEFINITION(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._PRODUCT_DEFINITION_FORMATION(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      switch self {
      case ._PRODUCT(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._PRODUCT_DEFINITION(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._PRODUCT_DEFINITION_FORMATION(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      }
    }


    //MARK: SDAIGenericTypeBase
    public func copy() -> Self {
      switch self {
      case ._PRODUCT(let selection): return ._PRODUCT(selection.copy())
      case ._PRODUCT_DEFINITION(let selection): return ._PRODUCT_DEFINITION(selection.copy())
      case ._PRODUCT_DEFINITION_FORMATION(let selection): return ._PRODUCT_DEFINITION_FORMATION(selection.copy())
      }
    }

    //MARK: SDAIGenericType
    public var typeMembers: Set<SDAI.STRING> {
      var members: Set<SDAI.STRING> = [SDAI.STRING(Self.typeName)]
      switch self {
      case ._PRODUCT(let selection): members.formUnion(selection.typeMembers)
      case ._PRODUCT_DEFINITION(let selection): members.formUnion(selection.typeMembers)
      case ._PRODUCT_DEFINITION_FORMATION(let selection): members.formUnion(selection.typeMembers)
      }
      return members
    }

    public var entityReference: SDAI.EntityReference? {
      switch self {
      case ._PRODUCT(let selection): return selection.entityReference
      case ._PRODUCT_DEFINITION(let selection): return selection.entityReference
      case ._PRODUCT_DEFINITION_FORMATION(let selection): return selection.entityReference
      }
    }
    public var stringValue: SDAI.STRING? {
      switch self {
      case ._PRODUCT(let selection): return selection.stringValue
      case ._PRODUCT_DEFINITION(let selection): return selection.stringValue
      case ._PRODUCT_DEFINITION_FORMATION(let selection): return selection.stringValue
      }
    }
    public var binaryValue: SDAI.BINARY? {
      switch self {
      case ._PRODUCT(let selection): return selection.binaryValue
      case ._PRODUCT_DEFINITION(let selection): return selection.binaryValue
      case ._PRODUCT_DEFINITION_FORMATION(let selection): return selection.binaryValue
      }
    }
    public var logicalValue: SDAI.LOGICAL? {
      switch self {
      case ._PRODUCT(let selection): return selection.logicalValue
      case ._PRODUCT_DEFINITION(let selection): return selection.logicalValue
      case ._PRODUCT_DEFINITION_FORMATION(let selection): return selection.logicalValue
      }
    }
    public var booleanValue: SDAI.BOOLEAN? {
      switch self {
      case ._PRODUCT(let selection): return selection.booleanValue
      case ._PRODUCT_DEFINITION(let selection): return selection.booleanValue
      case ._PRODUCT_DEFINITION_FORMATION(let selection): return selection.booleanValue
      }
    }
    public var numberValue: SDAI.NUMBER? {
      switch self {
      case ._PRODUCT(let selection): return selection.numberValue
      case ._PRODUCT_DEFINITION(let selection): return selection.numberValue
      case ._PRODUCT_DEFINITION_FORMATION(let selection): return selection.numberValue
      }
    }
    public var realValue: SDAI.REAL? {
      switch self {
      case ._PRODUCT(let selection): return selection.realValue
      case ._PRODUCT_DEFINITION(let selection): return selection.realValue
      case ._PRODUCT_DEFINITION_FORMATION(let selection): return selection.realValue
      }
    }
    public var integerValue: SDAI.INTEGER? {
      switch self {
      case ._PRODUCT(let selection): return selection.integerValue
      case ._PRODUCT_DEFINITION(let selection): return selection.integerValue
      case ._PRODUCT_DEFINITION_FORMATION(let selection): return selection.integerValue
      }
    }
    public var genericEnumValue: SDAI.GenericEnumValue? {
      switch self {
      case ._PRODUCT(let selection): return selection.genericEnumValue
      case ._PRODUCT_DEFINITION(let selection): return selection.genericEnumValue
      case ._PRODUCT_DEFINITION_FORMATION(let selection): return selection.genericEnumValue
      }
    }
    public func arrayOptionalValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY_OPTIONAL<ELEM>? {
      switch self {
      case ._PRODUCT(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._PRODUCT_DEFINITION(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._PRODUCT_DEFINITION_FORMATION(let selection): return selection.arrayOptionalValue(elementType:elementType)
      }
    }
    public func arrayValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY<ELEM>? {
      switch self {
      case ._PRODUCT(let selection): return selection.arrayValue(elementType:elementType)
      case ._PRODUCT_DEFINITION(let selection): return selection.arrayValue(elementType:elementType)
      case ._PRODUCT_DEFINITION_FORMATION(let selection): return selection.arrayValue(elementType:elementType)
      }
    }
    public func listValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.LIST<ELEM>? {
      switch self {
      case ._PRODUCT(let selection): return selection.listValue(elementType:elementType)
      case ._PRODUCT_DEFINITION(let selection): return selection.listValue(elementType:elementType)
      case ._PRODUCT_DEFINITION_FORMATION(let selection): return selection.listValue(elementType:elementType)
      }
    }
    public func bagValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.BAG<ELEM>? {
      switch self {
      case ._PRODUCT(let selection): return selection.bagValue(elementType:elementType)
      case ._PRODUCT_DEFINITION(let selection): return selection.bagValue(elementType:elementType)
      case ._PRODUCT_DEFINITION_FORMATION(let selection): return selection.bagValue(elementType:elementType)
      }
    }
    public func setValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.SET<ELEM>? {
      switch self {
      case ._PRODUCT(let selection): return selection.setValue(elementType:elementType)
      case ._PRODUCT_DEFINITION(let selection): return selection.setValue(elementType:elementType)
      case ._PRODUCT_DEFINITION_FORMATION(let selection): return selection.setValue(elementType:elementType)
      }
    }
    public func enumValue<ENUM:SDAIEnumerationType>(enumType:ENUM.Type) -> ENUM? {
      switch self {
      case ._PRODUCT(let selection): return selection.enumValue(enumType:enumType)
      case ._PRODUCT_DEFINITION(let selection): return selection.enumValue(enumType:enumType)
      case ._PRODUCT_DEFINITION_FORMATION(let selection): return selection.enumValue(enumType:enumType)
      }
    }

    //MARK: SDAIUnderlyingType
    public typealias FundamentalType = Self
    public static var typeName: String = 
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT_OR_FORMATION_OR_DEFINITION"
    public var asFundamentalType: FundamentalType { return self }

    //MARK: SDAIObservableAggregateElement
    public var entityReferences: AnySequence<SDAI.EntityReference> {
      switch self {
      case ._PRODUCT(let entity): return entity.entityReferences
      case ._PRODUCT_DEFINITION(let entity): return entity.entityReferences
      case ._PRODUCT_DEFINITION_FORMATION(let entity): return entity.entityReferences
      }
    }

    public mutating func configure(with observer: SDAI.EntityReferenceObserver) {
      switch self {
      case ._PRODUCT(let entity): 
        entity.configure(with: observer)
        self = ._PRODUCT(entity)
      case ._PRODUCT_DEFINITION(let entity): 
        entity.configure(with: observer)
        self = ._PRODUCT_DEFINITION(entity)
      case ._PRODUCT_DEFINITION_FORMATION(let entity): 
        entity.configure(with: observer)
        self = ._PRODUCT_DEFINITION_FORMATION(entity)
      }
    }

    public mutating func teardownObserver() {
      switch self {
      case ._PRODUCT(let entity): 
        entity.teardownObserver()
        self = ._PRODUCT(entity)
      case ._PRODUCT_DEFINITION(let entity): 
        entity.teardownObserver()
        self = ._PRODUCT_DEFINITION(entity)
      case ._PRODUCT_DEFINITION_FORMATION(let entity): 
        entity.teardownObserver()
        self = ._PRODUCT_DEFINITION_FORMATION(entity)
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
      case ._PRODUCT(let selectValue): result = ePRODUCT.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\PRODUCT")
      case ._PRODUCT_DEFINITION(let selectValue): 
        result = ePRODUCT_DEFINITION.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\PRODUCT_DEFINITION")
      case ._PRODUCT_DEFINITION_FORMATION(let selectValue): 
        result = ePRODUCT_DEFINITION_FORMATION.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\PRODUCT_DEFINITION_FORMATION")
      case nil: break
      }

      return result
    }

  }

}


//MARK: - SELECT TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sPRODUCT_OR_FORMATION_OR_DEFINITION__type: 
  SDAISelectType {

  //MARK: GROUP REFERENCES
  var super_ePRODUCT_DEFINITION: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRODUCT_DEFINITION? { get }
  var super_ePRODUCT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRODUCT? { get }
  var super_ePRODUCT_DEFINITION_FORMATION: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRODUCT_DEFINITION_FORMATION? { get }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var DESCRIPTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tTEXT?  { get }
  var STATUS: SDAI.STRING?  { get }
  var DEFINED_VERSION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCOLLECTION_VERSION?  { get }
  var OF_COLLECTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCOLLECTION?  { get }
  var MAKE_OR_BUY: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.nSOURCE?  { get }
  var DOCUMENTATION_IDS: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDOCUMENT>/*[1:nil]*/ )?  { get }
  var SPECIFICATION: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRODUCT_DEFINITION>/*[1:nil]*/ )?  { get }
  var RELATING_PRODUCT_DEFINITION: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eLINEAR_ARRAY_PLACEMENT_GROUP_COMPONENT?  { get }
  var ID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER?  { get }
  var OF_PRODUCT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRODUCT?  { get }
  var DEFINITION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eASSEMBLY_COMPONENT?  { get }
  var RELATED_PRODUCT_DEFINITION: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eLINEAR_ARRAY_PLACEMENT_GROUP_COMPONENT?  { get }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { get }
  var FORMATION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRODUCT_DEFINITION_FORMATION?  { get }
}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sPRODUCT_OR_FORMATION_OR_DEFINITION__subtype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sPRODUCT_OR_FORMATION_OR_DEFINITION__type, SDAIDefinedType
where Supertype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sPRODUCT_OR_FORMATION_OR_DEFINITION__type
{}

public extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sPRODUCT_OR_FORMATION_OR_DEFINITION__subtype {
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
  var super_ePRODUCT_DEFINITION: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRODUCT_DEFINITION? { rep.super_ePRODUCT_DEFINITION }
  var super_ePRODUCT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRODUCT? { rep.super_ePRODUCT }
  var super_ePRODUCT_DEFINITION_FORMATION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRODUCT_DEFINITION_FORMATION? { rep.super_ePRODUCT_DEFINITION_FORMATION }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var DESCRIPTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tTEXT?  { rep.DESCRIPTION }
  var STATUS: SDAI.STRING?  { rep.STATUS }
  var DEFINED_VERSION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCOLLECTION_VERSION?  { rep.DEFINED_VERSION }
  var OF_COLLECTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCOLLECTION?  { rep.OF_COLLECTION }
  var MAKE_OR_BUY: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.nSOURCE?  { rep.MAKE_OR_BUY }
  var DOCUMENTATION_IDS: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDOCUMENT>/*[1:nil]*/ )?  { rep.DOCUMENTATION_IDS }
  var SPECIFICATION: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRODUCT_DEFINITION>/*[1:nil]*/ )?  { rep.SPECIFICATION }
  var RELATING_PRODUCT_DEFINITION: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eLINEAR_ARRAY_PLACEMENT_GROUP_COMPONENT?  { rep.RELATING_PRODUCT_DEFINITION }
  var ID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER?  { rep.ID }
  var OF_PRODUCT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRODUCT?  { rep.OF_PRODUCT }
  var DEFINITION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eASSEMBLY_COMPONENT?  { rep.DEFINITION }
  var RELATED_PRODUCT_DEFINITION: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eLINEAR_ARRAY_PLACEMENT_GROUP_COMPONENT?  { rep.RELATED_PRODUCT_DEFINITION }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { rep.NAME }
  var FORMATION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRODUCT_DEFINITION_FORMATION?  { rep.FORMATION }
}

