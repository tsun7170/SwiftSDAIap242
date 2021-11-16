/* file: a3ms_detected_difference_type_name.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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
  TYPE a3ms_detected_difference_type_name = a3m_detected_difference_type_name;
  END_TYPE; -- a3ms_detected_difference_type_name (line:232 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

//MARK: - Defined data type (type alias)

/** Defined data type (type alias)
- EXPRESS:
```express
  TYPE a3ms_detected_difference_type_name = a3m_detected_difference_type_name;
  END_TYPE; -- a3ms_detected_difference_type_name (line:232 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public struct nA3MS_DETECTED_DIFFERENCE_TYPE_NAME: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__nA3MS_DETECTED_DIFFERENCE_TYPE_NAME__type {
    public typealias Supertype = nA3M_DETECTED_DIFFERENCE_TYPE_NAME
    public typealias FundamentalType = Supertype.FundamentalType
    public typealias Value = Supertype.Value
    public static var typeName: String = 
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.A3MS_DETECTED_DIFFERENCE_TYPE_NAME"
    public static var bareTypeName: String = "A3MS_DETECTED_DIFFERENCE_TYPE_NAME"
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
  }
}


//MARK: - DEFINED TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__nA3MS_DETECTED_DIFFERENCE_TYPE_NAME__type: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__nA3M_DETECTED_DIFFERENCE_TYPE_NAME__subtype {}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__nA3MS_DETECTED_DIFFERENCE_TYPE_NAME__subtype: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__nA3MS_DETECTED_DIFFERENCE_TYPE_NAME__type
{}
