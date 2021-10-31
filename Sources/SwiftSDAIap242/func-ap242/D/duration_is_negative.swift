/* file: duration_is_negative.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  FUNCTION duration_is_negative(
               duration : time_measure_with_unit
           ) : BOOLEAN;
    IF duration\measure_with_unit.value_component < 0 THEN
      RETURN( TRUE );
    ELSE
      RETURN( FALSE );
    END_IF;

  END_FUNCTION; -- duration_is_negative (line:38653 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func DURATION_IS_NEGATIVE(_ DURATION: eTIME_MEASURE_WITH_UNIT? ) 
    -> SDAI.BOOLEAN? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( DURATION )
    if case .available(let _cached_value) = _duration_is_negative__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.BOOLEAN
    }

    var DURATION = DURATION; SDAI.TOUCH(var: &DURATION)

    
    let _TEMP1 = DURATION?.GROUP_REF(eMEASURE_WITH_UNIT.self)
    let _TEMP2 = _TEMP1?.VALUE_COMPONENT
    let _TEMP3 = _TEMP2 < SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
    if SDAI.IS_TRUE( _TEMP3 ) {
      return _duration_is_negative__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.TRUE))
    }
    else {
      return _duration_is_negative__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.FALSE))
    }
  }

}

//MARK: - function result cache
private var _duration_is_negative__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

