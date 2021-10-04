/* file: nondecreasing.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  FUNCTION nondecreasing(
               lr : LIST OF REAL
           ) : BOOLEAN;
    IF NOT EXISTS( lr ) THEN
      RETURN( FALSE );
    END_IF;
    REPEAT j := 2 TO SIZEOF( lr ) BY 1;
      IF lr[j] < lr[j - 1] THEN
        RETURN( FALSE );
      END_IF;
    END_REPEAT;
    RETURN( TRUE );

  END_FUNCTION; -- nondecreasing (line:43697 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func NONDECREASING(_ LR: SDAI.LIST<SDAI.REAL>? ) 
    -> SDAI.BOOLEAN? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( LR )
    if case .available(let _cached_value) = _nondecreasing__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.BOOLEAN
    }

    var LR = LR; SDAI.TOUCH(var: &LR)

    
    let _TEMP1 = SDAI.EXISTS(LR)
    let _TEMP2 =  !_TEMP1
    if SDAI.IS_TRUE( _TEMP2 ) {
      return _nondecreasing__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.FALSE))
    }
    if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/2, TO:/*SDAI.INTEGER*/SDAI.SIZEOF(
      LR)) {
      for J in incrementControl {
        
        let _TEMP3 = LR?[J]
        let _TEMP4 = SDAI.FORCE_OPTIONAL(J) - SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
        let _TEMP5 = LR?[_TEMP4]
        let _TEMP6 = _TEMP3 < _TEMP5
        if SDAI.IS_TRUE( _TEMP6 ) {
          return _nondecreasing__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.FALSE))
        }
      }
    }
    return _nondecreasing__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.TRUE))
  }

}

//MARK: - function result cache
private var _nondecreasing__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)
