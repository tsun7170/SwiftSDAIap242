/* file: internal_or_reflected_shape_aspect.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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
  TYPE internal_or_reflected_shape_aspect = SELECT
    ( identifier (*TYPE*),
     shape_aspect (*ENTITY*) );
  END_TYPE; -- internal_or_reflected_shape_aspect (line:3843 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES FOR SELECT
/*
  identifier (*TYPE*): identifier

  shape_aspect (*ENTITY*):
  ATTR:  deriving_relationships: SET [1 : ?] OF shape_aspect_deriving_relationship
  ATTR:  product_definitional: LOGICAL
  ATTR:  owner: (AMBIGUOUS (CASE LEVEL))
  ATTR:  description: text
  ATTR:  form: tolerance_zone_form
  ATTR:  target_id: identifier
  ATTR:  component_shape_aspect: internal_or_reflected_shape_aspect
  ATTR:  parent: shape_aspect
  ATTR:  orientation: oriented_tolerance_zone_type
  ATTR:  items: (AMBIGUOUS (CASE LEVEL))
  ATTR:  of_shape: product_definition_shape
  ATTR:  datum_reference: datum_system
  ATTR:  identification: identifier
  ATTR:  established_by_relationships: SET [1 : ?] OF shape_aspect_relationship
  ATTR:  constituents: LIST [1 : 3] OF UNIQUE datum_reference_compartment
  ATTR:  representation_associations: SET [0 : ?] OF property_definition_representation
  ATTR:  angle: plane_angle_measure_with_unit
  ATTR:  modified_components: (AMBIGUOUS (CASE LEVEL))
  ATTR:  modifiers: SET [1 : ?] OF datum_reference_modifier
  ATTR:  component_relationships: SET [2 : ?] OF shape_aspect_relationship
  ATTR:  base: datum_or_common_datum
  ATTR:  base_common_datum_list: common_datum_list
  ATTR:  id: identifier
  ATTR:  feature_basis_relationship: SET [1 : ?] OF shape_aspect_relationship
  ATTR:  direction: directed_tolerance_zone_type
  ATTR:  related_shape_aspect: component_feature
  ATTR:  defining_tolerance: SET [1 : ?] OF tolerance_zone_target
  ATTR:  assigned_group: mated_part_relationship
  ATTR:  location: multi_or_next_assembly_usage_occurrence
  ATTR:  definition: (AMBIGUOUS (CASE LEVEL))
  ATTR:  name: label
  ATTR:  basis_relationships: SET [1 : ?] OF shape_aspect_deriving_relationship
  ATTR:  relating_shape_aspect: component_feature
  ATTR:  offset: measure_with_unit
  ATTR:  target_basis_relationship: SET [1 : ?] OF shape_aspect_relationship

*/

