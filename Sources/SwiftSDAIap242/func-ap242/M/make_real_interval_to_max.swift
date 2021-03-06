/* file: make_real_interval_to_max.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  FUNCTION make_real_interval_to_max(
               max : REAL;
               maxclo : open_closed
           ) : real_interval_to_max;
    RETURN( real_interval_to_max( max, maxclo ) || maths_space(  ) || generic_expression(  ) || 
        generic_literal(  ) || simple_generic_expression(  ) );

  END_FUNCTION; -- make_real_interval_to_max (line:42695 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func MAKE_REAL_INTERVAL_TO_MAX(MAX: SDAI.REAL? , MAXCLO: nOPEN_CLOSED? ) 
    -> eREAL_INTERVAL_TO_MAX? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( MAX, MAXCLO )
    if case .available(let _cached_value) = _make_real_interval_to_max__cache.cachedValue(params: _params) {
      return _cached_value as? eREAL_INTERVAL_TO_MAX
    }

    var MAX = MAX; SDAI.TOUCH(var: &MAX)
    var MAXCLO = MAXCLO; SDAI.TOUCH(var: &MAXCLO)

    
    let _TEMP1 = _real_interval_to_max(
      MAX: SDAI.UNWRAP(MAX), MAX_CLOSURE: SDAI.UNWRAP(MAXCLO))
    let _TEMP2 = _maths_space()
    let _TEMP3 = _TEMP1 .||. _TEMP2
    let _TEMP4 = _generic_expression()
    let _TEMP5 = _TEMP3 .||. _TEMP4
    let _TEMP6 = _generic_literal()
    let _TEMP7 = _TEMP5 .||. _TEMP6
    let _TEMP8 = _simple_generic_expression()
    let _TEMP9 = _TEMP7 .||. _TEMP8
    return _make_real_interval_to_max__cache.updateCache(params: _params, value: eREAL_INTERVAL_TO_MAX(/*
      SDAI.GENERIC_ENTITY*/_TEMP9))
  }

}

//MARK: - function result cache
private var _make_real_interval_to_max__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

