/* file: edge_reversed.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  FUNCTION edge_reversed(
               an_edge : edge
           ) : oriented_edge;

    LOCAL
      the_reverse : oriented_edge;
    END_LOCAL;
    IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ORIENTED_EDGE' IN TYPEOF( an_edge ) THEN
      the_reverse := dummy_tri || edge( an_edge.edge_end, an_edge.edge_start ) || oriented_edge( an_edge\
          oriented_edge.edge_element, NOT an_edge\oriented_edge.orientation );
    ELSE
      the_reverse := dummy_tri || edge( an_edge.edge_end, an_edge.edge_start ) || oriented_edge( an_edge, 
          FALSE );
    END_IF;
    RETURN( the_reverse );

  END_FUNCTION; -- edge_reversed (line:38671 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func EDGE_REVERSED(_ AN_EDGE: eEDGE? ) 
    -> eORIENTED_EDGE? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( AN_EDGE )
    if case .available(let _cached_value) = _edge_reversed__cache.cachedValue(params: _params) {
      return _cached_value as? eORIENTED_EDGE
    }

    var AN_EDGE = AN_EDGE; SDAI.TOUCH(var: &AN_EDGE)

    //LOCAL
    var THE_REVERSE: eORIENTED_EDGE? 

    
    let _TEMP1 = SDAI.TYPEOF(AN_EDGE, IS: eORIENTED_EDGE.self)
    if SDAI.IS_TRUE( _TEMP1 ) {
      
      let _TEMP2 = AN_EDGE?.EDGE_END
      let _TEMP3 = AN_EDGE?.EDGE_START
      let _TEMP4 = _edge(EDGE_START: SDAI.UNWRAP(_TEMP2), 
                         EDGE_END: SDAI.UNWRAP(_TEMP3))
      let _TEMP5 = DUMMY_TRI .||. _TEMP4
      let _TEMP6 = AN_EDGE?.GROUP_REF(eORIENTED_EDGE.self)
      let _TEMP7 = _TEMP6?.EDGE_ELEMENT
      let _TEMP8 = AN_EDGE?.GROUP_REF(eORIENTED_EDGE.self)
      let _TEMP9 = _TEMP8?.ORIENTATION
      let _TEMP10 =  !_TEMP9
      let _TEMP11 = _oriented_edge(EDGE_ELEMENT: SDAI.UNWRAP(_TEMP7), 
                                   ORIENTATION: SDAI.UNWRAP(SDAI.BOOLEAN(/*SDAI.LOGICAL*/_TEMP10)))
      let _TEMP12 = _TEMP5 .||. _TEMP11
      THE_REVERSE = eORIENTED_EDGE(/*SDAI.GENERIC_ENTITY*/_TEMP12)
    }
    else {
      
      let _TEMP13 = AN_EDGE?.EDGE_END
      let _TEMP14 = AN_EDGE?.EDGE_START
      let _TEMP15 = _edge(EDGE_START: SDAI.UNWRAP(_TEMP13), 
                          EDGE_END: SDAI.UNWRAP(_TEMP14))
      let _TEMP16 = DUMMY_TRI .||. _TEMP15
      let _TEMP17 = _oriented_edge(EDGE_ELEMENT: SDAI.UNWRAP(AN_EDGE), 
                                   ORIENTATION: SDAI.UNWRAP(SDAI.BOOLEAN(SDAI.FALSE)))
      let _TEMP18 = _TEMP16 .||. _TEMP17
      THE_REVERSE = eORIENTED_EDGE(/*SDAI.GENERIC_ENTITY*/_TEMP18)
    }
    return _edge_reversed__cache.updateCache(params: _params, value: THE_REVERSE)
  }

}

//MARK: - function result cache
private var _edge_reversed__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

