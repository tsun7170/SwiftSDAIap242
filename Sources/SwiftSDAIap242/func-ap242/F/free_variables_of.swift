/* file: free_variables_of.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  FUNCTION free_variables_of(
               expr : generic_expression
           ) : SET OF generic_variable;

    LOCAL
      typenames : SET OF STRING := stripped_typeof( expr );
      result    : SET OF generic_variable := [];
      exprs     : LIST OF generic_expression := [];
    END_LOCAL;
    IF 'GENERIC_LITERAL' IN typenames THEN
      RETURN( result );
    END_IF;
    IF 'GENERIC_VARIABLE' IN typenames THEN
      result := result + expr;
      RETURN( result );
    END_IF;
    IF 'QUANTIFIER_EXPRESSION' IN typenames THEN
      exprs := QUERY ( ge <* expr\multiple_arity_generic_expression.operands | ( NOT ( ge IN expr\
          quantifier_expression.variables ) ) );
      REPEAT i := 1 TO SIZEOF( exprs ) BY 1;
        result := result + free_variables_of( exprs[i] );
      END_REPEAT;
      REPEAT i := 1 TO SIZEOF( expr\quantifier_expression.variables ) BY 1;
        result := result - expr\quantifier_expression.variables[i];
      END_REPEAT;
      RETURN( result );
    END_IF;
    IF 'UNARY_GENERIC_EXPRESSION' IN typenames THEN
      RETURN( free_variables_of( expr\unary_generic_expression.operand ) );
    END_IF;
    IF 'BINARY_GENERIC_EXPRESSION' IN typenames THEN
      result := free_variables_of( expr\binary_generic_expression.operands[1] );
      RETURN( result + free_variables_of( expr\binary_generic_expression.operands[2] ) );
    END_IF;
    IF 'MULTIPLE_ARITY_GENERIC_EXPRESSION' IN typenames THEN
      REPEAT i := 1 TO SIZEOF( expr\multiple_arity_generic_expression.operands ) BY 1;
        result := result + free_variables_of( expr\multiple_arity_generic_expression.operands[i] );
      END_REPEAT;
      RETURN( result );
    END_IF;
    RETURN( result );

  END_FUNCTION; -- free_variables_of (line:40961 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func FREE_VARIABLES_OF(_ EXPR: eGENERIC_EXPRESSION? ) 
    -> SDAI.SET<eGENERIC_VARIABLE>? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( EXPR )
    if case .available(let _cached_value) = _free_variables_of__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.SET<eGENERIC_VARIABLE>
    }

    var EXPR = EXPR; SDAI.TOUCH(var: &EXPR)

    //LOCAL
    var TYPENAMES: SDAI.SET<SDAI.STRING>?  = STRIPPED_TYPEOF(EXPR); SDAI.TOUCH(var: &TYPENAMES)
    var RESULT: SDAI.SET<eGENERIC_VARIABLE>?  = SDAI.SET<eGENERIC_VARIABLE>(SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &RESULT)
    var EXPRS: SDAI.LIST<eGENERIC_EXPRESSION>?  = SDAI.LIST<eGENERIC_EXPRESSION>(SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &EXPRS)
    //END_LOCAL

    
    let _TEMP1 = SDAI.aggregate(TYPENAMES, contains: SDAI.STRING("GENERIC_LITERAL"))
    if SDAI.IS_TRUE( _TEMP1 ) {
      return _free_variables_of__cache.updateCache(params: _params, value: RESULT)
    }
    
    let _TEMP2 = SDAI.aggregate(TYPENAMES, contains: SDAI.STRING("GENERIC_VARIABLE"))
    if SDAI.IS_TRUE( _TEMP2 ) {
      
      let _TEMP3 = RESULT + EXPR
      RESULT = SDAI.SET<eGENERIC_VARIABLE>(/*SDAI.SET<SDAI.GENERIC_ENTITY>*/_TEMP3)
      return _free_variables_of__cache.updateCache(params: _params, value: RESULT)
    }
    
    let _TEMP4 = SDAI.aggregate(TYPENAMES, contains: SDAI.STRING("QUANTIFIER_EXPRESSION"))
    if SDAI.IS_TRUE( _TEMP4 ) {
      
      let _TEMP5 = EXPR?.GROUP_REF(eMULTIPLE_ARITY_GENERIC_EXPRESSION.self)
      let _TEMP6 = _TEMP5?.OPERANDS
      let _TEMP7 = _TEMP6?.QUERY{ GE in 

          let _TEMP1 = EXPR?.GROUP_REF(eQUANTIFIER_EXPRESSION.self)
          let _TEMP2 = _TEMP1?.VARIABLES
          let _TEMP3 = SDAI.aggregate(_TEMP2, contains: eGENERIC_VARIABLE(/*eGENERIC_EXPRESSION*/GE))
          let _TEMP4 =  !_TEMP3
          return _TEMP4 }
      EXPRS = SDAI.LIST<eGENERIC_EXPRESSION>(/*SDAI.LIST<eGENERIC_EXPRESSION>[2:nil] */_TEMP7)
      if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.SIZEOF(
        EXPRS)) {
        for I in incrementControl {
          
          let _TEMP8 = EXPRS?[I]
          let _TEMP9 = FREE_VARIABLES_OF(_TEMP8)
          let _TEMP10 = RESULT + _TEMP9
          RESULT = _TEMP10
        }
      }
      if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.SIZEOF(
        EXPR?.GROUP_REF(eQUANTIFIER_EXPRESSION.self)?.VARIABLES)) {
        for I in incrementControl {
          
          let _TEMP11 = EXPR?.GROUP_REF(eQUANTIFIER_EXPRESSION.self)
          let _TEMP12 = _TEMP11?.VARIABLES
          let _TEMP13 = _TEMP12?[I]
          let _TEMP14 = RESULT - _TEMP13
          RESULT = _TEMP14
        }
      }
      return _free_variables_of__cache.updateCache(params: _params, value: RESULT)
    }
    
    let _TEMP15 = SDAI.aggregate(TYPENAMES, contains: SDAI.STRING("UNARY_GENERIC_EXPRESSION"))
    if SDAI.IS_TRUE( _TEMP15 ) {
      
      let _TEMP16 = EXPR?.GROUP_REF(eUNARY_GENERIC_EXPRESSION.self)
      let _TEMP17 = _TEMP16?.OPERAND
      let _TEMP18 = FREE_VARIABLES_OF(_TEMP17)
      return _free_variables_of__cache.updateCache(params: _params, value: _TEMP18)
    }
    
    let _TEMP19 = SDAI.aggregate(TYPENAMES, contains: SDAI.STRING("BINARY_GENERIC_EXPRESSION"))
    if SDAI.IS_TRUE( _TEMP19 ) {
      
      let _TEMP20 = EXPR?.GROUP_REF(eBINARY_GENERIC_EXPRESSION.self)
      let _TEMP21 = _TEMP20?.OPERANDS
      let _TEMP22 = _TEMP21?[1]
      let _TEMP23 = FREE_VARIABLES_OF(_TEMP22)
      RESULT = _TEMP23
      
      let _TEMP24 = EXPR?.GROUP_REF(eBINARY_GENERIC_EXPRESSION.self)
      let _TEMP25 = _TEMP24?.OPERANDS
      let _TEMP26 = _TEMP25?[2]
      let _TEMP27 = FREE_VARIABLES_OF(_TEMP26)
      let _TEMP28 = RESULT + _TEMP27
      return _free_variables_of__cache.updateCache(params: _params, value: _TEMP28)
    }
    
    let _TEMP29 = SDAI.aggregate(TYPENAMES, contains: SDAI.STRING("MULTIPLE_ARITY_GENERIC_EXPRESSION"))
    if SDAI.IS_TRUE( _TEMP29 ) {
      if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.SIZEOF(
        EXPR?.GROUP_REF(eMULTIPLE_ARITY_GENERIC_EXPRESSION.self)?.OPERANDS)) {
        for I in incrementControl {
          
          let _TEMP30 = EXPR?.GROUP_REF(eMULTIPLE_ARITY_GENERIC_EXPRESSION.self)
          let _TEMP31 = _TEMP30?.OPERANDS
          let _TEMP32 = _TEMP31?[I]
          let _TEMP33 = FREE_VARIABLES_OF(_TEMP32)
          let _TEMP34 = RESULT + _TEMP33
          RESULT = _TEMP34
        }
      }
      return _free_variables_of__cache.updateCache(params: _params, value: RESULT)
    }
    return _free_variables_of__cache.updateCache(params: _params, value: RESULT)
  }

}

//MARK: - function result cache
private var _free_variables_of__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

