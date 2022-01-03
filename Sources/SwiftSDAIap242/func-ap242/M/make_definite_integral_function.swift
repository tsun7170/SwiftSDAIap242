/* file: make_definite_integral_function.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  FUNCTION make_definite_integral_function(
               integrand : maths_function;
               varintg : input_selector;
               loinf, upinf : BOOLEAN
           ) : definite_integral_function;
    RETURN( definite_integral_function( varintg, loinf, upinf ) || maths_function(  ) || generic_expression(  ) 
        || unary_generic_expression( integrand ) );

  END_FUNCTION; -- make_definite_integral_function (line:52219 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func MAKE_DEFINITE_INTEGRAL_FUNCTION(
    INTEGRAND: eMATHS_FUNCTION? , VARINTG: tINPUT_SELECTOR? , LOINF: SDAI.BOOLEAN? , 
    UPINF: SDAI.BOOLEAN? ) -> eDEFINITE_INTEGRAL_FUNCTION? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( INTEGRAND, VARINTG, LOINF, UPINF )
    if case .available(let _cached_value) = _make_definite_integral_function__cache.cachedValue(params: _params) {
      return _cached_value as? eDEFINITE_INTEGRAL_FUNCTION
    }

    var INTEGRAND = INTEGRAND; SDAI.TOUCH(var: &INTEGRAND)
    var VARINTG = VARINTG; SDAI.TOUCH(var: &VARINTG)
    var LOINF = LOINF; SDAI.TOUCH(var: &LOINF)
    var UPINF = UPINF; SDAI.TOUCH(var: &UPINF)

    
    let _TEMP1 = _definite_integral_function(
      VARIABLE_OF_INTEGRATION: SDAI.UNWRAP(VARINTG), 
      LOWER_LIMIT_NEG_INFINITY: SDAI.UNWRAP(LOINF), 
      UPPER_LIMIT_POS_INFINITY: SDAI.UNWRAP(UPINF))
    let _TEMP2 = _maths_function()
    let _TEMP3 = _TEMP1 .||. _TEMP2
    let _TEMP4 = _generic_expression()
    let _TEMP5 = _TEMP3 .||. _TEMP4
    let _TEMP6 = _unary_generic_expression(OPERAND: SDAI.UNWRAP(eGENERIC_EXPRESSION(/*eMATHS_FUNCTION*/
      INTEGRAND)))
    let _TEMP7 = _TEMP5 .||. _TEMP6
    return _make_definite_integral_function__cache.updateCache(params: _params, value: 
      eDEFINITE_INTEGRAL_FUNCTION(/*SDAI.GENERIC_ENTITY*/_TEMP7))
  }

}

//MARK: - function result cache
private var _make_definite_integral_function__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

