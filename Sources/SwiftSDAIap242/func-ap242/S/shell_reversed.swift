/* file: shell_reversed.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  FUNCTION shell_reversed(
               a_shell : shell
           ) : shell;
    IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.OPEN_SHELL' IN TYPEOF( a_shell ) THEN
      RETURN( open_shell_reversed( a_shell ) );
    ELSE
      IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CLOSED_SHELL' IN TYPEOF( a_shell ) THEN
        RETURN( closed_shell_reversed( a_shell ) );
      ELSE
        RETURN( ? );
      END_IF;
    END_IF;

  END_FUNCTION; -- shell_reversed (line:44319 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func SHELL_REVERSED(_ A_SHELL: sSHELL? ) 
    -> sSHELL? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( A_SHELL )
    if case .available(let _cached_value) = _shell_reversed__cache.cachedValue(params: _params) {
      return _cached_value as? sSHELL
    }

    var A_SHELL = A_SHELL; SDAI.TOUCH(var: &A_SHELL)

    
    let _TEMP1 = SDAI.TYPEOF(A_SHELL, IS: eOPEN_SHELL.self)
    if SDAI.IS_TRUE( _TEMP1 ) {
      
      let _TEMP2 = OPEN_SHELL_REVERSED(eOPEN_SHELL(/*sSHELL*/A_SHELL))
      return _shell_reversed__cache.updateCache(params: _params, value: sSHELL(/*eORIENTED_OPEN_SHELL*/_TEMP2))
    }
    else {
      
      let _TEMP3 = SDAI.TYPEOF(A_SHELL, IS: eCLOSED_SHELL.self)
      if SDAI.IS_TRUE( _TEMP3 ) {
        
        let _TEMP4 = CLOSED_SHELL_REVERSED(eCLOSED_SHELL(/*sSHELL*/A_SHELL))
        return _shell_reversed__cache.updateCache(params: _params, value: sSHELL(/*eORIENTED_CLOSED_SHELL*/
          _TEMP4))
      }
      else {
        return _shell_reversed__cache.updateCache(params: _params, value: (nil as sSHELL?))
      }
    }
  }

}

//MARK: - function result cache
private var _shell_reversed__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

