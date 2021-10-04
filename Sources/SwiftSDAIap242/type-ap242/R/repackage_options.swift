/* file: repackage_options.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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
  TYPE repackage_options = ENUMERATION OF
    ( ro_nochange,
     ro_wrap_as_tuple,
     ro_unwrap_tuple );
  END_TYPE; -- repackage_options (line:5034 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


/** ENUMERATION type
- EXPRESS:
```express
  TYPE repackage_options = ENUMERATION OF
    ( ro_nochange,
     ro_wrap_as_tuple,
     ro_unwrap_tuple );
  END_TYPE; -- repackage_options (line:5034 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public enum nREPACKAGE_OPTIONS : SDAI.ENUMERATION, SDAIValue, 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__nREPACKAGE_OPTIONS__type {
    /// ENUMERATION case in ``nREPACKAGE_OPTIONS``
    case RO_NOCHANGE
    /// ENUMERATION case in ``nREPACKAGE_OPTIONS``
    case RO_WRAP_AS_TUPLE
    /// ENUMERATION case in ``nREPACKAGE_OPTIONS``
    case RO_UNWRAP_TUPLE

    // SDAIGenericType
    public var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sMATHS_ENUM_ATOM.typeName)) // -> Self
      members.insert(SDAI.STRING(sMATHS_ATOM.typeName)) // -> sMATHS_ENUM_ATOM
      members.insert(SDAI.STRING(sATOM_BASED_VALUE.typeName)) // -> sMATHS_ATOM
      members.insert(SDAI.STRING(sMATHS_VALUE.typeName)) // -> sATOM_BASED_VALUE
      members.insert(SDAI.STRING(sMATHS_EXPRESSION.typeName)) // -> sATOM_BASED_VALUE
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
    public static var typeName: String = "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.REPACKAGE_OPTIONS"
    public var asFundamentalType: FundamentalType { return self }

    public init(fundamental: FundamentalType) {
      self = fundamental
    }

    public init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let enumval = generic?.enumValue(enumType: Self.self) else { return nil }
      self = enumval
    }
    // InitializableByP21Parameter
    public static var bareTypeName: String = "REPACKAGE_OPTIONS"

    public	init?(p21untypedParam: P21Decode.ExchangeStructure.UntypedParameter, from exchangeStructure: P21Decode.ExchangeStructure) {
      switch p21untypedParam {
      case .enumeration(let enumcase):
        switch enumcase {
        case "RO_NOCHANGE": self = .RO_NOCHANGE
        case "RO_WRAP_AS_TUPLE": self = .RO_WRAP_AS_TUPLE
        case "RO_UNWRAP_TUPLE": self = .RO_UNWRAP_TUPLE
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
      self = .RO_NOCHANGE
    }

    //WHERE RULE VALIDATION (ENUMERATION TYPE)
    public static func validateWhereRules(instance:Self?, prefix:SDAI.WhereLabel) -> [SDAI.WhereLabel:SDAI.LOGICAL] {
      return [:]
    }

  }

  //MARK: -enum case symbol promotions
  /// promoted ENUMERATION case in ``nREPACKAGE_OPTIONS``
  public static let RO_NOCHANGE = nREPACKAGE_OPTIONS.RO_NOCHANGE
  /// promoted ENUMERATION case in ``nREPACKAGE_OPTIONS``
  public static let RO_WRAP_AS_TUPLE = nREPACKAGE_OPTIONS.RO_WRAP_AS_TUPLE
  /// promoted ENUMERATION case in ``nREPACKAGE_OPTIONS``
  public static let RO_UNWRAP_TUPLE = nREPACKAGE_OPTIONS.RO_UNWRAP_TUPLE
}


//MARK: - ENUMERATION TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__nREPACKAGE_OPTIONS__type: 
  SDAIEnumerationType {}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__nREPACKAGE_OPTIONS__subtype: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__nREPACKAGE_OPTIONS__type, SDAIDefinedType
where Supertype: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__nREPACKAGE_OPTIONS__type
{}

