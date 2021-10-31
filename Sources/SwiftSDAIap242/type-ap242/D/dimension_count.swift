/* file: dimension_count.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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
  TYPE dimension_count = INTEGER;
  WHERE
    wr1: ( SELF > 0 );
  END_TYPE; -- dimension_count (line:2329 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

//MARK: - Defined data type (named simple type)

/** Defined data type (named simple type)
- EXPRESS:
```express
  TYPE dimension_count = INTEGER;
  WHERE
    wr1: ( SELF > 0 );
  END_TYPE; -- dimension_count (line:2329 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public struct tDIMENSION_COUNT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tDIMENSION_COUNT__type {
    public typealias Supertype = SDAI.INTEGER
    public typealias FundamentalType = Supertype.FundamentalType
    public typealias Value = Supertype.Value
    public typealias SwiftType = Supertype.SwiftType
    public static var typeName: String = "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DIMENSION_COUNT"
    public static var bareTypeName: String = "DIMENSION_COUNT"
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
      guard let repval = generic?.integerValue else { return nil }
      rep = repval
    }

    //MARK: WHERE RULES (DEFINED TYPE)
    public static func WHERE_wr1(SELF: tDIMENSION_COUNT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.FORCE_OPTIONAL(SELF) > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP1
    }

    //WHERE RULE VALIDATION (DEFINED TYPE)
    public static func validateWhereRules(instance:Self?, prefix:SDAI.WhereLabel) -> [SDAI.WhereLabel:SDAI.LOGICAL] {
      let prefix2 = prefix + "\\tDIMENSION_COUNT"
      var result = Supertype.validateWhereRules(instance:instance?.rep, prefix:prefix2)

      result[prefix2 + ".WHERE_wr1"] = tDIMENSION_COUNT.WHERE_wr1(SELF: instance)
      return result
    }

  }
}


//MARK: - DEFINED TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tDIMENSION_COUNT__type: 
  SDAI__INTEGER__subtype {}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tDIMENSION_COUNT__subtype: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tDIMENSION_COUNT__type
{}
