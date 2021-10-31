/* file: open_path_based_inner_boundary.swift 	 generated: Sun Oct 31 15:32:10 2021 */

/* This file was generated by the EXPRESS to Swift translator "exp2swift", 
  derived from STEPcode (formerly NIST's SCL).
 exp2swift version: v.1.0.0, derived from stepcode v0.8 as of 2019/11/23 
 WARNING: You probably don't want to edit it since your modifications 
  will be lost if exp2swift is used to regenerate it.
 */

 
import SwiftSDAIcore

extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF {
//MARK: -FUNCTION DEFINITION in EXPRESS
/*

  FUNCTION open_path_based_inner_boundary(
               input : SET OF primitive_2d
           ) : BOOLEAN;

    LOCAL
      pass : BOOLEAN := TRUE;
    END_LOCAL;
    REPEAT i := 1 TO SIZEOF( input ) BY 1;
      IF ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PATH_AREA_WITH_PARAMETERS' IN TYPEOF( input[i] ) ) 
          AND ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CIRCLE' IN TYPEOF( input[i]\mapped_item.
          mapping_source\representation_map.mapping_origin ) ) OR ( ( 
          'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.COMPOSITE_CURVE'  IN TYPEOF( input[i]\mapped_item.
          mapping_source\representation_map.mapping_origin ) ) AND ( input[i]\mapped_item.mapping_source\
          representation_map.mapping_origin\composite_curve.closed_curve = TRUE ) ) ) THEN
        pass := FALSE;
      END_IF;
    END_REPEAT;
    RETURN( pass );

  END_FUNCTION; -- open_path_based_inner_boundary (line:43813 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func OPEN_PATH_BASED_INNER_BOUNDARY(
    _ INPUT: SDAI.SET<ePRIMITIVE_2D>? ) 
    -> SDAI.BOOLEAN? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( INPUT )
    if case .available(let _cached_value) = _open_path_based_inner_boundary__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.BOOLEAN
    }

    var INPUT = INPUT; SDAI.TOUCH(var: &INPUT)

    //LOCAL
    var PASS: SDAI.BOOLEAN?  = SDAI.BOOLEAN(SDAI.TRUE); SDAI.TOUCH(var: &PASS)

    if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.SIZEOF(
      INPUT)) {
      for I in incrementControl {
        
        let _TEMP1 = SDAI.TYPEOF(INPUT?[I], IS: ePATH_AREA_WITH_PARAMETERS.self)
        let _TEMP2 = SDAI.TYPEOF(INPUT?[I]?.GROUP_REF(eMAPPED_ITEM.self)?.MAPPING_SOURCE.GROUP_REF(
          eREPRESENTATION_MAP.self)?.MAPPING_ORIGIN, IS: eCIRCLE.self)
        let _TEMP3 = SDAI.TYPEOF(INPUT?[I]?.GROUP_REF(eMAPPED_ITEM.self)?.MAPPING_SOURCE.GROUP_REF(
          eREPRESENTATION_MAP.self)?.MAPPING_ORIGIN, IS: eCOMPOSITE_CURVE.self)
        let _TEMP4 = INPUT?[I]
        let _TEMP5 = _TEMP4?.GROUP_REF(eMAPPED_ITEM.self)
        let _TEMP6 = _TEMP5?.MAPPING_SOURCE
        let _TEMP7 = _TEMP6?.GROUP_REF(eREPRESENTATION_MAP.self)
        let _TEMP8 = _TEMP7?.MAPPING_ORIGIN
        let _TEMP9 = _TEMP8?.GROUP_REF(eCOMPOSITE_CURVE.self)
        let _TEMP10 = _TEMP9?.CLOSED_CURVE
        let _TEMP11 = _TEMP10 .==. SDAI.FORCE_OPTIONAL(SDAI.LOGICAL(SDAI.TRUE))
        let _TEMP12 = _TEMP3 && _TEMP11
        let _TEMP13 = _TEMP2 || _TEMP12
        let _TEMP14 = _TEMP1 && _TEMP13
        if SDAI.IS_TRUE( _TEMP14 ) {
          PASS = SDAI.BOOLEAN(SDAI.FALSE)
        }
      }
    }
    return _open_path_based_inner_boundary__cache.updateCache(params: _params, value: PASS)
  }

}

//MARK: - function result cache
private var _open_path_based_inner_boundary__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

