/* file: advanced_face_properties.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  FUNCTION advanced_face_properties(
               testface : face
           ) : BOOLEAN;
    IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ADVANCED_FACE' IN TYPEOF( testface ) THEN
      RETURN( TRUE );
    END_IF;
    IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SUBFACE' IN TYPEOF( testface ) THEN
      RETURN( advanced_face_properties( testface\subface.parent_face ) );
    ELSE
      RETURN( FALSE );
    END_IF;

  END_FUNCTION; -- advanced_face_properties (line:35284 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func ADVANCED_FACE_PROPERTIES(_ TESTFACE: eFACE? ) 
    -> SDAI.BOOLEAN? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( TESTFACE )
    if case .available(let _cached_value) = _advanced_face_properties__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.BOOLEAN
    }

    var TESTFACE = TESTFACE; SDAI.TOUCH(var: &TESTFACE)

    
    let _TEMP1 = SDAI.TYPEOF(TESTFACE, IS: eADVANCED_FACE.self)
    if SDAI.IS_TRUE( _TEMP1 ) {
      return _advanced_face_properties__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.TRUE))
    }
    
    let _TEMP2 = SDAI.TYPEOF(TESTFACE, IS: eSUBFACE.self)
    if SDAI.IS_TRUE( _TEMP2 ) {
      
      let _TEMP3 = TESTFACE?.GROUP_REF(eSUBFACE.self)
      let _TEMP4 = _TEMP3?.PARENT_FACE
      let _TEMP5 = ADVANCED_FACE_PROPERTIES(_TEMP4)
      return _advanced_face_properties__cache.updateCache(params: _params, value: _TEMP5)
    }
    else {
      return _advanced_face_properties__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.FALSE))
    }
  }

}

//MARK: - function result cache
private var _advanced_face_properties__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)
