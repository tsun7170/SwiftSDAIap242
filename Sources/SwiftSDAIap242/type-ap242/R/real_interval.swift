/* file: real_interval.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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
  TYPE real_interval = SELECT
    ( real_interval_from_min (*ENTITY*),
     real_interval_to_max (*ENTITY*),
     finite_real_interval (*ENTITY*),
     elementary_space (*ENTITY*) );
  WHERE
    wr1: ( ( NOT ( 'ELEMENTARY_SPACE' IN stripped_typeof( SELF ) ) ) OR ( SELF\elementary_space.space_id = 
             es_reals ) );
  END_TYPE; -- real_interval (line:5033 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES FOR SELECT
/*
  real_interval_from_min (*ENTITY*):
  ATTR:  min: REAL *** Multiple Select Case Sources ***
  ATTR:  min_closure: open_closed *** Multiple Select Case Sources ***

  real_interval_to_max (*ENTITY*):
  ATTR:  max: REAL *** Multiple Select Case Sources ***
  ATTR:  max_closure: open_closed *** Multiple Select Case Sources ***

  finite_real_interval (*ENTITY*):
  ATTR:  min: REAL *** Multiple Select Case Sources ***
  ATTR:  min_closure: open_closed *** Multiple Select Case Sources ***
  ATTR:  max: REAL *** Multiple Select Case Sources ***
  ATTR:  max_closure: open_closed *** Multiple Select Case Sources ***

  elementary_space (*ENTITY*):
  ATTR:  space_id: elementary_space_enumerators

*/

