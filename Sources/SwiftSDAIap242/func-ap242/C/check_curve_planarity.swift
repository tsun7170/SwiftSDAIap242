/* file: check_curve_planarity.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  FUNCTION check_curve_planarity(
               checked_curve : curve
           ) : BOOLEAN;

    LOCAL
      crv    : curve := checked_curve;
      result : BOOLEAN := FALSE;
    END_LOCAL;
    IF SIZEOF( [ 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CONIC', 
        'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.LINE' ] * TYPEOF( crv ) ) > 0 THEN
      result := TRUE;
    ELSE
      IF ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.TRIMMED_CURVE' IN TYPEOF( crv ) ) AND 
          check_curve_planarity( crv\trimmed_curve.basis_curve ) THEN
        result := TRUE;
      ELSE
        IF ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PCURVE' IN TYPEOF( crv ) ) AND ( 
            'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PLANE'  IN TYPEOF( crv\pcurve.basis_surface ) )
            THEN
          result := TRUE;
        ELSE
          IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SURFACE_CURVE' IN TYPEOF( crv ) THEN

            BEGIN
              REPEAT j := 1 TO HIINDEX( crv\surface_curve.basis_surface ) BY 1;
                IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PLANE' IN TYPEOF( crv\surface_curve.
                    basis_surface[j] ) THEN
                  result := TRUE;
                END_IF;
              END_REPEAT;
            END;
          END_IF;
        END_IF;
      END_IF;
    END_IF;
    RETURN( result );

  END_FUNCTION; -- check_curve_planarity (line:35884 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func CHECK_CURVE_PLANARITY(_ CHECKED_CURVE: eCURVE? ) 
    -> SDAI.BOOLEAN? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( CHECKED_CURVE )
    if case .available(let _cached_value) = _check_curve_planarity__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.BOOLEAN
    }

    var CHECKED_CURVE = CHECKED_CURVE; SDAI.TOUCH(var: &CHECKED_CURVE)

    //LOCAL
    var CRV: eCURVE?  = CHECKED_CURVE; SDAI.TOUCH(var: &CRV)
    var RESULT: SDAI.BOOLEAN?  = SDAI.BOOLEAN(SDAI.FALSE); SDAI.TOUCH(var: &RESULT)
    //END_LOCAL

    
    let _TEMP1 = ([SDAI.AIE(SDAI.STRING("AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CONIC")), 
      SDAI.AIE(SDAI.STRING("AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.LINE"))] 
      as [SDAI.AggregationInitializerElement<SDAI.STRING>])
    let _TEMP2 = SDAI.TYPEOF(CRV)
    let _TEMP3 = SDAI.FORCE_OPTIONAL(_TEMP1) * SDAI.FORCE_OPTIONAL(_TEMP2)
    let _TEMP4 = SDAI.SIZEOF(_TEMP3)
    let _TEMP5 = _TEMP4 > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
    if SDAI.IS_TRUE( _TEMP5 ) {
      RESULT = SDAI.BOOLEAN(SDAI.TRUE)
    }
    else {
      
      let _TEMP6 = SDAI.TYPEOF(CRV, IS: eTRIMMED_CURVE.self)
      let _TEMP7 = CRV?.GROUP_REF(eTRIMMED_CURVE.self)
      let _TEMP8 = _TEMP7?.BASIS_CURVE
      let _TEMP9 = CHECK_CURVE_PLANARITY(_TEMP8)
      let _TEMP10 = _TEMP6 && _TEMP9
      if SDAI.IS_TRUE( _TEMP10 ) {
        RESULT = SDAI.BOOLEAN(SDAI.TRUE)
      }
      else {
        
        let _TEMP11 = SDAI.TYPEOF(CRV, IS: ePCURVE.self)
        let _TEMP12 = SDAI.TYPEOF(CRV?.GROUP_REF(ePCURVE.self)?.BASIS_SURFACE, IS: ePLANE.self)
        let _TEMP13 = _TEMP11 && _TEMP12
        if SDAI.IS_TRUE( _TEMP13 ) {
          RESULT = SDAI.BOOLEAN(SDAI.TRUE)
        }
        else {
          
          let _TEMP14 = SDAI.TYPEOF(CRV, IS: eSURFACE_CURVE.self)
          if SDAI.IS_TRUE( _TEMP14 ) {
            //BEGIN
            if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/
              SDAI.HIINDEX(CRV?.GROUP_REF(eSURFACE_CURVE.self)?.BASIS_SURFACE)) {
              for J in incrementControl {
                
                let _TEMP15 = SDAI.TYPEOF(CRV?.GROUP_REF(eSURFACE_CURVE.self)?.BASIS_SURFACE?[J], 
                  IS: ePLANE.self)
                if SDAI.IS_TRUE( _TEMP15 ) {
                  RESULT = SDAI.BOOLEAN(SDAI.TRUE)
                }
              }
            }
            //END
          }
        }
      }
    }
    return _check_curve_planarity__cache.updateCache(params: _params, value: RESULT)
  }

}

//MARK: - function result cache
private var _check_curve_planarity__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

