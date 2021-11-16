/* file: weights_positive.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  FUNCTION weights_positive(
               weights : LIST OF REAL
           ) : BOOLEAN;

    LOCAL
      result : BOOLEAN := TRUE;
    END_LOCAL;
    REPEAT i := 1 TO SIZEOF( weights ) BY 1;
      IF weights[i] <= 0 THEN
        result := FALSE;
        RETURN( result );
      END_IF;
    END_REPEAT;
    RETURN( result );

  END_FUNCTION; -- weights_positive (line:48809 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func WEIGHTS_POSITIVE(_ WEIGHTS: SDAI.LIST<SDAI.REAL>? ) 
    -> SDAI.BOOLEAN? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( WEIGHTS )
    if case .available(let _cached_value) = _weights_positive__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.BOOLEAN
    }

    var WEIGHTS = WEIGHTS; SDAI.TOUCH(var: &WEIGHTS)

    //LOCAL
    var RESULT: SDAI.BOOLEAN?  = SDAI.BOOLEAN(SDAI.TRUE); SDAI.TOUCH(var: &RESULT)

    if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.SIZEOF(
      WEIGHTS)) {
      for I in incrementControl {
        
        let _TEMP1 = WEIGHTS?[I]
        let _TEMP2 = _TEMP1 <= SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
        if SDAI.IS_TRUE( _TEMP2 ) {
          RESULT = SDAI.BOOLEAN(SDAI.FALSE)
          return _weights_positive__cache.updateCache(params: _params, value: RESULT)
        }
      }
    }
    return _weights_positive__cache.updateCache(params: _params, value: RESULT)
  }

}

//MARK: - function result cache
private var _weights_positive__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

