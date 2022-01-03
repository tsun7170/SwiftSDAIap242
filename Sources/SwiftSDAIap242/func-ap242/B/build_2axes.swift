/* file: build_2axes.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  FUNCTION build_2axes(
               ref_direction : direction
           ) : LIST [2 : 2] OF direction;

    LOCAL
      d : direction := NVL( normalise( ref_direction ), dummy_gri || direction( [1, 0] ) );
    END_LOCAL;
    RETURN( [d, orthogonal_complement( d )] );

  END_FUNCTION; -- build_2axes (line:35724 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func BUILD_2AXES(_ REF_DIRECTION: eDIRECTION? ) 
    -> (SDAI.LIST<eDIRECTION>/*[2:2]*/ )? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( REF_DIRECTION )
    if case .available(let _cached_value) = _build_2axes__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.LIST<eDIRECTION>
    }

    var REF_DIRECTION = REF_DIRECTION; SDAI.TOUCH(var: &REF_DIRECTION)

    //LOCAL
    var D: eDIRECTION?  = eDIRECTION(/*sVECTOR_OR_DIRECTION*/SDAI.NVL(
                          V: NORMALISE(sVECTOR_OR_DIRECTION(/*eDIRECTION*/REF_DIRECTION)), 
                          SUBSTITUTE: DUMMY_GRI .||. _direction(DIRECTION_RATIOS: SDAI.UNWRAP(SDAI.LIST<SDAI.REAL>(
                          bound1: SDAI.UNWRAP(SDAI.INTEGER(2)), bound2: SDAI.INTEGER(3), 
                          ([SDAI.AIE(SDAI.REAL(1.0000000000e+00)), 
                          SDAI.AIE(SDAI.REAL(0))] as [SDAI.AggregationInitializerElement<SDAI.REAL>])))))); SDAI.TOUCH(var: &D)

    
    let _TEMP1 = ORTHOGONAL_COMPLEMENT(D)
    let _TEMP2 = SDAI.LIST<eDIRECTION>(bound1: SDAI.UNWRAP(SDAI.INTEGER(2)), bound2: SDAI.INTEGER(2), 
      ([SDAI.AIE(D), SDAI.AIE(_TEMP1)] as [SDAI.AggregationInitializerElement<eDIRECTION>]))
    return _build_2axes__cache.updateCache(params: _params, value: _TEMP2)
  }

}

//MARK: - function result cache
private var _build_2axes__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

