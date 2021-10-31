/* file: unique_in_shape_aspect.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  FUNCTION unique_in_shape_aspect(
               item : representative_shape_representation
           ) : BOOLEAN;

    LOCAL
      local_s_a : SET OF shape_aspect := [];
      local_s_r : SET OF shape_representation := [];
    END_LOCAL;
    local_s_a := using_shape_aspect_of_shape_representation( item );
    IF SIZEOF( local_s_a ) <> 1 THEN
      RETURN( FALSE );
    ELSE
      REPEAT i := 1 TO HIINDEX( local_s_a ) BY 1;
        local_s_r := find_shape_representation_of_shape_aspect( local_s_a[i] );
        REPEAT j := 1 TO HIINDEX( local_s_r ) BY 1;
          IF ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.REPRESENTATIVE_SHAPE_REPRESENTATION' IN 
              TYPEOF( local_s_r[j] ) ) AND ( local_s_r[j] :<>: item ) THEN
            RETURN( FALSE );
          END_IF;
        END_REPEAT;
      END_REPEAT;
    END_IF;
    RETURN( TRUE );

  END_FUNCTION; -- unique_in_shape_aspect (line:47180 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func UNIQUE_IN_SHAPE_ASPECT(_ ITEM: eREPRESENTATIVE_SHAPE_REPRESENTATION? ) 
    -> SDAI.BOOLEAN? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( ITEM )
    if case .available(let _cached_value) = _unique_in_shape_aspect__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.BOOLEAN
    }

    var ITEM = ITEM; SDAI.TOUCH(var: &ITEM)

    //LOCAL
    var LOCAL_S_A: SDAI.SET<eSHAPE_ASPECT>?  = SDAI.SET<eSHAPE_ASPECT>(SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &LOCAL_S_A)
    var LOCAL_S_R: SDAI.SET<eSHAPE_REPRESENTATION>?  = SDAI.SET<eSHAPE_REPRESENTATION>(SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &LOCAL_S_R)
    //END_LOCAL

    
    let _TEMP1 = USING_SHAPE_ASPECT_OF_SHAPE_REPRESENTATION(eSHAPE_REPRESENTATION(/*
      eREPRESENTATIVE_SHAPE_REPRESENTATION*/ITEM))
    LOCAL_S_A = _TEMP1
    
    let _TEMP2 = SDAI.SIZEOF(LOCAL_S_A)
    let _TEMP3 = _TEMP2 .!=. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
    if SDAI.IS_TRUE( _TEMP3 ) {
      return _unique_in_shape_aspect__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.FALSE))
    }
    else {
      if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.HIINDEX(
        LOCAL_S_A)) {
        for I in incrementControl {
          
          let _TEMP4 = LOCAL_S_A?[I]
          let _TEMP5 = FIND_SHAPE_REPRESENTATION_OF_SHAPE_ASPECT(_TEMP4)
          LOCAL_S_R = _TEMP5
          if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/
            SDAI.HIINDEX(LOCAL_S_R)) {
            for J in incrementControl {
              
              let _TEMP6 = SDAI.TYPEOF(LOCAL_S_R?[J], IS: eREPRESENTATIVE_SHAPE_REPRESENTATION.self)
              let _TEMP7 = LOCAL_S_R?[J]
              let _TEMP8 = _TEMP7 .!==. ITEM
              let _TEMP9 = _TEMP6 && _TEMP8
              if SDAI.IS_TRUE( _TEMP9 ) {
                return _unique_in_shape_aspect__cache.updateCache(params: _params, value: SDAI.BOOLEAN(
                  SDAI.FALSE))
              }
            }
          }
        }
      }
    }
    return _unique_in_shape_aspect__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.TRUE))
  }

}

//MARK: - function result cache
private var _unique_in_shape_aspect__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

