/* file: draughting_subfigure_representation_item.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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
  TYPE draughting_subfigure_representation_item = SELECT
    ( annotation_occurrence (*ENTITY*),
     axis2_placement (*SELECT*),
     draughting_callout (*ENTITY*) );
  END_TYPE; -- draughting_subfigure_representation_item (line:2588 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES FOR SELECT
/*
  annotation_occurrence (*ENTITY*):
  ATTR:  elements: SET [1 : ?] OF annotation_plane_element
  ATTR:  item: styled_item_target
  ATTR:  role: (AMBIGUOUS (CASE LEVEL))
  ATTR:  annotated_curve: annotation_curve_occurrence
  ATTR:  the_callout: draughting_callout
  ATTR:  line_spacing: positive_length_measure
  ATTR:  fill_style_target: point
  ATTR:  the_draughting_model_item_association_with_placeholders: SET [0 : 1] OF
    draughting_model_item_association_with_placeholder
  ATTR:  styles: SET [0 : ?] OF presentation_style_assignment
  ATTR:  name: label

  axis2_placement (*SELECT*):
  ATTR:  p: LIST [2 : 2] OF direction *** Multiple Select Case Sources ***
  ATTR:  axis: direction
  ATTR:  ref_direction: direction *** Multiple Select Case Sources ***
  ATTR:  location: cartesian_point
  ATTR:  name: label
  ATTR:  dim: dimension_count

  draughting_callout (*ENTITY*):
  ATTR:  contents: SET [1 : ?] OF draughting_callout_element
  ATTR:  name: label
  ATTR:  dim: dimension_count

*/

