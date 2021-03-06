/* file: extract_factors.swift 	 generated: Mon Jan  3 16:32:52 2022 */

/* This file was generated by the EXPRESS to Swift translator "exp2swift", 
  derived from STEPcode (formerly NIST's SCL).
 exp2swift version: v.1.0.1, derived from stepcode v0.8 as of 2019/11/23 
 WARNING: You probably don't want to edit it since your modifications 
  will be lost if exp2swift is used to regenerate it.
 */

 
import SwiftSDAIcore

extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF {
//MARK: -FUNCTION DEFINITION in EXPRESS
/*

  FUNCTION extract_factors(
               tspace : tuple_space;
               m : INTEGER;
               n : INTEGER
           ) : tuple_space;

    LOCAL
      tsp : tuple_space := the_zero_tuple_space;
    END_LOCAL;
    REPEAT i := m TO n BY 1;
      tsp := assoc_product_space( tsp, factor_space( tspace, i ) );
    END_REPEAT;
    RETURN( tsp );

  END_FUNCTION; -- extract_factors (line:40612 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func EXTRACT_FACTORS(TSPACE: sTUPLE_SPACE? , M: SDAI.INTEGER? , N: SDAI.INTEGER? ) 
    -> sTUPLE_SPACE? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( TSPACE, M, N )
    if case .available(let _cached_value) = _extract_factors__cache.cachedValue(params: _params) {
      return _cached_value as? sTUPLE_SPACE
    }

    var TSPACE = TSPACE; SDAI.TOUCH(var: &TSPACE)
    var M = M; SDAI.TOUCH(var: &M)
    var N = N; SDAI.TOUCH(var: &N)

    //LOCAL
    var TSP: sTUPLE_SPACE?  = sTUPLE_SPACE(/*eLISTED_PRODUCT_SPACE*/THE_ZERO_TUPLE_SPACE); SDAI.TOUCH(var: &TSP)

    if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/M, TO:/*SDAI.INTEGER*/N) {
      for I in incrementControl {
        
        let _TEMP1 = FACTOR_SPACE(TSPACE: TSPACE, 
                                  IDX: tPOSITIVE_INTEGER(/*SDAI.INTEGER*/I))
        let _TEMP2 = ASSOC_PRODUCT_SPACE(
          TS1: TSP, TS2: sTUPLE_SPACE(/*eMATHS_SPACE*/_TEMP1))
        TSP = _TEMP2
      }
    }
    return _extract_factors__cache.updateCache(params: _params, value: TSP)
  }

}

//MARK: - function result cache
private var _extract_factors__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

