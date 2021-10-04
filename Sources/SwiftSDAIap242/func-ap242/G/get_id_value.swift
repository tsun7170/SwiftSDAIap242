/* file: get_id_value.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  FUNCTION get_id_value(
               obj : id_attribute_select
           ) : identifier;

    LOCAL
      id_bag : BAG OF id_attribute := USEDIN( obj, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
                + 'ID_ATTRIBUTE.IDENTIFIED_ITEM'  );
    END_LOCAL;
    IF SIZEOF( id_bag ) = 1 THEN
      RETURN( id_bag[1].attribute_value );
    ELSE
      RETURN( ? );
    END_IF;

  END_FUNCTION; -- get_id_value (line:41736 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func GET_ID_VALUE(_ OBJ: sID_ATTRIBUTE_SELECT? ) 
    -> tIDENTIFIER? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( OBJ )
    if case .available(let _cached_value) = _get_id_value__cache.cachedValue(params: _params) {
      return _cached_value as? tIDENTIFIER
    }

    var OBJ = OBJ; SDAI.TOUCH(var: &OBJ)

    //LOCAL
    var ID_BAG: SDAI.BAG<eID_ATTRIBUTE>?  = SDAI.BAG<eID_ATTRIBUTE>(/*SDAI.BAG<SDAI.GENERIC_ENTITY>*/
                                            SDAI.USEDIN(T: OBJ, 
                                            ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
                                            .eID_ATTRIBUTE.IDENTIFIED_ITEM)); SDAI.TOUCH(var: &ID_BAG)

    
    let _TEMP1 = SDAI.SIZEOF(ID_BAG)
    let _TEMP2 = _TEMP1 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
    if SDAI.IS_TRUE( _TEMP2 ) {
      
      let _TEMP3 = ID_BAG?[1]
      let _TEMP4 = _TEMP3?.ATTRIBUTE_VALUE
      return _get_id_value__cache.updateCache(params: _params, value: _TEMP4)
    }
    else {
      return _get_id_value__cache.updateCache(params: _params, value: (nil as tIDENTIFIER?))
    }
  }

}

//MARK: - function result cache
private var _get_id_value__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)