/** SELECT type
- EXPRESS:
```express
  TYPE internal_or_reflected_shape_aspect = SELECT
    ( identifier (*TYPE*),
     shape_aspect (*ENTITY*) );
  END_TYPE; -- internal_or_reflected_shape_aspect (line:3843 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public enum sINTERNAL_OR_REFLECTED_SHAPE_ASPECT : SDAIValue, AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sINTERNAL_OR_REFLECTED_SHAPE_ASPECT__type {

    /// SELECT case ``tIDENTIFIER`` (TYPE) in ``sINTERNAL_OR_REFLECTED_SHAPE_ASPECT``
    case _IDENTIFIER(tIDENTIFIER)	// (TYPE)

    /// SELECT case ``eSHAPE_ASPECT`` (ENTITY) in ``sINTERNAL_OR_REFLECTED_SHAPE_ASPECT``
    case _SHAPE_ASPECT(eSHAPE_ASPECT)	// (ENTITY)

    //MARK: - CONSTRUCTORS
    public init(fundamental: FundamentalType) { self = fundamental }

    public init?<T: SDAIUnderlyingType>(possiblyFrom underlyingType: T?){
      guard let underlyingType = underlyingType else { return nil }

      if let base = underlyingType as? tIDENTIFIER {
        self = ._IDENTIFIER(base)
      }
      else if let fundamental = underlyingType.asFundamentalType as? tIDENTIFIER.FundamentalType {
        self = ._IDENTIFIER( tIDENTIFIER(fundamental: fundamental) )
      }
      else { return nil }
    }

    public init?(possiblyFrom complex: SDAI.ComplexEntity?) {
      guard let complex = complex else { return nil }

      if let base = complex.entityReference(eSHAPE_ASPECT.self) {self = ._SHAPE_ASPECT(base) }
      else { return nil }
    }

    public init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let select = generic else { return nil }

      if let fundamental = select as? Self {
        self.init(fundamental: fundamental)
      }
      else if let base = tIDENTIFIER.convert(fromGeneric: select) {
        self = ._IDENTIFIER(base)
      }
      else if let base = eSHAPE_ASPECT.convert(fromGeneric: select) {
        self = ._SHAPE_ASPECT(base)
      }
      else { return nil }
    }

    // InitializableByP21Parameter
    public static var bareTypeName: String = "INTERNAL_OR_REFLECTED_SHAPE_ASPECT"

    public init?(p21typedParam: P21Decode.ExchangeStructure.TypedParameter, from exchangeStructure: P21Decode.ExchangeStructure) {
      guard let keyword = p21typedParam.keyword.asStandardKeyword else { exchangeStructure.error = "unexpected p21parameter(\(p21typedParam)) while resolving \(Self.bareTypeName) select value"; return nil }

      switch(keyword) {
      case tIDENTIFIER.bareTypeName:
        guard let base = tIDENTIFIER(p21typedParam: p21typedParam, from: exchangeStructure) else { exchangeStructure.add(errorContext: "while resolving \(Self.bareTypeName) select value"); return nil }
        self = ._IDENTIFIER(base)

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
    public var super_tIDENTIFIER: tIDENTIFIER? {
      switch self {
      case ._IDENTIFIER(let selectValue): return selectValue
      default: return nil
      }
    }

    //MARK: - ENTITY UNDERLYING TYPE REFERENCES
    public var super_eSHAPE_ASPECT: eSHAPE_ASPECT? {
      switch self {
      case ._SHAPE_ASPECT(let entity): return entity
      default: return nil
      }
    }


    //MARK: - ENTITY ATTRIBUTE REFERENCES
    /// attribute of SELECT type ``sINTERNAL_OR_REFLECTED_SHAPE_ASPECT``
    /// - origin: ENTITY( ``eSHAPE_ASPECT`` )
    public var DERIVING_RELATIONSHIPS: (SDAI.SET<eSHAPE_ASPECT_DERIVING_RELATIONSHIP>/*[1:nil]*/ )?  {
      switch self {
      case ._SHAPE_ASPECT(let entity): return entity.DERIVING_RELATIONSHIPS
      default: return nil
      }
    }

    /// attribute of SELECT type ``sINTERNAL_OR_REFLECTED_SHAPE_ASPECT``
    /// - origin: ENTITY( ``eSHAPE_ASPECT`` )
    public var PRODUCT_DEFINITIONAL: SDAI.LOGICAL {
      switch self {
      case ._SHAPE_ASPECT(let entity): return entity.PRODUCT_DEFINITIONAL
      default: return nil
      }
    }

    /// attribute of SELECT type ``sINTERNAL_OR_REFLECTED_SHAPE_ASPECT``
    /// - origin: ENTITY( ``eSHAPE_ASPECT`` )
    public var DESCRIPTION: tTEXT?  {
      switch self {
      case ._SHAPE_ASPECT(let entity): return entity.DESCRIPTION
      default: return nil
      }
    }

    /// attribute of SELECT type ``sINTERNAL_OR_REFLECTED_SHAPE_ASPECT``
    /// - origin: ENTITY( ``eSHAPE_ASPECT`` )
    public var FORM: eTOLERANCE_ZONE_FORM?  {
      switch self {
      case ._SHAPE_ASPECT(let entity): return entity.FORM
      default: return nil
      }
    }

    /// attribute of SELECT type ``sINTERNAL_OR_REFLECTED_SHAPE_ASPECT``
    /// - origin: ENTITY( ``eSHAPE_ASPECT`` )
    public var TARGET_ID: tIDENTIFIER?  {
      switch self {
      case ._SHAPE_ASPECT(let entity): return entity.TARGET_ID
      default: return nil
      }
    }

    /// attribute of SELECT type ``sINTERNAL_OR_REFLECTED_SHAPE_ASPECT``
    /// - origin: ENTITY( ``eSHAPE_ASPECT`` )
    public var COMPONENT_SHAPE_ASPECT: sINTERNAL_OR_REFLECTED_SHAPE_ASPECT?  {
      switch self {
      case ._SHAPE_ASPECT(let entity): return entity.COMPONENT_SHAPE_ASPECT
      default: return nil
      }
    }

    /// attribute of SELECT type ``sINTERNAL_OR_REFLECTED_SHAPE_ASPECT``
    /// - origin: ENTITY( ``eSHAPE_ASPECT`` )
    public var PARENT: eSHAPE_ASPECT?  {
      switch self {
      case ._SHAPE_ASPECT(let entity): return entity.PARENT
      default: return nil
      }
    }

    /// attribute of SELECT type ``sINTERNAL_OR_REFLECTED_SHAPE_ASPECT``
    /// - origin: ENTITY( ``eSHAPE_ASPECT`` )
    public var ORIENTATION: nORIENTED_TOLERANCE_ZONE_TYPE?  {
      switch self {
      case ._SHAPE_ASPECT(let entity): return entity.ORIENTATION
      default: return nil
      }
    }

    /// attribute of SELECT type ``sINTERNAL_OR_REFLECTED_SHAPE_ASPECT``
    /// - origin: ENTITY( ``eSHAPE_ASPECT`` )
    public var OF_SHAPE: ePRODUCT_DEFINITION_SHAPE?  {
      switch self {
      case ._SHAPE_ASPECT(let entity): return entity.OF_SHAPE
      default: return nil
      }
    }

    /// attribute of SELECT type ``sINTERNAL_OR_REFLECTED_SHAPE_ASPECT``
    /// - origin: ENTITY( ``eSHAPE_ASPECT`` )
    public var DATUM_REFERENCE: eDATUM_SYSTEM?  {
      switch self {
      case ._SHAPE_ASPECT(let entity): return entity.DATUM_REFERENCE
      default: return nil
      }
    }

    /// attribute of SELECT type ``sINTERNAL_OR_REFLECTED_SHAPE_ASPECT``
    /// - origin: ENTITY( ``eSHAPE_ASPECT`` )
    public var IDENTIFICATION: tIDENTIFIER?  {
      switch self {
      case ._SHAPE_ASPECT(let entity): return entity.IDENTIFICATION
      default: return nil
      }
    }

    /// attribute of SELECT type ``sINTERNAL_OR_REFLECTED_SHAPE_ASPECT``
    /// - origin: ENTITY( ``eSHAPE_ASPECT`` )
    public var ESTABLISHED_BY_RELATIONSHIPS: (SDAI.SET<eSHAPE_ASPECT_RELATIONSHIP>/*[1:nil]*/ )?  {
      switch self {
      case ._SHAPE_ASPECT(let entity): return entity.ESTABLISHED_BY_RELATIONSHIPS
      default: return nil
      }
    }

    /// attribute of SELECT type ``sINTERNAL_OR_REFLECTED_SHAPE_ASPECT``
    /// - origin: ENTITY( ``eSHAPE_ASPECT`` )
    public var CONSTITUENTS: (SDAI.LIST_UNIQUE<eDATUM_REFERENCE_COMPARTMENT>/*[1:3]*/ )?  {
      switch self {
      case ._SHAPE_ASPECT(let entity): return entity.CONSTITUENTS
      default: return nil
      }
    }

    /// attribute of SELECT type ``sINTERNAL_OR_REFLECTED_SHAPE_ASPECT``
    /// - origin: ENTITY( ``eSHAPE_ASPECT`` )
    public var REPRESENTATION_ASSOCIATIONS: (SDAI.SET<ePROPERTY_DEFINITION_REPRESENTATION>/*[0:nil]*/ )?  {
      switch self {
      case ._SHAPE_ASPECT(let entity): return entity.REPRESENTATION_ASSOCIATIONS
      default: return nil
      }
    }

    /// attribute of SELECT type ``sINTERNAL_OR_REFLECTED_SHAPE_ASPECT``
    /// - origin: ENTITY( ``eSHAPE_ASPECT`` )
    public var ANGLE: ePLANE_ANGLE_MEASURE_WITH_UNIT?  {
      switch self {
      case ._SHAPE_ASPECT(let entity): return entity.ANGLE
      default: return nil
      }
    }

    /// attribute of SELECT type ``sINTERNAL_OR_REFLECTED_SHAPE_ASPECT``
    /// - origin: ENTITY( ``eSHAPE_ASPECT`` )
    public var MODIFIERS: (SDAI.SET<sDATUM_REFERENCE_MODIFIER>/*[1:nil]*/ )?  {
      switch self {
      case ._SHAPE_ASPECT(let entity): return entity.MODIFIERS
      default: return nil
      }
    }

    /// attribute of SELECT type ``sINTERNAL_OR_REFLECTED_SHAPE_ASPECT``
    /// - origin: ENTITY( ``eSHAPE_ASPECT`` )
    public var COMPONENT_RELATIONSHIPS: (SDAI.SET<eSHAPE_ASPECT_RELATIONSHIP>/*[2:nil]*/ )?  {
      switch self {
      case ._SHAPE_ASPECT(let entity): return entity.COMPONENT_RELATIONSHIPS
      default: return nil
      }
    }

    /// attribute of SELECT type ``sINTERNAL_OR_REFLECTED_SHAPE_ASPECT``
    /// - origin: ENTITY( ``eSHAPE_ASPECT`` )
    public var BASE: sDATUM_OR_COMMON_DATUM?  {
      switch self {
      case ._SHAPE_ASPECT(let entity): return entity.BASE
      default: return nil
      }
    }

    /// attribute of SELECT type ``sINTERNAL_OR_REFLECTED_SHAPE_ASPECT``
    /// - origin: ENTITY( ``eSHAPE_ASPECT`` )
    public var BASE_COMMON_DATUM_LIST: tCOMMON_DATUM_LIST?  {
      switch self {
      case ._SHAPE_ASPECT(let entity): return entity.BASE_COMMON_DATUM_LIST
      default: return nil
      }
    }

    /// attribute of SELECT type ``sINTERNAL_OR_REFLECTED_SHAPE_ASPECT``
    /// - origin: ENTITY( ``eSHAPE_ASPECT`` )
    public var ID: tIDENTIFIER?  {
      switch self {
      case ._SHAPE_ASPECT(let entity): return entity.ID
      default: return nil
      }
    }

    /// attribute of SELECT type ``sINTERNAL_OR_REFLECTED_SHAPE_ASPECT``
    /// - origin: ENTITY( ``eSHAPE_ASPECT`` )
    public var FEATURE_BASIS_RELATIONSHIP: (SDAI.SET<eSHAPE_ASPECT_RELATIONSHIP>/*[1:nil]*/ )?  {
      switch self {
      case ._SHAPE_ASPECT(let entity): return entity.FEATURE_BASIS_RELATIONSHIP
      default: return nil
      }
    }

    /// attribute of SELECT type ``sINTERNAL_OR_REFLECTED_SHAPE_ASPECT``
    /// - origin: ENTITY( ``eSHAPE_ASPECT`` )
    public var DIRECTION: nDIRECTED_TOLERANCE_ZONE_TYPE?  {
      switch self {
      case ._SHAPE_ASPECT(let entity): return entity.DIRECTION
      default: return nil
      }
    }

    /// attribute of SELECT type ``sINTERNAL_OR_REFLECTED_SHAPE_ASPECT``
    /// - origin: ENTITY( ``eSHAPE_ASPECT`` )
    public var RELATED_SHAPE_ASPECT: eCOMPONENT_FEATURE?  {
      switch self {
      case ._SHAPE_ASPECT(let entity): return entity.RELATED_SHAPE_ASPECT
      default: return nil
      }
    }

    /// attribute of SELECT type ``sINTERNAL_OR_REFLECTED_SHAPE_ASPECT``
    /// - origin: ENTITY( ``eSHAPE_ASPECT`` )
    public var DEFINING_TOLERANCE: (SDAI.SET<sTOLERANCE_ZONE_TARGET>/*[1:nil]*/ )?  {
      switch self {
      case ._SHAPE_ASPECT(let entity): return entity.DEFINING_TOLERANCE
      default: return nil
      }
    }

    /// attribute of SELECT type ``sINTERNAL_OR_REFLECTED_SHAPE_ASPECT``
    /// - origin: ENTITY( ``eSHAPE_ASPECT`` )
    public var ASSIGNED_GROUP: eMATED_PART_RELATIONSHIP?  {
      switch self {
      case ._SHAPE_ASPECT(let entity): return entity.ASSIGNED_GROUP
      default: return nil
      }
    }

    /// attribute of SELECT type ``sINTERNAL_OR_REFLECTED_SHAPE_ASPECT``
    /// - origin: ENTITY( ``eSHAPE_ASPECT`` )
    public var LOCATION: sMULTI_OR_NEXT_ASSEMBLY_USAGE_OCCURRENCE?  {
      switch self {
      case ._SHAPE_ASPECT(let entity): return entity.LOCATION
      default: return nil
      }
    }

    /// attribute of SELECT type ``sINTERNAL_OR_REFLECTED_SHAPE_ASPECT``
    /// - origin: ENTITY( ``eSHAPE_ASPECT`` )
    public var NAME: tLABEL?  {
      switch self {
      case ._SHAPE_ASPECT(let entity): return entity.NAME
      default: return nil
      }
    }

    /// attribute of SELECT type ``sINTERNAL_OR_REFLECTED_SHAPE_ASPECT``
    /// - origin: ENTITY( ``eSHAPE_ASPECT`` )
    public var BASIS_RELATIONSHIPS: (SDAI.SET<eSHAPE_ASPECT_DERIVING_RELATIONSHIP>/*[1:nil]*/ )?  {
      switch self {
      case ._SHAPE_ASPECT(let entity): return entity.BASIS_RELATIONSHIPS
      default: return nil
      }
    }

    /// attribute of SELECT type ``sINTERNAL_OR_REFLECTED_SHAPE_ASPECT``
    /// - origin: ENTITY( ``eSHAPE_ASPECT`` )
    public var RELATING_SHAPE_ASPECT: eCOMPONENT_FEATURE?  {
      switch self {
      case ._SHAPE_ASPECT(let entity): return entity.RELATING_SHAPE_ASPECT
      default: return nil
      }
    }

    /// attribute of SELECT type ``sINTERNAL_OR_REFLECTED_SHAPE_ASPECT``
    /// - origin: ENTITY( ``eSHAPE_ASPECT`` )
    public var OFFSET: eMEASURE_WITH_UNIT?  {
      switch self {
      case ._SHAPE_ASPECT(let entity): return entity.OFFSET
      default: return nil
      }
    }

    /// attribute of SELECT type ``sINTERNAL_OR_REFLECTED_SHAPE_ASPECT``
    /// - origin: ENTITY( ``eSHAPE_ASPECT`` )
    public var TARGET_BASIS_RELATIONSHIP: (SDAI.SET<eSHAPE_ASPECT_RELATIONSHIP>/*[1:nil]*/ )?  {
      switch self {
      case ._SHAPE_ASPECT(let entity): return entity.TARGET_BASIS_RELATIONSHIP
      default: return nil
      }
    }


    //MARK: - SDAIValue
    public func isValueEqual<T: SDAIValue>(to rhs: T) -> Bool {
      switch self {
      case ._IDENTIFIER(let selection): return selection.value.isValueEqual(to: rhs)
      case ._SHAPE_ASPECT(let selection): return selection.value.isValueEqual(to: rhs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?) -> Bool? {
      switch self {
      case ._IDENTIFIER(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      case ._SHAPE_ASPECT(let selection): return selection.value.isValueEqualOptionally(to: rhs)
      }
    }

    public func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      switch self {
      case ._IDENTIFIER(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      case ._SHAPE_ASPECT(let selection): selection.value.hashAsValue(into: &hasher, visited: &complexEntities)
      }
    }

    public func isValueEqual<T: SDAIValue>(to rhs: T, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      switch self {
      case ._IDENTIFIER(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      case ._SHAPE_ASPECT(let selection): return selection.value.isValueEqual(to: rhs, visited: &comppairs)
      }
    }

    public func isValueEqualOptionally<T: SDAIValue>(to rhs: T?, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      switch self {
      case ._IDENTIFIER(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      case ._SHAPE_ASPECT(let selection): return selection.value.isValueEqualOptionally(to: rhs, visited: &comppairs)
      }
    }


    //MARK: SDAIGenericTypeBase
    public func copy() -> Self {
      switch self {
      case ._IDENTIFIER(let selection): return ._IDENTIFIER(selection.copy())
      case ._SHAPE_ASPECT(let selection): return ._SHAPE_ASPECT(selection.copy())
      }
    }

    //MARK: SDAIGenericType
    public var typeMembers: Set<SDAI.STRING> {
      var members: Set<SDAI.STRING> = [SDAI.STRING(Self.typeName)]
      switch self {
      case ._IDENTIFIER(let selection): members.formUnion(selection.typeMembers)
      case ._SHAPE_ASPECT(let selection): members.formUnion(selection.typeMembers)
      }
      return members
    }

    public var entityReference: SDAI.EntityReference? {
      switch self {
      case ._IDENTIFIER(let selection): return selection.entityReference
      case ._SHAPE_ASPECT(let selection): return selection.entityReference
      }
    }
    public var stringValue: SDAI.STRING? {
      switch self {
      case ._IDENTIFIER(let selection): return selection.stringValue
      case ._SHAPE_ASPECT(let selection): return selection.stringValue
      }
    }
    public var binaryValue: SDAI.BINARY? {
      switch self {
      case ._IDENTIFIER(let selection): return selection.binaryValue
      case ._SHAPE_ASPECT(let selection): return selection.binaryValue
      }
    }
    public var logicalValue: SDAI.LOGICAL? {
      switch self {
      case ._IDENTIFIER(let selection): return selection.logicalValue
      case ._SHAPE_ASPECT(let selection): return selection.logicalValue
      }
    }
    public var booleanValue: SDAI.BOOLEAN? {
      switch self {
      case ._IDENTIFIER(let selection): return selection.booleanValue
      case ._SHAPE_ASPECT(let selection): return selection.booleanValue
      }
    }
    public var numberValue: SDAI.NUMBER? {
      switch self {
      case ._IDENTIFIER(let selection): return selection.numberValue
      case ._SHAPE_ASPECT(let selection): return selection.numberValue
      }
    }
    public var realValue: SDAI.REAL? {
      switch self {
      case ._IDENTIFIER(let selection): return selection.realValue
      case ._SHAPE_ASPECT(let selection): return selection.realValue
      }
    }
    public var integerValue: SDAI.INTEGER? {
      switch self {
      case ._IDENTIFIER(let selection): return selection.integerValue
      case ._SHAPE_ASPECT(let selection): return selection.integerValue
      }
    }
    public var genericEnumValue: SDAI.GenericEnumValue? {
      switch self {
      case ._IDENTIFIER(let selection): return selection.genericEnumValue
      case ._SHAPE_ASPECT(let selection): return selection.genericEnumValue
      }
    }
    public func arrayOptionalValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY_OPTIONAL<ELEM>? {
      switch self {
      case ._IDENTIFIER(let selection): return selection.arrayOptionalValue(elementType:elementType)
      case ._SHAPE_ASPECT(let selection): return selection.arrayOptionalValue(elementType:elementType)
      }
    }
    public func arrayValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY<ELEM>? {
      switch self {
      case ._IDENTIFIER(let selection): return selection.arrayValue(elementType:elementType)
      case ._SHAPE_ASPECT(let selection): return selection.arrayValue(elementType:elementType)
      }
    }
    public func listValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.LIST<ELEM>? {
      switch self {
      case ._IDENTIFIER(let selection): return selection.listValue(elementType:elementType)
      case ._SHAPE_ASPECT(let selection): return selection.listValue(elementType:elementType)
      }
    }
    public func bagValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.BAG<ELEM>? {
      switch self {
      case ._IDENTIFIER(let selection): return selection.bagValue(elementType:elementType)
      case ._SHAPE_ASPECT(let selection): return selection.bagValue(elementType:elementType)
      }
    }
    public func setValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.SET<ELEM>? {
      switch self {
      case ._IDENTIFIER(let selection): return selection.setValue(elementType:elementType)
      case ._SHAPE_ASPECT(let selection): return selection.setValue(elementType:elementType)
      }
    }
    public func enumValue<ENUM:SDAIEnumerationType>(enumType:ENUM.Type) -> ENUM? {
      switch self {
      case ._IDENTIFIER(let selection): return selection.enumValue(enumType:enumType)
      case ._SHAPE_ASPECT(let selection): return selection.enumValue(enumType:enumType)
      }
    }

    //MARK: SDAIUnderlyingType
    public typealias FundamentalType = Self
    public static var typeName: String = 
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.INTERNAL_OR_REFLECTED_SHAPE_ASPECT"
    public var asFundamentalType: FundamentalType { return self }

    //MARK: SDAIObservableAggregateElement
    public var entityReferences: AnySequence<SDAI.EntityReference> {
      switch self {
      case ._IDENTIFIER: return AnySequence<SDAI.EntityReference>(EmptyCollection<SDAI.EntityReference>())
      case ._SHAPE_ASPECT(let entity): return entity.entityReferences
      }
    }

    public mutating func configure(with observer: SDAI.EntityReferenceObserver) {
      switch self {
      case ._IDENTIFIER: break
      case ._SHAPE_ASPECT(let entity): 
        entity.configure(with: observer)
        self = ._SHAPE_ASPECT(entity)
      }
    }

    public mutating func teardownObserver() {
      switch self {
      case ._IDENTIFIER: break
      case ._SHAPE_ASPECT(let entity): 
        entity.teardownObserver()
        self = ._SHAPE_ASPECT(entity)
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
      case ._IDENTIFIER(let selectValue): result = tIDENTIFIER.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\IDENTIFIER")
      case ._SHAPE_ASPECT(let selectValue): result = eSHAPE_ASPECT.validateWhereRules(instance:selectValue, 
        prefix:prefix + "\\SHAPE_ASPECT")
      case nil: break
      }

      return result
    }

  }

}


//MARK: - SELECT TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sINTERNAL_OR_REFLECTED_SHAPE_ASPECT__type: 
  SDAISelectType {

  //MARK: GROUP REFERENCES
  var super_tIDENTIFIER: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER? { get }
  var super_eSHAPE_ASPECT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSHAPE_ASPECT? { get }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var DERIVING_RELATIONSHIPS: (SDAI.SET<
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSHAPE_ASPECT_DERIVING_RELATIONSHIP>/*[1:nil]*/ )?  { get }
  var PRODUCT_DEFINITIONAL: SDAI.LOGICAL { get }
  var DESCRIPTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tTEXT?  { get }
  var FORM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eTOLERANCE_ZONE_FORM?  { get }
  var TARGET_ID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER?  { get }
  var COMPONENT_SHAPE_ASPECT: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sINTERNAL_OR_REFLECTED_SHAPE_ASPECT?  { get }
  var PARENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSHAPE_ASPECT?  { get }
  var ORIENTATION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.nORIENTED_TOLERANCE_ZONE_TYPE?  { get }
  var OF_SHAPE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRODUCT_DEFINITION_SHAPE?  { get }
  var DATUM_REFERENCE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDATUM_SYSTEM?  { get }
  var IDENTIFICATION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER?  { get }
  var ESTABLISHED_BY_RELATIONSHIPS: (SDAI.SET<
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSHAPE_ASPECT_RELATIONSHIP>/*[1:nil]*/ )?  { get }
  var CONSTITUENTS: (SDAI.LIST_UNIQUE<
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDATUM_REFERENCE_COMPARTMENT>/*[1:3]*/ )?  { get }
  var REPRESENTATION_ASSOCIATIONS: (SDAI.SET<
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePROPERTY_DEFINITION_REPRESENTATION>/*[0:nil]*/ )?  { get }
  var ANGLE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePLANE_ANGLE_MEASURE_WITH_UNIT?  { get }
  var MODIFIERS: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sDATUM_REFERENCE_MODIFIER>/*[1:nil]*/ )?  { get }
  var COMPONENT_RELATIONSHIPS: (SDAI.SET<
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSHAPE_ASPECT_RELATIONSHIP>/*[2:nil]*/ )?  { get }
  var BASE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sDATUM_OR_COMMON_DATUM?  { get }
  var BASE_COMMON_DATUM_LIST: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tCOMMON_DATUM_LIST?  { get }
  var ID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER?  { get }
  var FEATURE_BASIS_RELATIONSHIP: (SDAI.SET<
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSHAPE_ASPECT_RELATIONSHIP>/*[1:nil]*/ )?  { get }
  var DIRECTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.nDIRECTED_TOLERANCE_ZONE_TYPE?  { get }
  var RELATED_SHAPE_ASPECT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCOMPONENT_FEATURE?  { get }
  var DEFINING_TOLERANCE: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sTOLERANCE_ZONE_TARGET>
    /*[1:nil]*/ )?  { get }
  var ASSIGNED_GROUP: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eMATED_PART_RELATIONSHIP?  { get }
  var LOCATION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sMULTI_OR_NEXT_ASSEMBLY_USAGE_OCCURRENCE?  { get }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { get }
  var BASIS_RELATIONSHIPS: (SDAI.SET<
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSHAPE_ASPECT_DERIVING_RELATIONSHIP>/*[1:nil]*/ )?  { get }
  var RELATING_SHAPE_ASPECT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCOMPONENT_FEATURE?  { get }
  var OFFSET: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eMEASURE_WITH_UNIT?  { get }
  var TARGET_BASIS_RELATIONSHIP: (SDAI.SET<
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSHAPE_ASPECT_RELATIONSHIP>/*[1:nil]*/ )?  { get }
}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sINTERNAL_OR_REFLECTED_SHAPE_ASPECT__subtype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sINTERNAL_OR_REFLECTED_SHAPE_ASPECT__type, SDAIDefinedType
where Supertype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sINTERNAL_OR_REFLECTED_SHAPE_ASPECT__type
{}

public extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sINTERNAL_OR_REFLECTED_SHAPE_ASPECT__subtype {
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
  var super_tIDENTIFIER: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER? { rep.super_tIDENTIFIER }
  var super_eSHAPE_ASPECT: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSHAPE_ASPECT? { rep.super_eSHAPE_ASPECT }

  //MARK: ENTITY ATTRIBUTE REFERENCES
  var DERIVING_RELATIONSHIPS: (SDAI.SET<
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSHAPE_ASPECT_DERIVING_RELATIONSHIP>/*[1:nil]*/ )?  { rep.DERIVING_RELATIONSHIPS }
  var PRODUCT_DEFINITIONAL: SDAI.LOGICAL { rep.PRODUCT_DEFINITIONAL }
  var DESCRIPTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tTEXT?  { rep.DESCRIPTION }
  var FORM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eTOLERANCE_ZONE_FORM?  { rep.FORM }
  var TARGET_ID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER?  { rep.TARGET_ID }
  var COMPONENT_SHAPE_ASPECT: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sINTERNAL_OR_REFLECTED_SHAPE_ASPECT?  { rep.COMPONENT_SHAPE_ASPECT }
  var PARENT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSHAPE_ASPECT?  { rep.PARENT }
  var ORIENTATION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.nORIENTED_TOLERANCE_ZONE_TYPE?  { rep.ORIENTATION }
  var OF_SHAPE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePRODUCT_DEFINITION_SHAPE?  { rep.OF_SHAPE }
  var DATUM_REFERENCE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDATUM_SYSTEM?  { rep.DATUM_REFERENCE }
  var IDENTIFICATION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER?  { rep.IDENTIFICATION }
  var ESTABLISHED_BY_RELATIONSHIPS: (SDAI.SET<
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSHAPE_ASPECT_RELATIONSHIP>/*[1:nil]*/ )?  { rep.ESTABLISHED_BY_RELATIONSHIPS }
  var CONSTITUENTS: (SDAI.LIST_UNIQUE<
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eDATUM_REFERENCE_COMPARTMENT>/*[1:3]*/ )?  { rep.CONSTITUENTS }
  var REPRESENTATION_ASSOCIATIONS: (SDAI.SET<
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePROPERTY_DEFINITION_REPRESENTATION>/*[0:nil]*/ )?  { rep.REPRESENTATION_ASSOCIATIONS }
  var ANGLE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ePLANE_ANGLE_MEASURE_WITH_UNIT?  { rep.ANGLE }
  var MODIFIERS: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sDATUM_REFERENCE_MODIFIER>/*[1:nil]*/ )?  { rep.MODIFIERS }
  var COMPONENT_RELATIONSHIPS: (SDAI.SET<
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSHAPE_ASPECT_RELATIONSHIP>/*[2:nil]*/ )?  { rep.COMPONENT_RELATIONSHIPS }
  var BASE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sDATUM_OR_COMMON_DATUM?  { rep.BASE }
  var BASE_COMMON_DATUM_LIST: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tCOMMON_DATUM_LIST?  { rep.BASE_COMMON_DATUM_LIST }
  var ID: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tIDENTIFIER?  { rep.ID }
  var FEATURE_BASIS_RELATIONSHIP: (SDAI.SET<
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSHAPE_ASPECT_RELATIONSHIP>/*[1:nil]*/ )?  { rep.FEATURE_BASIS_RELATIONSHIP }
  var DIRECTION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.nDIRECTED_TOLERANCE_ZONE_TYPE?  { rep.DIRECTION }
  var RELATED_SHAPE_ASPECT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCOMPONENT_FEATURE?  { rep.RELATED_SHAPE_ASPECT }
  var DEFINING_TOLERANCE: (SDAI.SET<AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sTOLERANCE_ZONE_TARGET>
    /*[1:nil]*/ )?  { rep.DEFINING_TOLERANCE }
  var ASSIGNED_GROUP: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eMATED_PART_RELATIONSHIP?  { rep.ASSIGNED_GROUP }
  var LOCATION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sMULTI_OR_NEXT_ASSEMBLY_USAGE_OCCURRENCE?  { rep.LOCATION }
  var NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLABEL?  { rep.NAME }
  var BASIS_RELATIONSHIPS: (SDAI.SET<
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSHAPE_ASPECT_DERIVING_RELATIONSHIP>/*[1:nil]*/ )?  { rep.BASIS_RELATIONSHIPS }
  var RELATING_SHAPE_ASPECT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eCOMPONENT_FEATURE?  { rep.RELATING_SHAPE_ASPECT }
  var OFFSET: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eMEASURE_WITH_UNIT?  { rep.OFFSET }
  var TARGET_BASIS_RELATIONSHIP: (SDAI.SET<
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSHAPE_ASPECT_RELATIONSHIP>/*[1:nil]*/ )?  { rep.TARGET_BASIS_RELATIONSHIP }
}

