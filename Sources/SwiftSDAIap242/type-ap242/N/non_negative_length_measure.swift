/* file: non_negative_length_measure.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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
  TYPE non_negative_length_measure = length_measure;
  WHERE
    wr1: ( SELF >= 0 );
  END_TYPE; -- non_negative_length_measure (line:4506 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

//MARK: - Defined data type (type alias)

/** Defined data type (type alias)
- EXPRESS:
```express
  TYPE non_negative_length_measure = length_measure;
  WHERE
    wr1: ( SELF >= 0 );
  END_TYPE; -- non_negative_length_measure (line:4506 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public struct tNON_NEGATIVE_LENGTH_MEASURE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tNON_NEGATIVE_LENGTH_MEASURE__type {
    public typealias Supertype = tLENGTH_MEASURE
    public typealias FundamentalType = Supertype.FundamentalType
    public typealias Value = Supertype.Value
    public typealias SwiftType = Supertype.SwiftType
    public static var typeName: String = 
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.NON_NEGATIVE_LENGTH_MEASURE"
    public static var bareTypeName: String = "NON_NEGATIVE_LENGTH_MEASURE"
    public var typeMembers: Set<SDAI.STRING> {
      var members = rep.typeMembers
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sSIZE_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sCHARACTER_SPACING_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sTRIM_CONDITION_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sMEASURE_VALUE.typeName)) // -> Self
      members.insert(SDAI.STRING(sMEASURED_VALUE_SELECT.typeName)) // -> sMEASURE_VALUE
      members.insert(SDAI.STRING(sEQUIVALENCE_MEASURED_VALUE_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sTESSELLATION_ACCURACY_PARAMETER_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sEQUIVALENCE_DETECTED_DIFFERENCE_SELECT.typeName)) // -> Self
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
    public static func WHERE_wr1(SELF: tNON_NEGATIVE_LENGTH_MEASURE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.FORCE_OPTIONAL(SELF) >= SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP1
    }

    //WHERE RULE VALIDATION (DEFINED TYPE)
    public static func validateWhereRules(instance:Self?, prefix:SDAI.WhereLabel) -> [SDAI.WhereLabel:SDAI.LOGICAL] {
      let prefix2 = prefix + "\\tNON_NEGATIVE_LENGTH_MEASURE"
      var result = Supertype.validateWhereRules(instance:instance?.rep, prefix:prefix2)

      result[prefix2 + ".WHERE_wr1"] = tNON_NEGATIVE_LENGTH_MEASURE.WHERE_wr1(SELF: instance)
      return result
    }

  }
}


//MARK: - DEFINED TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tNON_NEGATIVE_LENGTH_MEASURE__type: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tLENGTH_MEASURE__subtype {}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tNON_NEGATIVE_LENGTH_MEASURE__subtype: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tNON_NEGATIVE_LENGTH_MEASURE__type
{}
