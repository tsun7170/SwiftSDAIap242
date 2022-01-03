/* file: build_axes.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  FUNCTION build_axes(
               axis, ref_direction : direction
           ) : LIST [3 : 3] OF direction;

    LOCAL
      d1 : direction;
      d2 : direction;
    END_LOCAL;
    d1 := NVL( normalise( axis ), dummy_gri || direction( [0, 0, 1] ) );
    d2 := first_proj_axis( d1, ref_direction );
    RETURN( [d2, normalise( cross_product( d1, d2 ) )\vector.orientation, d1] );

  END_FUNCTION; -- build_axes (line:35731 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func BUILD_AXES(AXIS: eDIRECTION? , REF_DIRECTION: eDIRECTION? ) 
    -> (SDAI.LIST<eDIRECTION>/*[3:3]*/ )? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( AXIS, REF_DIRECTION )
    if case .available(let _cached_value) = _build_axes__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.LIST<eDIRECTION>
    }

    var AXIS = AXIS; SDAI.TOUCH(var: &AXIS)
    var REF_DIRECTION = REF_DIRECTION; SDAI.TOUCH(var: &REF_DIRECTION)

    //LOCAL
    var D1: eDIRECTION? 
    var D2: eDIRECTION? 
    //END_LOCAL

    
    let _TEMP1 = NORMALISE(sVECTOR_OR_DIRECTION(/*eDIRECTION*/AXIS))
    let _TEMP2 = SDAI.LIST<SDAI.REAL>(bound1: SDAI.UNWRAP(SDAI.INTEGER(2)), bound2: SDAI.INTEGER(3), 
      ([SDAI.AIE(SDAI.REAL(0)), SDAI.AIE(SDAI.REAL(0)), 
      SDAI.AIE(SDAI.REAL(1.0000000000e+00))] as [SDAI.AggregationInitializerElement<SDAI.REAL>]))
    let _TEMP3 = _direction(DIRECTION_RATIOS: SDAI.UNWRAP(_TEMP2))
    let _TEMP4 = DUMMY_GRI .||. _TEMP3
    let _TEMP5 = SDAI.NVL(V: _TEMP1, 
                          SUBSTITUTE: _TEMP4)
    D1 = eDIRECTION(/*sVECTOR_OR_DIRECTION*/_TEMP5)
    
    let _TEMP6 = FIRST_PROJ_AXIS(Z_AXIS: D1, 
                                 ARG: REF_DIRECTION)
    D2 = _TEMP6
    
    let _TEMP7 = CROSS_PRODUCT(ARG1: D1, 
                               ARG2: D2)
    let _TEMP8 = NORMALISE(sVECTOR_OR_DIRECTION(/*eVECTOR*/_TEMP7))
    let _TEMP9 = _TEMP8?.GROUP_REF(eVECTOR.self)
    let _TEMP10 = _TEMP9?.ORIENTATION
    let _TEMP11 = SDAI.LIST<eDIRECTION>(bound1: SDAI.UNWRAP(SDAI.INTEGER(3)), bound2: SDAI.INTEGER(3), 
      ([SDAI.AIE(D2), SDAI.AIE(_TEMP10), 
      SDAI.AIE(D1)] as [SDAI.AggregationInitializerElement<eDIRECTION>]))
    return _build_axes__cache.updateCache(params: _params, value: _TEMP11)
  }

}

//MARK: - function result cache
private var _build_axes__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

