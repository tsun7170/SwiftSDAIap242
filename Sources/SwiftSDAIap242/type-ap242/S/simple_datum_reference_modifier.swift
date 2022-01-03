/* file: simple_datum_reference_modifier.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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
  TYPE simple_datum_reference_modifier = ENUMERATION OF
    ( any_cross_section,
     any_longitudinal_section,
     basic,
     contacting_feature,
     degree_of_freedom_constraint_u,
     degree_of_freedom_constraint_v,
     degree_of_freedom_constraint_w,
     degree_of_freedom_constraint_x,
     degree_of_freedom_constraint_y,
     degree_of_freedom_constraint_z,
     distance_variable,
     free_state,
     least_material_requirement,
     line,
     major_diameter,
     maximum_material_requirement,
     minor_diameter,
     orientation,
     pitch_diameter,
     plane,
     point,
     translation );
  END_TYPE; -- simple_datum_reference_modifier (line:5433 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


/** ENUMERATION type
- EXPRESS:
```express
  TYPE simple_datum_reference_modifier = ENUMERATION OF
    ( any_cross_section,
     any_longitudinal_section,
     basic,
     contacting_feature,
     degree_of_freedom_constraint_u,
     degree_of_freedom_constraint_v,
     degree_of_freedom_constraint_w,
     degree_of_freedom_constraint_x,
     degree_of_freedom_constraint_y,
     degree_of_freedom_constraint_z,
     distance_variable,
     free_state,
     least_material_requirement,
     line,
     major_diameter,
     maximum_material_requirement,
     minor_diameter,
     orientation,
     pitch_diameter,
     plane,
     point,
     translation );
  END_TYPE; -- simple_datum_reference_modifier (line:5433 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public enum nSIMPLE_DATUM_REFERENCE_MODIFIER : SDAI.ENUMERATION, SDAIValue, 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__nSIMPLE_DATUM_REFERENCE_MODIFIER__type {
    /// ENUMERATION case in ``nSIMPLE_DATUM_REFERENCE_MODIFIER``
    case ANY_CROSS_SECTION
    /// ENUMERATION case in ``nSIMPLE_DATUM_REFERENCE_MODIFIER``
    case ANY_LONGITUDINAL_SECTION
    /// ENUMERATION case in ``nSIMPLE_DATUM_REFERENCE_MODIFIER``
    case BASIC
    /// ENUMERATION case in ``nSIMPLE_DATUM_REFERENCE_MODIFIER``
    case CONTACTING_FEATURE
    /// ENUMERATION case in ``nSIMPLE_DATUM_REFERENCE_MODIFIER``
    case DEGREE_OF_FREEDOM_CONSTRAINT_U
    /// ENUMERATION case in ``nSIMPLE_DATUM_REFERENCE_MODIFIER``
    case DEGREE_OF_FREEDOM_CONSTRAINT_V
    /// ENUMERATION case in ``nSIMPLE_DATUM_REFERENCE_MODIFIER``
    case DEGREE_OF_FREEDOM_CONSTRAINT_W
    /// ENUMERATION case in ``nSIMPLE_DATUM_REFERENCE_MODIFIER``
    case DEGREE_OF_FREEDOM_CONSTRAINT_X
    /// ENUMERATION case in ``nSIMPLE_DATUM_REFERENCE_MODIFIER``
    case DEGREE_OF_FREEDOM_CONSTRAINT_Y
    /// ENUMERATION case in ``nSIMPLE_DATUM_REFERENCE_MODIFIER``
    case DEGREE_OF_FREEDOM_CONSTRAINT_Z
    /// ENUMERATION case in ``nSIMPLE_DATUM_REFERENCE_MODIFIER``
    case DISTANCE_VARIABLE
    /// ENUMERATION case in ``nSIMPLE_DATUM_REFERENCE_MODIFIER``
    case FREE_STATE
    /// ENUMERATION case in ``nSIMPLE_DATUM_REFERENCE_MODIFIER``
    case LEAST_MATERIAL_REQUIREMENT
    /// ENUMERATION case in ``nSIMPLE_DATUM_REFERENCE_MODIFIER``
    case LINE
    /// ENUMERATION case in ``nSIMPLE_DATUM_REFERENCE_MODIFIER``
    case MAJOR_DIAMETER
    /// ENUMERATION case in ``nSIMPLE_DATUM_REFERENCE_MODIFIER``
    case MAXIMUM_MATERIAL_REQUIREMENT
    /// ENUMERATION case in ``nSIMPLE_DATUM_REFERENCE_MODIFIER``
    case MINOR_DIAMETER
    /// ENUMERATION case in ``nSIMPLE_DATUM_REFERENCE_MODIFIER``
    case ORIENTATION
    /// ENUMERATION case in ``nSIMPLE_DATUM_REFERENCE_MODIFIER``
    case PITCH_DIAMETER
    /// ENUMERATION case in ``nSIMPLE_DATUM_REFERENCE_MODIFIER``
    case PLANE
    /// ENUMERATION case in ``nSIMPLE_DATUM_REFERENCE_MODIFIER``
    case POINT
    /// ENUMERATION case in ``nSIMPLE_DATUM_REFERENCE_MODIFIER``
    case TRANSLATION

    // SDAIGenericType
    public var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sDATUM_REFERENCE_MODIFIER.typeName)) // -> Self
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
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SIMPLE_DATUM_REFERENCE_MODIFIER"
    public var asFundamentalType: FundamentalType { return self }

    public init(fundamental: FundamentalType) {
      self = fundamental
    }

    public init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let enumval = generic?.enumValue(enumType: Self.self) else { return nil }
      self = enumval
    }
    // InitializableByP21Parameter
    public static var bareTypeName: String = "SIMPLE_DATUM_REFERENCE_MODIFIER"

    public	init?(p21untypedParam: P21Decode.ExchangeStructure.UntypedParameter, from exchangeStructure: P21Decode.ExchangeStructure) {
      switch p21untypedParam {
      case .enumeration(let enumcase):
        switch enumcase {
        case "ANY_CROSS_SECTION": self = .ANY_CROSS_SECTION
        case "ANY_LONGITUDINAL_SECTION": self = .ANY_LONGITUDINAL_SECTION
        case "BASIC": self = .BASIC
        case "CONTACTING_FEATURE": self = .CONTACTING_FEATURE
        case "DEGREE_OF_FREEDOM_CONSTRAINT_U": self = .DEGREE_OF_FREEDOM_CONSTRAINT_U
        case "DEGREE_OF_FREEDOM_CONSTRAINT_V": self = .DEGREE_OF_FREEDOM_CONSTRAINT_V
        case "DEGREE_OF_FREEDOM_CONSTRAINT_W": self = .DEGREE_OF_FREEDOM_CONSTRAINT_W
        case "DEGREE_OF_FREEDOM_CONSTRAINT_X": self = .DEGREE_OF_FREEDOM_CONSTRAINT_X
        case "DEGREE_OF_FREEDOM_CONSTRAINT_Y": self = .DEGREE_OF_FREEDOM_CONSTRAINT_Y
        case "DEGREE_OF_FREEDOM_CONSTRAINT_Z": self = .DEGREE_OF_FREEDOM_CONSTRAINT_Z
        case "DISTANCE_VARIABLE": self = .DISTANCE_VARIABLE
        case "FREE_STATE": self = .FREE_STATE
        case "LEAST_MATERIAL_REQUIREMENT": self = .LEAST_MATERIAL_REQUIREMENT
        case "LINE": self = .LINE
        case "MAJOR_DIAMETER": self = .MAJOR_DIAMETER
        case "MAXIMUM_MATERIAL_REQUIREMENT": self = .MAXIMUM_MATERIAL_REQUIREMENT
        case "MINOR_DIAMETER": self = .MINOR_DIAMETER
        case "ORIENTATION": self = .ORIENTATION
        case "PITCH_DIAMETER": self = .PITCH_DIAMETER
        case "PLANE": self = .PLANE
        case "POINT": self = .POINT
        case "TRANSLATION": self = .TRANSLATION
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
  /// promoted ENUMERATION case in ``nSIMPLE_DATUM_REFERENCE_MODIFIER``
  public static let ANY_LONGITUDINAL_SECTION = nSIMPLE_DATUM_REFERENCE_MODIFIER.ANY_LONGITUDINAL_SECTION
  /// promoted ENUMERATION case in ``nSIMPLE_DATUM_REFERENCE_MODIFIER``
  public static let BASIC = nSIMPLE_DATUM_REFERENCE_MODIFIER.BASIC
  // ambiguous:     CONTACTING_FEATURE
  /// promoted ENUMERATION case in ``nSIMPLE_DATUM_REFERENCE_MODIFIER``
  public static let DEGREE_OF_FREEDOM_CONSTRAINT_U = nSIMPLE_DATUM_REFERENCE_MODIFIER
    .DEGREE_OF_FREEDOM_CONSTRAINT_U
  /// promoted ENUMERATION case in ``nSIMPLE_DATUM_REFERENCE_MODIFIER``
  public static let DEGREE_OF_FREEDOM_CONSTRAINT_V = nSIMPLE_DATUM_REFERENCE_MODIFIER
    .DEGREE_OF_FREEDOM_CONSTRAINT_V
  /// promoted ENUMERATION case in ``nSIMPLE_DATUM_REFERENCE_MODIFIER``
  public static let DEGREE_OF_FREEDOM_CONSTRAINT_W = nSIMPLE_DATUM_REFERENCE_MODIFIER
    .DEGREE_OF_FREEDOM_CONSTRAINT_W
  /// promoted ENUMERATION case in ``nSIMPLE_DATUM_REFERENCE_MODIFIER``
  public static let DEGREE_OF_FREEDOM_CONSTRAINT_X = nSIMPLE_DATUM_REFERENCE_MODIFIER
    .DEGREE_OF_FREEDOM_CONSTRAINT_X
  /// promoted ENUMERATION case in ``nSIMPLE_DATUM_REFERENCE_MODIFIER``
  public static let DEGREE_OF_FREEDOM_CONSTRAINT_Y = nSIMPLE_DATUM_REFERENCE_MODIFIER
    .DEGREE_OF_FREEDOM_CONSTRAINT_Y
  /// promoted ENUMERATION case in ``nSIMPLE_DATUM_REFERENCE_MODIFIER``
  public static let DEGREE_OF_FREEDOM_CONSTRAINT_Z = nSIMPLE_DATUM_REFERENCE_MODIFIER
    .DEGREE_OF_FREEDOM_CONSTRAINT_Z
  /// promoted ENUMERATION case in ``nSIMPLE_DATUM_REFERENCE_MODIFIER``
  public static let DISTANCE_VARIABLE = nSIMPLE_DATUM_REFERENCE_MODIFIER.DISTANCE_VARIABLE
  // ambiguous:     FREE_STATE
  // ambiguous:     LEAST_MATERIAL_REQUIREMENT
  // ambiguous:     LINE
  // ambiguous:     MAJOR_DIAMETER
  // ambiguous:     MAXIMUM_MATERIAL_REQUIREMENT
  // ambiguous:     MINOR_DIAMETER
  /// promoted ENUMERATION case in ``nSIMPLE_DATUM_REFERENCE_MODIFIER``
  public static let ORIENTATION = nSIMPLE_DATUM_REFERENCE_MODIFIER.ORIENTATION
  // ambiguous:     PITCH_DIAMETER
  // ambiguous:     PLANE
  // ambiguous:     POINT
  /// promoted ENUMERATION case in ``nSIMPLE_DATUM_REFERENCE_MODIFIER``
  public static let TRANSLATION = nSIMPLE_DATUM_REFERENCE_MODIFIER.TRANSLATION
}


//MARK: - ENUMERATION TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__nSIMPLE_DATUM_REFERENCE_MODIFIER__type: 
  SDAIEnumerationType {}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__nSIMPLE_DATUM_REFERENCE_MODIFIER__subtype: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__nSIMPLE_DATUM_REFERENCE_MODIFIER__type, SDAIDefinedType
where Supertype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__nSIMPLE_DATUM_REFERENCE_MODIFIER__type
{}

