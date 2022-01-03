/* file: aspect_ratio.swift 	 generated: Mon Jan  3 16:32:52 2022 */

/* This file was generated by the EXPRESS to Swift translator "exp2swift", 
  derived from STEPcode (formerly NIST's SCL).
 exp2swift version: v.1.0.1, derived from stepcode v0.8 as of 2019/11/23 
 WARNING: You probably don't want to edit it since your modifications 
  will be lost if exp2swift is used to regenerate it.
 */

 
import SwiftSDAIcore

extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF {
//MARK: -FUNCTION DEFINITION in EXPRESS
/*

  FUNCTION aspect_ratio(
               p : planar_box
           ) : positive_ratio_measure;
    IF ( p.size_in_x > 0 ) AND ( p.size_in_y > 0 ) THEN
      RETURN( p.size_in_x / p.size_in_y );
    ELSE
      RETURN( ? );
    END_IF;

  END_FUNCTION; -- aspect_ratio (line:35430 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func ASPECT_RATIO(_ P: ePLANAR_BOX? ) 
    -> tPOSITIVE_RATIO_MEASURE? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( P )
    if case .available(let _cached_value) = _aspect_ratio__cache.cachedValue(params: _params) {
      return _cached_value as? tPOSITIVE_RATIO_MEASURE
    }

    var P = P; SDAI.TOUCH(var: &P)

    
    let _TEMP1 = P?.SIZE_IN_X
    let _TEMP2 = _TEMP1 > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
    let _TEMP3 = P?.SIZE_IN_Y
    let _TEMP4 = _TEMP3 > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
    let _TEMP5 = _TEMP2 && _TEMP4
    if SDAI.IS_TRUE( _TEMP5 ) {
      
      let _TEMP6 = P?.SIZE_IN_X
      let _TEMP7 = P?.SIZE_IN_Y
      let _TEMP8 = _TEMP6 / _TEMP7
      return _aspect_ratio__cache.updateCache(params: _params, value: tPOSITIVE_RATIO_MEASURE(/*SDAI.REAL*/
        _TEMP8))
    }
    else {
      return _aspect_ratio__cache.updateCache(params: _params, value: (nil as tPOSITIVE_RATIO_MEASURE?))
    }
  }

}

//MARK: - function result cache
private var _aspect_ratio__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

