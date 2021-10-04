/* file: face_reversed.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  FUNCTION face_reversed(
               a_face : face
           ) : oriented_face;

    LOCAL
      the_reverse : oriented_face;
    END_LOCAL;
    IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ORIENTED_FACE' IN TYPEOF( a_face ) THEN
      the_reverse := dummy_tri || face( set_of_topology_reversed( a_face.bounds ) ) || oriented_face( a_face\
          oriented_face.face_element, NOT a_face\oriented_face.orientation );
    ELSE
      the_reverse := dummy_tri || face( set_of_topology_reversed( a_face.bounds ) ) || oriented_face( a_face, 
          FALSE );
    END_IF;
    RETURN( the_reverse );

  END_FUNCTION; -- face_reversed (line:40690 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func FACE_REVERSED(_ A_FACE: eFACE? ) 
    -> eORIENTED_FACE? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( A_FACE )
    if case .available(let _cached_value) = _face_reversed__cache.cachedValue(params: _params) {
      return _cached_value as? eORIENTED_FACE
    }

    var A_FACE = A_FACE; SDAI.TOUCH(var: &A_FACE)

    //LOCAL
    var THE_REVERSE: eORIENTED_FACE? 

    
    let _TEMP1 = SDAI.TYPEOF(A_FACE, IS: eORIENTED_FACE.self)
    if SDAI.IS_TRUE( _TEMP1 ) {
      
      let _TEMP2 = A_FACE?.BOUNDS
      let _TEMP3 = SET_OF_TOPOLOGY_REVERSED(tSET_OF_REVERSIBLE_TOPOLOGY_ITEM(
        bound1: SDAI.UNWRAP(SDAI.INTEGER(0)), bound2: (nil as SDAI.INTEGER?), 
        /*SDAI.SET<eFACE_BOUND>[1:nil] */_TEMP2))
      let _TEMP4 = _face(BOUNDS: SDAI.UNWRAP(SDAI.SET<eFACE_BOUND>(bound1: SDAI.UNWRAP(SDAI.INTEGER(1)), 
        bound2: (nil as SDAI.INTEGER?), 
        /*tSET_OF_REVERSIBLE_TOPOLOGY_ITEM*/_TEMP3)))
      let _TEMP5 = DUMMY_TRI .||. _TEMP4
      let _TEMP6 = A_FACE?.GROUP_REF(eORIENTED_FACE.self)
      let _TEMP7 = _TEMP6?.FACE_ELEMENT
      let _TEMP8 = A_FACE?.GROUP_REF(eORIENTED_FACE.self)
      let _TEMP9 = _TEMP8?.ORIENTATION
      let _TEMP10 =  !_TEMP9
      let _TEMP11 = _oriented_face(FACE_ELEMENT: SDAI.UNWRAP(_TEMP7), 
                                   ORIENTATION: SDAI.UNWRAP(SDAI.BOOLEAN(/*SDAI.LOGICAL*/_TEMP10)))
      let _TEMP12 = _TEMP5 .||. _TEMP11
      THE_REVERSE = eORIENTED_FACE(/*SDAI.GENERIC_ENTITY*/_TEMP12)
    }
    else {
      
      let _TEMP13 = A_FACE?.BOUNDS
      let _TEMP14 = SET_OF_TOPOLOGY_REVERSED(tSET_OF_REVERSIBLE_TOPOLOGY_ITEM(
        bound1: SDAI.UNWRAP(SDAI.INTEGER(0)), bound2: (nil as SDAI.INTEGER?), 
        /*SDAI.SET<eFACE_BOUND>[1:nil] */_TEMP13))
      let _TEMP15 = _face(BOUNDS: SDAI.UNWRAP(SDAI.SET<eFACE_BOUND>(bound1: SDAI.UNWRAP(SDAI.INTEGER(1)), 
        bound2: (nil as SDAI.INTEGER?), 
        /*tSET_OF_REVERSIBLE_TOPOLOGY_ITEM*/_TEMP14)))
      let _TEMP16 = DUMMY_TRI .||. _TEMP15
      let _TEMP17 = _oriented_face(FACE_ELEMENT: SDAI.UNWRAP(A_FACE), 
                                   ORIENTATION: SDAI.UNWRAP(SDAI.BOOLEAN(SDAI.FALSE)))
      let _TEMP18 = _TEMP16 .||. _TEMP17
      THE_REVERSE = eORIENTED_FACE(/*SDAI.GENERIC_ENTITY*/_TEMP18)
    }
    return _face_reversed__cache.updateCache(params: _params, value: THE_REVERSE)
  }

}

//MARK: - function result cache
private var _face_reversed__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

