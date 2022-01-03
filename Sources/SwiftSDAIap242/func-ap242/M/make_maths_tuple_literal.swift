/* file: make_maths_tuple_literal.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  FUNCTION make_maths_tuple_literal(
               lit_value : LIST OF maths_value
           ) : maths_tuple_literal;
    RETURN( maths_tuple_literal( lit_value ) || generic_literal(  ) || simple_generic_expression(  ) || 
        generic_expression(  ) );

  END_FUNCTION; -- make_maths_tuple_literal (line:42655 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func MAKE_MATHS_TUPLE_LITERAL(_ LIT_VALUE: SDAI.LIST<sMATHS_VALUE>? ) 
    -> eMATHS_TUPLE_LITERAL? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( LIT_VALUE )
    if case .available(let _cached_value) = _make_maths_tuple_literal__cache.cachedValue(params: _params) {
      return _cached_value as? eMATHS_TUPLE_LITERAL
    }

    var LIT_VALUE = LIT_VALUE; SDAI.TOUCH(var: &LIT_VALUE)

    
    let _TEMP1 = _maths_tuple_literal(LIT_VALUE: SDAI.UNWRAP(LIT_VALUE))
    let _TEMP2 = _generic_literal()
    let _TEMP3 = _TEMP1 .||. _TEMP2
    let _TEMP4 = _simple_generic_expression()
    let _TEMP5 = _TEMP3 .||. _TEMP4
    let _TEMP6 = _generic_expression()
    let _TEMP7 = _TEMP5 .||. _TEMP6
    return _make_maths_tuple_literal__cache.updateCache(params: _params, value: eMATHS_TUPLE_LITERAL(/*
      SDAI.GENERIC_ENTITY*/_TEMP7))
  }

}

//MARK: - function result cache
private var _make_maths_tuple_literal__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

