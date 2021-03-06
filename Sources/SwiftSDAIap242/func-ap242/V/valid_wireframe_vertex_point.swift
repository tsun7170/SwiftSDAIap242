/* file: valid_wireframe_vertex_point.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  FUNCTION valid_wireframe_vertex_point(
               pnt : point
           ) : BOOLEAN;
    IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CARTESIAN_POINT' IN TYPEOF( pnt ) THEN
      RETURN( TRUE );
    ELSE
      IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.POINT_REPLICA' IN TYPEOF( pnt ) THEN
        RETURN( valid_wireframe_vertex_point( pnt\point_replica.parent_pt ) );
      END_IF;
    END_IF;
    RETURN( FALSE );

  END_FUNCTION; -- valid_wireframe_vertex_point (line:48044 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func VALID_WIREFRAME_VERTEX_POINT(
    _ PNT: ePOINT? ) -> SDAI.BOOLEAN? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( PNT )
    if case .available(let _cached_value) = _valid_wireframe_vertex_point__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.BOOLEAN
    }

    var PNT = PNT; SDAI.TOUCH(var: &PNT)

    
    let _TEMP1 = SDAI.TYPEOF(PNT, IS: eCARTESIAN_POINT.self)
    if SDAI.IS_TRUE( _TEMP1 ) {
      return _valid_wireframe_vertex_point__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.TRUE))
    }
    else {
      
      let _TEMP2 = SDAI.TYPEOF(PNT, IS: ePOINT_REPLICA.self)
      if SDAI.IS_TRUE( _TEMP2 ) {
        
        let _TEMP3 = PNT?.GROUP_REF(ePOINT_REPLICA.self)
        let _TEMP4 = _TEMP3?.PARENT_PT
        let _TEMP5 = VALID_WIREFRAME_VERTEX_POINT(_TEMP4)
        return _valid_wireframe_vertex_point__cache.updateCache(params: _params, value: _TEMP5)
      }
    }
    return _valid_wireframe_vertex_point__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.FALSE))
  }

}

//MARK: - function result cache
private var _valid_wireframe_vertex_point__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