/** SELECT type
- EXPRESS:
```express
  TYPE draughting_subfigure_representation_item = SELECT
    ( annotation_occurrence (*ENTITY*),
     axis2_placement (*SELECT*),
     draughting_callout (*ENTITY*) );
  END_TYPE; -- draughting_subfigure_representation_item (line:2588 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public enum sDRAUGHTING_SUBFIGURE_REPRESENTATION_ITEM : SDAIValue, AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sDRAUGHTING_SUBFIGURE_REPRESENTATION_ITEM__type {

    /// SELECT case ``eANNOTATION_OCCURRENCE`` (ENTITY) in ``sDRAUGHTING_SUBFIGURE_REPRESENTATION_ITEM``
    case _ANNOTATION_OCCURRENCE(eANNOTATION_OCCURRENCE)	// (ENTITY)

    /// SELECT case ``sAXIS2_PLACEMENT`` (SELECT) in ``sDRAUGHTING_SUBFIGURE_REPRESENTATION_ITEM``
    case _AXIS2_PLACEMENT(sAXIS2_PLACEMENT)	// (SELECT)

    /// SELECT case ``eDRAUGHTING_CALLOUT`` (ENTITY) in ``sDRAUGHTING_SUBFIGURE_REPRESENTATION_ITEM``
    case _DRAUGHTING_CALLOUT(eDRAUGHTING_CALLOUT)	// (ENTITY)

    //MARK: - CONSTRUCTORS
    public init(fundamental: FundamentalType) { self = fundamental }

    public init?<T: SDAIUnderlyingType>(possiblyFrom underlyingType: T?){
      guard let underlyingType = underlyingType else { return nil }

      if let base = underlyingType as? sAXIS2_PLACEMENT {
        self = ._AXIS2_PLACEMENT(base)
      }
      else if let base = sAXIS2_PLACEMENT(possiblyFrom: underlyingType) {
        self = ._AXIS2_PLACEMENT(base)
      }
      else { return nil }
    }

    public init?(possiblyFrom complex: SDAI.ComplexEntity?) {
      guard let complex = complex else { return nil }

      if let base = complex.entityReference(eANNOTATION_OCCURRENCE.self) {self = ._ANNOTATION_OCCURRENCE(base) }
      else if let base = sAXIS2_PLACEMENT(possiblyFrom: complex) {
        self = ._AXIS2_PLACEMENT(base)
      }
      else if let base = complex.entityReference(eDRAUGHTING_CALLOUT.self) {self = ._DRAUGHTING_CALLOUT(base) }
      else { return nil }
    }

    public init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let select = generic else { return nil }

      if let fundamental = select as? Self {
        self.init(fundamental: fundamental)
      }
      else if let base = eANNOTATION_OCCURRENCE.convert(fromGeneric: select) {
        self = ._ANNOTATION_OCCURRENCE(base)
      }
      else if let base = sAXIS2_PLACEMENT.convert(fromGeneric: select) {
        self = ._AXIS2_PLACEMENT(base)
      }
      else if let base = eDRAUGHTING_CALLOUT.convert(fromGeneric: select) {
        self = ._DRAUGHTING_CALLOUT(base)
      }
      else { return nil }
    }

    // InitializableByP21Parameter
    public static var bareTypeName: String = "DRAUGHTING_SUBFIGURE_REPRESENTATION_ITEM"

    public init?(p21typedParam: P21Decode.ExchangeStructure.TypedParameter, from exchangeStructure: P21Decode.ExchangeStructure) {
      guard let keyword = p21typedParam.keyword.asStandardKeyword else { exchangeStructure.error = "unexpected p21parameter(\(p21typedParam)) while resolving \(Self.bareTypeName) select value"; return nil }

      switch(keyword) {
      case sAXIS2_PLACEMENT.bareTypeName:
        guard let base = sAXIS2_PLACEMENT(p21typedParam: p21typedParam, from: exchangeStructure) else { exchangeStructure.add(errorContext: "while resolving \(Self.bareTypeName) select value"); return nil }
        self = ._AXIS2_PLACEMENT(base)

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
    public var super_sAXIS2_PLACEMENT: sAXIS2_PLACEMENT? {
      switch self {
      case ._AXIS2_PLACEMENT(let selectValue): return selectValue
      default: return nil
      }
    }

    //MARK: - ENTITY UNDERLYING TYPE REFERENCES
    public var super_eDRAUGHTING_CALLOUT: eDRAUGHTING_CALLOUT? {
      switch self {
      case ._DRAUGHTING_CALLOUT(let entity): return entity
      default: return nil
      }
    }

    public var super_eAXIS2_PLACEMENT_3D: eAXIS2_PLACEMENT_3D? {
      switch self {
      case ._AXIS2_PLACEMENT(let select): return select.super_eAXIS2_PLACEMENT_3D
      default: return nil
      }
    }

    public var super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM? {
      switch self {
      case ._ANNOTATION_OCCURRENCE(let entity): return entity.super_eREPRESENTATION_ITEM
      case ._AXIS2_PLACEMENT(let select): return select.super_eREPRESENTATION_ITEM
      case ._DRAUGHTING_CALLOUT(let entity): return entity.super_eREPRESENTATION_ITEM
      }
    }

    public var super_ePLACEMENT: ePLACEMENT? {
      switch self {
      case ._AXIS2_PLACEMENT(let select): return select.super_ePLACEMENT
      default: return nil
      }
    }

    public var super_eANNOTATION_OCCURRENCE: eANNOTATION_OCCURRENCE? {
      switch self {
      case ._ANNOTATION_OCCURRENCE(let entity): return entity
      default: return nil
      }
    }

    public var super_eAXIS2_PLACEMENT_2D: eAXIS2_PLACEMENT_2D? {
      switch self {
      case ._AXIS2_PLACEMENT(let select): return select.super_eAXIS2_PLACEMENT_2D
      default: return nil
      }
    }

    public var super_eSTYLED_ITEM: eSTYLED_ITEM? {
      switch self {
      case ._ANNOTATION_OCCURRENCE(let entity): return entity.super_eSTYLED_ITEM
      default: return nil
      }
    }

    public var super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM? {
      switch self {
      case ._AXIS2_PLACEMENT(let select): return select.super_eGEOMETRIC_REPRESENTATION_ITEM
      case ._DRAUGHTING_CALLOUT(let entity): return entity.super_eGEOMETRIC_REPRESENTATION_ITEM
      default: return nil
      }
    }


    //MARK: - ENTITY ATTRIBUTE REFERENCES
    /// attribute of SELECT type ``sDRAUGHTING_SUBFIGURE_REPRESENTATION_ITEM``
    /// - origin: ENTITY( ``eANNOTATION_OCCURRENCE`` )
    public var ELEMENTS: (SDAI.SET<sANNOTATION_PLANE_ELEMENT>/*[1:nil]*/ )?  {
      switch self {
      case ._ANNOTATION_OCCURRENCE(let entity): return entity.ELEMENTS
      default: return nil
      }
    }

    /// attribute of SELECT type ``sDRAUGHTING_SUBFIGURE_REPRESENTATION_ITEM``
    /// - origin: ENTITY( ``eDRAUGHTING_CALLOUT`` )
    public var CONTENTS: (SDAI.SET<sDRAUGHTING_CALLOUT_ELEMENT>/*[1:nil]*/ )?  {
      switch self {
      case ._DRAUGHTING_CALLOUT(let entity): return entity.CONTENTS
      default: return nil
      }
    }

    /// attribute of SELECT type ``sDRAUGHTING_SUBFIGURE_REPRESENTATION_ITEM``
    /// - origin: ENTITY( ``eANNOTATION_OCCURRENCE`` )
    public var ITEM: sSTYLED_ITEM_TARGET?  {
      switch self {
      case ._ANNOTATION_OCCURRENCE(let entity): return entity.ITEM
      default: return nil
      }
    }

    /// attribute of SELECT type ``sDRAUGHTING_SUBFIGURE_REPRESENTATION_ITEM``
    /// - origin: SELECT( ``sAXIS2_PLACEMENT`` )
    public var P: (SDAI.LIST<eDIRECTION>/*[2:2]*/ )?  {
      switch self {
      case ._AXIS2_PLACEMENT(let select): return SDAI.LIST<eDIRECTION>(select.P)
      default: return nil
      }
    }

    /// attribute of SELECT type ``sDRAUGHTING_SUBFIGURE_REPRESENTATION_ITEM``
    /// - origin: ENTITY( ``eANNOTATION_OCCURRENCE`` )
    public var ANNOTATED_CURVE: eANNOTATION_CURVE_OCCURRENCE?  {
      switch self {
      case ._ANNOTATION_OCCURRENCE(let entity): return entity.ANNOTATED_CURVE
      default: return nil
      }
    }

    /// attribute of SELECT type ``sDRAUGHTING_SUBFIGURE_REPRESENTATION_ITEM``
    /// - origin: ENTITY( ``eANNOTATION_OCCURRENCE`` )
    public var THE_CALLOUT: eDRAUGHTING_CALLOUT?  {
      switch self {
      case ._ANNOTATION_OCCURRENCE(let entity): return entity.THE_CALLOUT
      default: return nil
      }
    }

    /// attribute of SELECT type ``sDRAUGHTING_SUBFIGURE_REPRESENTATION_ITEM``
    /// - origin: ENTITY( ``eANNOTATION_OCCURRENCE`` )
    public var LINE_SPACING: tPOSITIVE_LENGTH_MEASURE?  {
      switch self {
      case ._ANNOTATION_OCCURRENCE(let entity): return entity.LINE_SPACING
      default: return nil
      }
    }

    /// attribute of SELECT type ``sDRAUGHTING_SUBFIGURE_REPRESENTATION_ITEM``
    /// - origin: ENTITY( ``eANNOTATION_OCCURRENCE`` )
    public var FILL_STYLE_TARGET: ePOINT?  {
      switch self {
      case ._ANNOTATION_OCCURRENCE(let entity): return entity.FILL_STYLE_TARGET
      default: return nil
      }
    }

    /// attribute of SELECT type ``sDRAUGHTING_SUBFIGURE_REPRESENTATION_ITEM``
    /// - origin: SELECT( ``sAXIS2_PLACEMENT`` )
    public var AXIS: eDIRECTION?  {
      switch self {
      case ._AXIS2_PLACEMENT(let select): return select.AXIS
      default: return nil
      }
    }

    /// attribute of SELECT type ``sDRAUGHTING_SUBFIGURE_REPRESENTATION_ITEM``
    /// - origin: ENTITY( ``eANNOTATION_OCCURRENCE`` )
    public var THE_DRAUGHTING_MODEL_ITEM_ASSOCIATION_WITH_PLACEHOLDERS: (SDAI.SET<
      eDRAUGHTING_MODEL_ITEM_ASSOCIATION_WITH_PLACEHOLDER>/*[0:1]*/ )?  {
      switch self {
      case ._ANNOTATION_OCCURRENCE(let entity): return 
        entity.THE_DRAUGHTING_MODEL_ITEM_ASSOCIATION_WITH_PLACEHOLDERS
      default: return nil
      }
    }

    /// attribute of SELECT type ``sDRAUGHTING_SUBFIGURE_REPRESENTATION_ITEM``
    /// - origin: ENTITY( ``eANNOTATION_OCCURRENCE`` )
    public var STYLES: (SDAI.SET<ePRESENTATION_STYLE_ASSIGNMENT>/*[0:nil]*/ )?  {
      switch self {
      case ._ANNOTATION_OCCURRENCE(let entity): return entity.STYLES
      default: return nil
      }
    }

    /// attribute of SELECT type ``sDRAUGHTING_SUBFIGURE_REPRESENTATION_ITEM``
    /// - origin: SELECT( ``sAXIS2_PLACEMENT`` )
    public var REF_DIRECTION: eDIRECTION?  {
      switch self {
      case ._AXIS2_PLACEMENT(let select): return select.REF_DIRECTION
      default: return nil
      }
    }

    /// attribute of SELECT type ``sDRAUGHTING_SUBFIGURE_REPRESENTATION_ITEM``
    /// - origin: SELECT( ``sAXIS2_PLACEMENT`` )
    public var LOCATION: eCARTESIAN_POINT?  {
      switch self {
      case ._AXIS2_PLACEMENT(let select): return select.LOCATION
      default: return nil
      }
    }

    /// attribute of SELECT type ``sDRAUGHTING_SUBFIGURE_REPRESENTATION_ITEM``
    /// - origin: ENTITY( ``eANNOTATION_OCCURRENCE`` )
    /// - origin: SELECT( ``sAXIS2_PLACEMENT`` )
    /// - origin: ENTITY( ``eDRAUGHTING_CALLOUT`` )
    public var NAME: tLABEL?  {
      switch self {
      case ._ANNOTATION_OCCURRENCE(let entity): return entity.NAME
      case ._AXIS2_PLACEMENT(let select): return select.NAME
      case ._DRAUGHTING_CALLOUT(let entity): return entity.NAME
      }
    }

    /// attribute of SELECT type ``sDRAUGHTING_SUBFIGURE_REPRESENTATION_ITEM``
    /// - origin: SELECT( ``sAXIS2_PLACEMENT`` )
    /// - origin: ENTITY( ``eDRAUGHTING_CALLOUT`` )
    public var DIM: tDIMENSION_COUNT?  {
      switch self {
      case ._AXIS2_PLACEMENT(let select): return select.DIM
      case ._DRAUGHTING_CALLOUT(let entity): return entity.DIM
      default: return nil
      }
    }


    //MARK: - SDAIValue
    public func isValueEqual<T: SDAIValue>(to rhs: T) -> Bool {
      switch self {
      case ._ANNOTATION_OCCURRENCE(let selection): return selection.value.isValueEqual(to: rhs)
      case ._AXIS2_PLACEMENT(let selection): return selection.value.isValueEqual(to: rhs)
      case ._DRAUGHTING_CALLOUT(let selection): return selection.value.isValueEqual(to: rhs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?) -> Bool? {
      switch self {
      case ._ANNOTATION_OCCURRENCE(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._AXIS2_PLACEMENT(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._DRAUGHTING_CALLOUT(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      }
    }

    public func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      switch self {
      case ._ANNOTATION_OCCURRENCE(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._AXIS2_PLACEMENT(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._DRAUGHTING_CALLOUT(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      }
    }

    public func isValueEqual<T: SDAIValue>(to rhs: T, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      switch self {
      case ._ANNOTATION_OCCURRENCE(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._AXIS2_PLACEMENT(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._DRAUGHTING_CALLOUT(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      switch self {
      case ._ANNOTATION_OCCURRENCE(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._AXIS2_PLACEMENT(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._DRAUGHTING_CALLOUT(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      }
    }


    //MARK: SDAIGenericTypeBase
    public func copy() -> Self {
      switch self {
      case ._ANNOTATION_OCCURRENCE(let selection): return ._ANNOTATION_OCCURRENCE(selection.copy())
      case ._AXIS2_PLACEMENT(let selection): return ._AXIS2_PLACEMENT(selection.copy())
      case ._DRAUGHTING_CALLOUT(let selection): return ._DRAUGHTING_CALLOUT(selection.copy())
      }
    }

    //MARK: SDAIGenericType
    public var typeMembers: Set<SDAI.STRING> {
      var members: Set<SDAI.STRING> = [SDAI.STRING(Self.typeName)]
      switch self {
      case ._ANNOTATION_OCCURRENCE(let selection): members.formUnion(selection.typeMembers)
      case ._AXIS2_PLACEMENT(let selection): members.formUnion(selection.typeMembers)
      case ._DRAUGHTING_CALLOUT(let selection): members.formUnion(selection.typeMembers)
      }
      return members
    }

    public var entityReference: SDAI.EntityReference? {
      switch self {
      case ._ANNOTATION_OCCURRENCE(let selection): return selection.entityReference
      case ._AXIS2_PLACEMENT(let selection): return selection.entityReference
      case ._DRAUGHTING_CALLOUT(let selection): return selection.entityReference
      }
    }
    public var stringValue: SDAI.STRING? {
      switch self {
      case ._ANNOTATION_OCCURRENCE(let selection): return selection.stringValue
      case ._AXIS2_PLACEMENT(let selection): return selection.stringValue
      case ._DRAUGHTING_CALLOUT(let selection): return selection.stringValue
      }
    }
    public var binaryValue: SDAI.BINARY? {
      switch self {
      case ._ANNOTATION_OCCURRENCE(let selection): return selection.binaryValue
      case ._AXIS2_PLACEMENT(let selection): return selection.binaryValue
      case ._DRAUGHTING_CALLOUT(let selection): return selection.binaryValue
      }
    }
    public var logicalValue: SDAI.LOGICAL? {
      switch self {
      case ._ANNOTATION_OCCURRENCE(let selection): return selection.logicalValue
      case ._AXIS2_PLACEMENT(let selection): return selection.logicalValue
      case ._DRAUGHTING_CALLOUT(let selection): return selection.logicalValue
      }
    }
    public var booleanValue: SDAI.BOOLEAN? {
      switch self {
      case ._ANNOTATION_OCCURRENCE(let selection): return selection.booleanValue
      case ._AXIS2_PLACEMENT(let selection): return selection.booleanValue
      case ._DRAUGHTING_CALLOUT(let selection): return selection.booleanValue
      }
    }
    public var numberValue: SDAI.NUMBER? {
      switch self {
      case ._ANNOTATION_OCCURRENCE(let selection): return selection.numberValue
      case ._AXIS2_PLACEMENT(let selection): return selection.numberValue
      case ._DRAUGHTING_CALLOUT(let selection): return selection.numberValue
      }
    }
    public var realValue: SDAI.REAL? {
      switch self {
      case ._ANNOTATION_OCCURRENCE(let selection): return selection.realValue
      case ._AXIS2_PLACEMENT(let selection): return selection.realValue
      case ._DRAUGHTING_CALLOUT(let selection): return selection.realValue
      }
    }
    public var integerValue: SDAI.INTEGER? {
      switch self {
      case ._ANNOTATION_OCCURRENCE(let selection): return selection.integerValue
      case ._AXIS2_PLACEMENT(let selection): return selection.integerValue
      case ._DRAUGHTING_CALLOUT(let selection): return selection.integerValue
      }
    }
    public var genericEnumValue: SDAI.GenericEnumValue? {
      switch self {
      case ._ANNOTATION_OCCURRENCE(let selection): return selection.genericEnumValue
      case ._AXIS2_PLACEMENT(let selection): return selection.genericEnumValue
      case ._DRAUGHTING_CALLOUT(let selection): return selection.genericEnumValue
      }
    }
    public func arrayOptionalValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY_OPTIONAL<ELEM>? {
      switch self {
      case ._ANNOTATION_OCCURRENCE(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._AXIS2_PLACEMENT(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._DRAUGHTING_CALLOUT(let selection): return selection.arrayOptionalValue(elementType:elementType)
      }
    }
    public func arrayValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY<ELEM>? {
      switch self {
      case ._ANNOTATION_OCCURRENCE(let selection): return selection.arrayValue(elementType:elementType)
      case ._AXIS2_PLACEMENT(let selection): return selection.arrayValue(elementType:elementType)
      case ._DRAUGHTING_CALLOUT(let selection): return selection.arrayValue(elementType:elementType)
      }
    }
    public func listValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.LIST<ELEM>? {
      switch self {
      case ._ANNOTATION_OCCURRENCE(let selection): return selection.listValue(elementType:elementType)
      case ._AXIS2_PLACEMENT(let selection): return selection.listValue(elementType:elementType)
      case ._DRAUGHTING_CALLOUT(let selection): return selection.listValue(elementType:elementType)
      }
    }
    public func bagValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.BAG<ELEM>? {
      switch self {
      case ._ANNOTATION_OCCURRENCE(let selection): return selection.bagValue(elementType:elementType)
      case ._AXIS2_PLACEMENT(let selection): return selection.bagValue(elementType:elementType)
      case ._DRAUGHTING_CALLOUT(let selection): return selection.bagValue(elementType:elementType)
      }
    }
    public func setValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.SET<ELEM>? {
      switch self {
      case ._ANNOTATION_OCCURRENCE(let selection): return selection.setValue(elementType:elementType)
      case ._AXIS2_PLACEMENT(let selection): return selection.setValue(elementType:elementType)
      case ._DRAUGHTING_CALLOUT(let selection): return selection.setValue(elementType:elementType)
      }
    }
    public func enumValue<ENUM:SDAIEnumerationType>(enumType:ENUM.Type) -> ENUM? {
      switch self {
      case ._ANNOTATION_OCCURRENCE(let selection): return selection.enumValue(enumType:enumType)
      case ._AXIS2_PLACEMENT(let selection): return selection.enumValue(enumType:enumType)
      case ._DRAUGHTING_CALLOUT(let selection): return selection.enumValue(enumType:enumType)
      }
    }

    //MARK: SDAIUnderlyingType
    public typealias FundamentalType = Self
    public static var typeName: String = 
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DRAUGHTING_SUBFIGURE_REPRESENTATION_ITEM"
    public var asFundamentalType: FundamentalType { return self }

    //MARK: SDAIObservableAggregateElement
    public var entityReferences: AnySequence<SDAI.EntityReference> {
      switch self {
      case ._ANNOTATION_OCCURRENCE(let entity): return entity.entityReferences
      case ._AXIS2_PLACEMENT(let select): return select.entityReferences
      case ._DRAUGHTING_CALLOUT(let entity): return entity.entityReferences
      }
    }

    public mutating func configure(with observer: SDAI.EntityReferenceObserver) {
      switch self {
      case ._ANNOTATION_OCCURRENCE(let entity): 
        entity.configure(with: observer)
        self = ._ANNOTATION_OCCURRENCE(entity)
      case ._AXIS2_PLACEMENT(var select): 
        select.configure(with: observer)
        self = ._AXIS2_PLACEMENT(select)
      case ._DRAUGHTING_CALLOUT(let entity): 
        entity.configure(with: observer)
        self = ._DRAUGHTING_CALLOUT(entity)
      }
    }

    public mutating func teardownObserver() {
      switch self {
      case ._ANNOTATION_OCCURRENCE(let entity): 
        entity.teardownObserver()
        self = ._ANNOTATION_OCCURRENCE(entity)
      case ._AXIS2_PLACEMENT(var select): 
        select.teardownObserver()
        self = ._AXIS2_PLACEMENT(select)
      case ._DRAUGHTING_CALLOUT(let entity): 
        entity.teardownObserver()
        self = ._DRAUGHTING_CALLOUT(entity)
      }
    }

    //MARK: SDAIAggregationBehavior
    public var aggregationHiBound: Int? {
      switch self {
      case ._AXIS2_PLACEMENT(let selection): return selection.aggregationHiBound
      default: return nil
      }
    }
    public var aggregationHiIndex: Int? {
      switch self {
      case ._AXIS2_PLACEMENT(let selection): return selection.aggregationHiIndex
      default: return nil
      }
    }
    public var aggregationLoBound: Int? {
      switch self {
      case ._AXIS2_PLACEMENT(let selection): return selection.aggregationLoBound
      default: return nil
      }
    }
    public var aggregationLoIndex: Int? {
      switch self {
      case ._AXIS2_PLACEMENT(let selection): return selection.aggregationLoIndex
      default: return nil
      }
    }
    public var aggregationSize: Int? {
      switch self {
      case ._AXIS2_PLACEMENT(let selection): return selection.aggregationSize
      default: return nil
      }
    }

    //MARK: WHERE RULE VALIDATION (SELECT TYPE)
    public static func validateWhereRules(instance:Self?, prefix:SDAI.WhereLabel) -> [SDAI.WhereLabel:SDAI.LOGICAL] {
      var result: [SDAI.WhereLabel:SDAI.LOGICAL] = [:]
      switch instance {
      case ._ANNOTATION_OCCURRENCE(let selectValue): 
        result = eANNOTATION_OCCURRENCE.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\ANNOTATION_OCCURRENCE")
      case ._AXIS2_PLACEMENT(let selectValue): 
        result = sAXIS2_PLACEMENT.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\AXIS2_PLACEMENT")
      case ._DRAUGHTING_CALLOUT(let selectValue): 
        result = eDRAUGHTING_CALLOUT.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\DRAUGHTING_CALLOUT")
      case nil: break
      }

      return result
    }

  }

}


//MARK: - SELECT TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sDRAUGHTING_SUBFIGURE_REPRESENTATION_ITEM__type: 
  SDAISelectType {

  //MARK: GROUP REFERENCES
  var super_sAXIS2_PLACEMENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sAXIS2_PLACEMENT? { get }
  var super_eDRAUGHTING_CALLOUT: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDRAUGHTING_CALLOUT? { get }
  var super_eAXIS2_PLACEMENT_3D: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eAXIS2_PLACEMENT_3D? { get }
  var super_eREPRESENTATION_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION_ITEM? { get }
  var super_ePLACEMENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePLACEMENT? { get }
  var super_eANNOTATION_OCCURRENCE: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eANNOTATION_OCCURRENCE? { get }
  var super_eAXIS2_PLACEMENT_2D: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eAXIS2_PLACEMENT_2D? { get }
  var super_eSTYLED_ITEM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSTYLED_ITEM? { get }
  var super_eGEOMETRIC_REPRESENTATION_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eGEOMETRIC_REPRESENTATION_ITEM? { get }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var ELEMENTS: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sANNOTATION_PLANE_ELEMENT>/*[1:nil]*/ )?  { get }
  var CONTENTS: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sDRAUGHTING_CALLOUT_ELEMENT>/*[1:
    nil]*/ )?  { get }
  var ITEM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sSTYLED_ITEM_TARGET?  { get }
  var P: (SDAI.LIST<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDIRECTION>/*[2:2]*/ )?  { get }
  var ANNOTATED_CURVE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eANNOTATION_CURVE_OCCURRENCE?  { get }
  var THE_CALLOUT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDRAUGHTING_CALLOUT?  { get }
  var LINE_SPACING: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tPOSITIVE_LENGTH_MEASURE?  { get }
  var FILL_STYLE_TARGET: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePOINT?  { get }
  var AXIS: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDIRECTION?  { get }
  var THE_DRAUGHTING_MODEL_ITEM_ASSOCIATION_WITH_PLACEHOLDERS: (SDAI.SET<
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDRAUGHTING_MODEL_ITEM_ASSOCIATION_WITH_PLACEHOLDER>/*[0:
    1]*/ )?  { get }
  var STYLES: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRESENTATION_STYLE_ASSIGNMENT>/*[0:
    nil]*/ )?  { get }
  var REF_DIRECTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDIRECTION?  { get }
  var LOCATION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCARTESIAN_POINT?  { get }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { get }
  var DIM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tDIMENSION_COUNT?  { get }
}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sDRAUGHTING_SUBFIGURE_REPRESENTATION_ITEM__subtype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sDRAUGHTING_SUBFIGURE_REPRESENTATION_ITEM__type, SDAIDefinedType
where Supertype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sDRAUGHTING_SUBFIGURE_REPRESENTATION_ITEM__type
{}

public extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sDRAUGHTING_SUBFIGURE_REPRESENTATION_ITEM__subtype {
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
  var super_sAXIS2_PLACEMENT: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sAXIS2_PLACEMENT? { rep.super_sAXIS2_PLACEMENT }
  var super_eDRAUGHTING_CALLOUT: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDRAUGHTING_CALLOUT? { rep.super_eDRAUGHTING_CALLOUT }
  var super_eAXIS2_PLACEMENT_3D: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eAXIS2_PLACEMENT_3D? { rep.super_eAXIS2_PLACEMENT_3D }
  var super_eREPRESENTATION_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION_ITEM? { rep.super_eREPRESENTATION_ITEM }
  var super_ePLACEMENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePLACEMENT? { rep.super_ePLACEMENT }
  var super_eANNOTATION_OCCURRENCE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eANNOTATION_OCCURRENCE? { rep.super_eANNOTATION_OCCURRENCE }
  var super_eAXIS2_PLACEMENT_2D: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eAXIS2_PLACEMENT_2D? { rep.super_eAXIS2_PLACEMENT_2D }
  var super_eSTYLED_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSTYLED_ITEM? { rep.super_eSTYLED_ITEM }
  var super_eGEOMETRIC_REPRESENTATION_ITEM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eGEOMETRIC_REPRESENTATION_ITEM? { rep.super_eGEOMETRIC_REPRESENTATION_ITEM }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var ELEMENTS: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sANNOTATION_PLANE_ELEMENT>/*[1:nil]*/ )?  { rep.ELEMENTS }
  var CONTENTS: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sDRAUGHTING_CALLOUT_ELEMENT>/*[1:
    nil]*/ )?  { rep.CONTENTS }
  var ITEM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sSTYLED_ITEM_TARGET?  { rep.ITEM }
  var P: (SDAI.LIST<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDIRECTION>/*[2:2]*/ )?  { rep.P }
  var ANNOTATED_CURVE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eANNOTATION_CURVE_OCCURRENCE?  { rep.ANNOTATED_CURVE }
  var THE_CALLOUT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDRAUGHTING_CALLOUT?  { rep.THE_CALLOUT }
  var LINE_SPACING: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tPOSITIVE_LENGTH_MEASURE?  { rep.LINE_SPACING }
  var FILL_STYLE_TARGET: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePOINT?  { rep.FILL_STYLE_TARGET }
  var AXIS: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDIRECTION?  { rep.AXIS }
  var THE_DRAUGHTING_MODEL_ITEM_ASSOCIATION_WITH_PLACEHOLDERS: (SDAI.SET<
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDRAUGHTING_MODEL_ITEM_ASSOCIATION_WITH_PLACEHOLDER>/*[0:
    1]*/ )?  { rep.THE_DRAUGHTING_MODEL_ITEM_ASSOCIATION_WITH_PLACEHOLDERS }
  var STYLES: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRESENTATION_STYLE_ASSIGNMENT>/*[0:
    nil]*/ )?  { rep.STYLES }
  var REF_DIRECTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDIRECTION?  { rep.REF_DIRECTION }
  var LOCATION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCARTESIAN_POINT?  { rep.LOCATION }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { rep.NAME }
  var DIM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tDIMENSION_COUNT?  { rep.DIM }
}

