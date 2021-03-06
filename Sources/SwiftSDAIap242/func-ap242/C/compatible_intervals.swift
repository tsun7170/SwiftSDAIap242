/* file: compatible_intervals.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  FUNCTION compatible_intervals(
               sp1, sp2 : maths_space
           ) : BOOLEAN;

    LOCAL
      amin : REAL;
      amax : REAL;
    END_LOCAL;
    IF min_exists( sp1 ) AND max_exists( sp2 ) THEN
      amin := real_min( sp1 );
      amax := real_max( sp2 );
      IF amin > amax THEN
        RETURN( FALSE );
      END_IF;
      IF amin = amax THEN
        RETURN( min_included( sp1 ) AND max_included( sp2 ) );
      END_IF;
    END_IF;
    IF min_exists( sp2 ) AND max_exists( sp1 ) THEN
      amin := real_min( sp2 );
      amax := real_max( sp1 );
      IF amin > amax THEN
        RETURN( FALSE );
      END_IF;
      IF amin = amax THEN
        RETURN( min_included( sp2 ) AND max_included( sp1 ) );
      END_IF;
    END_IF;
    RETURN( TRUE );

  END_FUNCTION; -- compatible_intervals (line:36320 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func COMPATIBLE_INTERVALS(SP1: eMATHS_SPACE? , SP2: eMATHS_SPACE? ) 
    -> SDAI.BOOLEAN? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( SP1, SP2 )
    if case .available(let _cached_value) = _compatible_intervals__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.BOOLEAN
    }

    var SP1 = SP1; SDAI.TOUCH(var: &SP1)
    var SP2 = SP2; SDAI.TOUCH(var: &SP2)

    //LOCAL
    var AMIN: SDAI.REAL? 
    var AMAX: SDAI.REAL? 
    //END_LOCAL

    
    let _TEMP1 = MIN_EXISTS(SP1)
    let _TEMP2 = MAX_EXISTS(SP2)
    let _TEMP3 = _TEMP1 && _TEMP2
    if SDAI.IS_TRUE( _TEMP3 ) {
      
      let _TEMP4 = REAL_MIN(SP1)
      AMIN = _TEMP4
      
      let _TEMP5 = REAL_MAX(SP2)
      AMAX = _TEMP5
      
      let _TEMP6 = AMIN > AMAX
      if SDAI.IS_TRUE( _TEMP6 ) {
        return _compatible_intervals__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.FALSE))
      }
      
      let _TEMP7 = AMIN .==. AMAX
      if SDAI.IS_TRUE( _TEMP7 ) {
        
        let _TEMP8 = MIN_INCLUDED(SP1)
        let _TEMP9 = MAX_INCLUDED(SP2)
        let _TEMP10 = _TEMP8 && _TEMP9
        return _compatible_intervals__cache.updateCache(params: _params, value: SDAI.BOOLEAN(/*SDAI.LOGICAL*/
          _TEMP10))
      }
    }
    
    let _TEMP11 = MIN_EXISTS(SP2)
    let _TEMP12 = MAX_EXISTS(SP1)
    let _TEMP13 = _TEMP11 && _TEMP12
    if SDAI.IS_TRUE( _TEMP13 ) {
      
      let _TEMP14 = REAL_MIN(SP2)
      AMIN = _TEMP14
      
      let _TEMP15 = REAL_MAX(SP1)
      AMAX = _TEMP15
      
      let _TEMP16 = AMIN > AMAX
      if SDAI.IS_TRUE( _TEMP16 ) {
        return _compatible_intervals__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.FALSE))
      }
      
      let _TEMP17 = AMIN .==. AMAX
      if SDAI.IS_TRUE( _TEMP17 ) {
        
        let _TEMP18 = MIN_INCLUDED(SP2)
        let _TEMP19 = MAX_INCLUDED(SP1)
        let _TEMP20 = _TEMP18 && _TEMP19
        return _compatible_intervals__cache.updateCache(params: _params, value: SDAI.BOOLEAN(/*SDAI.LOGICAL*/
          _TEMP20))
      }
    }
    return _compatible_intervals__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.TRUE))
  }

}

//MARK: - function result cache
private var _compatible_intervals__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

