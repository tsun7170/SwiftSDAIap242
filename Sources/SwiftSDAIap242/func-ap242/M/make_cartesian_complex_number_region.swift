/* file: make_cartesian_complex_number_region.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  FUNCTION make_cartesian_complex_number_region(
               real_constraint, imag_constraint : real_interval
           ) : cartesian_complex_number_region;
    RETURN( cartesian_complex_number_region( real_constraint, imag_constraint ) || maths_space(  ) || 
        generic_expression(  ) || generic_literal(  ) || simple_generic_expression(  ) );

  END_FUNCTION; -- make_cartesian_complex_number_region (line:42560 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func MAKE_CARTESIAN_COMPLEX_NUMBER_REGION(
    REAL_CONSTRAINT: sREAL_INTERVAL? , IMAG_CONSTRAINT: sREAL_INTERVAL? ) 
    -> eCARTESIAN_COMPLEX_NUMBER_REGION? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( REAL_CONSTRAINT, IMAG_CONSTRAINT )
    if case .available(let _cached_value) = _make_cartesian_complex_number_region__cache.cachedValue(params: _params) {
      return _cached_value as? eCARTESIAN_COMPLEX_NUMBER_REGION
    }

    var REAL_CONSTRAINT = REAL_CONSTRAINT; SDAI.TOUCH(var: &REAL_CONSTRAINT)
    var IMAG_CONSTRAINT = IMAG_CONSTRAINT; SDAI.TOUCH(var: &IMAG_CONSTRAINT)

    
    let _TEMP1 = _cartesian_complex_number_region(
      REAL_CONSTRAINT: SDAI.UNWRAP(REAL_CONSTRAINT), 
      IMAG_CONSTRAINT: SDAI.UNWRAP(IMAG_CONSTRAINT))
    let _TEMP2 = _maths_space()
    let _TEMP3 = _TEMP1 .||. _TEMP2
    let _TEMP4 = _generic_expression()
    let _TEMP5 = _TEMP3 .||. _TEMP4
    let _TEMP6 = _generic_literal()
    let _TEMP7 = _TEMP5 .||. _TEMP6
    let _TEMP8 = _simple_generic_expression()
    let _TEMP9 = _TEMP7 .||. _TEMP8
    return _make_cartesian_complex_number_region__cache.updateCache(params: _params, value: 
      eCARTESIAN_COMPLEX_NUMBER_REGION(/*SDAI.GENERIC_ENTITY*/_TEMP9))
  }

}

//MARK: - function result cache
private var _make_cartesian_complex_number_region__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

