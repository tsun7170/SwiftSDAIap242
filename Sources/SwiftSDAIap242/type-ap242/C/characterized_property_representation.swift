/* file: characterized_property_representation.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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
  TYPE characterized_property_representation = SELECT
    ( action_property_representation (*ENTITY*),
     dimensional_characteristic_representation (*ENTITY*),
     property_definition_representation (*ENTITY*),
     resource_property_representation (*ENTITY*) );
  END_TYPE; -- characterized_property_representation (line:1436 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES FOR SELECT
/*
  action_property_representation (*ENTITY*):
  ATTR:  representation: representation *** Multiple Select Case Sources ***
  ATTR:  description: text *** Multiple Select Case Sources ***
  ATTR:  property: action_property *** Multiple Select Case Sources ***
  ATTR:  name: label *** Multiple Select Case Sources ***

  dimensional_characteristic_representation (*ENTITY*):
  ATTR:  representation: shape_dimension_representation *** Multiple Select Case Sources ***
  ATTR:  dimension: dimensional_characteristic

  property_definition_representation (*ENTITY*):
  ATTR:  description: text *** Multiple Select Case Sources ***
  ATTR:  dependent_environment: data_environment
  ATTR:  used_representation: representation
  ATTR:  base: (AMBIGUOUS (CASE LEVEL))
  ATTR:  definition: represented_definition
  ATTR:  name: label *** Multiple Select Case Sources ***

  resource_property_representation (*ENTITY*):
  ATTR:  representation: representation *** Multiple Select Case Sources ***
  ATTR:  description: text *** Multiple Select Case Sources ***
  ATTR:  property: resource_property *** Multiple Select Case Sources ***
  ATTR:  name: label *** Multiple Select Case Sources ***

*/

