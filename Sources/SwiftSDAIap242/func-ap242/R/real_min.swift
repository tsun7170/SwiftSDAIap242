/* file: real_min.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  FUNCTION real_min(
               spc : maths_space
           ) : REAL;

    LOCAL
      types : SET OF STRING := TYPEOF( spc );
    END_LOCAL;
    IF ( schema_prefix + 'FINITE_INTEGER_INTERVAL' ) IN types THEN
      RETURN( spc\finite_integer_interval.min );
    END_IF;
    IF ( schema_prefix + 'INTEGER_INTERVAL_FROM_MIN' ) IN types THEN
      RETURN( spc\integer_interval_from_min.min );
    END_IF;
    IF ( schema_prefix + 'FINITE_REAL_INTERVAL' ) IN types THEN
      RETURN( spc\finite_real_interval.min );
    END_IF;
    IF ( schema_prefix + 'REAL_INTERVAL_FROM_MIN' ) IN types THEN
      RETURN( spc\real_interval_from_min.min );
    END_IF;
    RETURN( ? );

  END_FUNCTION; -- real_min (line:44054 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func REAL_MIN(_ SPC: eMATHS_SPACE? ) 
    -> SDAI.REAL? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( SPC )
    if case .available(let _cached_value) = _real_min__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.REAL
    }

    var SPC = SPC; SDAI.TOUCH(var: &SPC)

    //LOCAL
    var TYPES: SDAI.SET<SDAI.STRING>?  = SDAI.TYPEOF(SPC); SDAI.TOUCH(var: &TYPES)

    
    let _TEMP1 = SDAI.FORCE_OPTIONAL(SCHEMA_PREFIX) + SDAI.FORCE_OPTIONAL(SDAI.STRING("FINITE_INTEGER_INTERVAL"))
    let _TEMP2 = SDAI.aggregate(TYPES, contains: SDAI.STRING(/*SDAI.INTEGER*/_TEMP1))
    if SDAI.IS_TRUE( _TEMP2 ) {
      
      let _TEMP3 = SPC?.GROUP_REF(eFINITE_INTEGER_INTERVAL.self)
      let _TEMP4 = _TEMP3?.MIN
      return _real_min__cache.updateCache(params: _params, value: SDAI.REAL(/*SDAI.INTEGER*/_TEMP4))
    }
    
    let _TEMP5 = SDAI.FORCE_OPTIONAL(SCHEMA_PREFIX) + SDAI.FORCE_OPTIONAL(SDAI.STRING(
      "INTEGER_INTERVAL_FROM_MIN"))
    let _TEMP6 = SDAI.aggregate(TYPES, contains: SDAI.STRING(/*SDAI.INTEGER*/_TEMP5))
    if SDAI.IS_TRUE( _TEMP6 ) {
      
      let _TEMP7 = SPC?.GROUP_REF(eINTEGER_INTERVAL_FROM_MIN.self)
      let _TEMP8 = _TEMP7?.MIN
      return _real_min__cache.updateCache(params: _params, value: SDAI.REAL(/*SDAI.INTEGER*/_TEMP8))
    }
    
    let _TEMP9 = SDAI.FORCE_OPTIONAL(SCHEMA_PREFIX) + SDAI.FORCE_OPTIONAL(SDAI.STRING("FINITE_REAL_INTERVAL"))
    let _TEMP10 = SDAI.aggregate(TYPES, contains: SDAI.STRING(/*SDAI.INTEGER*/_TEMP9))
    if SDAI.IS_TRUE( _TEMP10 ) {
      
      let _TEMP11 = SPC?.GROUP_REF(eFINITE_REAL_INTERVAL.self)
      let _TEMP12 = _TEMP11?.MIN
      return _real_min__cache.updateCache(params: _params, value: _TEMP12)
    }
    
    let _TEMP13 = SDAI.FORCE_OPTIONAL(SCHEMA_PREFIX) + SDAI.FORCE_OPTIONAL(SDAI.STRING("REAL_INTERVAL_FROM_MIN"))
    let _TEMP14 = SDAI.aggregate(TYPES, contains: SDAI.STRING(/*SDAI.INTEGER*/_TEMP13))
    if SDAI.IS_TRUE( _TEMP14 ) {
      
      let _TEMP15 = SPC?.GROUP_REF(eREAL_INTERVAL_FROM_MIN.self)
      let _TEMP16 = _TEMP15?.MIN
      return _real_min__cache.updateCache(params: _params, value: _TEMP16)
    }
    return _real_min__cache.updateCache(params: _params, value: (nil as SDAI.REAL?))
  }

}

//MARK: - function result cache
private var _real_min__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

