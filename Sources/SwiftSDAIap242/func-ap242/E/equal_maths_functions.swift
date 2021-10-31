/* file: equal_maths_functions.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  FUNCTION equal_maths_functions(
               fun1, fun2 : maths_function
           ) : LOGICAL;

    LOCAL
      cum : LOGICAL;
    END_LOCAL;
    IF fun1 = fun2 THEN
      RETURN( TRUE );
    END_IF;
    cum := equal_maths_spaces( fun1.domain, fun2.domain );
    IF cum = FALSE THEN
      RETURN( FALSE );
    END_IF;
    cum := cum AND equal_maths_spaces( fun1.range, fun2.range );
    IF cum = FALSE THEN
      RETURN( FALSE );
    END_IF;
    RETURN( UNKNOWN );

  END_FUNCTION; -- equal_maths_functions (line:40158 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func EQUAL_MATHS_FUNCTIONS(FUN1: eMATHS_FUNCTION? , FUN2: eMATHS_FUNCTION? ) 
    -> SDAI.LOGICAL {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( FUN1, FUN2 )
    if case .available(let _cached_value) = _equal_maths_functions__cache.cachedValue(params: _params) {
      return _cached_value as! SDAI.LOGICAL
    }

    var FUN1 = FUN1; SDAI.TOUCH(var: &FUN1)
    var FUN2 = FUN2; SDAI.TOUCH(var: &FUN2)

    //LOCAL
    var CUM: SDAI.LOGICAL

    
    let _TEMP1 = FUN1 .==. FUN2
    if SDAI.IS_TRUE( _TEMP1 ) {
      return _equal_maths_functions__cache.updateCache(params: _params, value: SDAI.UNWRAP(SDAI.LOGICAL(
        SDAI.TRUE)))
    }
    
    let _TEMP2 = FUN1?.DOMAIN
    let _TEMP3 = FUN2?.DOMAIN
    let _TEMP4 = EQUAL_MATHS_SPACES(
      SPC1: eMATHS_SPACE(/*sTUPLE_SPACE*/_TEMP2), 
      SPC2: eMATHS_SPACE(/*sTUPLE_SPACE*/_TEMP3))
    CUM = SDAI.UNWRAP(_TEMP4)
    
    let _TEMP5 = SDAI.FORCE_OPTIONAL(CUM) .==. SDAI.FORCE_OPTIONAL(SDAI.LOGICAL(SDAI.FALSE))
    if SDAI.IS_TRUE( _TEMP5 ) {
      return _equal_maths_functions__cache.updateCache(params: _params, value: SDAI.UNWRAP(SDAI.LOGICAL(
        SDAI.FALSE)))
    }
    
    let _TEMP6 = FUN1?.RANGE
    let _TEMP7 = FUN2?.RANGE
    let _TEMP8 = EQUAL_MATHS_SPACES(
      SPC1: eMATHS_SPACE(/*sTUPLE_SPACE*/_TEMP6), 
      SPC2: eMATHS_SPACE(/*sTUPLE_SPACE*/_TEMP7))
    let _TEMP9 = CUM && _TEMP8
    CUM = SDAI.UNWRAP(_TEMP9)
    
    let _TEMP10 = SDAI.FORCE_OPTIONAL(CUM) .==. SDAI.FORCE_OPTIONAL(SDAI.LOGICAL(SDAI.FALSE))
    if SDAI.IS_TRUE( _TEMP10 ) {
      return _equal_maths_functions__cache.updateCache(params: _params, value: SDAI.UNWRAP(SDAI.LOGICAL(
        SDAI.FALSE)))
    }
    return _equal_maths_functions__cache.updateCache(params: _params, value: SDAI.UNWRAP(SDAI.LOGICAL(
      SDAI.UNKNOWN)))
  }

}

//MARK: - function result cache
private var _equal_maths_functions__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

