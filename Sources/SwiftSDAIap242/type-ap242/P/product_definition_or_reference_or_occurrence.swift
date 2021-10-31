/* file: product_definition_or_reference_or_occurrence.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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
  TYPE product_definition_or_reference_or_occurrence = product_definition_or_reference;
  END_TYPE; -- product_definition_or_reference_or_occurrence (line:4947 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

//MARK: - Defined data type (type alias)

/** Defined data type (type alias)
- EXPRESS:
```express
  TYPE product_definition_or_reference_or_occurrence = product_definition_or_reference;
  END_TYPE; -- product_definition_or_reference_or_occurrence (line:4947 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public struct sPRODUCT_DEFINITION_OR_REFERENCE_OR_OCCURRENCE: 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sPRODUCT_DEFINITION_OR_REFERENCE_OR_OCCURRENCE__type {
    public typealias Supertype = sPRODUCT_DEFINITION_OR_REFERENCE
    public typealias FundamentalType = Supertype.FundamentalType
    public typealias Value = Supertype.Value
    public static var typeName: String = 
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT_DEFINITION_OR_REFERENCE_OR_OCCURRENCE"
    public static var bareTypeName: String = "PRODUCT_DEFINITION_OR_REFERENCE_OR_OCCURRENCE"
    public var typeMembers: Set<SDAI.STRING> {
      var members = rep.typeMembers
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sA3MS_INSPECTED_EQUIVALENCE_ELEMENT_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sEQUIVALENCE_DETECTED_DIFFERENCE_SELECT.typeName)) // -> sA3MS_INSPECTED_EQUIVALENCE_ELEMENT_SELECT
      members.insert(SDAI.STRING(sEQUIVALENCE_PRODUCT_DATA_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sINSPECTED_EQUIVALENCE_ELEMENT_SELECT.typeName)) // -> Self
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
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sPRODUCT_DEFINITION_OR_REFERENCE_OR_OCCURRENCE__type: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sPRODUCT_DEFINITION_OR_REFERENCE__subtype {}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sPRODUCT_DEFINITION_OR_REFERENCE_OR_OCCURRENCE__subtype: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sPRODUCT_DEFINITION_OR_REFERENCE_OR_OCCURRENCE__type
{}
