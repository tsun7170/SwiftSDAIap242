/* file: make_array_of_array.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  FUNCTION make_array_of_array(
               lis : LIST [1 : ?] OF LIST [1 : ?] OF GENERIC:t;
               low1 : INTEGER;
               u1 : INTEGER;
               low2 : INTEGER;
               u2 : INTEGER
           ) : ARRAY [low1 : u1] OF ARRAY [low2 : u2] OF GENERIC:t;

    LOCAL
      res : ARRAY [low1 : u1] OF ARRAY [low2 : u2] OF GENERIC:t;
    END_LOCAL;
    IF ( ( u1 - low1 ) + 1 ) <> SIZEOF( lis ) THEN
      RETURN( ? );
    END_IF;
    IF ( ( u2 - low2 ) + 1 ) <> SIZEOF( lis[1] ) THEN
      RETURN( ? );
    END_IF;
    res := [list_to_array( lis[1], low2, u2 ) : ( ( u1 - low1 ) + 1 )];
    REPEAT i := 2 TO HIINDEX( lis ) BY 1;
      IF ( ( u2 - low2 ) + 1 ) <> SIZEOF( lis[i] ) THEN
        RETURN( ? );
      END_IF;
      res[( low1 + i ) - 1] := list_to_array( lis[i], low2, u2 );
    END_REPEAT;
    RETURN( res );

  END_FUNCTION; -- make_array_of_array (line:42501 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func MAKE_ARRAY_OF_ARRAY<gT: SDAIGenericType>(
    LIS: (SDAI.LIST<SDAI.LIST<gT>/*[1:nil]*/ >/*[1:nil]*/ )? , LOW1: SDAI.INTEGER? , 
    U1: SDAI.INTEGER? , LOW2: SDAI.INTEGER? , U2: SDAI.INTEGER? ) 
    -> (SDAI.ARRAY<SDAI.ARRAY<gT>/*[LOW2:U2]*/ >/*[LOW1:U1]*/ )? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( LIS, LOW1, U1, LOW2, U2 )
    if case .available(let _cached_value) = _make_array_of_array__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.ARRAY<SDAI.ARRAY<gT>>
    }

    var LIS = LIS; SDAI.TOUCH(var: &LIS)
    var LOW1 = LOW1; SDAI.TOUCH(var: &LOW1)
    var U1 = U1; SDAI.TOUCH(var: &U1)
    var LOW2 = LOW2; SDAI.TOUCH(var: &LOW2)
    var U2 = U2; SDAI.TOUCH(var: &U2)

    //LOCAL
    var RES: (SDAI.ARRAY<SDAI.ARRAY<gT>/*[LOW2:U2]*/ >/*[LOW1:U1]*/ )? 

    
    let _TEMP1 = U1 - LOW1
    let _TEMP2 = _TEMP1 + SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
    let _TEMP3 = SDAI.SIZEOF(LIS)
    let _TEMP4 = _TEMP2 .!=. _TEMP3
    if SDAI.IS_TRUE( _TEMP4 ) {
      return _make_array_of_array__cache.updateCache(params: _params, value: (nil as SDAI.ARRAY<SDAI.ARRAY<gT>>?))
    }
    
    let _TEMP5 = U2 - LOW2
    let _TEMP6 = _TEMP5 + SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
    let _TEMP7 = LIS?[1]
    let _TEMP8 = SDAI.SIZEOF(_TEMP7)
    let _TEMP9 = _TEMP6 .!=. _TEMP8
    if SDAI.IS_TRUE( _TEMP9 ) {
      return _make_array_of_array__cache.updateCache(params: _params, value: (nil as SDAI.ARRAY<SDAI.ARRAY<gT>>?))
    }
    
    let _TEMP10 = LIS?[1]
    let _TEMP11 = LIST_TO_ARRAY(LIS: SDAI.LIST<gT>(bound1: SDAI.UNWRAP(SDAI.INTEGER(0)), bound2: (nil as 
                                SDAI.INTEGER?), 
                                generic: /*SDAI.LIST<gT>[1:nil] */_TEMP10), 
                                LOW: LOW2, 
                                U: U2)
    let _TEMP12 = U1 - LOW1
    let _TEMP13 = _TEMP12 + SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
    let _TEMP14 = SDAI.ARRAY<SDAI.ARRAY<gT>>(bound1: SDAI.UNWRAP(LOW1), bound2: SDAI.UNWRAP(U1), 
      ([SDAI.AIE(SDAI.ARRAY<gT>(bound1: SDAI.UNWRAP(LOW2), bound2: SDAI.UNWRAP(U2), 
      generic: /*SDAI.ARRAY<gT>[LOW:U] */_TEMP11), repeat: _TEMP13)] as [SDAI.AggregationInitializerElement<
      SDAI.ARRAY<gT>>]))
    RES = _TEMP14
    if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/2, TO:/*SDAI.INTEGER*/SDAI.HIINDEX(
      LIS)) {
      for I in incrementControl {
        
        let _TEMP15 = U2 - LOW2
        let _TEMP16 = _TEMP15 + SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
        let _TEMP17 = LIS?[I]
        let _TEMP18 = SDAI.SIZEOF(_TEMP17)
        let _TEMP19 = _TEMP16 .!=. _TEMP18
        if SDAI.IS_TRUE( _TEMP19 ) {
          return _make_array_of_array__cache.updateCache(params: _params, value: (nil as SDAI.ARRAY<SDAI.ARRAY<
            gT>>?))
        }
        
        let _TEMP20 = LIS?[I]
        let _TEMP21 = LIST_TO_ARRAY(
          LIS: SDAI.LIST<gT>(bound1: SDAI.UNWRAP(SDAI.INTEGER(0)), bound2: (nil as SDAI.INTEGER?), 
          generic: /*SDAI.LIST<gT>[1:nil] */_TEMP20), 
          LOW: LOW2, U: U2)
        let _TEMP22 = LOW1 + SDAI.FORCE_OPTIONAL(I)
        let _TEMP23 = _TEMP22 - SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
        RES?[_TEMP23] = SDAI.ARRAY<gT>(bound1: SDAI.UNWRAP(LOW2), bound2: SDAI.UNWRAP(U2), 
          generic: /*SDAI.ARRAY<gT>[LOW:U] */_TEMP21)
      }
    }
    return _make_array_of_array__cache.updateCache(params: _params, value: RES)
  }

}

//MARK: - function result cache
private var _make_array_of_array__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

