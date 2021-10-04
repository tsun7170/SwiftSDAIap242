/* file: make_int_literal.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  FUNCTION make_int_literal(
               lit_value : INTEGER
           ) : int_literal;
    RETURN( int_literal(  ) || literal_number( lit_value ) || simple_numeric_expression(  ) || 
        numeric_expression(  ) || expression(  ) || generic_expression(  ) || simple_generic_expression(  ) 
        || generic_literal(  ) );

  END_FUNCTION; -- make_int_literal (line:42622 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func MAKE_INT_LITERAL(_ LIT_VALUE: SDAI.INTEGER? ) 
    -> eINT_LITERAL? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( LIT_VALUE )
    if case .available(let _cached_value) = _make_int_literal__cache.cachedValue(params: _params) {
      return _cached_value as? eINT_LITERAL
    }

    var LIT_VALUE = LIT_VALUE; SDAI.TOUCH(var: &LIT_VALUE)

    
    let _TEMP1 = _int_literal()
    let _TEMP2 = _literal_number(THE_VALUE: SDAI.UNWRAP(SDAI.NUMBER(/*SDAI.INTEGER*/LIT_VALUE)))
    let _TEMP3 = _TEMP1 .||. _TEMP2
    let _TEMP4 = _simple_numeric_expression()
    let _TEMP5 = _TEMP3 .||. _TEMP4
    let _TEMP6 = _numeric_expression()
    let _TEMP7 = _TEMP5 .||. _TEMP6
    let _TEMP8 = _expression()
    let _TEMP9 = _TEMP7 .||. _TEMP8
    let _TEMP10 = _generic_expression()
    let _TEMP11 = _TEMP9 .||. _TEMP10
    let _TEMP12 = _simple_generic_expression()
    let _TEMP13 = _TEMP11 .||. _TEMP12
    let _TEMP14 = _generic_literal()
    let _TEMP15 = _TEMP13 .||. _TEMP14
    return _make_int_literal__cache.updateCache(params: _params, value: eINT_LITERAL(/*SDAI.GENERIC_ENTITY*/
      _TEMP15))
  }

}

//MARK: - function result cache
private var _make_int_literal__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

