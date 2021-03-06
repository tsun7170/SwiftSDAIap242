/* file: picture_representation_item_select.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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
  TYPE picture_representation_item_select = SELECT
    ( axis2_placement_2d (*ENTITY*),
     planar_box (*ENTITY*),
     styled_item (*ENTITY*) );
  END_TYPE; -- picture_representation_item_select (line:4789 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES FOR SELECT
/*
  axis2_placement_2d (*ENTITY*):
  ATTR:  p: LIST [2 : 2] OF direction
  ATTR:  ref_direction: direction
  ATTR:  location: cartesian_point
  ATTR:  name: label
  ATTR:  dim: dimension_count

  planar_box (*ENTITY*):
  ATTR:  size_in_x: length_measure
  ATTR:  size_in_y: length_measure
  ATTR:  placement: axis2_placement
  ATTR:  name: label
  ATTR:  dim: dimension_count

  styled_item (*ENTITY*):
  ATTR:  style_context: LIST [1 : ?] OF style_context_select
  ATTR:  elements: SET [1 : ?] OF annotation_plane_element
  ATTR:  container: SET [1 : ?] OF presentation_view
  ATTR:  over_ridden_style: styled_item
  ATTR:  item: styled_item_target
  ATTR:  role: (AMBIGUOUS (CASE LEVEL))
  ATTR:  colour_type: colour_type_enum
  ATTR:  annotated_curve: annotation_curve_occurrence
  ATTR:  the_callout: draughting_callout
  ATTR:  line_spacing: positive_length_measure
  ATTR:  fill_style_target: point
  ATTR:  coloured_coordinate_values: coordinates_list
  ATTR:  the_draughting_model_item_association_with_placeholders: SET [0 : 1] OF
    draughting_model_item_association_with_placeholder
  ATTR:  styles: SET [0 : ?] OF presentation_style_assignment
  ATTR:  colour_values: LIST [1 : ?] OF LIST [3 : 4] OF unsigned_8_bit_integer
  ATTR:  name: label

*/

