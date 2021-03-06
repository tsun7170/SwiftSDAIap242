/* file: check_sparse_loc_range.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  FUNCTION check_sparse_loc_range(
               locrng : tuple_space;
               base : zero_or_one;
               shape : LIST [1 : ?] OF positive_integer;
               order : ordering_type
           ) : BOOLEAN;

    LOCAL
      mthspc   : maths_space;
      interval : finite_integer_interval;
      i        : INTEGER;
    END_LOCAL;
    IF space_dimension( locrng ) <> 1 THEN
      RETURN( FALSE );
    END_IF;
    mthspc := factor1( locrng );
    IF NOT ( ( schema_prefix + 'FINITE_INTEGER_INTERVAL' ) IN TYPEOF( mthspc ) ) THEN
      RETURN( FALSE );
    END_IF;
    interval := mthspc;
    IF order = by_rows THEN
      i := 2;
    ELSE
      i := 1;
    END_IF;
    RETURN( bool( ( interval.min >= base ) AND ( interval.max <= ( ( base + shape[i] ) - 1 ) ) ) );

  END_FUNCTION; -- check_sparse_loc_range (line:36051 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func CHECK_SPARSE_LOC_RANGE(LOCRNG: sTUPLE_SPACE? , BASE: tZERO_OR_ONE? , 
                              SHAPE: (SDAI.LIST<tPOSITIVE_INTEGER>/*[1:nil]*/ )? , 
                              ORDER: nORDERING_TYPE? ) 
    -> SDAI.BOOLEAN? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( LOCRNG, BASE, SHAPE, ORDER )
    if case .available(let _cached_value) = _check_sparse_loc_range__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.BOOLEAN
    }

    var LOCRNG = LOCRNG; SDAI.TOUCH(var: &LOCRNG)
    var BASE = BASE; SDAI.TOUCH(var: &BASE)
    var SHAPE = SHAPE; SDAI.TOUCH(var: &SHAPE)
    var ORDER = ORDER; SDAI.TOUCH(var: &ORDER)

    //LOCAL
    var MTHSPC: eMATHS_SPACE? 
    var INTERVAL: eFINITE_INTEGER_INTERVAL? 
    var I: SDAI.INTEGER? 
    //END_LOCAL

    
    let _TEMP1 = SPACE_DIMENSION(LOCRNG)
    let _TEMP2 = _TEMP1 .!=. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
    if SDAI.IS_TRUE( _TEMP2 ) {
      return _check_sparse_loc_range__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.FALSE))
    }
    
    let _TEMP3 = FACTOR1(LOCRNG)
    MTHSPC = _TEMP3
    
    let _TEMP4 = SDAI.FORCE_OPTIONAL(SCHEMA_PREFIX) + SDAI.FORCE_OPTIONAL(SDAI.STRING("FINITE_INTEGER_INTERVAL"))
    let _TEMP5 = SDAI.TYPEOF(MTHSPC)
    let _TEMP6 = SDAI.aggregate(_TEMP5, contains: _TEMP4)
    let _TEMP7 =  !_TEMP6
    if SDAI.IS_TRUE( _TEMP7 ) {
      return _check_sparse_loc_range__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.FALSE))
    }
    INTERVAL = eFINITE_INTEGER_INTERVAL(/*eMATHS_SPACE*/MTHSPC)
    
    let _TEMP8 = ORDER .==. SDAI.FORCE_OPTIONAL(BY_ROWS)
    if SDAI.IS_TRUE( _TEMP8 ) {
      I = SDAI.INTEGER(2)
    }
    else {
      I = SDAI.INTEGER(1)
    }
    
    let _TEMP9 = INTERVAL?.MIN
    let _TEMP10 = _TEMP9 >= BASE
    let _TEMP11 = INTERVAL?.MAX
    let _TEMP12 = SHAPE?[I]
    let _TEMP13 = BASE + _TEMP12
    let _TEMP14 = _TEMP13 - SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
    let _TEMP15 = _TEMP11 <= _TEMP14
    let _TEMP16 = _TEMP10 && _TEMP15
    let _TEMP17 = BOOL(SDAI.LOGICAL(_TEMP16))
    return _check_sparse_loc_range__cache.updateCache(params: _params, value: _TEMP17)
  }

}

//MARK: - function result cache
private var _check_sparse_loc_range__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

