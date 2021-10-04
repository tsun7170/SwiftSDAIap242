/* file: inspected_shape_element_select.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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
  TYPE inspected_shape_element_select = inspected_element_select;
  WHERE
    wr1: ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ASSEMBLY_COMPONENT_USAGE' IN TYPEOF( SELF ) ) );
    wr2: ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.AXIS2_PLACEMENT_3D' IN TYPEOF( SELF ) ) );
    wr3: ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CARTESIAN_TRANSFORMATION_OPERATOR_3D' IN 
             TYPEOF( SELF ) ) );
    wr4: ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.GLOBAL_UNCERTAINTY_ASSIGNED_CONTEXT' IN 
             TYPEOF( SELF ) ) );
    wr5: ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.GLOBAL_UNIT_ASSIGNED_CONTEXT' IN TYPEOF( 
             SELF ) ) );
    wr6: ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.GROUP' IN TYPEOF( SELF ) ) );
    wr7: ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRESENTATION_LAYER_ASSIGNMENT' IN TYPEOF( 
             SELF ) ) );
    wr8: ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.REPRESENTATION_ITEM' IN TYPEOF( SELF ) ) );
    wr9: ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.STYLED_ITEM' IN TYPEOF( SELF ) ) );
  END_TYPE; -- inspected_shape_element_select (line:3809 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

//MARK: - Defined data type (type alias)

/** Defined data type (type alias)
- EXPRESS:
```express
  TYPE inspected_shape_element_select = inspected_element_select;
  WHERE
    wr1: ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ASSEMBLY_COMPONENT_USAGE' IN TYPEOF( SELF ) ) );
    wr2: ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.AXIS2_PLACEMENT_3D' IN TYPEOF( SELF ) ) );
    wr3: ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CARTESIAN_TRANSFORMATION_OPERATOR_3D' IN 
             TYPEOF( SELF ) ) );
    wr4: ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.GLOBAL_UNCERTAINTY_ASSIGNED_CONTEXT' IN 
             TYPEOF( SELF ) ) );
    wr5: ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.GLOBAL_UNIT_ASSIGNED_CONTEXT' IN TYPEOF( 
             SELF ) ) );
    wr6: ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.GROUP' IN TYPEOF( SELF ) ) );
    wr7: ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRESENTATION_LAYER_ASSIGNMENT' IN TYPEOF( 
             SELF ) ) );
    wr8: ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.REPRESENTATION_ITEM' IN TYPEOF( SELF ) ) );
    wr9: ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.STYLED_ITEM' IN TYPEOF( SELF ) ) );
  END_TYPE; -- inspected_shape_element_select (line:3809 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public struct sINSPECTED_SHAPE_ELEMENT_SELECT: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sINSPECTED_SHAPE_ELEMENT_SELECT__type {
    public typealias Supertype = sINSPECTED_ELEMENT_SELECT
    public typealias FundamentalType = Supertype.FundamentalType
    public typealias Value = Supertype.Value
    public static var typeName: String = 
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.INSPECTED_SHAPE_ELEMENT_SELECT"
    public static var bareTypeName: String = "INSPECTED_SHAPE_ELEMENT_SELECT"
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
    public static func WHERE_wr1(SELF: sINSPECTED_SHAPE_ELEMENT_SELECT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF, IS: eASSEMBLY_COMPONENT_USAGE.self)
      let _TEMP2 =  !_TEMP1
      return _TEMP2
    }
    public static func WHERE_wr2(SELF: sINSPECTED_SHAPE_ELEMENT_SELECT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF, IS: eAXIS2_PLACEMENT_3D.self)
      let _TEMP2 =  !_TEMP1
      return _TEMP2
    }
    public static func WHERE_wr3(SELF: sINSPECTED_SHAPE_ELEMENT_SELECT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF, IS: eCARTESIAN_TRANSFORMATION_OPERATOR_3D.self)
      let _TEMP2 =  !_TEMP1
      return _TEMP2
    }
    public static func WHERE_wr4(SELF: sINSPECTED_SHAPE_ELEMENT_SELECT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF, IS: eGLOBAL_UNCERTAINTY_ASSIGNED_CONTEXT.self)
      let _TEMP2 =  !_TEMP1
      return _TEMP2
    }
    public static func WHERE_wr5(SELF: sINSPECTED_SHAPE_ELEMENT_SELECT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF, IS: eGLOBAL_UNIT_ASSIGNED_CONTEXT.self)
      let _TEMP2 =  !_TEMP1
      return _TEMP2
    }
    public static func WHERE_wr6(SELF: sINSPECTED_SHAPE_ELEMENT_SELECT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF, IS: eGROUP.self)
      let _TEMP2 =  !_TEMP1
      return _TEMP2
    }
    public static func WHERE_wr7(SELF: sINSPECTED_SHAPE_ELEMENT_SELECT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF, IS: ePRESENTATION_LAYER_ASSIGNMENT.self)
      let _TEMP2 =  !_TEMP1
      return _TEMP2
    }
    public static func WHERE_wr8(SELF: sINSPECTED_SHAPE_ELEMENT_SELECT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF, IS: eREPRESENTATION_ITEM.self)
      let _TEMP2 =  !_TEMP1
      return _TEMP2
    }
    public static func WHERE_wr9(SELF: sINSPECTED_SHAPE_ELEMENT_SELECT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF, IS: eSTYLED_ITEM.self)
      let _TEMP2 =  !_TEMP1
      return _TEMP2
    }

    //WHERE RULE VALIDATION (DEFINED TYPE)
    public static func validateWhereRules(instance:Self?, prefix:SDAI.WhereLabel) -> [SDAI.WhereLabel:SDAI.LOGICAL] {
      let prefix2 = prefix + "\\sINSPECTED_SHAPE_ELEMENT_SELECT"
      var result = Supertype.validateWhereRules(instance:instance?.rep, prefix:prefix2)

      result[prefix2 + ".WHERE_wr1"] = sINSPECTED_SHAPE_ELEMENT_SELECT.WHERE_wr1(SELF: instance)
      result[prefix2 + ".WHERE_wr2"] = sINSPECTED_SHAPE_ELEMENT_SELECT.WHERE_wr2(SELF: instance)
      result[prefix2 + ".WHERE_wr3"] = sINSPECTED_SHAPE_ELEMENT_SELECT.WHERE_wr3(SELF: instance)
      result[prefix2 + ".WHERE_wr4"] = sINSPECTED_SHAPE_ELEMENT_SELECT.WHERE_wr4(SELF: instance)
      result[prefix2 + ".WHERE_wr5"] = sINSPECTED_SHAPE_ELEMENT_SELECT.WHERE_wr5(SELF: instance)
      result[prefix2 + ".WHERE_wr6"] = sINSPECTED_SHAPE_ELEMENT_SELECT.WHERE_wr6(SELF: instance)
      result[prefix2 + ".WHERE_wr7"] = sINSPECTED_SHAPE_ELEMENT_SELECT.WHERE_wr7(SELF: instance)
      result[prefix2 + ".WHERE_wr8"] = sINSPECTED_SHAPE_ELEMENT_SELECT.WHERE_wr8(SELF: instance)
      result[prefix2 + ".WHERE_wr9"] = sINSPECTED_SHAPE_ELEMENT_SELECT.WHERE_wr9(SELF: instance)
      return result
    }

  }
}


//MARK: - DEFINED TYPE HIERARCHY
public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sINSPECTED_SHAPE_ELEMENT_SELECT__type: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sINSPECTED_ELEMENT_SELECT__subtype {}

public protocol AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sINSPECTED_SHAPE_ELEMENT_SELECT__subtype: 
  AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF__sINSPECTED_SHAPE_ELEMENT_SELECT__type
{}