/* file: check_continuous_edges.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  FUNCTION check_continuous_edges(
               edges : LIST OF UNIQUE edge_curve
           ) : BOOLEAN;

    LOCAL
      next_vertex : vertex;
    END_LOCAL;
    IF SIZEOF( edges ) = 1 THEN
      RETURN( TRUE );
    END_IF;
    IF ( edges[2].edge_start :=: edges[1].edge_end ) XOR ( edges[2].edge_start :=: edges[1].edge_start )
        THEN
      next_vertex := edges[2].edge_end;
    ELSE
      IF ( edges[2].edge_end :=: edges[1].edge_end ) XOR ( edges[2].edge_end :=: edges[1].edge_start ) THEN
        next_vertex := edges[2].edge_start;
      ELSE
        RETURN( FALSE );
      END_IF;
    END_IF;
    IF SIZEOF( edges ) = 2 THEN
      RETURN( TRUE );
    END_IF;
    REPEAT i := 3 TO HIINDEX( edges ) BY 1;
      IF edges[i].edge_start :=: next_vertex THEN
        next_vertex := edges[i].edge_end;
      ELSE
        IF edges[i].edge_end :=: next_vertex THEN
          next_vertex := edges[i].edge_start;
        ELSE
          RETURN( FALSE );
        END_IF;
      END_IF;
    END_REPEAT;
    RETURN( TRUE );

  END_FUNCTION; -- check_continuous_edges (line:35844 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func CHECK_CONTINUOUS_EDGES(_ EDGES: (SDAI.LIST_UNIQUE<eEDGE_CURVE>)? ) 
    -> SDAI.BOOLEAN? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( EDGES )
    if case .available(let _cached_value) = _check_continuous_edges__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.BOOLEAN
    }

    var EDGES = EDGES; SDAI.TOUCH(var: &EDGES)

    //LOCAL
    var NEXT_VERTEX: eVERTEX? 

    
    let _TEMP1 = SDAI.SIZEOF(EDGES)
    let _TEMP2 = _TEMP1 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
    if SDAI.IS_TRUE( _TEMP2 ) {
      return _check_continuous_edges__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.TRUE))
    }
    
    let _TEMP3 = EDGES?[2]
    let _TEMP4 = _TEMP3?.EDGE_START
    let _TEMP5 = EDGES?[1]
    let _TEMP6 = _TEMP5?.EDGE_END
    let _TEMP7 = _TEMP4 .===. _TEMP6
    let _TEMP8 = EDGES?[2]
    let _TEMP9 = _TEMP8?.EDGE_START
    let _TEMP10 = EDGES?[1]
    let _TEMP11 = _TEMP10?.EDGE_START
    let _TEMP12 = _TEMP9 .===. _TEMP11
    let _TEMP13 = _TEMP7 .!=. _TEMP12
    if SDAI.IS_TRUE( _TEMP13 ) {
      
      let _TEMP14 = EDGES?[2]
      let _TEMP15 = _TEMP14?.EDGE_END
      NEXT_VERTEX = _TEMP15
    }
    else {
      
      let _TEMP16 = EDGES?[2]
      let _TEMP17 = _TEMP16?.EDGE_END
      let _TEMP18 = EDGES?[1]
      let _TEMP19 = _TEMP18?.EDGE_END
      let _TEMP20 = _TEMP17 .===. _TEMP19
      let _TEMP21 = EDGES?[2]
      let _TEMP22 = _TEMP21?.EDGE_END
      let _TEMP23 = EDGES?[1]
      let _TEMP24 = _TEMP23?.EDGE_START
      let _TEMP25 = _TEMP22 .===. _TEMP24
      let _TEMP26 = _TEMP20 .!=. _TEMP25
      if SDAI.IS_TRUE( _TEMP26 ) {
        
        let _TEMP27 = EDGES?[2]
        let _TEMP28 = _TEMP27?.EDGE_START
        NEXT_VERTEX = _TEMP28
      }
      else {
        return _check_continuous_edges__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.FALSE))
      }
    }
    
    let _TEMP29 = SDAI.SIZEOF(EDGES)
    let _TEMP30 = _TEMP29 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(2))
    if SDAI.IS_TRUE( _TEMP30 ) {
      return _check_continuous_edges__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.TRUE))
    }
    if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/3, TO:/*SDAI.INTEGER*/SDAI.HIINDEX(
      EDGES)) {
      for I in incrementControl {
        
        let _TEMP31 = EDGES?[I]
        let _TEMP32 = _TEMP31?.EDGE_START
        let _TEMP33 = _TEMP32 .===. NEXT_VERTEX
        if SDAI.IS_TRUE( _TEMP33 ) {
          
          let _TEMP34 = EDGES?[I]
          let _TEMP35 = _TEMP34?.EDGE_END
          NEXT_VERTEX = _TEMP35
        }
        else {
          
          let _TEMP36 = EDGES?[I]
          let _TEMP37 = _TEMP36?.EDGE_END
          let _TEMP38 = _TEMP37 .===. NEXT_VERTEX
          if SDAI.IS_TRUE( _TEMP38 ) {
            
            let _TEMP39 = EDGES?[I]
            let _TEMP40 = _TEMP39?.EDGE_START
            NEXT_VERTEX = _TEMP40
          }
          else {
            return _check_continuous_edges__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.FALSE))
          }
        }
      }
    }
    return _check_continuous_edges__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.TRUE))
  }

}

//MARK: - function result cache
private var _check_continuous_edges__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

