/* file: ir_usage_item.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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
  TYPE ir_usage_item = action_items;
  END_TYPE; -- ir_usage_item (line:3869 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

//MARK: - Defined data type (type alias)

/** Defined data type (type alias)
- EXPRESS:
```express
  TYPE ir_usage_item = action_items;
  END_TYPE; -- ir_usage_item (line:3869 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public struct sIR_USAGE_ITEM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sIR_USAGE_ITEM__type {
    public typealias Supertype = sACTION_ITEMS
    public typealias FundamentalType = Supertype.FundamentalType
    public typealias Value = Supertype.Value
    public static var typeName: String = "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.IR_USAGE_ITEM"
    public static var bareTypeName: String = "IR_USAGE_ITEM"
    public var typeMembers: Set<SDAI.STRING> {
      var members = rep.typeMembers
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sCHANGE_MANAGEMENT_OBJECT.typeName)) // -> Self
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
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sIR_USAGE_ITEM__type: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sACTION_ITEMS__subtype {}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sIR_USAGE_ITEM__subtype: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sIR_USAGE_ITEM__type
{}
