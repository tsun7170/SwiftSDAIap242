/* file: msf_curve_check.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  FUNCTION msf_curve_check(
               cv : representation_item
           ) : BOOLEAN;
    IF SIZEOF( [ 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.BOUNDED_CURVE', 
        'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CONIC' , 
        'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CURVE_REPLICA' , 
        'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.LINE' , 
        'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.OFFSET_CURVE_3D' ] * TYPEOF( cv ) ) > 1 THEN
      RETURN( FALSE );
    END_IF;
    IF ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.B_SPLINE_CURVE' IN TYPEOF( cv ) ) AND ( cv\
        b_spline_curve.self_intersect = FALSE ) ) OR ( cv\b_spline_curve.self_intersect = UNKNOWN ) THEN
      RETURN( TRUE );
    ELSE
      IF SIZEOF( [ 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CONIC', 
          'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.LINE' ] * TYPEOF( cv ) ) = 1 THEN
        RETURN( TRUE );
      ELSE
        IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CURVE_REPLICA' IN TYPEOF( cv ) THEN
          RETURN( msf_curve_check( cv\curve_replica.parent_curve ) );
        ELSE
          IF ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.OFFSET_CURVE_3D' IN TYPEOF( cv ) ) AND ( ( cv
              \offset_curve_3d.self_intersect = FALSE ) OR ( cv\offset_curve_3d.self_intersect = UNKNOWN ) ) 
              AND ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.POLYLINE' IN TYPEOF( cv\
              offset_curve_3d.basis_curve ) ) ) THEN
            RETURN( msf_curve_check( cv\offset_curve_3d.basis_curve ) );
          ELSE
            IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PCURVE' IN TYPEOF( cv ) THEN
              RETURN( msf_curve_check( cv\pcurve.reference_to_curve\representation.items[1] ) AND 
                  msf_surface_check( cv\pcurve.basis_surface ) );
            ELSE
              IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SURFACE_CURVE' IN TYPEOF( cv ) THEN
                IF msf_curve_check( cv\surface_curve.curve_3d ) THEN
                  REPEAT i := 1 TO SIZEOF( cv\surface_curve.associated_geometry ) BY 1;
                    IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SURFACE' IN TYPEOF( cv\surface_curve.
                        associated_geometry[i] ) THEN
                      IF NOT msf_surface_check( cv\surface_curve.associated_geometry[i] ) THEN
                        RETURN( FALSE );
                      END_IF;
                    ELSE
                      IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PCURVE' IN TYPEOF( cv\surface_curve
                          .associated_geometry[i] ) THEN
                        IF NOT msf_curve_check( cv\surface_curve.associated_geometry[i] ) THEN
                          RETURN( FALSE );
                        END_IF;
                      END_IF;
                    END_IF;
                  END_REPEAT;
                  RETURN( TRUE );
                END_IF;
              ELSE
                IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.POLYLINE' IN TYPEOF( cv ) THEN
                  IF SIZEOF( cv\polyline.points ) >= 3 THEN
                    RETURN( TRUE );
                  END_IF;
                END_IF;
              END_IF;
            END_IF;
          END_IF;
        END_IF;
      END_IF;
    END_IF;
    RETURN( FALSE );

  END_FUNCTION; -- msf_curve_check (line:43349 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func MSF_CURVE_CHECK(_ CV: eREPRESENTATION_ITEM? ) 
    -> SDAI.BOOLEAN? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( CV )
    if case .available(let _cached_value) = _msf_curve_check__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.BOOLEAN
    }

    var CV = CV; SDAI.TOUCH(var: &CV)

    
    let _TEMP1 = ([SDAI.AIE(SDAI.STRING("AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.BOUNDED_CURVE")), 
      SDAI.AIE(SDAI.STRING("AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CONIC")), 
      SDAI.AIE(SDAI.STRING("AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CURVE_REPLICA")), 
      SDAI.AIE(SDAI.STRING("AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.LINE")), 
      SDAI.AIE(SDAI.STRING("AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.OFFSET_CURVE_3D"))] 
      as [SDAI.AggregationInitializerElement<SDAI.STRING>])
    let _TEMP2 = SDAI.TYPEOF(CV)
    let _TEMP3 = SDAI.FORCE_OPTIONAL(_TEMP1) * SDAI.FORCE_OPTIONAL(_TEMP2)
    let _TEMP4 = SDAI.SIZEOF(_TEMP3)
    let _TEMP5 = _TEMP4 > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
    if SDAI.IS_TRUE( _TEMP5 ) {
      return _msf_curve_check__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.FALSE))
    }
    
    let _TEMP6 = SDAI.TYPEOF(CV, IS: eB_SPLINE_CURVE.self)
    let _TEMP7 = CV?.GROUP_REF(eB_SPLINE_CURVE.self)
    let _TEMP8 = _TEMP7?.SELF_INTERSECT
    let _TEMP9 = _TEMP8 .==. SDAI.FORCE_OPTIONAL(SDAI.LOGICAL(SDAI.FALSE))
    let _TEMP10 = _TEMP6 && _TEMP9
    let _TEMP11 = CV?.GROUP_REF(eB_SPLINE_CURVE.self)
    let _TEMP12 = _TEMP11?.SELF_INTERSECT
    let _TEMP13 = _TEMP12 .==. SDAI.FORCE_OPTIONAL(SDAI.LOGICAL(SDAI.UNKNOWN))
    let _TEMP14 = _TEMP10 || _TEMP13
    if SDAI.IS_TRUE( _TEMP14 ) {
      return _msf_curve_check__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.TRUE))
    }
    else {
      
      let _TEMP15 = ([SDAI.AIE(SDAI.STRING("AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CONIC")), 
        SDAI.AIE(SDAI.STRING("AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.LINE"))] 
        as [SDAI.AggregationInitializerElement<SDAI.STRING>])
      let _TEMP16 = SDAI.TYPEOF(CV)
      let _TEMP17 = SDAI.FORCE_OPTIONAL(_TEMP15) * SDAI.FORCE_OPTIONAL(_TEMP16)
      let _TEMP18 = SDAI.SIZEOF(_TEMP17)
      let _TEMP19 = _TEMP18 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      if SDAI.IS_TRUE( _TEMP19 ) {
        return _msf_curve_check__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.TRUE))
      }
      else {
        
        let _TEMP20 = SDAI.TYPEOF(CV, IS: eCURVE_REPLICA.self)
        if SDAI.IS_TRUE( _TEMP20 ) {
          
          let _TEMP21 = CV?.GROUP_REF(eCURVE_REPLICA.self)
          let _TEMP22 = _TEMP21?.PARENT_CURVE
          let _TEMP23 = MSF_CURVE_CHECK(eREPRESENTATION_ITEM(/*eCURVE*/_TEMP22))
          return _msf_curve_check__cache.updateCache(params: _params, value: _TEMP23)
        }
        else {
          
          let _TEMP24 = SDAI.TYPEOF(CV, IS: eOFFSET_CURVE_3D.self)
          let _TEMP25 = CV?.GROUP_REF(eOFFSET_CURVE_3D.self)
          let _TEMP26 = _TEMP25?.SELF_INTERSECT
          let _TEMP27 = _TEMP26 .==. SDAI.FORCE_OPTIONAL(SDAI.LOGICAL(SDAI.FALSE))
          let _TEMP28 = CV?.GROUP_REF(eOFFSET_CURVE_3D.self)
          let _TEMP29 = _TEMP28?.SELF_INTERSECT
          let _TEMP30 = _TEMP29 .==. SDAI.FORCE_OPTIONAL(SDAI.LOGICAL(SDAI.UNKNOWN))
          let _TEMP31 = _TEMP27 || _TEMP30
          let _TEMP32 = _TEMP24 && _TEMP31
          let _TEMP33 = SDAI.TYPEOF(CV?.GROUP_REF(eOFFSET_CURVE_3D.self)?.BASIS_CURVE, IS: ePOLYLINE.self)
          let _TEMP34 =  !_TEMP33
          let _TEMP35 = _TEMP32 && _TEMP34
          if SDAI.IS_TRUE( _TEMP35 ) {
            
            let _TEMP36 = CV?.GROUP_REF(eOFFSET_CURVE_3D.self)
            let _TEMP37 = _TEMP36?.BASIS_CURVE
            let _TEMP38 = MSF_CURVE_CHECK(eREPRESENTATION_ITEM(/*eCURVE*/_TEMP37))
            return _msf_curve_check__cache.updateCache(params: _params, value: _TEMP38)
          }
          else {
            
            let _TEMP39 = SDAI.TYPEOF(CV, IS: ePCURVE.self)
            if SDAI.IS_TRUE( _TEMP39 ) {
              
              let _TEMP40 = CV?.GROUP_REF(ePCURVE.self)
              let _TEMP41 = _TEMP40?.REFERENCE_TO_CURVE
              let _TEMP42 = _TEMP41?.GROUP_REF(eREPRESENTATION.self)
              let _TEMP43 = _TEMP42?.ITEMS
              let _TEMP44 = _TEMP43?[1]
              let _TEMP45 = MSF_CURVE_CHECK(_TEMP44)
              let _TEMP46 = CV?.GROUP_REF(ePCURVE.self)
              let _TEMP47 = _TEMP46?.BASIS_SURFACE
              let _TEMP48 = MSF_SURFACE_CHECK(_TEMP47)
              let _TEMP49 = _TEMP45 && _TEMP48
              return _msf_curve_check__cache.updateCache(params: _params, value: SDAI.BOOLEAN(/*SDAI.LOGICAL*/
                _TEMP49))
            }
            else {
              
              let _TEMP50 = SDAI.TYPEOF(CV, IS: eSURFACE_CURVE.self)
              if SDAI.IS_TRUE( _TEMP50 ) {
                
                let _TEMP51 = CV?.GROUP_REF(eSURFACE_CURVE.self)
                let _TEMP52 = _TEMP51?.CURVE_3D
                let _TEMP53 = MSF_CURVE_CHECK(eREPRESENTATION_ITEM(/*eCURVE*/_TEMP52))
                if SDAI.IS_TRUE( _TEMP53 ) {
                  if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/
                    SDAI.SIZEOF(CV?.GROUP_REF(eSURFACE_CURVE.self)?.ASSOCIATED_GEOMETRY)) {
                    for I in incrementControl {
                      
                      let _TEMP54 = SDAI.TYPEOF(CV?.GROUP_REF(eSURFACE_CURVE.self)?.ASSOCIATED_GEOMETRY[I], 
                        IS: eSURFACE.self)
                      if SDAI.IS_TRUE( _TEMP54 ) {
                        
                        let _TEMP55 = CV?.GROUP_REF(eSURFACE_CURVE.self)
                        let _TEMP56 = _TEMP55?.ASSOCIATED_GEOMETRY
                        let _TEMP57 = _TEMP56?[I]
                        let _TEMP58 = MSF_SURFACE_CHECK(eSURFACE(/*sPCURVE_OR_SURFACE*/_TEMP57))
                        let _TEMP59 =  !_TEMP58
                        if SDAI.IS_TRUE( _TEMP59 ) {
                          return _msf_curve_check__cache.updateCache(params: _params, value: SDAI.BOOLEAN(
                            SDAI.FALSE))
                        }
                      }
                      else {
                        
                        let _TEMP60 = SDAI.TYPEOF(CV?.GROUP_REF(eSURFACE_CURVE.self)?.ASSOCIATED_GEOMETRY[I], 
                          IS: ePCURVE.self)
                        if SDAI.IS_TRUE( _TEMP60 ) {
                          
                          let _TEMP61 = CV?.GROUP_REF(eSURFACE_CURVE.self)
                          let _TEMP62 = _TEMP61?.ASSOCIATED_GEOMETRY
                          let _TEMP63 = _TEMP62?[I]
                          let _TEMP64 = MSF_CURVE_CHECK(eREPRESENTATION_ITEM(/*sPCURVE_OR_SURFACE*/_TEMP63))
                          let _TEMP65 =  !_TEMP64
                          if SDAI.IS_TRUE( _TEMP65 ) {
                            return _msf_curve_check__cache.updateCache(params: _params, value: SDAI.BOOLEAN(
                              SDAI.FALSE))
                          }
                        }
                      }
                    }
                  }
                  return _msf_curve_check__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.TRUE))
                }
              }
              else {
                
                let _TEMP66 = SDAI.TYPEOF(CV, IS: ePOLYLINE.self)
                if SDAI.IS_TRUE( _TEMP66 ) {
                  
                  let _TEMP67 = CV?.GROUP_REF(ePOLYLINE.self)
                  let _TEMP68 = _TEMP67?.POINTS
                  let _TEMP69 = SDAI.SIZEOF(_TEMP68)
                  let _TEMP70 = _TEMP69 >= SDAI.FORCE_OPTIONAL(SDAI.INTEGER(3))
                  if SDAI.IS_TRUE( _TEMP70 ) {
                    return _msf_curve_check__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.TRUE))
                  }
                }
              }
            }
          }
        }
      }
    }
    return _msf_curve_check__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.FALSE))
  }

}

//MARK: - function result cache
private var _msf_curve_check__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

