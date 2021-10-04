/* file: inspected_ecdq_element_select.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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
  TYPE inspected_ecdq_element_select = inspected_element_select;
  WHERE
    wr1 : ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.B_SPLINE_OR_COMPOSITE_CURVE_SELECT' IN 
              TYPEOF( SELF ) ) );
    wr2 : ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
              + 'B_SPLINE_OR_RECTANGULAR_COMPOSITE_SURFACE_SELECT'  IN TYPEOF( SELF ) ) );
    wr3 : ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CLOSED_OR_OPEN_SHELL_SELECT' IN TYPEOF( 
              SELF ) ) );
    wr4 : ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CONNECTED_FACE_SET' IN TYPEOF( SELF ) ) );
    wr5 : ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CURVE' IN TYPEOF( SELF ) ) );
    wr6 : ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DIRECTION' IN TYPEOF( SELF ) ) );
    wr7 : ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.EDGE_CURVE' IN TYPEOF( SELF ) ) );
    wr8 : ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.EDGE_LOOP' IN TYPEOF( SELF ) ) );
    wr9 : ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.FACE_SURFACE' IN TYPEOF( SELF ) ) );
    wr10: ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.MANIFOLD_SOLID_BREP' IN TYPEOF( SELF ) ) );
    wr11: ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PLACEMENT' IN TYPEOF( SELF ) ) );
    wr12: ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.POINT' IN TYPEOF( SELF ) ) );
    wr13: ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SURFACE' IN TYPEOF( SELF ) ) );
    wr14: ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.VERTEX_POINT' IN TYPEOF( SELF ) ) );
  END_TYPE; -- inspected_ecdq_element_select (line:3752 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

//MARK: - Defined data type (type alias)

/** Defined data type (type alias)
- EXPRESS:
```express
  TYPE inspected_ecdq_element_select = inspected_element_select;
  WHERE
    wr1 : ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.B_SPLINE_OR_COMPOSITE_CURVE_SELECT' IN 
              TYPEOF( SELF ) ) );
    wr2 : ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
              + 'B_SPLINE_OR_RECTANGULAR_COMPOSITE_SURFACE_SELECT'  IN TYPEOF( SELF ) ) );
    wr3 : ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CLOSED_OR_OPEN_SHELL_SELECT' IN TYPEOF( 
              SELF ) ) );
    wr4 : ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CONNECTED_FACE_SET' IN TYPEOF( SELF ) ) );
    wr5 : ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CURVE' IN TYPEOF( SELF ) ) );
    wr6 : ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DIRECTION' IN TYPEOF( SELF ) ) );
    wr7 : ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.EDGE_CURVE' IN TYPEOF( SELF ) ) );
    wr8 : ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.EDGE_LOOP' IN TYPEOF( SELF ) ) );
    wr9 : ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.FACE_SURFACE' IN TYPEOF( SELF ) ) );
    wr10: ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.MANIFOLD_SOLID_BREP' IN TYPEOF( SELF ) ) );
    wr11: ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PLACEMENT' IN TYPEOF( SELF ) ) );
    wr12: ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.POINT' IN TYPEOF( SELF ) ) );
    wr13: ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SURFACE' IN TYPEOF( SELF ) ) );
    wr14: ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.VERTEX_POINT' IN TYPEOF( SELF ) ) );
  END_TYPE; -- inspected_ecdq_element_select (line:3752 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public struct sINSPECTED_ECDQ_ELEMENT_SELECT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sINSPECTED_ECDQ_ELEMENT_SELECT__type {
    public typealias Supertype = sINSPECTED_ELEMENT_SELECT
    public typealias FundamentalType = Supertype.FundamentalType
    public typealias Value = Supertype.Value
    public static var typeName: String = 
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.INSPECTED_ECDQ_ELEMENT_SELECT"
    public static var bareTypeName: String = "INSPECTED_ECDQ_ELEMENT_SELECT"
    public var typeMembers: Set<SDAI.STRING> {
      var members = rep.typeMembers
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sLOCATION_OF_EXTREME_VALUE_SELECT.typeName)) // -> Self
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

    //MARK: WHERE RULES (DEFINED TYPE)
    public static func WHERE_wr1(SELF: sINSPECTED_ECDQ_ELEMENT_SELECT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF, IS: sB_SPLINE_OR_COMPOSITE_CURVE_SELECT.self)
      let _TEMP2 =  !_TEMP1
      return _TEMP2
    }
    public static func WHERE_wr2(SELF: sINSPECTED_ECDQ_ELEMENT_SELECT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF, IS: sB_SPLINE_OR_RECTANGULAR_COMPOSITE_SURFACE_SELECT.self)
      let _TEMP2 =  !_TEMP1
      return _TEMP2
    }
    public static func WHERE_wr3(SELF: sINSPECTED_ECDQ_ELEMENT_SELECT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF, IS: sCLOSED_OR_OPEN_SHELL_SELECT.self)
      let _TEMP2 =  !_TEMP1
      return _TEMP2
    }
    public static func WHERE_wr4(SELF: sINSPECTED_ECDQ_ELEMENT_SELECT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF, IS: eCONNECTED_FACE_SET.self)
      let _TEMP2 =  !_TEMP1
      return _TEMP2
    }
    public static func WHERE_wr5(SELF: sINSPECTED_ECDQ_ELEMENT_SELECT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF, IS: eCURVE.self)
      let _TEMP2 =  !_TEMP1
      return _TEMP2
    }
    public static func WHERE_wr6(SELF: sINSPECTED_ECDQ_ELEMENT_SELECT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF, IS: eDIRECTION.self)
      let _TEMP2 =  !_TEMP1
      return _TEMP2
    }
    public static func WHERE_wr7(SELF: sINSPECTED_ECDQ_ELEMENT_SELECT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF, IS: eEDGE_CURVE.self)
      let _TEMP2 =  !_TEMP1
      return _TEMP2
    }
    public static func WHERE_wr8(SELF: sINSPECTED_ECDQ_ELEMENT_SELECT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF, IS: eEDGE_LOOP.self)
      let _TEMP2 =  !_TEMP1
      return _TEMP2
    }
    public static func WHERE_wr9(SELF: sINSPECTED_ECDQ_ELEMENT_SELECT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF, IS: eFACE_SURFACE.self)
      let _TEMP2 =  !_TEMP1
      return _TEMP2
    }
    public static func WHERE_wr10(SELF: sINSPECTED_ECDQ_ELEMENT_SELECT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF, IS: eMANIFOLD_SOLID_BREP.self)
      let _TEMP2 =  !_TEMP1
      return _TEMP2
    }
    public static func WHERE_wr11(SELF: sINSPECTED_ECDQ_ELEMENT_SELECT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF, IS: ePLACEMENT.self)
      let _TEMP2 =  !_TEMP1
      return _TEMP2
    }
    public static func WHERE_wr12(SELF: sINSPECTED_ECDQ_ELEMENT_SELECT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF, IS: ePOINT.self)
      let _TEMP2 =  !_TEMP1
      return _TEMP2
    }
    public static func WHERE_wr13(SELF: sINSPECTED_ECDQ_ELEMENT_SELECT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF, IS: eSURFACE.self)
      let _TEMP2 =  !_TEMP1
      return _TEMP2
    }
    public static func WHERE_wr14(SELF: sINSPECTED_ECDQ_ELEMENT_SELECT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF, IS: eVERTEX_POINT.self)
      let _TEMP2 =  !_TEMP1
      return _TEMP2
    }

    //WHERE RULE VALIDATION (DEFINED TYPE)
    public static func validateWhereRules(instance:Self?, prefix:SDAI.WhereLabel) -> [SDAI.WhereLabel:SDAI.LOGICAL] {
      let prefix2 = prefix + "\\sINSPECTED_ECDQ_ELEMENT_SELECT"
      var result = Supertype.validateWhereRules(instance:instance?.rep, prefix:prefix2)

      result[prefix2 + ".WHERE_wr1"] = sINSPECTED_ECDQ_ELEMENT_SELECT.WHERE_wr1(SELF: instance)
      result[prefix2 + ".WHERE_wr2"] = sINSPECTED_ECDQ_ELEMENT_SELECT.WHERE_wr2(SELF: instance)
      result[prefix2 + ".WHERE_wr3"] = sINSPECTED_ECDQ_ELEMENT_SELECT.WHERE_wr3(SELF: instance)
      result[prefix2 + ".WHERE_wr4"] = sINSPECTED_ECDQ_ELEMENT_SELECT.WHERE_wr4(SELF: instance)
      result[prefix2 + ".WHERE_wr5"] = sINSPECTED_ECDQ_ELEMENT_SELECT.WHERE_wr5(SELF: instance)
      result[prefix2 + ".WHERE_wr6"] = sINSPECTED_ECDQ_ELEMENT_SELECT.WHERE_wr6(SELF: instance)
      result[prefix2 + ".WHERE_wr7"] = sINSPECTED_ECDQ_ELEMENT_SELECT.WHERE_wr7(SELF: instance)
      result[prefix2 + ".WHERE_wr8"] = sINSPECTED_ECDQ_ELEMENT_SELECT.WHERE_wr8(SELF: instance)
      result[prefix2 + ".WHERE_wr9"] = sINSPECTED_ECDQ_ELEMENT_SELECT.WHERE_wr9(SELF: instance)
      result[prefix2 + ".WHERE_wr10"] = sINSPECTED_ECDQ_ELEMENT_SELECT.WHERE_wr10(SELF: instance)
      result[prefix2 + ".WHERE_wr11"] = sINSPECTED_ECDQ_ELEMENT_SELECT.WHERE_wr11(SELF: instance)
      result[prefix2 + ".WHERE_wr12"] = sINSPECTED_ECDQ_ELEMENT_SELECT.WHERE_wr12(SELF: instance)
      result[prefix2 + ".WHERE_wr13"] = sINSPECTED_ECDQ_ELEMENT_SELECT.WHERE_wr13(SELF: instance)
      result[prefix2 + ".WHERE_wr14"] = sINSPECTED_ECDQ_ELEMENT_SELECT.WHERE_wr14(SELF: instance)
      return result
    }

  }
}


//MARK: - DEFINED TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sINSPECTED_ECDQ_ELEMENT_SELECT__type: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sINSPECTED_ELEMENT_SELECT__subtype {}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sINSPECTED_ECDQ_ELEMENT_SELECT__subtype: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sINSPECTED_ECDQ_ELEMENT_SELECT__type
{}
