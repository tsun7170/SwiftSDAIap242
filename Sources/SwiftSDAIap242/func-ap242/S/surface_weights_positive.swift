/* file: surface_weights_positive.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  FUNCTION surface_weights_positive(
               b : rational_b_spline_surface
           ) : BOOLEAN;

    LOCAL
      result : BOOLEAN := TRUE;
    END_LOCAL;
    REPEAT i := 0 TO b.u_upper BY 1;
      REPEAT j := 0 TO b.v_upper BY 1;
        IF b.weights[i][j] <= 0 THEN
          result := FALSE;
          RETURN( result );
        END_IF;
      END_REPEAT;
    END_REPEAT;
    RETURN( result );

  END_FUNCTION; -- surface_weights_positive (line:47039 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func SURFACE_WEIGHTS_POSITIVE(_ B: eRATIONAL_B_SPLINE_SURFACE? ) 
    -> SDAI.BOOLEAN? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( B )
    if case .available(let _cached_value) = _surface_weights_positive__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.BOOLEAN
    }

    var B = B; SDAI.TOUCH(var: &B)

    //LOCAL
    var RESULT: SDAI.BOOLEAN?  = SDAI.BOOLEAN(SDAI.TRUE); SDAI.TOUCH(var: &RESULT)

    if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/0, TO:/*SDAI.INTEGER*/B?.U_UPPER) {
      for I in incrementControl {
        if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/0, TO:/*SDAI.INTEGER*/B?.V_UPPER) {
          for J in incrementControl {
            
            let _TEMP1 = B?.WEIGHTS
            let _TEMP2 = _TEMP1?[I]
            let _TEMP3 = _TEMP2?[J]
            let _TEMP4 = _TEMP3 <= SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
            if SDAI.IS_TRUE( _TEMP4 ) {
              RESULT = SDAI.BOOLEAN(SDAI.FALSE)
              return _surface_weights_positive__cache.updateCache(params: _params, value: RESULT)
            }
          }
        }
      }
    }
    return _surface_weights_positive__cache.updateCache(params: _params, value: RESULT)
  }

}

//MARK: - function result cache
private var _surface_weights_positive__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