/** SELECT type
- EXPRESS:
```express
  TYPE picture_representation_item_select = SELECT
    ( axis2_placement_2d (*ENTITY*),
     planar_box (*ENTITY*),
     styled_item (*ENTITY*) );
  END_TYPE; -- picture_representation_item_select (line:4789 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public enum sPICTURE_REPRESENTATION_ITEM_SELECT : SDAIValue, AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sPICTURE_REPRESENTATION_ITEM_SELECT__type {

    /// SELECT case ``eAXIS2_PLACEMENT_2D`` (ENTITY) in ``sPICTURE_REPRESENTATION_ITEM_SELECT``
    case _AXIS2_PLACEMENT_2D(eAXIS2_PLACEMENT_2D)	// (ENTITY)

    /// SELECT case ``ePLANAR_BOX`` (ENTITY) in ``sPICTURE_REPRESENTATION_ITEM_SELECT``
    case _PLANAR_BOX(ePLANAR_BOX)	// (ENTITY)

    /// SELECT case ``eSTYLED_ITEM`` (ENTITY) in ``sPICTURE_REPRESENTATION_ITEM_SELECT``
    case _STYLED_ITEM(eSTYLED_ITEM)	// (ENTITY)

    //MARK: - CONSTRUCTORS
    public init(fundamental: FundamentalType) { self = fundamental }

    public init?<T: SDAIUnderlyingType>(possiblyFrom underlyingType: T?){
      return nil
    }

    public init?(possiblyFrom complex: SDAI.ComplexEntity?) {
      guard let complex = complex else { return nil }

      if let base = complex.entityReference(eAXIS2_PLACEMENT_2D.self) {self = ._AXIS2_PLACEMENT_2D(base) }
      else if let base = complex.entityReference(ePLANAR_BOX.self) {self = ._PLANAR_BOX(base) }
      else if let base = complex.entityReference(eSTYLED_ITEM.self) {self = ._STYLED_ITEM(base) }
      else { return nil }
    }

    public init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let select = generic else { return nil }

      if let fundamental = select as? Self {
        self.init(fundamental: fundamental)
      }
      else if let base = eAXIS2_PLACEMENT_2D.convert(fromGeneric: select) {
        self = ._AXIS2_PLACEMENT_2D(base)
      }
      else if let base = ePLANAR_BOX.convert(fromGeneric: select) {
        self = ._PLANAR_BOX(base)
      }
      else if let base = eSTYLED_ITEM.convert(fromGeneric: select) {
        self = ._STYLED_ITEM(base)
      }
      else { return nil }
    }

    // InitializableByP21Parameter
    public static var bareTypeName: String = "PICTURE_REPRESENTATION_ITEM_SELECT"

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
    public var super_ePLANAR_EXTENT: ePLANAR_EXTENT? {
      switch self {
      case ._PLANAR_BOX(let entity): return entity.super_ePLANAR_EXTENT
      default: return nil
      }
    }

    public var super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM? {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let entity): return entity.super_eREPRESENTATION_ITEM
      case ._PLANAR_BOX(let entity): return entity.super_eREPRESENTATION_ITEM
      case ._STYLED_ITEM(let entity): return entity.super_eREPRESENTATION_ITEM
      }
    }

    public var super_ePLACEMENT: ePLACEMENT? {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let entity): return entity.super_ePLACEMENT
      default: return nil
      }
    }

    public var super_ePLANAR_BOX: ePLANAR_BOX? {
      switch self {
      case ._PLANAR_BOX(let entity): return entity
      default: return nil
      }
    }

    public var super_eAXIS2_PLACEMENT_2D: eAXIS2_PLACEMENT_2D? {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let entity): return entity
      default: return nil
      }
    }

    public var super_eSTYLED_ITEM: eSTYLED_ITEM? {
      switch self {
      case ._STYLED_ITEM(let entity): return entity
      default: return nil
      }
    }

    public var super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM? {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let entity): return entity.super_eGEOMETRIC_REPRESENTATION_ITEM
      case ._PLANAR_BOX(let entity): return entity.super_eGEOMETRIC_REPRESENTATION_ITEM
      default: return nil
      }
    }


    //MARK: - ENTITY ATTRIBUTE REFERENCES
    /// attribute of SELECT type ``sPICTURE_REPRESENTATION_ITEM_SELECT``
    /// - origin: ENTITY( ``eSTYLED_ITEM`` )
    public var STYLE_CONTEXT: (SDAI.LIST<sSTYLE_CONTEXT_SELECT>/*[1:nil]*/ )?  {
      switch self {
      case ._STYLED_ITEM(let entity): return entity.STYLE_CONTEXT
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPICTURE_REPRESENTATION_ITEM_SELECT``
    /// - origin: ENTITY( ``eSTYLED_ITEM`` )
    public var ELEMENTS: (SDAI.SET<sANNOTATION_PLANE_ELEMENT>/*[1:nil]*/ )?  {
      switch self {
      case ._STYLED_ITEM(let entity): return entity.ELEMENTS
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPICTURE_REPRESENTATION_ITEM_SELECT``
    /// - origin: ENTITY( ``eSTYLED_ITEM`` )
    public var CONTAINER: (SDAI.SET<ePRESENTATION_VIEW>/*[1:nil]*/ )?  {
      switch self {
      case ._STYLED_ITEM(let entity): return entity.CONTAINER
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPICTURE_REPRESENTATION_ITEM_SELECT``
    /// - origin: ENTITY( ``eSTYLED_ITEM`` )
    public var OVER_RIDDEN_STYLE: eSTYLED_ITEM?  {
      switch self {
      case ._STYLED_ITEM(let entity): return entity.OVER_RIDDEN_STYLE
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPICTURE_REPRESENTATION_ITEM_SELECT``
    /// - origin: ENTITY( ``eSTYLED_ITEM`` )
    public var ITEM: sSTYLED_ITEM_TARGET?  {
      switch self {
      case ._STYLED_ITEM(let entity): return entity.ITEM
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPICTURE_REPRESENTATION_ITEM_SELECT``
    /// - origin: ENTITY( ``eAXIS2_PLACEMENT_2D`` )
    public var P: (SDAI.LIST<eDIRECTION>/*[2:2]*/ )?  {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let entity): return entity.P
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPICTURE_REPRESENTATION_ITEM_SELECT``
    /// - origin: ENTITY( ``eSTYLED_ITEM`` )
    public var COLOUR_TYPE: nCOLOUR_TYPE_ENUM?  {
      switch self {
      case ._STYLED_ITEM(let entity): return entity.COLOUR_TYPE
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPICTURE_REPRESENTATION_ITEM_SELECT``
    /// - origin: ENTITY( ``ePLANAR_BOX`` )
    public var SIZE_IN_X: tLENGTH_MEASURE?  {
      switch self {
      case ._PLANAR_BOX(let entity): return entity.SIZE_IN_X
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPICTURE_REPRESENTATION_ITEM_SELECT``
    /// - origin: ENTITY( ``ePLANAR_BOX`` )
    public var SIZE_IN_Y: tLENGTH_MEASURE?  {
      switch self {
      case ._PLANAR_BOX(let entity): return entity.SIZE_IN_Y
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPICTURE_REPRESENTATION_ITEM_SELECT``
    /// - origin: ENTITY( ``eSTYLED_ITEM`` )
    public var ANNOTATED_CURVE: eANNOTATION_CURVE_OCCURRENCE?  {
      switch self {
      case ._STYLED_ITEM(let entity): return entity.ANNOTATED_CURVE
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPICTURE_REPRESENTATION_ITEM_SELECT``
    /// - origin: ENTITY( ``eSTYLED_ITEM`` )
    public var THE_CALLOUT: eDRAUGHTING_CALLOUT?  {
      switch self {
      case ._STYLED_ITEM(let entity): return entity.THE_CALLOUT
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPICTURE_REPRESENTATION_ITEM_SELECT``
    /// - origin: ENTITY( ``eSTYLED_ITEM`` )
    public var LINE_SPACING: tPOSITIVE_LENGTH_MEASURE?  {
      switch self {
      case ._STYLED_ITEM(let entity): return entity.LINE_SPACING
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPICTURE_REPRESENTATION_ITEM_SELECT``
    /// - origin: ENTITY( ``eSTYLED_ITEM`` )
    public var FILL_STYLE_TARGET: ePOINT?  {
      switch self {
      case ._STYLED_ITEM(let entity): return entity.FILL_STYLE_TARGET
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPICTURE_REPRESENTATION_ITEM_SELECT``
    /// - origin: ENTITY( ``eSTYLED_ITEM`` )
    public var COLOURED_COORDINATE_VALUES: eCOORDINATES_LIST?  {
      switch self {
      case ._STYLED_ITEM(let entity): return entity.COLOURED_COORDINATE_VALUES
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPICTURE_REPRESENTATION_ITEM_SELECT``
    /// - origin: ENTITY( ``ePLANAR_BOX`` )
    public var PLACEMENT: sAXIS2_PLACEMENT?  {
      switch self {
      case ._PLANAR_BOX(let entity): return entity.PLACEMENT
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPICTURE_REPRESENTATION_ITEM_SELECT``
    /// - origin: ENTITY( ``eSTYLED_ITEM`` )
    public var THE_DRAUGHTING_MODEL_ITEM_ASSOCIATION_WITH_PLACEHOLDERS: (SDAI.SET<
      eDRAUGHTING_MODEL_ITEM_ASSOCIATION_WITH_PLACEHOLDER>/*[0:1]*/ )?  {
      switch self {
      case ._STYLED_ITEM(let entity): return entity.THE_DRAUGHTING_MODEL_ITEM_ASSOCIATION_WITH_PLACEHOLDERS
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPICTURE_REPRESENTATION_ITEM_SELECT``
    /// - origin: ENTITY( ``eSTYLED_ITEM`` )
    public var STYLES: (SDAI.SET<ePRESENTATION_STYLE_ASSIGNMENT>/*[0:nil]*/ )?  {
      switch self {
      case ._STYLED_ITEM(let entity): return entity.STYLES
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPICTURE_REPRESENTATION_ITEM_SELECT``
    /// - origin: ENTITY( ``eSTYLED_ITEM`` )
    public var COLOUR_VALUES: (SDAI.LIST<SDAI.LIST<tUNSIGNED_8_BIT_INTEGER>/*[3:4]*/ >/*[1:nil]*/ )?  {
      switch self {
      case ._STYLED_ITEM(let entity): return entity.COLOUR_VALUES
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPICTURE_REPRESENTATION_ITEM_SELECT``
    /// - origin: ENTITY( ``eAXIS2_PLACEMENT_2D`` )
    public var REF_DIRECTION: eDIRECTION?  {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let entity): return entity.REF_DIRECTION
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPICTURE_REPRESENTATION_ITEM_SELECT``
    /// - origin: ENTITY( ``eAXIS2_PLACEMENT_2D`` )
    public var LOCATION: eCARTESIAN_POINT?  {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let entity): return entity.LOCATION
      default: return nil
      }
    }

    /// attribute of SELECT type ``sPICTURE_REPRESENTATION_ITEM_SELECT``
    /// - origin: ENTITY( ``eAXIS2_PLACEMENT_2D`` )
    /// - origin: ENTITY( ``ePLANAR_BOX`` )
    /// - origin: ENTITY( ``eSTYLED_ITEM`` )
    public var NAME: tLABEL?  {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let entity): return entity.NAME
      case ._PLANAR_BOX(let entity): return entity.NAME
      case ._STYLED_ITEM(let entity): return entity.NAME
      }
    }

    /// attribute of SELECT type ``sPICTURE_REPRESENTATION_ITEM_SELECT``
    /// - origin: ENTITY( ``eAXIS2_PLACEMENT_2D`` )
    /// - origin: ENTITY( ``ePLANAR_BOX`` )
    public var DIM: tDIMENSION_COUNT?  {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let entity): return entity.DIM
      case ._PLANAR_BOX(let entity): return entity.DIM
      default: return nil
      }
    }


    //MARK: - SDAIValue
    public func isValueEqual<T: SDAIValue>(to rhs: T) -> Bool {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let selection): return selection.value.isValueEqual(to: rhs)
      case ._PLANAR_BOX(let selection): return selection.value.isValueEqual(to: rhs)
      case ._STYLED_ITEM(let selection): return selection.value.isValueEqual(to: rhs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?) -> Bool? {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._PLANAR_BOX(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._STYLED_ITEM(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      }
    }

    public func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._PLANAR_BOX(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._STYLED_ITEM(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      }
    }

    public func isValueEqual<T: SDAIValue>(to rhs: T, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._PLANAR_BOX(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._STYLED_ITEM(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._PLANAR_BOX(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._STYLED_ITEM(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      }
    }


    //MARK: SDAIGenericTypeBase
    public func copy() -> Self {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let selection): return ._AXIS2_PLACEMENT_2D(selection.copy())
      case ._PLANAR_BOX(let selection): return ._PLANAR_BOX(selection.copy())
      case ._STYLED_ITEM(let selection): return ._STYLED_ITEM(selection.copy())
      }
    }

    //MARK: SDAIGenericType
    public var typeMembers: Set<SDAI.STRING> {
      var members: Set<SDAI.STRING> = [SDAI.STRING(Self.typeName)]
      switch self {
      case ._AXIS2_PLACEMENT_2D(let selection): members.formUnion(selection.typeMembers)
      case ._PLANAR_BOX(let selection): members.formUnion(selection.typeMembers)
      case ._STYLED_ITEM(let selection): members.formUnion(selection.typeMembers)
      }
      return members
    }

    public var entityReference: SDAI.EntityReference? {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let selection): return selection.entityReference
      case ._PLANAR_BOX(let selection): return selection.entityReference
      case ._STYLED_ITEM(let selection): return selection.entityReference
      }
    }
    public var stringValue: SDAI.STRING? {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let selection): return selection.stringValue
      case ._PLANAR_BOX(let selection): return selection.stringValue
      case ._STYLED_ITEM(let selection): return selection.stringValue
      }
    }
    public var binaryValue: SDAI.BINARY? {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let selection): return selection.binaryValue
      case ._PLANAR_BOX(let selection): return selection.binaryValue
      case ._STYLED_ITEM(let selection): return selection.binaryValue
      }
    }
    public var logicalValue: SDAI.LOGICAL? {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let selection): return selection.logicalValue
      case ._PLANAR_BOX(let selection): return selection.logicalValue
      case ._STYLED_ITEM(let selection): return selection.logicalValue
      }
    }
    public var booleanValue: SDAI.BOOLEAN? {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let selection): return selection.booleanValue
      case ._PLANAR_BOX(let selection): return selection.booleanValue
      case ._STYLED_ITEM(let selection): return selection.booleanValue
      }
    }
    public var numberValue: SDAI.NUMBER? {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let selection): return selection.numberValue
      case ._PLANAR_BOX(let selection): return selection.numberValue
      case ._STYLED_ITEM(let selection): return selection.numberValue
      }
    }
    public var realValue: SDAI.REAL? {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let selection): return selection.realValue
      case ._PLANAR_BOX(let selection): return selection.realValue
      case ._STYLED_ITEM(let selection): return selection.realValue
      }
    }
    public var integerValue: SDAI.INTEGER? {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let selection): return selection.integerValue
      case ._PLANAR_BOX(let selection): return selection.integerValue
      case ._STYLED_ITEM(let selection): return selection.integerValue
      }
    }
    public var genericEnumValue: SDAI.GenericEnumValue? {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let selection): return selection.genericEnumValue
      case ._PLANAR_BOX(let selection): return selection.genericEnumValue
      case ._STYLED_ITEM(let selection): return selection.genericEnumValue
      }
    }
    public func arrayOptionalValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY_OPTIONAL<ELEM>? {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._PLANAR_BOX(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._STYLED_ITEM(let selection): return selection.arrayOptionalValue(elementType:elementType)
      }
    }
    public func arrayValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY<ELEM>? {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let selection): return selection.arrayValue(elementType:elementType)
      case ._PLANAR_BOX(let selection): return selection.arrayValue(elementType:elementType)
      case ._STYLED_ITEM(let selection): return selection.arrayValue(elementType:elementType)
      }
    }
    public func listValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.LIST<ELEM>? {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let selection): return selection.listValue(elementType:elementType)
      case ._PLANAR_BOX(let selection): return selection.listValue(elementType:elementType)
      case ._STYLED_ITEM(let selection): return selection.listValue(elementType:elementType)
      }
    }
    public func bagValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.BAG<ELEM>? {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let selection): return selection.bagValue(elementType:elementType)
      case ._PLANAR_BOX(let selection): return selection.bagValue(elementType:elementType)
      case ._STYLED_ITEM(let selection): return selection.bagValue(elementType:elementType)
      }
    }
    public func setValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.SET<ELEM>? {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let selection): return selection.setValue(elementType:elementType)
      case ._PLANAR_BOX(let selection): return selection.setValue(elementType:elementType)
      case ._STYLED_ITEM(let selection): return selection.setValue(elementType:elementType)
      }
    }
    public func enumValue<ENUM:SDAIEnumerationType>(enumType:ENUM.Type) -> ENUM? {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let selection): return selection.enumValue(enumType:enumType)
      case ._PLANAR_BOX(let selection): return selection.enumValue(enumType:enumType)
      case ._STYLED_ITEM(let selection): return selection.enumValue(enumType:enumType)
      }
    }

    //MARK: SDAIUnderlyingType
    public typealias FundamentalType = Self
    public static var typeName: String = 
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PICTURE_REPRESENTATION_ITEM_SELECT"
    public var asFundamentalType: FundamentalType { return self }

    //MARK: SDAIObservableAggregateElement
    public var entityReferences: AnySequence<SDAI.EntityReference> {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let entity): return entity.entityReferences
      case ._PLANAR_BOX(let entity): return entity.entityReferences
      case ._STYLED_ITEM(let entity): return entity.entityReferences
      }
    }

    public mutating func configure(with observer: SDAI.EntityReferenceObserver) {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let entity): 
        entity.configure(with: observer)
        self = ._AXIS2_PLACEMENT_2D(entity)
      case ._PLANAR_BOX(let entity): 
        entity.configure(with: observer)
        self = ._PLANAR_BOX(entity)
      case ._STYLED_ITEM(let entity): 
        entity.configure(with: observer)
        self = ._STYLED_ITEM(entity)
      }
    }

    public mutating func teardownObserver() {
      switch self {
      case ._AXIS2_PLACEMENT_2D(let entity): 
        entity.teardownObserver()
        self = ._AXIS2_PLACEMENT_2D(entity)
      case ._PLANAR_BOX(let entity): 
        entity.teardownObserver()
        self = ._PLANAR_BOX(entity)
      case ._STYLED_ITEM(let entity): 
        entity.teardownObserver()
        self = ._STYLED_ITEM(entity)
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
      case ._AXIS2_PLACEMENT_2D(let selectValue): 
        result = eAXIS2_PLACEMENT_2D.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\AXIS2_PLACEMENT_2D")
      case ._PLANAR_BOX(let selectValue): result = ePLANAR_BOX.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\PLANAR_BOX")
      case ._STYLED_ITEM(let selectValue): result = eSTYLED_ITEM.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\STYLED_ITEM")
      case nil: break
      }

      return result
    }

  }

}


