/* file: maths_string.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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
  TYPE maths_string = STRING;
  END_TYPE; -- maths_string (line:4152 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

//MARK: - Defined data type (named simple type)

/** Defined data type (named simple type)
- EXPRESS:
```express
  TYPE maths_string = STRING;
  END_TYPE; -- maths_string (line:4152 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public struct tMATHS_STRING: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tMATHS_STRING__type {
    public typealias Supertype = SDAI.STRING
    public typealias FundamentalType = Supertype.FundamentalType
    public typealias Value = Supertype.Value
    public typealias SwiftType = Supertype.SwiftType
    public static var typeName: String = "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.MATHS_STRING"
    public static var bareTypeName: String = "MATHS_STRING"
    public var typeMembers: Set<SDAI.STRING> {
      var members = rep.typeMembers
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sMATHS_SIMPLE_ATOM.typeName)) // -> Self
      members.insert(SDAI.STRING(sMATHS_ATOM.typeName)) // -> sMATHS_SIMPLE_ATOM
      members.insert(SDAI.STRING(sATOM_BASED_VALUE.typeName)) // -> sMATHS_ATOM
      members.insert(SDAI.STRING(sMATHS_VALUE.typeName)) // -> sATOM_BASED_VALUE
      members.insert(SDAI.STRING(sMATHS_EXPRESSION.typeName)) // -> sATOM_BASED_VALUE
      return members
    }

    public var rep: Supertype

    public init(fundamental: FundamentalType) {
      rep = Supertype(fundamental: fundamental)
    }

    public init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let repval = generic?.stringValue else { return nil }
      rep = repval
    }
  }
}


//MARK: - DEFINED TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tMATHS_STRING__type: 
  SDAI__STRING__subtype {}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tMATHS_STRING__subtype: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tMATHS_STRING__type
{}
