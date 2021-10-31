/* file: min_exists.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  FUNCTION min_exists(
               spc : maths_space
           ) : BOOLEAN;

    LOCAL
      types : SET OF STRING := TYPEOF( spc );
    END_LOCAL;
    RETURN( bool( ( ( schema_prefix + 'FINITE_INTEGER_INTERVAL' ) IN types ) OR ( ( schema_prefix + 
        'INTEGER_INTERVAL_FROM_MIN'  ) IN types ) OR ( ( schema_prefix + 'FINITE_REAL_INTERVAL' ) IN types ) 
        OR ( ( schema_prefix + 'REAL_INTERVAL_FROM_MIN' ) IN types ) ) );

  END_FUNCTION; -- min_exists (line:43276 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func MIN_EXISTS(_ SPC: eMATHS_SPACE? ) 
    -> SDAI.BOOLEAN? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( SPC )
    if case .available(let _cached_value) = _min_exists__cache.cachedValue(params: _params) {
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
    let _TEMP6 = SDAI.FORCE_OPTIONAL(SCHEMA_PREFIX) + SDAI.FORCE_OPTIONAL(SDAI.STRING("FINITE_REAL_INTERVAL"))
    let _TEMP7 = SDAI.aggregate(TYPES, contains: SDAI.STRING(/*SDAI.INTEGER*/_TEMP6))
    let _TEMP8 = _TEMP5 || _TEMP7
    let _TEMP9 = SDAI.FORCE_OPTIONAL(SCHEMA_PREFIX) + SDAI.FORCE_OPTIONAL(SDAI.STRING("REAL_INTERVAL_FROM_MIN"))
    let _TEMP10 = SDAI.aggregate(TYPES, contains: SDAI.STRING(/*SDAI.INTEGER*/_TEMP9))
    let _TEMP11 = _TEMP8 || _TEMP10
    let _TEMP12 = BOOL(SDAI.LOGICAL(_TEMP11))
    return _min_exists__cache.updateCache(params: _params, value: _TEMP12)
  }

}

//MARK: - function result cache
private var _min_exists__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

