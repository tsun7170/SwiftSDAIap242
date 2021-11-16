/* file: get_basis_surface.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  FUNCTION get_basis_surface(
               c : curve_on_surface
           ) : SET [0 : 2] OF surface;

    LOCAL
      surfs : SET [0 : 2] OF surface;
      n     : INTEGER;
    END_LOCAL;
    surfs := [];
    IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PCURVE' IN TYPEOF( c ) THEN
      surfs := [c\pcurve.basis_surface];
    ELSE
      IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SURFACE_CURVE' IN TYPEOF( c ) THEN
        n := SIZEOF( c\surface_curve.associated_geometry );
        REPEAT i := 1 TO n BY 1;
          surfs := surfs + associated_surface( c\surface_curve.associated_geometry[i] );
        END_REPEAT;
      END_IF;
    END_IF;
    IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.COMPOSITE_CURVE_ON_SURFACE' IN TYPEOF( c ) THEN
      n := SIZEOF( c\composite_curve.segments );
      surfs := get_basis_surface( c\composite_curve.segments[1].parent_curve );
      IF n > 1 THEN
        REPEAT i := 2 TO n BY 1;
          surfs := surfs * get_basis_surface( c\composite_curve.segments[i].parent_curve );
        END_REPEAT;
      END_IF;
    END_IF;
    RETURN( surfs );

  END_FUNCTION; -- get_basis_surface (line:41489 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func GET_BASIS_SURFACE(_ C: sCURVE_ON_SURFACE? ) 
    -> (SDAI.SET<eSURFACE>/*[0:2]*/ )? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( C )
    if case .available(let _cached_value) = _get_basis_surface__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.SET<eSURFACE>
    }

    var C = C; SDAI.TOUCH(var: &C)

    //LOCAL
    var SURFS: (SDAI.SET<eSURFACE>/*[0:2]*/ )? 
    var N: SDAI.INTEGER? 
    //END_LOCAL

    
    let _TEMP1 = SDAI.SET<eSURFACE>(bound1: SDAI.UNWRAP(SDAI.INTEGER(0)), bound2: SDAI.INTEGER(2), 
      SDAI.EMPLY_AGGREGATE)
    SURFS = _TEMP1
    
    let _TEMP2 = SDAI.TYPEOF(C, IS: ePCURVE.self)
    if SDAI.IS_TRUE( _TEMP2 ) {
      
      let _TEMP3 = C?.GROUP_REF(ePCURVE.self)
      let _TEMP4 = _TEMP3?.BASIS_SURFACE
      let _TEMP5 = SDAI.SET<eSURFACE>(bound1: SDAI.UNWRAP(SDAI.INTEGER(0)), bound2: SDAI.INTEGER(2), 
        ([SDAI.AIE(_TEMP4)] as [SDAI.AggregationInitializerElement<eSURFACE>]))
      SURFS = _TEMP5
    }
    else {
      
      let _TEMP6 = SDAI.TYPEOF(C, IS: eSURFACE_CURVE.self)
      if SDAI.IS_TRUE( _TEMP6 ) {
        
        let _TEMP7 = C?.GROUP_REF(eSURFACE_CURVE.self)
        let _TEMP8 = _TEMP7?.ASSOCIATED_GEOMETRY
        let _TEMP9 = SDAI.SIZEOF(_TEMP8)
        N = _TEMP9
        if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/N) {
          for I in incrementControl {
            
            let _TEMP10 = C?.GROUP_REF(eSURFACE_CURVE.self)
            let _TEMP11 = _TEMP10?.ASSOCIATED_GEOMETRY
            let _TEMP12 = _TEMP11?[I]
            let _TEMP13 = ASSOCIATED_SURFACE(_TEMP12)
            let _TEMP14 = SURFS + _TEMP13
            SURFS = SDAI.SET<eSURFACE>(bound1: SDAI.UNWRAP(SDAI.INTEGER(0)), bound2: SDAI.INTEGER(2), 
              /*SDAI.SET<eSURFACE>*/_TEMP14)
          }
        }
      }
    }
    
    let _TEMP15 = SDAI.TYPEOF(C, IS: eCOMPOSITE_CURVE_ON_SURFACE.self)
    if SDAI.IS_TRUE( _TEMP15 ) {
      
      let _TEMP16 = C?.GROUP_REF(eCOMPOSITE_CURVE.self)
      let _TEMP17 = _TEMP16?.SEGMENTS
      let _TEMP18 = SDAI.SIZEOF(_TEMP17)
      N = _TEMP18
      
      let _TEMP19 = C?.GROUP_REF(eCOMPOSITE_CURVE.self)
      let _TEMP20 = _TEMP19?.SEGMENTS
      let _TEMP21 = _TEMP20?[1]
      let _TEMP22 = _TEMP21?.PARENT_CURVE
      let _TEMP23 = GET_BASIS_SURFACE(sCURVE_ON_SURFACE(/*eCURVE*/_TEMP22))
      SURFS = _TEMP23
      
      let _TEMP24 = N > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      if SDAI.IS_TRUE( _TEMP24 ) {
        if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/2, TO:/*SDAI.INTEGER*/N) {
          for I in incrementControl {
            
            let _TEMP25 = C?.GROUP_REF(eCOMPOSITE_CURVE.self)
            let _TEMP26 = _TEMP25?.SEGMENTS
            let _TEMP27 = _TEMP26?[I]
            let _TEMP28 = _TEMP27?.PARENT_CURVE
            let _TEMP29 = GET_BASIS_SURFACE(sCURVE_ON_SURFACE(/*eCURVE*/_TEMP28))
            let _TEMP30 = SURFS * _TEMP29
            SURFS = SDAI.SET<eSURFACE>(bound1: SDAI.UNWRAP(SDAI.INTEGER(0)), bound2: SDAI.INTEGER(2), 
              /*SDAI.SET<eSURFACE>*/_TEMP30)
          }
        }
      }
    }
    return _get_basis_surface__cache.updateCache(params: _params, value: SURFS)
  }

}

//MARK: - function result cache
private var _get_basis_surface__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

