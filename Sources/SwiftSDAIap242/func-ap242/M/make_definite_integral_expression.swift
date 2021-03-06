/* file: make_definite_integral_expression.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  FUNCTION make_definite_integral_expression(
               operands : LIST [2 : 4] OF generic_expression;
               loinf, upinf : BOOLEAN
           ) : definite_integral_expression;
    RETURN( definite_integral_expression( loinf, upinf ) || quantifier_expression( [operands[2]] ) || 
        multiple_arity_generic_expression( operands ) || generic_expression(  ) );

  END_FUNCTION; -- make_definite_integral_expression (line:52209 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func MAKE_DEFINITE_INTEGRAL_EXPRESSION(
    OPERANDS: (SDAI.LIST<eGENERIC_EXPRESSION>/*[2:4]*/ )? , LOINF: SDAI.BOOLEAN? , 
    UPINF: SDAI.BOOLEAN? ) -> eDEFINITE_INTEGRAL_EXPRESSION? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( OPERANDS, LOINF, UPINF )
    if case .available(let _cached_value) = _make_definite_integral_expression__cache.cachedValue(params: _params) {
      return _cached_value as? eDEFINITE_INTEGRAL_EXPRESSION
    }

    var OPERANDS = OPERANDS; SDAI.TOUCH(var: &OPERANDS)
    var LOINF = LOINF; SDAI.TOUCH(var: &LOINF)
    var UPINF = UPINF; SDAI.TOUCH(var: &UPINF)

    
    let _TEMP1 = _definite_integral_expression(
      LOWER_LIMIT_NEG_INFINITY: SDAI.UNWRAP(LOINF), 
      UPPER_LIMIT_POS_INFINITY: SDAI.UNWRAP(UPINF))
    let _TEMP2 = OPERANDS?[2]
    let _TEMP3 = SDAI.LIST_UNIQUE<eGENERIC_VARIABLE>(bound1: SDAI.UNWRAP(SDAI.INTEGER(1)), bound2: (nil as 
      SDAI.INTEGER?), ([SDAI.AIE(eGENERIC_VARIABLE(/*eGENERIC_EXPRESSION*/_TEMP2))] 
      as [SDAI.AggregationInitializerElement<eGENERIC_VARIABLE>]))
    let _TEMP4 = _quantifier_expression(VARIABLES: SDAI.UNWRAP(_TEMP3))
    let _TEMP5 = _TEMP1 .||. _TEMP4
    let _TEMP6 = _multiple_arity_generic_expression(OPERANDS: SDAI.UNWRAP(SDAI.LIST<eGENERIC_EXPRESSION>(
      bound1: SDAI.UNWRAP(SDAI.INTEGER(2)), bound2: (nil as SDAI.INTEGER?), 
      /*SDAI.LIST<eGENERIC_EXPRESSION>[2:4] */OPERANDS)))
    let _TEMP7 = _TEMP5 .||. _TEMP6
    let _TEMP8 = _generic_expression()
    let _TEMP9 = _TEMP7 .||. _TEMP8
    return _make_definite_integral_expression__cache.updateCache(params: _params, value: 
      eDEFINITE_INTEGRAL_EXPRESSION(/*SDAI.GENERIC_ENTITY*/_TEMP9))
  }

}

//MARK: - function result cache
private var _make_definite_integral_expression__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

