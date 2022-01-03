/* file: make_abstracted_expression_function.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  FUNCTION make_abstracted_expression_function(
               operands : LIST [2 : ?] OF generic_expression
           ) : abstracted_expression_function;
    RETURN( abstracted_expression_function(  ) || maths_function(  ) || generic_expression(  ) || 
        quantifier_expression( remove_first( operands ) ) || multiple_arity_generic_expression( operands ) );

  END_FUNCTION; -- make_abstracted_expression_function (line:52128 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func MAKE_ABSTRACTED_EXPRESSION_FUNCTION(
    _ OPERANDS: (SDAI.LIST<eGENERIC_EXPRESSION>/*[2:nil]*/ )? ) 
    -> eABSTRACTED_EXPRESSION_FUNCTION? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( OPERANDS )
    if case .available(let _cached_value) = _make_abstracted_expression_function__cache.cachedValue(params: _params) {
      return _cached_value as? eABSTRACTED_EXPRESSION_FUNCTION
    }

    var OPERANDS = OPERANDS; SDAI.TOUCH(var: &OPERANDS)

    
    let _TEMP1 = _abstracted_expression_function()
    let _TEMP2 = _maths_function()
    let _TEMP3 = _TEMP1 .||. _TEMP2
    let _TEMP4 = _generic_expression()
    let _TEMP5 = _TEMP3 .||. _TEMP4
    let _TEMP6 = REMOVE_FIRST(OPERANDS)
    let _TEMP7 = _quantifier_expression(VARIABLES: SDAI.UNWRAP(SDAI.LIST_UNIQUE<eGENERIC_VARIABLE>(
      bound1: SDAI.UNWRAP(SDAI.INTEGER(1)), bound2: (nil as SDAI.INTEGER?), 
      generic: /*SDAI.LIST<gGEN>*/_TEMP6)))
    let _TEMP8 = _TEMP5 .||. _TEMP7
    let _TEMP9 = _multiple_arity_generic_expression(OPERANDS: SDAI.UNWRAP(OPERANDS))
    let _TEMP10 = _TEMP8 .||. _TEMP9
    return _make_abstracted_expression_function__cache.updateCache(params: _params, value: 
      eABSTRACTED_EXPRESSION_FUNCTION(/*SDAI.GENERIC_ENTITY*/_TEMP10))
  }

}

//MARK: - function result cache
private var _make_abstracted_expression_function__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)
