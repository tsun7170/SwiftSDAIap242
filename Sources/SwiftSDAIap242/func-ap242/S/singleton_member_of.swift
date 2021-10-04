/* file: singleton_member_of.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  FUNCTION singleton_member_of(
               spc : maths_space
           ) : maths_value;

    LOCAL
      types : SET OF STRING := stripped_typeof( spc );
    END_LOCAL;
    IF 'FINITE_SPACE' IN types THEN
      IF SIZEOF( spc\finite_space.members ) = 1 THEN
        RETURN( spc\finite_space.members[1] );
      END_IF;
      RETURN( ? );
    END_IF;
    IF 'FINITE_INTEGER_INTERVAL' IN types THEN
      IF spc\finite_integer_interval.size = 1 THEN
        RETURN( spc\finite_integer_interval.min );
      END_IF;
      RETURN( ? );
    END_IF;
    RETURN( ? );

  END_FUNCTION; -- singleton_member_of (line:46369 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func SINGLETON_MEMBER_OF(_ SPC: eMATHS_SPACE? ) 
    -> sMATHS_VALUE? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( SPC )
    if case .available(let _cached_value) = _singleton_member_of__cache.cachedValue(params: _params) {
      return _cached_value as? sMATHS_VALUE
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
      if SDAI.IS_TRUE( _TEMP5 ) {
        
        let _TEMP6 = SPC?.GROUP_REF(eFINITE_SPACE.self)
        let _TEMP7 = _TEMP6?.MEMBERS
        let _TEMP8 = _TEMP7?[1]
        return _singleton_member_of__cache.updateCache(params: _params, value: _TEMP8)
      }
      return _singleton_member_of__cache.updateCache(params: _params, value: (nil as sMATHS_VALUE?))
    }
    
    let _TEMP9 = SDAI.aggregate(TYPES, contains: SDAI.STRING("FINITE_INTEGER_INTERVAL"))
    if SDAI.IS_TRUE( _TEMP9 ) {
      
      let _TEMP10 = SPC?.GROUP_REF(eFINITE_INTEGER_INTERVAL.self)
      let _TEMP11 = _TEMP10?.SIZE
      let _TEMP12 = _TEMP11 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      if SDAI.IS_TRUE( _TEMP12 ) {
        
        let _TEMP13 = SPC?.GROUP_REF(eFINITE_INTEGER_INTERVAL.self)
        let _TEMP14 = _TEMP13?.MIN
        return _singleton_member_of__cache.updateCache(params: _params, value: sMATHS_VALUE(/*SDAI.INTEGER*/
          _TEMP14))
      }
      return _singleton_member_of__cache.updateCache(params: _params, value: (nil as sMATHS_VALUE?))
    }
    return _singleton_member_of__cache.updateCache(params: _params, value: (nil as sMATHS_VALUE?))
  }

}

//MARK: - function result cache
private var _singleton_member_of__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)
