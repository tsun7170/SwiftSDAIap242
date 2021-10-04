/* file: location_in_aggregate_item.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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
  TYPE location_in_aggregate_item = LIST [1 : ?] OF integer_representation_item;
  END_TYPE; -- location_in_aggregate_item (line:3986 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

//MARK: - Defined data type (named aggregate type)

/** Defined data type (named aggregate type)
- EXPRESS:
```express
  TYPE location_in_aggregate_item = LIST [1 : ?] OF integer_representation_item;
  END_TYPE; -- location_in_aggregate_item (line:3986 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public struct tLOCATION_IN_AGGREGATE_ITEM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tLOCATION_IN_AGGREGATE_ITEM__type {
    public typealias Supertype = SDAI.LIST<eINTEGER_REPRESENTATION_ITEM>/*[1:nil]*/ 
    public typealias FundamentalType = Supertype.FundamentalType
    public typealias Value = Supertype.Value
    public typealias SwiftType = Supertype.SwiftType
    public typealias ELEMENT = Supertype.ELEMENT
    public func makeIterator() -> FundamentalType.Iterator { return self.asFundamentalType.makeIterator() }
    public static var typeName: String = 
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.LOCATION_IN_AGGREGATE_ITEM"
    public static var bareTypeName: String = "LOCATION_IN_AGGREGATE_ITEM"
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
      guard let repval = generic?.listValue(elementType: ELEMENT.self) else { return nil }
      rep = repval
    }
  }
}


//MARK: - DEFINED TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tLOCATION_IN_AGGREGATE_ITEM__type: 
  SDAIObservableAggregate, SDAI__LIST__subtype {}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tLOCATION_IN_AGGREGATE_ITEM__subtype: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tLOCATION_IN_AGGREGATE_ITEM__type
{}
