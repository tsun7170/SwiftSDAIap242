/* file: check_sparse_index_domain.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  FUNCTION check_sparse_index_domain(
               idxdom : tuple_space;
               base : zero_or_one;
               shape : LIST [1 : ?] OF positive_integer;
               order : ordering_type
           ) : BOOLEAN;

    LOCAL
      mthspc   : maths_space;
      interval : finite_integer_interval;
      i        : INTEGER;
    END_LOCAL;
    mthspc := factor1( idxdom );
    interval := mthspc;
    IF order = by_rows THEN
      i := 1;
    ELSE
      i := 2;
    END_IF;
    RETURN( bool( ( interval.min <= base ) AND ( interval.max >= ( base + shape[i] ) ) ) );

  END_FUNCTION; -- check_sparse_index_domain (line:36001 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func CHECK_SPARSE_INDEX_DOMAIN(IDXDOM: sTUPLE_SPACE? , BASE: tZERO_OR_ONE? , 
                                 SHAPE: (SDAI.LIST<tPOSITIVE_INTEGER>/*[1:nil]*/ )? , 
                                 ORDER: nORDERING_TYPE? ) 
    -> SDAI.BOOLEAN? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( IDXDOM, BASE, SHAPE, ORDER )
    if case .available(let _cached_value) = _check_sparse_index_domain__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.BOOLEAN
    }

    var IDXDOM = IDXDOM; SDAI.TOUCH(var: &IDXDOM)
    var BASE = BASE; SDAI.TOUCH(var: &BASE)
    var SHAPE = SHAPE; SDAI.TOUCH(var: &SHAPE)
    var ORDER = ORDER; SDAI.TOUCH(var: &ORDER)

    //LOCAL
    var MTHSPC: eMATHS_SPACE? 
    var INTERVAL: eFINITE_INTEGER_INTERVAL? 
    var I: SDAI.INTEGER? 
    //END_LOCAL

    
    let _TEMP1 = FACTOR1(IDXDOM)
    MTHSPC = _TEMP1
    INTERVAL = eFINITE_INTEGER_INTERVAL(/*eMATHS_SPACE*/MTHSPC)
    
    let _TEMP2 = ORDER .==. SDAI.FORCE_OPTIONAL(BY_ROWS)
    if SDAI.IS_TRUE( _TEMP2 ) {
      I = SDAI.INTEGER(1)
    }
    else {
      I = SDAI.INTEGER(2)
    }
    
    let _TEMP3 = INTERVAL?.MIN
    let _TEMP4 = _TEMP3 <= BASE
    let _TEMP5 = INTERVAL?.MAX
    let _TEMP6 = SHAPE?[I]
    let _TEMP7 = BASE + _TEMP6
    let _TEMP8 = _TEMP5 >= _TEMP7
    let _TEMP9 = _TEMP4 && _TEMP8
    let _TEMP10 = BOOL(SDAI.LOGICAL(_TEMP9))
    return _check_sparse_index_domain__cache.updateCache(params: _params, value: _TEMP10)
  }

}

//MARK: - function result cache
private var _check_sparse_index_domain__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

