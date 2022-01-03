/* file: constraints_rectangular_composite_surface.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  FUNCTION constraints_rectangular_composite_surface(
               s : rectangular_composite_surface
           ) : BOOLEAN;
    REPEAT i := 1 TO s.n_u BY 1;
      REPEAT j := 1 TO s.n_v BY 1;
        IF NOT ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.B_SPLINE_SURFACE' IN TYPEOF( s.segments[i]
            [j].parent_surface ) ) OR ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
            + 'RECTANGULAR_TRIMMED_SURFACE'  IN TYPEOF( s.segments[i][j].parent_surface ) ) ) THEN
          RETURN( FALSE );
        END_IF;
      END_REPEAT;
    END_REPEAT;
    REPEAT i := 1 TO s.n_u - 1 BY 1;
      REPEAT j := 1 TO s.n_v BY 1;
        IF s.segments[i][j].u_transition = discontinuous THEN
          RETURN( FALSE );
        END_IF;
      END_REPEAT;
    END_REPEAT;
    REPEAT i := 1 TO s.n_u BY 1;
      REPEAT j := 1 TO s.n_v - 1 BY 1;
        IF s.segments[i][j].v_transition = discontinuous THEN
          RETURN( FALSE );
        END_IF;
      END_REPEAT;
    END_REPEAT;
    RETURN( TRUE );

  END_FUNCTION; -- constraints_rectangular_composite_surface (line:36902 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func CONSTRAINTS_RECTANGULAR_COMPOSITE_SURFACE(
    _ S: eRECTANGULAR_COMPOSITE_SURFACE? ) 
    -> SDAI.BOOLEAN? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( S )
    if case .available(let _cached_value) = _constraints_rectangular_composite_surface__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.BOOLEAN
    }

    var S = S; SDAI.TOUCH(var: &S)

    if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/S?.N_U) {
      for I in incrementControl {
        if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/S?.N_V) {
          for J in incrementControl {
            
            let _TEMP1 = SDAI.TYPEOF(S?.SEGMENTS[I]?[J]?.PARENT_SURFACE, IS: eB_SPLINE_SURFACE.self)
            let _TEMP2 = SDAI.TYPEOF(S?.SEGMENTS[I]?[J]?.PARENT_SURFACE, 
              IS: eRECTANGULAR_TRIMMED_SURFACE.self)
            let _TEMP3 = _TEMP1 || _TEMP2
            let _TEMP4 =  !_TEMP3
            if SDAI.IS_TRUE( _TEMP4 ) {
              return _constraints_rectangular_composite_surface__cache.updateCache(params: _params, value: 
                SDAI.BOOLEAN(SDAI.FALSE))
            }
          }
        }
      }
    }
    if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/S?.N_U - SDAI.FORCE_OPTIONAL(
      SDAI.INTEGER(1))) {
      for I in incrementControl {
        if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/S?.N_V) {
          for J in incrementControl {
            
            let _TEMP5 = S?.SEGMENTS
            let _TEMP6 = _TEMP5?[I]
            let _TEMP7 = _TEMP6?[J]
            let _TEMP8 = _TEMP7?.U_TRANSITION
            let _TEMP9 = _TEMP8 .==. SDAI.FORCE_OPTIONAL(DISCONTINUOUS)
            if SDAI.IS_TRUE( _TEMP9 ) {
              return _constraints_rectangular_composite_surface__cache.updateCache(params: _params, value: 
                SDAI.BOOLEAN(SDAI.FALSE))
            }
          }
        }
      }
    }
    if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/S?.N_U) {
      for I in incrementControl {
        if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/S?.N_V - SDAI.FORCE_OPTIONAL(
          SDAI.INTEGER(1))) {
          for J in incrementControl {
            
            let _TEMP10 = S?.SEGMENTS
            let _TEMP11 = _TEMP10?[I]
            let _TEMP12 = _TEMP11?[J]
            let _TEMP13 = _TEMP12?.V_TRANSITION
            let _TEMP14 = _TEMP13 .==. SDAI.FORCE_OPTIONAL(DISCONTINUOUS)
            if SDAI.IS_TRUE( _TEMP14 ) {
              return _constraints_rectangular_composite_surface__cache.updateCache(params: _params, value: 
                SDAI.BOOLEAN(SDAI.FALSE))
            }
          }
        }
      }
    }
    return _constraints_rectangular_composite_surface__cache.updateCache(params: _params, value: SDAI.BOOLEAN(
      SDAI.TRUE))
  }

}

//MARK: - function result cache
private var _constraints_rectangular_composite_surface__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

