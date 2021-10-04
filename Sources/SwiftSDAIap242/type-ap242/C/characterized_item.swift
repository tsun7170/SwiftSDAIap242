/* file: characterized_item.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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
  TYPE characterized_item = SELECT
    ( dimensional_size (*ENTITY*),
     geometric_tolerance (*ENTITY*),
     item_identified_representation_usage (*ENTITY*) );
  END_TYPE; -- characterized_item (line:1414 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES FOR SELECT
/*
  dimensional_size (*ENTITY*):
  ATTR:  path: shape_aspect
  ATTR:  applies_to: shape_aspect
  ATTR:  id: identifier *** Multiple Select Case Sources ***
  ATTR:  angle_selection: angle_relator
  ATTR:  name: label *** Multiple Select Case Sources ***

  geometric_tolerance (*ENTITY*):
  ATTR:  maximum_upper_tolerance: length_measure_with_unit
  ATTR:  description: text *** Multiple Select Case Sources ***
  ATTR:  tolerance_relationship: SET [0 : ?] OF geometric_tolerance_relationship
  ATTR:  auxiliary_classification: SET [0 : ?] OF geometric_tolerance_auxiliary_classification
  ATTR:  displacement: length_measure_with_unit
  ATTR:  modifier: limit_condition
  ATTR:  datum_system: SET [1 : ?] OF datum_system_or_reference
  ATTR:  unit_size: length_or_plane_angle_measure_with_unit_select
  ATTR:  modifiers: SET [1 : ?] OF geometric_tolerance_modifier
  ATTR:  magnitude: length_measure_with_unit
  ATTR:  id: identifier *** Multiple Select Case Sources ***
  ATTR:  area_type: area_unit_type
  ATTR:  controlling_shape: product_definition_shape
  ATTR:  second_unit_size: length_or_plane_angle_measure_with_unit_select
  ATTR:  name: label *** Multiple Select Case Sources ***
  ATTR:  toleranced_shape_aspect: geometric_tolerance_target

  item_identified_representation_usage (*ENTITY*):
  ATTR:  undirected_link: LIST [1 : ?] OF chained_representation_link
  ATTR:  identified_item: item_identified_representation_usage_select
  ATTR:  description: text *** Multiple Select Case Sources ***
  ATTR:  leaf: representation
  ATTR:  requirement: characterized_object
  ATTR:  used_representation: representation
  ATTR:  root: representation
  ATTR:  nodes: LIST [2 : ?] OF UNIQUE representation
  ATTR:  annotation_placeholder: annotation_placeholder_occurrence
  ATTR:  directed_link: LIST [1 : ?] OF representation_relationship
  ATTR:  definition: item_identified_representation_usage_definition
  ATTR:  name: label *** Multiple Select Case Sources ***

*/

