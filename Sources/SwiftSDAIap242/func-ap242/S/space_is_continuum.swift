/* file: space_is_continuum.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  FUNCTION space_is_continuum(
               space : maths_space
           ) : BOOLEAN;

    LOCAL
      typenames : SET OF STRING := TYPEOF( space );
      factors   : LIST OF maths_space;
    END_LOCAL;
    IF NOT EXISTS( space ) THEN
      RETURN( FALSE );
    END_IF;
    IF subspace_of_es( space, es_reals ) OR subspace_of_es( space, es_complex_numbers ) THEN
      RETURN( TRUE );
    END_IF;
    IF ( schema_prefix + 'UNIFORM_PRODUCT_SPACE' ) IN typenames THEN
      RETURN( space_is_continuum( space\uniform_product_space.base ) );
    END_IF;
    IF ( schema_prefix + 'LISTED_PRODUCT_SPACE' ) IN typenames THEN
      factors := space\listed_product_space.factors;
      IF SIZEOF( factors ) = 0 THEN
        RETURN( FALSE );
      END_IF;
      REPEAT i := 1 TO SIZEOF( factors ) BY 1;
        IF NOT space_is_continuum( factors[i] ) THEN
          RETURN( FALSE );
        END_IF;
      END_REPEAT;
      RETURN( TRUE );
    END_IF;
    RETURN( FALSE );

  END_FUNCTION; -- space_is_continuum (line:46443 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func SPACE_IS_CONTINUUM(_ SPACE: eMATHS_SPACE? ) 
    -> SDAI.BOOLEAN? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( SPACE )
    if case .available(let _cached_value) = _space_is_continuum__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.BOOLEAN
    }

    var SPACE = SPACE; SDAI.TOUCH(var: &SPACE)

    //LOCAL
    var TYPENAMES: SDAI.SET<SDAI.STRING>?  = SDAI.TYPEOF(SPACE); SDAI.TOUCH(var: &TYPENAMES)
    var FACTORS: SDAI.LIST<eMATHS_SPACE>? 
    //END_LOCAL

    
    let _TEMP1 = SDAI.EXISTS(SPACE)
    let _TEMP2 =  !_TEMP1
    if SDAI.IS_TRUE( _TEMP2 ) {
      return _space_is_continuum__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.FALSE))
    }
    
    let _TEMP3 = SUBSPACE_OF_ES(SPC: SPACE, 
                                ES: ES_REALS)
    let _TEMP4 = SUBSPACE_OF_ES(SPC: SPACE, 
                                ES: ES_COMPLEX_NUMBERS)
    let _TEMP5 = _TEMP3 || _TEMP4
    if SDAI.IS_TRUE( _TEMP5 ) {
      return _space_is_continuum__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.TRUE))
    }
    
    let _TEMP6 = SDAI.FORCE_OPTIONAL(SCHEMA_PREFIX) + SDAI.FORCE_OPTIONAL(SDAI.STRING("UNIFORM_PRODUCT_SPACE"))
    let _TEMP7 = SDAI.aggregate(TYPENAMES, contains: SDAI.STRING(/*SDAI.INTEGER*/_TEMP6))
    if SDAI.IS_TRUE( _TEMP7 ) {
      
      let _TEMP8 = SPACE?.GROUP_REF(eUNIFORM_PRODUCT_SPACE.self)
      let _TEMP9 = _TEMP8?.BASE
      let _TEMP10 = SPACE_IS_CONTINUUM(_TEMP9)
      return _space_is_continuum__cache.updateCache(params: _params, value: _TEMP10)
    }
    
    let _TEMP11 = SDAI.FORCE_OPTIONAL(SCHEMA_PREFIX) + SDAI.FORCE_OPTIONAL(SDAI.STRING("LISTED_PRODUCT_SPACE"))
    let _TEMP12 = SDAI.aggregate(TYPENAMES, contains: SDAI.STRING(/*SDAI.INTEGER*/_TEMP11))
    if SDAI.IS_TRUE( _TEMP12 ) {
      
      let _TEMP13 = SPACE?.GROUP_REF(eLISTED_PRODUCT_SPACE.self)
      let _TEMP14 = _TEMP13?.FACTORS
      FACTORS = _TEMP14
      
      let _TEMP15 = SDAI.SIZEOF(FACTORS)
      let _TEMP16 = _TEMP15 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      if SDAI.IS_TRUE( _TEMP16 ) {
        return _space_is_continuum__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.FALSE))
      }
      if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.SIZEOF(
        FACTORS)) {
        for I in incrementControl {
          
          let _TEMP17 = FACTORS?[I]
          let _TEMP18 = SPACE_IS_CONTINUUM(_TEMP17)
          let _TEMP19 =  !_TEMP18
          if SDAI.IS_TRUE( _TEMP19 ) {
            return _space_is_continuum__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.FALSE))
          }
        }
      }
      return _space_is_continuum__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.TRUE))
    }
    return _space_is_continuum__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.FALSE))
  }

}

//MARK: - function result cache
private var _space_is_continuum__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

