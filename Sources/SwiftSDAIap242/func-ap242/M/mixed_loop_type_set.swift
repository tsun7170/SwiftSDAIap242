/* file: mixed_loop_type_set.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  FUNCTION mixed_loop_type_set(
               l : SET [0 : ?] OF loop
           ) : LOGICAL;

    LOCAL
      poly_loop_type : LOGICAL;
    END_LOCAL;
    IF SIZEOF( l ) <= 1 THEN
      RETURN( FALSE );
    END_IF;
    poly_loop_type := 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.POLY_LOOP' IN TYPEOF( l[1] );
    REPEAT i := 2 TO SIZEOF( l ) BY 1;
      IF ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.POLY_LOOP' IN TYPEOF( l[i] ) ) <> poly_loop_type
          THEN
        RETURN( TRUE );
      END_IF;
    END_REPEAT;
    RETURN( FALSE );

  END_FUNCTION; -- mixed_loop_type_set (line:43305 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func MIXED_LOOP_TYPE_SET(_ L: (SDAI.SET<eLOOP>/*[0:nil]*/ )? ) 
    -> SDAI.LOGICAL {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( L )
    if case .available(let _cached_value) = _mixed_loop_type_set__cache.cachedValue(params: _params) {
      return _cached_value as! SDAI.LOGICAL
    }

    var L = L; SDAI.TOUCH(var: &L)

    //LOCAL
    var POLY_LOOP_TYPE: SDAI.LOGICAL

    
    let _TEMP1 = SDAI.SIZEOF(L)
    let _TEMP2 = _TEMP1 <= SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
    if SDAI.IS_TRUE( _TEMP2 ) {
      return _mixed_loop_type_set__cache.updateCache(params: _params, value: SDAI.UNWRAP(SDAI.LOGICAL(
        SDAI.FALSE)))
    }
    
    let _TEMP3 = SDAI.TYPEOF(L?[1], IS: ePOLY_LOOP.self)
    POLY_LOOP_TYPE = SDAI.UNWRAP(_TEMP3)
    if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/2, TO:/*SDAI.INTEGER*/SDAI.SIZEOF(
      L)) {
      for I in incrementControl {
        
        let _TEMP4 = SDAI.TYPEOF(L?[I], IS: ePOLY_LOOP.self)
        let _TEMP5 = SDAI.FORCE_OPTIONAL(_TEMP4) .!=. SDAI.FORCE_OPTIONAL(POLY_LOOP_TYPE)
        if SDAI.IS_TRUE( _TEMP5 ) {
          return _mixed_loop_type_set__cache.updateCache(params: _params, value: SDAI.UNWRAP(SDAI.LOGICAL(
            SDAI.TRUE)))
        }
      }
    }
    return _mixed_loop_type_set__cache.updateCache(params: _params, value: SDAI.UNWRAP(SDAI.LOGICAL(
      SDAI.FALSE)))
  }

}

//MARK: - function result cache
private var _mixed_loop_type_set__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

