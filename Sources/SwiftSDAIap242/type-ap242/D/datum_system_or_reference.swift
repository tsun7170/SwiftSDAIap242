/* file: datum_system_or_reference.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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
  TYPE datum_system_or_reference = SELECT
    ( datum_reference (*ENTITY*),
     datum_system (*ENTITY*) );
  END_TYPE; -- datum_system_or_reference (line:2121 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES FOR SELECT
/*
  datum_reference (*ENTITY*):
  ATTR:  referenced_datum: datum
  ATTR:  precedence: INTEGER
  ATTR:  modifier: limit_condition

  datum_system (*ENTITY*):
  ATTR:  product_definitional: LOGICAL
  ATTR:  description: text
  ATTR:  of_shape: product_definition_shape
  ATTR:  constituents: LIST [1 : 3] OF UNIQUE datum_reference_compartment
  ATTR:  id: identifier
  ATTR:  name: label

*/

/** SELECT type
- EXPRESS:
```express
  TYPE datum_system_or_reference = SELECT
    ( datum_reference (*ENTITY*),
     datum_system (*ENTITY*) );
  END_TYPE; -- datum_system_or_reference (line:2121 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public enum sDATUM_SYSTEM_OR_REFERENCE : SDAIValue, AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sDATUM_SYSTEM_OR_REFERENCE__type {

    /// SELECT case ``eDATUM_REFERENCE`` (ENTITY) in ``sDATUM_SYSTEM_OR_REFERENCE``
    case _DATUM_REFERENCE(eDATUM_REFERENCE)	// (ENTITY)

    /// SELECT case ``eDATUM_SYSTEM`` (ENTITY) in ``sDATUM_SYSTEM_OR_REFERENCE``
    case _DATUM_SYSTEM(eDATUM_SYSTEM)	// (ENTITY)

    //MARK: - CONSTRUCTORS
    public init(fundamental: FundamentalType) { self = fundamental }

    public init?<T: SDAIUnderlyingType>(possiblyFrom underlyingType: T?){
      return nil
    }

    public init?(possiblyFrom complex: SDAI.ComplexEntity?) {
      guard let complex = complex else { return nil }

      if let base = complex.entityReference(eDATUM_REFERENCE.self) {self = ._DATUM_REFERENCE(base) }
      else if let base = complex.entityReference(eDATUM_SYSTEM.self) {self = ._DATUM_SYSTEM(base) }
      else { return nil }
    }

    public init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let select = generic else { return nil }

      if let fundamental = select as? Self {
        self.init(fundamental: fundamental)
      }
      else if let base = eDATUM_REFERENCE.convert(fromGeneric: select) {
        self = ._DATUM_REFERENCE(base)
      }
      else if let base = eDATUM_SYSTEM.convert(fromGeneric: select) {
        self = ._DATUM_SYSTEM(base)
      }
      else { return nil }
    }

    // InitializableByP21Parameter
    public static var bareTypeName: String = "DATUM_SYSTEM_OR_REFERENCE"

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
    public var super_eDATUM_SYSTEM: eDATUM_SYSTEM? {
      switch self {
      case ._DATUM_SYSTEM(let entity): return entity
      default: return nil
      }
    }

    public var super_eDATUM_REFERENCE: eDATUM_REFERENCE? {
      switch self {
      case ._DATUM_REFERENCE(let entity): return entity
      default: return nil
      }
    }

    public var super_eSHAPE_ASPECT: eSHAPE_ASPECT? {
      switch self {
      case ._DATUM_SYSTEM(let entity): return entity.super_eSHAPE_ASPECT
      default: return nil
      }
    }


    //MARK: - ENTITY ATTRIBUTE REFERENCES
    /// attribute of SELECT type ``sDATUM_SYSTEM_OR_REFERENCE``
    /// - origin: ENTITY( ``eDATUM_SYSTEM`` )
    public var PRODUCT_DEFINITIONAL: SDAI.LOGICAL {
      switch self {
      case ._DATUM_SYSTEM(let entity): return entity.PRODUCT_DEFINITIONAL
      default: return nil
      }
    }

    /// attribute of SELECT type ``sDATUM_SYSTEM_OR_REFERENCE``
    /// - origin: ENTITY( ``eDATUM_SYSTEM`` )
    public var DESCRIPTION: tTEXT?  {
      switch self {
      case ._DATUM_SYSTEM(let entity): return entity.DESCRIPTION
      default: return nil
      }
    }

    /// attribute of SELECT type ``sDATUM_SYSTEM_OR_REFERENCE``
    /// - origin: ENTITY( ``eDATUM_REFERENCE`` )
    public var REFERENCED_DATUM: eDATUM?  {
      switch self {
      case ._DATUM_REFERENCE(let entity): return entity.REFERENCED_DATUM
      default: return nil
      }
    }

    /// attribute of SELECT type ``sDATUM_SYSTEM_OR_REFERENCE``
    /// - origin: ENTITY( ``eDATUM_REFERENCE`` )
    public var PRECEDENCE: SDAI.INTEGER?  {
      switch self {
      case ._DATUM_REFERENCE(let entity): return entity.PRECEDENCE
      default: return nil
      }
    }

    /// attribute of SELECT type ``sDATUM_SYSTEM_OR_REFERENCE``
    /// - origin: ENTITY( ``eDATUM_REFERENCE`` )
    public var MODIFIER: nLIMIT_CONDITION?  {
      switch self {
      case ._DATUM_REFERENCE(let entity): return entity.MODIFIER
      default: return nil
      }
    }

    /// attribute of SELECT type ``sDATUM_SYSTEM_OR_REFERENCE``
    /// - origin: ENTITY( ``eDATUM_SYSTEM`` )
    public var OF_SHAPE: ePRODUCT_DEFINITION_SHAPE?  {
      switch self {
      case ._DATUM_SYSTEM(let entity): return entity.OF_SHAPE
      default: return nil
      }
    }

    /// attribute of SELECT type ``sDATUM_SYSTEM_OR_REFERENCE``
    /// - origin: ENTITY( ``eDATUM_SYSTEM`` )
    public var CONSTITUENTS: (SDAI.LIST_UNIQUE<eDATUM_REFERENCE_COMPARTMENT>/*[1:3]*/ )?  {
      switch self {
      case ._DATUM_SYSTEM(let entity): return entity.CONSTITUENTS
      default: return nil
      }
    }

    /// attribute of SELECT type ``sDATUM_SYSTEM_OR_REFERENCE``
    /// - origin: ENTITY( ``eDATUM_SYSTEM`` )
    public var ID: tIDENTIFIER?  {
      switch self {
      case ._DATUM_SYSTEM(let entity): return entity.ID
      default: return nil
      }
    }

    /// attribute of SELECT type ``sDATUM_SYSTEM_OR_REFERENCE``
    /// - origin: ENTITY( ``eDATUM_SYSTEM`` )
    public var NAME: tLABEL?  {
      switch self {
      case ._DATUM_SYSTEM(let entity): return entity.NAME
      default: return nil
      }
    }


    //MARK: - SDAIValue
    public func isValueEqual<T: SDAIValue>(to rhs: T) -> Bool {
      switch self {
      case ._DATUM_REFERENCE(let selection): return selection.value.isValueEqual(to: rhs)
      case ._DATUM_SYSTEM(let selection): return selection.value.isValueEqual(to: rhs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?) -> Bool? {
      switch self {
      case ._DATUM_REFERENCE(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._DATUM_SYSTEM(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      }
    }

    public func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      switch self {
      case ._DATUM_REFERENCE(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._DATUM_SYSTEM(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      }
    }

    public func isValueEqual<T: SDAIValue>(to rhs: T, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      switch self {
      case ._DATUM_REFERENCE(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._DATUM_SYSTEM(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      switch self {
      case ._DATUM_REFERENCE(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._DATUM_SYSTEM(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      }
    }


    //MARK: SDAIGenericTypeBase
    public func copy() -> Self {
      switch self {
      case ._DATUM_REFERENCE(let selection): return ._DATUM_REFERENCE(selection.copy())
      case ._DATUM_SYSTEM(let selection): return ._DATUM_SYSTEM(selection.copy())
      }
    }

    //MARK: SDAIGenericType
    public var typeMembers: Set<SDAI.STRING> {
      var members: Set<SDAI.STRING> = [SDAI.STRING(Self.typeName)]
      switch self {
      case ._DATUM_REFERENCE(let selection): members.formUnion(selection.typeMembers)
      case ._DATUM_SYSTEM(let selection): members.formUnion(selection.typeMembers)
      }
      return members
    }

    public var entityReference: SDAI.EntityReference? {
      switch self {
      case ._DATUM_REFERENCE(let selection): return selection.entityReference
      case ._DATUM_SYSTEM(let selection): return selection.entityReference
      }
    }
    public var stringValue: SDAI.STRING? {
      switch self {
      case ._DATUM_REFERENCE(let selection): return selection.stringValue
      case ._DATUM_SYSTEM(let selection): return selection.stringValue
      }
    }
    public var binaryValue: SDAI.BINARY? {
      switch self {
      case ._DATUM_REFERENCE(let selection): return selection.binaryValue
      case ._DATUM_SYSTEM(let selection): return selection.binaryValue
      }
    }
    public var logicalValue: SDAI.LOGICAL? {
      switch self {
      case ._DATUM_REFERENCE(let selection): return selection.logicalValue
      case ._DATUM_SYSTEM(let selection): return selection.logicalValue
      }
    }
    public var booleanValue: SDAI.BOOLEAN? {
      switch self {
      case ._DATUM_REFERENCE(let selection): return selection.booleanValue
      case ._DATUM_SYSTEM(let selection): return selection.booleanValue
      }
    }
    public var numberValue: SDAI.NUMBER? {
      switch self {
      case ._DATUM_REFERENCE(let selection): return selection.numberValue
      case ._DATUM_SYSTEM(let selection): return selection.numberValue
      }
    }
    public var realValue: SDAI.REAL? {
      switch self {
      case ._DATUM_REFERENCE(let selection): return selection.realValue
      case ._DATUM_SYSTEM(let selection): return selection.realValue
      }
    }
    public var integerValue: SDAI.INTEGER? {
      switch self {
      case ._DATUM_REFERENCE(let selection): return selection.integerValue
      case ._DATUM_SYSTEM(let selection): return selection.integerValue
      }
    }
    public var genericEnumValue: SDAI.GenericEnumValue? {
      switch self {
      case ._DATUM_REFERENCE(let selection): return selection.genericEnumValue
      case ._DATUM_SYSTEM(let selection): return selection.genericEnumValue
      }
    }
    public func arrayOptionalValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY_OPTIONAL<ELEM>? {
      switch self {
      case ._DATUM_REFERENCE(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._DATUM_SYSTEM(let selection): return selection.arrayOptionalValue(elementType:elementType)
      }
    }
    public func arrayValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY<ELEM>? {
      switch self {
      case ._DATUM_REFERENCE(let selection): return selection.arrayValue(elementType:elementType)
      case ._DATUM_SYSTEM(let selection): return selection.arrayValue(elementType:elementType)
      }
    }
    public func listValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.LIST<ELEM>? {
      switch self {
      case ._DATUM_REFERENCE(let selection): return selection.listValue(elementType:elementType)
      case ._DATUM_SYSTEM(let selection): return selection.listValue(elementType:elementType)
      }
    }
    public func bagValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.BAG<ELEM>? {
      switch self {
      case ._DATUM_REFERENCE(let selection): return selection.bagValue(elementType:elementType)
      case ._DATUM_SYSTEM(let selection): return selection.bagValue(elementType:elementType)
      }
    }
    public func setValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.SET<ELEM>? {
      switch self {
      case ._DATUM_REFERENCE(let selection): return selection.setValue(elementType:elementType)
      case ._DATUM_SYSTEM(let selection): return selection.setValue(elementType:elementType)
      }
    }
    public func enumValue<ENUM:SDAIEnumerationType>(enumType:ENUM.Type) -> ENUM? {
      switch self {
      case ._DATUM_REFERENCE(let selection): return selection.enumValue(enumType:enumType)
      case ._DATUM_SYSTEM(let selection): return selection.enumValue(enumType:enumType)
      }
    }

    //MARK: SDAIUnderlyingType
    public typealias FundamentalType = Self
    public static var typeName: String = 
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DATUM_SYSTEM_OR_REFERENCE"
    public var asFundamentalType: FundamentalType { return self }

    //MARK: SDAIObservableAggregateElement
    public var entityReferences: AnySequence<SDAI.EntityReference> {
      switch self {
      case ._DATUM_REFERENCE(let entity): return entity.entityReferences
      case ._DATUM_SYSTEM(let entity): return entity.entityReferences
      }
    }

    public mutating func configure(with observer: SDAI.EntityReferenceObserver) {
      switch self {
      case ._DATUM_REFERENCE(let entity): 
        entity.configure(with: observer)
        self = ._DATUM_REFERENCE(entity)
      case ._DATUM_SYSTEM(let entity): 
        entity.configure(with: observer)
        self = ._DATUM_SYSTEM(entity)
      }
    }

    public mutating func teardownObserver() {
      switch self {
      case ._DATUM_REFERENCE(let entity): 
        entity.teardownObserver()
        self = ._DATUM_REFERENCE(entity)
      case ._DATUM_SYSTEM(let entity): 
        entity.teardownObserver()
        self = ._DATUM_SYSTEM(entity)
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
      case ._DATUM_REFERENCE(let selectValue): 
        result = eDATUM_REFERENCE.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\DATUM_REFERENCE")
      case ._DATUM_SYSTEM(let selectValue): result = eDATUM_SYSTEM.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\DATUM_SYSTEM")
      case nil: break
      }

      return result
    }

  }

}


//MARK: - SELECT TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sDATUM_SYSTEM_OR_REFERENCE__type: 
  SDAISelectType {

  //MARK: GROUP REFERENCES
  var super_eDATUM_SYSTEM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDATUM_SYSTEM? { get }
  var super_eDATUM_REFERENCE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDATUM_REFERENCE? { get }
  var super_eSHAPE_ASPECT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSHAPE_ASPECT? { get }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var PRODUCT_DEFINITIONAL: SDAI.LOGICAL { get }
  var DESCRIPTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tTEXT?  { get }
  var REFERENCED_DATUM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDATUM?  { get }
  var PRECEDENCE: SDAI.INTEGER?  { get }
  var MODIFIER: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.nLIMIT_CONDITION?  { get }
  var OF_SHAPE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRODUCT_DEFINITION_SHAPE?  { get }
  var CONSTITUENTS: (SDAI.LIST_UNIQUE<
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDATUM_REFERENCE_COMPARTMENT>/*[1:3]*/ )?  { get }
  var ID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER?  { get }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { get }
}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sDATUM_SYSTEM_OR_REFERENCE__subtype: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sDATUM_SYSTEM_OR_REFERENCE__type, SDAIDefinedType
where Supertype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sDATUM_SYSTEM_OR_REFERENCE__type
{}

public extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sDATUM_SYSTEM_OR_REFERENCE__subtype {
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
  var super_eDATUM_SYSTEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDATUM_SYSTEM? { rep.super_eDATUM_SYSTEM }
  var super_eDATUM_REFERENCE: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDATUM_REFERENCE? { rep.super_eDATUM_REFERENCE }
  var super_eSHAPE_ASPECT: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSHAPE_ASPECT? { rep.super_eSHAPE_ASPECT }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var PRODUCT_DEFINITIONAL: SDAI.LOGICAL { rep.PRODUCT_DEFINITIONAL }
  var DESCRIPTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tTEXT?  { rep.DESCRIPTION }
  var REFERENCED_DATUM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDATUM?  { rep.REFERENCED_DATUM }
  var PRECEDENCE: SDAI.INTEGER?  { rep.PRECEDENCE }
  var MODIFIER: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.nLIMIT_CONDITION?  { rep.MODIFIER }
  var OF_SHAPE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRODUCT_DEFINITION_SHAPE?  { rep.OF_SHAPE }
  var CONSTITUENTS: (SDAI.LIST_UNIQUE<
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDATUM_REFERENCE_COMPARTMENT>/*[1:3]*/ )?  { rep.CONSTITUENTS }
  var ID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER?  { rep.ID }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { rep.NAME }
}

