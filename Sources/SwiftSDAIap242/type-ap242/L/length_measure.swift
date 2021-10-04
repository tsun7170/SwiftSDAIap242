/* file: length_measure.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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
  TYPE length_measure = REAL;
  END_TYPE; -- length_measure (line:3934 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

//MARK: - Defined data type (named simple type)

/** Defined data type (named simple type)
- EXPRESS:
```express
  TYPE length_measure = REAL;
  END_TYPE; -- length_measure (line:3934 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public struct tLENGTH_MEASURE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tLENGTH_MEASURE__type {
    public typealias Supertype = SDAI.REAL
    public typealias FundamentalType = Supertype.FundamentalType
    public typealias Value = Supertype.Value
    public typealias SwiftType = Supertype.SwiftType
    public static var typeName: String = "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.LENGTH_MEASURE"
    public static var bareTypeName: String = "LENGTH_MEASURE"
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
      guard let repval = generic?.realValue else { return nil }
      rep = repval
    }
  }
}


//MARK: - DEFINED TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tLENGTH_MEASURE__type: 
  SDAI__REAL__subtype {}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tLENGTH_MEASURE__subtype: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tLENGTH_MEASURE__type
{}
