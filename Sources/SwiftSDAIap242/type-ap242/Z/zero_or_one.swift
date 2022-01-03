/* file: zero_or_one.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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
  TYPE zero_or_one = nonnegative_integer;
  WHERE
    in_range: ( ( SELF = 0 ) OR ( SELF = 1 ) );
  END_TYPE; -- zero_or_one (line:6012 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

//MARK: - Defined data type (type alias)

/** Defined data type (type alias)
- EXPRESS:
```express
  TYPE zero_or_one = nonnegative_integer;
  WHERE
    in_range: ( ( SELF = 0 ) OR ( SELF = 1 ) );
  END_TYPE; -- zero_or_one (line:6012 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public struct tZERO_OR_ONE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tZERO_OR_ONE__type {
    public typealias Supertype = tNONNEGATIVE_INTEGER
    public typealias FundamentalType = Supertype.FundamentalType
    public typealias Value = Supertype.Value
    public typealias SwiftType = Supertype.SwiftType
    public static var typeName: String = "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ZERO_OR_ONE"
    public static var bareTypeName: String = "ZERO_OR_ONE"
    public var typeMembers: Set<SDAI.STRING> {
      var members = rep.typeMembers
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }

    public var rep: Supertype
    public init(fundamental: FundamentalType) {
      rep = Supertype(fundamental: fundamental)
    }

    public init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let repval = Supertype.convert(fromGeneric: generic) else { return nil }
      rep = repval
    }

    //MARK: WHERE RULES (DEFINED TYPE)
    public static func WHERE_in_range(SELF: tZERO_OR_ONE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.FORCE_OPTIONAL(SELF) .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      let _TEMP2 = SDAI.FORCE_OPTIONAL(SELF) .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      let _TEMP3 = _TEMP1 || _TEMP2
      return _TEMP3
    }

    //WHERE RULE VALIDATION (DEFINED TYPE)
    public static func validateWhereRules(instance:Self?, prefix:SDAI.WhereLabel) -> [SDAI.WhereLabel:SDAI.LOGICAL] {
      let prefix2 = prefix + "\\tZERO_OR_ONE"
      var result = Supertype.validateWhereRules(instance:instance?.rep, prefix:prefix2)

      result[prefix2 + ".WHERE_in_range"] = tZERO_OR_ONE.WHERE_in_range(SELF: instance)
      return result
    }

  }
}


//MARK: - DEFINED TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tZERO_OR_ONE__type: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tNONNEGATIVE_INTEGER__subtype {}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tZERO_OR_ONE__subtype: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tZERO_OR_ONE__type
{}
