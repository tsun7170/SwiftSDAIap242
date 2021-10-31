/* file: make_elementary_space.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  FUNCTION make_elementary_space(
               space_id : elementary_space_enumerators
           ) : elementary_space;
    RETURN( elementary_space( space_id ) || maths_space(  ) || generic_expression(  ) || generic_literal(  ) 
        || simple_generic_expression(  ) );

  END_FUNCTION; -- make_elementary_space (line:42577 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func MAKE_ELEMENTARY_SPACE(_ SPACE_ID: nELEMENTARY_SPACE_ENUMERATORS? ) 
    -> eELEMENTARY_SPACE? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( SPACE_ID )
    if case .available(let _cached_value) = _make_elementary_space__cache.cachedValue(params: _params) {
      return _cached_value as? eELEMENTARY_SPACE
    }

    var SPACE_ID = SPACE_ID; SDAI.TOUCH(var: &SPACE_ID)

    
    let _TEMP1 = _elementary_space(SPACE_ID: SDAI.UNWRAP(SPACE_ID))
    let _TEMP2 = _maths_space()
    let _TEMP3 = _TEMP1 .||. _TEMP2
    let _TEMP4 = _generic_expression()
    let _TEMP5 = _TEMP3 .||. _TEMP4
    let _TEMP6 = _generic_literal()
    let _TEMP7 = _TEMP5 .||. _TEMP6
    let _TEMP8 = _simple_generic_expression()
    let _TEMP9 = _TEMP7 .||. _TEMP8
    return _make_elementary_space__cache.updateCache(params: _params, value: eELEMENTARY_SPACE(/*
      SDAI.GENERIC_ENTITY*/_TEMP9))
  }

}

//MARK: - function result cache
private var _make_elementary_space__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

