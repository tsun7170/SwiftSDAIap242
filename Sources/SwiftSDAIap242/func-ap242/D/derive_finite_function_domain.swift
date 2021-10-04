/* file: derive_finite_function_domain.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  FUNCTION derive_finite_function_domain(
               pairs : SET [1 : ?] OF LIST [2 : 2] OF maths_value
           ) : tuple_space;

    LOCAL
      result : SET OF maths_value := [];
    END_LOCAL;
    result := result + list_selected_components( pairs, 1 );
    RETURN( one_tuples_of( make_finite_space( result ) ) );

  END_FUNCTION; -- derive_finite_function_domain (line:38086 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func DERIVE_FINITE_FUNCTION_DOMAIN(
    _ PAIRS: (SDAI.SET<SDAI.LIST<sMATHS_VALUE>/*[2:2]*/ >/*[1:nil]*/ )? ) 
    -> sTUPLE_SPACE? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( PAIRS )
    if case .available(let _cached_value) = _derive_finite_function_domain__cache.cachedValue(params: _params) {
      return _cached_value as? sTUPLE_SPACE
    }

    var PAIRS = PAIRS; SDAI.TOUCH(var: &PAIRS)

    //LOCAL
    var RESULT: SDAI.SET<sMATHS_VALUE>?  = SDAI.SET<sMATHS_VALUE>(SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &RESULT)

    
    let _TEMP1 = LIST_SELECTED_COMPONENTS(
      AGGR: SDAI.SET<SDAI.LIST<sMATHS_VALUE>>(/*SDAI.SET<SDAI.LIST<sMATHS_VALUE>[2:2] >[1:nil] */PAIRS), 
      K: tPOSITIVE_INTEGER(1))
    let _TEMP2 = RESULT + _TEMP1
    RESULT = _TEMP2
    
    let _TEMP3 = MAKE_FINITE_SPACE(RESULT)
    let _TEMP4 = ONE_TUPLES_OF(eMATHS_SPACE(/*eFINITE_SPACE*/_TEMP3))
    return _derive_finite_function_domain__cache.updateCache(params: _params, value: _TEMP4)
  }

}

//MARK: - function result cache
private var _derive_finite_function_domain__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)
