/* file: a3m_measured_data_type_name.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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
  TYPE a3m_measured_data_type_name = ENUMERATION OF
    ( mdna_boolean_value,
     mdna_context_dependent_measure,
     mdna_length_measure,
     mdna_length_measure_and_context_dependent_measure,
     mdna_others,
     mdna_plane_angle_measure,
     mdna_volume_measure,
     mdns_area_measure,
     mdns_boolean_value,
     mdns_length_measure,
     mdns_others,
     mdns_plane_angle_measure,
     mdns_volume_measure );
  END_TYPE; -- a3m_measured_data_type_name (line:187 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


/** ENUMERATION type
- EXPRESS:
```express
  TYPE a3m_measured_data_type_name = ENUMERATION OF
    ( mdna_boolean_value,
     mdna_context_dependent_measure,
     mdna_length_measure,
     mdna_length_measure_and_context_dependent_measure,
     mdna_others,
     mdna_plane_angle_measure,
     mdna_volume_measure,
     mdns_area_measure,
     mdns_boolean_value,
     mdns_length_measure,
     mdns_others,
     mdns_plane_angle_measure,
     mdns_volume_measure );
  END_TYPE; -- a3m_measured_data_type_name (line:187 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public enum nA3M_MEASURED_DATA_TYPE_NAME : SDAI.ENUMERATION, SDAIValue, 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__nA3M_MEASURED_DATA_TYPE_NAME__type {
    /// ENUMERATION case in ``nA3M_MEASURED_DATA_TYPE_NAME``
    case MDNA_BOOLEAN_VALUE
    /// ENUMERATION case in ``nA3M_MEASURED_DATA_TYPE_NAME``
    case MDNA_CONTEXT_DEPENDENT_MEASURE
    /// ENUMERATION case in ``nA3M_MEASURED_DATA_TYPE_NAME``
    case MDNA_LENGTH_MEASURE
    /// ENUMERATION case in ``nA3M_MEASURED_DATA_TYPE_NAME``
    case MDNA_LENGTH_MEASURE_AND_CONTEXT_DEPENDENT_MEASURE
    /// ENUMERATION case in ``nA3M_MEASURED_DATA_TYPE_NAME``
    case MDNA_OTHERS
    /// ENUMERATION case in ``nA3M_MEASURED_DATA_TYPE_NAME``
    case MDNA_PLANE_ANGLE_MEASURE
    /// ENUMERATION case in ``nA3M_MEASURED_DATA_TYPE_NAME``
    case MDNA_VOLUME_MEASURE
    /// ENUMERATION case in ``nA3M_MEASURED_DATA_TYPE_NAME``
    case MDNS_AREA_MEASURE
    /// ENUMERATION case in ``nA3M_MEASURED_DATA_TYPE_NAME``
    case MDNS_BOOLEAN_VALUE
    /// ENUMERATION case in ``nA3M_MEASURED_DATA_TYPE_NAME``
    case MDNS_LENGTH_MEASURE
    /// ENUMERATION case in ``nA3M_MEASURED_DATA_TYPE_NAME``
    case MDNS_OTHERS
    /// ENUMERATION case in ``nA3M_MEASURED_DATA_TYPE_NAME``
    case MDNS_PLANE_ANGLE_MEASURE
    /// ENUMERATION case in ``nA3M_MEASURED_DATA_TYPE_NAME``
    case MDNS_VOLUME_MEASURE

    // SDAIGenericType
    public var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
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
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.A3M_MEASURED_DATA_TYPE_NAME"
    public var asFundamentalType: FundamentalType { return self }

    public init(fundamental: FundamentalType) {
      self = fundamental
    }

    public init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let enumval = generic?.enumValue(enumType: Self.self) else { return nil }
      self = enumval
    }
    // InitializableByP21Parameter
    public static var bareTypeName: String = "A3M_MEASURED_DATA_TYPE_NAME"

    public	init?(p21untypedParam: P21Decode.ExchangeStructure.UntypedParameter, from exchangeStructure: P21Decode.ExchangeStructure) {
      switch p21untypedParam {
      case .enumeration(let enumcase):
        switch enumcase {
        case "MDNA_BOOLEAN_VALUE": self = .MDNA_BOOLEAN_VALUE
        case "MDNA_CONTEXT_DEPENDENT_MEASURE": self = .MDNA_CONTEXT_DEPENDENT_MEASURE
        case "MDNA_LENGTH_MEASURE": self = .MDNA_LENGTH_MEASURE
        case "MDNA_LENGTH_MEASURE_AND_CONTEXT_DEPENDENT_MEASURE": self = .MDNA_LENGTH_MEASURE_AND_CONTEXT_DEPENDENT_MEASURE
        case "MDNA_OTHERS": self = .MDNA_OTHERS
        case "MDNA_PLANE_ANGLE_MEASURE": self = .MDNA_PLANE_ANGLE_MEASURE
        case "MDNA_VOLUME_MEASURE": self = .MDNA_VOLUME_MEASURE
        case "MDNS_AREA_MEASURE": self = .MDNS_AREA_MEASURE
        case "MDNS_BOOLEAN_VALUE": self = .MDNS_BOOLEAN_VALUE
        case "MDNS_LENGTH_MEASURE": self = .MDNS_LENGTH_MEASURE
        case "MDNS_OTHERS": self = .MDNS_OTHERS
        case "MDNS_PLANE_ANGLE_MEASURE": self = .MDNS_PLANE_ANGLE_MEASURE
        case "MDNS_VOLUME_MEASURE": self = .MDNS_VOLUME_MEASURE
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
      self = .MDNA_BOOLEAN_VALUE
    }

    //WHERE RULE VALIDATION (ENUMERATION TYPE)
    public static func validateWhereRules(instance:Self?, prefix:SDAI.WhereLabel) -> [SDAI.WhereLabel:SDAI.LOGICAL] {
      return [:]
    }

  }

  //MARK: -enum case symbol promotions
  /// promoted ENUMERATION case in ``nA3M_MEASURED_DATA_TYPE_NAME``
  public static let MDNA_BOOLEAN_VALUE = nA3M_MEASURED_DATA_TYPE_NAME.MDNA_BOOLEAN_VALUE
  /// promoted ENUMERATION case in ``nA3M_MEASURED_DATA_TYPE_NAME``
  public static let MDNA_CONTEXT_DEPENDENT_MEASURE = nA3M_MEASURED_DATA_TYPE_NAME
    .MDNA_CONTEXT_DEPENDENT_MEASURE
  /// promoted ENUMERATION case in ``nA3M_MEASURED_DATA_TYPE_NAME``
  public static let MDNA_LENGTH_MEASURE = nA3M_MEASURED_DATA_TYPE_NAME.MDNA_LENGTH_MEASURE
  /// promoted ENUMERATION case in ``nA3M_MEASURED_DATA_TYPE_NAME``
  public static let MDNA_LENGTH_MEASURE_AND_CONTEXT_DEPENDENT_MEASURE = nA3M_MEASURED_DATA_TYPE_NAME
    .MDNA_LENGTH_MEASURE_AND_CONTEXT_DEPENDENT_MEASURE
  /// promoted ENUMERATION case in ``nA3M_MEASURED_DATA_TYPE_NAME``
  public static let MDNA_OTHERS = nA3M_MEASURED_DATA_TYPE_NAME.MDNA_OTHERS
  /// promoted ENUMERATION case in ``nA3M_MEASURED_DATA_TYPE_NAME``
  public static let MDNA_PLANE_ANGLE_MEASURE = nA3M_MEASURED_DATA_TYPE_NAME.MDNA_PLANE_ANGLE_MEASURE
  /// promoted ENUMERATION case in ``nA3M_MEASURED_DATA_TYPE_NAME``
  public static let MDNA_VOLUME_MEASURE = nA3M_MEASURED_DATA_TYPE_NAME.MDNA_VOLUME_MEASURE
  /// promoted ENUMERATION case in ``nA3M_MEASURED_DATA_TYPE_NAME``
  public static let MDNS_AREA_MEASURE = nA3M_MEASURED_DATA_TYPE_NAME.MDNS_AREA_MEASURE
  /// promoted ENUMERATION case in ``nA3M_MEASURED_DATA_TYPE_NAME``
  public static let MDNS_BOOLEAN_VALUE = nA3M_MEASURED_DATA_TYPE_NAME.MDNS_BOOLEAN_VALUE
  /// promoted ENUMERATION case in ``nA3M_MEASURED_DATA_TYPE_NAME``
  public static let MDNS_LENGTH_MEASURE = nA3M_MEASURED_DATA_TYPE_NAME.MDNS_LENGTH_MEASURE
  /// promoted ENUMERATION case in ``nA3M_MEASURED_DATA_TYPE_NAME``
  public static let MDNS_OTHERS = nA3M_MEASURED_DATA_TYPE_NAME.MDNS_OTHERS
  /// promoted ENUMERATION case in ``nA3M_MEASURED_DATA_TYPE_NAME``
  public static let MDNS_PLANE_ANGLE_MEASURE = nA3M_MEASURED_DATA_TYPE_NAME.MDNS_PLANE_ANGLE_MEASURE
  /// promoted ENUMERATION case in ``nA3M_MEASURED_DATA_TYPE_NAME``
  public static let MDNS_VOLUME_MEASURE = nA3M_MEASURED_DATA_TYPE_NAME.MDNS_VOLUME_MEASURE
}


//MARK: - ENUMERATION TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__nA3M_MEASURED_DATA_TYPE_NAME__type: 
  SDAIEnumerationType {}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__nA3M_MEASURED_DATA_TYPE_NAME__subtype: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__nA3M_MEASURED_DATA_TYPE_NAME__type, SDAIDefinedType
where Supertype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__nA3M_MEASURED_DATA_TYPE_NAME__type
{}

