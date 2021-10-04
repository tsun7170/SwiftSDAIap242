/* file: path_head_to_tail.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  FUNCTION path_head_to_tail(
               a_path : path
           ) : LOGICAL;

    LOCAL
      n : INTEGER;
      p : LOGICAL := TRUE;
    END_LOCAL;
    n := SIZEOF( a_path.edge_list );
    REPEAT i := 2 TO n BY 1;
      p := p AND ( a_path.edge_list[i - 1].edge_end :=: a_path.edge_list[i].edge_start );
    END_REPEAT;
    RETURN( p );

  END_FUNCTION; -- path_head_to_tail (line:43929 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func PATH_HEAD_TO_TAIL(_ A_PATH: ePATH? ) 
    -> SDAI.LOGICAL {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( A_PATH )
    if case .available(let _cached_value) = _path_head_to_tail__cache.cachedValue(params: _params) {
      return _cached_value as! SDAI.LOGICAL
    }

    var A_PATH = A_PATH; SDAI.TOUCH(var: &A_PATH)

    //LOCAL
    var N: SDAI.INTEGER? 
    var P: SDAI.LOGICAL = SDAI.LOGICAL(SDAI.TRUE); SDAI.TOUCH(var: &P)
    //END_LOCAL

    
    let _TEMP1 = A_PATH?.EDGE_LIST
    let _TEMP2 = SDAI.SIZEOF(_TEMP1)
    N = _TEMP2
    if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/2, TO:/*SDAI.INTEGER*/N) {
      for I in incrementControl {
        
        let _TEMP3 = A_PATH?.EDGE_LIST
        let _TEMP4 = SDAI.FORCE_OPTIONAL(I) - SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
        let _TEMP5 = _TEMP3?[_TEMP4]
        let _TEMP6 = _TEMP5?.EDGE_END
        let _TEMP7 = A_PATH?.EDGE_LIST
        let _TEMP8 = _TEMP7?[I]
        let _TEMP9 = _TEMP8?.EDGE_START
        let _TEMP10 = _TEMP6 .===. _TEMP9
        let _TEMP11 = P && _TEMP10
        P = SDAI.UNWRAP(_TEMP11)
      }
    }
    return _path_head_to_tail__cache.updateCache(params: _params, value: P)
  }

}

//MARK: - function result cache
private var _path_head_to_tail__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)
