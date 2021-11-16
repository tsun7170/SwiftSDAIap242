/* file: sketch_type_select.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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
  TYPE sketch_type_select = SELECT
    ( neutral_sketch_representation (*ENTITY*),
     positioned_sketch (*ENTITY*),
     subsketch (*ENTITY*) );
  END_TYPE; -- sketch_type_select (line:5476 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES FOR SELECT
/*
  neutral_sketch_representation (*ENTITY*):
  ATTR:  description: text
  ATTR:  items: SET [1 : ?] OF sketch_element_select
  ATTR:  id: identifier
  ATTR:  context_of_items: representation_context
  ATTR:  neutral_sketch_semantics: curves_or_area
  ATTR:  name: label *** Multiple Select Case Sources ***

  positioned_sketch (*ENTITY*):
  ATTR:  auxiliary_elements: SET [0 : ?] OF auxiliary_geometric_representation_item
  ATTR:  sketch_basis: sketch_basis_select
  ATTR:  name: label *** Multiple Select Case Sources ***
  ATTR:  dim: dimension_count

  subsketch (*ENTITY*):
  ATTR:  subsketch_elements: SET [1 : ?] OF sketch_element_select
  ATTR:  owning_sketch: sketch_type_select
  ATTR:  name: label *** Multiple Select Case Sources ***
  ATTR:  dim: dimension_count

*/

