/* file: a3ms_validate_detected_difference_types.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  FUNCTION a3ms_validate_detected_difference_types(
               ei : data_equivalence_inspection_report;
               cr : a3m_equivalence_criterion_for_shape
           ) : LOGICAL;

    LOCAL
      deiir   : data_equivalence_inspection_instance_report;
      eiriwei : equivalence_instance_report_item_with_notable_instances;
      addtn   : a3ms_detected_difference_type_name;
    END_LOCAL;
    IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DATA_EQUIVALENCE_INSPECTION_INSTANCE_REPORT' IN 
        TYPEOF( ei ) THEN
      deiir := ei;
      REPEAT i := 1 TO SIZEOF( deiir.inspected_instances ) BY 1;
        IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
            + 'EQUIVALENCE_INSTANCE_REPORT_ITEM_WITH_NOTABLE_INSTANCES'  IN TYPEOF( deiir.inspected_instances
            [i] ) THEN
          eiriwei := deiir.inspected_instances[i];
          REPEAT j := 1 TO SIZEOF( eiriwei.notable_instances ) BY 1;
            IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.MISMATCH_OF_POINT_CLOUD_AND_RELATED_GEOMETRY' 
                IN TYPEOF( cr ) THEN
              addtn := a3ms_get_detected_difference_type( eiriwei.notable_instances[j].comparing_elements );
              IF a3ms_get_element_type( eiriwei.inspected_element.comparing_elements ) = 
                  etns_connected_edge_set THEN
                IF addtn <> ddns_point_on_curve THEN
                  RETURN( FALSE );
                END_IF;
              ELSE
                IF a3ms_get_element_type( eiriwei.inspected_element.comparing_elements ) = 
                    etns_connected_face_set THEN
                  IF addtn <> ddns_point_on_surface THEN
                    RETURN( FALSE );
                  END_IF;
                ELSE
                  IF a3ms_get_element_type( eiriwei.inspected_element.comparing_elements ) <> 
                      etns_external_representation_item THEN
                    RETURN( FALSE );
                  END_IF;
                END_IF;
              END_IF;
              IF NOT ( a3ms_get_detected_difference_type( eiriwei.notable_instances[j].compared_elements ) IN
                  cr.detected_difference_types ) THEN
                RETURN( FALSE );
              END_IF;
            ELSE
              IF NOT ( a3ms_get_detected_difference_type( eiriwei.notable_instances[j].comparing_elements ) 
                  IN cr.detected_difference_types ) THEN
                RETURN( FALSE );
              END_IF;
              IF NOT ( a3ms_get_detected_difference_type( eiriwei.notable_instances[j].compared_elements ) IN
                  cr.detected_difference_types ) THEN
                RETURN( FALSE );
              END_IF;
            END_IF;
          END_REPEAT;
        END_IF;
      END_REPEAT;
    END_IF;
    RETURN( TRUE );

  END_FUNCTION; -- a3ms_validate_detected_difference_types (line:34577 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func A3MS_VALIDATE_DETECTED_DIFFERENCE_TYPES(
    EI: eDATA_EQUIVALENCE_INSPECTION_REPORT? , CR: eA3M_EQUIVALENCE_CRITERION_FOR_SHAPE? ) 
    -> SDAI.LOGICAL {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( EI, CR )
    if case .available(let _cached_value) = _a3ms_validate_detected_difference_types__cache.cachedValue(params: _params) {
      return _cached_value as! SDAI.LOGICAL
    }

    var EI = EI; SDAI.TOUCH(var: &EI)
    var CR = CR; SDAI.TOUCH(var: &CR)

    //LOCAL
    var DEIIR: eDATA_EQUIVALENCE_INSPECTION_INSTANCE_REPORT? 
    var EIRIWEI: eEQUIVALENCE_INSTANCE_REPORT_ITEM_WITH_NOTABLE_INSTANCES? 
    var ADDTN: nA3MS_DETECTED_DIFFERENCE_TYPE_NAME? 
    //END_LOCAL

    
    let _TEMP1 = SDAI.TYPEOF(EI, IS: eDATA_EQUIVALENCE_INSPECTION_INSTANCE_REPORT.self)
    if SDAI.IS_TRUE( _TEMP1 ) {
      DEIIR = eDATA_EQUIVALENCE_INSPECTION_INSTANCE_REPORT(/*eDATA_EQUIVALENCE_INSPECTION_REPORT*/EI)
      if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.SIZEOF(
        DEIIR?.INSPECTED_INSTANCES)) {
        for I in incrementControl {
          
          let _TEMP2 = SDAI.TYPEOF(DEIIR?.INSPECTED_INSTANCES[I], 
            IS: eEQUIVALENCE_INSTANCE_REPORT_ITEM_WITH_NOTABLE_INSTANCES.self)
          if SDAI.IS_TRUE( _TEMP2 ) {
            
            let _TEMP3 = DEIIR?.INSPECTED_INSTANCES
            let _TEMP4 = _TEMP3?[I]
            EIRIWEI = eEQUIVALENCE_INSTANCE_REPORT_ITEM_WITH_NOTABLE_INSTANCES(/*
              eDATA_EQUIVALENCE_INSPECTION_INSTANCE_REPORT_ITEM*/_TEMP4)
            if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/
              SDAI.SIZEOF(EIRIWEI?.NOTABLE_INSTANCES)) {
              for J in incrementControl {
                
                let _TEMP5 = SDAI.TYPEOF(CR, IS: eMISMATCH_OF_POINT_CLOUD_AND_RELATED_GEOMETRY.self)
                if SDAI.IS_TRUE( _TEMP5 ) {
                  
                  let _TEMP6 = EIRIWEI?.NOTABLE_INSTANCES
                  let _TEMP7 = _TEMP6?[J]
                  let _TEMP8 = _TEMP7?.COMPARING_ELEMENTS
                  let _TEMP9 = A3MS_GET_DETECTED_DIFFERENCE_TYPE(_TEMP8)
                  ADDTN = _TEMP9
                  
                  let _TEMP10 = EIRIWEI?.INSPECTED_ELEMENT
                  let _TEMP11 = _TEMP10?.COMPARING_ELEMENTS
                  let _TEMP12 = A3MS_GET_ELEMENT_TYPE(_TEMP11)
                  let _TEMP13 = _TEMP12 .==. SDAI.FORCE_OPTIONAL(ETNS_CONNECTED_EDGE_SET)
                  if SDAI.IS_TRUE( _TEMP13 ) {
                    
                    let _TEMP14 = ADDTN .!=. SDAI.FORCE_OPTIONAL(DDNS_POINT_ON_CURVE)
                    if SDAI.IS_TRUE( _TEMP14 ) {
                      return _a3ms_validate_detected_difference_types__cache.updateCache(params: _params, value: SDAI.UNWRAP(
                        SDAI.LOGICAL(SDAI.FALSE)))
                    }
                  }
                  else {
                    
                    let _TEMP15 = EIRIWEI?.INSPECTED_ELEMENT
                    let _TEMP16 = _TEMP15?.COMPARING_ELEMENTS
                    let _TEMP17 = A3MS_GET_ELEMENT_TYPE(_TEMP16)
                    let _TEMP18 = _TEMP17 .==. SDAI.FORCE_OPTIONAL(ETNS_CONNECTED_FACE_SET)
                    if SDAI.IS_TRUE( _TEMP18 ) {
                      
                      let _TEMP19 = ADDTN .!=. SDAI.FORCE_OPTIONAL(DDNS_POINT_ON_SURFACE)
                      if SDAI.IS_TRUE( _TEMP19 ) {
                        return _a3ms_validate_detected_difference_types__cache.updateCache(params: _params, value: SDAI.UNWRAP(
                          SDAI.LOGICAL(SDAI.FALSE)))
                      }
                    }
                    else {
                      
                      let _TEMP20 = EIRIWEI?.INSPECTED_ELEMENT
                      let _TEMP21 = _TEMP20?.COMPARING_ELEMENTS
                      let _TEMP22 = A3MS_GET_ELEMENT_TYPE(_TEMP21)
                      let _TEMP23 = _TEMP22 .!=. SDAI.FORCE_OPTIONAL(ETNS_EXTERNAL_REPRESENTATION_ITEM)
                      if SDAI.IS_TRUE( _TEMP23 ) {
                        return _a3ms_validate_detected_difference_types__cache.updateCache(params: _params, value: SDAI.UNWRAP(
                          SDAI.LOGICAL(SDAI.FALSE)))
                      }
                    }
                  }
                  
                  let _TEMP24 = EIRIWEI?.NOTABLE_INSTANCES
                  let _TEMP25 = _TEMP24?[J]
                  let _TEMP26 = _TEMP25?.COMPARED_ELEMENTS
                  let _TEMP27 = A3MS_GET_DETECTED_DIFFERENCE_TYPE(_TEMP26)
                  let _TEMP28 = CR?.DETECTED_DIFFERENCE_TYPES
                  let _TEMP29 = SDAI.aggregate(_TEMP28, contains: _TEMP27)
                  let _TEMP30 =  !_TEMP29
                  if SDAI.IS_TRUE( _TEMP30 ) {
                    return _a3ms_validate_detected_difference_types__cache.updateCache(params: _params, value: SDAI.UNWRAP(
                      SDAI.LOGICAL(SDAI.FALSE)))
                  }
                }
                else {
                  
                  let _TEMP31 = EIRIWEI?.NOTABLE_INSTANCES
                  let _TEMP32 = _TEMP31?[J]
                  let _TEMP33 = _TEMP32?.COMPARING_ELEMENTS
                  let _TEMP34 = A3MS_GET_DETECTED_DIFFERENCE_TYPE(_TEMP33)
                  let _TEMP35 = CR?.DETECTED_DIFFERENCE_TYPES
                  let _TEMP36 = SDAI.aggregate(_TEMP35, contains: _TEMP34)
                  let _TEMP37 =  !_TEMP36
                  if SDAI.IS_TRUE( _TEMP37 ) {
                    return _a3ms_validate_detected_difference_types__cache.updateCache(params: _params, value: SDAI.UNWRAP(
                      SDAI.LOGICAL(SDAI.FALSE)))
                  }
                  
                  let _TEMP38 = EIRIWEI?.NOTABLE_INSTANCES
                  let _TEMP39 = _TEMP38?[J]
                  let _TEMP40 = _TEMP39?.COMPARED_ELEMENTS
                  let _TEMP41 = A3MS_GET_DETECTED_DIFFERENCE_TYPE(_TEMP40)
                  let _TEMP42 = CR?.DETECTED_DIFFERENCE_TYPES
                  let _TEMP43 = SDAI.aggregate(_TEMP42, contains: _TEMP41)
                  let _TEMP44 =  !_TEMP43
                  if SDAI.IS_TRUE( _TEMP44 ) {
                    return _a3ms_validate_detected_difference_types__cache.updateCache(params: _params, value: SDAI.UNWRAP(
                      SDAI.LOGICAL(SDAI.FALSE)))
                  }
                }
              }
            }
          }
        }
      }
    }
    return _a3ms_validate_detected_difference_types__cache.updateCache(params: _params, value: SDAI.UNWRAP(
      SDAI.LOGICAL(SDAI.TRUE)))
  }

}

//MARK: - function result cache
private var _a3ms_validate_detected_difference_types__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

