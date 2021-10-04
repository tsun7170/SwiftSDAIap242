/* file: dot_count.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  FUNCTION dot_count(
               str : STRING
           ) : INTEGER;

    LOCAL
      n : INTEGER := 0;
    END_LOCAL;
    REPEAT i := 1 TO LENGTH( str ) BY 1;
      IF str[i] = '.' THEN
        n := n + 1;
      END_IF;
    END_REPEAT;
    RETURN( n );

  END_FUNCTION; -- dot_count (line:38549 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func DOT_COUNT(_ STR: SDAI.STRING? ) 
    -> SDAI.INTEGER? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( STR )
    if case .available(let _cached_value) = _dot_count__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.INTEGER
    }

    var STR = STR; SDAI.TOUCH(var: &STR)

    //LOCAL
    var N: SDAI.INTEGER?  = SDAI.INTEGER(0); SDAI.TOUCH(var: &N)

    if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.LENGTH(
      STR)) {
      for I in incrementControl {
        
        let _TEMP1 = STR?[I]
        let _TEMP2 = _TEMP1 .==. SDAI.FORCE_OPTIONAL(SDAI.STRING("."))
        if SDAI.IS_TRUE( _TEMP2 ) {
          
          let _TEMP3 = N + SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
          N = _TEMP3
        }
      }
    }
    return _dot_count__cache.updateCache(params: _params, value: N)
  }

}

//MARK: - function result cache
private var _dot_count__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

