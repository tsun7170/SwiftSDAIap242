/* file: no_cyclic_domain_reference.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  FUNCTION no_cyclic_domain_reference(
               ref : maths_space_or_function;
               used : SET OF maths_function
           ) : BOOLEAN;

    LOCAL
      typenames : SET OF STRING := TYPEOF( ref );
      func      : maths_function;
    END_LOCAL;
    IF ( NOT EXISTS( ref ) ) OR ( NOT EXISTS( used ) ) THEN
      RETURN( FALSE );
    END_IF;
    IF ( schema_prefix + 'MATHS_SPACE' ) IN typenames THEN
      RETURN( TRUE );
    END_IF;
    func := ref;
    IF func IN used THEN
      RETURN( FALSE );
    END_IF;
    IF ( schema_prefix + 'CONSTANT_FUNCTION' ) IN typenames THEN
      RETURN( no_cyclic_domain_reference( func\constant_function.source_of_domain, used + [func] ) );
    END_IF;
    IF ( schema_prefix + 'SELECTOR_FUNCTION' ) IN typenames THEN
      RETURN( no_cyclic_domain_reference( func\selector_function.source_of_domain, used + [func] ) );
    END_IF;
    IF ( schema_prefix + 'PARALLEL_COMPOSED_FUNCTION' ) IN typenames THEN
      RETURN( no_cyclic_domain_reference( func\parallel_composed_function.source_of_domain, used + [func] ) );
    END_IF;
    RETURN( TRUE );

  END_FUNCTION; -- no_cyclic_domain_reference (line:43625 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func NO_CYCLIC_DOMAIN_REFERENCE(REF: sMATHS_SPACE_OR_FUNCTION? , USED: SDAI.SET<eMATHS_FUNCTION>? ) 
    -> SDAI.BOOLEAN? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( REF, USED )
    if case .available(let _cached_value) = _no_cyclic_domain_reference__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.BOOLEAN
    }

    var REF = REF; SDAI.TOUCH(var: &REF)
    var USED = USED; SDAI.TOUCH(var: &USED)

    //LOCAL
    var TYPENAMES: SDAI.SET<SDAI.STRING>?  = SDAI.TYPEOF(REF); SDAI.TOUCH(var: &TYPENAMES)
    var FUNC: eMATHS_FUNCTION? 
    //END_LOCAL

    
    let _TEMP1 = SDAI.EXISTS(REF)
    let _TEMP2 =  !_TEMP1
    let _TEMP3 = SDAI.EXISTS(USED)
    let _TEMP4 =  !_TEMP3
    let _TEMP5 = _TEMP2 || _TEMP4
    if SDAI.IS_TRUE( _TEMP5 ) {
      return _no_cyclic_domain_reference__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.FALSE))
    }
    
    let _TEMP6 = SDAI.FORCE_OPTIONAL(SCHEMA_PREFIX) + SDAI.FORCE_OPTIONAL(SDAI.STRING("MATHS_SPACE"))
    let _TEMP7 = SDAI.aggregate(TYPENAMES, contains: SDAI.STRING(/*SDAI.INTEGER*/_TEMP6))
    if SDAI.IS_TRUE( _TEMP7 ) {
      return _no_cyclic_domain_reference__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.TRUE))
    }
    FUNC = eMATHS_FUNCTION(/*sMATHS_SPACE_OR_FUNCTION*/REF)
    
    let _TEMP8 = SDAI.aggregate(USED, contains: FUNC)
    if SDAI.IS_TRUE( _TEMP8 ) {
      return _no_cyclic_domain_reference__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.FALSE))
    }
    
    let _TEMP9 = SDAI.FORCE_OPTIONAL(SCHEMA_PREFIX) + SDAI.FORCE_OPTIONAL(SDAI.STRING("CONSTANT_FUNCTION"))
    let _TEMP10 = SDAI.aggregate(TYPENAMES, contains: SDAI.STRING(/*SDAI.INTEGER*/_TEMP9))
    if SDAI.IS_TRUE( _TEMP10 ) {
      
      let _TEMP11 = FUNC?.GROUP_REF(eCONSTANT_FUNCTION.self)
      let _TEMP12 = _TEMP11?.SOURCE_OF_DOMAIN
      let _TEMP13 = ([SDAI.AIE(FUNC)] as [SDAI.AggregationInitializerElement<eMATHS_FUNCTION>])
      let _TEMP14 = USED + SDAI.FORCE_OPTIONAL(_TEMP13)
      let _TEMP15 = NO_CYCLIC_DOMAIN_REFERENCE(
        REF: _TEMP12, USED: _TEMP14)
      return _no_cyclic_domain_reference__cache.updateCache(params: _params, value: _TEMP15)
    }
    
    let _TEMP16 = SDAI.FORCE_OPTIONAL(SCHEMA_PREFIX) + SDAI.FORCE_OPTIONAL(SDAI.STRING("SELECTOR_FUNCTION"))
    let _TEMP17 = SDAI.aggregate(TYPENAMES, contains: SDAI.STRING(/*SDAI.INTEGER*/_TEMP16))
    if SDAI.IS_TRUE( _TEMP17 ) {
      
      let _TEMP18 = FUNC?.GROUP_REF(eSELECTOR_FUNCTION.self)
      let _TEMP19 = _TEMP18?.SOURCE_OF_DOMAIN
      let _TEMP20 = ([SDAI.AIE(FUNC)] as [SDAI.AggregationInitializerElement<eMATHS_FUNCTION>])
      let _TEMP21 = USED + SDAI.FORCE_OPTIONAL(_TEMP20)
      let _TEMP22 = NO_CYCLIC_DOMAIN_REFERENCE(
        REF: _TEMP19, USED: _TEMP21)
      return _no_cyclic_domain_reference__cache.updateCache(params: _params, value: _TEMP22)
    }
    
    let _TEMP23 = SDAI.FORCE_OPTIONAL(SCHEMA_PREFIX) + SDAI.FORCE_OPTIONAL(SDAI.STRING(
      "PARALLEL_COMPOSED_FUNCTION"))
    let _TEMP24 = SDAI.aggregate(TYPENAMES, contains: SDAI.STRING(/*SDAI.INTEGER*/_TEMP23))
    if SDAI.IS_TRUE( _TEMP24 ) {
      
      let _TEMP25 = FUNC?.GROUP_REF(ePARALLEL_COMPOSED_FUNCTION.self)
      let _TEMP26 = _TEMP25?.SOURCE_OF_DOMAIN
      let _TEMP27 = ([SDAI.AIE(FUNC)] as [SDAI.AggregationInitializerElement<eMATHS_FUNCTION>])
      let _TEMP28 = USED + SDAI.FORCE_OPTIONAL(_TEMP27)
      let _TEMP29 = NO_CYCLIC_DOMAIN_REFERENCE(
        REF: _TEMP26, USED: _TEMP28)
      return _no_cyclic_domain_reference__cache.updateCache(params: _params, value: _TEMP29)
    }
    return _no_cyclic_domain_reference__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.TRUE))
  }

}

//MARK: - function result cache
private var _no_cyclic_domain_reference__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

