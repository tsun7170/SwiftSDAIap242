/* file: list_to_set.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  FUNCTION list_to_set(
               l : LIST [0 : ?] OF GENERIC:t
           ) : SET OF GENERIC:t;

    LOCAL
      s : SET OF GENERIC:t := [];
    END_LOCAL;
    REPEAT i := 1 TO SIZEOF( l ) BY 1;
      s := s + l[i];
    END_REPEAT;
    RETURN( s );

  END_FUNCTION; -- list_to_set (line:42477 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func LIST_TO_SET<gT: SDAIGenericType>(
    _ L: (SDAI.LIST<gT>/*[0:nil]*/ )? ) 
    -> SDAI.SET<gT>? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( L )
    if case .available(let _cached_value) = _list_to_set__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.SET<gT>
    }

    var L = L; SDAI.TOUCH(var: &L)

    //LOCAL
    var S: SDAI.SET<gT>?  = SDAI.SET<gT>(SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &S)

    if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.SIZEOF(
      L)) {
      for I in incrementControl {
        
        let _TEMP1 = L?[I]
        let _TEMP2 = S + _TEMP1
        S = _TEMP2
      }
    }
    return _list_to_set__cache.updateCache(params: _params, value: S)
  }

}

//MARK: - function result cache
private var _list_to_set__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)
