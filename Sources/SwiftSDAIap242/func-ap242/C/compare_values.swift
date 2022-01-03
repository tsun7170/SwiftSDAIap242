/* file: compare_values.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  FUNCTION compare_values(
               v1 : GENERIC:g;
               op : elementary_function_enumerators;
               v2 : GENERIC:g
           ) : BOOLEAN;

    LOCAL
      logl : LOGICAL := UNKNOWN;
    END_LOCAL;
    IF ( NOT EXISTS( v1 ) ) OR ( NOT EXISTS( op ) ) OR ( NOT EXISTS( v2 ) ) THEN
      RETURN( FALSE );
    END_IF;
    CASE op OF
      ef_eq_i                                 :         logl := v1 = v2;
      ef_ne_i                                 :         logl := v1 <> v2;
      ef_gt_i                                 :         logl := v1 > v2;
      ef_lt_i                                 :         logl := v1 < v2;
      ef_ge_i                                 :         logl := v1 >= v2;
      ef_le_i                                 :         logl := v1 <= v2;
    END_CASE;
    IF EXISTS( logl ) THEN
      IF logl = TRUE THEN
        RETURN( TRUE );
      END_IF;
    END_IF;
    RETURN( FALSE );

  END_FUNCTION; -- compare_values (line:52103 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func COMPARE_VALUES<gG: SDAIGenericType>(
    V1: gG? , OP: nELEMENTARY_FUNCTION_ENUMERATORS? , V2: gG? ) 
    -> SDAI.BOOLEAN? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( V1, OP, V2 )
    if case .available(let _cached_value) = _compare_values__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.BOOLEAN
    }

    var V1 = V1; SDAI.TOUCH(var: &V1)
    var OP = OP; SDAI.TOUCH(var: &OP)
    var V2 = V2; SDAI.TOUCH(var: &V2)

    //LOCAL
    var LOGL: SDAI.LOGICAL = SDAI.LOGICAL(SDAI.UNKNOWN); SDAI.TOUCH(var: &LOGL)

    
    let _TEMP1 = SDAI.EXISTS(V1)
    let _TEMP2 =  !_TEMP1
    let _TEMP3 = SDAI.EXISTS(OP)
    let _TEMP4 =  !_TEMP3
    let _TEMP5 = _TEMP2 || _TEMP4
    let _TEMP6 = SDAI.EXISTS(V2)
    let _TEMP7 =  !_TEMP6
    let _TEMP8 = _TEMP5 || _TEMP7
    if SDAI.IS_TRUE( _TEMP8 ) {
      return _compare_values__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.FALSE))
    }
    if let selector = OP {
      switch selector {
      case EF_EQ_I:
        
        let _TEMP9 = SDAI.GENERIC(V1) .==. SDAI.GENERIC(V2)
        LOGL = SDAI.UNWRAP(_TEMP9)

      case EF_NE_I:
        
        let _TEMP10 = SDAI.GENERIC(V1) .!=. SDAI.GENERIC(V2)
        LOGL = SDAI.UNWRAP(_TEMP10)

      case EF_GT_I:
        
        let _TEMP11 = SDAI.GENERIC(V1) > SDAI.GENERIC(V2)
        LOGL = SDAI.UNWRAP(_TEMP11)

      case EF_LT_I:
        
        let _TEMP12 = SDAI.GENERIC(V1) < SDAI.GENERIC(V2)
        LOGL = SDAI.UNWRAP(_TEMP12)

      case EF_GE_I:
        
        let _TEMP13 = SDAI.GENERIC(V1) >= SDAI.GENERIC(V2)
        LOGL = SDAI.UNWRAP(_TEMP13)

      case EF_LE_I:
        
        let _TEMP14 = SDAI.GENERIC(V1) <= SDAI.GENERIC(V2)
        LOGL = SDAI.UNWRAP(_TEMP14)

      default: break
      } //end switch
    }
    
    let _TEMP15 = SDAI.EXISTS(LOGL)
    if SDAI.IS_TRUE( _TEMP15 ) {
      
      let _TEMP16 = SDAI.FORCE_OPTIONAL(LOGL) .==. SDAI.FORCE_OPTIONAL(SDAI.LOGICAL(SDAI.TRUE))
      if SDAI.IS_TRUE( _TEMP16 ) {
        return _compare_values__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.TRUE))
      }
    }
    return _compare_values__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.FALSE))
  }

}

//MARK: - function result cache
private var _compare_values__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

