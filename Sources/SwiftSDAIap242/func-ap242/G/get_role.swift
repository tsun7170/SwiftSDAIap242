/* file: get_role.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  FUNCTION get_role(
               obj : role_select
           ) : object_role;

    LOCAL
      role_bag : BAG OF role_association := USEDIN( obj, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
                  + 'ROLE_ASSOCIATION.ITEM_WITH_ROLE'  );
    END_LOCAL;
    IF SIZEOF( role_bag ) = 1 THEN
      RETURN( role_bag[1].role );
    ELSE
      RETURN( ? );
    END_IF;

  END_FUNCTION; -- get_role (line:41910 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func GET_ROLE(_ OBJ: sROLE_SELECT? ) 
    -> eOBJECT_ROLE? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( OBJ )
    if case .available(let _cached_value) = _get_role__cache.cachedValue(params: _params) {
      return _cached_value as? eOBJECT_ROLE
    }

    var OBJ = OBJ; SDAI.TOUCH(var: &OBJ)

    //LOCAL
    var ROLE_BAG: SDAI.BAG<eROLE_ASSOCIATION>?  = SDAI.BAG<eROLE_ASSOCIATION>(/*SDAI.BAG<SDAI.GENERIC_ENTITY>*/
                                                  SDAI.USEDIN(T: OBJ, 
                                                  ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
                                                  .eROLE_ASSOCIATION.ITEM_WITH_ROLE)); SDAI.TOUCH(var: &ROLE_BAG)

    
    let _TEMP1 = SDAI.SIZEOF(ROLE_BAG)
    let _TEMP2 = _TEMP1 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
    if SDAI.IS_TRUE( _TEMP2 ) {
      
      let _TEMP3 = ROLE_BAG?[1]
      let _TEMP4 = _TEMP3?.ROLE
      return _get_role__cache.updateCache(params: _params, value: _TEMP4)
    }
    else {
      return _get_role__cache.updateCache(params: _params, value: (nil as eOBJECT_ROLE?))
    }
  }

}

//MARK: - function result cache
private var _get_role__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)
