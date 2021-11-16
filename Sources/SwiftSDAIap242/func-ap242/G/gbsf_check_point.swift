/* file: gbsf_check_point.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  FUNCTION gbsf_check_point(
               pnt : point
           ) : BOOLEAN;
    IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CARTESIAN_POINT' IN TYPEOF( pnt ) THEN
      RETURN( TRUE );
    ELSE
      IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.POINT_ON_CURVE' IN TYPEOF( pnt ) THEN
        RETURN( gbsf_check_curve( pnt\point_on_curve.basis_curve ) );
      ELSE
        IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.POINT_ON_SURFACE' IN TYPEOF( pnt ) THEN
          RETURN( gbsf_check_surface( pnt\point_on_surface.basis_surface ) );
        ELSE
          IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DEGENERATE_PCURVE' IN TYPEOF( pnt ) THEN
            RETURN( gbsf_check_curve( pnt\degenerate_pcurve.reference_to_curve\representation.items[1] ) AND 
                gbsf_check_surface( pnt\degenerate_pcurve.basis_surface ) );
          END_IF;
        END_IF;
      END_IF;
    END_IF;
    RETURN( FALSE );

  END_FUNCTION; -- gbsf_check_point (line:41320 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func GBSF_CHECK_POINT(_ PNT: ePOINT? ) 
    -> SDAI.BOOLEAN? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( PNT )
    if case .available(let _cached_value) = _gbsf_check_point__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.BOOLEAN
    }

    var PNT = PNT; SDAI.TOUCH(var: &PNT)

    
    let _TEMP1 = SDAI.TYPEOF(PNT, IS: eCARTESIAN_POINT.self)
    if SDAI.IS_TRUE( _TEMP1 ) {
      return _gbsf_check_point__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.TRUE))
    }
    else {
      
      let _TEMP2 = SDAI.TYPEOF(PNT, IS: ePOINT_ON_CURVE.self)
      if SDAI.IS_TRUE( _TEMP2 ) {
        
        let _TEMP3 = PNT?.GROUP_REF(ePOINT_ON_CURVE.self)
        let _TEMP4 = _TEMP3?.BASIS_CURVE
        let _TEMP5 = GBSF_CHECK_CURVE(eREPRESENTATION_ITEM(/*eCURVE*/_TEMP4))
        return _gbsf_check_point__cache.updateCache(params: _params, value: _TEMP5)
      }
      else {
        
        let _TEMP6 = SDAI.TYPEOF(PNT, IS: ePOINT_ON_SURFACE.self)
        if SDAI.IS_TRUE( _TEMP6 ) {
          
          let _TEMP7 = PNT?.GROUP_REF(ePOINT_ON_SURFACE.self)
          let _TEMP8 = _TEMP7?.BASIS_SURFACE
          let _TEMP9 = GBSF_CHECK_SURFACE(_TEMP8)
          return _gbsf_check_point__cache.updateCache(params: _params, value: _TEMP9)
        }
        else {
          
          let _TEMP10 = SDAI.TYPEOF(PNT, IS: eDEGENERATE_PCURVE.self)
          if SDAI.IS_TRUE( _TEMP10 ) {
            
            let _TEMP11 = PNT?.GROUP_REF(eDEGENERATE_PCURVE.self)
            let _TEMP12 = _TEMP11?.REFERENCE_TO_CURVE
            let _TEMP13 = _TEMP12?.GROUP_REF(eREPRESENTATION.self)
            let _TEMP14 = _TEMP13?.ITEMS
            let _TEMP15 = _TEMP14?[1]
            let _TEMP16 = GBSF_CHECK_CURVE(_TEMP15)
            let _TEMP17 = PNT?.GROUP_REF(eDEGENERATE_PCURVE.self)
            let _TEMP18 = _TEMP17?.BASIS_SURFACE
            let _TEMP19 = GBSF_CHECK_SURFACE(_TEMP18)
            let _TEMP20 = _TEMP16 && _TEMP19
            return _gbsf_check_point__cache.updateCache(params: _params, value: SDAI.BOOLEAN(/*SDAI.LOGICAL*/
              _TEMP20))
          }
        }
      }
    }
    return _gbsf_check_point__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.FALSE))
  }

}

//MARK: - function result cache
private var _gbsf_check_point__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

