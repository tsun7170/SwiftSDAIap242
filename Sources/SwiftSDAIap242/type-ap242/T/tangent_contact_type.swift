/* file: tangent_contact_type.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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
  TYPE tangent_contact_type = ENUMERATION OF
    ( point_contact,
     curve_contact,
     surface_contact );
  END_TYPE; -- tangent_contact_type (line:5708 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


/** ENUMERATION type
- EXPRESS:
```express
  TYPE tangent_contact_type = ENUMERATION OF
    ( point_contact,
     curve_contact,
     surface_contact );
  END_TYPE; -- tangent_contact_type (line:5708 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public enum nTANGENT_CONTACT_TYPE : SDAI.ENUMERATION, SDAIValue, 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__nTANGENT_CONTACT_TYPE__type {
    /// ENUMERATION case in ``nTANGENT_CONTACT_TYPE``
    case POINT_CONTACT
    /// ENUMERATION case in ``nTANGENT_CONTACT_TYPE``
    case CURVE_CONTACT
    /// ENUMERATION case in ``nTANGENT_CONTACT_TYPE``
    case SURFACE_CONTACT

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
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.TANGENT_CONTACT_TYPE"
    public var asFundamentalType: FundamentalType { return self }

    public init(fundamental: FundamentalType) {
      self = fundamental
    }

    public init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let enumval = generic?.enumValue(enumType: Self.self) else { return nil }
      self = enumval
    }
    // InitializableByP21Parameter
    public static var bareTypeName: String = "TANGENT_CONTACT_TYPE"

    public	init?(p21untypedParam: P21Decode.ExchangeStructure.UntypedParameter, from exchangeStructure: P21Decode.ExchangeStructure) {
      switch p21untypedParam {
      case .enumeration(let enumcase):
        switch enumcase {
        case "POINT_CONTACT": self = .POINT_CONTACT
        case "CURVE_CONTACT": self = .CURVE_CONTACT
        case "SURFACE_CONTACT": self = .SURFACE_CONTACT
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
      self = .POINT_CONTACT
    }

    //WHERE RULE VALIDATION (ENUMERATION TYPE)
    public static func validateWhereRules(instance:Self?, prefix:SDAI.WhereLabel) -> [SDAI.WhereLabel:SDAI.LOGICAL] {
      return [:]
    }

  }

  //MARK: -enum case symbol promotions
  /// promoted ENUMERATION case in ``nTANGENT_CONTACT_TYPE``
  public static let POINT_CONTACT = nTANGENT_CONTACT_TYPE.POINT_CONTACT
  /// promoted ENUMERATION case in ``nTANGENT_CONTACT_TYPE``
  public static let CURVE_CONTACT = nTANGENT_CONTACT_TYPE.CURVE_CONTACT
  /// promoted ENUMERATION case in ``nTANGENT_CONTACT_TYPE``
  public static let SURFACE_CONTACT = nTANGENT_CONTACT_TYPE.SURFACE_CONTACT
}


//MARK: - ENUMERATION TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__nTANGENT_CONTACT_TYPE__type: 
  SDAIEnumerationType {}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__nTANGENT_CONTACT_TYPE__subtype: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__nTANGENT_CONTACT_TYPE__type, SDAIDefinedType
where Supertype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__nTANGENT_CONTACT_TYPE__type
{}
