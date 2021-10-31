/* file: angular_deviation.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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
  TYPE angular_deviation = positive_plane_angle_measure;
  END_TYPE; -- angular_deviation (line:613 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

//MARK: - Defined data type (type alias)

/** Defined data type (type alias)
- EXPRESS:
```express
  TYPE angular_deviation = positive_plane_angle_measure;
  END_TYPE; -- angular_deviation (line:613 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public struct tANGULAR_DEVIATION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tANGULAR_DEVIATION__type {
    public typealias Supertype = tPOSITIVE_PLANE_ANGLE_MEASURE
    public typealias FundamentalType = Supertype.FundamentalType
    public typealias Value = Supertype.Value
    public typealias SwiftType = Supertype.SwiftType
    public static var typeName: String = "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ANGULAR_DEVIATION"
    public static var bareTypeName: String = "ANGULAR_DEVIATION"
    public var typeMembers: Set<SDAI.STRING> {
      var members = rep.typeMembers
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sBOX_CHARACTERISTIC_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sTRIM_CONDITION_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sMEASURE_VALUE.typeName)) // -> Self
      members.insert(SDAI.STRING(sMEASURED_VALUE_SELECT.typeName)) // -> sMEASURE_VALUE
      members.insert(SDAI.STRING(sEQUIVALENCE_MEASURED_VALUE_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sTESSELLATION_ACCURACY_PARAMETER_ITEM.typeName)) // -> Self
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
  }
}


//MARK: - DEFINED TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tANGULAR_DEVIATION__type: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tPOSITIVE_PLANE_ANGLE_MEASURE__subtype {}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tANGULAR_DEVIATION__subtype: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tANGULAR_DEVIATION__type
{}
