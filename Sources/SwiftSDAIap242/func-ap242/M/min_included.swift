/* file: min_included.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  FUNCTION min_included(
               spc : maths_space
           ) : BOOLEAN;

    LOCAL
      types : SET OF STRING := TYPEOF( spc );
    END_LOCAL;
    IF ( ( schema_prefix + 'FINITE_INTEGER_INTERVAL' ) IN types ) OR ( ( schema_prefix + 
        'INTEGER_INTERVAL_FROM_MIN'  ) IN types ) THEN
      RETURN( TRUE );
    END_IF;
    IF ( schema_prefix + 'FINITE_REAL_INTERVAL' ) IN types THEN
      RETURN( bool( spc\finite_real_interval.min_closure = closed ) );
    END_IF;
    IF ( schema_prefix + 'REAL_INTERVAL_FROM_MIN' ) IN types THEN
      RETURN( bool( spc\real_interval_from_min.min_closure = closed ) );
    END_IF;
    RETURN( FALSE );

  END_FUNCTION; -- min_included (line:43286 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func MIN_INCLUDED(_ SPC: eMATHS_SPACE? ) 
    -> SDAI.BOOLEAN? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( SPC )
    if case .available(let _cached_value) = _min_included__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.BOOLEAN
    }

    var SPC = SPC; SDAI.TOUCH(var: &SPC)

    //LOCAL
    var TYPES: SDAI.SET<SDAI.STRING>?  = SDAI.TYPEOF(SPC); SDAI.TOUCH(var: &TYPES)

    
    let _TEMP1 = SDAI.FORCE_OPTIONAL(SCHEMA_PREFIX) + SDAI.FORCE_OPTIONAL(SDAI.STRING("FINITE_INTEGER_INTERVAL"))
    let _TEMP2 = SDAI.aggregate(TYPES, contains: SDAI.STRING(/*SDAI.INTEGER*/_TEMP1))
    let _TEMP3 = SDAI.FORCE_OPTIONAL(SCHEMA_PREFIX) + SDAI.FORCE_OPTIONAL(SDAI.STRING(
      "INTEGER_INTERVAL_FROM_MIN"))
    let _TEMP4 = SDAI.aggregate(TYPES, contains: SDAI.STRING(/*SDAI.INTEGER*/_TEMP3))
    let _TEMP5 = _TEMP2 || _TEMP4
    if SDAI.IS_TRUE( _TEMP5 ) {
      return _min_included__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.TRUE))
    }
    
    let _TEMP6 = SDAI.FORCE_OPTIONAL(SCHEMA_PREFIX) + SDAI.FORCE_OPTIONAL(SDAI.STRING("FINITE_REAL_INTERVAL"))
    let _TEMP7 = SDAI.aggregate(TYPES, contains: SDAI.STRING(/*SDAI.INTEGER*/_TEMP6))
    if SDAI.IS_TRUE( _TEMP7 ) {
      
      let _TEMP8 = SPC?.GROUP_REF(eFINITE_REAL_INTERVAL.self)
      let _TEMP9 = _TEMP8?.MIN_CLOSURE
      let _TEMP10 = _TEMP9 .==. SDAI.FORCE_OPTIONAL(CLOSED)
      let _TEMP11 = BOOL(SDAI.LOGICAL(_TEMP10))
      return _min_included__cache.updateCache(params: _params, value: _TEMP11)
    }
    
    let _TEMP12 = SDAI.FORCE_OPTIONAL(SCHEMA_PREFIX) + SDAI.FORCE_OPTIONAL(SDAI.STRING("REAL_INTERVAL_FROM_MIN"))
    let _TEMP13 = SDAI.aggregate(TYPES, contains: SDAI.STRING(/*SDAI.INTEGER*/_TEMP12))
    if SDAI.IS_TRUE( _TEMP13 ) {
      
      let _TEMP14 = SPC?.GROUP_REF(eREAL_INTERVAL_FROM_MIN.self)
      let _TEMP15 = _TEMP14?.MIN_CLOSURE
      let _TEMP16 = _TEMP15 .==. SDAI.FORCE_OPTIONAL(CLOSED)
      let _TEMP17 = BOOL(SDAI.LOGICAL(_TEMP16))
      return _min_included__cache.updateCache(params: _params, value: _TEMP17)
    }
    return _min_included__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.FALSE))
  }

}

//MARK: - function result cache
private var _min_included__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

