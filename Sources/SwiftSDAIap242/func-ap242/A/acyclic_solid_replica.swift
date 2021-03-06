/* file: acyclic_solid_replica.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  FUNCTION acyclic_solid_replica(
               rep : solid_replica;
               parent : solid_model
           ) : BOOLEAN;
    IF NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SOLID_REPLICA' IN TYPEOF( parent ) ) THEN
      RETURN( TRUE );
    END_IF;
    IF parent :=: rep THEN
      RETURN( FALSE );
    ELSE
      RETURN( acyclic_solid_replica( rep, parent\solid_replica.parent_solid ) );
    END_IF;

  END_FUNCTION; -- acyclic_solid_replica (line:35244 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func ACYCLIC_SOLID_REPLICA(REP: eSOLID_REPLICA? , PARENT: eSOLID_MODEL? ) 
    -> SDAI.BOOLEAN? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( REP, PARENT )
    if case .available(let _cached_value) = _acyclic_solid_replica__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.BOOLEAN
    }

    var REP = REP; SDAI.TOUCH(var: &REP)
    var PARENT = PARENT; SDAI.TOUCH(var: &PARENT)

    
    let _TEMP1 = SDAI.TYPEOF(PARENT, IS: eSOLID_REPLICA.self)
    let _TEMP2 =  !_TEMP1
    if SDAI.IS_TRUE( _TEMP2 ) {
      return _acyclic_solid_replica__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.TRUE))
    }
    
    let _TEMP3 = PARENT .===. REP
    if SDAI.IS_TRUE( _TEMP3 ) {
      return _acyclic_solid_replica__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.FALSE))
    }
    else {
      
      let _TEMP4 = PARENT?.GROUP_REF(eSOLID_REPLICA.self)
      let _TEMP5 = _TEMP4?.PARENT_SOLID
      let _TEMP6 = ACYCLIC_SOLID_REPLICA(
        REP: REP, PARENT: _TEMP5)
      return _acyclic_solid_replica__cache.updateCache(params: _params, value: _TEMP6)
    }
  }

}

//MARK: - function result cache
private var _acyclic_solid_replica__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

