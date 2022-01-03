/* file: one_tuples_of.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  FUNCTION one_tuples_of(
               spc : maths_space
           ) : tuple_space;
    RETURN( make_uniform_product_space( spc, 1 ) );

  END_FUNCTION; -- one_tuples_of (line:43824 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func ONE_TUPLES_OF(_ SPC: eMATHS_SPACE? ) 
    -> sTUPLE_SPACE? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( SPC )
    if case .available(let _cached_value) = _one_tuples_of__cache.cachedValue(params: _params) {
      return _cached_value as? sTUPLE_SPACE
    }

    var SPC = SPC; SDAI.TOUCH(var: &SPC)

    
    let _TEMP1 = MAKE_UNIFORM_PRODUCT_SPACE(
      BASE: SPC, EXPONENT: tPOSITIVE_INTEGER(1))
    return _one_tuples_of__cache.updateCache(params: _params, value: sTUPLE_SPACE(/*eUNIFORM_PRODUCT_SPACE*/
      _TEMP1))
  }

}

//MARK: - function result cache
private var _one_tuples_of__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

