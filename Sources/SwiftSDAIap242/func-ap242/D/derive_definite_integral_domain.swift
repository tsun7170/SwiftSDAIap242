/* file: derive_definite_integral_domain.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  FUNCTION derive_definite_integral_domain(
               igrl : definite_integral_function
           ) : tuple_space;

    FUNCTION process_product_space(
                 spc : product_space;
                 idx : INTEGER;
                 prefix : INTEGER;
                 vdomn : maths_space
             ) : product_space;

      LOCAL
        uspc    : uniform_product_space;
        expnt   : INTEGER;
        factors : LIST OF maths_space;
      END_LOCAL;
      IF ( schema_prefix + 'UNIFORM_PRODUCT_SPACE' ) IN TYPEOF( spc ) THEN
        uspc := spc;
        expnt := uspc.exponent + prefix;
        IF idx <= uspc.exponent THEN
          expnt := expnt - 1;
        END_IF;
        IF expnt = 0 THEN
          RETURN( make_listed_product_space( [] ) );
        ELSE
          RETURN( make_uniform_product_space( uspc.base, expnt ) );
        END_IF;
      ELSE
        factors := spc\listed_product_space.factors;
        IF idx <= SIZEOF( factors ) THEN
          REMOVE( factors, idx );
        END_IF;
        IF prefix > 0 THEN
          INSERT( factors, vdomn, 0 );
          IF prefix > 1 THEN
            INSERT( factors, vdomn, 0 );
          END_IF;
        END_IF;
        RETURN( make_listed_product_space( factors ) );
      END_IF;

    END_FUNCTION; -- process_product_space (line:37703 file:ap242ed2_mim_lf_v1.101.TY.exp)

    LOCAL
      idomn  : tuple_space := igrl.integrand.domain;
      types  : SET OF STRING := TYPEOF( idomn );
      idx    : INTEGER := igrl.variable_of_integration;
      tupled : BOOLEAN := bool( ( space_dimension( idomn ) = 1 ) AND ( ( schema_prefix + 'TUPLE_SPACE' ) IN 
                types ) );
      prefix : INTEGER := 0;
      espc   : extended_tuple_space;
      vdomn  : maths_space;
    END_LOCAL;
    IF tupled THEN
      idomn := factor1( idomn );
      types := TYPEOF( idomn );
    END_IF;
    IF igrl.lower_limit_neg_infinity THEN
      prefix := prefix + 1;
    END_IF;
    IF igrl.upper_limit_pos_infinity THEN
      prefix := prefix + 1;
    END_IF;
    vdomn := factor_space( idomn, idx );
    IF ( schema_prefix + 'EXTENDED_TUPLE_SPACE' ) IN types THEN
      espc := idomn;
      idomn := make_extended_tuple_space( process_product_space( espc.base, idx, prefix, vdomn ), espc.
          extender );
    ELSE
      idomn := process_product_space( idomn, idx, prefix, vdomn );
    END_IF;
    IF tupled THEN
      RETURN( one_tuples_of( idomn ) );
    ELSE
      RETURN( idomn );
    END_IF;

  END_FUNCTION; -- derive_definite_integral_domain (line:37701 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func DERIVE_DEFINITE_INTEGRAL_DOMAIN(
    _ IGRL: eDEFINITE_INTEGRAL_FUNCTION? ) 
    -> sTUPLE_SPACE? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( IGRL )
    if case .available(let _cached_value) = _derive_definite_integral_domain__cache.cachedValue(params: _params) {
      return _cached_value as? sTUPLE_SPACE
    }

    var IGRL = IGRL; SDAI.TOUCH(var: &IGRL)

    //NESTED FUNCTION
    func PROCESS_PRODUCT_SPACE(SPC: sPRODUCT_SPACE? , IDX: SDAI.INTEGER? , 
                               PREFIX: SDAI.INTEGER? , VDOMN: eMATHS_SPACE? ) 
      -> sPRODUCT_SPACE? {

      var SPC = SPC; SDAI.TOUCH(var: &SPC)
      var IDX = IDX; SDAI.TOUCH(var: &IDX)
      var PREFIX = PREFIX; SDAI.TOUCH(var: &PREFIX)
      var VDOMN = VDOMN; SDAI.TOUCH(var: &VDOMN)

      //LOCAL
      var USPC: eUNIFORM_PRODUCT_SPACE? 
      var EXPNT: SDAI.INTEGER? 
      var FACTORS: SDAI.LIST<eMATHS_SPACE>? 
      //END_LOCAL

      
      let _TEMP1 = SDAI.FORCE_OPTIONAL(SCHEMA_PREFIX) + SDAI.FORCE_OPTIONAL(SDAI.STRING("UNIFORM_PRODUCT_SPACE"))
      let _TEMP2 = SDAI.TYPEOF(SPC)
      let _TEMP3 = SDAI.aggregate(_TEMP2, contains: SDAI.STRING(/*SDAI.INTEGER*/_TEMP1))
      if SDAI.IS_TRUE( _TEMP3 ) {
        USPC = eUNIFORM_PRODUCT_SPACE(/*sPRODUCT_SPACE*/SPC)
        
        let _TEMP4 = USPC?.EXPONENT
        let _TEMP5 = _TEMP4 + PREFIX
        EXPNT = _TEMP5
        
        let _TEMP6 = USPC?.EXPONENT
        let _TEMP7 = IDX <= _TEMP6
        if SDAI.IS_TRUE( _TEMP7 ) {
          
          let _TEMP8 = EXPNT - SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
          EXPNT = _TEMP8
        }
        
        let _TEMP9 = EXPNT .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
        if SDAI.IS_TRUE( _TEMP9 ) {
          
          let _TEMP10 = SDAI.LIST<eMATHS_SPACE>(SDAI.EMPLY_AGGREGATE)
          let _TEMP11 = MAKE_LISTED_PRODUCT_SPACE(_TEMP10)
          return sPRODUCT_SPACE(/*eLISTED_PRODUCT_SPACE*/_TEMP11)
        }
        else {
          
          let _TEMP12 = USPC?.BASE
          let _TEMP13 = MAKE_UNIFORM_PRODUCT_SPACE(
            BASE: _TEMP12, EXPONENT: tPOSITIVE_INTEGER(/*SDAI.INTEGER*/EXPNT))
          return sPRODUCT_SPACE(/*eUNIFORM_PRODUCT_SPACE*/_TEMP13)
        }
      }
      else {
        
        let _TEMP14 = SPC?.GROUP_REF(eLISTED_PRODUCT_SPACE.self)
        let _TEMP15 = _TEMP14?.FACTORS
        FACTORS = _TEMP15
        
        let _TEMP16 = SDAI.SIZEOF(FACTORS)
        let _TEMP17 = IDX <= _TEMP16
        if SDAI.IS_TRUE( _TEMP17 ) {
          SDAI.REMOVE( L: &FACTORS, P: IDX )
        }
        
        let _TEMP18 = PREFIX > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
        if SDAI.IS_TRUE( _TEMP18 ) {
          SDAI.INSERT( L: &FACTORS, E: VDOMN, P: 0 )
          
          let _TEMP19 = PREFIX > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
          if SDAI.IS_TRUE( _TEMP19 ) {
            SDAI.INSERT( L: &FACTORS, E: VDOMN, P: 0 )
          }
        }
        
        let _TEMP20 = MAKE_LISTED_PRODUCT_SPACE(FACTORS)
        return sPRODUCT_SPACE(/*eLISTED_PRODUCT_SPACE*/_TEMP20)
      }
    } //END FUNCTION PROCESS_PRODUCT_SPACE

    //LOCAL
    var IDOMN: sTUPLE_SPACE?  = IGRL?.INTEGRAND?.DOMAIN; SDAI.TOUCH(var: &IDOMN)
    var TYPES: SDAI.SET<SDAI.STRING>?  = SDAI.TYPEOF(IDOMN); SDAI.TOUCH(var: &TYPES)
    var IDX: SDAI.INTEGER?  = SDAI.INTEGER(/*tINPUT_SELECTOR*/IGRL?.VARIABLE_OF_INTEGRATION); SDAI.TOUCH(var: &IDX)
    var TUPLED: SDAI.BOOLEAN?  = BOOL(SDAI.LOGICAL(( SPACE_DIMENSION(IDOMN) .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(
                                 1)) ) && SDAI.aggregate(TYPES, contains: SDAI.STRING(/*SDAI.INTEGER*/SDAI.FORCE_OPTIONAL(
                                 SCHEMA_PREFIX) + SDAI.FORCE_OPTIONAL(SDAI.STRING("TUPLE_SPACE")))))); SDAI.TOUCH(var: &TUPLED)
    var PREFIX: SDAI.INTEGER?  = SDAI.INTEGER(0); SDAI.TOUCH(var: &PREFIX)
    var ESPC: eEXTENDED_TUPLE_SPACE? 
    var VDOMN: eMATHS_SPACE? 
    //END_LOCAL

    if SDAI.IS_TRUE( TUPLED ) {
      
      let _TEMP1 = FACTOR1(IDOMN)
      IDOMN = sTUPLE_SPACE(/*eMATHS_SPACE*/_TEMP1)
      
      let _TEMP2 = SDAI.TYPEOF(IDOMN)
      TYPES = _TEMP2
    }
    
    let _TEMP3 = IGRL?.LOWER_LIMIT_NEG_INFINITY
    if SDAI.IS_TRUE( _TEMP3 ) {
      
      let _TEMP4 = PREFIX + SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      PREFIX = _TEMP4
    }
    
    let _TEMP5 = IGRL?.UPPER_LIMIT_POS_INFINITY
    if SDAI.IS_TRUE( _TEMP5 ) {
      
      let _TEMP6 = PREFIX + SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      PREFIX = _TEMP6
    }
    
    let _TEMP7 = FACTOR_SPACE(TSPACE: IDOMN, 
                              IDX: tPOSITIVE_INTEGER(/*SDAI.INTEGER*/IDX))
    VDOMN = _TEMP7
    
    let _TEMP8 = SDAI.FORCE_OPTIONAL(SCHEMA_PREFIX) + SDAI.FORCE_OPTIONAL(SDAI.STRING("EXTENDED_TUPLE_SPACE"))
    let _TEMP9 = SDAI.aggregate(TYPES, contains: SDAI.STRING(/*SDAI.INTEGER*/_TEMP8))
    if SDAI.IS_TRUE( _TEMP9 ) {
      ESPC = eEXTENDED_TUPLE_SPACE(/*sTUPLE_SPACE*/IDOMN)
      
      let _TEMP10 = ESPC?.BASE
      let _TEMP11 = PROCESS_PRODUCT_SPACE(
        SPC: sPRODUCT_SPACE(/*sTUPLE_SPACE*/_TEMP10), 
        IDX: IDX, PREFIX: PREFIX, VDOMN: VDOMN)
      let _TEMP12 = ESPC?.EXTENDER
      let _TEMP13 = MAKE_EXTENDED_TUPLE_SPACE(
        BASE: sTUPLE_SPACE(/*sPRODUCT_SPACE*/_TEMP11), 
        EXTENDER: _TEMP12)
      IDOMN = sTUPLE_SPACE(/*eEXTENDED_TUPLE_SPACE*/_TEMP13)
    }
    else {
      
      let _TEMP14 = PROCESS_PRODUCT_SPACE(
        SPC: sPRODUCT_SPACE(/*sTUPLE_SPACE*/IDOMN), 
        IDX: IDX, PREFIX: PREFIX, VDOMN: VDOMN)
      IDOMN = sTUPLE_SPACE(/*sPRODUCT_SPACE*/_TEMP14)
    }
    if SDAI.IS_TRUE( TUPLED ) {
      
      let _TEMP15 = ONE_TUPLES_OF(eMATHS_SPACE(/*sTUPLE_SPACE*/IDOMN))
      return _derive_definite_integral_domain__cache.updateCache(params: _params, value: _TEMP15)
    }
    else {
      return _derive_definite_integral_domain__cache.updateCache(params: _params, value: IDOMN)
    }
  }

}

//MARK: - function result cache
private var _derive_definite_integral_domain__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

