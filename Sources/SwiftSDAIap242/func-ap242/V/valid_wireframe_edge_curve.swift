/* file: valid_wireframe_edge_curve.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  FUNCTION valid_wireframe_edge_curve(
               crv : curve
           ) : BOOLEAN;
    IF SIZEOF( [ 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.LINE', 
        'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CONIC' , 
        'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.B_SPLINE_CURVE' , 
        'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.POLYLINE' ] * TYPEOF( crv ) ) = 1 THEN
      RETURN( TRUE );
    ELSE
      IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CURVE_REPLICA' IN TYPEOF( crv ) THEN
        RETURN( valid_wireframe_edge_curve( crv\curve_replica.parent_curve ) );
      ELSE
        IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.OFFSET_CURVE_3D' IN TYPEOF( crv ) THEN
          RETURN( valid_wireframe_edge_curve( crv\offset_curve_3d.basis_curve ) );
        END_IF;
      END_IF;
    END_IF;
    RETURN( FALSE );

  END_FUNCTION; -- valid_wireframe_edge_curve (line:48010 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func VALID_WIREFRAME_EDGE_CURVE(_ CRV: eCURVE? ) 
    -> SDAI.BOOLEAN? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( CRV )
    if case .available(let _cached_value) = _valid_wireframe_edge_curve__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.BOOLEAN
    }

    var CRV = CRV; SDAI.TOUCH(var: &CRV)

    
    let _TEMP1 = ([SDAI.AIE(SDAI.STRING("AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.LINE")), 
      SDAI.AIE(SDAI.STRING("AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CONIC")), 
      SDAI.AIE(SDAI.STRING("AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.B_SPLINE_CURVE")), 
      SDAI.AIE(SDAI.STRING("AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.POLYLINE"))] 
      as [SDAI.AggregationInitializerElement<SDAI.STRING>])
    let _TEMP2 = SDAI.TYPEOF(CRV)
    let _TEMP3 = SDAI.FORCE_OPTIONAL(_TEMP1) * _TEMP2
    let _TEMP4 = SDAI.SIZEOF(_TEMP3)
    let _TEMP5 = _TEMP4 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
    if SDAI.IS_TRUE( _TEMP5 ) {
      return _valid_wireframe_edge_curve__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.TRUE))
    }
    else {
      
      let _TEMP6 = SDAI.TYPEOF(CRV, IS: eCURVE_REPLICA.self)
      if SDAI.IS_TRUE( _TEMP6 ) {
        
        let _TEMP7 = CRV?.GROUP_REF(eCURVE_REPLICA.self)
        let _TEMP8 = _TEMP7?.PARENT_CURVE
        let _TEMP9 = VALID_WIREFRAME_EDGE_CURVE(_TEMP8)
        return _valid_wireframe_edge_curve__cache.updateCache(params: _params, value: _TEMP9)
      }
      else {
        
        let _TEMP10 = SDAI.TYPEOF(CRV, IS: eOFFSET_CURVE_3D.self)
        if SDAI.IS_TRUE( _TEMP10 ) {
          
          let _TEMP11 = CRV?.GROUP_REF(eOFFSET_CURVE_3D.self)
          let _TEMP12 = _TEMP11?.BASIS_CURVE
          let _TEMP13 = VALID_WIREFRAME_EDGE_CURVE(_TEMP12)
          return _valid_wireframe_edge_curve__cache.updateCache(params: _params, value: _TEMP13)
        }
      }
    }
    return _valid_wireframe_edge_curve__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.FALSE))
  }

}

//MARK: - function result cache
private var _valid_wireframe_edge_curve__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

