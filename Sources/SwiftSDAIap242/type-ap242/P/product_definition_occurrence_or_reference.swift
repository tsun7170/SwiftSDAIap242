/* file: product_definition_occurrence_or_reference.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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
  TYPE product_definition_occurrence_or_reference = SELECT
    ( product_definition_occurrence (*ENTITY*),
     product_definition_occurrence_reference (*ENTITY*) );
  END_TYPE; -- product_definition_occurrence_or_reference (line:4931 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES FOR SELECT
/*
  product_definition_occurrence (*ENTITY*):
  ATTR:  description: text
  ATTR:  descendant_occurrences: SET [0 : ?] OF product_definition_specified_occurrence
  ATTR:  quantity: measure_with_unit
  ATTR:  occurrence_usage: product_definition_occurrence_or_reference
  ATTR:  child_occurrences: SET [0 : ?] OF product_definition_specified_occurrence
  ATTR:  id: identifier
  ATTR:  definition: product_definition_or_reference_or_occurrence
  ATTR:  name: label
  ATTR:  assembly_usages: SET [0 : ?] OF assembly_component_usage

  product_definition_occurrence_reference (*ENTITY*):
  ATTR:  product_occurrence_id: identifier
  ATTR:  product_definition_id: identifier
  ATTR:  product_definition_formation_id: identifier
  ATTR:  id_owning_organization_name: label
  ATTR:  product_id: identifier
  ATTR:  source: external_source

*/

