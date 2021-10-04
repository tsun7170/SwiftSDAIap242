/* file: scalar_times_vector.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  FUNCTION scalar_times_vector(
               scalar : REAL;
               vec : vector_or_direction
           ) : vector;

    LOCAL
      v      : direction;
      mag    : REAL;
      result : vector;
    END_LOCAL;
    IF ( NOT EXISTS( scalar ) ) OR ( NOT EXISTS( vec ) ) THEN
      RETURN( ? );
    ELSE
      IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.VECTOR' IN TYPEOF( vec ) THEN
        v := dummy_gri || direction( vec\vector.orientation.direction_ratios );
        mag := scalar * vec\vector.magnitude;
      ELSE
        v := dummy_gri || direction( vec.direction_ratios );
        mag := scalar;
      END_IF;
      IF mag < 0 THEN
        REPEAT i := 1 TO SIZEOF( v.direction_ratios ) BY 1;
          v.direction_ratios[i] := -v.direction_ratios[i];
        END_REPEAT;
        mag := -mag;
      END_IF;
      result := dummy_gri || vector( normalise( v ), mag );
    END_IF;
    RETURN( result );

  END_FUNCTION; -- scalar_times_vector (line:44213 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func SCALAR_TIMES_VECTOR(SCALAR: SDAI.REAL? , VEC: sVECTOR_OR_DIRECTION? ) 
    -> eVECTOR? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( SCALAR, VEC )
    if case .available(let _cached_value) = _scalar_times_vector__cache.cachedValue(params: _params) {
      return _cached_value as? eVECTOR
    }

    var SCALAR = SCALAR; SDAI.TOUCH(var: &SCALAR)
    var VEC = VEC; SDAI.TOUCH(var: &VEC)

    //LOCAL
    var V: eDIRECTION? 
    var MAG: SDAI.REAL? 
    var RESULT: eVECTOR? 
    //END_LOCAL

    
    let _TEMP1 = SDAI.EXISTS(SCALAR)
    let _TEMP2 =  !_TEMP1
    let _TEMP3 = SDAI.EXISTS(VEC)
    let _TEMP4 =  !_TEMP3
    let _TEMP5 = _TEMP2 || _TEMP4
    if SDAI.IS_TRUE( _TEMP5 ) {
      return _scalar_times_vector__cache.updateCache(params: _params, value: (nil as eVECTOR?))
    }
    else {
      
      let _TEMP6 = SDAI.TYPEOF(VEC, IS: eVECTOR.self)
      if SDAI.IS_TRUE( _TEMP6 ) {
        
        let _TEMP7 = VEC?.GROUP_REF(eVECTOR.self)
        let _TEMP8 = _TEMP7?.ORIENTATION
        let _TEMP9 = _TEMP8?.DIRECTION_RATIOS
        let _TEMP10 = _direction(DIRECTION_RATIOS: SDAI.UNWRAP(_TEMP9))
        let _TEMP11 = DUMMY_GRI .||. _TEMP10
        V = eDIRECTION(/*SDAI.GENERIC_ENTITY*/_TEMP11)
        
        let _TEMP12 = VEC?.GROUP_REF(eVECTOR.self)
        let _TEMP13 = _TEMP12?.MAGNITUDE
        let _TEMP14 = SCALAR * _TEMP13
        MAG = _TEMP14
      }
      else {
        
        let _TEMP15 = VEC?.DIRECTION_RATIOS
        let _TEMP16 = _direction(DIRECTION_RATIOS: SDAI.UNWRAP(_TEMP15))
        let _TEMP17 = DUMMY_GRI .||. _TEMP16
        V = eDIRECTION(/*SDAI.GENERIC_ENTITY*/_TEMP17)
        MAG = SCALAR
      }
      
      let _TEMP18 = MAG < SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      if SDAI.IS_TRUE( _TEMP18 ) {
        if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/
          SDAI.SIZEOF(V?.DIRECTION_RATIOS)) {
          for I in incrementControl {
            
            let _TEMP19 = V?.DIRECTION_RATIOS
            let _TEMP20 = _TEMP19?[I]
            let _TEMP21 =  -_TEMP20
            V?.DIRECTION_RATIOS[I] = 
              _TEMP21
          }
        }
        MAG =  -MAG
      }
      
      let _TEMP22 = NORMALISE(sVECTOR_OR_DIRECTION(/*eDIRECTION*/V))
      let _TEMP23 = _vector(ORIENTATION: SDAI.UNWRAP(eDIRECTION(/*sVECTOR_OR_DIRECTION*/_TEMP22)), 
                            MAGNITUDE: SDAI.UNWRAP(tLENGTH_MEASURE(/*SDAI.REAL*/MAG)))
      let _TEMP24 = DUMMY_GRI .||. _TEMP23
      RESULT = eVECTOR(/*SDAI.GENERIC_ENTITY*/_TEMP24)
    }
    return _scalar_times_vector__cache.updateCache(params: _params, value: RESULT)
  }

}

//MARK: - function result cache
private var _scalar_times_vector__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

