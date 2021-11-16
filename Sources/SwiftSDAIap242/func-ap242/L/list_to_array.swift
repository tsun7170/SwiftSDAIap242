/* file: list_to_array.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  FUNCTION list_to_array(
               lis : LIST [0 : ?] OF GENERIC:t;
               low : INTEGER;
               u : INTEGER
           ) : ARRAY [low : u] OF GENERIC:t;

    LOCAL
      n   : INTEGER;
      res : ARRAY [low : u] OF GENERIC:t;
    END_LOCAL;
    n := SIZEOF( lis );
    IF n <> ( ( u - low ) + 1 ) THEN
      RETURN( ? );
    ELSE
      res := [lis[1] : n];
      REPEAT i := 2 TO n BY 1;
        res[( low + i ) - 1] := lis[i];
      END_REPEAT;
      RETURN( res );
    END_IF;

  END_FUNCTION; -- list_to_array (line:42471 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func LIST_TO_ARRAY<gT: SDAIGenericType>(
    LIS: (SDAI.LIST<gT>/*[0:nil]*/ )? , LOW: SDAI.INTEGER? , U: SDAI.INTEGER? ) 
    -> (SDAI.ARRAY<gT>/*[LOW:U]*/ )? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( LIS, LOW, U )
    if case .available(let _cached_value) = _list_to_array__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.ARRAY<gT>
    }

    var LIS = LIS; SDAI.TOUCH(var: &LIS)
    var LOW = LOW; SDAI.TOUCH(var: &LOW)
    var U = U; SDAI.TOUCH(var: &U)

    //LOCAL
    var N: SDAI.INTEGER? 
    var RES: (SDAI.ARRAY<gT>/*[LOW:U]*/ )? 
    //END_LOCAL

    
    let _TEMP1 = SDAI.SIZEOF(LIS)
    N = _TEMP1
    
    let _TEMP2 = U - LOW
    let _TEMP3 = _TEMP2 + SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
    let _TEMP4 = N .!=. _TEMP3
    if SDAI.IS_TRUE( _TEMP4 ) {
      return _list_to_array__cache.updateCache(params: _params, value: (nil as SDAI.ARRAY<gT>?))
    }
    else {
      
      let _TEMP5 = LIS?[1]
      let _TEMP6 = SDAI.ARRAY<gT>(bound1: SDAI.UNWRAP(LOW), bound2: SDAI.UNWRAP(U), 
        ([SDAI.AIE(_TEMP5, repeat: N)] as [SDAI.AggregationInitializerElement<gT>]))
      RES = _TEMP6
      if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/2, TO:/*SDAI.INTEGER*/N) {
        for I in incrementControl {
          
          let _TEMP7 = LIS?[I]
          let _TEMP8 = LOW + SDAI.FORCE_OPTIONAL(I)
          let _TEMP9 = _TEMP8 - SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
          RES?[_TEMP9] = _TEMP7
        }
      }
      return _list_to_array__cache.updateCache(params: _params, value: RES)
    }
  }

}

//MARK: - function result cache
private var _list_to_array__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

