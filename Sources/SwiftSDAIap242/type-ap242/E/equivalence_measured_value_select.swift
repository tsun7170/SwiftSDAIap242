/* file: equivalence_measured_value_select.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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
  TYPE equivalence_measured_value_select = SELECT
    ( a3ma_length_measure_and_context_dependent_measure_pair (*ENTITY*),
     area_measure (*TYPE*),
     boolean_value (*TYPE*),
     context_dependent_measure (*TYPE*),
     length_measure (*TYPE*),
     plane_angle_measure (*TYPE*),
     volume_measure (*TYPE*) );
  END_TYPE; -- equivalence_measured_value_select (line:2941 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES FOR SELECT
/*
  a3ma_length_measure_and_context_dependent_measure_pair (*ENTITY*):
  ATTR:  item_element: compound_item_definition
  ATTR:  name: label

  area_measure (*TYPE*): area_measure

  boolean_value (*TYPE*): boolean_value

  context_dependent_measure (*TYPE*): context_dependent_measure

  length_measure (*TYPE*): length_measure

  plane_angle_measure (*TYPE*): plane_angle_measure

  volume_measure (*TYPE*): volume_measure

*/

/** SELECT type
- EXPRESS:
```express
  TYPE equivalence_measured_value_select = SELECT
    ( a3ma_length_measure_and_context_dependent_measure_pair (*ENTITY*),
     area_measure (*TYPE*),
     boolean_value (*TYPE*),
     context_dependent_measure (*TYPE*),
     length_measure (*TYPE*),
     plane_angle_measure (*TYPE*),
     volume_measure (*TYPE*) );
  END_TYPE; -- equivalence_measured_value_select (line:2941 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public enum sEQUIVALENCE_MEASURED_VALUE_SELECT : SDAIValue, AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sEQUIVALENCE_MEASURED_VALUE_SELECT__type {

    /// SELECT case ``eA3MA_LENGTH_MEASURE_AND_CONTEXT_DEPENDENT_MEASURE_PAIR`` (ENTITY) in ``sEQUIVALENCE_MEASURED_VALUE_SELECT``
    case _A3MA_LENGTH_MEASURE_AND_CONTEXT_DEPENDENT_MEASURE_PAIR(
      eA3MA_LENGTH_MEASURE_AND_CONTEXT_DEPENDENT_MEASURE_PAIR)	// (ENTITY)

    /// SELECT case ``tAREA_MEASURE`` (TYPE) in ``sEQUIVALENCE_MEASURED_VALUE_SELECT``
    case _AREA_MEASURE(tAREA_MEASURE)	// (TYPE)

    /// SELECT case ``tBOOLEAN_VALUE`` (TYPE) in ``sEQUIVALENCE_MEASURED_VALUE_SELECT``
    case _BOOLEAN_VALUE(tBOOLEAN_VALUE)	// (TYPE)

    /// SELECT case ``tCONTEXT_DEPENDENT_MEASURE`` (TYPE) in ``sEQUIVALENCE_MEASURED_VALUE_SELECT``
    case _CONTEXT_DEPENDENT_MEASURE(tCONTEXT_DEPENDENT_MEASURE)	// (TYPE)

    /// SELECT case ``tLENGTH_MEASURE`` (TYPE) in ``sEQUIVALENCE_MEASURED_VALUE_SELECT``
    case _LENGTH_MEASURE(tLENGTH_MEASURE)	// (TYPE)

    /// SELECT case ``tPLANE_ANGLE_MEASURE`` (TYPE) in ``sEQUIVALENCE_MEASURED_VALUE_SELECT``
    case _PLANE_ANGLE_MEASURE(tPLANE_ANGLE_MEASURE)	// (TYPE)

    /// SELECT case ``tVOLUME_MEASURE`` (TYPE) in ``sEQUIVALENCE_MEASURED_VALUE_SELECT``
    case _VOLUME_MEASURE(tVOLUME_MEASURE)	// (TYPE)

    //MARK: - CONSTRUCTORS
    public init(fundamental: FundamentalType) { self = fundamental }

    public init?<T: SDAIUnderlyingType>(possiblyFrom underlyingType: T?){
      guard let underlyingType = underlyingType else { return nil }

      if let base = underlyingType as? tAREA_MEASURE {
        self = ._AREA_MEASURE(base)
      }
      else if let base = underlyingType as? tBOOLEAN_VALUE {
        self = ._BOOLEAN_VALUE(base)
      }
      else if let base = underlyingType as? tCONTEXT_DEPENDENT_MEASURE {
        self = ._CONTEXT_DEPENDENT_MEASURE(base)
      }
      else if let base = underlyingType as? tLENGTH_MEASURE {
        self = ._LENGTH_MEASURE(base)
      }
      else if let base = underlyingType as? tPLANE_ANGLE_MEASURE {
        self = ._PLANE_ANGLE_MEASURE(base)
      }
      else if let base = underlyingType as? tVOLUME_MEASURE {
        self = ._VOLUME_MEASURE(base)
      }
      else if let fundamental = underlyingType.asFundamentalType as? tAREA_MEASURE.FundamentalType {
        self = ._AREA_MEASURE( tAREA_MEASURE(fundamental: fundamental) )
      }
      else if let fundamental = underlyingType.asFundamentalType as? tBOOLEAN_VALUE.FundamentalType {
        self = ._BOOLEAN_VALUE( tBOOLEAN_VALUE(fundamental: fundamental) )
      }
      else if let fundamental = underlyingType.asFundamentalType as? tCONTEXT_DEPENDENT_MEASURE.FundamentalType {
        self = ._CONTEXT_DEPENDENT_MEASURE( tCONTEXT_DEPENDENT_MEASURE(fundamental: fundamental) )
      }
      else if let fundamental = underlyingType.asFundamentalType as? tLENGTH_MEASURE.FundamentalType {
        self = ._LENGTH_MEASURE( tLENGTH_MEASURE(fundamental: fundamental) )
      }
      else if let fundamental = underlyingType.asFundamentalType as? tPLANE_ANGLE_MEASURE.FundamentalType {
        self = ._PLANE_ANGLE_MEASURE( tPLANE_ANGLE_MEASURE(fundamental: fundamental) )
      }
      else if let fundamental = underlyingType.asFundamentalType as? tVOLUME_MEASURE.FundamentalType {
        self = ._VOLUME_MEASURE( tVOLUME_MEASURE(fundamental: fundamental) )
      }
      else { return nil }
    }

    public init?(possiblyFrom complex: SDAI.ComplexEntity?) {
      guard let complex = complex else { return nil }

      if let base = complex.entityReference(eA3MA_LENGTH_MEASURE_AND_CONTEXT_DEPENDENT_MEASURE_PAIR.self) {self = ._A3MA_LENGTH_MEASURE_AND_CONTEXT_DEPENDENT_MEASURE_PAIR(base) }
      else { return nil }
    }

    public init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let select = generic else { return nil }

      if let fundamental = select as? Self {
        self.init(fundamental: fundamental)
      }
      else if let base = eA3MA_LENGTH_MEASURE_AND_CONTEXT_DEPENDENT_MEASURE_PAIR.convert(fromGeneric: select) {
        self = ._A3MA_LENGTH_MEASURE_AND_CONTEXT_DEPENDENT_MEASURE_PAIR(base)
      }
      else if let base = tAREA_MEASURE.convert(fromGeneric: select) {
        self = ._AREA_MEASURE(base)
      }
      else if let base = tBOOLEAN_VALUE.convert(fromGeneric: select) {
        self = ._BOOLEAN_VALUE(base)
      }
      else if let base = tCONTEXT_DEPENDENT_MEASURE.convert(fromGeneric: select) {
        self = ._CONTEXT_DEPENDENT_MEASURE(base)
      }
      else if let base = tLENGTH_MEASURE.convert(fromGeneric: select) {
        self = ._LENGTH_MEASURE(base)
      }
      else if let base = tPLANE_ANGLE_MEASURE.convert(fromGeneric: select) {
        self = ._PLANE_ANGLE_MEASURE(base)
      }
      else if let base = tVOLUME_MEASURE.convert(fromGeneric: select) {
        self = ._VOLUME_MEASURE(base)
      }
      else { return nil }
    }

    // InitializableByP21Parameter
    public static var bareTypeName: String = "EQUIVALENCE_MEASURED_VALUE_SELECT"

    public init?(p21typedParam: P21Decode.ExchangeStructure.TypedParameter, from exchangeStructure: P21Decode.ExchangeStructure) {
      guard let keyword = p21typedParam.keyword.asStandardKeyword else { exchangeStructure.error = "unexpected p21parameter(\(p21typedParam)) while resolving \(Self.bareTypeName) select value"; return nil }

      switch(keyword) {
      case tAREA_MEASURE.bareTypeName:
        guard let base = tAREA_MEASURE(p21typedParam: p21typedParam, from: exchangeStructure) else { exchangeStructure.add(errorContext: "while resolving \(Self.bareTypeName) select value"); return nil }
        self = ._AREA_MEASURE(base)

      case tBOOLEAN_VALUE.bareTypeName:
        guard let base = tBOOLEAN_VALUE(p21typedParam: p21typedParam, from: exchangeStructure) else { exchangeStructure.add(errorContext: "while resolving \(Self.bareTypeName) select value"); return nil }
        self = ._BOOLEAN_VALUE(base)

      case tCONTEXT_DEPENDENT_MEASURE.bareTypeName:
        guard let base = tCONTEXT_DEPENDENT_MEASURE(p21typedParam: p21typedParam, from: exchangeStructure) else { exchangeStructure.add(errorContext: "while resolving \(Self.bareTypeName) select value"); return nil }
        self = ._CONTEXT_DEPENDENT_MEASURE(base)

      case tLENGTH_MEASURE.bareTypeName:
        guard let base = tLENGTH_MEASURE(p21typedParam: p21typedParam, from: exchangeStructure) else { exchangeStructure.add(errorContext: "while resolving \(Self.bareTypeName) select value"); return nil }
        self = ._LENGTH_MEASURE(base)

      case tPLANE_ANGLE_MEASURE.bareTypeName:
        guard let base = tPLANE_ANGLE_MEASURE(p21typedParam: p21typedParam, from: exchangeStructure) else { exchangeStructure.add(errorContext: "while resolving \(Self.bareTypeName) select value"); return nil }
        self = ._PLANE_ANGLE_MEASURE(base)

      case tVOLUME_MEASURE.bareTypeName:
        guard let base = tVOLUME_MEASURE(p21typedParam: p21typedParam, from: exchangeStructure) else { exchangeStructure.add(errorContext: "while resolving \(Self.bareTypeName) select value"); return nil }
        self = ._VOLUME_MEASURE(base)

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


    //MARK: - NON-ENTITY UNDERLYING TYPE REFERENCES
    public var super_tAREA_MEASURE: tAREA_MEASURE? {
      switch self {
      case ._AREA_MEASURE(let selectValue): return selectValue
      default: return nil
      }
    }

    public var super_tBOOLEAN_VALUE: tBOOLEAN_VALUE? {
      switch self {
      case ._BOOLEAN_VALUE(let selectValue): return selectValue
      default: return nil
      }
    }

    public var super_tCONTEXT_DEPENDENT_MEASURE: tCONTEXT_DEPENDENT_MEASURE? {
      switch self {
      case ._CONTEXT_DEPENDENT_MEASURE(let selectValue): return selectValue
      default: return nil
      }
    }

    public var super_tLENGTH_MEASURE: tLENGTH_MEASURE? {
      switch self {
      case ._LENGTH_MEASURE(let selectValue): return selectValue
      default: return nil
      }
    }

    public var super_tPLANE_ANGLE_MEASURE: tPLANE_ANGLE_MEASURE? {
      switch self {
      case ._PLANE_ANGLE_MEASURE(let selectValue): return selectValue
      default: return nil
      }
    }

    public var super_tVOLUME_MEASURE: tVOLUME_MEASURE? {
      switch self {
      case ._VOLUME_MEASURE(let selectValue): return selectValue
      default: return nil
      }
    }

    //MARK: - ENTITY UNDERLYING TYPE REFERENCES
    public var super_eA3MA_LENGTH_MEASURE_AND_CONTEXT_DEPENDENT_MEASURE_PAIR: 
      eA3MA_LENGTH_MEASURE_AND_CONTEXT_DEPENDENT_MEASURE_PAIR? {
      switch self {
      case ._A3MA_LENGTH_MEASURE_AND_CONTEXT_DEPENDENT_MEASURE_PAIR(let entity): return entity
      default: return nil
      }
    }

    public var super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM? {
      switch self {
      case ._A3MA_LENGTH_MEASURE_AND_CONTEXT_DEPENDENT_MEASURE_PAIR(let entity): return entity
        .super_eREPRESENTATION_ITEM
      default: return nil
      }
    }

    public var super_eCOMPOUND_REPRESENTATION_ITEM: eCOMPOUND_REPRESENTATION_ITEM? {
      switch self {
      case ._A3MA_LENGTH_MEASURE_AND_CONTEXT_DEPENDENT_MEASURE_PAIR(let entity): return entity
        .super_eCOMPOUND_REPRESENTATION_ITEM
      default: return nil
      }
    }


    //MARK: - ENTITY ATTRIBUTE REFERENCES
    /// attribute of SELECT type ``sEQUIVALENCE_MEASURED_VALUE_SELECT``
    /// - origin: ENTITY( ``eA3MA_LENGTH_MEASURE_AND_CONTEXT_DEPENDENT_MEASURE_PAIR`` )
    public var ITEM_ELEMENT: sCOMPOUND_ITEM_DEFINITION?  {
      switch self {
      case ._A3MA_LENGTH_MEASURE_AND_CONTEXT_DEPENDENT_MEASURE_PAIR(let entity): return entity.ITEM_ELEMENT
      default: return nil
      }
    }

    /// attribute of SELECT type ``sEQUIVALENCE_MEASURED_VALUE_SELECT``
    /// - origin: ENTITY( ``eA3MA_LENGTH_MEASURE_AND_CONTEXT_DEPENDENT_MEASURE_PAIR`` )
    public var NAME: tLABEL?  {
      switch self {
      case ._A3MA_LENGTH_MEASURE_AND_CONTEXT_DEPENDENT_MEASURE_PAIR(let entity): return entity.NAME
      default: return nil
      }
    }


    //MARK: - SDAIValue
    public func isValueEqual<T: SDAIValue>(to rhs: T) -> Bool {
      switch self {
      case ._A3MA_LENGTH_MEASURE_AND_CONTEXT_DEPENDENT_MEASURE_PAIR(let selection): return selection.value.isValueEqual(to: rhs)
      case ._AREA_MEASURE(let selection): return selection.value.isValueEqual(to: rhs)
      case ._BOOLEAN_VALUE(let selection): return selection.value.isValueEqual(to: rhs)
      case ._CONTEXT_DEPENDENT_MEASURE(let selection): return selection.value.isValueEqual(to: rhs)
      case ._LENGTH_MEASURE(let selection): return selection.value.isValueEqual(to: rhs)
      case ._PLANE_ANGLE_MEASURE(let selection): return selection.value.isValueEqual(to: rhs)
      case ._VOLUME_MEASURE(let selection): return selection.value.isValueEqual(to: rhs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?) -> Bool? {
      switch self {
      case ._A3MA_LENGTH_MEASURE_AND_CONTEXT_DEPENDENT_MEASURE_PAIR(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._AREA_MEASURE(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._BOOLEAN_VALUE(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._CONTEXT_DEPENDENT_MEASURE(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._LENGTH_MEASURE(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._PLANE_ANGLE_MEASURE(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._VOLUME_MEASURE(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      }
    }

    public func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      switch self {
      case ._A3MA_LENGTH_MEASURE_AND_CONTEXT_DEPENDENT_MEASURE_PAIR(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._AREA_MEASURE(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._BOOLEAN_VALUE(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._CONTEXT_DEPENDENT_MEASURE(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._LENGTH_MEASURE(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._PLANE_ANGLE_MEASURE(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._VOLUME_MEASURE(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      }
    }

    public func isValueEqual<T: SDAIValue>(to rhs: T, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      switch self {
      case ._A3MA_LENGTH_MEASURE_AND_CONTEXT_DEPENDENT_MEASURE_PAIR(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._AREA_MEASURE(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._BOOLEAN_VALUE(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._CONTEXT_DEPENDENT_MEASURE(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._LENGTH_MEASURE(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._PLANE_ANGLE_MEASURE(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._VOLUME_MEASURE(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      switch self {
      case ._A3MA_LENGTH_MEASURE_AND_CONTEXT_DEPENDENT_MEASURE_PAIR(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._AREA_MEASURE(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._BOOLEAN_VALUE(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._CONTEXT_DEPENDENT_MEASURE(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._LENGTH_MEASURE(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._PLANE_ANGLE_MEASURE(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._VOLUME_MEASURE(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      }
    }


    //MARK: SDAIGenericTypeBase
    public func copy() -> Self {
      switch self {
      case ._A3MA_LENGTH_MEASURE_AND_CONTEXT_DEPENDENT_MEASURE_PAIR(let selection): return ._A3MA_LENGTH_MEASURE_AND_CONTEXT_DEPENDENT_MEASURE_PAIR(selection.copy())
      case ._AREA_MEASURE(let selection): return ._AREA_MEASURE(selection.copy())
      case ._BOOLEAN_VALUE(let selection): return ._BOOLEAN_VALUE(selection.copy())
      case ._CONTEXT_DEPENDENT_MEASURE(let selection): return ._CONTEXT_DEPENDENT_MEASURE(selection.copy())
      case ._LENGTH_MEASURE(let selection): return ._LENGTH_MEASURE(selection.copy())
      case ._PLANE_ANGLE_MEASURE(let selection): return ._PLANE_ANGLE_MEASURE(selection.copy())
      case ._VOLUME_MEASURE(let selection): return ._VOLUME_MEASURE(selection.copy())
      }
    }

    //MARK: SDAIGenericType
    public var typeMembers: Set<SDAI.STRING> {
      var members: Set<SDAI.STRING> = [SDAI.STRING(Self.typeName)]
      switch self {
      case ._A3MA_LENGTH_MEASURE_AND_CONTEXT_DEPENDENT_MEASURE_PAIR(let selection): members.formUnion(selection.typeMembers)
      case ._AREA_MEASURE(let selection): members.formUnion(selection.typeMembers)
      case ._BOOLEAN_VALUE(let selection): members.formUnion(selection.typeMembers)
      case ._CONTEXT_DEPENDENT_MEASURE(let selection): members.formUnion(selection.typeMembers)
      case ._LENGTH_MEASURE(let selection): members.formUnion(selection.typeMembers)
      case ._PLANE_ANGLE_MEASURE(let selection): members.formUnion(selection.typeMembers)
      case ._VOLUME_MEASURE(let selection): members.formUnion(selection.typeMembers)
      }
      return members
    }

    public var entityReference: SDAI.EntityReference? {
      switch self {
      case ._A3MA_LENGTH_MEASURE_AND_CONTEXT_DEPENDENT_MEASURE_PAIR(let selection): return selection.entityReference
      case ._AREA_MEASURE(let selection): return selection.entityReference
      case ._BOOLEAN_VALUE(let selection): return selection.entityReference
      case ._CONTEXT_DEPENDENT_MEASURE(let selection): return selection.entityReference
      case ._LENGTH_MEASURE(let selection): return selection.entityReference
      case ._PLANE_ANGLE_MEASURE(let selection): return selection.entityReference
      case ._VOLUME_MEASURE(let selection): return selection.entityReference
      }
    }
    public var stringValue: SDAI.STRING? {
      switch self {
      case ._A3MA_LENGTH_MEASURE_AND_CONTEXT_DEPENDENT_MEASURE_PAIR(let selection): return selection.stringValue
      case ._AREA_MEASURE(let selection): return selection.stringValue
      case ._BOOLEAN_VALUE(let selection): return selection.stringValue
      case ._CONTEXT_DEPENDENT_MEASURE(let selection): return selection.stringValue
      case ._LENGTH_MEASURE(let selection): return selection.stringValue
      case ._PLANE_ANGLE_MEASURE(let selection): return selection.stringValue
      case ._VOLUME_MEASURE(let selection): return selection.stringValue
      }
    }
    public var binaryValue: SDAI.BINARY? {
      switch self {
      case ._A3MA_LENGTH_MEASURE_AND_CONTEXT_DEPENDENT_MEASURE_PAIR(let selection): return selection.binaryValue
      case ._AREA_MEASURE(let selection): return selection.binaryValue
      case ._BOOLEAN_VALUE(let selection): return selection.binaryValue
      case ._CONTEXT_DEPENDENT_MEASURE(let selection): return selection.binaryValue
      case ._LENGTH_MEASURE(let selection): return selection.binaryValue
      case ._PLANE_ANGLE_MEASURE(let selection): return selection.binaryValue
      case ._VOLUME_MEASURE(let selection): return selection.binaryValue
      }
    }
    public var logicalValue: SDAI.LOGICAL? {
      switch self {
      case ._A3MA_LENGTH_MEASURE_AND_CONTEXT_DEPENDENT_MEASURE_PAIR(let selection): return selection.logicalValue
      case ._AREA_MEASURE(let selection): return selection.logicalValue
      case ._BOOLEAN_VALUE(let selection): return selection.logicalValue
      case ._CONTEXT_DEPENDENT_MEASURE(let selection): return selection.logicalValue
      case ._LENGTH_MEASURE(let selection): return selection.logicalValue
      case ._PLANE_ANGLE_MEASURE(let selection): return selection.logicalValue
      case ._VOLUME_MEASURE(let selection): return selection.logicalValue
      }
    }
    public var booleanValue: SDAI.BOOLEAN? {
      switch self {
      case ._A3MA_LENGTH_MEASURE_AND_CONTEXT_DEPENDENT_MEASURE_PAIR(let selection): return selection.booleanValue
      case ._AREA_MEASURE(let selection): return selection.booleanValue
      case ._BOOLEAN_VALUE(let selection): return selection.booleanValue
      case ._CONTEXT_DEPENDENT_MEASURE(let selection): return selection.booleanValue
      case ._LENGTH_MEASURE(let selection): return selection.booleanValue
      case ._PLANE_ANGLE_MEASURE(let selection): return selection.booleanValue
      case ._VOLUME_MEASURE(let selection): return selection.booleanValue
      }
    }
    public var numberValue: SDAI.NUMBER? {
      switch self {
      case ._A3MA_LENGTH_MEASURE_AND_CONTEXT_DEPENDENT_MEASURE_PAIR(let selection): return selection.numberValue
      case ._AREA_MEASURE(let selection): return selection.numberValue
      case ._BOOLEAN_VALUE(let selection): return selection.numberValue
      case ._CONTEXT_DEPENDENT_MEASURE(let selection): return selection.numberValue
      case ._LENGTH_MEASURE(let selection): return selection.numberValue
      case ._PLANE_ANGLE_MEASURE(let selection): return selection.numberValue
      case ._VOLUME_MEASURE(let selection): return selection.numberValue
      }
    }
    public var realValue: SDAI.REAL? {
      switch self {
      case ._A3MA_LENGTH_MEASURE_AND_CONTEXT_DEPENDENT_MEASURE_PAIR(let selection): return selection.realValue
      case ._AREA_MEASURE(let selection): return selection.realValue
      case ._BOOLEAN_VALUE(let selection): return selection.realValue
      case ._CONTEXT_DEPENDENT_MEASURE(let selection): return selection.realValue
      case ._LENGTH_MEASURE(let selection): return selection.realValue
      case ._PLANE_ANGLE_MEASURE(let selection): return selection.realValue
      case ._VOLUME_MEASURE(let selection): return selection.realValue
      }
    }
    public var integerValue: SDAI.INTEGER? {
      switch self {
      case ._A3MA_LENGTH_MEASURE_AND_CONTEXT_DEPENDENT_MEASURE_PAIR(let selection): return selection.integerValue
      case ._AREA_MEASURE(let selection): return selection.integerValue
      case ._BOOLEAN_VALUE(let selection): return selection.integerValue
      case ._CONTEXT_DEPENDENT_MEASURE(let selection): return selection.integerValue
      case ._LENGTH_MEASURE(let selection): return selection.integerValue
      case ._PLANE_ANGLE_MEASURE(let selection): return selection.integerValue
      case ._VOLUME_MEASURE(let selection): return selection.integerValue
      }
    }
    public var genericEnumValue: SDAI.GenericEnumValue? {
      switch self {
      case ._A3MA_LENGTH_MEASURE_AND_CONTEXT_DEPENDENT_MEASURE_PAIR(let selection): return selection.genericEnumValue
      case ._AREA_MEASURE(let selection): return selection.genericEnumValue
      case ._BOOLEAN_VALUE(let selection): return selection.genericEnumValue
      case ._CONTEXT_DEPENDENT_MEASURE(let selection): return selection.genericEnumValue
      case ._LENGTH_MEASURE(let selection): return selection.genericEnumValue
      case ._PLANE_ANGLE_MEASURE(let selection): return selection.genericEnumValue
      case ._VOLUME_MEASURE(let selection): return selection.genericEnumValue
      }
    }
    public func arrayOptionalValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY_OPTIONAL<ELEM>? {
      switch self {
      case ._A3MA_LENGTH_MEASURE_AND_CONTEXT_DEPENDENT_MEASURE_PAIR(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._AREA_MEASURE(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._BOOLEAN_VALUE(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._CONTEXT_DEPENDENT_MEASURE(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._LENGTH_MEASURE(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._PLANE_ANGLE_MEASURE(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._VOLUME_MEASURE(let selection): return selection.arrayOptionalValue(elementType:elementType)
      }
    }
    public func arrayValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY<ELEM>? {
      switch self {
      case ._A3MA_LENGTH_MEASURE_AND_CONTEXT_DEPENDENT_MEASURE_PAIR(let selection): return selection.arrayValue(elementType:elementType)
      case ._AREA_MEASURE(let selection): return selection.arrayValue(elementType:elementType)
      case ._BOOLEAN_VALUE(let selection): return selection.arrayValue(elementType:elementType)
      case ._CONTEXT_DEPENDENT_MEASURE(let selection): return selection.arrayValue(elementType:elementType)
      case ._LENGTH_MEASURE(let selection): return selection.arrayValue(elementType:elementType)
      case ._PLANE_ANGLE_MEASURE(let selection): return selection.arrayValue(elementType:elementType)
      case ._VOLUME_MEASURE(let selection): return selection.arrayValue(elementType:elementType)
      }
    }
    public func listValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.LIST<ELEM>? {
      switch self {
      case ._A3MA_LENGTH_MEASURE_AND_CONTEXT_DEPENDENT_MEASURE_PAIR(let selection): return selection.listValue(elementType:elementType)
      case ._AREA_MEASURE(let selection): return selection.listValue(elementType:elementType)
      case ._BOOLEAN_VALUE(let selection): return selection.listValue(elementType:elementType)
      case ._CONTEXT_DEPENDENT_MEASURE(let selection): return selection.listValue(elementType:elementType)
      case ._LENGTH_MEASURE(let selection): return selection.listValue(elementType:elementType)
      case ._PLANE_ANGLE_MEASURE(let selection): return selection.listValue(elementType:elementType)
      case ._VOLUME_MEASURE(let selection): return selection.listValue(elementType:elementType)
      }
    }
    public func bagValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.BAG<ELEM>? {
      switch self {
      case ._A3MA_LENGTH_MEASURE_AND_CONTEXT_DEPENDENT_MEASURE_PAIR(let selection): return selection.bagValue(elementType:elementType)
      case ._AREA_MEASURE(let selection): return selection.bagValue(elementType:elementType)
      case ._BOOLEAN_VALUE(let selection): return selection.bagValue(elementType:elementType)
      case ._CONTEXT_DEPENDENT_MEASURE(let selection): return selection.bagValue(elementType:elementType)
      case ._LENGTH_MEASURE(let selection): return selection.bagValue(elementType:elementType)
      case ._PLANE_ANGLE_MEASURE(let selection): return selection.bagValue(elementType:elementType)
      case ._VOLUME_MEASURE(let selection): return selection.bagValue(elementType:elementType)
      }
    }
    public func setValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.SET<ELEM>? {
      switch self {
      case ._A3MA_LENGTH_MEASURE_AND_CONTEXT_DEPENDENT_MEASURE_PAIR(let selection): return selection.setValue(elementType:elementType)
      case ._AREA_MEASURE(let selection): return selection.setValue(elementType:elementType)
      case ._BOOLEAN_VALUE(let selection): return selection.setValue(elementType:elementType)
      case ._CONTEXT_DEPENDENT_MEASURE(let selection): return selection.setValue(elementType:elementType)
      case ._LENGTH_MEASURE(let selection): return selection.setValue(elementType:elementType)
      case ._PLANE_ANGLE_MEASURE(let selection): return selection.setValue(elementType:elementType)
      case ._VOLUME_MEASURE(let selection): return selection.setValue(elementType:elementType)
      }
    }
    public func enumValue<ENUM:SDAIEnumerationType>(enumType:ENUM.Type) -> ENUM? {
      switch self {
      case ._A3MA_LENGTH_MEASURE_AND_CONTEXT_DEPENDENT_MEASURE_PAIR(let selection): return selection.enumValue(enumType:enumType)
      case ._AREA_MEASURE(let selection): return selection.enumValue(enumType:enumType)
      case ._BOOLEAN_VALUE(let selection): return selection.enumValue(enumType:enumType)
      case ._CONTEXT_DEPENDENT_MEASURE(let selection): return selection.enumValue(enumType:enumType)
      case ._LENGTH_MEASURE(let selection): return selection.enumValue(enumType:enumType)
      case ._PLANE_ANGLE_MEASURE(let selection): return selection.enumValue(enumType:enumType)
      case ._VOLUME_MEASURE(let selection): return selection.enumValue(enumType:enumType)
      }
    }

    //MARK: SDAIUnderlyingType
    public typealias FundamentalType = Self
    public static var typeName: String = 
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.EQUIVALENCE_MEASURED_VALUE_SELECT"
    public var asFundamentalType: FundamentalType { return self }

    //MARK: SDAIObservableAggregateElement
    public var entityReferences: AnySequence<SDAI.EntityReference> {
      switch self {
      case ._A3MA_LENGTH_MEASURE_AND_CONTEXT_DEPENDENT_MEASURE_PAIR(let entity): return entity.entityReferences
      case ._AREA_MEASURE: return AnySequence<SDAI.EntityReference>(EmptyCollection<SDAI.EntityReference>())
      case ._BOOLEAN_VALUE: return AnySequence<SDAI.EntityReference>(EmptyCollection<SDAI.EntityReference>())
      case ._CONTEXT_DEPENDENT_MEASURE: return AnySequence<SDAI.EntityReference>(EmptyCollection<SDAI.EntityReference>())
      case ._LENGTH_MEASURE: return AnySequence<SDAI.EntityReference>(EmptyCollection<SDAI.EntityReference>())
      case ._PLANE_ANGLE_MEASURE: return AnySequence<SDAI.EntityReference>(EmptyCollection<SDAI.EntityReference>())
      case ._VOLUME_MEASURE: return AnySequence<SDAI.EntityReference>(EmptyCollection<SDAI.EntityReference>())
      }
    }

    public mutating func configure(with observer: SDAI.EntityReferenceObserver) {
      switch self {
      case ._A3MA_LENGTH_MEASURE_AND_CONTEXT_DEPENDENT_MEASURE_PAIR(let entity): 
        entity.configure(with: observer)
        self = ._A3MA_LENGTH_MEASURE_AND_CONTEXT_DEPENDENT_MEASURE_PAIR(entity)
      case ._AREA_MEASURE: break
      case ._BOOLEAN_VALUE: break
      case ._CONTEXT_DEPENDENT_MEASURE: break
      case ._LENGTH_MEASURE: break
      case ._PLANE_ANGLE_MEASURE: break
      case ._VOLUME_MEASURE: break
      }
    }

    public mutating func teardownObserver() {
      switch self {
      case ._A3MA_LENGTH_MEASURE_AND_CONTEXT_DEPENDENT_MEASURE_PAIR(let entity): 
        entity.teardownObserver()
        self = ._A3MA_LENGTH_MEASURE_AND_CONTEXT_DEPENDENT_MEASURE_PAIR(entity)
      case ._AREA_MEASURE: break
      case ._BOOLEAN_VALUE: break
      case ._CONTEXT_DEPENDENT_MEASURE: break
      case ._LENGTH_MEASURE: break
      case ._PLANE_ANGLE_MEASURE: break
      case ._VOLUME_MEASURE: break
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
      case ._A3MA_LENGTH_MEASURE_AND_CONTEXT_DEPENDENT_MEASURE_PAIR(let selectValue): result = eA3MA_LENGTH_MEASURE_AND_CONTEXT_DEPENDENT_MEASURE_PAIR.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\A3MA_LENGTH_MEASURE_AND_CONTEXT_DEPENDENT_MEASURE_PAIR")
      case ._AREA_MEASURE(let selectValue): result = tAREA_MEASURE.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\AREA_MEASURE")
      case ._BOOLEAN_VALUE(let selectValue): 
        result = tBOOLEAN_VALUE.validateWhereRules(instance:selectValue, prefix:prefix + "\\BOOLEAN_VALUE")
      case ._CONTEXT_DEPENDENT_MEASURE(let selectValue): 
        result = tCONTEXT_DEPENDENT_MEASURE.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\CONTEXT_DEPENDENT_MEASURE")
      case ._LENGTH_MEASURE(let selectValue): 
        result = tLENGTH_MEASURE.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\LENGTH_MEASURE")
      case ._PLANE_ANGLE_MEASURE(let selectValue): 
        result = tPLANE_ANGLE_MEASURE.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\PLANE_ANGLE_MEASURE")
      case ._VOLUME_MEASURE(let selectValue): 
        result = tVOLUME_MEASURE.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\VOLUME_MEASURE")
      case nil: break
      }

      return result
    }

  }

}


//MARK: - SELECT TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sEQUIVALENCE_MEASURED_VALUE_SELECT__type: 
  SDAISelectType {

  //MARK: GROUP REFERENCES
  var super_tAREA_MEASURE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tAREA_MEASURE? { get }
  var super_tBOOLEAN_VALUE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tBOOLEAN_VALUE? { get }
  var super_tCONTEXT_DEPENDENT_MEASURE: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tCONTEXT_DEPENDENT_MEASURE? { get }
  var super_tLENGTH_MEASURE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLENGTH_MEASURE? { get }
  var super_tPLANE_ANGLE_MEASURE: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tPLANE_ANGLE_MEASURE? { get }
  var super_tVOLUME_MEASURE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tVOLUME_MEASURE? { get }
  var super_eA3MA_LENGTH_MEASURE_AND_CONTEXT_DEPENDENT_MEASURE_PAIR: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eA3MA_LENGTH_MEASURE_AND_CONTEXT_DEPENDENT_MEASURE_PAIR? { get }
  var super_eREPRESENTATION_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION_ITEM? { get }
  var super_eCOMPOUND_REPRESENTATION_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCOMPOUND_REPRESENTATION_ITEM? { get }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var ITEM_ELEMENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sCOMPOUND_ITEM_DEFINITION?  { get }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { get }
}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sEQUIVALENCE_MEASURED_VALUE_SELECT__subtype: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sEQUIVALENCE_MEASURED_VALUE_SELECT__type, SDAIDefinedType
where Supertype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sEQUIVALENCE_MEASURED_VALUE_SELECT__type
{}

public extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sEQUIVALENCE_MEASURED_VALUE_SELECT__subtype {
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
  var super_tAREA_MEASURE: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tAREA_MEASURE? { rep.super_tAREA_MEASURE }
  var super_tBOOLEAN_VALUE: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tBOOLEAN_VALUE? { rep.super_tBOOLEAN_VALUE }
  var super_tCONTEXT_DEPENDENT_MEASURE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tCONTEXT_DEPENDENT_MEASURE? { rep.super_tCONTEXT_DEPENDENT_MEASURE }
  var super_tLENGTH_MEASURE: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLENGTH_MEASURE? { rep.super_tLENGTH_MEASURE }
  var super_tPLANE_ANGLE_MEASURE: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tPLANE_ANGLE_MEASURE? { rep.super_tPLANE_ANGLE_MEASURE }
  var super_tVOLUME_MEASURE: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tVOLUME_MEASURE? { rep.super_tVOLUME_MEASURE }
  var super_eA3MA_LENGTH_MEASURE_AND_CONTEXT_DEPENDENT_MEASURE_PAIR: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eA3MA_LENGTH_MEASURE_AND_CONTEXT_DEPENDENT_MEASURE_PAIR? { rep.super_eA3MA_LENGTH_MEASURE_AND_CONTEXT_DEPENDENT_MEASURE_PAIR }
  var super_eREPRESENTATION_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION_ITEM? { rep.super_eREPRESENTATION_ITEM }
  var super_eCOMPOUND_REPRESENTATION_ITEM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCOMPOUND_REPRESENTATION_ITEM? { rep.super_eCOMPOUND_REPRESENTATION_ITEM }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var ITEM_ELEMENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sCOMPOUND_ITEM_DEFINITION?  { rep.ITEM_ELEMENT }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { rep.NAME }
}