/** SELECT type
- EXPRESS:
```express
  TYPE product_definition_occurrence_or_reference = SELECT
    ( product_definition_occurrence (*ENTITY*),
     product_definition_occurrence_reference (*ENTITY*) );
  END_TYPE; -- product_definition_occurrence_or_reference (line:4931 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public enum sPRODUCT_DEFINITION_OCCURRENCE_OR_REFERENCE : SDAIValue, AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sPRODUCT_DEFINITION_OCCURRENCE_OR_REFERENCE__type {

    /// SELECT case ``ePRODUCT_DEFINITION_OCCURRENCE`` (ENTITY) in ``sPRODUCT_DEFINITION_OCCURRENCE_OR_REFERENCE``
    case _PRODUCT_DEFINITION_OCCURRENCE(ePRODUCT_DEFINITION_OCCURRENCE)	// (ENTITY)

    /// SELECT case ``ePRODUCT_DEFINITION_OCCURRENCE_REFERENCE`` (ENTITY) in ``sPRODUCT_DEFINITION_OCCURRENCE_OR_REFERENCE``
    case _PRODUCT_DEFINITION_OCCURRENCE_REFERENCE(ePRODUCT_DEFINITION_OCCURRENCE_REFERENCE)	// (ENTITY)

    //MARK: - CONSTRUCTORS
    public init(fundamental: FundamentalType) { self = fundamental }

    public init?<T: SDAIUnderlyingType>(possiblyFrom underlyingType: T?){
      return nil
    }

    public init?(possiblyFrom complex: SDAI.ComplexEntity?) {
      guard let complex = complex else { return nil }

      if let base = complex.entityReference(ePRODUCT_DEFINITION_OCCURRENCE.self) {self = ._PRODUCT_DEFINITION_OCCURRENCE(base) }
      else if let base = complex.entityReference(ePRODUCT_DEFINITION_OCCURRENCE_REFERENCE.self) {self = ._PRODUCT_DEFINITION_OCCURRENCE_REFERENCE(base) }
      else { return nil }
    }

    public init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let select = generic else { return nil }

      if let fundamental = select as? Self {
        self.init(fundamental: fundamental)
      }
      else if let base = ePRODUCT_DEFINITION_OCCURRENCE.convert(fromGeneric: select) {
        self = ._PRODUCT_DEFINITION_OCCURRENCE(base)
      }
      else if let base = ePRODUCT_DEFINITION_OCCURRENCE_REFERENCE.convert(fromGeneric: select) {
        self = ._PRODUCT_DEFINITION_OCCURRENCE_REFERENCE(base)
      }
      else { return nil }
    }

    // InitializableByP21Parameter
    public static var bareTypeName: String = "PRODUCT_DEFINITION_OCCURRENCE_OR_REFERENCE"

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
    public var super_eGENERIC_PRODUCT_DEFINITION_REFERENCE: eGENERIC_PRODUCT_DEFINITION_REFERENCE? {
      switch self {
      case ._PRODUCT_DEFINITION_OCCURRENCE_REFERENCE(let entity): return entity
        .super_eGENERIC_PRODUCT_DEFINITION_REFERENCE
      default: return nil
      }
    }

    public var super_ePRODUCT_DEFINITION_OCCURRENCE: ePRODUCT_DEFINITION_OCCURRENCE? {
      switch self {
      case ._PRODUCT_DEFINITION_OCCURRENCE(let entity): return entity
      default: return nil
      }
    }

    public var super_ePRODUCT_DEFINITION_OCCURRENCE_REFERENCE: ePRODUCT_DEFINITION_OCCURRENCE_REFERENCE? {
      switch self {
      case ._PRODUCT_DEFINITION_OCCURRENCE_REFERENCE(let entity): return entity
      default: return nil
      }
    }

    public var super_ePRODUCT_DEFINITION_REFERENCE: ePRODUCT_DEFINITION_REFERENCE? {
      switch self {
      case ._PRODUCT_DEFINITION_OCCURRENCE_REFERENCE(let entity): return entity
        .super_ePRODUCT_DEFINITION_REFERENCE
      default: return nil
      }
    }


    //MARK: - ENTITY ATTRIBUTE REFERENCES
    /// attribute of SELECT type ``sPRODUCT_DEFINITION_OCCURRENCE_OR_REFERENCE``
    /// - origin: ENTITY( ``ePRODUCT_DEFINITION_OCCURRENCE_REFERENCE`` )
    public var PRODUCT_OCCURRENCE_ID: tIDENTIFIER?  {
      switch self {
      case ._PRODUCT_DEFINITION_OCCURRENCE_REFERENCE(let entity): return entity.PRODUCT_OCCURRENCE_ID
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPRODUCT_DEFINITION_OCCURRENCE_OR_REFERENCE``
    /// - origin: ENTITY( ``ePRODUCT_DEFINITION_OCCURRENCE_REFERENCE`` )
    public var PRODUCT_DEFINITION_ID: tIDENTIFIER?  {
      switch self {
      case ._PRODUCT_DEFINITION_OCCURRENCE_REFERENCE(let entity): return entity.PRODUCT_DEFINITION_ID
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPRODUCT_DEFINITION_OCCURRENCE_OR_REFERENCE``
    /// - origin: ENTITY( ``ePRODUCT_DEFINITION_OCCURRENCE`` )
    public var DESCRIPTION: tTEXT?  {
      switch self {
      case ._PRODUCT_DEFINITION_OCCURRENCE(let entity): return entity.DESCRIPTION
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPRODUCT_DEFINITION_OCCURRENCE_OR_REFERENCE``
    /// - origin: ENTITY( ``ePRODUCT_DEFINITION_OCCURRENCE`` )
    public var DESCENDANT_OCCURRENCES: (SDAI.SET<ePRODUCT_DEFINITION_SPECIFIED_OCCURRENCE>/*[0:nil]*/ )?  {
      switch self {
      case ._PRODUCT_DEFINITION_OCCURRENCE(let entity): return entity.DESCENDANT_OCCURRENCES
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPRODUCT_DEFINITION_OCCURRENCE_OR_REFERENCE``
    /// - origin: ENTITY( ``ePRODUCT_DEFINITION_OCCURRENCE_REFERENCE`` )
    public var PRODUCT_DEFINITION_FORMATION_ID: tIDENTIFIER?  {
      switch self {
      case ._PRODUCT_DEFINITION_OCCURRENCE_REFERENCE(let entity): return 
        entity.PRODUCT_DEFINITION_FORMATION_ID
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPRODUCT_DEFINITION_OCCURRENCE_OR_REFERENCE``
    /// - origin: ENTITY( ``ePRODUCT_DEFINITION_OCCURRENCE`` )
    public var QUANTITY: eMEASURE_WITH_UNIT?  {
      switch self {
      case ._PRODUCT_DEFINITION_OCCURRENCE(let entity): return entity.QUANTITY
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPRODUCT_DEFINITION_OCCURRENCE_OR_REFERENCE``
    /// - origin: ENTITY( ``ePRODUCT_DEFINITION_OCCURRENCE_REFERENCE`` )
    public var ID_OWNING_ORGANIZATION_NAME: tLABEL?  {
      switch self {
      case ._PRODUCT_DEFINITION_OCCURRENCE_REFERENCE(let entity): return entity.ID_OWNING_ORGANIZATION_NAME
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPRODUCT_DEFINITION_OCCURRENCE_OR_REFERENCE``
    /// - origin: ENTITY( ``ePRODUCT_DEFINITION_OCCURRENCE`` )
    public var OCCURRENCE_USAGE: sPRODUCT_DEFINITION_OCCURRENCE_OR_REFERENCE?  {
      switch self {
      case ._PRODUCT_DEFINITION_OCCURRENCE(let entity): return entity.OCCURRENCE_USAGE
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPRODUCT_DEFINITION_OCCURRENCE_OR_REFERENCE``
    /// - origin: ENTITY( ``ePRODUCT_DEFINITION_OCCURRENCE_REFERENCE`` )
    public var PRODUCT_ID: tIDENTIFIER?  {
      switch self {
      case ._PRODUCT_DEFINITION_OCCURRENCE_REFERENCE(let entity): return entity.PRODUCT_ID
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPRODUCT_DEFINITION_OCCURRENCE_OR_REFERENCE``
    /// - origin: ENTITY( ``ePRODUCT_DEFINITION_OCCURRENCE`` )
    public var CHILD_OCCURRENCES: (SDAI.SET<ePRODUCT_DEFINITION_SPECIFIED_OCCURRENCE>/*[0:nil]*/ )?  {
      switch self {
      case ._PRODUCT_DEFINITION_OCCURRENCE(let entity): return entity.CHILD_OCCURRENCES
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPRODUCT_DEFINITION_OCCURRENCE_OR_REFERENCE``
    /// - origin: ENTITY( ``ePRODUCT_DEFINITION_OCCURRENCE_REFERENCE`` )
    public var SOURCE: eEXTERNAL_SOURCE?  {
      switch self {
      case ._PRODUCT_DEFINITION_OCCURRENCE_REFERENCE(let entity): return entity.SOURCE
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPRODUCT_DEFINITION_OCCURRENCE_OR_REFERENCE``
    /// - origin: ENTITY( ``ePRODUCT_DEFINITION_OCCURRENCE`` )
    public var ID: tIDENTIFIER?  {
      switch self {
      case ._PRODUCT_DEFINITION_OCCURRENCE(let entity): return entity.ID
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPRODUCT_DEFINITION_OCCURRENCE_OR_REFERENCE``
    /// - origin: ENTITY( ``ePRODUCT_DEFINITION_OCCURRENCE`` )
    public var DEFINITION: sPRODUCT_DEFINITION_OR_REFERENCE_OR_OCCURRENCE?  {
      switch self {
      case ._PRODUCT_DEFINITION_OCCURRENCE(let entity): return entity.DEFINITION
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPRODUCT_DEFINITION_OCCURRENCE_OR_REFERENCE``
    /// - origin: ENTITY( ``ePRODUCT_DEFINITION_OCCURRENCE`` )
    public var NAME: tLABEL?  {
      switch self {
      case ._PRODUCT_DEFINITION_OCCURRENCE(let entity): return entity.NAME
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPRODUCT_DEFINITION_OCCURRENCE_OR_REFERENCE``
    /// - origin: ENTITY( ``ePRODUCT_DEFINITION_OCCURRENCE`` )
    public var ASSEMBLY_USAGES: (SDAI.SET<eASSEMBLY_COMPONENT_USAGE>/*[0:nil]*/ )?  {
      switch self {
      case ._PRODUCT_DEFINITION_OCCURRENCE(let entity): return entity.ASSEMBLY_USAGES
      default: return nil
      }
    }


    //MARK: - SDAIValue
    public func isValueEqual<T: SDAIValue>(to rhs: T) -> Bool {
      switch self {
      case ._PRODUCT_DEFINITION_OCCURRENCE(let selection): return selection.value.isValueEqual(to: rhs)
      case ._PRODUCT_DEFINITION_OCCURRENCE_REFERENCE(let selection): return selection.value.isValueEqual(to: rhs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?) -> Bool? {
      switch self {
      case ._PRODUCT_DEFINITION_OCCURRENCE(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._PRODUCT_DEFINITION_OCCURRENCE_REFERENCE(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      }
    }

    public func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      switch self {
      case ._PRODUCT_DEFINITION_OCCURRENCE(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._PRODUCT_DEFINITION_OCCURRENCE_REFERENCE(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      }
    }

    public func isValueEqual<T: SDAIValue>(to rhs: T, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      switch self {
      case ._PRODUCT_DEFINITION_OCCURRENCE(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._PRODUCT_DEFINITION_OCCURRENCE_REFERENCE(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      switch self {
      case ._PRODUCT_DEFINITION_OCCURRENCE(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._PRODUCT_DEFINITION_OCCURRENCE_REFERENCE(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      }
    }


    //MARK: SDAIGenericTypeBase
    public func copy() -> Self {
      switch self {
      case ._PRODUCT_DEFINITION_OCCURRENCE(let selection): return ._PRODUCT_DEFINITION_OCCURRENCE(selection.copy())
      case ._PRODUCT_DEFINITION_OCCURRENCE_REFERENCE(let selection): return ._PRODUCT_DEFINITION_OCCURRENCE_REFERENCE(selection.copy())
      }
    }

    //MARK: SDAIGenericType
    public var typeMembers: Set<SDAI.STRING> {
      var members: Set<SDAI.STRING> = [SDAI.STRING(Self.typeName)]
      switch self {
      case ._PRODUCT_DEFINITION_OCCURRENCE(let selection): members.formUnion(selection.typeMembers)
      case ._PRODUCT_DEFINITION_OCCURRENCE_REFERENCE(let selection): members.formUnion(selection.typeMembers)
      }
      return members
    }

    public var entityReference: SDAI.EntityReference? {
      switch self {
      case ._PRODUCT_DEFINITION_OCCURRENCE(let selection): return selection.entityReference
      case ._PRODUCT_DEFINITION_OCCURRENCE_REFERENCE(let selection): return selection.entityReference
      }
    }
    public var stringValue: SDAI.STRING? {
      switch self {
      case ._PRODUCT_DEFINITION_OCCURRENCE(let selection): return selection.stringValue
      case ._PRODUCT_DEFINITION_OCCURRENCE_REFERENCE(let selection): return selection.stringValue
      }
    }
    public var binaryValue: SDAI.BINARY? {
      switch self {
      case ._PRODUCT_DEFINITION_OCCURRENCE(let selection): return selection.binaryValue
      case ._PRODUCT_DEFINITION_OCCURRENCE_REFERENCE(let selection): return selection.binaryValue
      }
    }
    public var logicalValue: SDAI.LOGICAL? {
      switch self {
      case ._PRODUCT_DEFINITION_OCCURRENCE(let selection): return selection.logicalValue
      case ._PRODUCT_DEFINITION_OCCURRENCE_REFERENCE(let selection): return selection.logicalValue
      }
    }
    public var booleanValue: SDAI.BOOLEAN? {
      switch self {
      case ._PRODUCT_DEFINITION_OCCURRENCE(let selection): return selection.booleanValue
      case ._PRODUCT_DEFINITION_OCCURRENCE_REFERENCE(let selection): return selection.booleanValue
      }
    }
    public var numberValue: SDAI.NUMBER? {
      switch self {
      case ._PRODUCT_DEFINITION_OCCURRENCE(let selection): return selection.numberValue
      case ._PRODUCT_DEFINITION_OCCURRENCE_REFERENCE(let selection): return selection.numberValue
      }
    }
    public var realValue: SDAI.REAL? {
      switch self {
      case ._PRODUCT_DEFINITION_OCCURRENCE(let selection): return selection.realValue
      case ._PRODUCT_DEFINITION_OCCURRENCE_REFERENCE(let selection): return selection.realValue
      }
    }
    public var integerValue: SDAI.INTEGER? {
      switch self {
      case ._PRODUCT_DEFINITION_OCCURRENCE(let selection): return selection.integerValue
      case ._PRODUCT_DEFINITION_OCCURRENCE_REFERENCE(let selection): return selection.integerValue
      }
    }
    public var genericEnumValue: SDAI.GenericEnumValue? {
      switch self {
      case ._PRODUCT_DEFINITION_OCCURRENCE(let selection): return selection.genericEnumValue
      case ._PRODUCT_DEFINITION_OCCURRENCE_REFERENCE(let selection): return selection.genericEnumValue
      }
    }
    public func arrayOptionalValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY_OPTIONAL<ELEM>? {
      switch self {
      case ._PRODUCT_DEFINITION_OCCURRENCE(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._PRODUCT_DEFINITION_OCCURRENCE_REFERENCE(let selection): return selection.arrayOptionalValue(elementType:elementType)
      }
    }
    public func arrayValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY<ELEM>? {
      switch self {
      case ._PRODUCT_DEFINITION_OCCURRENCE(let selection): return selection.arrayValue(elementType:elementType)
      case ._PRODUCT_DEFINITION_OCCURRENCE_REFERENCE(let selection): return selection.arrayValue(elementType:elementType)
      }
    }
    public func listValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.LIST<ELEM>? {
      switch self {
      case ._PRODUCT_DEFINITION_OCCURRENCE(let selection): return selection.listValue(elementType:elementType)
      case ._PRODUCT_DEFINITION_OCCURRENCE_REFERENCE(let selection): return selection.listValue(elementType:elementType)
      }
    }
    public func bagValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.BAG<ELEM>? {
      switch self {
      case ._PRODUCT_DEFINITION_OCCURRENCE(let selection): return selection.bagValue(elementType:elementType)
      case ._PRODUCT_DEFINITION_OCCURRENCE_REFERENCE(let selection): return selection.bagValue(elementType:elementType)
      }
    }
    public func setValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.SET<ELEM>? {
      switch self {
      case ._PRODUCT_DEFINITION_OCCURRENCE(let selection): return selection.setValue(elementType:elementType)
      case ._PRODUCT_DEFINITION_OCCURRENCE_REFERENCE(let selection): return selection.setValue(elementType:elementType)
      }
    }
    public func enumValue<ENUM:SDAIEnumerationType>(enumType:ENUM.Type) -> ENUM? {
      switch self {
      case ._PRODUCT_DEFINITION_OCCURRENCE(let selection): return selection.enumValue(enumType:enumType)
      case ._PRODUCT_DEFINITION_OCCURRENCE_REFERENCE(let selection): return selection.enumValue(enumType:enumType)
      }
    }

    //MARK: SDAIUnderlyingType
    public typealias FundamentalType = Self
    public static var typeName: String = 
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT_DEFINITION_OCCURRENCE_OR_REFERENCE"
    public var asFundamentalType: FundamentalType { return self }

    //MARK: SDAIObservableAggregateElement
    public var entityReferences: AnySequence<SDAI.EntityReference> {
      switch self {
      case ._PRODUCT_DEFINITION_OCCURRENCE(let entity): return entity.entityReferences
      case ._PRODUCT_DEFINITION_OCCURRENCE_REFERENCE(let entity): return entity.entityReferences
      }
    }

    public mutating func configure(with observer: SDAI.EntityReferenceObserver) {
      switch self {
      case ._PRODUCT_DEFINITION_OCCURRENCE(let entity): 
        entity.configure(with: observer)
        self = ._PRODUCT_DEFINITION_OCCURRENCE(entity)
      case ._PRODUCT_DEFINITION_OCCURRENCE_REFERENCE(let entity): 
        entity.configure(with: observer)
        self = ._PRODUCT_DEFINITION_OCCURRENCE_REFERENCE(entity)
      }
    }

    public mutating func teardownObserver() {
      switch self {
      case ._PRODUCT_DEFINITION_OCCURRENCE(let entity): 
        entity.teardownObserver()
        self = ._PRODUCT_DEFINITION_OCCURRENCE(entity)
      case ._PRODUCT_DEFINITION_OCCURRENCE_REFERENCE(let entity): 
        entity.teardownObserver()
        self = ._PRODUCT_DEFINITION_OCCURRENCE_REFERENCE(entity)
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
      case ._PRODUCT_DEFINITION_OCCURRENCE(let selectValue): 
        result = ePRODUCT_DEFINITION_OCCURRENCE.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\PRODUCT_DEFINITION_OCCURRENCE")
      case ._PRODUCT_DEFINITION_OCCURRENCE_REFERENCE(let selectValue): 
        result = ePRODUCT_DEFINITION_OCCURRENCE_REFERENCE.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\PRODUCT_DEFINITION_OCCURRENCE_REFERENCE")
      case nil: break
      }

      return result
    }

  }

}


//MARK: - SELECT TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sPRODUCT_DEFINITION_OCCURRENCE_OR_REFERENCE__type: 
  SDAISelectType {

  //MARK: GROUP REFERENCES
  var super_eGENERIC_PRODUCT_DEFINITION_REFERENCE: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eGENERIC_PRODUCT_DEFINITION_REFERENCE? { get }
  var super_ePRODUCT_DEFINITION_OCCURRENCE: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRODUCT_DEFINITION_OCCURRENCE? { get }
  var super_ePRODUCT_DEFINITION_OCCURRENCE_REFERENCE: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRODUCT_DEFINITION_OCCURRENCE_REFERENCE? { get }
  var super_ePRODUCT_DEFINITION_REFERENCE: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRODUCT_DEFINITION_REFERENCE? { get }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var PRODUCT_OCCURRENCE_ID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER?  { get }
  var PRODUCT_DEFINITION_ID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER?  { get }
  var DESCRIPTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tTEXT?  { get }
  var DESCENDANT_OCCURRENCES: (SDAI.SET<
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRODUCT_DEFINITION_SPECIFIED_OCCURRENCE>/*[0:nil]*/ )?  { get }
  var PRODUCT_DEFINITION_FORMATION_ID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER?  { get }
  var QUANTITY: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eMEASURE_WITH_UNIT?  { get }
  var ID_OWNING_ORGANIZATION_NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { get }
  var OCCURRENCE_USAGE: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sPRODUCT_DEFINITION_OCCURRENCE_OR_REFERENCE?  { get }
  var PRODUCT_ID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER?  { get }
  var CHILD_OCCURRENCES: (SDAI.SET<
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRODUCT_DEFINITION_SPECIFIED_OCCURRENCE>/*[0:nil]*/ )?  { get }
  var SOURCE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eEXTERNAL_SOURCE?  { get }
  var ID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER?  { get }
  var DEFINITION: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sPRODUCT_DEFINITION_OR_REFERENCE_OR_OCCURRENCE?  { get }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { get }
  var ASSEMBLY_USAGES: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eASSEMBLY_COMPONENT_USAGE>
    /*[0:nil]*/ )?  { get }
}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sPRODUCT_DEFINITION_OCCURRENCE_OR_REFERENCE__subtype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sPRODUCT_DEFINITION_OCCURRENCE_OR_REFERENCE__type, SDAIDefinedType
where Supertype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sPRODUCT_DEFINITION_OCCURRENCE_OR_REFERENCE__type
{}

public extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sPRODUCT_DEFINITION_OCCURRENCE_OR_REFERENCE__subtype {
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
  var super_eGENERIC_PRODUCT_DEFINITION_REFERENCE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eGENERIC_PRODUCT_DEFINITION_REFERENCE? { rep.super_eGENERIC_PRODUCT_DEFINITION_REFERENCE }
  var super_ePRODUCT_DEFINITION_OCCURRENCE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRODUCT_DEFINITION_OCCURRENCE? { rep.super_ePRODUCT_DEFINITION_OCCURRENCE }
  var super_ePRODUCT_DEFINITION_OCCURRENCE_REFERENCE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRODUCT_DEFINITION_OCCURRENCE_REFERENCE? { rep.super_ePRODUCT_DEFINITION_OCCURRENCE_REFERENCE }
  var super_ePRODUCT_DEFINITION_REFERENCE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRODUCT_DEFINITION_REFERENCE? { rep.super_ePRODUCT_DEFINITION_REFERENCE }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var PRODUCT_OCCURRENCE_ID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER?  { rep.PRODUCT_OCCURRENCE_ID }
  var PRODUCT_DEFINITION_ID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER?  { rep.PRODUCT_DEFINITION_ID }
  var DESCRIPTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tTEXT?  { rep.DESCRIPTION }
  var DESCENDANT_OCCURRENCES: (SDAI.SET<
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRODUCT_DEFINITION_SPECIFIED_OCCURRENCE>/*[0:nil]*/ )?  { rep.DESCENDANT_OCCURRENCES }
  var PRODUCT_DEFINITION_FORMATION_ID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER?  { rep.PRODUCT_DEFINITION_FORMATION_ID }
  var QUANTITY: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eMEASURE_WITH_UNIT?  { rep.QUANTITY }
  var ID_OWNING_ORGANIZATION_NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { rep.ID_OWNING_ORGANIZATION_NAME }
  var OCCURRENCE_USAGE: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sPRODUCT_DEFINITION_OCCURRENCE_OR_REFERENCE?  { rep.OCCURRENCE_USAGE }
  var PRODUCT_ID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER?  { rep.PRODUCT_ID }
  var CHILD_OCCURRENCES: (SDAI.SET<
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRODUCT_DEFINITION_SPECIFIED_OCCURRENCE>/*[0:nil]*/ )?  { rep.CHILD_OCCURRENCES }
  var SOURCE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eEXTERNAL_SOURCE?  { rep.SOURCE }
  var ID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER?  { rep.ID }
  var DEFINITION: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sPRODUCT_DEFINITION_OR_REFERENCE_OR_OCCURRENCE?  { rep.DEFINITION }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { rep.NAME }
  var ASSEMBLY_USAGES: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eASSEMBLY_COMPONENT_USAGE>
    /*[0:nil]*/ )?  { rep.ASSEMBLY_USAGES }
}

