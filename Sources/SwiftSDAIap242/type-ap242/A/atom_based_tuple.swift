/* file: atom_based_tuple.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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
  TYPE atom_based_tuple = LIST OF atom_based_value;
  END_TYPE; -- atom_based_tuple (line:854 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

//MARK: - Defined data type (named aggregate type)

/** Defined data type (named aggregate type)
- EXPRESS:
```express
  TYPE atom_based_tuple = LIST OF atom_based_value;
  END_TYPE; -- atom_based_tuple (line:854 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public struct tATOM_BASED_TUPLE: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tATOM_BASED_TUPLE__type {
    public typealias Supertype = SDAI.LIST<sATOM_BASED_VALUE>
    public typealias FundamentalType = Supertype.FundamentalType
    public typealias Value = Supertype.Value
    public typealias SwiftType = Supertype.SwiftType
    public typealias ELEMENT = Supertype.ELEMENT
    public func makeIterator() -> FundamentalType.Iterator { return self.asFundamentalType.makeIterator() }
    public static var typeName: String = "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ATOM_BASED_TUPLE"
    public static var bareTypeName: String = "ATOM_BASED_TUPLE"
    public var typeMembers: Set<SDAI.STRING> {
      var members = rep.typeMembers
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sATOM_BASED_VALUE.typeName)) // -> Self
      members.insert(SDAI.STRING(sMATHS_VALUE.typeName)) // -> sATOM_BASED_VALUE
      members.insert(SDAI.STRING(sMATHS_EXPRESSION.typeName)) // -> sATOM_BASED_VALUE
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
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tATOM_BASED_TUPLE__type: 
  SDAIObservableAggregate, SDAI__LIST__subtype {}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tATOM_BASED_TUPLE__subtype: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__tATOM_BASED_TUPLE__type
{}
