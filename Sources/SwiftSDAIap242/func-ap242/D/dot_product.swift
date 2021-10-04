/* file: dot_product.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  FUNCTION dot_product(
               arg1, arg2 : direction
           ) : REAL;

    LOCAL
      scalar : REAL;
      vec1   : direction;
      vec2   : direction;
      ndim   : INTEGER;
    END_LOCAL;
    IF ( NOT EXISTS( arg1 ) ) OR ( NOT EXISTS( arg2 ) ) THEN
      scalar := ?;
    ELSE
      IF arg1.dim <> arg2.dim THEN
        scalar := ?;
      ELSE

        BEGIN
          vec1 := normalise( arg1 );
          vec2 := normalise( arg2 );
          ndim := arg1.dim;
          scalar := 0;
          REPEAT i := 1 TO ndim BY 1;
            scalar := scalar + ( vec1.direction_ratios[i] * vec2.direction_ratios[i] );
          END_REPEAT;
        END;
      END_IF;
    END_IF;
    RETURN( scalar );

  END_FUNCTION; -- dot_product (line:38562 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func DOT_PRODUCT(ARG1: eDIRECTION? , ARG2: eDIRECTION? ) 
    -> SDAI.REAL? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( ARG1, ARG2 )
    if case .available(let _cached_value) = _dot_product__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.REAL
    }

    var ARG1 = ARG1; SDAI.TOUCH(var: &ARG1)
    var ARG2 = ARG2; SDAI.TOUCH(var: &ARG2)

    //LOCAL
    var SCALAR: SDAI.REAL? 
    var VEC1: eDIRECTION? 
    var VEC2: eDIRECTION? 
    var NDIM: SDAI.INTEGER? 
    //END_LOCAL

    
    let _TEMP1 = SDAI.EXISTS(ARG1)
    let _TEMP2 =  !_TEMP1
    let _TEMP3 = SDAI.EXISTS(ARG2)
    let _TEMP4 =  !_TEMP3
    let _TEMP5 = _TEMP2 || _TEMP4
    if SDAI.IS_TRUE( _TEMP5 ) {
      SCALAR = (nil as SDAI.REAL?)
    }
    else {
      
      let _TEMP6 = ARG1?.DIM
      let _TEMP7 = ARG2?.DIM
      let _TEMP8 = _TEMP6 .!=. _TEMP7
      if SDAI.IS_TRUE( _TEMP8 ) {
        SCALAR = (nil as SDAI.REAL?)
      }
      else {
        //BEGIN
        
        let _TEMP9 = NORMALISE(sVECTOR_OR_DIRECTION(/*eDIRECTION*/ARG1))
        VEC1 = eDIRECTION(/*sVECTOR_OR_DIRECTION*/_TEMP9)
        
        let _TEMP10 = NORMALISE(sVECTOR_OR_DIRECTION(/*eDIRECTION*/ARG2))
        VEC2 = eDIRECTION(/*sVECTOR_OR_DIRECTION*/_TEMP10)
        
        let _TEMP11 = ARG1?.DIM
        NDIM = SDAI.INTEGER(/*tDIMENSION_COUNT*/_TEMP11)
        SCALAR = SDAI.REAL(0)
        if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/NDIM) {
          for I in incrementControl {
            
            let _TEMP12 = VEC1?.DIRECTION_RATIOS
            let _TEMP13 = _TEMP12?[I]
            let _TEMP14 = VEC2?.DIRECTION_RATIOS
            let _TEMP15 = _TEMP14?[I]
            let _TEMP16 = _TEMP13 * _TEMP15
            let _TEMP17 = SCALAR + _TEMP16
            SCALAR = _TEMP17
          }
        }
        //END
      }
    }
    return _dot_product__cache.updateCache(params: _params, value: SCALAR)
  }

}

//MARK: - function result cache
private var _dot_product__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)
