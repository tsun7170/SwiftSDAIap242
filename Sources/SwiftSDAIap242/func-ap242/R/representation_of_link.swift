/* file: representation_of_link.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  FUNCTION representation_of_link(
               link : kinematic_link
           ) : kinematic_link_representation;
    RETURN( ? );

  END_FUNCTION; -- representation_of_link (line:44158 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func REPRESENTATION_OF_LINK(_ LINK: eKINEMATIC_LINK? ) 
    -> eKINEMATIC_LINK_REPRESENTATION? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( LINK )
    if case .available(let _cached_value) = _representation_of_link__cache.cachedValue(params: _params) {
      return _cached_value as? eKINEMATIC_LINK_REPRESENTATION
    }

    var LINK = LINK; SDAI.TOUCH(var: &LINK)

    return _representation_of_link__cache.updateCache(params: _params, value: (nil as 
      eKINEMATIC_LINK_REPRESENTATION?))
  }

}

//MARK: - function result cache
private var _representation_of_link__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

