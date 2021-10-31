/* file: convert_to_operands_prcmfn.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  FUNCTION convert_to_operands_prcmfn(
               srcdom : maths_space_or_function;
               prepfun : LIST OF maths_function;
               finfun : maths_function_select
           ) : LIST [2 : ?] OF generic_expression;

    LOCAL
      operands : LIST OF generic_expression := [];
    END_LOCAL;
    INSERT( operands, srcdom, 0 );
    REPEAT i := 1 TO SIZEOF( prepfun ) BY 1;
      INSERT( operands, prepfun[i], i );
    END_REPEAT;
    INSERT( operands, convert_to_maths_function( finfun ), SIZEOF( prepfun ) + 1 );
    RETURN( operands );

  END_FUNCTION; -- convert_to_operands_prcmfn (line:37273 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func CONVERT_TO_OPERANDS_PRCMFN(SRCDOM: sMATHS_SPACE_OR_FUNCTION? , PREPFUN: SDAI.LIST<eMATHS_FUNCTION>? , 
                                  FINFUN: sMATHS_FUNCTION_SELECT? ) 
    -> (SDAI.LIST<eGENERIC_EXPRESSION>/*[2:nil]*/ )? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( SRCDOM, PREPFUN, FINFUN )
    if case .available(let _cached_value) = _convert_to_operands_prcmfn__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.LIST<eGENERIC_EXPRESSION>
    }

    var SRCDOM = SRCDOM; SDAI.TOUCH(var: &SRCDOM)
    var PREPFUN = PREPFUN; SDAI.TOUCH(var: &PREPFUN)
    var FINFUN = FINFUN; SDAI.TOUCH(var: &FINFUN)

    //LOCAL
    var OPERANDS: SDAI.LIST<eGENERIC_EXPRESSION>?  = SDAI.LIST<eGENERIC_EXPRESSION>(SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &OPERANDS)

    SDAI.INSERT( L: &OPERANDS, E: SRCDOM, P: 0 )
    if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.SIZEOF(
      PREPFUN)) {
      for I in incrementControl {
        SDAI.INSERT( L: &OPERANDS, E: PREPFUN?[I], P: I )
      }
    }
    SDAI.INSERT( L: &OPERANDS, E: CONVERT_TO_MATHS_FUNCTION(FINFUN), P: SDAI.SIZEOF(
      PREPFUN) + SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1)) )
    return _convert_to_operands_prcmfn__cache.updateCache(params: _params, value: SDAI.LIST<
      eGENERIC_EXPRESSION>(bound1: SDAI.UNWRAP(SDAI.INTEGER(2)), bound2: (nil as SDAI.INTEGER?), 
      /*SDAI.LIST<eGENERIC_EXPRESSION>*/OPERANDS))
  }

}

//MARK: - function result cache
private var _convert_to_operands_prcmfn__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

