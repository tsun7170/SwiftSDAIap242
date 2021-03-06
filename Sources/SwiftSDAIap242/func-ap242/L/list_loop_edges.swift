/* file: list_loop_edges.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  FUNCTION list_loop_edges(
               l : loop
           ) : LIST [0 : ?] OF edge;

    LOCAL
      edges : LIST [0 : ?] OF edge := [];
    END_LOCAL;
    IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.EDGE_LOOP' IN TYPEOF( l ) THEN
      REPEAT i := 1 TO SIZEOF( l\path.edge_list ) BY 1;
        edges := edges + l\path.edge_list[i].edge_element;
      END_REPEAT;
    END_IF;
    RETURN( edges );

  END_FUNCTION; -- list_loop_edges (line:51613 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func LIST_LOOP_EDGES(_ L: eLOOP? ) 
    -> (SDAI.LIST<eEDGE>/*[0:nil]*/ )? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( L )
    if case .available(let _cached_value) = _list_loop_edges__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.LIST<eEDGE>
    }

    var L = L; SDAI.TOUCH(var: &L)

    //LOCAL
    var EDGES: (SDAI.LIST<eEDGE>/*[0:nil]*/ )?  = SDAI.LIST<eEDGE>(bound1: SDAI.UNWRAP(SDAI.INTEGER(0)), 
                                                  bound2: (nil as SDAI.INTEGER?), 
                                                  SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &EDGES)

    
    let _TEMP1 = SDAI.TYPEOF(L, IS: eEDGE_LOOP.self)
    if SDAI.IS_TRUE( _TEMP1 ) {
      if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.SIZEOF(
        L?.GROUP_REF(ePATH.self)?.EDGE_LIST)) {
        for I in incrementControl {
          
          let _TEMP2 = L?.GROUP_REF(ePATH.self)
          let _TEMP3 = _TEMP2?.EDGE_LIST
          let _TEMP4 = _TEMP3?[I]
          let _TEMP5 = _TEMP4?.EDGE_ELEMENT
          let _TEMP6 = EDGES + _TEMP5
          EDGES = SDAI.LIST<eEDGE>(bound1: SDAI.UNWRAP(SDAI.INTEGER(0)), bound2: (nil as SDAI.INTEGER?), 
            /*SDAI.LIST<eEDGE>*/_TEMP6)
        }
      }
    }
    return _list_loop_edges__cache.updateCache(params: _params, value: EDGES)
  }

}

//MARK: - function result cache
private var _list_loop_edges__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

