/* file: list_of_reversible_topology_item.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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
  TYPE list_of_reversible_topology_item = LIST [0 : ?] OF reversible_topology_item;
  END_TYPE; -- list_of_reversible_topology_item (line:3972 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

//MARK: - Defined data type (named aggregate type)

/** Defined data type (named aggregate type)
- EXPRESS:
```express
  TYPE list_of_reversible_topology_item = LIST [0 : ?] OF reversible_topology_item;
  END_TYPE; -- list_of_reversible_topology_item (line:3972 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public struct tLIST_OF_REVERSIBLE_TOPOLOGY_ITEM: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tLIST_OF_REVERSIBLE_TOPOLOGY_ITEM__type {
    public typealias Supertype = SDAI.LIST<sREVERSIBLE_TOPOLOGY_ITEM>/*[0:nil]*/ 
    public typealias FundamentalType = Supertype.FundamentalType
    public typealias Value = Supertype.Value
    public typealias SwiftType = Supertype.SwiftType
    public typealias ELEMENT = Supertype.ELEMENT
    public func makeIterator() -> FundamentalType.Iterator { return self.asFundamentalType.makeIterator() }
    public static var typeName: String = 
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.LIST_OF_REVERSIBLE_TOPOLOGY_ITEM"
    public static var bareTypeName: String = "LIST_OF_REVERSIBLE_TOPOLOGY_ITEM"
    public var typeMembers: Set<SDAI.STRING> {
      var members = rep.typeMembers
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sREVERSIBLE_TOPOLOGY.typeName)) // -> Self
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
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tLIST_OF_REVERSIBLE_TOPOLOGY_ITEM__type: 
  SDAIObservableAggregate, SDAI__LIST__subtype {}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tLIST_OF_REVERSIBLE_TOPOLOGY_ITEM__subtype: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tLIST_OF_REVERSIBLE_TOPOLOGY_ITEM__type
{}
