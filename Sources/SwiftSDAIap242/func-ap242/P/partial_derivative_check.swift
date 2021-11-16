/* file: partial_derivative_check.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  FUNCTION partial_derivative_check(
               domain : tuple_space;
               d_vars : LIST [1 : ?] OF input_selector
           ) : BOOLEAN;

    LOCAL
      domn : tuple_space := domain;
      fspc : maths_space;
      dim  : INTEGER;
      k    : INTEGER;
    END_LOCAL;
    IF ( space_dimension( domain ) = 1 ) AND ( ( schema_prefix + 'TUPLE_SPACE' ) IN TYPEOF( factor1( domain ) ) )
        THEN
      domn := factor1( domain );
    END_IF;
    dim := space_dimension( domn );
    REPEAT i := 1 TO SIZEOF( d_vars ) BY 1;
      k := d_vars[i];
      IF k > dim THEN
        RETURN( FALSE );
      END_IF;
      fspc := factor_space( domn, k );
      IF ( NOT subspace_of_es( fspc, es_reals ) ) AND ( NOT subspace_of_es( fspc, es_complex_numbers ) )
          THEN
        RETURN( FALSE );
      END_IF;
    END_REPEAT;
    RETURN( TRUE );

  END_FUNCTION; -- partial_derivative_check (line:43915 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func PARTIAL_DERIVATIVE_CHECK(DOMAIN: sTUPLE_SPACE? , D_VARS: (SDAI.LIST<tINPUT_SELECTOR>/*[1:nil]*/ )? ) 
    -> SDAI.BOOLEAN? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( DOMAIN, D_VARS )
    if case .available(let _cached_value) = _partial_derivative_check__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.BOOLEAN
    }

    var DOMAIN = DOMAIN; SDAI.TOUCH(var: &DOMAIN)
    var D_VARS = D_VARS; SDAI.TOUCH(var: &D_VARS)

    //LOCAL
    var DOMN: sTUPLE_SPACE?  = DOMAIN; SDAI.TOUCH(var: &DOMN)
    var FSPC: eMATHS_SPACE? 
    var DIM: SDAI.INTEGER? 
    var K: SDAI.INTEGER? 
    //END_LOCAL

    
    let _TEMP1 = SPACE_DIMENSION(DOMAIN)
    let _TEMP2 = _TEMP1 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
    let _TEMP3 = SDAI.FORCE_OPTIONAL(SCHEMA_PREFIX) + SDAI.FORCE_OPTIONAL(SDAI.STRING("TUPLE_SPACE"))
    let _TEMP4 = FACTOR1(DOMAIN)
    let _TEMP5 = SDAI.TYPEOF(_TEMP4)
    let _TEMP6 = SDAI.aggregate(_TEMP5, contains: SDAI.STRING(/*SDAI.INTEGER*/_TEMP3))
    let _TEMP7 = _TEMP2 && _TEMP6
    if SDAI.IS_TRUE( _TEMP7 ) {
      
      let _TEMP8 = FACTOR1(DOMAIN)
      DOMN = sTUPLE_SPACE(/*eMATHS_SPACE*/_TEMP8)
    }
    
    let _TEMP9 = SPACE_DIMENSION(DOMN)
    DIM = SDAI.INTEGER(/*tNONNEGATIVE_INTEGER*/_TEMP9)
    if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.SIZEOF(
      D_VARS)) {
      for I in incrementControl {
        
        let _TEMP10 = D_VARS?[I]
        K = SDAI.INTEGER(/*tINPUT_SELECTOR*/_TEMP10)
        
        let _TEMP11 = K > DIM
        if SDAI.IS_TRUE( _TEMP11 ) {
          return _partial_derivative_check__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.FALSE))
        }
        
        let _TEMP12 = FACTOR_SPACE(TSPACE: DOMN, 
                                   IDX: tPOSITIVE_INTEGER(/*SDAI.INTEGER*/K))
        FSPC = _TEMP12
        
        let _TEMP13 = SUBSPACE_OF_ES(
          SPC: FSPC, ES: ES_REALS)
        let _TEMP14 =  !_TEMP13
        let _TEMP15 = SUBSPACE_OF_ES(
          SPC: FSPC, ES: ES_COMPLEX_NUMBERS)
        let _TEMP16 =  !_TEMP15
        let _TEMP17 = _TEMP14 && _TEMP16
        if SDAI.IS_TRUE( _TEMP17 ) {
          return _partial_derivative_check__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.FALSE))
        }
      }
    }
    return _partial_derivative_check__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.TRUE))
  }

}

//MARK: - function result cache
private var _partial_derivative_check__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

