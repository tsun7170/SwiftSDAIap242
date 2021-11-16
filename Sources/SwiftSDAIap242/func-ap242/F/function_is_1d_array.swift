/* file: function_is_1d_array.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  FUNCTION function_is_1d_array(
               func : maths_function
           ) : BOOLEAN;

    LOCAL
      temp : maths_space;
    END_LOCAL;
    IF NOT EXISTS( func ) THEN
      RETURN( FALSE );
    END_IF;
    IF space_dimension( func.domain ) <> 1 THEN
      RETURN( FALSE );
    END_IF;
    temp := factor1( func.domain );
    IF ( schema_prefix + 'PRODUCT_SPACE' ) IN TYPEOF( temp ) THEN
      IF space_dimension( temp ) <> 1 THEN
        RETURN( FALSE );
      END_IF;
      temp := factor1( temp );
    END_IF;
    IF ( schema_prefix + 'FINITE_INTEGER_INTERVAL' ) IN TYPEOF( temp ) THEN
      RETURN( TRUE );
    END_IF;
    RETURN( FALSE );

  END_FUNCTION; -- function_is_1d_array (line:41061 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func FUNCTION_IS_1D_ARRAY(_ FUNC: eMATHS_FUNCTION? ) 
    -> SDAI.BOOLEAN? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( FUNC )
    if case .available(let _cached_value) = _function_is_1d_array__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.BOOLEAN
    }

    var FUNC = FUNC; SDAI.TOUCH(var: &FUNC)

    //LOCAL
    var TEMP: eMATHS_SPACE? 

    
    let _TEMP1 = SDAI.EXISTS(FUNC)
    let _TEMP2 =  !_TEMP1
    if SDAI.IS_TRUE( _TEMP2 ) {
      return _function_is_1d_array__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.FALSE))
    }
    
    let _TEMP3 = FUNC?.DOMAIN
    let _TEMP4 = SPACE_DIMENSION(_TEMP3)
    let _TEMP5 = _TEMP4 .!=. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
    if SDAI.IS_TRUE( _TEMP5 ) {
      return _function_is_1d_array__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.FALSE))
    }
    
    let _TEMP6 = FUNC?.DOMAIN
    let _TEMP7 = FACTOR1(_TEMP6)
    TEMP = _TEMP7
    
    let _TEMP8 = SDAI.FORCE_OPTIONAL(SCHEMA_PREFIX) + SDAI.FORCE_OPTIONAL(SDAI.STRING("PRODUCT_SPACE"))
    let _TEMP9 = SDAI.TYPEOF(TEMP)
    let _TEMP10 = SDAI.aggregate(_TEMP9, contains: SDAI.STRING(/*SDAI.INTEGER*/_TEMP8))
    if SDAI.IS_TRUE( _TEMP10 ) {
      
      let _TEMP11 = SPACE_DIMENSION(sTUPLE_SPACE(/*eMATHS_SPACE*/TEMP))
      let _TEMP12 = _TEMP11 .!=. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      if SDAI.IS_TRUE( _TEMP12 ) {
        return _function_is_1d_array__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.FALSE))
      }
      
      let _TEMP13 = FACTOR1(sTUPLE_SPACE(/*eMATHS_SPACE*/TEMP))
      TEMP = _TEMP13
    }
    
    let _TEMP14 = SDAI.FORCE_OPTIONAL(SCHEMA_PREFIX) + SDAI.FORCE_OPTIONAL(SDAI.STRING(
      "FINITE_INTEGER_INTERVAL"))
    let _TEMP15 = SDAI.TYPEOF(TEMP)
    let _TEMP16 = SDAI.aggregate(_TEMP15, contains: SDAI.STRING(/*SDAI.INTEGER*/_TEMP14))
    if SDAI.IS_TRUE( _TEMP16 ) {
      return _function_is_1d_array__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.TRUE))
    }
    return _function_is_1d_array__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.FALSE))
  }

}

//MARK: - function result cache
private var _function_is_1d_array__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

