/* file: make_listed_integer_data.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  FUNCTION make_listed_integer_data(
               index_base : zero_or_one;
               values : LIST [1 : ?] OF INTEGER
           ) : listed_integer_data;
    RETURN( listed_integer_data( values ) || explicit_table_function( index_base, [SIZEOF( values )] ) || 
        maths_function(  ) || generic_expression(  ) || generic_literal(  ) || simple_generic_expression(  ) );

  END_FUNCTION; -- make_listed_integer_data (line:52303 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func MAKE_LISTED_INTEGER_DATA(INDEX_BASE: tZERO_OR_ONE? , VALUES: (SDAI.LIST<SDAI.INTEGER>/*[1:nil]*/ )? ) 
    -> eLISTED_INTEGER_DATA? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( INDEX_BASE, VALUES )
    if case .available(let _cached_value) = _make_listed_integer_data__cache.cachedValue(params: _params) {
      return _cached_value as? eLISTED_INTEGER_DATA
    }

    var INDEX_BASE = INDEX_BASE; SDAI.TOUCH(var: &INDEX_BASE)
    var VALUES = VALUES; SDAI.TOUCH(var: &VALUES)

    
    let _TEMP1 = _listed_integer_data(VALUES: SDAI.UNWRAP(VALUES))
    let _TEMP2 = SDAI.SIZEOF(VALUES)
    let _TEMP3 = SDAI.LIST<tPOSITIVE_INTEGER>(bound1: SDAI.UNWRAP(SDAI.INTEGER(1)), bound2: (nil as SDAI.INTEGER?), 
      ([SDAI.AIE(tPOSITIVE_INTEGER(/*SDAI.INTEGER*/_TEMP2))] as [SDAI.AggregationInitializerElement<
      tPOSITIVE_INTEGER>]))
    let _TEMP4 = _explicit_table_function(
      INDEX_BASE: SDAI.UNWRAP(INDEX_BASE), 
      SHAPE: SDAI.UNWRAP(_TEMP3))
    let _TEMP5 = _TEMP1 .||. _TEMP4
    let _TEMP6 = _maths_function()
    let _TEMP7 = _TEMP5 .||. _TEMP6
    let _TEMP8 = _generic_expression()
    let _TEMP9 = _TEMP7 .||. _TEMP8
    let _TEMP10 = _generic_literal()
    let _TEMP11 = _TEMP9 .||. _TEMP10
    let _TEMP12 = _simple_generic_expression()
    let _TEMP13 = _TEMP11 .||. _TEMP12
    return _make_listed_integer_data__cache.updateCache(params: _params, value: eLISTED_INTEGER_DATA(/*
      SDAI.GENERIC_ENTITY*/_TEMP13))
  }

}

//MARK: - function result cache
private var _make_listed_integer_data__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

