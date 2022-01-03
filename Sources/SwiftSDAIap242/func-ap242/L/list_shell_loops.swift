/* file: list_shell_loops.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  FUNCTION list_shell_loops(
               s : shell
           ) : LIST [0 : ?] OF loop;

    LOCAL
      loops : LIST [0 : ?] OF loop := [];
    END_LOCAL;
    IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.VERTEX_SHELL' IN TYPEOF( s ) THEN
      loops := loops + s.vertex_shell_extent;
    END_IF;
    IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.WIRE_SHELL' IN TYPEOF( s ) THEN
      REPEAT i := 1 TO SIZEOF( s.wire_shell_extent ) BY 1;
        loops := loops + s.wire_shell_extent[i];
      END_REPEAT;
    END_IF;
    IF ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.OPEN_SHELL' IN TYPEOF( s ) ) OR ( 
        'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CLOSED_SHELL'  IN TYPEOF( s ) ) THEN
      REPEAT i := 1 TO SIZEOF( s.cfs_faces ) BY 1;
        loops := loops + list_face_loops( s.cfs_faces[i] );
      END_REPEAT;
    END_IF;
    RETURN( loops );

  END_FUNCTION; -- list_shell_loops (line:51655 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func LIST_SHELL_LOOPS(_ S: sSHELL? ) 
    -> (SDAI.LIST<eLOOP>/*[0:nil]*/ )? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( S )
    if case .available(let _cached_value) = _list_shell_loops__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.LIST<eLOOP>
    }

    var S = S; SDAI.TOUCH(var: &S)

    //LOCAL
    var LOOPS: (SDAI.LIST<eLOOP>/*[0:nil]*/ )?  = SDAI.LIST<eLOOP>(bound1: SDAI.UNWRAP(SDAI.INTEGER(0)), 
                                                  bound2: (nil as SDAI.INTEGER?), 
                                                  SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &LOOPS)

    
    let _TEMP1 = SDAI.TYPEOF(S, IS: eVERTEX_SHELL.self)
    if SDAI.IS_TRUE( _TEMP1 ) {
      
      let _TEMP2 = S?.VERTEX_SHELL_EXTENT
      let _TEMP3 = LOOPS + _TEMP2
      LOOPS = SDAI.LIST<eLOOP>(bound1: SDAI.UNWRAP(SDAI.INTEGER(0)), bound2: (nil as SDAI.INTEGER?), 
        /*SDAI.LIST<SDAI.GENERIC_ENTITY>*/_TEMP3)
    }
    
    let _TEMP4 = SDAI.TYPEOF(S, IS: eWIRE_SHELL.self)
    if SDAI.IS_TRUE( _TEMP4 ) {
      if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.SIZEOF(
        S?.WIRE_SHELL_EXTENT)) {
        for I in incrementControl {
          
          let _TEMP5 = S?.WIRE_SHELL_EXTENT
          let _TEMP6 = _TEMP5?[I]
          let _TEMP7 = LOOPS + _TEMP6
          LOOPS = SDAI.LIST<eLOOP>(bound1: SDAI.UNWRAP(SDAI.INTEGER(0)), bound2: (nil as SDAI.INTEGER?), 
            /*SDAI.LIST<eLOOP>*/_TEMP7)
        }
      }
    }
    
    let _TEMP8 = SDAI.TYPEOF(S, IS: eOPEN_SHELL.self)
    let _TEMP9 = SDAI.TYPEOF(S, IS: eCLOSED_SHELL.self)
    let _TEMP10 = _TEMP8 || _TEMP9
    if SDAI.IS_TRUE( _TEMP10 ) {
      if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.SIZEOF(
        SDAI.AGGREGATE<SDAI.GENERIC>(/*runtime*/S?.CFS_FACES))) {
        for I in incrementControl {
          
          let _TEMP11 = /*runtime*/S?.CFS_FACES
          let _TEMP12 = /*runtime*/_TEMP11?[I]
          let _TEMP13 = LIST_FACE_LOOPS(eFACE(fromGeneric: /*/*runtime*/SDAI.GENERIC*/_TEMP12))
          let _TEMP14 = LOOPS + _TEMP13
          LOOPS = SDAI.LIST<eLOOP>(bound1: SDAI.UNWRAP(SDAI.INTEGER(0)), bound2: (nil as SDAI.INTEGER?), 
            /*SDAI.LIST<eLOOP>*/_TEMP14)
        }
      }
    }
    return _list_shell_loops__cache.updateCache(params: _params, value: LOOPS)
  }

}

//MARK: - function result cache
private var _list_shell_loops__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)
