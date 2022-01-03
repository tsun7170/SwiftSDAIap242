/* file: vertex_point_pcurves.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  FUNCTION vertex_point_pcurves(
               a_vertex : vertex_point;
               the_degenerates : SET OF evaluated_degenerate_pcurve
           ) : SET OF degenerate_pcurve;

    LOCAL
      a_point : point;
      result  : SET OF degenerate_pcurve;
    END_LOCAL;
    a_point := a_vertex.vertex_geometry;
    result := [];
    IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DEGENERATE_PCURVE' IN TYPEOF( a_point ) THEN
      result := result + a_point;
    ELSE
      REPEAT j := 1 TO SIZEOF( the_degenerates ) BY 1;
        IF the_degenerates[j].equivalent_point :=: a_point THEN
          result := result + the_degenerates[j];
        END_IF;
      END_REPEAT;
    END_IF;
    RETURN( result );

  END_FUNCTION; -- vertex_point_pcurves (line:51713 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func VERTEX_POINT_PCURVES(A_VERTEX: eVERTEX_POINT? , THE_DEGENERATES: SDAI.SET<eEVALUATED_DEGENERATE_PCURVE>? ) 
    -> SDAI.SET<eDEGENERATE_PCURVE>? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( A_VERTEX, THE_DEGENERATES )
    if case .available(let _cached_value) = _vertex_point_pcurves__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.SET<eDEGENERATE_PCURVE>
    }

    var A_VERTEX = A_VERTEX; SDAI.TOUCH(var: &A_VERTEX)
    var THE_DEGENERATES = THE_DEGENERATES; SDAI.TOUCH(var: &THE_DEGENERATES)

    //LOCAL
    var A_POINT: ePOINT? 
    var RESULT: SDAI.SET<eDEGENERATE_PCURVE>? 
    //END_LOCAL

    
    let _TEMP1 = A_VERTEX?.VERTEX_GEOMETRY
    A_POINT = _TEMP1
    
    let _TEMP2 = SDAI.SET<eDEGENERATE_PCURVE>(SDAI.EMPLY_AGGREGATE)
    RESULT = _TEMP2
    
    let _TEMP3 = SDAI.TYPEOF(A_POINT, IS: eDEGENERATE_PCURVE.self)
    if SDAI.IS_TRUE( _TEMP3 ) {
      
      let _TEMP4 = RESULT + A_POINT
      RESULT = SDAI.SET<eDEGENERATE_PCURVE>(/*SDAI.SET<SDAI.GENERIC_ENTITY>*/_TEMP4)
    }
    else {
      if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.SIZEOF(
        THE_DEGENERATES)) {
        for J in incrementControl {
          
          let _TEMP5 = THE_DEGENERATES?[J]
          let _TEMP6 = _TEMP5?.EQUIVALENT_POINT
          let _TEMP7 = _TEMP6 .===. A_POINT
          if SDAI.IS_TRUE( _TEMP7 ) {
            
            let _TEMP8 = THE_DEGENERATES?[J]
            let _TEMP9 = RESULT + _TEMP8
            RESULT = SDAI.SET<eDEGENERATE_PCURVE>(/*SDAI.SET<SDAI.GENERIC_ENTITY>*/_TEMP9)
          }
        }
      }
    }
    return _vertex_point_pcurves__cache.updateCache(params: _params, value: RESULT)
  }

}

//MARK: - function result cache
private var _vertex_point_pcurves__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

