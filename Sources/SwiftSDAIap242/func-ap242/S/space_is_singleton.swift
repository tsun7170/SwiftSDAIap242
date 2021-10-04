/* file: space_is_singleton.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  FUNCTION space_is_singleton(
               spc : maths_space
           ) : BOOLEAN;

    LOCAL
      types : SET OF STRING := stripped_typeof( spc );
    END_LOCAL;
    IF 'FINITE_SPACE' IN types THEN
      RETURN( bool( SIZEOF( spc\finite_space.members ) = 1 ) );
    END_IF;
    IF 'FINITE_INTEGER_INTERVAL' IN types THEN
      RETURN( bool( spc\finite_integer_interval.size = 1 ) );
    END_IF;
    RETURN( FALSE );

  END_FUNCTION; -- space_is_singleton (line:46464 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func SPACE_IS_SINGLETON(_ SPC: eMATHS_SPACE? ) 
    -> SDAI.BOOLEAN? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( SPC )
    if case .available(let _cached_value) = _space_is_singleton__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.BOOLEAN
    }

    var SPC = SPC; SDAI.TOUCH(var: &SPC)

    //LOCAL
    var TYPES: SDAI.SET<SDAI.STRING>?  = STRIPPED_TYPEOF(SPC); SDAI.TOUCH(var: &TYPES)

    
    let _TEMP1 = SDAI.aggregate(TYPES, contains: SDAI.STRING("FINITE_SPACE"))
    if SDAI.IS_TRUE( _TEMP1 ) {
      
      let _TEMP2 = SPC?.GROUP_REF(eFINITE_SPACE.self)
      let _TEMP3 = _TEMP2?.MEMBERS
      let _TEMP4 = SDAI.SIZEOF(_TEMP3)
      let _TEMP5 = _TEMP4 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      let _TEMP6 = BOOL(SDAI.LOGICAL(_TEMP5))
      return _space_is_singleton__cache.updateCache(params: _params, value: _TEMP6)
    }
    
    let _TEMP7 = SDAI.aggregate(TYPES, contains: SDAI.STRING("FINITE_INTEGER_INTERVAL"))
    if SDAI.IS_TRUE( _TEMP7 ) {
      
      let _TEMP8 = SPC?.GROUP_REF(eFINITE_INTEGER_INTERVAL.self)
      let _TEMP9 = _TEMP8?.SIZE
      let _TEMP10 = _TEMP9 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      let _TEMP11 = BOOL(SDAI.LOGICAL(_TEMP10))
      return _space_is_singleton__cache.updateCache(params: _params, value: _TEMP11)
    }
    return _space_is_singleton__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.FALSE))
  }

}

//MARK: - function result cache
private var _space_is_singleton__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)
