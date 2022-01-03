/* file: box_width.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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
  TYPE box_width = positive_ratio_measure;
  END_TYPE; -- box_width (line:1218 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

//MARK: - Defined data type (type alias)

/** Defined data type (type alias)
- EXPRESS:
```express
  TYPE box_width = positive_ratio_measure;
  END_TYPE; -- box_width (line:1218 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public struct tBOX_WIDTH: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tBOX_WIDTH__type {
    public typealias Supertype = tPOSITIVE_RATIO_MEASURE
    public typealias FundamentalType = Supertype.FundamentalType
    public typealias Value = Supertype.Value
    public typealias SwiftType = Supertype.SwiftType
    public static var typeName: String = "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.BOX_WIDTH"
    public static var bareTypeName: String = "BOX_WIDTH"
    public var typeMembers: Set<SDAI.STRING> {
      var members = rep.typeMembers
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sCHARACTER_SPACING_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sBOX_CHARACTERISTIC_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sMEASURE_VALUE.typeName)) // -> Self
      members.insert(SDAI.STRING(sMEASURED_VALUE_SELECT.typeName)) // -> sMEASURE_VALUE
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
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tBOX_WIDTH__type: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tPOSITIVE_RATIO_MEASURE__subtype {}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tBOX_WIDTH__subtype: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tBOX_WIDTH__type
{}
