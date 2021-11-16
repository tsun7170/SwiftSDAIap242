/* file: using_representation_with_mapping.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  FUNCTION using_representation_with_mapping(
               item : representation_item
           ) : SET OF representation;

    LOCAL
      results                  : SET OF representation := [];
      local_results            : SET OF representation := [];
      local_representation_map : SET OF representation_map := [];
      intermediate_items       : SET OF representation_item := [];
    END_LOCAL;
    local_results := QUERY ( z <* using_representations( item ) | ( SIZEOF( USEDIN( z, 
        'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.REPRESENTATION_MAP.MAPPED_REPRESENTATION'  ) ) > 0 ) );
    IF SIZEOF( local_results ) = 0 THEN
      RETURN( [] );
    ELSE
      REPEAT i := 1 TO HIINDEX( local_results ) BY 1;
        local_representation_map := local_representation_map + bag_to_set( USEDIN( local_results[i], 
            'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.REPRESENTATION_MAP.MAPPED_REPRESENTATION'  ) );
      END_REPEAT;
      REPEAT i := 1 TO HIINDEX( local_representation_map ) BY 1;
        intermediate_items := intermediate_items + bag_to_set( USEDIN( local_representation_map[i], 
            'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.MAPPED_ITEM.MAPPING_SOURCE'  ) );
      END_REPEAT;
      REPEAT j := 1 TO HIINDEX( intermediate_items ) BY 1;
        results := results + using_representation_with_mapping( intermediate_items[j] );
      END_REPEAT;
    END_IF;
    RETURN( results );

  END_FUNCTION; -- using_representation_with_mapping (line:47355 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func USING_REPRESENTATION_WITH_MAPPING(
    _ ITEM: eREPRESENTATION_ITEM? ) 
    -> SDAI.SET<eREPRESENTATION>? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( ITEM )
    if case .available(let _cached_value) = _using_representation_with_mapping__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.SET<eREPRESENTATION>
    }

    var ITEM = ITEM; SDAI.TOUCH(var: &ITEM)

    //LOCAL
    var RESULTS: SDAI.SET<eREPRESENTATION>?  = SDAI.SET<eREPRESENTATION>(SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &RESULTS)
    var LOCAL_RESULTS: SDAI.SET<eREPRESENTATION>?  = SDAI.SET<eREPRESENTATION>(SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &LOCAL_RESULTS)
    var LOCAL_REPRESENTATION_MAP: SDAI.SET<eREPRESENTATION_MAP>?  = SDAI.SET<eREPRESENTATION_MAP>(
                                                                    SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &LOCAL_REPRESENTATION_MAP)
    var INTERMEDIATE_ITEMS: SDAI.SET<eREPRESENTATION_ITEM>?  = SDAI.SET<eREPRESENTATION_ITEM>(
                                                               SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &INTERMEDIATE_ITEMS)
    //END_LOCAL

    
    let _TEMP1 = USING_REPRESENTATIONS(sFOUNDED_ITEM_SELECT(/*eREPRESENTATION_ITEM*/ITEM))
    let _TEMP2 = _TEMP1?.QUERY{ Z in 

        let _TEMP1 = SDAI.USEDIN(T: Z, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
          .eREPRESENTATION_MAP.MAPPED_REPRESENTATION)
        let _TEMP2 = SDAI.SIZEOF(_TEMP1)
        let _TEMP3 = _TEMP2 > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
        return _TEMP3 }
    LOCAL_RESULTS = _TEMP2
    
    let _TEMP3 = SDAI.SIZEOF(LOCAL_RESULTS)
    let _TEMP4 = _TEMP3 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
    if SDAI.IS_TRUE( _TEMP4 ) {
      
      let _TEMP5 = SDAI.SET<eREPRESENTATION>(SDAI.EMPLY_AGGREGATE)
      return _using_representation_with_mapping__cache.updateCache(params: _params, value: _TEMP5)
    }
    else {
      if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.HIINDEX(
        LOCAL_RESULTS)) {
        for I in incrementControl {
          
          let _TEMP6 = LOCAL_RESULTS?[I]
          let _TEMP7 = SDAI.USEDIN(T: _TEMP6, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
            .eREPRESENTATION_MAP.MAPPED_REPRESENTATION)
          let _TEMP8 = BAG_TO_SET(_TEMP7)
          let _TEMP9 = LOCAL_REPRESENTATION_MAP + _TEMP8
          LOCAL_REPRESENTATION_MAP = 
            SDAI.SET<eREPRESENTATION_MAP>(generic: /*SDAI.SET<runtime>*/_TEMP9)
        }
      }
      if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.HIINDEX(
        LOCAL_REPRESENTATION_MAP)) {
        for I in incrementControl {
          
          let _TEMP10 = LOCAL_REPRESENTATION_MAP?[I]
          let _TEMP11 = SDAI.USEDIN(T: _TEMP10, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
            .eMAPPED_ITEM.MAPPING_SOURCE)
          let _TEMP12 = BAG_TO_SET(_TEMP11)
          let _TEMP13 = INTERMEDIATE_ITEMS + _TEMP12
          INTERMEDIATE_ITEMS = SDAI.SET<eREPRESENTATION_ITEM>(generic: /*SDAI.SET<runtime>*/_TEMP13)
        }
      }
      if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.HIINDEX(
        INTERMEDIATE_ITEMS)) {
        for J in incrementControl {
          
          let _TEMP14 = INTERMEDIATE_ITEMS?[J]
          let _TEMP15 = USING_REPRESENTATION_WITH_MAPPING(_TEMP14)
          let _TEMP16 = RESULTS + _TEMP15
          RESULTS = _TEMP16
        }
      }
    }
    return _using_representation_with_mapping__cache.updateCache(params: _params, value: RESULTS)
  }

}

//MARK: - function result cache
private var _using_representation_with_mapping__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

