/* file: year_number.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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
  TYPE year_number = INTEGER;
  WHERE
    wr1: ( SELF > 1581 );
  END_TYPE; -- year_number (line:5998 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

//MARK: - Defined data type (named simple type)

/** Defined data type (named simple type)
- EXPRESS:
```express
  TYPE year_number = INTEGER;
  WHERE
    wr1: ( SELF > 1581 );
  END_TYPE; -- year_number (line:5998 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public struct tYEAR_NUMBER: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tYEAR_NUMBER__type {
    public typealias Supertype = SDAI.INTEGER
    public typealias FundamentalType = Supertype.FundamentalType
    public typealias Value = Supertype.Value
    public typealias SwiftType = Supertype.SwiftType
    public static var typeName: String = "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.YEAR_NUMBER"
    public static var bareTypeName: String = "YEAR_NUMBER"
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
    public static func WHERE_wr1(SELF: tYEAR_NUMBER?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.FORCE_OPTIONAL(SELF) > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1581))
      return _TEMP1
    }

    //WHERE RULE VALIDATION (DEFINED TYPE)
    public static func validateWhereRules(instance:Self?, prefix:SDAI.WhereLabel) -> [SDAI.WhereLabel:SDAI.LOGICAL] {
      let prefix2 = prefix + "\\tYEAR_NUMBER"
      var result = Supertype.validateWhereRules(instance:instance?.rep, prefix:prefix2)

      result[prefix2 + ".WHERE_wr1"] = tYEAR_NUMBER.WHERE_wr1(SELF: instance)
      return result
    }

  }
}


//MARK: - DEFINED TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tYEAR_NUMBER__type: 
  SDAI__INTEGER__subtype {}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tYEAR_NUMBER__subtype: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tYEAR_NUMBER__type
{}
