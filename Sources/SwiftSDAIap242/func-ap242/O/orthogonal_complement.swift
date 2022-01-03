/* file: orthogonal_complement.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  FUNCTION orthogonal_complement(
               vec : direction
           ) : direction;

    LOCAL
      result : direction;
    END_LOCAL;
    IF ( vec.dim <> 2 ) OR ( NOT EXISTS( vec ) ) THEN
      RETURN( ? );
    ELSE
      result := dummy_gri || direction( [-vec.direction_ratios[2], vec.direction_ratios[1]] );
      RETURN( result );
    END_IF;

  END_FUNCTION; -- orthogonal_complement (line:43862 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func ORTHOGONAL_COMPLEMENT(_ VEC: eDIRECTION? ) 
    -> eDIRECTION? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( VEC )
    if case .available(let _cached_value) = _orthogonal_complement__cache.cachedValue(params: _params) {
      return _cached_value as? eDIRECTION
    }

    var VEC = VEC; SDAI.TOUCH(var: &VEC)

    //LOCAL
    var RESULT: eDIRECTION? 

    
    let _TEMP1 = VEC?.DIM
    let _TEMP2 = _TEMP1 .!=. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(2))
    let _TEMP3 = SDAI.EXISTS(VEC)
    let _TEMP4 =  !_TEMP3
    let _TEMP5 = _TEMP2 || _TEMP4
    if SDAI.IS_TRUE( _TEMP5 ) {
      return _orthogonal_complement__cache.updateCache(params: _params, value: (nil as eDIRECTION?))
    }
    else {
      
      let _TEMP6 = VEC?.DIRECTION_RATIOS
      let _TEMP7 = _TEMP6?[2]
      let _TEMP8 =  -_TEMP7
      let _TEMP9 = VEC?.DIRECTION_RATIOS
      let _TEMP10 = _TEMP9?[1]
      let _TEMP11 = SDAI.LIST<SDAI.REAL>(bound1: SDAI.UNWRAP(SDAI.INTEGER(2)), bound2: SDAI.INTEGER(3), 
        ([SDAI.AIE(_TEMP8), SDAI.AIE(_TEMP10)] as [SDAI.AggregationInitializerElement<SDAI.REAL>]))
      let _TEMP12 = _direction(DIRECTION_RATIOS: SDAI.UNWRAP(_TEMP11))
      let _TEMP13 = DUMMY_GRI .||. _TEMP12
      RESULT = eDIRECTION(/*SDAI.GENERIC_ENTITY*/_TEMP13)
      return _orthogonal_complement__cache.updateCache(params: _params, value: RESULT)
    }
  }

}

//MARK: - function result cache
private var _orthogonal_complement__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

