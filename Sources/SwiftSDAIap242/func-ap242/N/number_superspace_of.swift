/* file: number_superspace_of.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  FUNCTION number_superspace_of(
               spc : maths_space
           ) : elementary_space;
    IF subspace_of_es( spc, es_integers ) THEN
      RETURN( the_integers );
    END_IF;
    IF subspace_of_es( spc, es_reals ) THEN
      RETURN( the_reals );
    END_IF;
    IF subspace_of_es( spc, es_complex_numbers ) THEN
      RETURN( the_complex_numbers );
    END_IF;
    IF subspace_of_es( spc, es_numbers ) THEN
      RETURN( the_numbers );
    END_IF;
    RETURN( ? );

  END_FUNCTION; -- number_superspace_of (line:43777 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func NUMBER_SUPERSPACE_OF(_ SPC: eMATHS_SPACE? ) 
    -> eELEMENTARY_SPACE? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( SPC )
    if case .available(let _cached_value) = _number_superspace_of__cache.cachedValue(params: _params) {
      return _cached_value as? eELEMENTARY_SPACE
    }

    var SPC = SPC; SDAI.TOUCH(var: &SPC)

    
    let _TEMP1 = SUBSPACE_OF_ES(SPC: SPC, 
                                ES: ES_INTEGERS)
    if SDAI.IS_TRUE( _TEMP1 ) {
      return _number_superspace_of__cache.updateCache(params: _params, value: THE_INTEGERS)
    }
    
    let _TEMP2 = SUBSPACE_OF_ES(SPC: SPC, 
                                ES: ES_REALS)
    if SDAI.IS_TRUE( _TEMP2 ) {
      return _number_superspace_of__cache.updateCache(params: _params, value: THE_REALS)
    }
    
    let _TEMP3 = SUBSPACE_OF_ES(SPC: SPC, 
                                ES: ES_COMPLEX_NUMBERS)
    if SDAI.IS_TRUE( _TEMP3 ) {
      return _number_superspace_of__cache.updateCache(params: _params, value: THE_COMPLEX_NUMBERS)
    }
    
    let _TEMP4 = SUBSPACE_OF_ES(SPC: SPC, 
                                ES: ES_NUMBERS)
    if SDAI.IS_TRUE( _TEMP4 ) {
      return _number_superspace_of__cache.updateCache(params: _params, value: THE_NUMBERS)
    }
    return _number_superspace_of__cache.updateCache(params: _params, value: (nil as eELEMENTARY_SPACE?))
  }

}

//MARK: - function result cache
private var _number_superspace_of__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