/** SELECT type
- EXPRESS:
```express
  TYPE characterized_item = SELECT
    ( dimensional_size (*ENTITY*),
     geometric_tolerance (*ENTITY*),
     item_identified_representation_usage (*ENTITY*) );
  END_TYPE; -- characterized_item (line:1414 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public enum sCHARACTERIZED_ITEM : SDAIValue, AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sCHARACTERIZED_ITEM__type {

    /// SELECT case ``eDIMENSIONAL_SIZE`` (ENTITY) in ``sCHARACTERIZED_ITEM``
    case _DIMENSIONAL_SIZE(eDIMENSIONAL_SIZE)	// (ENTITY)

    /// SELECT case ``eGEOMETRIC_TOLERANCE`` (ENTITY) in ``sCHARACTERIZED_ITEM``
    case _GEOMETRIC_TOLERANCE(eGEOMETRIC_TOLERANCE)	// (ENTITY)

    /// SELECT case ``eITEM_IDENTIFIED_REPRESENTATION_USAGE`` (ENTITY) in ``sCHARACTERIZED_ITEM``
    case _ITEM_IDENTIFIED_REPRESENTATION_USAGE(eITEM_IDENTIFIED_REPRESENTATION_USAGE)	// (ENTITY)

    //MARK: - CONSTRUCTORS
    public init(fundamental: FundamentalType) { self = fundamental }

    public init?<T: SDAIUnderlyingType>(possiblyFrom underlyingType: T?){
      return nil
    }

    public init?(possiblyFrom complex: SDAI.ComplexEntity?) {
      guard let complex = complex else { return nil }

      if let base = complex.entityReference(eDIMENSIONAL_SIZE.self) {self = ._DIMENSIONAL_SIZE(base) }
      else if let base = complex.entityReference(eGEOMETRIC_TOLERANCE.self) {self = ._GEOMETRIC_TOLERANCE(base) }
      else if let base = complex.entityReference(eITEM_IDENTIFIED_REPRESENTATION_USAGE.self) {self = ._ITEM_IDENTIFIED_REPRESENTATION_USAGE(base) }
      else { return nil }
    }

    public init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let select = generic else { return nil }

      if let fundamental = select as? Self {
        self.init(fundamental: fundamental)
      }
      else if let base = eDIMENSIONAL_SIZE.convert(fromGeneric: select) {
        self = ._DIMENSIONAL_SIZE(base)
      }
      else if let base = eGEOMETRIC_TOLERANCE.convert(fromGeneric: select) {
        self = ._GEOMETRIC_TOLERANCE(base)
      }
      else if let base = eITEM_IDENTIFIED_REPRESENTATION_USAGE.convert(fromGeneric: select) {
        self = ._ITEM_IDENTIFIED_REPRESENTATION_USAGE(base)
      }
      else { return nil }
    }

    // InitializableByP21Parameter
    public static var bareTypeName: String = "CHARACTERIZED_ITEM"

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
    public var super_eITEM_IDENTIFIED_REPRESENTATION_USAGE: eITEM_IDENTIFIED_REPRESENTATION_USAGE? {
      switch self {
      case ._ITEM_IDENTIFIED_REPRESENTATION_USAGE(let entity): return entity
      default: return nil
      }
    }

    public var super_eGEOMETRIC_TOLERANCE: eGEOMETRIC_TOLERANCE? {
      switch self {
      case ._GEOMETRIC_TOLERANCE(let entity): return entity
      default: return nil
      }
    }

    public var super_eDIMENSIONAL_SIZE: eDIMENSIONAL_SIZE? {
      switch self {
      case ._DIMENSIONAL_SIZE(let entity): return entity
      default: return nil
      }
    }


    //MARK: - ENTITY ATTRIBUTE REFERENCES
    /// attribute of SELECT type ``sCHARACTERIZED_ITEM``
    /// - origin: ENTITY( ``eITEM_IDENTIFIED_REPRESENTATION_USAGE`` )
    public var UNDIRECTED_LINK: (SDAI.LIST<sCHAINED_REPRESENTATION_LINK>/*[1:nil]*/ )?  {
      switch self {
      case ._ITEM_IDENTIFIED_REPRESENTATION_USAGE(let entity): return entity.UNDIRECTED_LINK
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCHARACTERIZED_ITEM``
    /// - origin: ENTITY( ``eITEM_IDENTIFIED_REPRESENTATION_USAGE`` )
    public var IDENTIFIED_ITEM: sITEM_IDENTIFIED_REPRESENTATION_USAGE_SELECT?  {
      switch self {
      case ._ITEM_IDENTIFIED_REPRESENTATION_USAGE(let entity): return entity.IDENTIFIED_ITEM
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCHARACTERIZED_ITEM``
    /// - origin: ENTITY( ``eGEOMETRIC_TOLERANCE`` )
    public var MAXIMUM_UPPER_TOLERANCE: eLENGTH_MEASURE_WITH_UNIT?  {
      switch self {
      case ._GEOMETRIC_TOLERANCE(let entity): return entity.MAXIMUM_UPPER_TOLERANCE
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCHARACTERIZED_ITEM``
    /// - origin: ENTITY( ``eGEOMETRIC_TOLERANCE`` )
    /// - origin: ENTITY( ``eITEM_IDENTIFIED_REPRESENTATION_USAGE`` )
    public var DESCRIPTION: tTEXT?  {
      switch self {
      case ._GEOMETRIC_TOLERANCE(let entity): return entity.DESCRIPTION
      case ._ITEM_IDENTIFIED_REPRESENTATION_USAGE(let entity): return entity.DESCRIPTION
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCHARACTERIZED_ITEM``
    /// - origin: ENTITY( ``eITEM_IDENTIFIED_REPRESENTATION_USAGE`` )
    public var LEAF: eREPRESENTATION?  {
      switch self {
      case ._ITEM_IDENTIFIED_REPRESENTATION_USAGE(let entity): return entity.LEAF
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCHARACTERIZED_ITEM``
    /// - origin: ENTITY( ``eITEM_IDENTIFIED_REPRESENTATION_USAGE`` )
    public var REQUIREMENT: eCHARACTERIZED_OBJECT?  {
      switch self {
      case ._ITEM_IDENTIFIED_REPRESENTATION_USAGE(let entity): return entity.REQUIREMENT
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCHARACTERIZED_ITEM``
    /// - origin: ENTITY( ``eGEOMETRIC_TOLERANCE`` )
    public var TOLERANCE_RELATIONSHIP: (SDAI.SET<eGEOMETRIC_TOLERANCE_RELATIONSHIP>/*[0:nil]*/ )?  {
      switch self {
      case ._GEOMETRIC_TOLERANCE(let entity): return entity.TOLERANCE_RELATIONSHIP
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCHARACTERIZED_ITEM``
    /// - origin: ENTITY( ``eGEOMETRIC_TOLERANCE`` )
    public var AUXILIARY_CLASSIFICATION: (SDAI.SET<eGEOMETRIC_TOLERANCE_AUXILIARY_CLASSIFICATION>/*[0:nil]*/ )?  {
      switch self {
      case ._GEOMETRIC_TOLERANCE(let entity): return entity.AUXILIARY_CLASSIFICATION
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCHARACTERIZED_ITEM``
    /// - origin: ENTITY( ``eDIMENSIONAL_SIZE`` )
    public var PATH: eSHAPE_ASPECT?  {
      switch self {
      case ._DIMENSIONAL_SIZE(let entity): return entity.PATH
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCHARACTERIZED_ITEM``
    /// - origin: ENTITY( ``eGEOMETRIC_TOLERANCE`` )
    public var DISPLACEMENT: eLENGTH_MEASURE_WITH_UNIT?  {
      switch self {
      case ._GEOMETRIC_TOLERANCE(let entity): return entity.DISPLACEMENT
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCHARACTERIZED_ITEM``
    /// - origin: ENTITY( ``eGEOMETRIC_TOLERANCE`` )
    public var MODIFIER: nLIMIT_CONDITION?  {
      switch self {
      case ._GEOMETRIC_TOLERANCE(let entity): return entity.MODIFIER
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCHARACTERIZED_ITEM``
    /// - origin: ENTITY( ``eGEOMETRIC_TOLERANCE`` )
    public var DATUM_SYSTEM: (SDAI.SET<sDATUM_SYSTEM_OR_REFERENCE>/*[1:nil]*/ )?  {
      switch self {
      case ._GEOMETRIC_TOLERANCE(let entity): return entity.DATUM_SYSTEM
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCHARACTERIZED_ITEM``
    /// - origin: ENTITY( ``eITEM_IDENTIFIED_REPRESENTATION_USAGE`` )
    public var USED_REPRESENTATION: eREPRESENTATION?  {
      switch self {
      case ._ITEM_IDENTIFIED_REPRESENTATION_USAGE(let entity): return entity.USED_REPRESENTATION
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCHARACTERIZED_ITEM``
    /// - origin: ENTITY( ``eGEOMETRIC_TOLERANCE`` )
    public var UNIT_SIZE: sLENGTH_OR_PLANE_ANGLE_MEASURE_WITH_UNIT_SELECT?  {
      switch self {
      case ._GEOMETRIC_TOLERANCE(let entity): return entity.UNIT_SIZE
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCHARACTERIZED_ITEM``
    /// - origin: ENTITY( ``eGEOMETRIC_TOLERANCE`` )
    public var MODIFIERS: (SDAI.SET<nGEOMETRIC_TOLERANCE_MODIFIER>/*[1:nil]*/ )?  {
      switch self {
      case ._GEOMETRIC_TOLERANCE(let entity): return entity.MODIFIERS
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCHARACTERIZED_ITEM``
    /// - origin: ENTITY( ``eGEOMETRIC_TOLERANCE`` )
    public var MAGNITUDE: eLENGTH_MEASURE_WITH_UNIT?  {
      switch self {
      case ._GEOMETRIC_TOLERANCE(let entity): return entity.MAGNITUDE
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCHARACTERIZED_ITEM``
    /// - origin: ENTITY( ``eITEM_IDENTIFIED_REPRESENTATION_USAGE`` )
    public var ROOT: eREPRESENTATION?  {
      switch self {
      case ._ITEM_IDENTIFIED_REPRESENTATION_USAGE(let entity): return entity.ROOT
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCHARACTERIZED_ITEM``
    /// - origin: ENTITY( ``eITEM_IDENTIFIED_REPRESENTATION_USAGE`` )
    public var NODES: (SDAI.LIST_UNIQUE<eREPRESENTATION>/*[2:nil]*/ )?  {
      switch self {
      case ._ITEM_IDENTIFIED_REPRESENTATION_USAGE(let entity): return entity.NODES
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCHARACTERIZED_ITEM``
    /// - origin: ENTITY( ``eDIMENSIONAL_SIZE`` )
    public var APPLIES_TO: eSHAPE_ASPECT?  {
      switch self {
      case ._DIMENSIONAL_SIZE(let entity): return entity.APPLIES_TO
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCHARACTERIZED_ITEM``
    /// - origin: ENTITY( ``eDIMENSIONAL_SIZE`` )
    /// - origin: ENTITY( ``eGEOMETRIC_TOLERANCE`` )
    public var ID: tIDENTIFIER?  {
      switch self {
      case ._DIMENSIONAL_SIZE(let entity): return entity.ID
      case ._GEOMETRIC_TOLERANCE(let entity): return entity.ID
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCHARACTERIZED_ITEM``
    /// - origin: ENTITY( ``eITEM_IDENTIFIED_REPRESENTATION_USAGE`` )
    public var ANNOTATION_PLACEHOLDER: eANNOTATION_PLACEHOLDER_OCCURRENCE?  {
      switch self {
      case ._ITEM_IDENTIFIED_REPRESENTATION_USAGE(let entity): return entity.ANNOTATION_PLACEHOLDER
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCHARACTERIZED_ITEM``
    /// - origin: ENTITY( ``eGEOMETRIC_TOLERANCE`` )
    public var AREA_TYPE: nAREA_UNIT_TYPE?  {
      switch self {
      case ._GEOMETRIC_TOLERANCE(let entity): return entity.AREA_TYPE
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCHARACTERIZED_ITEM``
    /// - origin: ENTITY( ``eDIMENSIONAL_SIZE`` )
    public var ANGLE_SELECTION: nANGLE_RELATOR?  {
      switch self {
      case ._DIMENSIONAL_SIZE(let entity): return entity.ANGLE_SELECTION
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCHARACTERIZED_ITEM``
    /// - origin: ENTITY( ``eITEM_IDENTIFIED_REPRESENTATION_USAGE`` )
    public var DIRECTED_LINK: (SDAI.LIST<eREPRESENTATION_RELATIONSHIP>/*[1:nil]*/ )?  {
      switch self {
      case ._ITEM_IDENTIFIED_REPRESENTATION_USAGE(let entity): return entity.DIRECTED_LINK
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCHARACTERIZED_ITEM``
    /// - origin: ENTITY( ``eITEM_IDENTIFIED_REPRESENTATION_USAGE`` )
    public var DEFINITION: sITEM_IDENTIFIED_REPRESENTATION_USAGE_DEFINITION?  {
      switch self {
      case ._ITEM_IDENTIFIED_REPRESENTATION_USAGE(let entity): return entity.DEFINITION
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCHARACTERIZED_ITEM``
    /// - origin: ENTITY( ``eGEOMETRIC_TOLERANCE`` )
    public var CONTROLLING_SHAPE: ePRODUCT_DEFINITION_SHAPE?  {
      switch self {
      case ._GEOMETRIC_TOLERANCE(let entity): return entity.CONTROLLING_SHAPE
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCHARACTERIZED_ITEM``
    /// - origin: ENTITY( ``eGEOMETRIC_TOLERANCE`` )
    public var SECOND_UNIT_SIZE: sLENGTH_OR_PLANE_ANGLE_MEASURE_WITH_UNIT_SELECT?  {
      switch self {
      case ._GEOMETRIC_TOLERANCE(let entity): return entity.SECOND_UNIT_SIZE
      default: return nil
      }
    }

    /// attribute of SELECT type ``sCHARACTERIZED_ITEM``
    /// - origin: ENTITY( ``eDIMENSIONAL_SIZE`` )
    /// - origin: ENTITY( ``eGEOMETRIC_TOLERANCE`` )
    /// - origin: ENTITY( ``eITEM_IDENTIFIED_REPRESENTATION_USAGE`` )
    public var NAME: tLABEL?  {
      switch self {
      case ._DIMENSIONAL_SIZE(let entity): return entity.NAME
      case ._GEOMETRIC_TOLERANCE(let entity): return entity.NAME
      case ._ITEM_IDENTIFIED_REPRESENTATION_USAGE(let entity): return entity.NAME
      }
    }

    /// attribute of SELECT type ``sCHARACTERIZED_ITEM``
    /// - origin: ENTITY( ``eGEOMETRIC_TOLERANCE`` )
    public var TOLERANCED_SHAPE_ASPECT: sGEOMETRIC_TOLERANCE_TARGET?  {
      switch self {
      case ._GEOMETRIC_TOLERANCE(let entity): return entity.TOLERANCED_SHAPE_ASPECT
      default: return nil
      }
    }


    //MARK: - SDAIValue
    public func isValueEqual<T: SDAIValue>(to rhs: T) -> Bool {
      switch self {
      case ._DIMENSIONAL_SIZE(let selection): return selection.value.isValueEqual(to: rhs)
      case ._GEOMETRIC_TOLERANCE(let selection): return selection.value.isValueEqual(to: rhs)
      case ._ITEM_IDENTIFIED_REPRESENTATION_USAGE(let selection): return selection.value.isValueEqual(to: rhs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?) -> Bool? {
      switch self {
      case ._DIMENSIONAL_SIZE(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._GEOMETRIC_TOLERANCE(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._ITEM_IDENTIFIED_REPRESENTATION_USAGE(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      }
    }

    public func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      switch self {
      case ._DIMENSIONAL_SIZE(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._GEOMETRIC_TOLERANCE(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._ITEM_IDENTIFIED_REPRESENTATION_USAGE(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      }
    }

    public func isValueEqual<T: SDAIValue>(to rhs: T, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      switch self {
      case ._DIMENSIONAL_SIZE(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._GEOMETRIC_TOLERANCE(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._ITEM_IDENTIFIED_REPRESENTATION_USAGE(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      switch self {
      case ._DIMENSIONAL_SIZE(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._GEOMETRIC_TOLERANCE(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._ITEM_IDENTIFIED_REPRESENTATION_USAGE(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      }
    }


    //MARK: SDAIGenericTypeBase
    public func copy() -> Self {
      switch self {
      case ._DIMENSIONAL_SIZE(let selection): return ._DIMENSIONAL_SIZE(selection.copy())
      case ._GEOMETRIC_TOLERANCE(let selection): return ._GEOMETRIC_TOLERANCE(selection.copy())
      case ._ITEM_IDENTIFIED_REPRESENTATION_USAGE(let selection): return ._ITEM_IDENTIFIED_REPRESENTATION_USAGE(selection.copy())
      }
    }

    //MARK: SDAIGenericType
    public var typeMembers: Set<SDAI.STRING> {
      var members: Set<SDAI.STRING> = [SDAI.STRING(Self.typeName)]
      switch self {
      case ._DIMENSIONAL_SIZE(let selection): members.formUnion(selection.typeMembers)
      case ._GEOMETRIC_TOLERANCE(let selection): members.formUnion(selection.typeMembers)
      case ._ITEM_IDENTIFIED_REPRESENTATION_USAGE(let selection): members.formUnion(selection.typeMembers)
      }
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sCHARACTERIZED_DEFINITION.typeName)) // -> Self
      return members
    }

    public var entityReference: SDAI.EntityReference? {
      switch self {
      case ._DIMENSIONAL_SIZE(let selection): return selection.entityReference
      case ._GEOMETRIC_TOLERANCE(let selection): return selection.entityReference
      case ._ITEM_IDENTIFIED_REPRESENTATION_USAGE(let selection): return selection.entityReference
      }
    }
    public var stringValue: SDAI.STRING? {
      switch self {
      case ._DIMENSIONAL_SIZE(let selection): return selection.stringValue
      case ._GEOMETRIC_TOLERANCE(let selection): return selection.stringValue
      case ._ITEM_IDENTIFIED_REPRESENTATION_USAGE(let selection): return selection.stringValue
      }
    }
    public var binaryValue: SDAI.BINARY? {
      switch self {
      case ._DIMENSIONAL_SIZE(let selection): return selection.binaryValue
      case ._GEOMETRIC_TOLERANCE(let selection): return selection.binaryValue
      case ._ITEM_IDENTIFIED_REPRESENTATION_USAGE(let selection): return selection.binaryValue
      }
    }
    public var logicalValue: SDAI.LOGICAL? {
      switch self {
      case ._DIMENSIONAL_SIZE(let selection): return selection.logicalValue
      case ._GEOMETRIC_TOLERANCE(let selection): return selection.logicalValue
      case ._ITEM_IDENTIFIED_REPRESENTATION_USAGE(let selection): return selection.logicalValue
      }
    }
    public var booleanValue: SDAI.BOOLEAN? {
      switch self {
      case ._DIMENSIONAL_SIZE(let selection): return selection.booleanValue
      case ._GEOMETRIC_TOLERANCE(let selection): return selection.booleanValue
      case ._ITEM_IDENTIFIED_REPRESENTATION_USAGE(let selection): return selection.booleanValue
      }
    }
    public var numberValue: SDAI.NUMBER? {
      switch self {
      case ._DIMENSIONAL_SIZE(let selection): return selection.numberValue
      case ._GEOMETRIC_TOLERANCE(let selection): return selection.numberValue
      case ._ITEM_IDENTIFIED_REPRESENTATION_USAGE(let selection): return selection.numberValue
      }
    }
    public var realValue: SDAI.REAL? {
      switch self {
      case ._DIMENSIONAL_SIZE(let selection): return selection.realValue
      case ._GEOMETRIC_TOLERANCE(let selection): return selection.realValue
      case ._ITEM_IDENTIFIED_REPRESENTATION_USAGE(let selection): return selection.realValue
      }
    }
    public var integerValue: SDAI.INTEGER? {
      switch self {
      case ._DIMENSIONAL_SIZE(let selection): return selection.integerValue
      case ._GEOMETRIC_TOLERANCE(let selection): return selection.integerValue
      case ._ITEM_IDENTIFIED_REPRESENTATION_USAGE(let selection): return selection.integerValue
      }
    }
    public var genericEnumValue: SDAI.GenericEnumValue? {
      switch self {
      case ._DIMENSIONAL_SIZE(let selection): return selection.genericEnumValue
      case ._GEOMETRIC_TOLERANCE(let selection): return selection.genericEnumValue
      case ._ITEM_IDENTIFIED_REPRESENTATION_USAGE(let selection): return selection.genericEnumValue
      }
    }
    public func arrayOptionalValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY_OPTIONAL<ELEM>? {
      switch self {
      case ._DIMENSIONAL_SIZE(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._GEOMETRIC_TOLERANCE(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._ITEM_IDENTIFIED_REPRESENTATION_USAGE(let selection): return selection.arrayOptionalValue(elementType:elementType)
      }
    }
    public func arrayValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY<ELEM>? {
      switch self {
      case ._DIMENSIONAL_SIZE(let selection): return selection.arrayValue(elementType:elementType)
      case ._GEOMETRIC_TOLERANCE(let selection): return selection.arrayValue(elementType:elementType)
      case ._ITEM_IDENTIFIED_REPRESENTATION_USAGE(let selection): return selection.arrayValue(elementType:elementType)
      }
    }
    public func listValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.LIST<ELEM>? {
      switch self {
      case ._DIMENSIONAL_SIZE(let selection): return selection.listValue(elementType:elementType)
      case ._GEOMETRIC_TOLERANCE(let selection): return selection.listValue(elementType:elementType)
      case ._ITEM_IDENTIFIED_REPRESENTATION_USAGE(let selection): return selection.listValue(elementType:elementType)
      }
    }
    public func bagValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.BAG<ELEM>? {
      switch self {
      case ._DIMENSIONAL_SIZE(let selection): return selection.bagValue(elementType:elementType)
      case ._GEOMETRIC_TOLERANCE(let selection): return selection.bagValue(elementType:elementType)
      case ._ITEM_IDENTIFIED_REPRESENTATION_USAGE(let selection): return selection.bagValue(elementType:elementType)
      }
    }
    public func setValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.SET<ELEM>? {
      switch self {
      case ._DIMENSIONAL_SIZE(let selection): return selection.setValue(elementType:elementType)
      case ._GEOMETRIC_TOLERANCE(let selection): return selection.setValue(elementType:elementType)
      case ._ITEM_IDENTIFIED_REPRESENTATION_USAGE(let selection): return selection.setValue(elementType:elementType)
      }
    }
    public func enumValue<ENUM:SDAIEnumerationType>(enumType:ENUM.Type) -> ENUM? {
      switch self {
      case ._DIMENSIONAL_SIZE(let selection): return selection.enumValue(enumType:enumType)
      case ._GEOMETRIC_TOLERANCE(let selection): return selection.enumValue(enumType:enumType)
      case ._ITEM_IDENTIFIED_REPRESENTATION_USAGE(let selection): return selection.enumValue(enumType:enumType)
      }
    }

    //MARK: SDAIUnderlyingType
    public typealias FundamentalType = Self
    public static var typeName: String = 
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CHARACTERIZED_ITEM"
    public var asFundamentalType: FundamentalType { return self }

    //MARK: SDAIObservableAggregateElement
    public var entityReferences: AnySequence<SDAI.EntityReference> {
      switch self {
      case ._DIMENSIONAL_SIZE(let entity): return entity.entityReferences
      case ._GEOMETRIC_TOLERANCE(let entity): return entity.entityReferences
      case ._ITEM_IDENTIFIED_REPRESENTATION_USAGE(let entity): return entity.entityReferences
      }
    }

    public mutating func configure(with observer: SDAI.EntityReferenceObserver) {
      switch self {
      case ._DIMENSIONAL_SIZE(let entity): 
        entity.configure(with: observer)
        self = ._DIMENSIONAL_SIZE(entity)
      case ._GEOMETRIC_TOLERANCE(let entity): 
        entity.configure(with: observer)
        self = ._GEOMETRIC_TOLERANCE(entity)
      case ._ITEM_IDENTIFIED_REPRESENTATION_USAGE(let entity): 
        entity.configure(with: observer)
        self = ._ITEM_IDENTIFIED_REPRESENTATION_USAGE(entity)
      }
    }

    public mutating func teardownObserver() {
      switch self {
      case ._DIMENSIONAL_SIZE(let entity): 
        entity.teardownObserver()
        self = ._DIMENSIONAL_SIZE(entity)
      case ._GEOMETRIC_TOLERANCE(let entity): 
        entity.teardownObserver()
        self = ._GEOMETRIC_TOLERANCE(entity)
      case ._ITEM_IDENTIFIED_REPRESENTATION_USAGE(let entity): 
        entity.teardownObserver()
        self = ._ITEM_IDENTIFIED_REPRESENTATION_USAGE(entity)
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
      case ._DIMENSIONAL_SIZE(let selectValue): 
        result = eDIMENSIONAL_SIZE.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\DIMENSIONAL_SIZE")
      case ._GEOMETRIC_TOLERANCE(let selectValue): 
        result = eGEOMETRIC_TOLERANCE.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\GEOMETRIC_TOLERANCE")
      case ._ITEM_IDENTIFIED_REPRESENTATION_USAGE(let selectValue): 
        result = eITEM_IDENTIFIED_REPRESENTATION_USAGE.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\ITEM_IDENTIFIED_REPRESENTATION_USAGE")
      case nil: break
      }

      return result
    }

  }

}


//MARK: - SELECT TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sCHARACTERIZED_ITEM__type: SDAISelectType {

  //MARK: GROUP REFERENCES
  var super_eITEM_IDENTIFIED_REPRESENTATION_USAGE: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eITEM_IDENTIFIED_REPRESENTATION_USAGE? { get }
  var super_eGEOMETRIC_TOLERANCE: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eGEOMETRIC_TOLERANCE? { get }
  var super_eDIMENSIONAL_SIZE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDIMENSIONAL_SIZE? { get }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var UNDIRECTED_LINK: (SDAI.LIST<
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sCHAINED_REPRESENTATION_LINK>/*[1:nil]*/ )?  { get }
  var IDENTIFIED_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sITEM_IDENTIFIED_REPRESENTATION_USAGE_SELECT?  { get }
  var MAXIMUM_UPPER_TOLERANCE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eLENGTH_MEASURE_WITH_UNIT?  { get }
  var DESCRIPTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tTEXT?  { get }
  var LEAF: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION?  { get }
  var REQUIREMENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCHARACTERIZED_OBJECT?  { get }
  var TOLERANCE_RELATIONSHIP: (SDAI.SET<
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eGEOMETRIC_TOLERANCE_RELATIONSHIP>/*[0:nil]*/ )?  { get }
  var AUXILIARY_CLASSIFICATION: (SDAI.SET<
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eGEOMETRIC_TOLERANCE_AUXILIARY_CLASSIFICATION>/*[0:nil]*/ )?  { get }
  var PATH: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSHAPE_ASPECT?  { get }
  var DISPLACEMENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eLENGTH_MEASURE_WITH_UNIT?  { get }
  var MODIFIER: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.nLIMIT_CONDITION?  { get }
  var DATUM_SYSTEM: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sDATUM_SYSTEM_OR_REFERENCE>/*[1:
    nil]*/ )?  { get }
  var USED_REPRESENTATION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION?  { get }
  var UNIT_SIZE: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sLENGTH_OR_PLANE_ANGLE_MEASURE_WITH_UNIT_SELECT?  { get }
  var MODIFIERS: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.nGEOMETRIC_TOLERANCE_MODIFIER>/*[1:
    nil]*/ )?  { get }
  var MAGNITUDE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eLENGTH_MEASURE_WITH_UNIT?  { get }
  var ROOT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION?  { get }
  var NODES: (SDAI.LIST_UNIQUE<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION>/*[2:nil]*/ )?  { get }
  var APPLIES_TO: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSHAPE_ASPECT?  { get }
  var ID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER?  { get }
  var ANNOTATION_PLACEHOLDER: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eANNOTATION_PLACEHOLDER_OCCURRENCE?  { get }
  var AREA_TYPE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.nAREA_UNIT_TYPE?  { get }
  var ANGLE_SELECTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.nANGLE_RELATOR?  { get }
  var DIRECTED_LINK: (SDAI.LIST<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION_RELATIONSHIP>
    /*[1:nil]*/ )?  { get }
  var DEFINITION: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sITEM_IDENTIFIED_REPRESENTATION_USAGE_DEFINITION?  { get }
  var CONTROLLING_SHAPE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRODUCT_DEFINITION_SHAPE?  { get }
  var SECOND_UNIT_SIZE: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sLENGTH_OR_PLANE_ANGLE_MEASURE_WITH_UNIT_SELECT?  { get }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { get }
  var TOLERANCED_SHAPE_ASPECT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sGEOMETRIC_TOLERANCE_TARGET?  { get }
}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sCHARACTERIZED_ITEM__subtype: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sCHARACTERIZED_ITEM__type, SDAIDefinedType
where Supertype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sCHARACTERIZED_ITEM__type
{}

public extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sCHARACTERIZED_ITEM__subtype {
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
  var super_eITEM_IDENTIFIED_REPRESENTATION_USAGE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eITEM_IDENTIFIED_REPRESENTATION_USAGE? { rep.super_eITEM_IDENTIFIED_REPRESENTATION_USAGE }
  var super_eGEOMETRIC_TOLERANCE: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eGEOMETRIC_TOLERANCE? { rep.super_eGEOMETRIC_TOLERANCE }
  var super_eDIMENSIONAL_SIZE: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDIMENSIONAL_SIZE? { rep.super_eDIMENSIONAL_SIZE }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var UNDIRECTED_LINK: (SDAI.LIST<
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sCHAINED_REPRESENTATION_LINK>/*[1:nil]*/ )?  { rep.UNDIRECTED_LINK }
  var IDENTIFIED_ITEM: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sITEM_IDENTIFIED_REPRESENTATION_USAGE_SELECT?  { rep.IDENTIFIED_ITEM }
  var MAXIMUM_UPPER_TOLERANCE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eLENGTH_MEASURE_WITH_UNIT?  { rep.MAXIMUM_UPPER_TOLERANCE }
  var DESCRIPTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tTEXT?  { rep.DESCRIPTION }
  var LEAF: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION?  { rep.LEAF }
  var REQUIREMENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCHARACTERIZED_OBJECT?  { rep.REQUIREMENT }
  var TOLERANCE_RELATIONSHIP: (SDAI.SET<
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eGEOMETRIC_TOLERANCE_RELATIONSHIP>/*[0:nil]*/ )?  { rep.TOLERANCE_RELATIONSHIP }
  var AUXILIARY_CLASSIFICATION: (SDAI.SET<
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eGEOMETRIC_TOLERANCE_AUXILIARY_CLASSIFICATION>/*[0:nil]*/ )?  { rep.AUXILIARY_CLASSIFICATION }
  var PATH: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSHAPE_ASPECT?  { rep.PATH }
  var DISPLACEMENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eLENGTH_MEASURE_WITH_UNIT?  { rep.DISPLACEMENT }
  var MODIFIER: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.nLIMIT_CONDITION?  { rep.MODIFIER }
  var DATUM_SYSTEM: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sDATUM_SYSTEM_OR_REFERENCE>/*[1:
    nil]*/ )?  { rep.DATUM_SYSTEM }
  var USED_REPRESENTATION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION?  { rep.USED_REPRESENTATION }
  var UNIT_SIZE: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sLENGTH_OR_PLANE_ANGLE_MEASURE_WITH_UNIT_SELECT?  { rep.UNIT_SIZE }
  var MODIFIERS: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.nGEOMETRIC_TOLERANCE_MODIFIER>/*[1:
    nil]*/ )?  { rep.MODIFIERS }
  var MAGNITUDE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eLENGTH_MEASURE_WITH_UNIT?  { rep.MAGNITUDE }
  var ROOT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION?  { rep.ROOT }
  var NODES: (SDAI.LIST_UNIQUE<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION>/*[2:nil]*/ )?  { rep.NODES }
  var APPLIES_TO: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSHAPE_ASPECT?  { rep.APPLIES_TO }
  var ID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER?  { rep.ID }
  var ANNOTATION_PLACEHOLDER: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eANNOTATION_PLACEHOLDER_OCCURRENCE?  { rep.ANNOTATION_PLACEHOLDER }
  var AREA_TYPE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.nAREA_UNIT_TYPE?  { rep.AREA_TYPE }
  var ANGLE_SELECTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.nANGLE_RELATOR?  { rep.ANGLE_SELECTION }
  var DIRECTED_LINK: (SDAI.LIST<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION_RELATIONSHIP>
    /*[1:nil]*/ )?  { rep.DIRECTED_LINK }
  var DEFINITION: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sITEM_IDENTIFIED_REPRESENTATION_USAGE_DEFINITION?  { rep.DEFINITION }
  var CONTROLLING_SHAPE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRODUCT_DEFINITION_SHAPE?  { rep.CONTROLLING_SHAPE }
  var SECOND_UNIT_SIZE: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sLENGTH_OR_PLANE_ANGLE_MEASURE_WITH_UNIT_SELECT?  { rep.SECOND_UNIT_SIZE }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { rep.NAME }
  var TOLERANCED_SHAPE_ASPECT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sGEOMETRIC_TOLERANCE_TARGET?  { rep.TOLERANCED_SHAPE_ASPECT }
}
