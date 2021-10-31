/* file: set_inner_area_boundary.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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
  TYPE set_inner_area_boundary = SET [1 : ?] OF bounded_primitive_2d;
  END_TYPE; -- set_inner_area_boundary (line:5292 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

//MARK: - Defined data type (named aggregate type)

/** Defined data type (named aggregate type)
- EXPRESS:
```express
  TYPE set_inner_area_boundary = SET [1 : ?] OF bounded_primitive_2d;
  END_TYPE; -- set_inner_area_boundary (line:5292 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public struct tSET_INNER_AREA_BOUNDARY: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tSET_INNER_AREA_BOUNDARY__type {
    public typealias Supertype = SDAI.SET<sBOUNDED_PRIMITIVE_2D>/*[1:nil]*/ 
    public typealias FundamentalType = Supertype.FundamentalType
    public typealias Value = Supertype.Value
    public typealias SwiftType = Supertype.SwiftType
    public typealias ELEMENT = Supertype.ELEMENT
    public func makeIterator() -> FundamentalType.Iterator { return self.asFundamentalType.makeIterator() }
    public static var typeName: String = 
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SET_INNER_AREA_BOUNDARY"
    public static var bareTypeName: String = "SET_INNER_AREA_BOUNDARY"
    public var typeMembers: Set<SDAI.STRING> {
      var members = rep.typeMembers
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sCOMPOUND_INNER_AREA_BOUNDARY.typeName)) // -> Self
      return members
    }

    public var rep: Supertype

    public init(fundamental: FundamentalType) {
      rep = Supertype(fundamental: fundamental)
    }

    public init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let repval = generic?.setValue(elementType: ELEMENT.self) else { return nil }
      rep = repval
    }
  }
}


//MARK: - DEFINED TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tSET_INNER_AREA_BOUNDARY__type: 
  SDAIObservableAggregate, SDAI__SET__subtype {}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tSET_INNER_AREA_BOUNDARY__subtype: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tSET_INNER_AREA_BOUNDARY__type
{}
