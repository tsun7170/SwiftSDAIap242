/* file: compatible_es_values.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  FUNCTION compatible_es_values(
               esval1, esval2 : elementary_space_enumerators
           ) : BOOLEAN;

    LOCAL
      esval1_is_numeric : LOGICAL;
      esval2_is_numeric : LOGICAL;
    END_LOCAL;
    IF ( esval1 = esval2 ) OR ( esval1 = es_generics ) OR ( esval2 = es_generics ) THEN
      RETURN( TRUE );
    END_IF;
    esval1_is_numeric := ( esval1 >= es_numbers ) AND ( esval1 <= es_integers );
    esval2_is_numeric := ( esval2 >= es_numbers ) AND ( esval2 <= es_integers );
    IF ( esval1_is_numeric AND ( esval2 = es_numbers ) ) OR ( esval2_is_numeric AND ( esval1 = es_numbers ) )
        THEN
      RETURN( TRUE );
    END_IF;
    IF esval1_is_numeric XOR esval2_is_numeric THEN
      RETURN( FALSE );
    END_IF;
    IF ( ( esval1 = es_logicals ) AND ( esval2 = es_booleans ) ) OR ( ( esval1 = es_booleans ) AND ( esval2 =
        es_logicals ) ) THEN
      RETURN( TRUE );
    END_IF;
    RETURN( FALSE );

  END_FUNCTION; -- compatible_es_values (line:36278 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func COMPATIBLE_ES_VALUES(ESVAL1: nELEMENTARY_SPACE_ENUMERATORS? , ESVAL2: nELEMENTARY_SPACE_ENUMERATORS? ) 
    -> SDAI.BOOLEAN? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( ESVAL1, ESVAL2 )
    if case .available(let _cached_value) = _compatible_es_values__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.BOOLEAN
    }

    var ESVAL1 = ESVAL1; SDAI.TOUCH(var: &ESVAL1)
    var ESVAL2 = ESVAL2; SDAI.TOUCH(var: &ESVAL2)

    //LOCAL
    var ESVAL1_IS_NUMERIC: SDAI.LOGICAL
    var ESVAL2_IS_NUMERIC: SDAI.LOGICAL
    //END_LOCAL

    
    let _TEMP1 = ESVAL1 .==. ESVAL2
    let _TEMP2 = ESVAL1 .==. SDAI.FORCE_OPTIONAL(ES_GENERICS)
    let _TEMP3 = _TEMP1 || _TEMP2
    let _TEMP4 = ESVAL2 .==. SDAI.FORCE_OPTIONAL(ES_GENERICS)
    let _TEMP5 = _TEMP3 || _TEMP4
    if SDAI.IS_TRUE( _TEMP5 ) {
      return _compatible_es_values__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.TRUE))
    }
    
    let _TEMP6 = ESVAL1 >= SDAI.FORCE_OPTIONAL(ES_NUMBERS)
    let _TEMP7 = ESVAL1 <= SDAI.FORCE_OPTIONAL(ES_INTEGERS)
    let _TEMP8 = _TEMP6 && _TEMP7
    ESVAL1_IS_NUMERIC = SDAI.UNWRAP(_TEMP8)
    
    let _TEMP9 = ESVAL2 >= SDAI.FORCE_OPTIONAL(ES_NUMBERS)
    let _TEMP10 = ESVAL2 <= SDAI.FORCE_OPTIONAL(ES_INTEGERS)
    let _TEMP11 = _TEMP9 && _TEMP10
    ESVAL2_IS_NUMERIC = SDAI.UNWRAP(_TEMP11)
    
    let _TEMP12 = ESVAL2 .==. SDAI.FORCE_OPTIONAL(ES_NUMBERS)
    let _TEMP13 = ESVAL1_IS_NUMERIC && _TEMP12
    let _TEMP14 = ESVAL1 .==. SDAI.FORCE_OPTIONAL(ES_NUMBERS)
    let _TEMP15 = ESVAL2_IS_NUMERIC && _TEMP14
    let _TEMP16 = _TEMP13 || _TEMP15
    if SDAI.IS_TRUE( _TEMP16 ) {
      return _compatible_es_values__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.TRUE))
    }
    
    let _TEMP17 = ESVAL1_IS_NUMERIC .!=. ESVAL2_IS_NUMERIC
    if SDAI.IS_TRUE( _TEMP17 ) {
      return _compatible_es_values__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.FALSE))
    }
    
    let _TEMP18 = ESVAL1 .==. SDAI.FORCE_OPTIONAL(ES_LOGICALS)
    let _TEMP19 = ESVAL2 .==. SDAI.FORCE_OPTIONAL(ES_BOOLEANS)
    let _TEMP20 = _TEMP18 && _TEMP19
    let _TEMP21 = ESVAL1 .==. SDAI.FORCE_OPTIONAL(ES_BOOLEANS)
    let _TEMP22 = ESVAL2 .==. SDAI.FORCE_OPTIONAL(ES_LOGICALS)
    let _TEMP23 = _TEMP21 && _TEMP22
    let _TEMP24 = _TEMP20 || _TEMP23
    if SDAI.IS_TRUE( _TEMP24 ) {
      return _compatible_es_values__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.TRUE))
    }
    return _compatible_es_values__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.FALSE))
  }

}

//MARK: - function result cache
private var _compatible_es_values__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)