/** SELECT type
- EXPRESS:
```express
  TYPE characterized_property_representation = SELECT
    ( action_property_representation (*ENTITY*),
     dimensional_characteristic_representation (*ENTITY*),
     property_definition_representation (*ENTITY*),
     resource_property_representation (*ENTITY*) );
  END_TYPE; -- characterized_property_representation (line:1436 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public enum sCHARACTERIZED_PROPERTY_REPRESENTATION : SDAIValue, AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sCHARACTERIZED_PROPERTY_REPRESENTATION__type {

    /// SELECT case ``eACTION_PROPERTY_REPRESENTATION`` (ENTITY) in ``sCHARACTERIZED_PROPERTY_REPRESENTATION``
    case _ACTION_PROPERTY_REPRESENTATION(eACTION_PROPERTY_REPRESENTATION)	// (ENTITY)

    /// SELECT case ``eDIMENSIONAL_CHARACTERISTIC_REPRESENTATION`` (ENTITY) in ``sCHARACTERIZED_PROPERTY_REPRESENTATION``
    case _DIMENSIONAL_CHARACTERISTIC_REPRESENTATION(eDIMENSIONAL_CHARACTERISTIC_REPRESENTATION)	// (ENTITY)

    /// SELECT case ``ePROPERTY_DEFINITION_REPRESENTATION`` (ENTITY) in ``sCHARACTERIZED_PROPERTY_REPRESENTATION``
    case _PROPERTY_DEFINITION_REPRESENTATION(ePROPERTY_DEFINITION_REPRESENTATION)	// (ENTITY)

    /// SELECT case ``eRESOURCE_PROPERTY_REPRESENTATION`` (ENTITY) in ``sCHARACTERIZED_PROPERTY_REPRESENTATION``
    case _RESOURCE_PROPERTY_REPRESENTATION(eRESOURCE_PROPERTY_REPRESENTATION)	// (ENTITY)

    //MARK: - CONSTRUCTORS
    public init(fundamental: FundamentalType) { self = fundamental }

    public init?<T: SDAIUnderlyingType>(possiblyFrom underlyingType: T?){
      return nil
    }

    public init?(possiblyFrom complex: SDAI.ComplexEntity?) {
      guard let complex = complex else { return nil }

      if let base = complex.entityReference(eACTION_PROPERTY_REPRESENTATION.self) {self = ._ACTION_PROPERTY_REPRESENTATION(base) }
      else if let base = complex.entityReference(eDIMENSIONAL_CHARACTERISTIC_REPRESENTATION.self) {self = ._DIMENSIONAL_CHARACTERISTIC_REPRESENTATION(base) }
      else if let base = complex.entityReference(ePROPERTY_DEFINITION_REPRESENTATION.self) {self = ._PROPERTY_DEFINITION_REPRESENTATION(base) }
      else if let base = complex.entityReference(eRESOURCE_PROPERTY_REPRESENTATION.self) {self = ._RESOURCE_PROPERTY_REPRESENTATION(base) }
      else { return nil }
    }

    public init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let select = generic else { return nil }

      if let fundamental = select as? Self {
        self.init(fundamental: fundamental)
      }
      else if let base = eACTION_PROPERTY_REPRESENTATION.convert(fromGeneric: select) {
        self = ._ACTION_PROPERTY_REPRESENTATION(base)
      }
      else if let base = eDIMENSIONAL_CHARACTERISTIC_REPRESENTATION.convert(fromGeneric: select) {
        self = ._DIMENSIONAL_CHARACTERISTIC_REPRESENTATION(base)
      }
      else if let base = ePROPERTY_DEFINITION_REPRESENTATION.convert(fromGeneric: select) {
        self = ._PROPERTY_DEFINITION_REPRESENTATION(base)
      }
      else if let base = eRESOURCE_PROPERTY_REPRESENTATION.convert(fromGeneric: select) {
        self = ._RESOURCE_PROPERTY_REPRESENTATION(base)
      }
      else { return nil }
    }

    // InitializableByP21Parameter
    public static var bareTypeName: String = "CHARACTERIZED_PROPERTY_REPRESENTATION"

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
    public var super_eDIMENSIONAL_CHARACTERISTIC_REPRESENTATION: 
      eDIMENSIONAL_CHARACTERISTIC_REPRESENTATION? {
      switch self {
      case ._DIMENSIONAL_CHARACTERISTIC_REPRESENTATION(let entity): return entity
      default: return nil
      }
    }

    public var super_ePROPERTY_DEFINITION_REPRESENTATION: ePROPERTY_DEFINITION_REPRESENTATION? {
      switch self {
      case ._PROPERTY_DEFINITION_REPRESENTATION(let entity): return entity
      default: return nil
      }
    }

    public var super_eRESOURCE_PROPERTY_REPRESENTATION: eRESOURCE_PROPERTY_REPRESENTATION? {
      switch self {
      case ._RESOURCE_PROPERTY_REPRESENTATION(let entity): return entity
      default: return nil
      }
    }

    public var super_eACTION_PROPERTY_REPRESENTATION: eACTION_PROPERTY_REPRESENTATION? {
      switch self {
      case ._ACTION_PROPERTY_REPRESENTATION(let entity): return entity
      default: return nil
      }
    }


    //MARK: - ENTITY ATTRIBUTE REFERENCES
    /// attribute of SELECT type ``sCHARACTERIZED_PROPERTY_REPRESENTATION``
    /// - origin: ENTITY( ``eACTION_PROPERTY_REPRESENTATION`` )
    /// - origin: ENTITY( ``eDIMENSIONAL_CHARACTERISTIC_REPRESENTATION`` )
    /// - origin: ENTITY( ``eRESOURCE_PROPERTY_REPRESENTATION`` )
    public var REPRESENTATION: SDAI.GENERIC_ENTITY?  {
      switch self {
      case ._ACTION_PROPERTY_REPRESENTATION(let entity): return entity.REPRESENTATION
      case ._DIMENSIONAL_CHARACTERISTIC_REPRESENTATION(let entity): return entity.REPRESENTATION
      case ._RESOURCE_PROPERTY_REPRESENTATION(let entity): return entity.REPRESENTATION
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCHARACTERIZED_PROPERTY_REPRESENTATION``
    /// - origin: ENTITY( ``eACTION_PROPERTY_REPRESENTATION`` )
    /// - origin: ENTITY( ``ePROPERTY_DEFINITION_REPRESENTATION`` )
    /// - origin: ENTITY( ``eRESOURCE_PROPERTY_REPRESENTATION`` )
    public var DESCRIPTION: tTEXT?  {
      switch self {
      case ._ACTION_PROPERTY_REPRESENTATION(let entity): return entity.DESCRIPTION
      case ._PROPERTY_DEFINITION_REPRESENTATION(let entity): return entity.DESCRIPTION
      case ._RESOURCE_PROPERTY_REPRESENTATION(let entity): return entity.DESCRIPTION
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCHARACTERIZED_PROPERTY_REPRESENTATION``
    /// - origin: ENTITY( ``ePROPERTY_DEFINITION_REPRESENTATION`` )
    public var DEPENDENT_ENVIRONMENT: eDATA_ENVIRONMENT?  {
      switch self {
      case ._PROPERTY_DEFINITION_REPRESENTATION(let entity): return entity.DEPENDENT_ENVIRONMENT
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCHARACTERIZED_PROPERTY_REPRESENTATION``
    /// - origin: ENTITY( ``ePROPERTY_DEFINITION_REPRESENTATION`` )
    public var USED_REPRESENTATION: eREPRESENTATION?  {
      switch self {
      case ._PROPERTY_DEFINITION_REPRESENTATION(let entity): return entity.USED_REPRESENTATION
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCHARACTERIZED_PROPERTY_REPRESENTATION``
    /// - origin: ENTITY( ``eACTION_PROPERTY_REPRESENTATION`` )
    /// - origin: ENTITY( ``eRESOURCE_PROPERTY_REPRESENTATION`` )
    public var PROPERTY: SDAI.GENERIC_ENTITY?  {
      switch self {
      case ._ACTION_PROPERTY_REPRESENTATION(let entity): return entity.PROPERTY
      case ._RESOURCE_PROPERTY_REPRESENTATION(let entity): return entity.PROPERTY
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCHARACTERIZED_PROPERTY_REPRESENTATION``
    /// - origin: ENTITY( ``eDIMENSIONAL_CHARACTERISTIC_REPRESENTATION`` )
    public var DIMENSION: sDIMENSIONAL_CHARACTERISTIC?  {
      switch self {
      case ._DIMENSIONAL_CHARACTERISTIC_REPRESENTATION(let entity): return entity.DIMENSION
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCHARACTERIZED_PROPERTY_REPRESENTATION``
    /// - origin: ENTITY( ``ePROPERTY_DEFINITION_REPRESENTATION`` )
    public var DEFINITION: sREPRESENTED_DEFINITION?  {
      switch self {
      case ._PROPERTY_DEFINITION_REPRESENTATION(let entity): return entity.DEFINITION
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCHARACTERIZED_PROPERTY_REPRESENTATION``
    /// - origin: ENTITY( ``eACTION_PROPERTY_REPRESENTATION`` )
    /// - origin: ENTITY( ``ePROPERTY_DEFINITION_REPRESENTATION`` )
    /// - origin: ENTITY( ``eRESOURCE_PROPERTY_REPRESENTATION`` )
    public var NAME: tLABEL?  {
      switch self {
      case ._ACTION_PROPERTY_REPRESENTATION(let entity): return entity.NAME
      case ._PROPERTY_DEFINITION_REPRESENTATION(let entity): return entity.NAME
      case ._RESOURCE_PROPERTY_REPRESENTATION(let entity): return entity.NAME
      default: return nil
      }
    }


    //MARK: - SDAIValue
    public func isValueEqual<T: SDAIValue>(to rhs: T) -> Bool {
      switch self {
      case ._ACTION_PROPERTY_REPRESENTATION(let selection): return selection.value.isValueEqual(to: rhs)
      case ._DIMENSIONAL_CHARACTERISTIC_REPRESENTATION(let selection): return selection.value.isValueEqual(to: rhs)
      case ._PROPERTY_DEFINITION_REPRESENTATION(let selection): return selection.value.isValueEqual(to: rhs)
      case ._RESOURCE_PROPERTY_REPRESENTATION(let selection): return selection.value.isValueEqual(to: rhs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?) -> Bool? {
      switch self {
      case ._ACTION_PROPERTY_REPRESENTATION(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._DIMENSIONAL_CHARACTERISTIC_REPRESENTATION(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._PROPERTY_DEFINITION_REPRESENTATION(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._RESOURCE_PROPERTY_REPRESENTATION(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      }
    }

    public func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      switch self {
      case ._ACTION_PROPERTY_REPRESENTATION(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._DIMENSIONAL_CHARACTERISTIC_REPRESENTATION(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._PROPERTY_DEFINITION_REPRESENTATION(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._RESOURCE_PROPERTY_REPRESENTATION(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      }
    }

    public func isValueEqual<T: SDAIValue>(to rhs: T, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      switch self {
      case ._ACTION_PROPERTY_REPRESENTATION(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._DIMENSIONAL_CHARACTERISTIC_REPRESENTATION(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._PROPERTY_DEFINITION_REPRESENTATION(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._RESOURCE_PROPERTY_REPRESENTATION(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      switch self {
      case ._ACTION_PROPERTY_REPRESENTATION(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._DIMENSIONAL_CHARACTERISTIC_REPRESENTATION(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._PROPERTY_DEFINITION_REPRESENTATION(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._RESOURCE_PROPERTY_REPRESENTATION(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      }
    }


    //MARK: SDAIGenericTypeBase
    public func copy() -> Self {
      switch self {
      case ._ACTION_PROPERTY_REPRESENTATION(let selection): return ._ACTION_PROPERTY_REPRESENTATION(selection.copy())
      case ._DIMENSIONAL_CHARACTERISTIC_REPRESENTATION(let selection): return ._DIMENSIONAL_CHARACTERISTIC_REPRESENTATION(selection.copy())
      case ._PROPERTY_DEFINITION_REPRESENTATION(let selection): return ._PROPERTY_DEFINITION_REPRESENTATION(selection.copy())
      case ._RESOURCE_PROPERTY_REPRESENTATION(let selection): return ._RESOURCE_PROPERTY_REPRESENTATION(selection.copy())
      }
    }

    //MARK: SDAIGenericType
    public var typeMembers: Set<SDAI.STRING> {
      var members: Set<SDAI.STRING> = [SDAI.STRING(Self.typeName)]
      switch self {
      case ._ACTION_PROPERTY_REPRESENTATION(let selection): members.formUnion(selection.typeMembers)
      case ._DIMENSIONAL_CHARACTERISTIC_REPRESENTATION(let selection): members.formUnion(selection.typeMembers)
      case ._PROPERTY_DEFINITION_REPRESENTATION(let selection): members.formUnion(selection.typeMembers)
      case ._RESOURCE_PROPERTY_REPRESENTATION(let selection): members.formUnion(selection.typeMembers)
      }
      return members
    }

    public var entityReference: SDAI.EntityReference? {
      switch self {
      case ._ACTION_PROPERTY_REPRESENTATION(let selection): return selection.entityReference
      case ._DIMENSIONAL_CHARACTERISTIC_REPRESENTATION(let selection): return selection.entityReference
      case ._PROPERTY_DEFINITION_REPRESENTATION(let selection): return selection.entityReference
      case ._RESOURCE_PROPERTY_REPRESENTATION(let selection): return selection.entityReference
      }
    }
    public var stringValue: SDAI.STRING? {
      switch self {
      case ._ACTION_PROPERTY_REPRESENTATION(let selection): return selection.stringValue
      case ._DIMENSIONAL_CHARACTERISTIC_REPRESENTATION(let selection): return selection.stringValue
      case ._PROPERTY_DEFINITION_REPRESENTATION(let selection): return selection.stringValue
      case ._RESOURCE_PROPERTY_REPRESENTATION(let selection): return selection.stringValue
      }
    }
    public var binaryValue: SDAI.BINARY? {
      switch self {
      case ._ACTION_PROPERTY_REPRESENTATION(let selection): return selection.binaryValue
      case ._DIMENSIONAL_CHARACTERISTIC_REPRESENTATION(let selection): return selection.binaryValue
      case ._PROPERTY_DEFINITION_REPRESENTATION(let selection): return selection.binaryValue
      case ._RESOURCE_PROPERTY_REPRESENTATION(let selection): return selection.binaryValue
      }
    }
    public var logicalValue: SDAI.LOGICAL? {
      switch self {
      case ._ACTION_PROPERTY_REPRESENTATION(let selection): return selection.logicalValue
      case ._DIMENSIONAL_CHARACTERISTIC_REPRESENTATION(let selection): return selection.logicalValue
      case ._PROPERTY_DEFINITION_REPRESENTATION(let selection): return selection.logicalValue
      case ._RESOURCE_PROPERTY_REPRESENTATION(let selection): return selection.logicalValue
      }
    }
    public var booleanValue: SDAI.BOOLEAN? {
      switch self {
      case ._ACTION_PROPERTY_REPRESENTATION(let selection): return selection.booleanValue
      case ._DIMENSIONAL_CHARACTERISTIC_REPRESENTATION(let selection): return selection.booleanValue
      case ._PROPERTY_DEFINITION_REPRESENTATION(let selection): return selection.booleanValue
      case ._RESOURCE_PROPERTY_REPRESENTATION(let selection): return selection.booleanValue
      }
    }
    public var numberValue: SDAI.NUMBER? {
      switch self {
      case ._ACTION_PROPERTY_REPRESENTATION(let selection): return selection.numberValue
      case ._DIMENSIONAL_CHARACTERISTIC_REPRESENTATION(let selection): return selection.numberValue
      case ._PROPERTY_DEFINITION_REPRESENTATION(let selection): return selection.numberValue
      case ._RESOURCE_PROPERTY_REPRESENTATION(let selection): return selection.numberValue
      }
    }
    public var realValue: SDAI.REAL? {
      switch self {
      case ._ACTION_PROPERTY_REPRESENTATION(let selection): return selection.realValue
      case ._DIMENSIONAL_CHARACTERISTIC_REPRESENTATION(let selection): return selection.realValue
      case ._PROPERTY_DEFINITION_REPRESENTATION(let selection): return selection.realValue
      case ._RESOURCE_PROPERTY_REPRESENTATION(let selection): return selection.realValue
      }
    }
    public var integerValue: SDAI.INTEGER? {
      switch self {
      case ._ACTION_PROPERTY_REPRESENTATION(let selection): return selection.integerValue
      case ._DIMENSIONAL_CHARACTERISTIC_REPRESENTATION(let selection): return selection.integerValue
      case ._PROPERTY_DEFINITION_REPRESENTATION(let selection): return selection.integerValue
      case ._RESOURCE_PROPERTY_REPRESENTATION(let selection): return selection.integerValue
      }
    }
    public var genericEnumValue: SDAI.GenericEnumValue? {
      switch self {
      case ._ACTION_PROPERTY_REPRESENTATION(let selection): return selection.genericEnumValue
      case ._DIMENSIONAL_CHARACTERISTIC_REPRESENTATION(let selection): return selection.genericEnumValue
      case ._PROPERTY_DEFINITION_REPRESENTATION(let selection): return selection.genericEnumValue
      case ._RESOURCE_PROPERTY_REPRESENTATION(let selection): return selection.genericEnumValue
      }
    }
    public func arrayOptionalValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY_OPTIONAL<ELEM>? {
      switch self {
      case ._ACTION_PROPERTY_REPRESENTATION(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._DIMENSIONAL_CHARACTERISTIC_REPRESENTATION(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._PROPERTY_DEFINITION_REPRESENTATION(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._RESOURCE_PROPERTY_REPRESENTATION(let selection): return selection.arrayOptionalValue(elementType:elementType)
      }
    }
    public func arrayValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY<ELEM>? {
      switch self {
      case ._ACTION_PROPERTY_REPRESENTATION(let selection): return selection.arrayValue(elementType:elementType)
      case ._DIMENSIONAL_CHARACTERISTIC_REPRESENTATION(let selection): return selection.arrayValue(elementType:elementType)
      case ._PROPERTY_DEFINITION_REPRESENTATION(let selection): return selection.arrayValue(elementType:elementType)
      case ._RESOURCE_PROPERTY_REPRESENTATION(let selection): return selection.arrayValue(elementType:elementType)
      }
    }
    public func listValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.LIST<ELEM>? {
      switch self {
      case ._ACTION_PROPERTY_REPRESENTATION(let selection): return selection.listValue(elementType:elementType)
      case ._DIMENSIONAL_CHARACTERISTIC_REPRESENTATION(let selection): return selection.listValue(elementType:elementType)
      case ._PROPERTY_DEFINITION_REPRESENTATION(let selection): return selection.listValue(elementType:elementType)
      case ._RESOURCE_PROPERTY_REPRESENTATION(let selection): return selection.listValue(elementType:elementType)
      }
    }
    public func bagValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.BAG<ELEM>? {
      switch self {
      case ._ACTION_PROPERTY_REPRESENTATION(let selection): return selection.bagValue(elementType:elementType)
      case ._DIMENSIONAL_CHARACTERISTIC_REPRESENTATION(let selection): return selection.bagValue(elementType:elementType)
      case ._PROPERTY_DEFINITION_REPRESENTATION(let selection): return selection.bagValue(elementType:elementType)
      case ._RESOURCE_PROPERTY_REPRESENTATION(let selection): return selection.bagValue(elementType:elementType)
      }
    }
    public func setValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.SET<ELEM>? {
      switch self {
      case ._ACTION_PROPERTY_REPRESENTATION(let selection): return selection.setValue(elementType:elementType)
      case ._DIMENSIONAL_CHARACTERISTIC_REPRESENTATION(let selection): return selection.setValue(elementType:elementType)
      case ._PROPERTY_DEFINITION_REPRESENTATION(let selection): return selection.setValue(elementType:elementType)
      case ._RESOURCE_PROPERTY_REPRESENTATION(let selection): return selection.setValue(elementType:elementType)
      }
    }
    public func enumValue<ENUM:SDAIEnumerationType>(enumType:ENUM.Type) -> ENUM? {
      switch self {
      case ._ACTION_PROPERTY_REPRESENTATION(let selection): return selection.enumValue(enumType:enumType)
      case ._DIMENSIONAL_CHARACTERISTIC_REPRESENTATION(let selection): return selection.enumValue(enumType:enumType)
      case ._PROPERTY_DEFINITION_REPRESENTATION(let selection): return selection.enumValue(enumType:enumType)
      case ._RESOURCE_PROPERTY_REPRESENTATION(let selection): return selection.enumValue(enumType:enumType)
      }
    }

    //MARK: SDAIUnderlyingType
    public typealias FundamentalType = Self
    public static var typeName: String = 
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CHARACTERIZED_PROPERTY_REPRESENTATION"
    public var asFundamentalType: FundamentalType { return self }

    //MARK: SDAIObservableAggregateElement
    public var entityReferences: AnySequence<SDAI.EntityReference> {
      switch self {
      case ._ACTION_PROPERTY_REPRESENTATION(let entity): return entity.entityReferences
      case ._DIMENSIONAL_CHARACTERISTIC_REPRESENTATION(let entity): return entity.entityReferences
      case ._PROPERTY_DEFINITION_REPRESENTATION(let entity): return entity.entityReferences
      case ._RESOURCE_PROPERTY_REPRESENTATION(let entity): return entity.entityReferences
      }
    }

    public mutating func configure(with observer: SDAI.EntityReferenceObserver) {
      switch self {
      case ._ACTION_PROPERTY_REPRESENTATION(let entity): 
        entity.configure(with: observer)
        self = ._ACTION_PROPERTY_REPRESENTATION(entity)
      case ._DIMENSIONAL_CHARACTERISTIC_REPRESENTATION(let entity): 
        entity.configure(with: observer)
        self = ._DIMENSIONAL_CHARACTERISTIC_REPRESENTATION(entity)
      case ._PROPERTY_DEFINITION_REPRESENTATION(let entity): 
        entity.configure(with: observer)
        self = ._PROPERTY_DEFINITION_REPRESENTATION(entity)
      case ._RESOURCE_PROPERTY_REPRESENTATION(let entity): 
        entity.configure(with: observer)
        self = ._RESOURCE_PROPERTY_REPRESENTATION(entity)
      }
    }

    public mutating func teardownObserver() {
      switch self {
      case ._ACTION_PROPERTY_REPRESENTATION(let entity): 
        entity.teardownObserver()
        self = ._ACTION_PROPERTY_REPRESENTATION(entity)
      case ._DIMENSIONAL_CHARACTERISTIC_REPRESENTATION(let entity): 
        entity.teardownObserver()
        self = ._DIMENSIONAL_CHARACTERISTIC_REPRESENTATION(entity)
      case ._PROPERTY_DEFINITION_REPRESENTATION(let entity): 
        entity.teardownObserver()
        self = ._PROPERTY_DEFINITION_REPRESENTATION(entity)
      case ._RESOURCE_PROPERTY_REPRESENTATION(let entity): 
        entity.teardownObserver()
        self = ._RESOURCE_PROPERTY_REPRESENTATION(entity)
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
      case ._ACTION_PROPERTY_REPRESENTATION(let selectValue): 
        result = eACTION_PROPERTY_REPRESENTATION.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\ACTION_PROPERTY_REPRESENTATION")
      case ._DIMENSIONAL_CHARACTERISTIC_REPRESENTATION(let selectValue): 
        result = eDIMENSIONAL_CHARACTERISTIC_REPRESENTATION.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\DIMENSIONAL_CHARACTERISTIC_REPRESENTATION")
      case ._PROPERTY_DEFINITION_REPRESENTATION(let selectValue): 
        result = ePROPERTY_DEFINITION_REPRESENTATION.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\PROPERTY_DEFINITION_REPRESENTATION")
      case ._RESOURCE_PROPERTY_REPRESENTATION(let selectValue): 
        result = eRESOURCE_PROPERTY_REPRESENTATION.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\RESOURCE_PROPERTY_REPRESENTATION")
      case nil: break
      }

      return result
    }

  }

}


//MARK: - SELECT TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sCHARACTERIZED_PROPERTY_REPRESENTATION__type: 
  SDAISelectType {

  //MARK: GROUP REFERENCES
  var super_eDIMENSIONAL_CHARACTERISTIC_REPRESENTATION: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDIMENSIONAL_CHARACTERISTIC_REPRESENTATION? { get }
  var super_ePROPERTY_DEFINITION_REPRESENTATION: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePROPERTY_DEFINITION_REPRESENTATION? { get }
  var super_eRESOURCE_PROPERTY_REPRESENTATION: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eRESOURCE_PROPERTY_REPRESENTATION? { get }
  var super_eACTION_PROPERTY_REPRESENTATION: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eACTION_PROPERTY_REPRESENTATION? { get }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var REPRESENTATION: SDAI.GENERIC_ENTITY?  { get }
  var DESCRIPTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tTEXT?  { get }
  var DEPENDENT_ENVIRONMENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDATA_ENVIRONMENT?  { get }
  var USED_REPRESENTATION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION?  { get }
  var PROPERTY: SDAI.GENERIC_ENTITY?  { get }
  var DIMENSION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sDIMENSIONAL_CHARACTERISTIC?  { get }
  var DEFINITION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sREPRESENTED_DEFINITION?  { get }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { get }
}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sCHARACTERIZED_PROPERTY_REPRESENTATION__subtype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sCHARACTERIZED_PROPERTY_REPRESENTATION__type, SDAIDefinedType
where Supertype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sCHARACTERIZED_PROPERTY_REPRESENTATION__type
{}

public extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sCHARACTERIZED_PROPERTY_REPRESENTATION__subtype {
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
  var super_eDIMENSIONAL_CHARACTERISTIC_REPRESENTATION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDIMENSIONAL_CHARACTERISTIC_REPRESENTATION? { rep.super_eDIMENSIONAL_CHARACTERISTIC_REPRESENTATION }
  var super_ePROPERTY_DEFINITION_REPRESENTATION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePROPERTY_DEFINITION_REPRESENTATION? { rep.super_ePROPERTY_DEFINITION_REPRESENTATION }
  var super_eRESOURCE_PROPERTY_REPRESENTATION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eRESOURCE_PROPERTY_REPRESENTATION? { rep.super_eRESOURCE_PROPERTY_REPRESENTATION }
  var super_eACTION_PROPERTY_REPRESENTATION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eACTION_PROPERTY_REPRESENTATION? { rep.super_eACTION_PROPERTY_REPRESENTATION }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var REPRESENTATION: SDAI.GENERIC_ENTITY?  { rep.REPRESENTATION }
  var DESCRIPTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tTEXT?  { rep.DESCRIPTION }
  var DEPENDENT_ENVIRONMENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDATA_ENVIRONMENT?  { rep.DEPENDENT_ENVIRONMENT }
  var USED_REPRESENTATION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION?  { rep.USED_REPRESENTATION }
  var PROPERTY: SDAI.GENERIC_ENTITY?  { rep.PROPERTY }
  var DIMENSION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sDIMENSIONAL_CHARACTERISTIC?  { rep.DIMENSION }
  var DEFINITION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sREPRESENTED_DEFINITION?  { rep.DEFINITION }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { rep.NAME }
}

