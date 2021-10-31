/* file: parallel_composed_function_composability_check.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  FUNCTION parallel_composed_function_composability_check(
               funcs : LIST OF maths_function;
               final : maths_function_select
           ) : BOOLEAN;

    LOCAL
      tplsp  : tuple_space := the_zero_tuple_space;
      finfun : maths_function := convert_to_maths_function( final );
    END_LOCAL;
    REPEAT i := 1 TO SIZEOF( funcs ) BY 1;
      tplsp := assoc_product_space( tplsp, funcs[i].range );
    END_REPEAT;
    RETURN( compatible_spaces( tplsp, finfun.domain ) );

  END_FUNCTION; -- parallel_composed_function_composability_check (line:43860 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func PARALLEL_COMPOSED_FUNCTION_COMPOSABILITY_CHECK(
    FUNCS: SDAI.LIST<eMATHS_FUNCTION>? , FINAL: sMATHS_FUNCTION_SELECT? ) 
    -> SDAI.BOOLEAN? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( FUNCS, FINAL )
    if case .available(let _cached_value) = _parallel_composed_function_composability_check__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.BOOLEAN
    }

    var FUNCS = FUNCS; SDAI.TOUCH(var: &FUNCS)
    var FINAL = FINAL; SDAI.TOUCH(var: &FINAL)

    //LOCAL
    var TPLSP: sTUPLE_SPACE?  = sTUPLE_SPACE(/*eLISTED_PRODUCT_SPACE*/THE_ZERO_TUPLE_SPACE); SDAI.TOUCH(var: &TPLSP)
    var FINFUN: eMATHS_FUNCTION?  = CONVERT_TO_MATHS_FUNCTION(FINAL); SDAI.TOUCH(var: &FINFUN)
    //END_LOCAL

    if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.SIZEOF(
      FUNCS)) {
      for I in incrementControl {
        
        let _TEMP1 = FUNCS?[I]
        let _TEMP2 = _TEMP1?.RANGE
        let _TEMP3 = ASSOC_PRODUCT_SPACE(
          TS1: TPLSP, TS2: _TEMP2)
        TPLSP = _TEMP3
      }
    }
    
    let _TEMP4 = FINFUN?.DOMAIN
    let _TEMP5 = COMPATIBLE_SPACES(SP1: eMATHS_SPACE(/*sTUPLE_SPACE*/TPLSP), 
                                   SP2: eMATHS_SPACE(/*sTUPLE_SPACE*/_TEMP4))
    return _parallel_composed_function_composability_check__cache.updateCache(params: _params, value: _TEMP5)
  }

}

//MARK: - function result cache
private var _parallel_composed_function_composability_check__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

