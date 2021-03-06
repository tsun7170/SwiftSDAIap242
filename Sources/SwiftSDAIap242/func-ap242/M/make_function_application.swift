/* file: make_function_application.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  FUNCTION make_function_application(
               afunction : maths_function_select;
               arguments : LIST [1 : ?] OF maths_value
           ) : function_application;
    RETURN( function_application( afunction, arguments ) || multiple_arity_generic_expression( 
        convert_to_maths_function( afunction ) + convert_to_operands( arguments ) ) || generic_expression(  ) );

  END_FUNCTION; -- make_function_application (line:42622 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func MAKE_FUNCTION_APPLICATION(AFUNCTION: sMATHS_FUNCTION_SELECT? , ARGUMENTS: (SDAI.LIST<sMATHS_VALUE>/*[1:
                                 nil]*/ )? ) 
    -> eFUNCTION_APPLICATION? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( AFUNCTION, ARGUMENTS )
    if case .available(let _cached_value) = _make_function_application__cache.cachedValue(params: _params) {
      return _cached_value as? eFUNCTION_APPLICATION
    }

    var AFUNCTION = AFUNCTION; SDAI.TOUCH(var: &AFUNCTION)
    var ARGUMENTS = ARGUMENTS; SDAI.TOUCH(var: &ARGUMENTS)

    
    let _TEMP1 = _function_application(
      FUNC: SDAI.UNWRAP(AFUNCTION), 
      ARGUMENTS: SDAI.UNWRAP(SDAI.LIST<sMATHS_EXPRESSION>(bound1: SDAI.UNWRAP(SDAI.INTEGER(1)), bound2: (nil as 
      SDAI.INTEGER?), /*SDAI.LIST<sMATHS_VALUE>[1:nil] */ARGUMENTS)))
    let _TEMP2 = CONVERT_TO_MATHS_FUNCTION(AFUNCTION)
    let _TEMP3 = CONVERT_TO_OPERANDS(ARGUMENTS)
    let _TEMP4 = _TEMP2 + _TEMP3
    let _TEMP5 = _multiple_arity_generic_expression(OPERANDS: SDAI.UNWRAP(SDAI.LIST<eGENERIC_EXPRESSION>(
      bound1: SDAI.UNWRAP(SDAI.INTEGER(2)), bound2: (nil as SDAI.INTEGER?), 
      /*SDAI.LIST<SDAI.GENERIC_ENTITY>*/_TEMP4)))
    let _TEMP6 = _TEMP1 .||. _TEMP5
    let _TEMP7 = _generic_expression()
    let _TEMP8 = _TEMP6 .||. _TEMP7
    return _make_function_application__cache.updateCache(params: _params, value: eFUNCTION_APPLICATION(/*
      SDAI.GENERIC_ENTITY*/_TEMP8))
  }

}

//MARK: - function result cache
private var _make_function_application__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

