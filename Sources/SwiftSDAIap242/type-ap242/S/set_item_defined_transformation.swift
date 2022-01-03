/* file: set_item_defined_transformation.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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
  TYPE set_item_defined_transformation = SET [2 : ?] OF item_defined_transformation;
  END_TYPE; -- set_item_defined_transformation (line:5310 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

//MARK: - Defined data type (named aggregate type)

/** Defined data type (named aggregate type)
- EXPRESS:
```express
  TYPE set_item_defined_transformation = SET [2 : ?] OF item_defined_transformation;
  END_TYPE; -- set_item_defined_transformation (line:5310 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public struct tSET_ITEM_DEFINED_TRANSFORMATION: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tSET_ITEM_DEFINED_TRANSFORMATION__type {
    public typealias Supertype = SDAI.SET<eITEM_DEFINED_TRANSFORMATION>/*[2:nil]*/ 
    public typealias FundamentalType = Supertype.FundamentalType
    public typealias Value = Supertype.Value
    public typealias SwiftType = Supertype.SwiftType
    public typealias ELEMENT = Supertype.ELEMENT
    public func makeIterator() -> FundamentalType.Iterator { return self.asFundamentalType.makeIterator() }
    public static var typeName: String = 
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SET_ITEM_DEFINED_TRANSFORMATION"
    public static var bareTypeName: String = "SET_ITEM_DEFINED_TRANSFORMATION"
    public var typeMembers: Set<SDAI.STRING> {
      var members = rep.typeMembers
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sTRANSFORMATION.typeName)) // -> Self
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
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tSET_ITEM_DEFINED_TRANSFORMATION__type: 
  SDAIObservableAggregate, SDAI__SET__subtype {}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tSET_ITEM_DEFINED_TRANSFORMATION__subtype: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tSET_ITEM_DEFINED_TRANSFORMATION__type
{}
