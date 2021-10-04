/* file: remove_first.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  FUNCTION remove_first(
               alist : LIST OF GENERIC:gen
           ) : LIST OF GENERIC:gen;

    LOCAL
      blist : LIST OF GENERIC:gen := alist;
    END_LOCAL;
    IF SIZEOF( blist ) > 0 THEN
      REMOVE( blist, 1 );
    END_IF;
    RETURN( blist );

  END_FUNCTION; -- remove_first (line:44137 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func REMOVE_FIRST<gGEN: SDAIGenericType>(
    _ ALIST: SDAI.LIST<gGEN>? ) -> SDAI.LIST<gGEN>? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( ALIST )
    if case .available(let _cached_value) = _remove_first__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.LIST<gGEN>
    }

    var ALIST = ALIST; SDAI.TOUCH(var: &ALIST)

    //LOCAL
    var BLIST: SDAI.LIST<gGEN>?  = ALIST; SDAI.TOUCH(var: &BLIST)

    
    let _TEMP1 = SDAI.SIZEOF(BLIST)
    let _TEMP2 = _TEMP1 > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
    if SDAI.IS_TRUE( _TEMP2 ) {
      SDAI.REMOVE( L: &BLIST, P: 1 )
    }
    return _remove_first__cache.updateCache(params: _params, value: BLIST)
  }

}

//MARK: - function result cache
private var _remove_first__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)
