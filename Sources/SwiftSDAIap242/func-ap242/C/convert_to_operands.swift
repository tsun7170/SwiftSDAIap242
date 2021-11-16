/* file: convert_to_operands.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  FUNCTION convert_to_operands(
               values : AGGREGATE OF maths_value
           ) : LIST OF generic_expression;

    LOCAL
      operands : LIST OF generic_expression := [];
      loc      : INTEGER := 0;
    END_LOCAL;
    IF NOT EXISTS( values ) THEN
      RETURN( ? );
    END_IF;
    REPEAT i := LOINDEX( values ) TO HIINDEX( values ) BY 1;
      INSERT( operands, convert_to_operand( values[i] ), loc );
      loc := loc + 1;
    END_REPEAT;
    RETURN( operands );

  END_FUNCTION; -- convert_to_operands (line:37271 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func CONVERT_TO_OPERANDS<g_AGG1: SDAIAggregationType>(
    _ VALUES: g_AGG1? ) -> SDAI.LIST<eGENERIC_EXPRESSION>? 
  where g_AGG1.ELEMENT == sMATHS_VALUE {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( VALUES )
    if case .available(let _cached_value) = _convert_to_operands__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.LIST<eGENERIC_EXPRESSION>
    }

    var VALUES = VALUES; SDAI.TOUCH(var: &VALUES)

    //LOCAL
    var OPERANDS: SDAI.LIST<eGENERIC_EXPRESSION>?  = SDAI.LIST<eGENERIC_EXPRESSION>(SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &OPERANDS)
    var LOC: SDAI.INTEGER?  = SDAI.INTEGER(0); SDAI.TOUCH(var: &LOC)
    //END_LOCAL

    
    let _TEMP1 = SDAI.EXISTS(VALUES)
    let _TEMP2 =  !_TEMP1
    if SDAI.IS_TRUE( _TEMP2 ) {
      return _convert_to_operands__cache.updateCache(params: _params, value: (nil as SDAI.LIST<
        eGENERIC_EXPRESSION>?))
    }
    if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/SDAI.LOINDEX(
      SDAI.AGGREGATE<sMATHS_VALUE>(fromGeneric: /*g_AGG1*/VALUES)), TO:/*SDAI.INTEGER*/SDAI.HIINDEX(
      SDAI.AGGREGATE<sMATHS_VALUE>(fromGeneric: /*g_AGG1*/VALUES))) {
      for I in incrementControl {
        SDAI.INSERT( L: &OPERANDS, E: CONVERT_TO_OPERAND(VALUES?[I]), P: LOC )
        
        let _TEMP3 = LOC + SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
        LOC = _TEMP3
      }
    }
    return _convert_to_operands__cache.updateCache(params: _params, value: OPERANDS)
  }

}

//MARK: - function result cache
private var _convert_to_operands__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

