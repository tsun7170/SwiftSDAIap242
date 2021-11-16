/* file: surface_condition_correlation.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  FUNCTION surface_condition_correlation(
               pd : property_definition;
               rep : representation
           ) : LOGICAL;
    CASE pd.name OF
      'visual appearance', 'tactile appearance', 'contact ratio', 'hardness', 'treatment result', 
          'surface texture'       :         RETURN( pd.name = rep.name );
      OTHERWISE                   :         RETURN( UNKNOWN );
    END_CASE;

  END_FUNCTION; -- surface_condition_correlation (line:47030 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func SURFACE_CONDITION_CORRELATION(
    PD: ePROPERTY_DEFINITION? , REP: eREPRESENTATION? ) 
    -> SDAI.LOGICAL {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( PD, REP )
    if case .available(let _cached_value) = _surface_condition_correlation__cache.cachedValue(params: _params) {
      return _cached_value as! SDAI.LOGICAL
    }

    var PD = PD; SDAI.TOUCH(var: &PD)
    var REP = REP; SDAI.TOUCH(var: &REP)

    
    let _TEMP1 = PD?.NAME
    if let selector = _TEMP1 {
      switch selector {
      case "visual appearance", "tactile appearance", "contact ratio", "hardness", "treatment result", 
        "surface texture":
        
        let _TEMP2 = PD?.NAME
        let _TEMP3 = REP?.NAME
        let _TEMP4 = _TEMP2 .==. _TEMP3
        return _surface_condition_correlation__cache.updateCache(params: _params, value: SDAI.UNWRAP(_TEMP4))

      default:
        return _surface_condition_correlation__cache.updateCache(params: _params, value: SDAI.UNWRAP(SDAI.LOGICAL(
          SDAI.UNKNOWN)))
      } //end switch
    }
    else {
      return _surface_condition_correlation__cache.updateCache(params: _params, value: SDAI.UNWRAP(SDAI.LOGICAL(
        SDAI.UNKNOWN)))
    }
  }

}

//MARK: - function result cache
private var _surface_condition_correlation__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