/** SELECT type
- EXPRESS:
```express
  TYPE real_interval = SELECT
    ( real_interval_from_min (*ENTITY*),
     real_interval_to_max (*ENTITY*),
     finite_real_interval (*ENTITY*),
     elementary_space (*ENTITY*) );
  WHERE
    wr1: ( ( NOT ( 'ELEMENTARY_SPACE' IN stripped_typeof( SELF ) ) ) OR ( SELF\elementary_space.space_id = 
             es_reals ) );
  END_TYPE; -- real_interval (line:5033 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public enum sREAL_INTERVAL : SDAIValue, AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sREAL_INTERVAL__type {

    /// SELECT case ``eREAL_INTERVAL_FROM_MIN`` (ENTITY) in ``sREAL_INTERVAL``
    case _REAL_INTERVAL_FROM_MIN(eREAL_INTERVAL_FROM_MIN)	// (ENTITY)

    /// SELECT case ``eREAL_INTERVAL_TO_MAX`` (ENTITY) in ``sREAL_INTERVAL``
    case _REAL_INTERVAL_TO_MAX(eREAL_INTERVAL_TO_MAX)	// (ENTITY)

    /// SELECT case ``eFINITE_REAL_INTERVAL`` (ENTITY) in ``sREAL_INTERVAL``
    case _FINITE_REAL_INTERVAL(eFINITE_REAL_INTERVAL)	// (ENTITY)

    /// SELECT case ``eELEMENTARY_SPACE`` (ENTITY) in ``sREAL_INTERVAL``
    case _ELEMENTARY_SPACE(eELEMENTARY_SPACE)	// (ENTITY)

    //MARK: - CONSTRUCTORS
    public init(fundamental: FundamentalType) { self = fundamental }

    public init?<T: SDAIUnderlyingType>(possiblyFrom underlyingType: T?){
      return nil
    }

    public init?(possiblyFrom complex: SDAI.ComplexEntity?) {
      guard let complex = complex else { return nil }

      if let base = complex.entityReference(eREAL_INTERVAL_FROM_MIN.self) {self = ._REAL_INTERVAL_FROM_MIN(base) }
      else if let base = complex.entityReference(eREAL_INTERVAL_TO_MAX.self) {self = ._REAL_INTERVAL_TO_MAX(base) }
      else if let base = complex.entityReference(eFINITE_REAL_INTERVAL.self) {self = ._FINITE_REAL_INTERVAL(base) }
      else if let base = complex.entityReference(eELEMENTARY_SPACE.self) {self = ._ELEMENTARY_SPACE(base) }
      else { return nil }
    }

    public init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let select = generic else { return nil }

      if let fundamental = select as? Self {
        self.init(fundamental: fundamental)
      }
      else if let base = eREAL_INTERVAL_FROM_MIN.convert(fromGeneric: select) {
        self = ._REAL_INTERVAL_FROM_MIN(base)
      }
      else if let base = eREAL_INTERVAL_TO_MAX.convert(fromGeneric: select) {
        self = ._REAL_INTERVAL_TO_MAX(base)
      }
      else if let base = eFINITE_REAL_INTERVAL.convert(fromGeneric: select) {
        self = ._FINITE_REAL_INTERVAL(base)
      }
      else if let base = eELEMENTARY_SPACE.convert(fromGeneric: select) {
        self = ._ELEMENTARY_SPACE(base)
      }
      else { return nil }
    }

    // InitializableByP21Parameter
    public static var bareTypeName: String = "REAL_INTERVAL"

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
      case ._REAL_INTERVAL_FROM_MIN(let entity): return entity.super_eMATHS_SPACE
      case ._REAL_INTERVAL_TO_MAX(let entity): return entity.super_eMATHS_SPACE
      case ._FINITE_REAL_INTERVAL(let entity): return entity.super_eMATHS_SPACE
      case ._ELEMENTARY_SPACE(let entity): return entity.super_eMATHS_SPACE
      }
    }

    public var super_eSIMPLE_GENERIC_EXPRESSION: eSIMPLE_GENERIC_EXPRESSION? {
      switch self {
      case ._REAL_INTERVAL_FROM_MIN(let entity): return entity.super_eSIMPLE_GENERIC_EXPRESSION
      case ._REAL_INTERVAL_TO_MAX(let entity): return entity.super_eSIMPLE_GENERIC_EXPRESSION
      case ._FINITE_REAL_INTERVAL(let entity): return entity.super_eSIMPLE_GENERIC_EXPRESSION
      case ._ELEMENTARY_SPACE(let entity): return entity.super_eSIMPLE_GENERIC_EXPRESSION
      }
    }

    public var super_eREAL_INTERVAL_FROM_MIN: eREAL_INTERVAL_FROM_MIN? {
      switch self {
      case ._REAL_INTERVAL_FROM_MIN(let entity): return entity
      default: return nil
      }
    }

    public var super_eGENERIC_LITERAL: eGENERIC_LITERAL? {
      switch self {
      case ._REAL_INTERVAL_FROM_MIN(let entity): return entity.super_eGENERIC_LITERAL
      case ._REAL_INTERVAL_TO_MAX(let entity): return entity.super_eGENERIC_LITERAL
      case ._FINITE_REAL_INTERVAL(let entity): return entity.super_eGENERIC_LITERAL
      case ._ELEMENTARY_SPACE(let entity): return entity.super_eGENERIC_LITERAL
      }
    }

    public var super_eREAL_INTERVAL_TO_MAX: eREAL_INTERVAL_TO_MAX? {
      switch self {
      case ._REAL_INTERVAL_TO_MAX(let entity): return entity
      default: return nil
      }
    }

    public var super_eGENERIC_EXPRESSION: eGENERIC_EXPRESSION? {
      switch self {
      case ._REAL_INTERVAL_FROM_MIN(let entity): return entity.super_eGENERIC_EXPRESSION
      case ._REAL_INTERVAL_TO_MAX(let entity): return entity.super_eGENERIC_EXPRESSION
      case ._FINITE_REAL_INTERVAL(let entity): return entity.super_eGENERIC_EXPRESSION
      case ._ELEMENTARY_SPACE(let entity): return entity.super_eGENERIC_EXPRESSION
      }
    }

    public var super_eFINITE_REAL_INTERVAL: eFINITE_REAL_INTERVAL? {
      switch self {
      case ._FINITE_REAL_INTERVAL(let entity): return entity
      default: return nil
      }
    }

    public var super_eELEMENTARY_SPACE: eELEMENTARY_SPACE? {
      switch self {
      case ._ELEMENTARY_SPACE(let entity): return entity
      default: return nil
      }
    }


    //MARK: - ENTITY ATTRIBUTE REFERENCES
    /// attribute of SELECT type ``sREAL_INTERVAL``
    /// - origin: ENTITY( ``eREAL_INTERVAL_FROM_MIN`` )
    /// - origin: ENTITY( ``eFINITE_REAL_INTERVAL`` )
    public var MIN: SDAI.REAL?  {
      switch self {
      case ._REAL_INTERVAL_FROM_MIN(let entity): return entity.MIN
      case ._FINITE_REAL_INTERVAL(let entity): return entity.MIN
      default: return nil
      }
    }

    /// attribute of SELECT type ``sREAL_INTERVAL``
    /// - origin: ENTITY( ``eELEMENTARY_SPACE`` )
    public var SPACE_ID: nELEMENTARY_SPACE_ENUMERATORS?  {
      switch self {
      case ._ELEMENTARY_SPACE(let entity): return entity.SPACE_ID
      default: return nil
      }
    }

    /// attribute of SELECT type ``sREAL_INTERVAL``
    /// - origin: ENTITY( ``eREAL_INTERVAL_FROM_MIN`` )
    /// - origin: ENTITY( ``eFINITE_REAL_INTERVAL`` )
    public var MIN_CLOSURE: nOPEN_CLOSED?  {
      switch self {
      case ._REAL_INTERVAL_FROM_MIN(let entity): return entity.MIN_CLOSURE
      case ._FINITE_REAL_INTERVAL(let entity): return entity.MIN_CLOSURE
      default: return nil
      }
    }

    /// attribute of SELECT type ``sREAL_INTERVAL``
    /// - origin: ENTITY( ``eREAL_INTERVAL_TO_MAX`` )
    /// - origin: ENTITY( ``eFINITE_REAL_INTERVAL`` )
    public var MAX: SDAI.REAL?  {
      switch self {
      case ._REAL_INTERVAL_TO_MAX(let entity): return entity.MAX
      case ._FINITE_REAL_INTERVAL(let entity): return entity.MAX
      default: return nil
      }
    }

    /// attribute of SELECT type ``sREAL_INTERVAL``
    /// - origin: ENTITY( ``eREAL_INTERVAL_TO_MAX`` )
    /// - origin: ENTITY( ``eFINITE_REAL_INTERVAL`` )
    public var MAX_CLOSURE: nOPEN_CLOSED?  {
      switch self {
      case ._REAL_INTERVAL_TO_MAX(let entity): return entity.MAX_CLOSURE
      case ._FINITE_REAL_INTERVAL(let entity): return entity.MAX_CLOSURE
      default: return nil
      }
    }


    //MARK: - SDAIValue
    public func isValueEqual<T: SDAIValue>(to rhs: T) -> Bool {
      switch self {
      case ._REAL_INTERVAL_FROM_MIN(let selection): return selection.value.isValueEqual(to: rhs)
      case ._REAL_INTERVAL_TO_MAX(let selection): return selection.value.isValueEqual(to: rhs)
      case ._FINITE_REAL_INTERVAL(let selection): return selection.value.isValueEqual(to: rhs)
      case ._ELEMENTARY_SPACE(let selection): return selection.value.isValueEqual(to: rhs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?) -> Bool? {
      switch self {
      case ._REAL_INTERVAL_FROM_MIN(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._REAL_INTERVAL_TO_MAX(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._FINITE_REAL_INTERVAL(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._ELEMENTARY_SPACE(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      }
    }

    public func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      switch self {
      case ._REAL_INTERVAL_FROM_MIN(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._REAL_INTERVAL_TO_MAX(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._FINITE_REAL_INTERVAL(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._ELEMENTARY_SPACE(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      }
    }

    public func isValueEqual<T: SDAIValue>(to rhs: T, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      switch self {
      case ._REAL_INTERVAL_FROM_MIN(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._REAL_INTERVAL_TO_MAX(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._FINITE_REAL_INTERVAL(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._ELEMENTARY_SPACE(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      switch self {
      case ._REAL_INTERVAL_FROM_MIN(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._REAL_INTERVAL_TO_MAX(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._FINITE_REAL_INTERVAL(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._ELEMENTARY_SPACE(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      }
    }


    //MARK: SDAIGenericTypeBase
    public func copy() -> Self {
      switch self {
      case ._REAL_INTERVAL_FROM_MIN(let selection): return ._REAL_INTERVAL_FROM_MIN(selection.copy())
      case ._REAL_INTERVAL_TO_MAX(let selection): return ._REAL_INTERVAL_TO_MAX(selection.copy())
      case ._FINITE_REAL_INTERVAL(let selection): return ._FINITE_REAL_INTERVAL(selection.copy())
      case ._ELEMENTARY_SPACE(let selection): return ._ELEMENTARY_SPACE(selection.copy())
      }
    }

    //MARK: SDAIGenericType
    public var typeMembers: Set<SDAI.STRING> {
      var members: Set<SDAI.STRING> = [SDAI.STRING(Self.typeName)]
      switch self {
      case ._REAL_INTERVAL_FROM_MIN(let selection): members.formUnion(selection.typeMembers)
      case ._REAL_INTERVAL_TO_MAX(let selection): members.formUnion(selection.typeMembers)
      case ._FINITE_REAL_INTERVAL(let selection): members.formUnion(selection.typeMembers)
      case ._ELEMENTARY_SPACE(let selection): members.formUnion(selection.typeMembers)
      }
      return members
    }

    public var entityReference: SDAI.EntityReference? {
      switch self {
      case ._REAL_INTERVAL_FROM_MIN(let selection): return selection.entityReference
      case ._REAL_INTERVAL_TO_MAX(let selection): return selection.entityReference
      case ._FINITE_REAL_INTERVAL(let selection): return selection.entityReference
      case ._ELEMENTARY_SPACE(let selection): return selection.entityReference
      }
    }
    public var stringValue: SDAI.STRING? {
      switch self {
      case ._REAL_INTERVAL_FROM_MIN(let selection): return selection.stringValue
      case ._REAL_INTERVAL_TO_MAX(let selection): return selection.stringValue
      case ._FINITE_REAL_INTERVAL(let selection): return selection.stringValue
      case ._ELEMENTARY_SPACE(let selection): return selection.stringValue
      }
    }
    public var binaryValue: SDAI.BINARY? {
      switch self {
      case ._REAL_INTERVAL_FROM_MIN(let selection): return selection.binaryValue
      case ._REAL_INTERVAL_TO_MAX(let selection): return selection.binaryValue
      case ._FINITE_REAL_INTERVAL(let selection): return selection.binaryValue
      case ._ELEMENTARY_SPACE(let selection): return selection.binaryValue
      }
    }
    public var logicalValue: SDAI.LOGICAL? {
      switch self {
      case ._REAL_INTERVAL_FROM_MIN(let selection): return selection.logicalValue
      case ._REAL_INTERVAL_TO_MAX(let selection): return selection.logicalValue
      case ._FINITE_REAL_INTERVAL(let selection): return selection.logicalValue
      case ._ELEMENTARY_SPACE(let selection): return selection.logicalValue
      }
    }
    public var booleanValue: SDAI.BOOLEAN? {
      switch self {
      case ._REAL_INTERVAL_FROM_MIN(let selection): return selection.booleanValue
      case ._REAL_INTERVAL_TO_MAX(let selection): return selection.booleanValue
      case ._FINITE_REAL_INTERVAL(let selection): return selection.booleanValue
      case ._ELEMENTARY_SPACE(let selection): return selection.booleanValue
      }
    }
    public var numberValue: SDAI.NUMBER? {
      switch self {
      case ._REAL_INTERVAL_FROM_MIN(let selection): return selection.numberValue
      case ._REAL_INTERVAL_TO_MAX(let selection): return selection.numberValue
      case ._FINITE_REAL_INTERVAL(let selection): return selection.numberValue
      case ._ELEMENTARY_SPACE(let selection): return selection.numberValue
      }
    }
    public var realValue: SDAI.REAL? {
      switch self {
      case ._REAL_INTERVAL_FROM_MIN(let selection): return selection.realValue
      case ._REAL_INTERVAL_TO_MAX(let selection): return selection.realValue
      case ._FINITE_REAL_INTERVAL(let selection): return selection.realValue
      case ._ELEMENTARY_SPACE(let selection): return selection.realValue
      }
    }
    public var integerValue: SDAI.INTEGER? {
      switch self {
      case ._REAL_INTERVAL_FROM_MIN(let selection): return selection.integerValue
      case ._REAL_INTERVAL_TO_MAX(let selection): return selection.integerValue
      case ._FINITE_REAL_INTERVAL(let selection): return selection.integerValue
      case ._ELEMENTARY_SPACE(let selection): return selection.integerValue
      }
    }
    public var genericEnumValue: SDAI.GenericEnumValue? {
      switch self {
      case ._REAL_INTERVAL_FROM_MIN(let selection): return selection.genericEnumValue
      case ._REAL_INTERVAL_TO_MAX(let selection): return selection.genericEnumValue
      case ._FINITE_REAL_INTERVAL(let selection): return selection.genericEnumValue
      case ._ELEMENTARY_SPACE(let selection): return selection.genericEnumValue
      }
    }
    public func arrayOptionalValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY_OPTIONAL<ELEM>? {
      switch self {
      case ._REAL_INTERVAL_FROM_MIN(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._REAL_INTERVAL_TO_MAX(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._FINITE_REAL_INTERVAL(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._ELEMENTARY_SPACE(let selection): return selection.arrayOptionalValue(elementType:elementType)
      }
    }
    public func arrayValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY<ELEM>? {
      switch self {
      case ._REAL_INTERVAL_FROM_MIN(let selection): return selection.arrayValue(elementType:elementType)
      case ._REAL_INTERVAL_TO_MAX(let selection): return selection.arrayValue(elementType:elementType)
      case ._FINITE_REAL_INTERVAL(let selection): return selection.arrayValue(elementType:elementType)
      case ._ELEMENTARY_SPACE(let selection): return selection.arrayValue(elementType:elementType)
      }
    }
    public func listValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.LIST<ELEM>? {
      switch self {
      case ._REAL_INTERVAL_FROM_MIN(let selection): return selection.listValue(elementType:elementType)
      case ._REAL_INTERVAL_TO_MAX(let selection): return selection.listValue(elementType:elementType)
      case ._FINITE_REAL_INTERVAL(let selection): return selection.listValue(elementType:elementType)
      case ._ELEMENTARY_SPACE(let selection): return selection.listValue(elementType:elementType)
      }
    }
    public func bagValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.BAG<ELEM>? {
      switch self {
      case ._REAL_INTERVAL_FROM_MIN(let selection): return selection.bagValue(elementType:elementType)
      case ._REAL_INTERVAL_TO_MAX(let selection): return selection.bagValue(elementType:elementType)
      case ._FINITE_REAL_INTERVAL(let selection): return selection.bagValue(elementType:elementType)
      case ._ELEMENTARY_SPACE(let selection): return selection.bagValue(elementType:elementType)
      }
    }
    public func setValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.SET<ELEM>? {
      switch self {
      case ._REAL_INTERVAL_FROM_MIN(let selection): return selection.setValue(elementType:elementType)
      case ._REAL_INTERVAL_TO_MAX(let selection): return selection.setValue(elementType:elementType)
      case ._FINITE_REAL_INTERVAL(let selection): return selection.setValue(elementType:elementType)
      case ._ELEMENTARY_SPACE(let selection): return selection.setValue(elementType:elementType)
      }
    }
    public func enumValue<ENUM:SDAIEnumerationType>(enumType:ENUM.Type) -> ENUM? {
      switch self {
      case ._REAL_INTERVAL_FROM_MIN(let selection): return selection.enumValue(enumType:enumType)
      case ._REAL_INTERVAL_TO_MAX(let selection): return selection.enumValue(enumType:enumType)
      case ._FINITE_REAL_INTERVAL(let selection): return selection.enumValue(enumType:enumType)
      case ._ELEMENTARY_SPACE(let selection): return selection.enumValue(enumType:enumType)
      }
    }

    //MARK: SDAIUnderlyingType
    public typealias FundamentalType = Self
    public static var typeName: String = "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.REAL_INTERVAL"
    public var asFundamentalType: FundamentalType { return self }

    //MARK: SDAIObservableAggregateElement
    public var entityReferences: AnySequence<SDAI.EntityReference> {
      switch self {
      case ._REAL_INTERVAL_FROM_MIN(let entity): return entity.entityReferences
      case ._REAL_INTERVAL_TO_MAX(let entity): return entity.entityReferences
      case ._FINITE_REAL_INTERVAL(let entity): return entity.entityReferences
      case ._ELEMENTARY_SPACE(let entity): return entity.entityReferences
      }
    }

    public mutating func configure(with observer: SDAI.EntityReferenceObserver) {
      switch self {
      case ._REAL_INTERVAL_FROM_MIN(let entity): 
        entity.configure(with: observer)
        self = ._REAL_INTERVAL_FROM_MIN(entity)
      case ._REAL_INTERVAL_TO_MAX(let entity): 
        entity.configure(with: observer)
        self = ._REAL_INTERVAL_TO_MAX(entity)
      case ._FINITE_REAL_INTERVAL(let entity): 
        entity.configure(with: observer)
        self = ._FINITE_REAL_INTERVAL(entity)
      case ._ELEMENTARY_SPACE(let entity): 
        entity.configure(with: observer)
        self = ._ELEMENTARY_SPACE(entity)
      }
    }

    public mutating func teardownObserver() {
      switch self {
      case ._REAL_INTERVAL_FROM_MIN(let entity): 
        entity.teardownObserver()
        self = ._REAL_INTERVAL_FROM_MIN(entity)
      case ._REAL_INTERVAL_TO_MAX(let entity): 
        entity.teardownObserver()
        self = ._REAL_INTERVAL_TO_MAX(entity)
      case ._FINITE_REAL_INTERVAL(let entity): 
        entity.teardownObserver()
        self = ._FINITE_REAL_INTERVAL(entity)
      case ._ELEMENTARY_SPACE(let entity): 
        entity.teardownObserver()
        self = ._ELEMENTARY_SPACE(entity)
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

    //MARK: WHERE RULES (DEFINED TYPE)
    public static func WHERE_wr1(SELF: sREAL_INTERVAL?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = STRIPPED_TYPEOF(SELF)
      let _TEMP2 = SDAI.aggregate(_TEMP1, contains: SDAI.STRING("ELEMENTARY_SPACE"))
      let _TEMP3 =  !_TEMP2
      let _TEMP4 = SELF.GROUP_REF(eELEMENTARY_SPACE.self)
      let _TEMP5 = _TEMP4?.SPACE_ID
      let _TEMP6 = _TEMP5 .==. SDAI.FORCE_OPTIONAL(ES_REALS)
      let _TEMP7 = _TEMP3 || _TEMP6
      return _TEMP7
    }

    //MARK: WHERE RULE VALIDATION (SELECT TYPE)
    public static func validateWhereRules(instance:Self?, prefix:SDAI.WhereLabel) -> [SDAI.WhereLabel:SDAI.LOGICAL] {
      var result: [SDAI.WhereLabel:SDAI.LOGICAL] = [:]
      switch instance {
      case ._REAL_INTERVAL_FROM_MIN(let selectValue): 
        result = eREAL_INTERVAL_FROM_MIN.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\REAL_INTERVAL_FROM_MIN")
      case ._REAL_INTERVAL_TO_MAX(let selectValue): 
        result = eREAL_INTERVAL_TO_MAX.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\REAL_INTERVAL_TO_MAX")
      case ._FINITE_REAL_INTERVAL(let selectValue): 
        result = eFINITE_REAL_INTERVAL.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\FINITE_REAL_INTERVAL")
      case ._ELEMENTARY_SPACE(let selectValue): 
        result = eELEMENTARY_SPACE.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\ELEMENTARY_SPACE")
      case nil: break
      }

      result[prefix + ".WHERE_wr1"] = sREAL_INTERVAL.WHERE_wr1(SELF: instance)
      return result
    }

  }

}


//MARK: - SELECT TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sREAL_INTERVAL__type: SDAISelectType {

  //MARK: GROUP REFERENCES
  var super_eMATHS_SPACE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eMATHS_SPACE? { get }
  var super_eSIMPLE_GENERIC_EXPRESSION: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSIMPLE_GENERIC_EXPRESSION? { get }
  var super_eREAL_INTERVAL_FROM_MIN: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREAL_INTERVAL_FROM_MIN? { get }
  var super_eGENERIC_LITERAL: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eGENERIC_LITERAL? { get }
  var super_eREAL_INTERVAL_TO_MAX: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREAL_INTERVAL_TO_MAX? { get }
  var super_eGENERIC_EXPRESSION: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eGENERIC_EXPRESSION? { get }
  var super_eFINITE_REAL_INTERVAL: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eFINITE_REAL_INTERVAL? { get }
  var super_eELEMENTARY_SPACE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eELEMENTARY_SPACE? { get }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var MIN: SDAI.REAL?  { get }
  var SPACE_ID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.nELEMENTARY_SPACE_ENUMERATORS?  { get }
  var MIN_CLOSURE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.nOPEN_CLOSED?  { get }
  var MAX: SDAI.REAL?  { get }
  var MAX_CLOSURE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.nOPEN_CLOSED?  { get }
}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sREAL_INTERVAL__subtype: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sREAL_INTERVAL__type, SDAIDefinedType
where Supertype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sREAL_INTERVAL__type
{}

public extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sREAL_INTERVAL__subtype {
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
  var super_eREAL_INTERVAL_FROM_MIN: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREAL_INTERVAL_FROM_MIN? { rep.super_eREAL_INTERVAL_FROM_MIN }
  var super_eGENERIC_LITERAL: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eGENERIC_LITERAL? { rep.super_eGENERIC_LITERAL }
  var super_eREAL_INTERVAL_TO_MAX: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREAL_INTERVAL_TO_MAX? { rep.super_eREAL_INTERVAL_TO_MAX }
  var super_eGENERIC_EXPRESSION: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eGENERIC_EXPRESSION? { rep.super_eGENERIC_EXPRESSION }
  var super_eFINITE_REAL_INTERVAL: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eFINITE_REAL_INTERVAL? { rep.super_eFINITE_REAL_INTERVAL }
  var super_eELEMENTARY_SPACE: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eELEMENTARY_SPACE? { rep.super_eELEMENTARY_SPACE }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var MIN: SDAI.REAL?  { rep.MIN }
  var SPACE_ID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.nELEMENTARY_SPACE_ENUMERATORS?  { rep.SPACE_ID }
  var MIN_CLOSURE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.nOPEN_CLOSED?  { rep.MIN_CLOSURE }
  var MAX: SDAI.REAL?  { rep.MAX }
  var MAX_CLOSURE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.nOPEN_CLOSED?  { rep.MAX_CLOSURE }
}

