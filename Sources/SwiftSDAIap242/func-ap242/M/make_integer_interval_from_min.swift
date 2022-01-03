/* file: make_integer_interval_from_min.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  FUNCTION make_integer_interval_from_min(
               min : INTEGER
           ) : integer_interval_from_min;
    RETURN( integer_interval_from_min( min ) || maths_space(  ) || generic_expression(  ) || 
        generic_literal(  ) || simple_generic_expression(  ) );

  END_FUNCTION; -- make_integer_interval_from_min (line:52272 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func MAKE_INTEGER_INTERVAL_FROM_MIN(
    _ MIN: SDAI.INTEGER? ) -> eINTEGER_INTERVAL_FROM_MIN? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( MIN )
    if case .available(let _cached_value) = _make_integer_interval_from_min__cache.cachedValue(params: _params) {
      return _cached_value as? eINTEGER_INTERVAL_FROM_MIN
    }

    var MIN = MIN; SDAI.TOUCH(var: &MIN)

    
    let _TEMP1 = _integer_interval_from_min(MIN: SDAI.UNWRAP(MIN))
    let _TEMP2 = _maths_space()
    let _TEMP3 = _TEMP1 .||. _TEMP2
    let _TEMP4 = _generic_expression()
    let _TEMP5 = _TEMP3 .||. _TEMP4
    let _TEMP6 = _generic_literal()
    let _TEMP7 = _TEMP5 .||. _TEMP6
    let _TEMP8 = _simple_generic_expression()
    let _TEMP9 = _TEMP7 .||. _TEMP8
    return _make_integer_interval_from_min__cache.updateCache(params: _params, value: 
      eINTEGER_INTERVAL_FROM_MIN(/*SDAI.GENERIC_ENTITY*/_TEMP9))
  }

}

//MARK: - function result cache
private var _make_integer_interval_from_min__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