//MARK: - SELECT TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sPICTURE_REPRESENTATION_ITEM_SELECT__type: 
  SDAISelectType {

  //MARK: GROUP REFERENCES
  var super_ePLANAR_EXTENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePLANAR_EXTENT? { get }
  var super_eREPRESENTATION_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION_ITEM? { get }
  var super_ePLACEMENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePLACEMENT? { get }
  var super_ePLANAR_BOX: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePLANAR_BOX? { get }
  var super_eAXIS2_PLACEMENT_2D: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eAXIS2_PLACEMENT_2D? { get }
  var super_eSTYLED_ITEM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSTYLED_ITEM? { get }
  var super_eGEOMETRIC_REPRESENTATION_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eGEOMETRIC_REPRESENTATION_ITEM? { get }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var STYLE_CONTEXT: (SDAI.LIST<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sSTYLE_CONTEXT_SELECT>/*[1:
    nil]*/ )?  { get }
  var ELEMENTS: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sANNOTATION_PLANE_ELEMENT>/*[1:nil]*/ )?  { get }
  var CONTAINER: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRESENTATION_VIEW>/*[1:nil]*/ )?  { get }
  var OVER_RIDDEN_STYLE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSTYLED_ITEM?  { get }
  var ITEM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sSTYLED_ITEM_TARGET?  { get }
  var P: (SDAI.LIST<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDIRECTION>/*[2:2]*/ )?  { get }
  var COLOUR_TYPE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.nCOLOUR_TYPE_ENUM?  { get }
  var SIZE_IN_X: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLENGTH_MEASURE?  { get }
  var SIZE_IN_Y: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLENGTH_MEASURE?  { get }
  var ANNOTATED_CURVE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eANNOTATION_CURVE_OCCURRENCE?  { get }
  var THE_CALLOUT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDRAUGHTING_CALLOUT?  { get }
  var LINE_SPACING: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tPOSITIVE_LENGTH_MEASURE?  { get }
  var FILL_STYLE_TARGET: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePOINT?  { get }
  var COLOURED_COORDINATE_VALUES: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCOORDINATES_LIST?  { get }
  var PLACEMENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sAXIS2_PLACEMENT?  { get }
  var THE_DRAUGHTING_MODEL_ITEM_ASSOCIATION_WITH_PLACEHOLDERS: (SDAI.SET<
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDRAUGHTING_MODEL_ITEM_ASSOCIATION_WITH_PLACEHOLDER>/*[0:
    1]*/ )?  { get }
  var STYLES: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRESENTATION_STYLE_ASSIGNMENT>/*[0:
    nil]*/ )?  { get }
  var COLOUR_VALUES: (SDAI.LIST<SDAI.LIST<
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tUNSIGNED_8_BIT_INTEGER>/*[3:4]*/ >/*[1:nil]*/ )?  { get }
  var REF_DIRECTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDIRECTION?  { get }
  var LOCATION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCARTESIAN_POINT?  { get }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { get }
  var DIM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tDIMENSION_COUNT?  { get }
}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sPICTURE_REPRESENTATION_ITEM_SELECT__subtype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sPICTURE_REPRESENTATION_ITEM_SELECT__type, SDAIDefinedType
where Supertype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sPICTURE_REPRESENTATION_ITEM_SELECT__type
{}

public extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sPICTURE_REPRESENTATION_ITEM_SELECT__subtype {
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
  var super_ePLANAR_EXTENT: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePLANAR_EXTENT? { rep.super_ePLANAR_EXTENT }
  var super_eREPRESENTATION_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION_ITEM? { rep.super_eREPRESENTATION_ITEM }
  var super_ePLACEMENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePLACEMENT? { rep.super_ePLACEMENT }
  var super_ePLANAR_BOX: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePLANAR_BOX? { rep.super_ePLANAR_BOX }
  var super_eAXIS2_PLACEMENT_2D: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eAXIS2_PLACEMENT_2D? { rep.super_eAXIS2_PLACEMENT_2D }
  var super_eSTYLED_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSTYLED_ITEM? { rep.super_eSTYLED_ITEM }
  var super_eGEOMETRIC_REPRESENTATION_ITEM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eGEOMETRIC_REPRESENTATION_ITEM? { rep.super_eGEOMETRIC_REPRESENTATION_ITEM }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var STYLE_CONTEXT: (SDAI.LIST<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sSTYLE_CONTEXT_SELECT>/*[1:
    nil]*/ )?  { rep.STYLE_CONTEXT }
  var ELEMENTS: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sANNOTATION_PLANE_ELEMENT>/*[1:nil]*/ )?  { rep.ELEMENTS }
  var CONTAINER: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRESENTATION_VIEW>/*[1:nil]*/ )?  { rep.CONTAINER }
  var OVER_RIDDEN_STYLE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSTYLED_ITEM?  { rep.OVER_RIDDEN_STYLE }
  var ITEM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sSTYLED_ITEM_TARGET?  { rep.ITEM }
  var P: (SDAI.LIST<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDIRECTION>/*[2:2]*/ )?  { rep.P }
  var COLOUR_TYPE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.nCOLOUR_TYPE_ENUM?  { rep.COLOUR_TYPE }
  var SIZE_IN_X: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLENGTH_MEASURE?  { rep.SIZE_IN_X }
  var SIZE_IN_Y: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLENGTH_MEASURE?  { rep.SIZE_IN_Y }
  var ANNOTATED_CURVE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eANNOTATION_CURVE_OCCURRENCE?  { rep.ANNOTATED_CURVE }
  var THE_CALLOUT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDRAUGHTING_CALLOUT?  { rep.THE_CALLOUT }
  var LINE_SPACING: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tPOSITIVE_LENGTH_MEASURE?  { rep.LINE_SPACING }
  var FILL_STYLE_TARGET: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePOINT?  { rep.FILL_STYLE_TARGET }
  var COLOURED_COORDINATE_VALUES: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCOORDINATES_LIST?  { rep.COLOURED_COORDINATE_VALUES }
  var PLACEMENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sAXIS2_PLACEMENT?  { rep.PLACEMENT }
  var THE_DRAUGHTING_MODEL_ITEM_ASSOCIATION_WITH_PLACEHOLDERS: (SDAI.SET<
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDRAUGHTING_MODEL_ITEM_ASSOCIATION_WITH_PLACEHOLDER>/*[0:
    1]*/ )?  { rep.THE_DRAUGHTING_MODEL_ITEM_ASSOCIATION_WITH_PLACEHOLDERS }
  var STYLES: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRESENTATION_STYLE_ASSIGNMENT>/*[0:
    nil]*/ )?  { rep.STYLES }
  var COLOUR_VALUES: (SDAI.LIST<SDAI.LIST<
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tUNSIGNED_8_BIT_INTEGER>/*[3:4]*/ >/*[1:nil]*/ )?  { rep.COLOUR_VALUES }
  var REF_DIRECTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDIRECTION?  { rep.REF_DIRECTION }
  var LOCATION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCARTESIAN_POINT?  { rep.LOCATION }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { rep.NAME }
  var DIM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tDIMENSION_COUNT?  { rep.DIM }
}

