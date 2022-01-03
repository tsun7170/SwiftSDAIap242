/* file: product_space.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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
  TYPE product_space = SELECT
    ( listed_product_space (*ENTITY*),
     uniform_product_space (*ENTITY*) );
  END_TYPE; -- product_space (line:4978 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES FOR SELECT
/*
  listed_product_space (*ENTITY*):
  ATTR:  factors: LIST OF maths_space

  uniform_product_space (*ENTITY*):
  ATTR:  exponent: positive_integer
  ATTR:  base: maths_space

*/

/** SELECT type
- EXPRESS:
```express
  TYPE product_space = SELECT
    ( listed_product_space (*ENTITY*),
     uniform_product_space (*ENTITY*) );
  END_TYPE; -- product_space (line:4978 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public enum sPRODUCT_SPACE : SDAIValue, AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sPRODUCT_SPACE__type {

    /// SELECT case ``eLISTED_PRODUCT_SPACE`` (ENTITY) in ``sPRODUCT_SPACE``
    case _LISTED_PRODUCT_SPACE(eLISTED_PRODUCT_SPACE)	// (ENTITY)

    /// SELECT case ``eUNIFORM_PRODUCT_SPACE`` (ENTITY) in ``sPRODUCT_SPACE``
    case _UNIFORM_PRODUCT_SPACE(eUNIFORM_PRODUCT_SPACE)	// (ENTITY)

    //MARK: - CONSTRUCTORS
    public init(fundamental: FundamentalType) { self = fundamental }

    public init?<T: SDAIUnderlyingType>(possiblyFrom underlyingType: T?){
      return nil
    }

    public init?(possiblyFrom complex: SDAI.ComplexEntity?) {
      guard let complex = complex else { return nil }

      if let base = complex.entityReference(eLISTED_PRODUCT_SPACE.self) {self = ._LISTED_PRODUCT_SPACE(base) }
      else if let base = complex.entityReference(eUNIFORM_PRODUCT_SPACE.self) {self = ._UNIFORM_PRODUCT_SPACE(base) }
      else { return nil }
    }

    public init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let select = generic else { return nil }

      if let fundamental = select as? Self {
        self.init(fundamental: fundamental)
      }
      else if let base = eLISTED_PRODUCT_SPACE.convert(fromGeneric: select) {
        self = ._LISTED_PRODUCT_SPACE(base)
      }
      else if let base = eUNIFORM_PRODUCT_SPACE.convert(fromGeneric: select) {
        self = ._UNIFORM_PRODUCT_SPACE(base)
      }
      else { return nil }
    }

    // InitializableByP21Parameter
    public static var bareTypeName: String = "PRODUCT_SPACE"

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
    public var super_eMATHS_SPACE: eMATHS_SPACE? {
      switch self {
      case ._LISTED_PRODUCT_SPACE(let entity): return entity.super_eMATHS_SPACE
      case ._UNIFORM_PRODUCT_SPACE(let entity): return entity.super_eMATHS_SPACE
      }
    }

    public var super_eSIMPLE_GENERIC_EXPRESSION: eSIMPLE_GENERIC_EXPRESSION? {
      switch self {
      case ._LISTED_PRODUCT_SPACE(let entity): return entity.super_eSIMPLE_GENERIC_EXPRESSION
      case ._UNIFORM_PRODUCT_SPACE(let entity): return entity.super_eSIMPLE_GENERIC_EXPRESSION
      }
    }

    public var super_eLISTED_PRODUCT_SPACE: eLISTED_PRODUCT_SPACE? {
      switch self {
      case ._LISTED_PRODUCT_SPACE(let entity): return entity
      default: return nil
      }
    }

    public var super_eGENERIC_LITERAL: eGENERIC_LITERAL? {
      switch self {
      case ._LISTED_PRODUCT_SPACE(let entity): return entity.super_eGENERIC_LITERAL
      case ._UNIFORM_PRODUCT_SPACE(let entity): return entity.super_eGENERIC_LITERAL
      }
    }

    public var super_eGENERIC_EXPRESSION: eGENERIC_EXPRESSION? {
      switch self {
      case ._LISTED_PRODUCT_SPACE(let entity): return entity.super_eGENERIC_EXPRESSION
      case ._UNIFORM_PRODUCT_SPACE(let entity): return entity.super_eGENERIC_EXPRESSION
      }
    }

    public var super_eUNIFORM_PRODUCT_SPACE: eUNIFORM_PRODUCT_SPACE? {
      switch self {
      case ._UNIFORM_PRODUCT_SPACE(let entity): return entity
      default: return nil
      }
    }


    //MARK: - ENTITY ATTRIBUTE REFERENCES
    /// attribute of SELECT type ``sPRODUCT_SPACE``
    /// - origin: ENTITY( ``eUNIFORM_PRODUCT_SPACE`` )
    public var EXPONENT: tPOSITIVE_INTEGER?  {
      switch self {
      case ._UNIFORM_PRODUCT_SPACE(let entity): return entity.EXPONENT
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPRODUCT_SPACE``
    /// - origin: ENTITY( ``eLISTED_PRODUCT_SPACE`` )
    public var FACTORS: SDAI.LIST<eMATHS_SPACE>?  {
      switch self {
      case ._LISTED_PRODUCT_SPACE(let entity): return entity.FACTORS
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPRODUCT_SPACE``
    /// - origin: ENTITY( ``eUNIFORM_PRODUCT_SPACE`` )
    public var BASE: eMATHS_SPACE?  {
      switch self {
      case ._UNIFORM_PRODUCT_SPACE(let entity): return entity.BASE
      default: return nil
      }
    }


    //MARK: - SDAIValue
    public func isValueEqual<T: SDAIValue>(to rhs: T) -> Bool {
      switch self {
      case ._LISTED_PRODUCT_SPACE(let selection): return selection.value.isValueEqual(to: rhs)
      case ._UNIFORM_PRODUCT_SPACE(let selection): return selection.value.isValueEqual(to: rhs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?) -> Bool? {
      switch self {
      case ._LISTED_PRODUCT_SPACE(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._UNIFORM_PRODUCT_SPACE(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      }
    }

    public func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      switch self {
      case ._LISTED_PRODUCT_SPACE(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._UNIFORM_PRODUCT_SPACE(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      }
    }

    public func isValueEqual<T: SDAIValue>(to rhs: T, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      switch self {
      case ._LISTED_PRODUCT_SPACE(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._UNIFORM_PRODUCT_SPACE(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      switch self {
      case ._LISTED_PRODUCT_SPACE(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._UNIFORM_PRODUCT_SPACE(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      }
    }


    //MARK: SDAIGenericTypeBase
    public func copy() -> Self {
      switch self {
      case ._LISTED_PRODUCT_SPACE(let selection): return ._LISTED_PRODUCT_SPACE(selection.copy())
      case ._UNIFORM_PRODUCT_SPACE(let selection): return ._UNIFORM_PRODUCT_SPACE(selection.copy())
      }
    }

    //MARK: SDAIGenericType
    public var typeMembers: Set<SDAI.STRING> {
      var members: Set<SDAI.STRING> = [SDAI.STRING(Self.typeName)]
      switch self {
      case ._LISTED_PRODUCT_SPACE(let selection): members.formUnion(selection.typeMembers)
      case ._UNIFORM_PRODUCT_SPACE(let selection): members.formUnion(selection.typeMembers)
      }
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sTUPLE_SPACE.typeName)) // -> Self
      return members
    }

    public var entityReference: SDAI.EntityReference? {
      switch self {
      case ._LISTED_PRODUCT_SPACE(let selection): return selection.entityReference
      case ._UNIFORM_PRODUCT_SPACE(let selection): return selection.entityReference
      }
    }
    public var stringValue: SDAI.STRING? {
      switch self {
      case ._LISTED_PRODUCT_SPACE(let selection): return selection.stringValue
      case ._UNIFORM_PRODUCT_SPACE(let selection): return selection.stringValue
      }
    }
    public var binaryValue: SDAI.BINARY? {
      switch self {
      case ._LISTED_PRODUCT_SPACE(let selection): return selection.binaryValue
      case ._UNIFORM_PRODUCT_SPACE(let selection): return selection.binaryValue
      }
    }
    public var logicalValue: SDAI.LOGICAL? {
      switch self {
      case ._LISTED_PRODUCT_SPACE(let selection): return selection.logicalValue
      case ._UNIFORM_PRODUCT_SPACE(let selection): return selection.logicalValue
      }
    }
    public var booleanValue: SDAI.BOOLEAN? {
      switch self {
      case ._LISTED_PRODUCT_SPACE(let selection): return selection.booleanValue
      case ._UNIFORM_PRODUCT_SPACE(let selection): return selection.booleanValue
      }
    }
    public var numberValue: SDAI.NUMBER? {
      switch self {
      case ._LISTED_PRODUCT_SPACE(let selection): return selection.numberValue
      case ._UNIFORM_PRODUCT_SPACE(let selection): return selection.numberValue
      }
    }
    public var realValue: SDAI.REAL? {
      switch self {
      case ._LISTED_PRODUCT_SPACE(let selection): return selection.realValue
      case ._UNIFORM_PRODUCT_SPACE(let selection): return selection.realValue
      }
    }
    public var integerValue: SDAI.INTEGER? {
      switch self {
      case ._LISTED_PRODUCT_SPACE(let selection): return selection.integerValue
      case ._UNIFORM_PRODUCT_SPACE(let selection): return selection.integerValue
      }
    }
    public var genericEnumValue: SDAI.GenericEnumValue? {
      switch self {
      case ._LISTED_PRODUCT_SPACE(let selection): return selection.genericEnumValue
      case ._UNIFORM_PRODUCT_SPACE(let selection): return selection.genericEnumValue
      }
    }
    public func arrayOptionalValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY_OPTIONAL<ELEM>? {
      switch self {
      case ._LISTED_PRODUCT_SPACE(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._UNIFORM_PRODUCT_SPACE(let selection): return selection.arrayOptionalValue(elementType:elementType)
      }
    }
    public func arrayValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY<ELEM>? {
      switch self {
      case ._LISTED_PRODUCT_SPACE(let selection): return selection.arrayValue(elementType:elementType)
      case ._UNIFORM_PRODUCT_SPACE(let selection): return selection.arrayValue(elementType:elementType)
      }
    }
    public func listValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.LIST<ELEM>? {
      switch self {
      case ._LISTED_PRODUCT_SPACE(let selection): return selection.listValue(elementType:elementType)
      case ._UNIFORM_PRODUCT_SPACE(let selection): return selection.listValue(elementType:elementType)
      }
    }
    public func bagValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.BAG<ELEM>? {
      switch self {
      case ._LISTED_PRODUCT_SPACE(let selection): return selection.bagValue(elementType:elementType)
      case ._UNIFORM_PRODUCT_SPACE(let selection): return selection.bagValue(elementType:elementType)
      }
    }
    public func setValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.SET<ELEM>? {
      switch self {
      case ._LISTED_PRODUCT_SPACE(let selection): return selection.setValue(elementType:elementType)
      case ._UNIFORM_PRODUCT_SPACE(let selection): return selection.setValue(elementType:elementType)
      }
    }
    public func enumValue<ENUM:SDAIEnumerationType>(enumType:ENUM.Type) -> ENUM? {
      switch self {
      case ._LISTED_PRODUCT_SPACE(let selection): return selection.enumValue(enumType:enumType)
      case ._UNIFORM_PRODUCT_SPACE(let selection): return selection.enumValue(enumType:enumType)
      }
    }

    //MARK: SDAIUnderlyingType
    public typealias FundamentalType = Self
    public static var typeName: String = "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT_SPACE"
    public var asFundamentalType: FundamentalType { return self }

    //MARK: SDAIObservableAggregateElement
    public var entityReferences: AnySequence<SDAI.EntityReference> {
      switch self {
      case ._LISTED_PRODUCT_SPACE(let entity): return entity.entityReferences
      case ._UNIFORM_PRODUCT_SPACE(let entity): return entity.entityReferences
      }
    }

    public mutating func configure(with observer: SDAI.EntityReferenceObserver) {
      switch self {
      case ._LISTED_PRODUCT_SPACE(let entity): 
        entity.configure(with: observer)
        self = ._LISTED_PRODUCT_SPACE(entity)
      case ._UNIFORM_PRODUCT_SPACE(let entity): 
        entity.configure(with: observer)
        self = ._UNIFORM_PRODUCT_SPACE(entity)
      }
    }

    public mutating func teardownObserver() {
      switch self {
      case ._LISTED_PRODUCT_SPACE(let entity): 
        entity.teardownObserver()
        self = ._LISTED_PRODUCT_SPACE(entity)
      case ._UNIFORM_PRODUCT_SPACE(let entity): 
        entity.teardownObserver()
        self = ._UNIFORM_PRODUCT_SPACE(entity)
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
      case ._LISTED_PRODUCT_SPACE(let selectValue): 
        result = eLISTED_PRODUCT_SPACE.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\LISTED_PRODUCT_SPACE")
      case ._UNIFORM_PRODUCT_SPACE(let selectValue): 
        result = eUNIFORM_PRODUCT_SPACE.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\UNIFORM_PRODUCT_SPACE")
      case nil: break
      }

      return result
    }

  }

}


//MARK: - SELECT TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sPRODUCT_SPACE__type: SDAISelectType {

  //MARK: GROUP REFERENCES
  var super_eMATHS_SPACE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eMATHS_SPACE? { get }
  var super_eSIMPLE_GENERIC_EXPRESSION: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSIMPLE_GENERIC_EXPRESSION? { get }
  var super_eLISTED_PRODUCT_SPACE: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eLISTED_PRODUCT_SPACE? { get }
  var super_eGENERIC_LITERAL: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eGENERIC_LITERAL? { get }
  var super_eGENERIC_EXPRESSION: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eGENERIC_EXPRESSION? { get }
  var super_eUNIFORM_PRODUCT_SPACE: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eUNIFORM_PRODUCT_SPACE? { get }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var EXPONENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tPOSITIVE_INTEGER?  { get }
  var FACTORS: SDAI.LIST<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eMATHS_SPACE>?  { get }
  var BASE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eMATHS_SPACE?  { get }
}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sPRODUCT_SPACE__subtype: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sPRODUCT_SPACE__type, SDAIDefinedType
where Supertype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sPRODUCT_SPACE__type
{}

public extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sPRODUCT_SPACE__subtype {
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
  var super_eMATHS_SPACE: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eMATHS_SPACE? { rep.super_eMATHS_SPACE }
  var super_eSIMPLE_GENERIC_EXPRESSION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSIMPLE_GENERIC_EXPRESSION? { rep.super_eSIMPLE_GENERIC_EXPRESSION }
  var super_eLISTED_PRODUCT_SPACE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eLISTED_PRODUCT_SPACE? { rep.super_eLISTED_PRODUCT_SPACE }
  var super_eGENERIC_LITERAL: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eGENERIC_LITERAL? { rep.super_eGENERIC_LITERAL }
  var super_eGENERIC_EXPRESSION: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eGENERIC_EXPRESSION? { rep.super_eGENERIC_EXPRESSION }
  var super_eUNIFORM_PRODUCT_SPACE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eUNIFORM_PRODUCT_SPACE? { rep.super_eUNIFORM_PRODUCT_SPACE }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var EXPONENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tPOSITIVE_INTEGER?  { rep.EXPONENT }
  var FACTORS: SDAI.LIST<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eMATHS_SPACE>?  { rep.FACTORS }
  var BASE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eMATHS_SPACE?  { rep.BASE }
}

