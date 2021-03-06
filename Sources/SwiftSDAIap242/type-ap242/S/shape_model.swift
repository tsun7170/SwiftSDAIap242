/* file: shape_model.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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
  TYPE shape_model = SELECT
    ( constructive_geometry_representation (*ENTITY*),
     shape_representation (*ENTITY*) );
  END_TYPE; -- shape_model (line:5359 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES FOR SELECT
/*
  constructive_geometry_representation (*ENTITY*):
  ATTR:  description: text
  ATTR:  items: SET [1 : ?] OF representation_item
  ATTR:  id: identifier
  ATTR:  context_of_items: representation_context
  ATTR:  name: label

  shape_representation (*ENTITY*):
  ATTR:  description: text
  ATTR:  items: SET [1 : ?] OF representation_item
  ATTR:  tessellation_accuracy_parameters: SET [1 : ?] OF tessellation_accuracy_parameter_item
  ATTR:  id: identifier
  ATTR:  context_of_items: representation_context
  ATTR:  neutral_sketch_semantics: curves_or_area
  ATTR:  name: label

*/

/** SELECT type
- EXPRESS:
```express
  TYPE shape_model = SELECT
    ( constructive_geometry_representation (*ENTITY*),
     shape_representation (*ENTITY*) );
  END_TYPE; -- shape_model (line:5359 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public enum sSHAPE_MODEL : SDAIValue, AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sSHAPE_MODEL__type {

    /// SELECT case ``eCONSTRUCTIVE_GEOMETRY_REPRESENTATION`` (ENTITY) in ``sSHAPE_MODEL``
    case _CONSTRUCTIVE_GEOMETRY_REPRESENTATION(eCONSTRUCTIVE_GEOMETRY_REPRESENTATION)	// (ENTITY)

    /// SELECT case ``eSHAPE_REPRESENTATION`` (ENTITY) in ``sSHAPE_MODEL``
    case _SHAPE_REPRESENTATION(eSHAPE_REPRESENTATION)	// (ENTITY)

    //MARK: - CONSTRUCTORS
    public init(fundamental: FundamentalType) { self = fundamental }

    public init?<T: SDAIUnderlyingType>(possiblyFrom underlyingType: T?){
      return nil
    }

    public init?(possiblyFrom complex: SDAI.ComplexEntity?) {
      guard let complex = complex else { return nil }

      if let base = complex.entityReference(eCONSTRUCTIVE_GEOMETRY_REPRESENTATION.self) {self = ._CONSTRUCTIVE_GEOMETRY_REPRESENTATION(base) }
      else if let base = complex.entityReference(eSHAPE_REPRESENTATION.self) {self = ._SHAPE_REPRESENTATION(base) }
      else { return nil }
    }

    public init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let select = generic else { return nil }

      if let fundamental = select as? Self {
        self.init(fundamental: fundamental)
      }
      else if let base = eCONSTRUCTIVE_GEOMETRY_REPRESENTATION.convert(fromGeneric: select) {
        self = ._CONSTRUCTIVE_GEOMETRY_REPRESENTATION(base)
      }
      else if let base = eSHAPE_REPRESENTATION.convert(fromGeneric: select) {
        self = ._SHAPE_REPRESENTATION(base)
      }
      else { return nil }
    }

    // InitializableByP21Parameter
    public static var bareTypeName: String = "SHAPE_MODEL"

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
      case ._CONSTRUCTIVE_GEOMETRY_REPRESENTATION(let entity): return entity.super_eREPRESENTATION
      case ._SHAPE_REPRESENTATION(let entity): return entity.super_eREPRESENTATION
      }
    }

    public var super_eSHAPE_REPRESENTATION: eSHAPE_REPRESENTATION? {
      switch self {
      case ._SHAPE_REPRESENTATION(let entity): return entity
      default: return nil
      }
    }

    public var super_eCONSTRUCTIVE_GEOMETRY_REPRESENTATION: eCONSTRUCTIVE_GEOMETRY_REPRESENTATION? {
      switch self {
      case ._CONSTRUCTIVE_GEOMETRY_REPRESENTATION(let entity): return entity
      default: return nil
      }
    }


    //MARK: - ENTITY ATTRIBUTE REFERENCES
    /// attribute of SELECT type ``sSHAPE_MODEL``
    /// - origin: ENTITY( ``eCONSTRUCTIVE_GEOMETRY_REPRESENTATION`` )
    /// - origin: ENTITY( ``eSHAPE_REPRESENTATION`` )
    public var DESCRIPTION: tTEXT?  {
      switch self {
      case ._CONSTRUCTIVE_GEOMETRY_REPRESENTATION(let entity): return entity.DESCRIPTION
      case ._SHAPE_REPRESENTATION(let entity): return entity.DESCRIPTION
      }
    }

    /// attribute of SELECT type ``sSHAPE_MODEL``
    /// - origin: ENTITY( ``eCONSTRUCTIVE_GEOMETRY_REPRESENTATION`` )
    /// - origin: ENTITY( ``eSHAPE_REPRESENTATION`` )
    public var ITEMS: (SDAI.SET<eREPRESENTATION_ITEM>/*[1:nil]*/ )?  {
      switch self {
      case ._CONSTRUCTIVE_GEOMETRY_REPRESENTATION(let entity): return entity.ITEMS
      case ._SHAPE_REPRESENTATION(let entity): return entity.ITEMS
      }
    }

    /// attribute of SELECT type ``sSHAPE_MODEL``
    /// - origin: ENTITY( ``eSHAPE_REPRESENTATION`` )
    public var TESSELLATION_ACCURACY_PARAMETERS: (SDAI.SET<sTESSELLATION_ACCURACY_PARAMETER_ITEM>/*[1:nil]*/ )?  {
      switch self {
      case ._SHAPE_REPRESENTATION(let entity): return entity.TESSELLATION_ACCURACY_PARAMETERS
      default: return nil
      }
    }

    /// attribute of SELECT type ``sSHAPE_MODEL``
    /// - origin: ENTITY( ``eCONSTRUCTIVE_GEOMETRY_REPRESENTATION`` )
    /// - origin: ENTITY( ``eSHAPE_REPRESENTATION`` )
    public var ID: tIDENTIFIER?  {
      switch self {
      case ._CONSTRUCTIVE_GEOMETRY_REPRESENTATION(let entity): return entity.ID
      case ._SHAPE_REPRESENTATION(let entity): return entity.ID
      }
    }

    /// attribute of SELECT type ``sSHAPE_MODEL``
    /// - origin: ENTITY( ``eCONSTRUCTIVE_GEOMETRY_REPRESENTATION`` )
    /// - origin: ENTITY( ``eSHAPE_REPRESENTATION`` )
    public var CONTEXT_OF_ITEMS: eREPRESENTATION_CONTEXT?  {
      switch self {
      case ._CONSTRUCTIVE_GEOMETRY_REPRESENTATION(let entity): return entity.CONTEXT_OF_ITEMS
      case ._SHAPE_REPRESENTATION(let entity): return entity.CONTEXT_OF_ITEMS
      }
    }

    /// attribute of SELECT type ``sSHAPE_MODEL``
    /// - origin: ENTITY( ``eSHAPE_REPRESENTATION`` )
    public var NEUTRAL_SKETCH_SEMANTICS: nCURVES_OR_AREA?  {
      switch self {
      case ._SHAPE_REPRESENTATION(let entity): return entity.NEUTRAL_SKETCH_SEMANTICS
      default: return nil
      }
    }

    /// attribute of SELECT type ``sSHAPE_MODEL``
    /// - origin: ENTITY( ``eCONSTRUCTIVE_GEOMETRY_REPRESENTATION`` )
    /// - origin: ENTITY( ``eSHAPE_REPRESENTATION`` )
    public var NAME: tLABEL?  {
      switch self {
      case ._CONSTRUCTIVE_GEOMETRY_REPRESENTATION(let entity): return entity.NAME
      case ._SHAPE_REPRESENTATION(let entity): return entity.NAME
      }
    }


    //MARK: - SDAIValue
    public func isValueEqual<T: SDAIValue>(to rhs: T) -> Bool {
      switch self {
      case ._CONSTRUCTIVE_GEOMETRY_REPRESENTATION(let selection): return selection.value.isValueEqual(to: rhs)
      case ._SHAPE_REPRESENTATION(let selection): return selection.value.isValueEqual(to: rhs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?) -> Bool? {
      switch self {
      case ._CONSTRUCTIVE_GEOMETRY_REPRESENTATION(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._SHAPE_REPRESENTATION(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      }
    }

    public func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      switch self {
      case ._CONSTRUCTIVE_GEOMETRY_REPRESENTATION(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._SHAPE_REPRESENTATION(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      }
    }

    public func isValueEqual<T: SDAIValue>(to rhs: T, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      switch self {
      case ._CONSTRUCTIVE_GEOMETRY_REPRESENTATION(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._SHAPE_REPRESENTATION(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      switch self {
      case ._CONSTRUCTIVE_GEOMETRY_REPRESENTATION(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._SHAPE_REPRESENTATION(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      }
    }


    //MARK: SDAIGenericTypeBase
    public func copy() -> Self {
      switch self {
      case ._CONSTRUCTIVE_GEOMETRY_REPRESENTATION(let selection): return ._CONSTRUCTIVE_GEOMETRY_REPRESENTATION(selection.copy())
      case ._SHAPE_REPRESENTATION(let selection): return ._SHAPE_REPRESENTATION(selection.copy())
      }
    }

    //MARK: SDAIGenericType
    public var typeMembers: Set<SDAI.STRING> {
      var members: Set<SDAI.STRING> = [SDAI.STRING(Self.typeName)]
      switch self {
      case ._CONSTRUCTIVE_GEOMETRY_REPRESENTATION(let selection): members.formUnion(selection.typeMembers)
      case ._SHAPE_REPRESENTATION(let selection): members.formUnion(selection.typeMembers)
      }
      return members
    }

    public var entityReference: SDAI.EntityReference? {
      switch self {
      case ._CONSTRUCTIVE_GEOMETRY_REPRESENTATION(let selection): return selection.entityReference
      case ._SHAPE_REPRESENTATION(let selection): return selection.entityReference
      }
    }
    public var stringValue: SDAI.STRING? {
      switch self {
      case ._CONSTRUCTIVE_GEOMETRY_REPRESENTATION(let selection): return selection.stringValue
      case ._SHAPE_REPRESENTATION(let selection): return selection.stringValue
      }
    }
    public var binaryValue: SDAI.BINARY? {
      switch self {
      case ._CONSTRUCTIVE_GEOMETRY_REPRESENTATION(let selection): return selection.binaryValue
      case ._SHAPE_REPRESENTATION(let selection): return selection.binaryValue
      }
    }
    public var logicalValue: SDAI.LOGICAL? {
      switch self {
      case ._CONSTRUCTIVE_GEOMETRY_REPRESENTATION(let selection): return selection.logicalValue
      case ._SHAPE_REPRESENTATION(let selection): return selection.logicalValue
      }
    }
    public var booleanValue: SDAI.BOOLEAN? {
      switch self {
      case ._CONSTRUCTIVE_GEOMETRY_REPRESENTATION(let selection): return selection.booleanValue
      case ._SHAPE_REPRESENTATION(let selection): return selection.booleanValue
      }
    }
    public var numberValue: SDAI.NUMBER? {
      switch self {
      case ._CONSTRUCTIVE_GEOMETRY_REPRESENTATION(let selection): return selection.numberValue
      case ._SHAPE_REPRESENTATION(let selection): return selection.numberValue
      }
    }
    public var realValue: SDAI.REAL? {
      switch self {
      case ._CONSTRUCTIVE_GEOMETRY_REPRESENTATION(let selection): return selection.realValue
      case ._SHAPE_REPRESENTATION(let selection): return selection.realValue
      }
    }
    public var integerValue: SDAI.INTEGER? {
      switch self {
      case ._CONSTRUCTIVE_GEOMETRY_REPRESENTATION(let selection): return selection.integerValue
      case ._SHAPE_REPRESENTATION(let selection): return selection.integerValue
      }
    }
    public var genericEnumValue: SDAI.GenericEnumValue? {
      switch self {
      case ._CONSTRUCTIVE_GEOMETRY_REPRESENTATION(let selection): return selection.genericEnumValue
      case ._SHAPE_REPRESENTATION(let selection): return selection.genericEnumValue
      }
    }
    public func arrayOptionalValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY_OPTIONAL<ELEM>? {
      switch self {
      case ._CONSTRUCTIVE_GEOMETRY_REPRESENTATION(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._SHAPE_REPRESENTATION(let selection): return selection.arrayOptionalValue(elementType:elementType)
      }
    }
    public func arrayValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY<ELEM>? {
      switch self {
      case ._CONSTRUCTIVE_GEOMETRY_REPRESENTATION(let selection): return selection.arrayValue(elementType:elementType)
      case ._SHAPE_REPRESENTATION(let selection): return selection.arrayValue(elementType:elementType)
      }
    }
    public func listValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.LIST<ELEM>? {
      switch self {
      case ._CONSTRUCTIVE_GEOMETRY_REPRESENTATION(let selection): return selection.listValue(elementType:elementType)
      case ._SHAPE_REPRESENTATION(let selection): return selection.listValue(elementType:elementType)
      }
    }
    public func bagValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.BAG<ELEM>? {
      switch self {
      case ._CONSTRUCTIVE_GEOMETRY_REPRESENTATION(let selection): return selection.bagValue(elementType:elementType)
      case ._SHAPE_REPRESENTATION(let selection): return selection.bagValue(elementType:elementType)
      }
    }
    public func setValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.SET<ELEM>? {
      switch self {
      case ._CONSTRUCTIVE_GEOMETRY_REPRESENTATION(let selection): return selection.setValue(elementType:elementType)
      case ._SHAPE_REPRESENTATION(let selection): return selection.setValue(elementType:elementType)
      }
    }
    public func enumValue<ENUM:SDAIEnumerationType>(enumType:ENUM.Type) -> ENUM? {
      switch self {
      case ._CONSTRUCTIVE_GEOMETRY_REPRESENTATION(let selection): return selection.enumValue(enumType:enumType)
      case ._SHAPE_REPRESENTATION(let selection): return selection.enumValue(enumType:enumType)
      }
    }

    //MARK: SDAIUnderlyingType
    public typealias FundamentalType = Self
    public static var typeName: String = "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_MODEL"
    public var asFundamentalType: FundamentalType { return self }

    //MARK: SDAIObservableAggregateElement
    public var entityReferences: AnySequence<SDAI.EntityReference> {
      switch self {
      case ._CONSTRUCTIVE_GEOMETRY_REPRESENTATION(let entity): return entity.entityReferences
      case ._SHAPE_REPRESENTATION(let entity): return entity.entityReferences
      }
    }

    public mutating func configure(with observer: SDAI.EntityReferenceObserver) {
      switch self {
      case ._CONSTRUCTIVE_GEOMETRY_REPRESENTATION(let entity): 
        entity.configure(with: observer)
        self = ._CONSTRUCTIVE_GEOMETRY_REPRESENTATION(entity)
      case ._SHAPE_REPRESENTATION(let entity): 
        entity.configure(with: observer)
        self = ._SHAPE_REPRESENTATION(entity)
      }
    }

    public mutating func teardownObserver() {
      switch self {
      case ._CONSTRUCTIVE_GEOMETRY_REPRESENTATION(let entity): 
        entity.teardownObserver()
        self = ._CONSTRUCTIVE_GEOMETRY_REPRESENTATION(entity)
      case ._SHAPE_REPRESENTATION(let entity): 
        entity.teardownObserver()
        self = ._SHAPE_REPRESENTATION(entity)
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
      case ._CONSTRUCTIVE_GEOMETRY_REPRESENTATION(let selectValue): 
        result = eCONSTRUCTIVE_GEOMETRY_REPRESENTATION.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\CONSTRUCTIVE_GEOMETRY_REPRESENTATION")
      case ._SHAPE_REPRESENTATION(let selectValue): 
        result = eSHAPE_REPRESENTATION.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\SHAPE_REPRESENTATION")
      case nil: break
      }

      return result
    }

  }

}


//MARK: - SELECT TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sSHAPE_MODEL__type: SDAISelectType {

  //MARK: GROUP REFERENCES
  var super_eREPRESENTATION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION? { get }
  var super_eSHAPE_REPRESENTATION: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSHAPE_REPRESENTATION? { get }
  var super_eCONSTRUCTIVE_GEOMETRY_REPRESENTATION: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCONSTRUCTIVE_GEOMETRY_REPRESENTATION? { get }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var DESCRIPTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tTEXT?  { get }
  var ITEMS: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION_ITEM>/*[1:nil]*/ )?  { get }
  var TESSELLATION_ACCURACY_PARAMETERS: (SDAI.SET<
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sTESSELLATION_ACCURACY_PARAMETER_ITEM>/*[1:nil]*/ )?  { get }
  var ID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER?  { get }
  var CONTEXT_OF_ITEMS: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION_CONTEXT?  { get }
  var NEUTRAL_SKETCH_SEMANTICS: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.nCURVES_OR_AREA?  { get }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { get }
}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sSHAPE_MODEL__subtype: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sSHAPE_MODEL__type, SDAIDefinedType
where Supertype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sSHAPE_MODEL__type
{}

public extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sSHAPE_MODEL__subtype {
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
  var super_eSHAPE_REPRESENTATION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSHAPE_REPRESENTATION? { rep.super_eSHAPE_REPRESENTATION }
  var super_eCONSTRUCTIVE_GEOMETRY_REPRESENTATION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCONSTRUCTIVE_GEOMETRY_REPRESENTATION? { rep.super_eCONSTRUCTIVE_GEOMETRY_REPRESENTATION }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var DESCRIPTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tTEXT?  { rep.DESCRIPTION }
  var ITEMS: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION_ITEM>/*[1:nil]*/ )?  { rep.ITEMS }
  var TESSELLATION_ACCURACY_PARAMETERS: (SDAI.SET<
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sTESSELLATION_ACCURACY_PARAMETER_ITEM>/*[1:nil]*/ )?  { rep.TESSELLATION_ACCURACY_PARAMETERS }
  var ID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER?  { rep.ID }
  var CONTEXT_OF_ITEMS: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION_CONTEXT?  { rep.CONTEXT_OF_ITEMS }
  var NEUTRAL_SKETCH_SEMANTICS: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.nCURVES_OR_AREA?  { rep.NEUTRAL_SKETCH_SEMANTICS }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { rep.NAME }
}

