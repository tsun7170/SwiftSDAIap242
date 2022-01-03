/* file: make_basic_sparse_matrix.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  FUNCTION make_basic_sparse_matrix(
               index_base : zero_or_one;
               shape : LIST [1 : ?] OF positive_integer;
               operands : LIST [3 : 3] OF maths_function;
               default_entry : maths_value;
               order : ordering_type
           ) : basic_sparse_matrix;
    RETURN( basic_sparse_matrix( default_entry, order ) || explicit_table_function( index_base, shape ) || 
        maths_function(  ) || generic_expression(  ) || multiple_arity_generic_expression( operands ) );

  END_FUNCTION; -- make_basic_sparse_matrix (line:52172 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func MAKE_BASIC_SPARSE_MATRIX(INDEX_BASE: tZERO_OR_ONE? , SHAPE: (SDAI.LIST<tPOSITIVE_INTEGER>/*[1:nil]*/ )? , 
                                OPERANDS: (SDAI.LIST<eMATHS_FUNCTION>/*[3:3]*/ )? , 
                                DEFAULT_ENTRY: sMATHS_VALUE? , ORDER: nORDERING_TYPE? ) 
    -> eBASIC_SPARSE_MATRIX? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( INDEX_BASE, SHAPE, OPERANDS, DEFAULT_ENTRY, 
      ORDER )
    if case .available(let _cached_value) = _make_basic_sparse_matrix__cache.cachedValue(params: _params) {
      return _cached_value as? eBASIC_SPARSE_MATRIX
    }

    var INDEX_BASE = INDEX_BASE; SDAI.TOUCH(var: &INDEX_BASE)
    var SHAPE = SHAPE; SDAI.TOUCH(var: &SHAPE)
    var OPERANDS = OPERANDS; SDAI.TOUCH(var: &OPERANDS)
    var DEFAULT_ENTRY = DEFAULT_ENTRY; SDAI.TOUCH(var: &DEFAULT_ENTRY)
    var ORDER = ORDER; SDAI.TOUCH(var: &ORDER)

    
    let _TEMP1 = _basic_sparse_matrix(
      DEFAULT_ENTRY: SDAI.UNWRAP(DEFAULT_ENTRY), 
      ORDER: SDAI.UNWRAP(ORDER))
    let _TEMP2 = _explicit_table_function(
      INDEX_BASE: SDAI.UNWRAP(INDEX_BASE), 
      SHAPE: SDAI.UNWRAP(SHAPE))
    let _TEMP3 = _TEMP1 .||. _TEMP2
    let _TEMP4 = _maths_function()
    let _TEMP5 = _TEMP3 .||. _TEMP4
    let _TEMP6 = _generic_expression()
    let _TEMP7 = _TEMP5 .||. _TEMP6
    let _TEMP8 = _multiple_arity_generic_expression(OPERANDS: SDAI.UNWRAP(SDAI.LIST<eGENERIC_EXPRESSION>(
      bound1: SDAI.UNWRAP(SDAI.INTEGER(2)), bound2: (nil as SDAI.INTEGER?), 
      /*SDAI.LIST<eMATHS_FUNCTION>[3:3] */OPERANDS)))
    let _TEMP9 = _TEMP7 .||. _TEMP8
    return _make_basic_sparse_matrix__cache.updateCache(params: _params, value: eBASIC_SPARSE_MATRIX(/*
      SDAI.GENERIC_ENTITY*/_TEMP9))
  }

}

//MARK: - function result cache
private var _make_basic_sparse_matrix__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

