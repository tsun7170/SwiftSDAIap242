/* file: increasing_values_in_list.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  FUNCTION increasing_values_in_list(
               values : LIST [2 : ?] OF REAL
           ) : BOOLEAN;

    LOCAL
      result : BOOLEAN := TRUE;
      limit  : INTEGER := SIZEOF( values );
    END_LOCAL;
    REPEAT i := 2 TO limit BY 1;
      IF values[i] <= values[i - 1] THEN
        result := FALSE;
      END_IF;
    END_REPEAT;
    RETURN( result );

  END_FUNCTION; -- increasing_values_in_list (line:42060 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func INCREASING_VALUES_IN_LIST(_ VALUES: (SDAI.LIST<SDAI.REAL>/*[2:nil]*/ )? ) 
    -> SDAI.BOOLEAN? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( VALUES )
    if case .available(let _cached_value) = _increasing_values_in_list__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.BOOLEAN
    }

    var VALUES = VALUES; SDAI.TOUCH(var: &VALUES)

    //LOCAL
    var RESULT: SDAI.BOOLEAN?  = SDAI.BOOLEAN(SDAI.TRUE); SDAI.TOUCH(var: &RESULT)
    var LIMIT: SDAI.INTEGER?  = SDAI.SIZEOF(VALUES); SDAI.TOUCH(var: &LIMIT)
    //END_LOCAL

    if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/2, TO:/*SDAI.INTEGER*/LIMIT) {
      for I in incrementControl {
        
        let _TEMP1 = VALUES?[I]
        let _TEMP2 = SDAI.FORCE_OPTIONAL(I) - SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
        let _TEMP3 = VALUES?[_TEMP2]
        let _TEMP4 = _TEMP1 <= _TEMP3
        if SDAI.IS_TRUE( _TEMP4 ) {
          RESULT = SDAI.BOOLEAN(SDAI.FALSE)
        }
      }
    }
    return _increasing_values_in_list__cache.updateCache(params: _params, value: RESULT)
  }

}

//MARK: - function result cache
private var _increasing_values_in_list__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

