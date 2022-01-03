/* file: geometric_dimensionalities_in_contexts.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  FUNCTION geometric_dimensionalities_in_contexts(
               grcs : SET [1 : ?] OF geometric_representation_context
           ) : INTEGER;

    LOCAL
      grcs_1d : INTEGER := 0;
      grcs_2d : INTEGER := 0;
      grcs_3d : INTEGER := 0;
    END_LOCAL;
    IF SIZEOF( grcs ) = 1 THEN
      RETURN( grcs[1]\geometric_representation_context.coordinate_space_dimension );
    ELSE
      REPEAT i := 1 TO HIINDEX( grcs ) BY 1;
        IF grcs[i]\geometric_representation_context.coordinate_space_dimension = 1 THEN
          grcs_1d := grcs_1d + 1;
        ELSE
          IF grcs[i]\geometric_representation_context.coordinate_space_dimension = 2 THEN
            grcs_2d := grcs_2d + 1;
          ELSE
            IF grcs[i]\geometric_representation_context.coordinate_space_dimension = 3 THEN
              grcs_3d := grcs_3d + 1;
            END_IF;
          END_IF;
        END_IF;
      END_REPEAT;
    END_IF;
    IF ( grcs_1d + grcs_2d ) = 0 THEN
      RETURN( 3 );
    ELSE
      IF ( grcs_1d + grcs_3d ) = 0 THEN
        RETURN( 2 );
      ELSE
        IF ( grcs_2d + grcs_3d ) = 0 THEN
          RETURN( 1 );
        ELSE
          RETURN( 0 );
        END_IF;
      END_IF;
    END_IF;

  END_FUNCTION; -- geometric_dimensionalities_in_contexts (line:41395 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func GEOMETRIC_DIMENSIONALITIES_IN_CONTEXTS(
    _ GRCS: (SDAI.SET<eGEOMETRIC_REPRESENTATION_CONTEXT>/*[1:nil]*/ )? ) 
    -> SDAI.INTEGER? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( GRCS )
    if case .available(let _cached_value) = _geometric_dimensionalities_in_contexts__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.INTEGER
    }

    var GRCS = GRCS; SDAI.TOUCH(var: &GRCS)

    //LOCAL
    var GRCS_1D: SDAI.INTEGER?  = SDAI.INTEGER(0); SDAI.TOUCH(var: &GRCS_1D)
    var GRCS_2D: SDAI.INTEGER?  = SDAI.INTEGER(0); SDAI.TOUCH(var: &GRCS_2D)
    var GRCS_3D: SDAI.INTEGER?  = SDAI.INTEGER(0); SDAI.TOUCH(var: &GRCS_3D)
    //END_LOCAL

    
    let _TEMP1 = SDAI.SIZEOF(GRCS)
    let _TEMP2 = _TEMP1 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
    if SDAI.IS_TRUE( _TEMP2 ) {
      
      let _TEMP3 = GRCS?[1]
      let _TEMP4 = _TEMP3?.GROUP_REF(eGEOMETRIC_REPRESENTATION_CONTEXT.self)
      let _TEMP5 = _TEMP4?.COORDINATE_SPACE_DIMENSION
      return _geometric_dimensionalities_in_contexts__cache.updateCache(params: _params, value: SDAI.INTEGER(/*
        tDIMENSION_COUNT*/_TEMP5))
    }
    else {
      if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.HIINDEX(
        GRCS)) {
        for I in incrementControl {
          
          let _TEMP6 = GRCS?[I]
          let _TEMP7 = _TEMP6?.GROUP_REF(eGEOMETRIC_REPRESENTATION_CONTEXT.self)
          let _TEMP8 = _TEMP7?.COORDINATE_SPACE_DIMENSION
          let _TEMP9 = _TEMP8 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
          if SDAI.IS_TRUE( _TEMP9 ) {
            
            let _TEMP10 = GRCS_1D + SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
            GRCS_1D = _TEMP10
          }
          else {
            
            let _TEMP11 = GRCS?[I]
            let _TEMP12 = _TEMP11?.GROUP_REF(eGEOMETRIC_REPRESENTATION_CONTEXT.self)
            let _TEMP13 = _TEMP12?.COORDINATE_SPACE_DIMENSION
            let _TEMP14 = _TEMP13 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(2))
            if SDAI.IS_TRUE( _TEMP14 ) {
              
              let _TEMP15 = GRCS_2D + SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
              GRCS_2D = _TEMP15
            }
            else {
              
              let _TEMP16 = GRCS?[I]
              let _TEMP17 = _TEMP16?.GROUP_REF(eGEOMETRIC_REPRESENTATION_CONTEXT.self)
              let _TEMP18 = _TEMP17?.COORDINATE_SPACE_DIMENSION
              let _TEMP19 = _TEMP18 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(3))
              if SDAI.IS_TRUE( _TEMP19 ) {
                
                let _TEMP20 = GRCS_3D + SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
                GRCS_3D = _TEMP20
              }
            }
          }
        }
      }
    }
    
    let _TEMP21 = GRCS_1D + GRCS_2D
    let _TEMP22 = _TEMP21 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
    if SDAI.IS_TRUE( _TEMP22 ) {
      return _geometric_dimensionalities_in_contexts__cache.updateCache(params: _params, value: SDAI.INTEGER(
        3))
    }
    else {
      
      let _TEMP23 = GRCS_1D + GRCS_3D
      let _TEMP24 = _TEMP23 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      if SDAI.IS_TRUE( _TEMP24 ) {
        return _geometric_dimensionalities_in_contexts__cache.updateCache(params: _params, value: SDAI.INTEGER(
          2))
      }
      else {
        
        let _TEMP25 = GRCS_2D + GRCS_3D
        let _TEMP26 = _TEMP25 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
        if SDAI.IS_TRUE( _TEMP26 ) {
          return _geometric_dimensionalities_in_contexts__cache.updateCache(params: _params, value: SDAI.INTEGER(
            1))
        }
        else {
          return _geometric_dimensionalities_in_contexts__cache.updateCache(params: _params, value: SDAI.INTEGER(
            0))
        }
      }
    }
  }

}

//MARK: - function result cache
private var _geometric_dimensionalities_in_contexts__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

