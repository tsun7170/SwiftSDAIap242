/* file: same_side.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  FUNCTION same_side(
               plane_pts : LIST [3 : 3] OF cartesian_point;
               test_points : LIST [2 : ?] OF cartesian_point
           ) : BOOLEAN;

    LOCAL
      val1 : REAL;
      val2 : REAL;
      n    : INTEGER;
    END_LOCAL;
    IF ( plane_pts[1].dim = 2 ) OR ( test_points[1].dim = 2 ) THEN
      RETURN( ? );
    END_IF;
    n := SIZEOF( test_points );
    val1 := above_plane( plane_pts[1], plane_pts[2], plane_pts[3], test_points[1] );
    REPEAT i := 2 TO n BY 1;
      val2 := above_plane( plane_pts[1], plane_pts[2], plane_pts[3], test_points[i] );
      IF ( val1 * val2 ) <= 0 THEN
        RETURN( FALSE );
      END_IF;
    END_REPEAT;
    RETURN( TRUE );

  END_FUNCTION; -- same_side (line:44201 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func SAME_SIDE(PLANE_PTS: (SDAI.LIST<eCARTESIAN_POINT>/*[3:3]*/ )? , TEST_POINTS: (SDAI.LIST<
                 eCARTESIAN_POINT>/*[2:nil]*/ )? ) 
    -> SDAI.BOOLEAN? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( PLANE_PTS, TEST_POINTS )
    if case .available(let _cached_value) = _same_side__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.BOOLEAN
    }

    var PLANE_PTS = PLANE_PTS; SDAI.TOUCH(var: &PLANE_PTS)
    var TEST_POINTS = TEST_POINTS; SDAI.TOUCH(var: &TEST_POINTS)

    //LOCAL
    var VAL1: SDAI.REAL? 
    var VAL2: SDAI.REAL? 
    var N: SDAI.INTEGER? 
    //END_LOCAL

    
    let _TEMP1 = PLANE_PTS?[1]
    let _TEMP2 = _TEMP1?.DIM
    let _TEMP3 = _TEMP2 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(2))
    let _TEMP4 = TEST_POINTS?[1]
    let _TEMP5 = _TEMP4?.DIM
    let _TEMP6 = _TEMP5 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(2))
    let _TEMP7 = _TEMP3 || _TEMP6
    if SDAI.IS_TRUE( _TEMP7 ) {
      return _same_side__cache.updateCache(params: _params, value: (nil as SDAI.BOOLEAN?))
    }
    
    let _TEMP8 = SDAI.SIZEOF(TEST_POINTS)
    N = _TEMP8
    
    let _TEMP9 = PLANE_PTS?[1]
    let _TEMP10 = PLANE_PTS?[2]
    let _TEMP11 = PLANE_PTS?[3]
    let _TEMP12 = TEST_POINTS?[1]
    let _TEMP13 = ABOVE_PLANE(P1: _TEMP9, 
                              P2: _TEMP10, 
                              P3: _TEMP11, 
                              P4: _TEMP12)
    VAL1 = _TEMP13
    if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/2, TO:/*SDAI.INTEGER*/N) {
      for I in incrementControl {
        
        let _TEMP14 = PLANE_PTS?[1]
        let _TEMP15 = PLANE_PTS?[2]
        let _TEMP16 = PLANE_PTS?[3]
        let _TEMP17 = TEST_POINTS?[I]
        let _TEMP18 = ABOVE_PLANE(P1: _TEMP14, 
                                  P2: _TEMP15, 
                                  P3: _TEMP16, 
                                  P4: _TEMP17)
        VAL2 = _TEMP18
        
        let _TEMP19 = VAL1 * VAL2
        let _TEMP20 = _TEMP19 <= SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
        if SDAI.IS_TRUE( _TEMP20 ) {
          return _same_side__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.FALSE))
        }
      }
    }
    return _same_side__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.TRUE))
  }

}

//MARK: - function result cache
private var _same_side__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

