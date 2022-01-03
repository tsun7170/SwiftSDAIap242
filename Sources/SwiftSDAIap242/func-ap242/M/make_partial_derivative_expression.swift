/* file: make_partial_derivative_expression.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  FUNCTION make_partial_derivative_expression(
               derivand : generic_expression;
               dvars : LIST [1 : ?] OF maths_variable;
               extend : extension_options
           ) : partial_derivative_expression;
    RETURN( partial_derivative_expression( dvars, extend ) || unary_generic_expression( derivand ) || 
        generic_expression(  ) );

  END_FUNCTION; -- make_partial_derivative_expression (line:52355 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func MAKE_PARTIAL_DERIVATIVE_EXPRESSION(
    DERIVAND: eGENERIC_EXPRESSION? , DVARS: (SDAI.LIST<eMATHS_VARIABLE>/*[1:nil]*/ )? , 
    EXTEND: nEXTENSION_OPTIONS? ) -> ePARTIAL_DERIVATIVE_EXPRESSION? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( DERIVAND, DVARS, EXTEND )
    if case .available(let _cached_value) = _make_partial_derivative_expression__cache.cachedValue(params: _params) {
      return _cached_value as? ePARTIAL_DERIVATIVE_EXPRESSION
    }

    var DERIVAND = DERIVAND; SDAI.TOUCH(var: &DERIVAND)
    var DVARS = DVARS; SDAI.TOUCH(var: &DVARS)
    var EXTEND = EXTEND; SDAI.TOUCH(var: &EXTEND)

    
    let _TEMP1 = _partial_derivative_expression(
      D_VARIABLES: SDAI.UNWRAP(DVARS), 
      EXTENSION: SDAI.UNWRAP(EXTEND))
    let _TEMP2 = _unary_generic_expression(OPERAND: SDAI.UNWRAP(DERIVAND))
    let _TEMP3 = _TEMP1 .||. _TEMP2
    let _TEMP4 = _generic_expression()
    let _TEMP5 = _TEMP3 .||. _TEMP4
    return _make_partial_derivative_expression__cache.updateCache(params: _params, value: 
      ePARTIAL_DERIVATIVE_EXPRESSION(/*SDAI.GENERIC_ENTITY*/_TEMP5))
  }

}

//MARK: - function result cache
private var _make_partial_derivative_expression__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

