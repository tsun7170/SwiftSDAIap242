/* file: above_plane.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  FUNCTION above_plane(
               p1, p2, p3, p4 : cartesian_point
           ) : REAL;

    LOCAL
      dir2 : direction := dummy_gri || direction( [1, 0, 0] );
      dir3 : direction := dummy_gri || direction( [1, 0, 0] );
      dir4 : direction := dummy_gri || direction( [1, 0, 0] );
      val  : REAL;
      mag  : REAL;
    END_LOCAL;
    IF p1.dim <> 3 THEN
      RETURN( ? );
    END_IF;
    REPEAT i := 1 TO 3 BY 1;
      dir2.direction_ratios[i] := p2.coordinates[i] - p1.coordinates[i];
      dir3.direction_ratios[i] := p3.coordinates[i] - p1.coordinates[i];
      dir4.direction_ratios[i] := p4.coordinates[i] - p1.coordinates[i];
      mag := dir4.direction_ratios[i] * dir4.direction_ratios[i];
    END_REPEAT;
    mag := SQRT( mag );
    val := mag * dot_product( dir4, cross_product( dir2, dir3 ).orientation );
    RETURN( val );

  END_FUNCTION; -- above_plane (line:34730 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func ABOVE_PLANE(P1: eCARTESIAN_POINT? , P2: eCARTESIAN_POINT? , P3: eCARTESIAN_POINT? , 
                   P4: eCARTESIAN_POINT? ) 
    -> SDAI.REAL? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( P1, P2, P3, P4 )
    if case .available(let _cached_value) = _above_plane__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.REAL
    }

    var P1 = P1; SDAI.TOUCH(var: &P1)
    var P2 = P2; SDAI.TOUCH(var: &P2)
    var P3 = P3; SDAI.TOUCH(var: &P3)
    var P4 = P4; SDAI.TOUCH(var: &P4)

    //LOCAL
    var DIR2: eDIRECTION?  = eDIRECTION(/*SDAI.GENERIC_ENTITY*/DUMMY_GRI .||. 
                             _direction(DIRECTION_RATIOS: SDAI.UNWRAP(SDAI.LIST<SDAI.REAL>(
                             bound1: SDAI.UNWRAP(SDAI.INTEGER(2)), bound2: SDAI.INTEGER(3), 
                             ([SDAI.AIE(SDAI.REAL(1.0000000000e+00)), 
                             SDAI.AIE(SDAI.REAL(0)), 
                             SDAI.AIE(SDAI.REAL(0))] as [SDAI.AggregationInitializerElement<SDAI.REAL>]))))); SDAI.TOUCH(var: &DIR2)
    var DIR3: eDIRECTION?  = eDIRECTION(/*SDAI.GENERIC_ENTITY*/DUMMY_GRI .||. 
                             _direction(DIRECTION_RATIOS: SDAI.UNWRAP(SDAI.LIST<SDAI.REAL>(
                             bound1: SDAI.UNWRAP(SDAI.INTEGER(2)), bound2: SDAI.INTEGER(3), 
                             ([SDAI.AIE(SDAI.REAL(1.0000000000e+00)), 
                             SDAI.AIE(SDAI.REAL(0)), 
                             SDAI.AIE(SDAI.REAL(0))] as [SDAI.AggregationInitializerElement<SDAI.REAL>]))))); SDAI.TOUCH(var: &DIR3)
    var DIR4: eDIRECTION?  = eDIRECTION(/*SDAI.GENERIC_ENTITY*/DUMMY_GRI .||. 
                             _direction(DIRECTION_RATIOS: SDAI.UNWRAP(SDAI.LIST<SDAI.REAL>(
                             bound1: SDAI.UNWRAP(SDAI.INTEGER(2)), bound2: SDAI.INTEGER(3), 
                             ([SDAI.AIE(SDAI.REAL(1.0000000000e+00)), 
                             SDAI.AIE(SDAI.REAL(0)), 
                             SDAI.AIE(SDAI.REAL(0))] as [SDAI.AggregationInitializerElement<SDAI.REAL>]))))); SDAI.TOUCH(var: &DIR4)
    var VAL: SDAI.REAL? 
    var MAG: SDAI.REAL? 
    //END_LOCAL

    
    let _TEMP1 = P1?.DIM
    let _TEMP2 = _TEMP1 .!=. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(3))
    if SDAI.IS_TRUE( _TEMP2 ) {
      return _above_plane__cache.updateCache(params: _params, value: (nil as SDAI.REAL?))
    }
    if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/3) {
      for I in incrementControl {
        
        let _TEMP3 = P2?.COORDINATES
        let _TEMP4 = _TEMP3?[I]
        let _TEMP5 = P1?.COORDINATES
        let _TEMP6 = _TEMP5?[I]
        let _TEMP7 = _TEMP4 - _TEMP6
        DIR2?.DIRECTION_RATIOS[I] = 
          _TEMP7
        
        let _TEMP8 = P3?.COORDINATES
        let _TEMP9 = _TEMP8?[I]
        let _TEMP10 = P1?.COORDINATES
        let _TEMP11 = _TEMP10?[I]
        let _TEMP12 = _TEMP9 - _TEMP11
        DIR3?.DIRECTION_RATIOS[I] = 
          _TEMP12
        
        let _TEMP13 = P4?.COORDINATES
        let _TEMP14 = _TEMP13?[I]
        let _TEMP15 = P1?.COORDINATES
        let _TEMP16 = _TEMP15?[I]
        let _TEMP17 = _TEMP14 - _TEMP16
        DIR4?.DIRECTION_RATIOS[I] = 
          _TEMP17
        
        let _TEMP18 = DIR4?.DIRECTION_RATIOS
        let _TEMP19 = _TEMP18?[I]
        let _TEMP20 = DIR4?.DIRECTION_RATIOS
        let _TEMP21 = _TEMP20?[I]
        let _TEMP22 = _TEMP19 * _TEMP21
        MAG = _TEMP22
      }
    }
    
    let _TEMP23 = SDAI.SQRT(MAG)
    MAG = _TEMP23
    
    let _TEMP24 = CROSS_PRODUCT(ARG1: DIR2, 
                                ARG2: DIR3)
    let _TEMP25 = _TEMP24?.ORIENTATION
    let _TEMP26 = DOT_PRODUCT(ARG1: DIR4, 
                              ARG2: _TEMP25)
    let _TEMP27 = MAG * _TEMP26
    VAL = _TEMP27
    return _above_plane__cache.updateCache(params: _params, value: VAL)
  }

}

//MARK: - function result cache
private var _above_plane__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)
