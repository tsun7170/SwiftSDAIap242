/* file: definite_integral_expr_check.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  FUNCTION definite_integral_expr_check(
               operands : LIST [2 : ?] OF generic_expression;
               lowerinf : BOOLEAN;
               upperinf : BOOLEAN
           ) : BOOLEAN;

    LOCAL
      nops : INTEGER := 2;
      vspc : maths_space;
      k    : positive_integer;
      bspc : maths_space;
    END_LOCAL;
    IF NOT lowerinf THEN
      nops := nops + 1;
    END_IF;
    IF NOT upperinf THEN
      nops := nops + 1;
    END_IF;
    IF SIZEOF( operands ) <> nops THEN
      RETURN( FALSE );
    END_IF;
    IF NOT ( 'GENERIC_VARIABLE' IN stripped_typeof( operands[2] ) ) THEN
      RETURN( FALSE );
    END_IF;
    IF NOT has_values_space( operands[2] ) THEN
      RETURN( FALSE );
    END_IF;
    vspc := values_space_of( operands[2] );
    IF NOT ( 'REAL_INTERVAL' IN stripped_typeof( vspc ) ) THEN
      RETURN( FALSE );
    END_IF;
    IF lowerinf THEN
      IF min_exists( vspc ) THEN
        RETURN( FALSE );
      END_IF;
      k := 3;
    ELSE
      IF NOT has_values_space( operands[3] ) THEN
        RETURN( FALSE );
      END_IF;
      bspc := values_space_of( operands[3] );
      IF NOT compatible_spaces( bspc, vspc ) THEN
        RETURN( FALSE );
      END_IF;
      k := 4;
    END_IF;
    IF upperinf THEN
      IF max_exists( vspc ) THEN
        RETURN( FALSE );
      END_IF;
    ELSE
      IF NOT has_values_space( operands[k] ) THEN
        RETURN( FALSE );
      END_IF;
      bspc := values_space_of( operands[k] );
      IF NOT compatible_spaces( bspc, vspc ) THEN
        RETURN( FALSE );
      END_IF;
    END_IF;
    RETURN( TRUE );

  END_FUNCTION; -- definite_integral_expr_check (line:37478 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func DEFINITE_INTEGRAL_EXPR_CHECK(
    OPERANDS: (SDAI.LIST<eGENERIC_EXPRESSION>/*[2:nil]*/ )? , LOWERINF: SDAI.BOOLEAN? , 
    UPPERINF: SDAI.BOOLEAN? ) -> SDAI.BOOLEAN? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( OPERANDS, LOWERINF, UPPERINF )
    if case .available(let _cached_value) = _definite_integral_expr_check__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.BOOLEAN
    }

    var OPERANDS = OPERANDS; SDAI.TOUCH(var: &OPERANDS)
    var LOWERINF = LOWERINF; SDAI.TOUCH(var: &LOWERINF)
    var UPPERINF = UPPERINF; SDAI.TOUCH(var: &UPPERINF)

    //LOCAL
    var NOPS: SDAI.INTEGER?  = SDAI.INTEGER(2); SDAI.TOUCH(var: &NOPS)
    var VSPC: eMATHS_SPACE? 
    var K: tPOSITIVE_INTEGER? 
    var BSPC: eMATHS_SPACE? 
    //END_LOCAL

    if SDAI.IS_TRUE( (  !LOWERINF ) ) {
      
      let _TEMP1 = NOPS + SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      NOPS = _TEMP1
    }
    if SDAI.IS_TRUE( (  !UPPERINF ) ) {
      
      let _TEMP2 = NOPS + SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      NOPS = _TEMP2
    }
    
    let _TEMP3 = SDAI.SIZEOF(OPERANDS)
    let _TEMP4 = _TEMP3 .!=. NOPS
    if SDAI.IS_TRUE( _TEMP4 ) {
      return _definite_integral_expr_check__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.FALSE))
    }
    
    let _TEMP5 = OPERANDS?[2]
    let _TEMP6 = STRIPPED_TYPEOF(_TEMP5)
    let _TEMP7 = SDAI.aggregate(_TEMP6, contains: SDAI.STRING("GENERIC_VARIABLE"))
    let _TEMP8 =  !_TEMP7
    if SDAI.IS_TRUE( _TEMP8 ) {
      return _definite_integral_expr_check__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.FALSE))
    }
    
    let _TEMP9 = OPERANDS?[2]
    let _TEMP10 = HAS_VALUES_SPACE(_TEMP9)
    let _TEMP11 =  !_TEMP10
    if SDAI.IS_TRUE( _TEMP11 ) {
      return _definite_integral_expr_check__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.FALSE))
    }
    
    let _TEMP12 = OPERANDS?[2]
    let _TEMP13 = VALUES_SPACE_OF(_TEMP12)
    VSPC = _TEMP13
    
    let _TEMP14 = STRIPPED_TYPEOF(VSPC)
    let _TEMP15 = SDAI.aggregate(_TEMP14, contains: SDAI.STRING("REAL_INTERVAL"))
    let _TEMP16 =  !_TEMP15
    if SDAI.IS_TRUE( _TEMP16 ) {
      return _definite_integral_expr_check__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.FALSE))
    }
    if SDAI.IS_TRUE( LOWERINF ) {
      
      let _TEMP17 = MIN_EXISTS(VSPC)
      if SDAI.IS_TRUE( _TEMP17 ) {
        return _definite_integral_expr_check__cache.updateCache(params: _params, value: SDAI.BOOLEAN(
          SDAI.FALSE))
      }
      K = tPOSITIVE_INTEGER(3)
    }
    else {
      
      let _TEMP18 = OPERANDS?[3]
      let _TEMP19 = HAS_VALUES_SPACE(_TEMP18)
      let _TEMP20 =  !_TEMP19
      if SDAI.IS_TRUE( _TEMP20 ) {
        return _definite_integral_expr_check__cache.updateCache(params: _params, value: SDAI.BOOLEAN(
          SDAI.FALSE))
      }
      
      let _TEMP21 = OPERANDS?[3]
      let _TEMP22 = VALUES_SPACE_OF(_TEMP21)
      BSPC = _TEMP22
      
      let _TEMP23 = COMPATIBLE_SPACES(
        SP1: BSPC, SP2: VSPC)
      let _TEMP24 =  !_TEMP23
      if SDAI.IS_TRUE( _TEMP24 ) {
        return _definite_integral_expr_check__cache.updateCache(params: _params, value: SDAI.BOOLEAN(
          SDAI.FALSE))
      }
      K = tPOSITIVE_INTEGER(4)
    }
    if SDAI.IS_TRUE( UPPERINF ) {
      
      let _TEMP25 = MAX_EXISTS(VSPC)
      if SDAI.IS_TRUE( _TEMP25 ) {
        return _definite_integral_expr_check__cache.updateCache(params: _params, value: SDAI.BOOLEAN(
          SDAI.FALSE))
      }
    }
    else {
      
      let _TEMP26 = OPERANDS?[K]
      let _TEMP27 = HAS_VALUES_SPACE(_TEMP26)
      let _TEMP28 =  !_TEMP27
      if SDAI.IS_TRUE( _TEMP28 ) {
        return _definite_integral_expr_check__cache.updateCache(params: _params, value: SDAI.BOOLEAN(
          SDAI.FALSE))
      }
      
      let _TEMP29 = OPERANDS?[K]
      let _TEMP30 = VALUES_SPACE_OF(_TEMP29)
      BSPC = _TEMP30
      
      let _TEMP31 = COMPATIBLE_SPACES(
        SP1: BSPC, SP2: VSPC)
      let _TEMP32 =  !_TEMP31
      if SDAI.IS_TRUE( _TEMP32 ) {
        return _definite_integral_expr_check__cache.updateCache(params: _params, value: SDAI.BOOLEAN(
          SDAI.FALSE))
      }
    }
    return _definite_integral_expr_check__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.TRUE))
  }

}

//MARK: - function result cache
private var _definite_integral_expr_check__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

