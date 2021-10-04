/* file: open_shell_reversed.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  FUNCTION open_shell_reversed(
               a_shell : open_shell
           ) : oriented_open_shell;

    LOCAL
      the_reverse : oriented_open_shell;
    END_LOCAL;
    IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ORIENTED_OPEN_SHELL' IN TYPEOF( a_shell ) THEN
      the_reverse := dummy_tri || connected_face_set( a_shell\connected_face_set.cfs_faces ) || open_shell(  ) 
          || oriented_open_shell( a_shell\oriented_open_shell.open_shell_element, NOT a_shell\
          oriented_open_shell.orientation );
    ELSE
      the_reverse := dummy_tri || connected_face_set( a_shell\connected_face_set.cfs_faces ) || open_shell(  ) 
          || oriented_open_shell( a_shell, FALSE );
    END_IF;
    RETURN( the_reverse );

  END_FUNCTION; -- open_shell_reversed (line:43831 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func OPEN_SHELL_REVERSED(_ A_SHELL: eOPEN_SHELL? ) 
    -> eORIENTED_OPEN_SHELL? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( A_SHELL )
    if case .available(let _cached_value) = _open_shell_reversed__cache.cachedValue(params: _params) {
      return _cached_value as? eORIENTED_OPEN_SHELL
    }

    var A_SHELL = A_SHELL; SDAI.TOUCH(var: &A_SHELL)

    //LOCAL
    var THE_REVERSE: eORIENTED_OPEN_SHELL? 

    
    let _TEMP1 = SDAI.TYPEOF(A_SHELL, IS: eORIENTED_OPEN_SHELL.self)
    if SDAI.IS_TRUE( _TEMP1 ) {
      
      let _TEMP2 = A_SHELL?.GROUP_REF(eCONNECTED_FACE_SET.self)
      let _TEMP3 = _TEMP2?.CFS_FACES
      let _TEMP4 = _connected_face_set(CFS_FACES: SDAI.UNWRAP(_TEMP3))
      let _TEMP5 = DUMMY_TRI .||. _TEMP4
      let _TEMP6 = _open_shell()
      let _TEMP7 = _TEMP5 .||. _TEMP6
      let _TEMP8 = A_SHELL?.GROUP_REF(eORIENTED_OPEN_SHELL.self)
      let _TEMP9 = _TEMP8?.OPEN_SHELL_ELEMENT
      let _TEMP10 = A_SHELL?.GROUP_REF(eORIENTED_OPEN_SHELL.self)
      let _TEMP11 = _TEMP10?.ORIENTATION
      let _TEMP12 =  !_TEMP11
      let _TEMP13 = _oriented_open_shell(
        OPEN_SHELL_ELEMENT: SDAI.UNWRAP(_TEMP9), 
        ORIENTATION: SDAI.UNWRAP(SDAI.BOOLEAN(/*SDAI.LOGICAL*/_TEMP12)))
      let _TEMP14 = _TEMP7 .||. _TEMP13
      THE_REVERSE = eORIENTED_OPEN_SHELL(/*SDAI.GENERIC_ENTITY*/_TEMP14)
    }
    else {
      
      let _TEMP15 = A_SHELL?.GROUP_REF(eCONNECTED_FACE_SET.self)
      let _TEMP16 = _TEMP15?.CFS_FACES
      let _TEMP17 = _connected_face_set(CFS_FACES: SDAI.UNWRAP(_TEMP16))
      let _TEMP18 = DUMMY_TRI .||. _TEMP17
      let _TEMP19 = _open_shell()
      let _TEMP20 = _TEMP18 .||. _TEMP19
      let _TEMP21 = _oriented_open_shell(
        OPEN_SHELL_ELEMENT: SDAI.UNWRAP(A_SHELL), 
        ORIENTATION: SDAI.UNWRAP(SDAI.BOOLEAN(SDAI.FALSE)))
      let _TEMP22 = _TEMP20 .||. _TEMP21
      THE_REVERSE = eORIENTED_OPEN_SHELL(/*SDAI.GENERIC_ENTITY*/_TEMP22)
    }
    return _open_shell_reversed__cache.updateCache(params: _params, value: THE_REVERSE)
  }

}

//MARK: - function result cache
private var _open_shell_reversed__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)
