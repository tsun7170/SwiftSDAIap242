/* file: second_proj_axis.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  FUNCTION second_proj_axis(
               z_axis, x_axis, arg : direction
           ) : direction;

    LOCAL
      y_axis : vector;
      v      : direction;
      temp   : vector;
    END_LOCAL;
    IF NOT EXISTS( arg ) THEN
      v := dummy_gri || direction( [0, 1, 0] );
    ELSE
      v := arg;
    END_IF;
    temp := scalar_times_vector( dot_product( v, z_axis ), z_axis );
    y_axis := vector_difference( v, temp );
    temp := scalar_times_vector( dot_product( v, x_axis ), x_axis );
    y_axis := vector_difference( y_axis, temp );
    y_axis := normalise( y_axis );
    RETURN( y_axis.orientation );

  END_FUNCTION; -- second_proj_axis (line:44244 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func SECOND_PROJ_AXIS(Z_AXIS: eDIRECTION? , X_AXIS: eDIRECTION? , ARG: eDIRECTION? ) 
    -> eDIRECTION? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( Z_AXIS, X_AXIS, ARG )
    if case .available(let _cached_value) = _second_proj_axis__cache.cachedValue(params: _params) {
      return _cached_value as? eDIRECTION
    }

    var Z_AXIS = Z_AXIS; SDAI.TOUCH(var: &Z_AXIS)
    var X_AXIS = X_AXIS; SDAI.TOUCH(var: &X_AXIS)
    var ARG = ARG; SDAI.TOUCH(var: &ARG)

    //LOCAL
    var Y_AXIS: eVECTOR? 
    var V: eDIRECTION? 
    var TEMP: eVECTOR? 
    //END_LOCAL

    
    let _TEMP1 = SDAI.EXISTS(ARG)
    let _TEMP2 =  !_TEMP1
    if SDAI.IS_TRUE( _TEMP2 ) {
      
      let _TEMP3 = SDAI.LIST<SDAI.REAL>(bound1: SDAI.UNWRAP(SDAI.INTEGER(2)), bound2: SDAI.INTEGER(3), 
        ([SDAI.AIE(SDAI.REAL(0)), SDAI.AIE(SDAI.REAL(1.0000000000e+00)), 
        SDAI.AIE(SDAI.REAL(0))] as [SDAI.AggregationInitializerElement<SDAI.REAL>]))
      let _TEMP4 = _direction(DIRECTION_RATIOS: SDAI.UNWRAP(_TEMP3))
      let _TEMP5 = DUMMY_GRI .||. _TEMP4
      V = eDIRECTION(/*SDAI.GENERIC_ENTITY*/_TEMP5)
    }
    else {
      V = ARG
    }
    
    let _TEMP6 = DOT_PRODUCT(ARG1: V, 
                             ARG2: Z_AXIS)
    let _TEMP7 = SCALAR_TIMES_VECTOR(
      SCALAR: _TEMP6, VEC: sVECTOR_OR_DIRECTION(/*eDIRECTION*/Z_AXIS))
    TEMP = _TEMP7
    
    let _TEMP8 = VECTOR_DIFFERENCE(ARG1: sVECTOR_OR_DIRECTION(/*eDIRECTION*/V), 
                                   ARG2: sVECTOR_OR_DIRECTION(/*eVECTOR*/TEMP))
    Y_AXIS = _TEMP8
    
    let _TEMP9 = DOT_PRODUCT(ARG1: V, 
                             ARG2: X_AXIS)
    let _TEMP10 = SCALAR_TIMES_VECTOR(
      SCALAR: _TEMP9, VEC: sVECTOR_OR_DIRECTION(/*eDIRECTION*/X_AXIS))
    TEMP = _TEMP10
    
    let _TEMP11 = VECTOR_DIFFERENCE(
      ARG1: sVECTOR_OR_DIRECTION(/*eVECTOR*/Y_AXIS), 
      ARG2: sVECTOR_OR_DIRECTION(/*eVECTOR*/TEMP))
    Y_AXIS = _TEMP11
    
    let _TEMP12 = NORMALISE(sVECTOR_OR_DIRECTION(/*eVECTOR*/Y_AXIS))
    Y_AXIS = eVECTOR(/*sVECTOR_OR_DIRECTION*/_TEMP12)
    
    let _TEMP13 = Y_AXIS?.ORIENTATION
    return _second_proj_axis__cache.updateCache(params: _params, value: _TEMP13)
  }

}

//MARK: - function result cache
private var _second_proj_axis__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)
