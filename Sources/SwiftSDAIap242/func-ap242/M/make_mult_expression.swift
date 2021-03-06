/* file: make_mult_expression.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  FUNCTION make_mult_expression(
               operands : LIST [2 : ?] OF generic_expression
           ) : mult_expression;
    RETURN( mult_expression(  ) || multiple_arity_numeric_expression(  ) || numeric_expression(  ) || 
        expression(  ) || generic_expression(  ) || multiple_arity_generic_expression( operands ) );

  END_FUNCTION; -- make_mult_expression (line:52344 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func MAKE_MULT_EXPRESSION(_ OPERANDS: (SDAI.LIST<eGENERIC_EXPRESSION>/*[2:nil]*/ )? ) 
    -> eMULT_EXPRESSION? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( OPERANDS )
    if case .available(let _cached_value) = _make_mult_expression__cache.cachedValue(params: _params) {
      return _cached_value as? eMULT_EXPRESSION
    }

    var OPERANDS = OPERANDS; SDAI.TOUCH(var: &OPERANDS)

    
    let _TEMP1 = _mult_expression()
    let _TEMP2 = _multiple_arity_numeric_expression()
    let _TEMP3 = _TEMP1 .||. _TEMP2
    let _TEMP4 = _numeric_expression()
    let _TEMP5 = _TEMP3 .||. _TEMP4
    let _TEMP6 = _expression()
    let _TEMP7 = _TEMP5 .||. _TEMP6
    let _TEMP8 = _generic_expression()
    let _TEMP9 = _TEMP7 .||. _TEMP8
    let _TEMP10 = _multiple_arity_generic_expression(OPERANDS: SDAI.UNWRAP(OPERANDS))
    let _TEMP11 = _TEMP9 .||. _TEMP10
    return _make_mult_expression__cache.updateCache(params: _params, value: eMULT_EXPRESSION(/*
      SDAI.GENERIC_ENTITY*/_TEMP11))
  }

}

//MARK: - function result cache
private var _make_mult_expression__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

