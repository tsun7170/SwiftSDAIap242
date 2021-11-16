/* file: make_uniform_product_space.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  FUNCTION make_uniform_product_space(
               base : maths_space;
               exponent : positive_integer
           ) : uniform_product_space;
    RETURN( uniform_product_space( base, exponent ) || maths_space(  ) || generic_expression(  ) || 
        generic_literal(  ) || simple_generic_expression(  ) );

  END_FUNCTION; -- make_uniform_product_space (line:42710 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func MAKE_UNIFORM_PRODUCT_SPACE(BASE: eMATHS_SPACE? , EXPONENT: tPOSITIVE_INTEGER? ) 
    -> eUNIFORM_PRODUCT_SPACE? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( BASE, EXPONENT )
    if case .available(let _cached_value) = _make_uniform_product_space__cache.cachedValue(params: _params) {
      return _cached_value as? eUNIFORM_PRODUCT_SPACE
    }

    var BASE = BASE; SDAI.TOUCH(var: &BASE)
    var EXPONENT = EXPONENT; SDAI.TOUCH(var: &EXPONENT)

    
    let _TEMP1 = _uniform_product_space(
      BASE: SDAI.UNWRAP(BASE), EXPONENT: SDAI.UNWRAP(EXPONENT))
    let _TEMP2 = _maths_space()
    let _TEMP3 = _TEMP1 .||. _TEMP2
    let _TEMP4 = _generic_expression()
    let _TEMP5 = _TEMP3 .||. _TEMP4
    let _TEMP6 = _generic_literal()
    let _TEMP7 = _TEMP5 .||. _TEMP6
    let _TEMP8 = _simple_generic_expression()
    let _TEMP9 = _TEMP7 .||. _TEMP8
    return _make_uniform_product_space__cache.updateCache(params: _params, value: eUNIFORM_PRODUCT_SPACE(/*
      SDAI.GENERIC_ENTITY*/_TEMP9))
  }

}

//MARK: - function result cache
private var _make_uniform_product_space__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

