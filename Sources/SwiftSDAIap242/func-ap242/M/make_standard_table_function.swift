/* file: make_standard_table_function.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  FUNCTION make_standard_table_function(
               index_base : zero_or_one;
               shape : LIST [1 : ?] OF positive_integer;
               operand : maths_function;
               first : INTEGER;
               order : ordering_type
           ) : standard_table_function;
    RETURN( standard_table_function( order ) || linearized_table_function( first ) || 
        explicit_table_function( index_base, shape ) || maths_function(  ) || generic_expression(  ) || 
        unary_generic_expression( operand ) );

  END_FUNCTION; -- make_standard_table_function (line:52449 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func MAKE_STANDARD_TABLE_FUNCTION(
    INDEX_BASE: tZERO_OR_ONE? , SHAPE: (SDAI.LIST<tPOSITIVE_INTEGER>/*[1:nil]*/ )? , 
    OPERAND: eMATHS_FUNCTION? , FIRST: SDAI.INTEGER? , ORDER: nORDERING_TYPE? ) 
    -> eSTANDARD_TABLE_FUNCTION? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( INDEX_BASE, SHAPE, OPERAND, FIRST, 
      ORDER )
    if case .available(let _cached_value) = _make_standard_table_function__cache.cachedValue(params: _params) {
      return _cached_value as? eSTANDARD_TABLE_FUNCTION
    }

    var INDEX_BASE = INDEX_BASE; SDAI.TOUCH(var: &INDEX_BASE)
    var SHAPE = SHAPE; SDAI.TOUCH(var: &SHAPE)
    var OPERAND = OPERAND; SDAI.TOUCH(var: &OPERAND)
    var FIRST = FIRST; SDAI.TOUCH(var: &FIRST)
    var ORDER = ORDER; SDAI.TOUCH(var: &ORDER)

    
    let _TEMP1 = _standard_table_function(ORDER: SDAI.UNWRAP(ORDER))
    let _TEMP2 = _linearized_table_function(FIRST: SDAI.UNWRAP(FIRST))
    let _TEMP3 = _TEMP1 .||. _TEMP2
    let _TEMP4 = _explicit_table_function(
      INDEX_BASE: SDAI.UNWRAP(INDEX_BASE), 
      SHAPE: SDAI.UNWRAP(SHAPE))
    let _TEMP5 = _TEMP3 .||. _TEMP4
    let _TEMP6 = _maths_function()
    let _TEMP7 = _TEMP5 .||. _TEMP6
    let _TEMP8 = _generic_expression()
    let _TEMP9 = _TEMP7 .||. _TEMP8
    let _TEMP10 = _unary_generic_expression(OPERAND: SDAI.UNWRAP(eGENERIC_EXPRESSION(/*eMATHS_FUNCTION*/
      OPERAND)))
    let _TEMP11 = _TEMP9 .||. _TEMP10
    return _make_standard_table_function__cache.updateCache(params: _params, value: eSTANDARD_TABLE_FUNCTION(/*
      SDAI.GENERIC_ENTITY*/_TEMP11))
  }

}

//MARK: - function result cache
private var _make_standard_table_function__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)
