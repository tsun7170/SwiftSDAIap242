/* file: vector_sum.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  FUNCTION vector_sum(
               arg1, arg2 : vector_or_direction
           ) : vector;

    LOCAL
      result : vector;
      res    : direction;
      vec1   : direction;
      vec2   : direction;
      mag    : REAL;
      mag1   : REAL;
      mag2   : REAL;
      ndim   : INTEGER;
    END_LOCAL;
    IF ( NOT EXISTS( arg1 ) ) OR ( NOT EXISTS( arg2 ) ) OR ( arg1.dim <> arg2.dim ) THEN
      RETURN( ? );
    ELSE

      BEGIN
        IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.VECTOR' IN TYPEOF( arg1 ) THEN
          mag1 := arg1\vector.magnitude;
          vec1 := arg1\vector.orientation;
        ELSE
          mag1 := 1;
          vec1 := arg1;
        END_IF;
        IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.VECTOR' IN TYPEOF( arg2 ) THEN
          mag2 := arg2\vector.magnitude;
          vec2 := arg2\vector.orientation;
        ELSE
          mag2 := 1;
          vec2 := arg2;
        END_IF;
        vec1 := normalise( vec1 );
        vec2 := normalise( vec2 );
        ndim := SIZEOF( vec1.direction_ratios );
        mag := 0;
        res := dummy_gri || direction( vec1.direction_ratios );
        REPEAT i := 1 TO ndim BY 1;
          res.direction_ratios[i] := ( mag1 * vec1.direction_ratios[i] ) + ( mag2 * vec2.direction_ratios[i] );
          mag := mag + ( res.direction_ratios[i] * res.direction_ratios[i] );
        END_REPEAT;
        IF mag > 0 THEN
          result := dummy_gri || vector( res, SQRT( mag ) );
        ELSE
          result := dummy_gri || vector( vec1, 0 );
        END_IF;
      END;
    END_IF;
    RETURN( result );

  END_FUNCTION; -- vector_sum (line:51466 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func VECTOR_SUM(ARG1: sVECTOR_OR_DIRECTION? , ARG2: sVECTOR_OR_DIRECTION? ) 
    -> eVECTOR? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( ARG1, ARG2 )
    if case .available(let _cached_value) = _vector_sum__cache.cachedValue(params: _params) {
      return _cached_value as? eVECTOR
    }

    var ARG1 = ARG1; SDAI.TOUCH(var: &ARG1)
    var ARG2 = ARG2; SDAI.TOUCH(var: &ARG2)

    //LOCAL
    var RESULT: eVECTOR? 
    var RES: eDIRECTION? 
    var VEC1: eDIRECTION? 
    var VEC2: eDIRECTION? 
    var MAG: SDAI.REAL? 
    var MAG1: SDAI.REAL? 
    var MAG2: SDAI.REAL? 
    var NDIM: SDAI.INTEGER? 
    //END_LOCAL

    
    let _TEMP1 = SDAI.EXISTS(ARG1)
    let _TEMP2 =  !_TEMP1
    let _TEMP3 = SDAI.EXISTS(ARG2)
    let _TEMP4 =  !_TEMP3
    let _TEMP5 = _TEMP2 || _TEMP4
    let _TEMP6 = ARG1?.DIM
    let _TEMP7 = ARG2?.DIM
    let _TEMP8 = _TEMP6 .!=. _TEMP7
    let _TEMP9 = _TEMP5 || _TEMP8
    if SDAI.IS_TRUE( _TEMP9 ) {
      return _vector_sum__cache.updateCache(params: _params, value: (nil as eVECTOR?))
    }
    else {
      //BEGIN
      
      let _TEMP10 = SDAI.TYPEOF(ARG1, IS: eVECTOR.self)
      if SDAI.IS_TRUE( _TEMP10 ) {
        
        let _TEMP11 = ARG1?.GROUP_REF(eVECTOR.self)
        let _TEMP12 = _TEMP11?.MAGNITUDE
        MAG1 = SDAI.REAL(/*tLENGTH_MEASURE*/_TEMP12)
        
        let _TEMP13 = ARG1?.GROUP_REF(eVECTOR.self)
        let _TEMP14 = _TEMP13?.ORIENTATION
        VEC1 = _TEMP14
      }
      else {
        MAG1 = SDAI.REAL(1.0000000000e+00)
        VEC1 = eDIRECTION(/*sVECTOR_OR_DIRECTION*/ARG1)
      }
      
      let _TEMP15 = SDAI.TYPEOF(ARG2, IS: eVECTOR.self)
      if SDAI.IS_TRUE( _TEMP15 ) {
        
        let _TEMP16 = ARG2?.GROUP_REF(eVECTOR.self)
        let _TEMP17 = _TEMP16?.MAGNITUDE
        MAG2 = SDAI.REAL(/*tLENGTH_MEASURE*/_TEMP17)
        
        let _TEMP18 = ARG2?.GROUP_REF(eVECTOR.self)
        let _TEMP19 = _TEMP18?.ORIENTATION
        VEC2 = _TEMP19
      }
      else {
        MAG2 = SDAI.REAL(1.0000000000e+00)
        VEC2 = eDIRECTION(/*sVECTOR_OR_DIRECTION*/ARG2)
      }
      
      let _TEMP20 = NORMALISE(sVECTOR_OR_DIRECTION(/*eDIRECTION*/VEC1))
      VEC1 = eDIRECTION(/*sVECTOR_OR_DIRECTION*/_TEMP20)
      
      let _TEMP21 = NORMALISE(sVECTOR_OR_DIRECTION(/*eDIRECTION*/VEC2))
      VEC2 = eDIRECTION(/*sVECTOR_OR_DIRECTION*/_TEMP21)
      
      let _TEMP22 = VEC1?.DIRECTION_RATIOS
      let _TEMP23 = SDAI.SIZEOF(_TEMP22)
      NDIM = _TEMP23
      MAG = SDAI.REAL(0)
      
      let _TEMP24 = VEC1?.DIRECTION_RATIOS
      let _TEMP25 = _direction(DIRECTION_RATIOS: SDAI.UNWRAP(_TEMP24))
      let _TEMP26 = DUMMY_GRI .||. _TEMP25
      RES = eDIRECTION(/*SDAI.GENERIC_ENTITY*/_TEMP26)
      if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/NDIM) {
        for I in incrementControl {
          
          let _TEMP27 = VEC1?.DIRECTION_RATIOS
          let _TEMP28 = _TEMP27?[I]
          let _TEMP29 = MAG1 * _TEMP28
          let _TEMP30 = VEC2?.DIRECTION_RATIOS
          let _TEMP31 = _TEMP30?[I]
          let _TEMP32 = MAG2 * _TEMP31
          let _TEMP33 = _TEMP29 + _TEMP32
          RES?.DIRECTION_RATIOS[I] = 
            _TEMP33
          
          let _TEMP34 = RES?.DIRECTION_RATIOS
          let _TEMP35 = _TEMP34?[I]
          let _TEMP36 = RES?.DIRECTION_RATIOS
          let _TEMP37 = _TEMP36?[I]
          let _TEMP38 = _TEMP35 * _TEMP37
          let _TEMP39 = MAG + _TEMP38
          MAG = _TEMP39
        }
      }
      
      let _TEMP40 = MAG > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      if SDAI.IS_TRUE( _TEMP40 ) {
        
        let _TEMP41 = SDAI.SQRT(MAG)
        let _TEMP42 = _vector(ORIENTATION: SDAI.UNWRAP(RES), 
                              MAGNITUDE: SDAI.UNWRAP(tLENGTH_MEASURE(/*SDAI.REAL*/_TEMP41)))
        let _TEMP43 = DUMMY_GRI .||. _TEMP42
        RESULT = eVECTOR(/*SDAI.GENERIC_ENTITY*/_TEMP43)
      }
      else {
        
        let _TEMP44 = _vector(ORIENTATION: SDAI.UNWRAP(VEC1), 
                              MAGNITUDE: SDAI.UNWRAP(tLENGTH_MEASURE(0)))
        let _TEMP45 = DUMMY_GRI .||. _TEMP44
        RESULT = eVECTOR(/*SDAI.GENERIC_ENTITY*/_TEMP45)
      }
      //END
    }
    return _vector_sum__cache.updateCache(params: _params, value: RESULT)
  }

}

//MARK: - function result cache
private var _vector_sum__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

