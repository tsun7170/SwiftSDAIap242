/* file: control_characters_free.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  FUNCTION control_characters_free(
               s : STRING
           ) : BOOLEAN;

    LOCAL
      ch : STRING;
    END_LOCAL;
    REPEAT i := 1 TO LENGTH( s ) BY 1;
      ch := s[i];
      IF ( ch = '\x9' ) OR ( ch = '\xA' ) OR ( ch = '\xD' ) THEN
        RETURN( FALSE );
      END_IF;
    END_REPEAT;
    RETURN( TRUE );

  END_FUNCTION; -- control_characters_free (line:36947 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func CONTROL_CHARACTERS_FREE(_ S: SDAI.STRING? ) 
    -> SDAI.BOOLEAN? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( S )
    if case .available(let _cached_value) = _control_characters_free__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.BOOLEAN
    }

    var S = S; SDAI.TOUCH(var: &S)

    //LOCAL
    var CH: SDAI.STRING? 

    if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.LENGTH(
      S)) {
      for I in incrementControl {
        
        let _TEMP1 = S?[I]
        CH = _TEMP1
        
        let _TEMP2 = CH .==. SDAI.FORCE_OPTIONAL(SDAI.STRING("\\x9"))
        let _TEMP3 = CH .==. SDAI.FORCE_OPTIONAL(SDAI.STRING("\\xA"))
        let _TEMP4 = _TEMP2 || _TEMP3
        let _TEMP5 = CH .==. SDAI.FORCE_OPTIONAL(SDAI.STRING("\\xD"))
        let _TEMP6 = _TEMP4 || _TEMP5
        if SDAI.IS_TRUE( _TEMP6 ) {
          return _control_characters_free__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.FALSE))
        }
      }
    }
    return _control_characters_free__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.TRUE))
  }

}

//MARK: - function result cache
private var _control_characters_free__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

