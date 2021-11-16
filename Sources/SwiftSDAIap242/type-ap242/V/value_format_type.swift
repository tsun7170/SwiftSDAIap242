/* file: value_format_type.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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
  TYPE value_format_type = identifier;
  WHERE
    wr1: ( LENGTH( SELF ) <= 80 );
  END_TYPE; -- value_format_type (line:5964 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

//MARK: - Defined data type (type alias)

/** Defined data type (type alias)
- EXPRESS:
```express
  TYPE value_format_type = identifier;
  WHERE
    wr1: ( LENGTH( SELF ) <= 80 );
  END_TYPE; -- value_format_type (line:5964 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public struct tVALUE_FORMAT_TYPE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tVALUE_FORMAT_TYPE__type {
    public typealias Supertype = tIDENTIFIER
    public typealias FundamentalType = Supertype.FundamentalType
    public typealias Value = Supertype.Value
    public typealias SwiftType = Supertype.SwiftType
    public static var typeName: String = "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.VALUE_FORMAT_TYPE"
    public static var bareTypeName: String = "VALUE_FORMAT_TYPE"
    public var typeMembers: Set<SDAI.STRING> {
      var members = rep.typeMembers
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sSOURCE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sINTERNAL_OR_REFLECTED_SHAPE_ASPECT.typeName)) // -> Self
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
    public static func WHERE_wr1(SELF: tVALUE_FORMAT_TYPE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.LENGTH(SELF)
      let _TEMP2 = _TEMP1 <= SDAI.FORCE_OPTIONAL(SDAI.INTEGER(80))
      return _TEMP2
    }

    //WHERE RULE VALIDATION (DEFINED TYPE)
    public static func validateWhereRules(instance:Self?, prefix:SDAI.WhereLabel) -> [SDAI.WhereLabel:SDAI.LOGICAL] {
      let prefix2 = prefix + "\\tVALUE_FORMAT_TYPE"
      var result = Supertype.validateWhereRules(instance:instance?.rep, prefix:prefix2)

      result[prefix2 + ".WHERE_wr1"] = tVALUE_FORMAT_TYPE.WHERE_wr1(SELF: instance)
      return result
    }

  }
}


//MARK: - DEFINED TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tVALUE_FORMAT_TYPE__type: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tIDENTIFIER__subtype {}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tVALUE_FORMAT_TYPE__subtype: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tVALUE_FORMAT_TYPE__type
{}