/** SELECT type
- EXPRESS:
```express
  TYPE sketch_type_select = SELECT
    ( neutral_sketch_representation (*ENTITY*),
     positioned_sketch (*ENTITY*),
     subsketch (*ENTITY*) );
  END_TYPE; -- sketch_type_select (line:5476 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public enum sSKETCH_TYPE_SELECT : SDAIValue, AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sSKETCH_TYPE_SELECT__type {

    /// SELECT case ``eNEUTRAL_SKETCH_REPRESENTATION`` (ENTITY) in ``sSKETCH_TYPE_SELECT``
    case _NEUTRAL_SKETCH_REPRESENTATION(eNEUTRAL_SKETCH_REPRESENTATION)	// (ENTITY)

    /// SELECT case ``ePOSITIONED_SKETCH`` (ENTITY) in ``sSKETCH_TYPE_SELECT``
    case _POSITIONED_SKETCH(ePOSITIONED_SKETCH)	// (ENTITY)

    /// SELECT case ``eSUBSKETCH`` (ENTITY) in ``sSKETCH_TYPE_SELECT``
    case _SUBSKETCH(eSUBSKETCH)	// (ENTITY)

    //MARK: - CONSTRUCTORS
    public init(fundamental: FundamentalType) { self = fundamental }

    public init?<T: SDAIUnderlyingType>(possiblyFrom underlyingType: T?){
      return nil
    }

    public init?(possiblyFrom complex: SDAI.ComplexEntity?) {
      guard let complex = complex else { return nil }

      if let base = complex.entityReference(eNEUTRAL_SKETCH_REPRESENTATION.self) {self = ._NEUTRAL_SKETCH_REPRESENTATION(base) }
      else if let base = complex.entityReference(ePOSITIONED_SKETCH.self) {self = ._POSITIONED_SKETCH(base) }
      else if let base = complex.entityReference(eSUBSKETCH.self) {self = ._SUBSKETCH(base) }
      else { return nil }
    }

    public init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let select = generic else { return nil }

      if let fundamental = select as? Self {
        self.init(fundamental: fundamental)
      }
      else if let base = eNEUTRAL_SKETCH_REPRESENTATION.convert(fromGeneric: select) {
        self = ._NEUTRAL_SKETCH_REPRESENTATION(base)
      }
      else if let base = ePOSITIONED_SKETCH.convert(fromGeneric: select) {
        self = ._POSITIONED_SKETCH(base)
      }
      else if let base = eSUBSKETCH.convert(fromGeneric: select) {
        self = ._SUBSKETCH(base)
      }
      else { return nil }
    }

    // InitializableByP21Parameter
    public static var bareTypeName: String = "SKETCH_TYPE_SELECT"

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
    public var super_ePOSITIONED_SKETCH: ePOSITIONED_SKETCH? {
      switch self {
      case ._POSITIONED_SKETCH(let entity): return entity
      default: return nil
      }
    }

    public var super_eREPRESENTATION: eREPRESENTATION? {
      switch self {
      case ._NEUTRAL_SKETCH_REPRESENTATION(let entity): return entity.super_eREPRESENTATION
      default: return nil
      }
    }

    public var super_eSHAPE_REPRESENTATION: eSHAPE_REPRESENTATION? {
      switch self {
      case ._NEUTRAL_SKETCH_REPRESENTATION(let entity): return entity.super_eSHAPE_REPRESENTATION
      default: return nil
      }
    }

    public var super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM? {
      switch self {
      case ._POSITIONED_SKETCH(let entity): return entity.super_eREPRESENTATION_ITEM
      case ._SUBSKETCH(let entity): return entity.super_eREPRESENTATION_ITEM
      default: return nil
      }
    }

    public var super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM? {
      switch self {
      case ._POSITIONED_SKETCH(let entity): return entity.super_eGEOMETRIC_REPRESENTATION_ITEM
      case ._SUBSKETCH(let entity): return entity.super_eGEOMETRIC_REPRESENTATION_ITEM
      default: return nil
      }
    }

    public var super_eSUBSKETCH: eSUBSKETCH? {
      switch self {
      case ._SUBSKETCH(let entity): return entity
      default: return nil
      }
    }

    public var super_eNEUTRAL_SKETCH_REPRESENTATION: eNEUTRAL_SKETCH_REPRESENTATION? {
      switch self {
      case ._NEUTRAL_SKETCH_REPRESENTATION(let entity): return entity
      default: return nil
      }
    }


    //MARK: - ENTITY ATTRIBUTE REFERENCES
    /// attribute of SELECT type ``sSKETCH_TYPE_SELECT``
    /// - origin: ENTITY( ``eNEUTRAL_SKETCH_REPRESENTATION`` )
    public var DESCRIPTION: tTEXT?  {
      switch self {
      case ._NEUTRAL_SKETCH_REPRESENTATION(let entity): return entity.DESCRIPTION
      default: return nil
      }
    }

    /// attribute of SELECT type ``sSKETCH_TYPE_SELECT``
    /// - origin: ENTITY( ``eSUBSKETCH`` )
    public var SUBSKETCH_ELEMENTS: (SDAI.SET<sSKETCH_ELEMENT_SELECT>/*[1:nil]*/ )?  {
      switch self {
      case ._SUBSKETCH(let entity): return entity.SUBSKETCH_ELEMENTS
      default: return nil
      }
    }

    /// attribute of SELECT type ``sSKETCH_TYPE_SELECT``
    /// - origin: ENTITY( ``eNEUTRAL_SKETCH_REPRESENTATION`` )
    public var ITEMS: (SDAI.SET<sSKETCH_ELEMENT_SELECT>/*[1:nil]*/ )?  {
      switch self {
      case ._NEUTRAL_SKETCH_REPRESENTATION(let entity): return entity.ITEMS
      default: return nil
      }
    }

    /// attribute of SELECT type ``sSKETCH_TYPE_SELECT``
    /// - origin: ENTITY( ``ePOSITIONED_SKETCH`` )
    public var AUXILIARY_ELEMENTS: (SDAI.SET<eAUXILIARY_GEOMETRIC_REPRESENTATION_ITEM>/*[0:nil]*/ )?  {
      switch self {
      case ._POSITIONED_SKETCH(let entity): return entity.AUXILIARY_ELEMENTS
      default: return nil
      }
    }

    /// attribute of SELECT type ``sSKETCH_TYPE_SELECT``
    /// - origin: ENTITY( ``eSUBSKETCH`` )
    public var OWNING_SKETCH: sSKETCH_TYPE_SELECT?  {
      switch self {
      case ._SUBSKETCH(let entity): return entity.OWNING_SKETCH
      default: return nil
      }
    }

    /// attribute of SELECT type ``sSKETCH_TYPE_SELECT``
    /// - origin: ENTITY( ``eNEUTRAL_SKETCH_REPRESENTATION`` )
    public var ID: tIDENTIFIER?  {
      switch self {
      case ._NEUTRAL_SKETCH_REPRESENTATION(let entity): return entity.ID
      default: return nil
      }
    }

    /// attribute of SELECT type ``sSKETCH_TYPE_SELECT``
    /// - origin: ENTITY( ``eNEUTRAL_SKETCH_REPRESENTATION`` )
    public var CONTEXT_OF_ITEMS: eREPRESENTATION_CONTEXT?  {
      switch self {
      case ._NEUTRAL_SKETCH_REPRESENTATION(let entity): return entity.CONTEXT_OF_ITEMS
      default: return nil
      }
    }

    /// attribute of SELECT type ``sSKETCH_TYPE_SELECT``
    /// - origin: ENTITY( ``ePOSITIONED_SKETCH`` )
    public var SKETCH_BASIS: sSKETCH_BASIS_SELECT?  {
      switch self {
      case ._POSITIONED_SKETCH(let entity): return entity.SKETCH_BASIS
      default: return nil
      }
    }

    /// attribute of SELECT type ``sSKETCH_TYPE_SELECT``
    /// - origin: ENTITY( ``eNEUTRAL_SKETCH_REPRESENTATION`` )
    public var NEUTRAL_SKETCH_SEMANTICS: nCURVES_OR_AREA?  {
      switch self {
      case ._NEUTRAL_SKETCH_REPRESENTATION(let entity): return entity.NEUTRAL_SKETCH_SEMANTICS
      default: return nil
      }
    }

    /// attribute of SELECT type ``sSKETCH_TYPE_SELECT``
    /// - origin: ENTITY( ``eNEUTRAL_SKETCH_REPRESENTATION`` )
    /// - origin: ENTITY( ``ePOSITIONED_SKETCH`` )
    /// - origin: ENTITY( ``eSUBSKETCH`` )
    public var NAME: tLABEL?  {
      switch self {
      case ._NEUTRAL_SKETCH_REPRESENTATION(let entity): return entity.NAME
      case ._POSITIONED_SKETCH(let entity): return entity.NAME
      case ._SUBSKETCH(let entity): return entity.NAME
      }
    }

    /// attribute of SELECT type ``sSKETCH_TYPE_SELECT``
    /// - origin: ENTITY( ``ePOSITIONED_SKETCH`` )
    /// - origin: ENTITY( ``eSUBSKETCH`` )
    public var DIM: tDIMENSION_COUNT?  {
      switch self {
      case ._POSITIONED_SKETCH(let entity): return entity.DIM
      case ._SUBSKETCH(let entity): return entity.DIM
      default: return nil
      }
    }


    //MARK: - SDAIValue
    public func isValueEqual<T: SDAIValue>(to rhs: T) -> Bool {
      switch self {
      case ._NEUTRAL_SKETCH_REPRESENTATION(let selection): return selection.value.isValueEqual(to: rhs)
      case ._POSITIONED_SKETCH(let selection): return selection.value.isValueEqual(to: rhs)
      case ._SUBSKETCH(let selection): return selection.value.isValueEqual(to: rhs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?) -> Bool? {
      switch self {
      case ._NEUTRAL_SKETCH_REPRESENTATION(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._POSITIONED_SKETCH(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._SUBSKETCH(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      }
    }

    public func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      switch self {
      case ._NEUTRAL_SKETCH_REPRESENTATION(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._POSITIONED_SKETCH(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._SUBSKETCH(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      }
    }

    public func isValueEqual<T: SDAIValue>(to rhs: T, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      switch self {
      case ._NEUTRAL_SKETCH_REPRESENTATION(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._POSITIONED_SKETCH(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._SUBSKETCH(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      switch self {
      case ._NEUTRAL_SKETCH_REPRESENTATION(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._POSITIONED_SKETCH(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._SUBSKETCH(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      }
    }


    //MARK: SDAIGenericTypeBase
    public func copy() -> Self {
      switch self {
      case ._NEUTRAL_SKETCH_REPRESENTATION(let selection): return ._NEUTRAL_SKETCH_REPRESENTATION(selection.copy())
      case ._POSITIONED_SKETCH(let selection): return ._POSITIONED_SKETCH(selection.copy())
      case ._SUBSKETCH(let selection): return ._SUBSKETCH(selection.copy())
      }
    }

    //MARK: SDAIGenericType
    public var typeMembers: Set<SDAI.STRING> {
      var members: Set<SDAI.STRING> = [SDAI.STRING(Self.typeName)]
      switch self {
      case ._NEUTRAL_SKETCH_REPRESENTATION(let selection): members.formUnion(selection.typeMembers)
      case ._POSITIONED_SKETCH(let selection): members.formUnion(selection.typeMembers)
      case ._SUBSKETCH(let selection): members.formUnion(selection.typeMembers)
      }
      return members
    }

    public var entityReference: SDAI.EntityReference? {
      switch self {
      case ._NEUTRAL_SKETCH_REPRESENTATION(let selection): return selection.entityReference
      case ._POSITIONED_SKETCH(let selection): return selection.entityReference
      case ._SUBSKETCH(let selection): return selection.entityReference
      }
    }
    public var stringValue: SDAI.STRING? {
      switch self {
      case ._NEUTRAL_SKETCH_REPRESENTATION(let selection): return selection.stringValue
      case ._POSITIONED_SKETCH(let selection): return selection.stringValue
      case ._SUBSKETCH(let selection): return selection.stringValue
      }
    }
    public var binaryValue: SDAI.BINARY? {
      switch self {
      case ._NEUTRAL_SKETCH_REPRESENTATION(let selection): return selection.binaryValue
      case ._POSITIONED_SKETCH(let selection): return selection.binaryValue
      case ._SUBSKETCH(let selection): return selection.binaryValue
      }
    }
    public var logicalValue: SDAI.LOGICAL? {
      switch self {
      case ._NEUTRAL_SKETCH_REPRESENTATION(let selection): return selection.logicalValue
      case ._POSITIONED_SKETCH(let selection): return selection.logicalValue
      case ._SUBSKETCH(let selection): return selection.logicalValue
      }
    }
    public var booleanValue: SDAI.BOOLEAN? {
      switch self {
      case ._NEUTRAL_SKETCH_REPRESENTATION(let selection): return selection.booleanValue
      case ._POSITIONED_SKETCH(let selection): return selection.booleanValue
      case ._SUBSKETCH(let selection): return selection.booleanValue
      }
    }
    public var numberValue: SDAI.NUMBER? {
      switch self {
      case ._NEUTRAL_SKETCH_REPRESENTATION(let selection): return selection.numberValue
      case ._POSITIONED_SKETCH(let selection): return selection.numberValue
      case ._SUBSKETCH(let selection): return selection.numberValue
      }
    }
    public var realValue: SDAI.REAL? {
      switch self {
      case ._NEUTRAL_SKETCH_REPRESENTATION(let selection): return selection.realValue
      case ._POSITIONED_SKETCH(let selection): return selection.realValue
      case ._SUBSKETCH(let selection): return selection.realValue
      }
    }
    public var integerValue: SDAI.INTEGER? {
      switch self {
      case ._NEUTRAL_SKETCH_REPRESENTATION(let selection): return selection.integerValue
      case ._POSITIONED_SKETCH(let selection): return selection.integerValue
      case ._SUBSKETCH(let selection): return selection.integerValue
      }
    }
    public var genericEnumValue: SDAI.GenericEnumValue? {
      switch self {
      case ._NEUTRAL_SKETCH_REPRESENTATION(let selection): return selection.genericEnumValue
      case ._POSITIONED_SKETCH(let selection): return selection.genericEnumValue
      case ._SUBSKETCH(let selection): return selection.genericEnumValue
      }
    }
    public func arrayOptionalValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY_OPTIONAL<ELEM>? {
      switch self {
      case ._NEUTRAL_SKETCH_REPRESENTATION(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._POSITIONED_SKETCH(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._SUBSKETCH(let selection): return selection.arrayOptionalValue(elementType:elementType)
      }
    }
    public func arrayValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY<ELEM>? {
      switch self {
      case ._NEUTRAL_SKETCH_REPRESENTATION(let selection): return selection.arrayValue(elementType:elementType)
      case ._POSITIONED_SKETCH(let selection): return selection.arrayValue(elementType:elementType)
      case ._SUBSKETCH(let selection): return selection.arrayValue(elementType:elementType)
      }
    }
    public func listValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.LIST<ELEM>? {
      switch self {
      case ._NEUTRAL_SKETCH_REPRESENTATION(let selection): return selection.listValue(elementType:elementType)
      case ._POSITIONED_SKETCH(let selection): return selection.listValue(elementType:elementType)
      case ._SUBSKETCH(let selection): return selection.listValue(elementType:elementType)
      }
    }
    public func bagValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.BAG<ELEM>? {
      switch self {
      case ._NEUTRAL_SKETCH_REPRESENTATION(let selection): return selection.bagValue(elementType:elementType)
      case ._POSITIONED_SKETCH(let selection): return selection.bagValue(elementType:elementType)
      case ._SUBSKETCH(let selection): return selection.bagValue(elementType:elementType)
      }
    }
    public func setValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.SET<ELEM>? {
      switch self {
      case ._NEUTRAL_SKETCH_REPRESENTATION(let selection): return selection.setValue(elementType:elementType)
      case ._POSITIONED_SKETCH(let selection): return selection.setValue(elementType:elementType)
      case ._SUBSKETCH(let selection): return selection.setValue(elementType:elementType)
      }
    }
    public func enumValue<ENUM:SDAIEnumerationType>(enumType:ENUM.Type) -> ENUM? {
      switch self {
      case ._NEUTRAL_SKETCH_REPRESENTATION(let selection): return selection.enumValue(enumType:enumType)
      case ._POSITIONED_SKETCH(let selection): return selection.enumValue(enumType:enumType)
      case ._SUBSKETCH(let selection): return selection.enumValue(enumType:enumType)
      }
    }

    //MARK: SDAIUnderlyingType
    public typealias FundamentalType = Self
    public static var typeName: String = 
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SKETCH_TYPE_SELECT"
    public var asFundamentalType: FundamentalType { return self }

    //MARK: SDAIObservableAggregateElement
    public var entityReferences: AnySequence<SDAI.EntityReference> {
      switch self {
      case ._NEUTRAL_SKETCH_REPRESENTATION(let entity): return entity.entityReferences
      case ._POSITIONED_SKETCH(let entity): return entity.entityReferences
      case ._SUBSKETCH(let entity): return entity.entityReferences
      }
    }

    public mutating func configure(with observer: SDAI.EntityReferenceObserver) {
      switch self {
      case ._NEUTRAL_SKETCH_REPRESENTATION(let entity): 
        entity.configure(with: observer)
        self = ._NEUTRAL_SKETCH_REPRESENTATION(entity)
      case ._POSITIONED_SKETCH(let entity): 
        entity.configure(with: observer)
        self = ._POSITIONED_SKETCH(entity)
      case ._SUBSKETCH(let entity): 
        entity.configure(with: observer)
        self = ._SUBSKETCH(entity)
      }
    }

    public mutating func teardownObserver() {
      switch self {
      case ._NEUTRAL_SKETCH_REPRESENTATION(let entity): 
        entity.teardownObserver()
        self = ._NEUTRAL_SKETCH_REPRESENTATION(entity)
      case ._POSITIONED_SKETCH(let entity): 
        entity.teardownObserver()
        self = ._POSITIONED_SKETCH(entity)
      case ._SUBSKETCH(let entity): 
        entity.teardownObserver()
        self = ._SUBSKETCH(entity)
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
      case ._NEUTRAL_SKETCH_REPRESENTATION(let selectValue): 
        result = eNEUTRAL_SKETCH_REPRESENTATION.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\NEUTRAL_SKETCH_REPRESENTATION")
      case ._POSITIONED_SKETCH(let selectValue): 
        result = ePOSITIONED_SKETCH.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\POSITIONED_SKETCH")
      case ._SUBSKETCH(let selectValue): result = eSUBSKETCH.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\SUBSKETCH")
      case nil: break
      }

      return result
    }

  }

}


//MARK: - SELECT TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sSKETCH_TYPE_SELECT__type: SDAISelectType {

  //MARK: GROUP REFERENCES
  var super_ePOSITIONED_SKETCH: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePOSITIONED_SKETCH? { get }
  var super_eREPRESENTATION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION? { get }
  var super_eSHAPE_REPRESENTATION: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSHAPE_REPRESENTATION? { get }
  var super_eREPRESENTATION_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION_ITEM? { get }
  var super_eGEOMETRIC_REPRESENTATION_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eGEOMETRIC_REPRESENTATION_ITEM? { get }
  var super_eSUBSKETCH: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSUBSKETCH? { get }
  var super_eNEUTRAL_SKETCH_REPRESENTATION: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eNEUTRAL_SKETCH_REPRESENTATION? { get }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var DESCRIPTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tTEXT?  { get }
  var SUBSKETCH_ELEMENTS: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sSKETCH_ELEMENT_SELECT>
    /*[1:nil]*/ )?  { get }
  var ITEMS: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sSKETCH_ELEMENT_SELECT>/*[1:nil]*/ )?  { get }
  var AUXILIARY_ELEMENTS: (SDAI.SET<
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eAUXILIARY_GEOMETRIC_REPRESENTATION_ITEM>/*[0:nil]*/ )?  { get }
  var OWNING_SKETCH: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sSKETCH_TYPE_SELECT?  { get }
  var ID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER?  { get }
  var CONTEXT_OF_ITEMS: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION_CONTEXT?  { get }
  var SKETCH_BASIS: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sSKETCH_BASIS_SELECT?  { get }
  var NEUTRAL_SKETCH_SEMANTICS: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.nCURVES_OR_AREA?  { get }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { get }
  var DIM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tDIMENSION_COUNT?  { get }
}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sSKETCH_TYPE_SELECT__subtype: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sSKETCH_TYPE_SELECT__type, SDAIDefinedType
where Supertype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sSKETCH_TYPE_SELECT__type
{}

public extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sSKETCH_TYPE_SELECT__subtype {
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
  var super_ePOSITIONED_SKETCH: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePOSITIONED_SKETCH? { rep.super_ePOSITIONED_SKETCH }
  var super_eREPRESENTATION: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION? { rep.super_eREPRESENTATION }
  var super_eSHAPE_REPRESENTATION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSHAPE_REPRESENTATION? { rep.super_eSHAPE_REPRESENTATION }
  var super_eREPRESENTATION_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION_ITEM? { rep.super_eREPRESENTATION_ITEM }
  var super_eGEOMETRIC_REPRESENTATION_ITEM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eGEOMETRIC_REPRESENTATION_ITEM? { rep.super_eGEOMETRIC_REPRESENTATION_ITEM }
  var super_eSUBSKETCH: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSUBSKETCH? { rep.super_eSUBSKETCH }
  var super_eNEUTRAL_SKETCH_REPRESENTATION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eNEUTRAL_SKETCH_REPRESENTATION? { rep.super_eNEUTRAL_SKETCH_REPRESENTATION }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var DESCRIPTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tTEXT?  { rep.DESCRIPTION }
  var SUBSKETCH_ELEMENTS: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sSKETCH_ELEMENT_SELECT>
    /*[1:nil]*/ )?  { rep.SUBSKETCH_ELEMENTS }
  var ITEMS: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sSKETCH_ELEMENT_SELECT>/*[1:nil]*/ )?  { rep.ITEMS }
  var AUXILIARY_ELEMENTS: (SDAI.SET<
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eAUXILIARY_GEOMETRIC_REPRESENTATION_ITEM>/*[0:nil]*/ )?  { rep.AUXILIARY_ELEMENTS }
  var OWNING_SKETCH: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sSKETCH_TYPE_SELECT?  { rep.OWNING_SKETCH }
  var ID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER?  { rep.ID }
  var CONTEXT_OF_ITEMS: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION_CONTEXT?  { rep.CONTEXT_OF_ITEMS }
  var SKETCH_BASIS: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sSKETCH_BASIS_SELECT?  { rep.SKETCH_BASIS }
  var NEUTRAL_SKETCH_SEMANTICS: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.nCURVES_OR_AREA?  { rep.NEUTRAL_SKETCH_SEMANTICS }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { rep.NAME }
  var DIM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tDIMENSION_COUNT?  { rep.DIM }
}

