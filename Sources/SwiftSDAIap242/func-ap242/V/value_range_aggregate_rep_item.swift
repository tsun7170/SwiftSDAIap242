/* file: value_range_aggregate_rep_item.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  FUNCTION value_range_aggregate_rep_item(
               agg : AGGREGATE OF representation_item
           ) : BOOLEAN;

    BEGIN
      IF SIZEOF( QUERY ( i1 <* agg | ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
          + 'MEASURE_REPRESENTATION_ITEM'  IN TYPEOF( i1 ) ) ) ) = 6 THEN
        RETURN( TRUE );
      ELSE
        RETURN( FALSE );
      END_IF;
    END;

  END_FUNCTION; -- value_range_aggregate_rep_item (line:48534 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func VALUE_RANGE_AGGREGATE_REP_ITEM<g_AGG1: SDAIAggregationType>(
    _ AGG: g_AGG1? ) -> SDAI.BOOLEAN? 
  where g_AGG1.ELEMENT == eREPRESENTATION_ITEM {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( AGG )
    if case .available(let _cached_value) = _value_range_aggregate_rep_item__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.BOOLEAN
    }

    var AGG = AGG; SDAI.TOUCH(var: &AGG)

    //BEGIN
    
    let _TEMP1 = AGG?.QUERY{ I1 in 

        let _TEMP1 = SDAI.TYPEOF(I1, IS: eMEASURE_REPRESENTATION_ITEM.self)
        return _TEMP1 }
    let _TEMP2 = SDAI.SIZEOF(SDAI.AGGREGATE<eREPRESENTATION_ITEM>(fromGeneric: /*g_AGG1*/_TEMP1))
    let _TEMP3 = _TEMP2 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(6))
    if SDAI.IS_TRUE( _TEMP3 ) {
      return _value_range_aggregate_rep_item__cache.updateCache(params: _params, value: SDAI.BOOLEAN(
        SDAI.TRUE))
    }
    else {
      return _value_range_aggregate_rep_item__cache.updateCache(params: _params, value: SDAI.BOOLEAN(
        SDAI.FALSE))
    }
    //END
  }

}

//MARK: - function result cache
private var _value_range_aggregate_rep_item__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

