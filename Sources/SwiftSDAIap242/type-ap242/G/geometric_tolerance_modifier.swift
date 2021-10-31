/* file: geometric_tolerance_modifier.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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
  TYPE geometric_tolerance_modifier = ENUMERATION OF
    ( any_cross_section,
     associated_least_square_feature,
     associated_maximum_inscribed_feature,
     associated_minimum_inscribed_feature,
     associated_minmax_feature,
     associated_tangent_feature,
     circle_a,
     common_zone,
     each_radial_element,
     free_state,
     least_material_requirement,
     line_element,
     major_diameter,
     maximum_material_requirement,
     minor_diameter,
     not_convex,
     peak_height,
     pitch_diameter,
     reciprocity_requirement,
     reference_least_square_feature_with_external_material_constraint,
     reference_least_square_feature_with_internal_material_constraint,
     reference_least_square_feature_without_constraint,
     reference_maximum_inscribed_feature,
     reference_minimax_feature_with_external_material_constraint,
     reference_minimax_feature_with_internal_material_constraint,
     reference_minimax_feature_without_constraint,
     reference_minimum_circumscribed_feature,
     separate_requirement,
     standard_deviation,
     statistical_tolerance,
     tangent_plane,
     total_range_deviations,
     united_feature,
     valley_depth );
  END_TYPE; -- geometric_tolerance_modifier (line:3354 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


/** ENUMERATION type
- EXPRESS:
```express
  TYPE geometric_tolerance_modifier = ENUMERATION OF
    ( any_cross_section,
     associated_least_square_feature,
     associated_maximum_inscribed_feature,
     associated_minimum_inscribed_feature,
     associated_minmax_feature,
     associated_tangent_feature,
     circle_a,
     common_zone,
     each_radial_element,
     free_state,
     least_material_requirement,
     line_element,
     major_diameter,
     maximum_material_requirement,
     minor_diameter,
     not_convex,
     peak_height,
     pitch_diameter,
     reciprocity_requirement,
     reference_least_square_feature_with_external_material_constraint,
     reference_least_square_feature_with_internal_material_constraint,
     reference_least_square_feature_without_constraint,
     reference_maximum_inscribed_feature,
     reference_minimax_feature_with_external_material_constraint,
     reference_minimax_feature_with_internal_material_constraint,
     reference_minimax_feature_without_constraint,
     reference_minimum_circumscribed_feature,
     separate_requirement,
     standard_deviation,
     statistical_tolerance,
     tangent_plane,
     total_range_deviations,
     united_feature,
     valley_depth );
  END_TYPE; -- geometric_tolerance_modifier (line:3354 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public enum nGEOMETRIC_TOLERANCE_MODIFIER : SDAI.ENUMERATION, SDAIValue, 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__nGEOMETRIC_TOLERANCE_MODIFIER__type {
    /// ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
    case ANY_CROSS_SECTION
    /// ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
    case ASSOCIATED_LEAST_SQUARE_FEATURE
    /// ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
    case ASSOCIATED_MAXIMUM_INSCRIBED_FEATURE
    /// ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
    case ASSOCIATED_MINIMUM_INSCRIBED_FEATURE
    /// ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
    case ASSOCIATED_MINMAX_FEATURE
    /// ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
    case ASSOCIATED_TANGENT_FEATURE
    /// ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
    case CIRCLE_A
    /// ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
    case COMMON_ZONE
    /// ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
    case EACH_RADIAL_ELEMENT
    /// ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
    case FREE_STATE
    /// ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
    case LEAST_MATERIAL_REQUIREMENT
    /// ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
    case LINE_ELEMENT
    /// ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
    case MAJOR_DIAMETER
    /// ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
    case MAXIMUM_MATERIAL_REQUIREMENT
    /// ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
    case MINOR_DIAMETER
    /// ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
    case NOT_CONVEX
    /// ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
    case PEAK_HEIGHT
    /// ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
    case PITCH_DIAMETER
    /// ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
    case RECIPROCITY_REQUIREMENT
    /// ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
    case REFERENCE_LEAST_SQUARE_FEATURE_WITH_EXTERNAL_MATERIAL_CONSTRAINT
    /// ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
    case REFERENCE_LEAST_SQUARE_FEATURE_WITH_INTERNAL_MATERIAL_CONSTRAINT
    /// ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
    case REFERENCE_LEAST_SQUARE_FEATURE_WITHOUT_CONSTRAINT
    /// ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
    case REFERENCE_MAXIMUM_INSCRIBED_FEATURE
    /// ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
    case REFERENCE_MINIMAX_FEATURE_WITH_EXTERNAL_MATERIAL_CONSTRAINT
    /// ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
    case REFERENCE_MINIMAX_FEATURE_WITH_INTERNAL_MATERIAL_CONSTRAINT
    /// ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
    case REFERENCE_MINIMAX_FEATURE_WITHOUT_CONSTRAINT
    /// ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
    case REFERENCE_MINIMUM_CIRCUMSCRIBED_FEATURE
    /// ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
    case SEPARATE_REQUIREMENT
    /// ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
    case STANDARD_DEVIATION
    /// ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
    case STATISTICAL_TOLERANCE
    /// ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
    case TANGENT_PLANE
    /// ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
    case TOTAL_RANGE_DEVIATIONS
    /// ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
    case UNITED_FEATURE
    /// ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
    case VALLEY_DEPTH

    // SDAIGenericType
    public var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sGPS_FILTRATION_TYPE.typeName)) // -> Self
      return members
    }

    public var entityReference: SDAI.EntityReference? {nil}
    public var stringValue: SDAI.STRING? {nil}
    public var binaryValue: SDAI.BINARY? {nil}
    public var logicalValue: SDAI.LOGICAL? {nil}
    public var booleanValue: SDAI.BOOLEAN? {nil}
    public var numberValue: SDAI.NUMBER? {nil}
    public var realValue: SDAI.REAL? {nil}
    public var integerValue: SDAI.INTEGER? {nil}
    public var genericEnumValue: SDAI.GenericEnumValue? { SDAI.GenericEnumValue(self) }
    public func arrayOptionalValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY_OPTIONAL<ELEM>? {nil}
    public func arrayValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.ARRAY<ELEM>? {nil}
    public func listValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.LIST<ELEM>? {nil}
    public func bagValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.BAG<ELEM>? {nil}
    public func setValue<ELEM:SDAIGenericType>(elementType:ELEM.Type) -> SDAI.SET<ELEM>? {nil}
    public func enumValue<ENUM:SDAIEnumerationType>(enumType:ENUM.Type) -> ENUM? { return self as? ENUM }

    // SDAIUnderlyingType
    public typealias FundamentalType = Self
    public static var typeName: String = 
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.GEOMETRIC_TOLERANCE_MODIFIER"
    public var asFundamentalType: FundamentalType { return self }

    public init(fundamental: FundamentalType) {
      self = fundamental
    }

    public init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let enumval = generic?.enumValue(enumType: Self.self) else { return nil }
      self = enumval
    }
    // InitializableByP21Parameter
    public static var bareTypeName: String = "GEOMETRIC_TOLERANCE_MODIFIER"

    public	init?(p21untypedParam: P21Decode.ExchangeStructure.UntypedParameter, from exchangeStructure: P21Decode.ExchangeStructure) {
      switch p21untypedParam {
      case .enumeration(let enumcase):
        switch enumcase {
        case "ANY_CROSS_SECTION": self = .ANY_CROSS_SECTION
        case "ASSOCIATED_LEAST_SQUARE_FEATURE": self = .ASSOCIATED_LEAST_SQUARE_FEATURE
        case "ASSOCIATED_MAXIMUM_INSCRIBED_FEATURE": self = .ASSOCIATED_MAXIMUM_INSCRIBED_FEATURE
        case "ASSOCIATED_MINIMUM_INSCRIBED_FEATURE": self = .ASSOCIATED_MINIMUM_INSCRIBED_FEATURE
        case "ASSOCIATED_MINMAX_FEATURE": self = .ASSOCIATED_MINMAX_FEATURE
        case "ASSOCIATED_TANGENT_FEATURE": self = .ASSOCIATED_TANGENT_FEATURE
        case "CIRCLE_A": self = .CIRCLE_A
        case "COMMON_ZONE": self = .COMMON_ZONE
        case "EACH_RADIAL_ELEMENT": self = .EACH_RADIAL_ELEMENT
        case "FREE_STATE": self = .FREE_STATE
        case "LEAST_MATERIAL_REQUIREMENT": self = .LEAST_MATERIAL_REQUIREMENT
        case "LINE_ELEMENT": self = .LINE_ELEMENT
        case "MAJOR_DIAMETER": self = .MAJOR_DIAMETER
        case "MAXIMUM_MATERIAL_REQUIREMENT": self = .MAXIMUM_MATERIAL_REQUIREMENT
        case "MINOR_DIAMETER": self = .MINOR_DIAMETER
        case "NOT_CONVEX": self = .NOT_CONVEX
        case "PEAK_HEIGHT": self = .PEAK_HEIGHT
        case "PITCH_DIAMETER": self = .PITCH_DIAMETER
        case "RECIPROCITY_REQUIREMENT": self = .RECIPROCITY_REQUIREMENT
        case "REFERENCE_LEAST_SQUARE_FEATURE_WITH_EXTERNAL_MATERIAL_CONSTRAINT": self = .REFERENCE_LEAST_SQUARE_FEATURE_WITH_EXTERNAL_MATERIAL_CONSTRAINT
        case "REFERENCE_LEAST_SQUARE_FEATURE_WITH_INTERNAL_MATERIAL_CONSTRAINT": self = .REFERENCE_LEAST_SQUARE_FEATURE_WITH_INTERNAL_MATERIAL_CONSTRAINT
        case "REFERENCE_LEAST_SQUARE_FEATURE_WITHOUT_CONSTRAINT": self = .REFERENCE_LEAST_SQUARE_FEATURE_WITHOUT_CONSTRAINT
        case "REFERENCE_MAXIMUM_INSCRIBED_FEATURE": self = .REFERENCE_MAXIMUM_INSCRIBED_FEATURE
        case "REFERENCE_MINIMAX_FEATURE_WITH_EXTERNAL_MATERIAL_CONSTRAINT": self = .REFERENCE_MINIMAX_FEATURE_WITH_EXTERNAL_MATERIAL_CONSTRAINT
        case "REFERENCE_MINIMAX_FEATURE_WITH_INTERNAL_MATERIAL_CONSTRAINT": self = .REFERENCE_MINIMAX_FEATURE_WITH_INTERNAL_MATERIAL_CONSTRAINT
        case "REFERENCE_MINIMAX_FEATURE_WITHOUT_CONSTRAINT": self = .REFERENCE_MINIMAX_FEATURE_WITHOUT_CONSTRAINT
        case "REFERENCE_MINIMUM_CIRCUMSCRIBED_FEATURE": self = .REFERENCE_MINIMUM_CIRCUMSCRIBED_FEATURE
        case "SEPARATE_REQUIREMENT": self = .SEPARATE_REQUIREMENT
        case "STANDARD_DEVIATION": self = .STANDARD_DEVIATION
        case "STATISTICAL_TOLERANCE": self = .STATISTICAL_TOLERANCE
        case "TANGENT_PLANE": self = .TANGENT_PLANE
        case "TOTAL_RANGE_DEVIATIONS": self = .TOTAL_RANGE_DEVIATIONS
        case "UNITED_FEATURE": self = .UNITED_FEATURE
        case "VALLEY_DEPTH": self = .VALLEY_DEPTH
        default:
          exchangeStructure.error = "unexpected p21parameter enum case(\(enumcase)) while resolving \(Self.bareTypeName) value"
          return nil
        }

      case .rhsOccurenceName(let rhsname):
        switch rhsname {
        case .constantValueName(let name):
          guard let generic = exchangeStructure.resolve(constantValueName: name) else {exchangeStructure.add(errorContext: "while resolving \(Self.bareTypeName) value"); return nil }
          guard let enumValue = generic.enumValue(enumType:Self.self) else { exchangeStructure.error = "constant value(\(name): \(generic)) is not compatible with \(Self.bareTypeName)"; return nil }
          self = enumValue

        case .valueInstanceName(let name):
          guard let param = exchangeStructure.resolve(valueInstanceName: name) else {exchangeStructure.add(errorContext: "while resolving \(Self.bareTypeName) value from \(rhsname)"); return nil }
          self.init(p21param: param, from: exchangeStructure)

        default:
          exchangeStructure.error = "unexpected p21parameter(\(p21untypedParam)) while resolving \(Self.bareTypeName) value"
          return nil
        }

      case .noValue:
        return nil

      default:
        exchangeStructure.error = "unexpected p21parameter(\(p21untypedParam)) while resolving \(Self.bareTypeName) value"
        return nil
      }
    }

    public init(p21omittedParamfrom exchangeStructure: P21Decode.ExchangeStructure) {
      self = .ANY_CROSS_SECTION
    }

    //WHERE RULE VALIDATION (ENUMERATION TYPE)
    public static func validateWhereRules(instance:Self?, prefix:SDAI.WhereLabel) -> [SDAI.WhereLabel:SDAI.LOGICAL] {
      return [:]
    }

  }

  //MARK: -enum case symbol promotions
  // ambiguous:     ANY_CROSS_SECTION
  /// promoted ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
  public static let ASSOCIATED_LEAST_SQUARE_FEATURE = nGEOMETRIC_TOLERANCE_MODIFIER
    .ASSOCIATED_LEAST_SQUARE_FEATURE
  /// promoted ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
  public static let ASSOCIATED_MAXIMUM_INSCRIBED_FEATURE = nGEOMETRIC_TOLERANCE_MODIFIER
    .ASSOCIATED_MAXIMUM_INSCRIBED_FEATURE
  /// promoted ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
  public static let ASSOCIATED_MINIMUM_INSCRIBED_FEATURE = nGEOMETRIC_TOLERANCE_MODIFIER
    .ASSOCIATED_MINIMUM_INSCRIBED_FEATURE
  /// promoted ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
  public static let ASSOCIATED_MINMAX_FEATURE = nGEOMETRIC_TOLERANCE_MODIFIER.ASSOCIATED_MINMAX_FEATURE
  /// promoted ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
  public static let ASSOCIATED_TANGENT_FEATURE = nGEOMETRIC_TOLERANCE_MODIFIER.ASSOCIATED_TANGENT_FEATURE
  /// promoted ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
  public static let CIRCLE_A = nGEOMETRIC_TOLERANCE_MODIFIER.CIRCLE_A
  /// promoted ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
  public static let COMMON_ZONE = nGEOMETRIC_TOLERANCE_MODIFIER.COMMON_ZONE
  /// promoted ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
  public static let EACH_RADIAL_ELEMENT = nGEOMETRIC_TOLERANCE_MODIFIER.EACH_RADIAL_ELEMENT
  // ambiguous:     FREE_STATE
  // ambiguous:     LEAST_MATERIAL_REQUIREMENT
  /// promoted ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
  public static let LINE_ELEMENT = nGEOMETRIC_TOLERANCE_MODIFIER.LINE_ELEMENT
  // ambiguous:     MAJOR_DIAMETER
  // ambiguous:     MAXIMUM_MATERIAL_REQUIREMENT
  // ambiguous:     MINOR_DIAMETER
  /// promoted ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
  public static let NOT_CONVEX = nGEOMETRIC_TOLERANCE_MODIFIER.NOT_CONVEX
  /// promoted ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
  public static let PEAK_HEIGHT = nGEOMETRIC_TOLERANCE_MODIFIER.PEAK_HEIGHT
  // ambiguous:     PITCH_DIAMETER
  /// promoted ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
  public static let RECIPROCITY_REQUIREMENT = nGEOMETRIC_TOLERANCE_MODIFIER.RECIPROCITY_REQUIREMENT
  /// promoted ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
  public static let REFERENCE_LEAST_SQUARE_FEATURE_WITH_EXTERNAL_MATERIAL_CONSTRAINT = 
    nGEOMETRIC_TOLERANCE_MODIFIER.REFERENCE_LEAST_SQUARE_FEATURE_WITH_EXTERNAL_MATERIAL_CONSTRAINT
  /// promoted ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
  public static let REFERENCE_LEAST_SQUARE_FEATURE_WITH_INTERNAL_MATERIAL_CONSTRAINT = 
    nGEOMETRIC_TOLERANCE_MODIFIER.REFERENCE_LEAST_SQUARE_FEATURE_WITH_INTERNAL_MATERIAL_CONSTRAINT
  /// promoted ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
  public static let REFERENCE_LEAST_SQUARE_FEATURE_WITHOUT_CONSTRAINT = nGEOMETRIC_TOLERANCE_MODIFIER
    .REFERENCE_LEAST_SQUARE_FEATURE_WITHOUT_CONSTRAINT
  /// promoted ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
  public static let REFERENCE_MAXIMUM_INSCRIBED_FEATURE = nGEOMETRIC_TOLERANCE_MODIFIER
    .REFERENCE_MAXIMUM_INSCRIBED_FEATURE
  /// promoted ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
  public static let REFERENCE_MINIMAX_FEATURE_WITH_EXTERNAL_MATERIAL_CONSTRAINT = 
    nGEOMETRIC_TOLERANCE_MODIFIER.REFERENCE_MINIMAX_FEATURE_WITH_EXTERNAL_MATERIAL_CONSTRAINT
  /// promoted ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
  public static let REFERENCE_MINIMAX_FEATURE_WITH_INTERNAL_MATERIAL_CONSTRAINT = 
    nGEOMETRIC_TOLERANCE_MODIFIER.REFERENCE_MINIMAX_FEATURE_WITH_INTERNAL_MATERIAL_CONSTRAINT
  /// promoted ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
  public static let REFERENCE_MINIMAX_FEATURE_WITHOUT_CONSTRAINT = nGEOMETRIC_TOLERANCE_MODIFIER
    .REFERENCE_MINIMAX_FEATURE_WITHOUT_CONSTRAINT
  /// promoted ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
  public static let REFERENCE_MINIMUM_CIRCUMSCRIBED_FEATURE = nGEOMETRIC_TOLERANCE_MODIFIER
    .REFERENCE_MINIMUM_CIRCUMSCRIBED_FEATURE
  /// promoted ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
  public static let SEPARATE_REQUIREMENT = nGEOMETRIC_TOLERANCE_MODIFIER.SEPARATE_REQUIREMENT
  /// promoted ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
  public static let STANDARD_DEVIATION = nGEOMETRIC_TOLERANCE_MODIFIER.STANDARD_DEVIATION
  /// promoted ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
  public static let STATISTICAL_TOLERANCE = nGEOMETRIC_TOLERANCE_MODIFIER.STATISTICAL_TOLERANCE
  /// promoted ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
  public static let TANGENT_PLANE = nGEOMETRIC_TOLERANCE_MODIFIER.TANGENT_PLANE
  /// promoted ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
  public static let TOTAL_RANGE_DEVIATIONS = nGEOMETRIC_TOLERANCE_MODIFIER.TOTAL_RANGE_DEVIATIONS
  /// promoted ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
  public static let UNITED_FEATURE = nGEOMETRIC_TOLERANCE_MODIFIER.UNITED_FEATURE
  /// promoted ENUMERATION case in ``nGEOMETRIC_TOLERANCE_MODIFIER``
  public static let VALLEY_DEPTH = nGEOMETRIC_TOLERANCE_MODIFIER.VALLEY_DEPTH
}


//MARK: - ENUMERATION TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__nGEOMETRIC_TOLERANCE_MODIFIER__type: 
  SDAIEnumerationType {}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__nGEOMETRIC_TOLERANCE_MODIFIER__subtype: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__nGEOMETRIC_TOLERANCE_MODIFIER__type, SDAIDefinedType
where Supertype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__nGEOMETRIC_TOLERANCE_MODIFIER__type
{}

