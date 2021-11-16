/* file: a3ms_get_detected_difference_type.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  FUNCTION a3ms_get_detected_difference_type(
               ei : LIST [0 : ?] OF equivalence_detected_difference_select
           ) : a3ms_detected_difference_type_name;

    LOCAL
      type_out : SET OF STRING;
      sizeei   : INTEGER;
    END_LOCAL;
    sizeei := SIZEOF( ei );
    IF sizeei = 0 THEN
      RETURN( ddns_no_element );
    ELSE
      type_out := TYPEOF( ei[1] );
      REPEAT i := 2 TO sizeei BY 1;
        IF TYPEOF( ei[i] ) <> type_out THEN
          RETURN( ddns_others );
        END_IF;
      END_REPEAT;
      IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.AREA_MEASURE' IN type_out THEN
        IF sizeei = 1 THEN
          RETURN( ddns_area_measure );
        ELSE
          RETURN( ddns_others );
        END_IF;
      END_IF;
      IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CARTESIAN_POINT' IN type_out THEN
        IF sizeei = 1 THEN
          RETURN( ddns_cartesian_point );
        ELSE
          IF sizeei = 2 THEN
            RETURN( ddns_two_cartesian_points );
          ELSE
            RETURN( ddns_others );
          END_IF;
        END_IF;
      END_IF;
      IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CONNECTED_FACE_SET' IN type_out THEN
        IF sizeei = 1 THEN
          RETURN( ddns_connected_face_set );
        ELSE
          RETURN( ddns_others );
        END_IF;
      END_IF;
      IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.COUNT_MEASURE' IN type_out THEN
        IF sizeei = 1 THEN
          RETURN( ddns_count_measure );
        ELSE
          IF sizeei = 2 THEN
            RETURN( ddns_two_count_measure );
          ELSE
            IF sizeei = 3 THEN
              RETURN( ddns_three_count_measure );
            ELSE
              IF sizeei = 4 THEN
                RETURN( ddns_four_count_measure );
              ELSE
                IF sizeei = 5 THEN
                  RETURN( ddns_five_count_measure );
                ELSE
                  RETURN( ddns_others );
                END_IF;
              END_IF;
            END_IF;
          END_IF;
        END_IF;
      END_IF;
      IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.EDGE' IN type_out THEN
        IF sizeei = 1 THEN
          RETURN( ddns_edge );
        ELSE
          RETURN( ddns_several_edges );
        END_IF;
      END_IF;
      IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.FACE' IN type_out THEN
        IF sizeei = 1 THEN
          RETURN( ddns_face );
        ELSE
          RETURN( ddns_several_faces );
        END_IF;
      END_IF;
      IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.LENGTH_MEASURE' IN type_out THEN
        IF sizeei = 1 THEN
          RETURN( ddns_length_measure );
        ELSE
          RETURN( ddns_others );
        END_IF;
      END_IF;
      IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.POINT_ON_CURVE' IN type_out THEN
        IF sizeei = 1 THEN
          RETURN( ddns_point_on_curve );
        ELSE
          RETURN( ddns_others );
        END_IF;
      END_IF;
      IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.POINT_ON_SURFACE' IN type_out THEN
        IF sizeei = 1 THEN
          RETURN( ddns_point_on_surface );
        ELSE
          RETURN( ddns_others );
        END_IF;
      END_IF;
      IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.VOLUME_MEASURE' IN type_out THEN
        IF sizeei = 1 THEN
          RETURN( ddns_volume_measure );
        ELSE
          RETURN( ddns_others );
        END_IF;
      END_IF;
    END_IF;
    RETURN( ddns_others );

  END_FUNCTION; -- a3ms_get_detected_difference_type (line:34291 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func A3MS_GET_DETECTED_DIFFERENCE_TYPE(
    _ EI: (SDAI.LIST<sEQUIVALENCE_DETECTED_DIFFERENCE_SELECT>/*[0:nil]*/ )? ) 
    -> nA3MS_DETECTED_DIFFERENCE_TYPE_NAME? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( EI )
    if case .available(let _cached_value) = _a3ms_get_detected_difference_type__cache.cachedValue(params: _params) {
      return _cached_value as? nA3MS_DETECTED_DIFFERENCE_TYPE_NAME
    }

    var EI = EI; SDAI.TOUCH(var: &EI)

    //LOCAL
    var TYPE_OUT: SDAI.SET<SDAI.STRING>? 
    var SIZEEI: SDAI.INTEGER? 
    //END_LOCAL

    
    let _TEMP1 = SDAI.SIZEOF(EI)
    SIZEEI = _TEMP1
    
    let _TEMP2 = SIZEEI .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
    if SDAI.IS_TRUE( _TEMP2 ) {
      return _a3ms_get_detected_difference_type__cache.updateCache(params: _params, value: 
        nA3MS_DETECTED_DIFFERENCE_TYPE_NAME(/*nA3M_DETECTED_DIFFERENCE_TYPE_NAME*/DDNS_NO_ELEMENT))
    }
    else {
      
      let _TEMP3 = EI?[1]
      let _TEMP4 = SDAI.TYPEOF(_TEMP3)
      TYPE_OUT = _TEMP4
      if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/2, TO:/*SDAI.INTEGER*/SIZEEI) {
        for I in incrementControl {
          
          let _TEMP5 = EI?[I]
          let _TEMP6 = SDAI.TYPEOF(_TEMP5)
          let _TEMP7 = SDAI.FORCE_OPTIONAL(_TEMP6) .!=. TYPE_OUT
          if SDAI.IS_TRUE( _TEMP7 ) {
            return _a3ms_get_detected_difference_type__cache.updateCache(params: _params, value: 
              nA3MS_DETECTED_DIFFERENCE_TYPE_NAME(/*nA3M_DETECTED_DIFFERENCE_TYPE_NAME*/DDNS_OTHERS))
          }
        }
      }
      
      let _TEMP8 = SDAI.aggregate(TYPE_OUT, contains: SDAI.STRING(
        "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.AREA_MEASURE"))
      if SDAI.IS_TRUE( _TEMP8 ) {
        
        let _TEMP9 = SIZEEI .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
        if SDAI.IS_TRUE( _TEMP9 ) {
          return _a3ms_get_detected_difference_type__cache.updateCache(params: _params, value: 
            nA3MS_DETECTED_DIFFERENCE_TYPE_NAME(/*nA3M_DETECTED_DIFFERENCE_TYPE_NAME*/DDNS_AREA_MEASURE))
        }
        else {
          return _a3ms_get_detected_difference_type__cache.updateCache(params: _params, value: 
            nA3MS_DETECTED_DIFFERENCE_TYPE_NAME(/*nA3M_DETECTED_DIFFERENCE_TYPE_NAME*/DDNS_OTHERS))
        }
      }
      
      let _TEMP10 = SDAI.aggregate(TYPE_OUT, contains: SDAI.STRING(
        "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CARTESIAN_POINT"))
      if SDAI.IS_TRUE( _TEMP10 ) {
        
        let _TEMP11 = SIZEEI .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
        if SDAI.IS_TRUE( _TEMP11 ) {
          return _a3ms_get_detected_difference_type__cache.updateCache(params: _params, value: 
            nA3MS_DETECTED_DIFFERENCE_TYPE_NAME(/*nA3M_DETECTED_DIFFERENCE_TYPE_NAME*/DDNS_CARTESIAN_POINT))
        }
        else {
          
          let _TEMP12 = SIZEEI .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(2))
          if SDAI.IS_TRUE( _TEMP12 ) {
            return _a3ms_get_detected_difference_type__cache.updateCache(params: _params, value: 
              nA3MS_DETECTED_DIFFERENCE_TYPE_NAME(/*nA3M_DETECTED_DIFFERENCE_TYPE_NAME*/
              DDNS_TWO_CARTESIAN_POINTS))
          }
          else {
            return _a3ms_get_detected_difference_type__cache.updateCache(params: _params, value: 
              nA3MS_DETECTED_DIFFERENCE_TYPE_NAME(/*nA3M_DETECTED_DIFFERENCE_TYPE_NAME*/DDNS_OTHERS))
          }
        }
      }
      
      let _TEMP13 = SDAI.aggregate(TYPE_OUT, contains: SDAI.STRING(
        "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CONNECTED_FACE_SET"))
      if SDAI.IS_TRUE( _TEMP13 ) {
        
        let _TEMP14 = SIZEEI .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
        if SDAI.IS_TRUE( _TEMP14 ) {
          return _a3ms_get_detected_difference_type__cache.updateCache(params: _params, value: 
            nA3MS_DETECTED_DIFFERENCE_TYPE_NAME(/*nA3M_DETECTED_DIFFERENCE_TYPE_NAME*/DDNS_CONNECTED_FACE_SET))
        }
        else {
          return _a3ms_get_detected_difference_type__cache.updateCache(params: _params, value: 
            nA3MS_DETECTED_DIFFERENCE_TYPE_NAME(/*nA3M_DETECTED_DIFFERENCE_TYPE_NAME*/DDNS_OTHERS))
        }
      }
      
      let _TEMP15 = SDAI.aggregate(TYPE_OUT, contains: SDAI.STRING(
        "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.COUNT_MEASURE"))
      if SDAI.IS_TRUE( _TEMP15 ) {
        
        let _TEMP16 = SIZEEI .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
        if SDAI.IS_TRUE( _TEMP16 ) {
          return _a3ms_get_detected_difference_type__cache.updateCache(params: _params, value: 
            nA3MS_DETECTED_DIFFERENCE_TYPE_NAME(/*nA3M_DETECTED_DIFFERENCE_TYPE_NAME*/DDNS_COUNT_MEASURE))
        }
        else {
          
          let _TEMP17 = SIZEEI .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(2))
          if SDAI.IS_TRUE( _TEMP17 ) {
            return _a3ms_get_detected_difference_type__cache.updateCache(params: _params, value: 
              nA3MS_DETECTED_DIFFERENCE_TYPE_NAME(/*nA3M_DETECTED_DIFFERENCE_TYPE_NAME*/
              DDNS_TWO_COUNT_MEASURE))
          }
          else {
            
            let _TEMP18 = SIZEEI .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(3))
            if SDAI.IS_TRUE( _TEMP18 ) {
              return _a3ms_get_detected_difference_type__cache.updateCache(params: _params, value: 
                nA3MS_DETECTED_DIFFERENCE_TYPE_NAME(/*nA3M_DETECTED_DIFFERENCE_TYPE_NAME*/
                DDNS_THREE_COUNT_MEASURE))
            }
            else {
              
              let _TEMP19 = SIZEEI .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(4))
              if SDAI.IS_TRUE( _TEMP19 ) {
                return _a3ms_get_detected_difference_type__cache.updateCache(params: _params, value: 
                  nA3MS_DETECTED_DIFFERENCE_TYPE_NAME(/*nA3M_DETECTED_DIFFERENCE_TYPE_NAME*/
                  DDNS_FOUR_COUNT_MEASURE))
              }
              else {
                
                let _TEMP20 = SIZEEI .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(5))
                if SDAI.IS_TRUE( _TEMP20 ) {
                  return _a3ms_get_detected_difference_type__cache.updateCache(params: _params, value: 
                    nA3MS_DETECTED_DIFFERENCE_TYPE_NAME(/*nA3M_DETECTED_DIFFERENCE_TYPE_NAME*/
                    DDNS_FIVE_COUNT_MEASURE))
                }
                else {
                  return _a3ms_get_detected_difference_type__cache.updateCache(params: _params, value: 
                    nA3MS_DETECTED_DIFFERENCE_TYPE_NAME(/*nA3M_DETECTED_DIFFERENCE_TYPE_NAME*/DDNS_OTHERS))
                }
              }
            }
          }
        }
      }
      
      let _TEMP21 = SDAI.aggregate(TYPE_OUT, contains: SDAI.STRING(
        "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.EDGE"))
      if SDAI.IS_TRUE( _TEMP21 ) {
        
        let _TEMP22 = SIZEEI .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
        if SDAI.IS_TRUE( _TEMP22 ) {
          return _a3ms_get_detected_difference_type__cache.updateCache(params: _params, value: 
            nA3MS_DETECTED_DIFFERENCE_TYPE_NAME(/*nA3M_DETECTED_DIFFERENCE_TYPE_NAME*/DDNS_EDGE))
        }
        else {
          return _a3ms_get_detected_difference_type__cache.updateCache(params: _params, value: 
            nA3MS_DETECTED_DIFFERENCE_TYPE_NAME(/*nA3M_DETECTED_DIFFERENCE_TYPE_NAME*/DDNS_SEVERAL_EDGES))
        }
      }
      
      let _TEMP23 = SDAI.aggregate(TYPE_OUT, contains: SDAI.STRING(
        "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.FACE"))
      if SDAI.IS_TRUE( _TEMP23 ) {
        
        let _TEMP24 = SIZEEI .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
        if SDAI.IS_TRUE( _TEMP24 ) {
          return _a3ms_get_detected_difference_type__cache.updateCache(params: _params, value: 
            nA3MS_DETECTED_DIFFERENCE_TYPE_NAME(/*nA3M_DETECTED_DIFFERENCE_TYPE_NAME*/DDNS_FACE))
        }
        else {
          return _a3ms_get_detected_difference_type__cache.updateCache(params: _params, value: 
            nA3MS_DETECTED_DIFFERENCE_TYPE_NAME(/*nA3M_DETECTED_DIFFERENCE_TYPE_NAME*/DDNS_SEVERAL_FACES))
        }
      }
      
      let _TEMP25 = SDAI.aggregate(TYPE_OUT, contains: SDAI.STRING(
        "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.LENGTH_MEASURE"))
      if SDAI.IS_TRUE( _TEMP25 ) {
        
        let _TEMP26 = SIZEEI .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
        if SDAI.IS_TRUE( _TEMP26 ) {
          return _a3ms_get_detected_difference_type__cache.updateCache(params: _params, value: 
            nA3MS_DETECTED_DIFFERENCE_TYPE_NAME(/*nA3M_DETECTED_DIFFERENCE_TYPE_NAME*/DDNS_LENGTH_MEASURE))
        }
        else {
          return _a3ms_get_detected_difference_type__cache.updateCache(params: _params, value: 
            nA3MS_DETECTED_DIFFERENCE_TYPE_NAME(/*nA3M_DETECTED_DIFFERENCE_TYPE_NAME*/DDNS_OTHERS))
        }
      }
      
      let _TEMP27 = SDAI.aggregate(TYPE_OUT, contains: SDAI.STRING(
        "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.POINT_ON_CURVE"))
      if SDAI.IS_TRUE( _TEMP27 ) {
        
        let _TEMP28 = SIZEEI .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
        if SDAI.IS_TRUE( _TEMP28 ) {
          return _a3ms_get_detected_difference_type__cache.updateCache(params: _params, value: 
            nA3MS_DETECTED_DIFFERENCE_TYPE_NAME(/*nA3M_DETECTED_DIFFERENCE_TYPE_NAME*/DDNS_POINT_ON_CURVE))
        }
        else {
          return _a3ms_get_detected_difference_type__cache.updateCache(params: _params, value: 
            nA3MS_DETECTED_DIFFERENCE_TYPE_NAME(/*nA3M_DETECTED_DIFFERENCE_TYPE_NAME*/DDNS_OTHERS))
        }
      }
      
      let _TEMP29 = SDAI.aggregate(TYPE_OUT, contains: SDAI.STRING(
        "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.POINT_ON_SURFACE"))
      if SDAI.IS_TRUE( _TEMP29 ) {
        
        let _TEMP30 = SIZEEI .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
        if SDAI.IS_TRUE( _TEMP30 ) {
          return _a3ms_get_detected_difference_type__cache.updateCache(params: _params, value: 
            nA3MS_DETECTED_DIFFERENCE_TYPE_NAME(/*nA3M_DETECTED_DIFFERENCE_TYPE_NAME*/DDNS_POINT_ON_SURFACE))
        }
        else {
          return _a3ms_get_detected_difference_type__cache.updateCache(params: _params, value: 
            nA3MS_DETECTED_DIFFERENCE_TYPE_NAME(/*nA3M_DETECTED_DIFFERENCE_TYPE_NAME*/DDNS_OTHERS))
        }
      }
      
      let _TEMP31 = SDAI.aggregate(TYPE_OUT, contains: SDAI.STRING(
        "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.VOLUME_MEASURE"))
      if SDAI.IS_TRUE( _TEMP31 ) {
        
        let _TEMP32 = SIZEEI .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
        if SDAI.IS_TRUE( _TEMP32 ) {
          return _a3ms_get_detected_difference_type__cache.updateCache(params: _params, value: 
            nA3MS_DETECTED_DIFFERENCE_TYPE_NAME(/*nA3M_DETECTED_DIFFERENCE_TYPE_NAME*/DDNS_VOLUME_MEASURE))
        }
        else {
          return _a3ms_get_detected_difference_type__cache.updateCache(params: _params, value: 
            nA3MS_DETECTED_DIFFERENCE_TYPE_NAME(/*nA3M_DETECTED_DIFFERENCE_TYPE_NAME*/DDNS_OTHERS))
        }
      }
    }
    return _a3ms_get_detected_difference_type__cache.updateCache(params: _params, value: 
      nA3MS_DETECTED_DIFFERENCE_TYPE_NAME(/*nA3M_DETECTED_DIFFERENCE_TYPE_NAME*/DDNS_OTHERS))
  }

}

//MARK: - function result cache
private var _a3ms_get_detected_difference_type__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

