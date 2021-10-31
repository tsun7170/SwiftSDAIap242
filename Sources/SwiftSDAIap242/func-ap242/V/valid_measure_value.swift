/* file: valid_measure_value.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  FUNCTION valid_measure_value(
               m : measure_value
           ) : BOOLEAN;
    IF 'REAL' IN TYPEOF( m ) THEN
      RETURN( m > 0 );
    ELSE
      IF 'INTEGER' IN TYPEOF( m ) THEN
        RETURN( m > 0 );
      ELSE
        RETURN( TRUE );
      END_IF;
    END_IF;

  END_FUNCTION; -- valid_measure_value (line:47670 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func VALID_MEASURE_VALUE(_ M: sMEASURE_VALUE? ) 
    -> SDAI.BOOLEAN? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( M )
    if case .available(let _cached_value) = _valid_measure_value__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.BOOLEAN
    }

    var M = M; SDAI.TOUCH(var: &M)

    
    let _TEMP1 = SDAI.TYPEOF(M, IS: SDAI.REAL.self)
    if SDAI.IS_TRUE( _TEMP1 ) {
      
      let _TEMP2 = M > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _valid_measure_value__cache.updateCache(params: _params, value: SDAI.BOOLEAN(/*SDAI.LOGICAL*/
        _TEMP2))
    }
    else {
      
      let _TEMP3 = SDAI.TYPEOF(M, IS: SDAI.INTEGER.self)
      if SDAI.IS_TRUE( _TEMP3 ) {
        
        let _TEMP4 = M > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
        return _valid_measure_value__cache.updateCache(params: _params, value: SDAI.BOOLEAN(/*SDAI.LOGICAL*/
          _TEMP4))
      }
      else {
        return _valid_measure_value__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.TRUE))
      }
    }
  }

}

//MARK: - function result cache
private var _valid_measure_value__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

