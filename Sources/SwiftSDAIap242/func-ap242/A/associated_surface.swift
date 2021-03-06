/* file: associated_surface.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  FUNCTION associated_surface(
               arg : pcurve_or_surface
           ) : surface;

    LOCAL
      surf : surface;
    END_LOCAL;
    IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PCURVE' IN TYPEOF( arg ) THEN
      surf := arg\pcurve.basis_surface;
    ELSE
      surf := arg;
    END_IF;
    RETURN( surf );

  END_FUNCTION; -- associated_surface (line:35609 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func ASSOCIATED_SURFACE(_ ARG: sPCURVE_OR_SURFACE? ) 
    -> eSURFACE? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( ARG )
    if case .available(let _cached_value) = _associated_surface__cache.cachedValue(params: _params) {
      return _cached_value as? eSURFACE
    }

    var ARG = ARG; SDAI.TOUCH(var: &ARG)

    //LOCAL
    var SURF: eSURFACE? 

    
    let _TEMP1 = SDAI.TYPEOF(ARG, IS: ePCURVE.self)
    if SDAI.IS_TRUE( _TEMP1 ) {
      
      let _TEMP2 = ARG?.GROUP_REF(ePCURVE.self)
      let _TEMP3 = _TEMP2?.BASIS_SURFACE
      SURF = _TEMP3
    }
    else {
      SURF = eSURFACE(/*sPCURVE_OR_SURFACE*/ARG)
    }
    return _associated_surface__cache.updateCache(params: _params, value: SURF)
  }

}

//MARK: - function result cache
private var _associated_surface__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

