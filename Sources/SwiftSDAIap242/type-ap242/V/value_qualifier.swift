/* file: value_qualifier.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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
  TYPE value_qualifier = SELECT
    ( maths_value_precision_qualifier (*ENTITY*),
     precision_qualifier (*ENTITY*),
     type_qualifier (*ENTITY*),
     uncertainty_qualifier (*ENTITY*),
     value_format_type_qualifier (*ENTITY*) );
  END_TYPE; -- value_qualifier (line:5969 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES FOR SELECT
/*
  maths_value_precision_qualifier (*ENTITY*):
  ATTR:  precision_value: maths_value (AMBIGUOUS (SELECT LEVEL))

  precision_qualifier (*ENTITY*):
  ATTR:  precision_value: INTEGER (AMBIGUOUS (SELECT LEVEL))

  type_qualifier (*ENTITY*):
  ATTR:  name: label

  uncertainty_qualifier (*ENTITY*):
  ATTR:  description: text
  ATTR:  coverage_factor: REAL
  ATTR:  measure_name: label
  ATTR:  uncertainty_value: (AMBIGUOUS (CASE LEVEL))

  value_format_type_qualifier (*ENTITY*):
  ATTR:  format_type: value_format_type

*/

/** SELECT type
- EXPRESS:
```express
  TYPE value_qualifier = SELECT
    ( maths_value_precision_qualifier (*ENTITY*),
     precision_qualifier (*ENTITY*),
     type_qualifier (*ENTITY*),
     uncertainty_qualifier (*ENTITY*),
     value_format_type_qualifier (*ENTITY*) );
  END_TYPE; -- value_qualifier (line:5969 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public enum sVALUE_QUALIFIER : SDAIValue, AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sVALUE_QUALIFIER__type {

    /// SELECT case ``eMATHS_VALUE_PRECISION_QUALIFIER`` (ENTITY) in ``sVALUE_QUALIFIER``
    case _MATHS_VALUE_PRECISION_QUALIFIER(eMATHS_VALUE_PRECISION_QUALIFIER)	// (ENTITY)

    /// SELECT case ``ePRECISION_QUALIFIER`` (ENTITY) in ``sVALUE_QUALIFIER``
    case _PRECISION_QUALIFIER(ePRECISION_QUALIFIER)	// (ENTITY)

    /// SELECT case ``eTYPE_QUALIFIER`` (ENTITY) in ``sVALUE_QUALIFIER``
    case _TYPE_QUALIFIER(eTYPE_QUALIFIER)	// (ENTITY)

    /// SELECT case ``eUNCERTAINTY_QUALIFIER`` (ENTITY) in ``sVALUE_QUALIFIER``
    case _UNCERTAINTY_QUALIFIER(eUNCERTAINTY_QUALIFIER)	// (ENTITY)

    /// SELECT case ``eVALUE_FORMAT_TYPE_QUALIFIER`` (ENTITY) in ``sVALUE_QUALIFIER``
    case _VALUE_FORMAT_TYPE_QUALIFIER(eVALUE_FORMAT_TYPE_QUALIFIER)	// (ENTITY)

    //MARK: - CONSTRUCTORS
    public init(fundamental: FundamentalType) { self = fundamental }

    public init?<T: SDAIUnderlyingType>(possiblyFrom underlyingType: T?){
      return nil
    }

    public init?(possiblyFrom complex: SDAI.ComplexEntity?) {
      guard let complex = complex else { return nil }

      if let base = complex.entityReference(eMATHS_VALUE_PRECISION_QUALIFIER.self) {self = ._MATHS_VALUE_PRECISION_QUALIFIER(base) }
      else if let base = complex.entityReference(ePRECISION_QUALIFIER.self) {self = ._PRECISION_QUALIFIER(base) }
      else if let base = complex.entityReference(eTYPE_QUALIFIER.self) {self = ._TYPE_QUALIFIER(base) }
      else if let base = complex.entityReference(eUNCERTAINTY_QUALIFIER.self) {self = ._UNCERTAINTY_QUALIFIER(base) }
      else if let base = complex.entityReference(eVALUE_FORMAT_TYPE_QUALIFIER.self) {self = ._VALUE_FORMAT_TYPE_QUALIFIER(base) }
      else { return nil }
    }

    public init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let select = generic else { return nil }

      if let fundamental = select as? Self {
        self.init(fundamental: fundamental)
      }
      else if let base = eMATHS_VALUE_PRECISION_QUALIFIER.convert(fromGeneric: select) {
        self = ._MATHS_VALUE_PRECISION_QUALIFIER(base)
      }
      else if let base = ePRECISION_QUALIFIER.convert(fromGeneric: select) {
        self = ._PRECISION_QUALIFIER(base)
      }
      else if let base = eTYPE_QUALIFIER.convert(fromGeneric: select) {
        self = ._TYPE_QUALIFIER(base)
      }
      else if let base = eUNCERTAINTY_QUALIFIER.convert(fromGeneric: select) {
        self = ._UNCERTAINTY_QUALIFIER(base)
      }
      else if let base = eVALUE_FORMAT_TYPE_QUALIFIER.convert(fromGeneric: select) {
        self = ._VALUE_FORMAT_TYPE_QUALIFIER(base)
      }
      else { return nil }
    }

    // InitializableByP21Parameter
    public static var bareTypeName: String = "VALUE_QUALIFIER"

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
    public var super_eUNCERTAINTY_QUALIFIER: eUNCERTAINTY_QUALIFIER? {
      switch self {
      case ._UNCERTAINTY_QUALIFIER(let entity): return entity
      default: return nil
      }
    }

    public var super_eTYPE_QUALIFIER: eTYPE_QUALIFIER? {
      switch self {
      case ._TYPE_QUALIFIER(let entity): return entity
      default: return nil
      }
    }

    public var super_eMATHS_VALUE_PRECISION_QUALIFIER: eMATHS_VALUE_PRECISION_QUALIFIER? {
      switch self {
      case ._MATHS_VALUE_PRECISION_QUALIFIER(let entity): return entity
      default: return nil
      }
    }

    public var super_ePRECISION_QUALIFIER: ePRECISION_QUALIFIER? {
      switch self {
      case ._PRECISION_QUALIFIER(let entity): return entity
      default: return nil
      }
    }

    public var super_eVALUE_FORMAT_TYPE_QUALIFIER: eVALUE_FORMAT_TYPE_QUALIFIER? {
      switch self {
      case ._VALUE_FORMAT_TYPE_QUALIFIER(let entity): return entity
      default: return nil
      }
    }


    //MARK: - ENTITY ATTRIBUTE REFERENCES
    /// attribute of SELECT type ``sVALUE_QUALIFIER``
    /// - origin: ENTITY( ``eUNCERTAINTY_QUALIFIER`` )
    public var DESCRIPTION: tTEXT?  {
      switch self {
      case ._UNCERTAINTY_QUALIFIER(let entity): return entity.DESCRIPTION
      default: return nil
      }
    }

    //MARK: var PRECISION_VALUE: (AMBIGUOUS)

    /// attribute of SELECT type ``sVALUE_QUALIFIER``
    /// - origin: ENTITY( ``eVALUE_FORMAT_TYPE_QUALIFIER`` )
    public var FORMAT_TYPE: tVALUE_FORMAT_TYPE?  {
      switch self {
      case ._VALUE_FORMAT_TYPE_QUALIFIER(let entity): return entity.FORMAT_TYPE
      default: return nil
      }
    }

    /// attribute of SELECT type ``sVALUE_QUALIFIER``
    /// - origin: ENTITY( ``eUNCERTAINTY_QUALIFIER`` )
    public var COVERAGE_FACTOR: SDAI.REAL?  {
      switch self {
      case ._UNCERTAINTY_QUALIFIER(let entity): return entity.COVERAGE_FACTOR
      default: return nil
      }
    }

    /// attribute of SELECT type ``sVALUE_QUALIFIER``
    /// - origin: ENTITY( ``eUNCERTAINTY_QUALIFIER`` )
    public var MEASURE_NAME: tLABEL?  {
      switch self {
      case ._UNCERTAINTY_QUALIFIER(let entity): return entity.MEASURE_NAME
      default: return nil
      }
    }

    /// attribute of SELECT type ``sVALUE_QUALIFIER``
    /// - origin: ENTITY( ``eTYPE_QUALIFIER`` )
    public var NAME: tLABEL?  {
      switch self {
      case ._TYPE_QUALIFIER(let entity): return entity.NAME
      default: return nil
      }
    }


    //MARK: - SDAIValue
    public func isValueEqual<T: SDAIValue>(to rhs: T) -> Bool {
      switch self {
      case ._MATHS_VALUE_PRECISION_QUALIFIER(let selection): return selection.value.isValueEqual(to: rhs)
      case ._PRECISION_QUALIFIER(let selection): return selection.value.isValueEqual(to: rhs)
      case ._TYPE_QUALIFIER(let selection): return selection.value.isValueEqual(to: rhs)
      case ._UNCERTAINTY_QUALIFIER(let selection): return selection.value.isValueEqual(to: rhs)
      case ._VALUE_FORMAT_TYPE_QUALIFIER(let selection): return selection.value.isValueEqual(to: rhs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?) -> Bool? {
      switch self {
      case ._MATHS_VALUE_PRECISION_QUALIFIER(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._PRECISION_QUALIFIER(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._TYPE_QUALIFIER(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._UNCERTAINTY_QUALIFIER(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._VALUE_FORMAT_TYPE_QUALIFIER(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      }
    }

    public func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      switch self {
      case ._MATHS_VALUE_PRECISION_QUALIFIER(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._PRECISION_QUALIFIER(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._TYPE_QUALIFIER(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._UNCERTAINTY_QUALIFIER(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._VALUE_FORMAT_TYPE_QUALIFIER(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      }
    }

    public func isValueEqual<T: SDAIValue>(to rhs: T, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      switch self {
      case ._MATHS_VALUE_PRECISION_QUALIFIER(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._PRECISION_QUALIFIER(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._TYPE_QUALIFIER(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._UNCERTAINTY_QUALIFIER(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._VALUE_FORMAT_TYPE_QUALIFIER(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      switch self {
      case ._MATHS_VALUE_PRECISION_QUALIFIER(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._PRECISION_QUALIFIER(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._TYPE_QUALIFIER(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._UNCERTAINTY_QUALIFIER(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._VALUE_FORMAT_TYPE_QUALIFIER(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      }
    }


    //MARK: SDAIGenericTypeBase
    public func copy() -> Self {
      switch self {
      case ._MATHS_VALUE_PRECISION_QUALIFIER(let selection): return ._MATHS_VALUE_PRECISION_QUALIFIER(selection.copy())
      case ._PRECISION_QUALIFIER(let selection): return ._PRECISION_QUALIFIER(selection.copy())
      case ._TYPE_QUALIFIER(let selection): return ._TYPE_QUALIFIER(selection.copy())
      case ._UNCERTAINTY_QUALIFIER(let selection): return ._UNCERTAINTY_QUALIFIER(selection.copy())
      case ._VALUE_FORMAT_TYPE_QUALIFIER(let selection): return ._VALUE_FORMAT_TYPE_QUALIFIER(selection.copy())
      }
    }

    //MARK: SDAIGenericType
    public var typeMembers: Set<SDAI.STRING> {
      var members: Set<SDAI.STRING> = [SDAI.STRING(Self.typeName)]
      switch self {
      case ._MATHS_VALUE_PRECISION_QUALIFIER(let selection): members.formUnion(selection.typeMembers)
      case ._PRECISION_QUALIFIER(let selection): members.formUnion(selection.typeMembers)
      case ._TYPE_QUALIFIER(let selection): members.formUnion(selection.typeMembers)
      case ._UNCERTAINTY_QUALIFIER(let selection): members.formUnion(selection.typeMembers)
      case ._VALUE_FORMAT_TYPE_QUALIFIER(let selection): members.formUnion(selection.typeMembers)
      }
      return members
    }

    public var entityReference: SDAI.EntityReference? {
      switch self {
      case ._MATHS_VALUE_PRECISION_QUALIFIER(let selection): return selection.entityReference
      case ._PRECISION_QUALIFIER(let selection): return selection.entityReference
      case ._TYPE_QUALIFIER(let selection): return selection.entityReference
      case ._UNCERTAINTY_QUALIFIER(let selection): return selection.entityReference
      case ._VALUE_FORMAT_TYPE_QUALIFIER(let selection): return selection.entityReference
      }
    }
    public var stringValue: SDAI.STRING? {
      switch self {
      case ._MATHS_VALUE_PRECISION_QUALIFIER(let selection): return selection.stringValue
      case ._PRECISION_QUALIFIER(let selection): return selection.stringValue
      case ._TYPE_QUALIFIER(let selection): return selection.stringValue
      case ._UNCERTAINTY_QUALIFIER(let selection): return selection.stringValue
      case ._VALUE_FORMAT_TYPE_QUALIFIER(let selection): return selection.stringValue
      }
    }
    public var binaryValue: SDAI.BINARY? {
      switch self {
      case ._MATHS_VALUE_PRECISION_QUALIFIER(let selection): return selection.binaryValue
      case ._PRECISION_QUALIFIER(let selection): return selection.binaryValue
      case ._TYPE_QUALIFIER(let selection): return selection.binaryValue
      case ._UNCERTAINTY_QUALIFIER(let selection): return selection.binaryValue
      case ._VALUE_FORMAT_TYPE_QUALIFIER(let selection): return selection.binaryValue
      }
    }
    public var logicalValue: SDAI.LOGICAL? {
      switch self {
      case ._MATHS_VALUE_PRECISION_QUALIFIER(let selection): return selection.logicalValue
      case ._PRECISION_QUALIFIER(let selection): return selection.logicalValue
      case ._TYPE_QUALIFIER(let selection): return selection.logicalValue
      case ._UNCERTAINTY_QUALIFIER(let selection): return selection.logicalValue
      case ._VALUE_FORMAT_TYPE_QUALIFIER(let selection): return selection.logicalValue
      }
    }
    public var booleanValue: SDAI.BOOLEAN? {
      switch self {
      case ._MATHS_VALUE_PRECISION_QUALIFIER(let selection): return selection.booleanValue
      case ._PRECISION_QUALIFIER(let selection): return selection.booleanValue
      case ._TYPE_QUALIFIER(let selection): return selection.booleanValue
      case ._UNCERTAINTY_QUALIFIER(let selection): return selection.booleanValue
      case ._VALUE_FORMAT_TYPE_QUALIFIER(let selection): return selection.booleanValue
      }
    }
    public var numberValue: SDAI.NUMBER? {
      switch self {
      case ._MATHS_VALUE_PRECISION_QUALIFIER(let selection): return selection.numberValue
      case ._PRECISION_QUALIFIER(let selection): return selection.numberValue
      case ._TYPE_QUALIFIER(let selection): return selection.numberValue
      case ._UNCERTAINTY_QUALIFIER(let selection): return selection.numberValue
      case ._VALUE_FORMAT_TYPE_QUALIFIER(let selection): return selection.numberValue
      }
    }
    public var realValue: SDAI.REAL? {
      switch self {
      case ._MATHS_VALUE_PRECISION_QUALIFIER(let selection): return selection.realValue
      case ._PRECISION_QUALIFIER(let selection): return selection.realValue
      case ._TYPE_QUALIFIER(let selection): return selection.realValue
      case ._UNCERTAINTY_QUALIFIER(let selection): return selection.realValue
      case ._VALUE_FORMAT_TYPE_QUALIFIER(let selection): return selection.realValue
      }
    }
    public var integerValue: SDAI.INTEGER? {
      switch self {
      case ._MATHS_VALUE_PRECISION_QUALIFIER(let selection): return selection.integerValue
      case ._PRECISION_QUALIFIER(let selection): return selection.integerValue
      case ._TYPE_QUALIFIER(let selection): return selection.integerValue
      case ._UNCERTAINTY_QUALIFIER(let selection): return selection.integerValue
      case ._VALUE_FORMAT_TYPE_QUALIFIER(let selection): return selection.integerValue
      }
    }
    public var genericEnumValue: SDAI.GenericEnumValue? {
      switch self {
      case ._MATHS_VALUE_PRECISION_QUALIFIER(let selection): return selection.genericEnumValue
      case ._PRECISION_QUALIFIER(let selection): return selection.genericEnumValue
      case ._TYPE_QUALIFIER(let selection): return selection.genericEnumValue
      case ._UNCERTAINTY_QUALIFIER(let selection): return selection.genericEnumValue
      case ._VALUE_FORMAT_TYPE_QUALIFIER(let selection): return selection.genericEnumValue
      }
    }
    public func arrayOptionalValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY_OPTIONAL<ELEM>? {
      switch self {
      case ._MATHS_VALUE_PRECISION_QUALIFIER(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._PRECISION_QUALIFIER(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._TYPE_QUALIFIER(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._UNCERTAINTY_QUALIFIER(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._VALUE_FORMAT_TYPE_QUALIFIER(let selection): return selection.arrayOptionalValue(elementType:elementType)
      }
    }
    public func arrayValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY<ELEM>? {
      switch self {
      case ._MATHS_VALUE_PRECISION_QUALIFIER(let selection): return selection.arrayValue(elementType:elementType)
      case ._PRECISION_QUALIFIER(let selection): return selection.arrayValue(elementType:elementType)
      case ._TYPE_QUALIFIER(let selection): return selection.arrayValue(elementType:elementType)
      case ._UNCERTAINTY_QUALIFIER(let selection): return selection.arrayValue(elementType:elementType)
      case ._VALUE_FORMAT_TYPE_QUALIFIER(let selection): return selection.arrayValue(elementType:elementType)
      }
    }
    public func listValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.LIST<ELEM>? {
      switch self {
      case ._MATHS_VALUE_PRECISION_QUALIFIER(let selection): return selection.listValue(elementType:elementType)
      case ._PRECISION_QUALIFIER(let selection): return selection.listValue(elementType:elementType)
      case ._TYPE_QUALIFIER(let selection): return selection.listValue(elementType:elementType)
      case ._UNCERTAINTY_QUALIFIER(let selection): return selection.listValue(elementType:elementType)
      case ._VALUE_FORMAT_TYPE_QUALIFIER(let selection): return selection.listValue(elementType:elementType)
      }
    }
    public func bagValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.BAG<ELEM>? {
      switch self {
      case ._MATHS_VALUE_PRECISION_QUALIFIER(let selection): return selection.bagValue(elementType:elementType)
      case ._PRECISION_QUALIFIER(let selection): return selection.bagValue(elementType:elementType)
      case ._TYPE_QUALIFIER(let selection): return selection.bagValue(elementType:elementType)
      case ._UNCERTAINTY_QUALIFIER(let selection): return selection.bagValue(elementType:elementType)
      case ._VALUE_FORMAT_TYPE_QUALIFIER(let selection): return selection.bagValue(elementType:elementType)
      }
    }
    public func setValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.SET<ELEM>? {
      switch self {
      case ._MATHS_VALUE_PRECISION_QUALIFIER(let selection): return selection.setValue(elementType:elementType)
      case ._PRECISION_QUALIFIER(let selection): return selection.setValue(elementType:elementType)
      case ._TYPE_QUALIFIER(let selection): return selection.setValue(elementType:elementType)
      case ._UNCERTAINTY_QUALIFIER(let selection): return selection.setValue(elementType:elementType)
      case ._VALUE_FORMAT_TYPE_QUALIFIER(let selection): return selection.setValue(elementType:elementType)
      }
    }
    public func enumValue<ENUM:SDAIEnumerationType>(enumType:ENUM.Type) -> ENUM? {
      switch self {
      case ._MATHS_VALUE_PRECISION_QUALIFIER(let selection): return selection.enumValue(enumType:enumType)
      case ._PRECISION_QUALIFIER(let selection): return selection.enumValue(enumType:enumType)
      case ._TYPE_QUALIFIER(let selection): return selection.enumValue(enumType:enumType)
      case ._UNCERTAINTY_QUALIFIER(let selection): return selection.enumValue(enumType:enumType)
      case ._VALUE_FORMAT_TYPE_QUALIFIER(let selection): return selection.enumValue(enumType:enumType)
      }
    }

    //MARK: SDAIUnderlyingType
    public typealias FundamentalType = Self
    public static var typeName: String = "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.VALUE_QUALIFIER"
    public var asFundamentalType: FundamentalType { return self }

    //MARK: SDAIObservableAggregateElement
    public var entityReferences: AnySequence<SDAI.EntityReference> {
      switch self {
      case ._MATHS_VALUE_PRECISION_QUALIFIER(let entity): return entity.entityReferences
      case ._PRECISION_QUALIFIER(let entity): return entity.entityReferences
      case ._TYPE_QUALIFIER(let entity): return entity.entityReferences
      case ._UNCERTAINTY_QUALIFIER(let entity): return entity.entityReferences
      case ._VALUE_FORMAT_TYPE_QUALIFIER(let entity): return entity.entityReferences
      }
    }

    public mutating func configure(with observer: SDAI.EntityReferenceObserver) {
      switch self {
      case ._MATHS_VALUE_PRECISION_QUALIFIER(let entity): 
        entity.configure(with: observer)
        self = ._MATHS_VALUE_PRECISION_QUALIFIER(entity)
      case ._PRECISION_QUALIFIER(let entity): 
        entity.configure(with: observer)
        self = ._PRECISION_QUALIFIER(entity)
      case ._TYPE_QUALIFIER(let entity): 
        entity.configure(with: observer)
        self = ._TYPE_QUALIFIER(entity)
      case ._UNCERTAINTY_QUALIFIER(let entity): 
        entity.configure(with: observer)
        self = ._UNCERTAINTY_QUALIFIER(entity)
      case ._VALUE_FORMAT_TYPE_QUALIFIER(let entity): 
        entity.configure(with: observer)
        self = ._VALUE_FORMAT_TYPE_QUALIFIER(entity)
      }
    }

    public mutating func teardownObserver() {
      switch self {
      case ._MATHS_VALUE_PRECISION_QUALIFIER(let entity): 
        entity.teardownObserver()
        self = ._MATHS_VALUE_PRECISION_QUALIFIER(entity)
      case ._PRECISION_QUALIFIER(let entity): 
        entity.teardownObserver()
        self = ._PRECISION_QUALIFIER(entity)
      case ._TYPE_QUALIFIER(let entity): 
        entity.teardownObserver()
        self = ._TYPE_QUALIFIER(entity)
      case ._UNCERTAINTY_QUALIFIER(let entity): 
        entity.teardownObserver()
        self = ._UNCERTAINTY_QUALIFIER(entity)
      case ._VALUE_FORMAT_TYPE_QUALIFIER(let entity): 
        entity.teardownObserver()
        self = ._VALUE_FORMAT_TYPE_QUALIFIER(entity)
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
      case ._MATHS_VALUE_PRECISION_QUALIFIER(let selectValue): 
        result = eMATHS_VALUE_PRECISION_QUALIFIER.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\MATHS_VALUE_PRECISION_QUALIFIER")
      case ._PRECISION_QUALIFIER(let selectValue): 
        result = ePRECISION_QUALIFIER.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\PRECISION_QUALIFIER")
      case ._TYPE_QUALIFIER(let selectValue): 
        result = eTYPE_QUALIFIER.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\TYPE_QUALIFIER")
      case ._UNCERTAINTY_QUALIFIER(let selectValue): 
        result = eUNCERTAINTY_QUALIFIER.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\UNCERTAINTY_QUALIFIER")
      case ._VALUE_FORMAT_TYPE_QUALIFIER(let selectValue): 
        result = eVALUE_FORMAT_TYPE_QUALIFIER.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\VALUE_FORMAT_TYPE_QUALIFIER")
      case nil: break
      }

      return result
    }

  }

}


//MARK: - SELECT TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sVALUE_QUALIFIER__type: SDAISelectType {

  //MARK: GROUP REFERENCES
  var super_eUNCERTAINTY_QUALIFIER: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eUNCERTAINTY_QUALIFIER? { get }
  var super_eTYPE_QUALIFIER: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eTYPE_QUALIFIER? { get }
  var super_eMATHS_VALUE_PRECISION_QUALIFIER: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eMATHS_VALUE_PRECISION_QUALIFIER? { get }
  var super_ePRECISION_QUALIFIER: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRECISION_QUALIFIER? { get }
  var super_eVALUE_FORMAT_TYPE_QUALIFIER: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eVALUE_FORMAT_TYPE_QUALIFIER? { get }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var DESCRIPTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tTEXT?  { get }
  var FORMAT_TYPE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tVALUE_FORMAT_TYPE?  { get }
  var COVERAGE_FACTOR: SDAI.REAL?  { get }
  var MEASURE_NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { get }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { get }
}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sVALUE_QUALIFIER__subtype: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sVALUE_QUALIFIER__type, SDAIDefinedType
where Supertype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sVALUE_QUALIFIER__type
{}

public extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sVALUE_QUALIFIER__subtype {
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
  var super_eUNCERTAINTY_QUALIFIER: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eUNCERTAINTY_QUALIFIER? { rep.super_eUNCERTAINTY_QUALIFIER }
  var super_eTYPE_QUALIFIER: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eTYPE_QUALIFIER? { rep.super_eTYPE_QUALIFIER }
  var super_eMATHS_VALUE_PRECISION_QUALIFIER: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eMATHS_VALUE_PRECISION_QUALIFIER? { rep.super_eMATHS_VALUE_PRECISION_QUALIFIER }
  var super_ePRECISION_QUALIFIER: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRECISION_QUALIFIER? { rep.super_ePRECISION_QUALIFIER }
  var super_eVALUE_FORMAT_TYPE_QUALIFIER: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eVALUE_FORMAT_TYPE_QUALIFIER? { rep.super_eVALUE_FORMAT_TYPE_QUALIFIER }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var DESCRIPTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tTEXT?  { rep.DESCRIPTION }
  var FORMAT_TYPE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tVALUE_FORMAT_TYPE?  { rep.FORMAT_TYPE }
  var COVERAGE_FACTOR: SDAI.REAL?  { rep.COVERAGE_FACTOR }
  var MEASURE_NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { rep.MEASURE_NAME }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { rep.NAME }
}

