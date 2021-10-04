/* file: bag_to_set.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  FUNCTION bag_to_set(
               the_bag : BAG OF GENERIC:intype
           ) : SET OF GENERIC:intype;

    LOCAL
      the_set : SET OF GENERIC:intype := [];
    END_LOCAL;
    IF SIZEOF( the_bag ) > 0 THEN
      REPEAT i := 1 TO HIINDEX( the_bag ) BY 1;
        the_set := the_set + the_bag[i];
      END_REPEAT;
    END_IF;
    RETURN( the_set );

  END_FUNCTION; -- bag_to_set (line:35629 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func BAG_TO_SET<gINTYPE: SDAIGenericType>(
    _ THE_BAG: SDAI.BAG<gINTYPE>? ) 
    -> SDAI.SET<gINTYPE>? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( THE_BAG )
    if case .available(let _cached_value) = _bag_to_set__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.SET<gINTYPE>
    }

    var THE_BAG = THE_BAG; SDAI.TOUCH(var: &THE_BAG)

    //LOCAL
    var THE_SET: SDAI.SET<gINTYPE>?  = SDAI.SET<gINTYPE>(SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &THE_SET)

    
    let _TEMP1 = SDAI.SIZEOF(THE_BAG)
    let _TEMP2 = _TEMP1 > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
    if SDAI.IS_TRUE( _TEMP2 ) {
      if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.HIINDEX(
        THE_BAG)) {
        for I in incrementControl {
          
          let _TEMP3 = THE_BAG?[I]
          let _TEMP4 = THE_SET + _TEMP3
          THE_SET = _TEMP4
        }
      }
    }
    return _bag_to_set__cache.updateCache(params: _params, value: THE_SET)
  }

}

//MARK: - function result cache
private var _bag_to_set__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

