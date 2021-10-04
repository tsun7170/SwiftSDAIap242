/* file: conditional_reverse.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  FUNCTION conditional_reverse(
               p : BOOLEAN;
               an_item : reversible_topology
           ) : reversible_topology;
    IF p THEN
      RETURN( an_item );
    ELSE
      RETURN( topology_reversed( an_item ) );
    END_IF;

  END_FUNCTION; -- conditional_reverse (line:36707 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func CONDITIONAL_REVERSE(P: SDAI.BOOLEAN? , AN_ITEM: sREVERSIBLE_TOPOLOGY? ) 
    -> sREVERSIBLE_TOPOLOGY? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( P, AN_ITEM )
    if case .available(let _cached_value) = _conditional_reverse__cache.cachedValue(params: _params) {
      return _cached_value as? sREVERSIBLE_TOPOLOGY
    }

    var P = P; SDAI.TOUCH(var: &P)
    var AN_ITEM = AN_ITEM; SDAI.TOUCH(var: &AN_ITEM)

    if SDAI.IS_TRUE( P ) {
      return _conditional_reverse__cache.updateCache(params: _params, value: AN_ITEM)
    }
    else {
      
      let _TEMP1 = TOPOLOGY_REVERSED(AN_ITEM)
      return _conditional_reverse__cache.updateCache(params: _params, value: _TEMP1)
    }
  }

}

//MARK: - function result cache
private var _conditional_reverse__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)
