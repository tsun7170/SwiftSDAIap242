/* file: composable_sequence.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  FUNCTION composable_sequence(
               operands : LIST [2 : ?] OF maths_function
           ) : BOOLEAN;
    REPEAT i := 1 TO SIZEOF( operands ) - 1 BY 1;
      IF NOT compatible_spaces( operands[i].range, operands[i + 1].domain ) THEN
        RETURN( FALSE );
      END_IF;
    END_REPEAT;
    RETURN( TRUE );

  END_FUNCTION; -- composable_sequence (line:36695 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func COMPOSABLE_SEQUENCE(_ OPERANDS: (SDAI.LIST<eMATHS_FUNCTION>/*[2:nil]*/ )? ) 
    -> SDAI.BOOLEAN? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( OPERANDS )
    if case .available(let _cached_value) = _composable_sequence__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.BOOLEAN
    }

    var OPERANDS = OPERANDS; SDAI.TOUCH(var: &OPERANDS)

    if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.SIZEOF(
      OPERANDS) - SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))) {
      for I in incrementControl {
        
        let _TEMP1 = OPERANDS?[I]
        let _TEMP2 = _TEMP1?.RANGE
        let _TEMP3 = SDAI.FORCE_OPTIONAL(I) + SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
        let _TEMP4 = OPERANDS?[_TEMP3]
        let _TEMP5 = _TEMP4?.DOMAIN
        let _TEMP6 = COMPATIBLE_SPACES(
          SP1: eMATHS_SPACE(/*sTUPLE_SPACE*/_TEMP2), 
          SP2: eMATHS_SPACE(/*sTUPLE_SPACE*/_TEMP5))
        let _TEMP7 =  !_TEMP6
        if SDAI.IS_TRUE( _TEMP7 ) {
          return _composable_sequence__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.FALSE))
        }
      }
    }
    return _composable_sequence__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.TRUE))
  }

}

//MARK: - function result cache
private var _composable_sequence__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

