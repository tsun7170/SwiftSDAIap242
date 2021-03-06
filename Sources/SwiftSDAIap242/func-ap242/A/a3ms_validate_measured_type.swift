/* file: a3ms_validate_measured_type.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  FUNCTION a3ms_validate_measured_type(
               ei : data_equivalence_inspection_report;
               cr : a3m_equivalence_criterion_for_shape
           ) : LOGICAL;

    LOCAL
      amdtn   : a3ms_measured_data_type_name;
      deicr   : data_equivalence_inspection_criterion_report;
      acriwmv : a3m_equivalence_criterion_report_item_with_measured_value;
      deiir   : data_equivalence_inspection_instance_report;
      aeiiri  : a3m_equivalence_inspection_instance_report_item;
      eiriwei : equivalence_instance_report_item_with_notable_instances;
    END_LOCAL;
    amdtn := cr.measured_data_type;
    IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DATA_EQUIVALENCE_INSPECTION_CRITERION_REPORT' IN 
        TYPEOF( ei ) THEN
      deicr := ei;
      REPEAT i := 1 TO SIZEOF( deicr.statistical_values ) BY 1;
        IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
            + 'A3M_EQUIVALENCE_CRITERION_REPORT_ITEM_WITH_MEASURED_VALUE'  IN TYPEOF( deicr.
            statistical_values[i] ) THEN
          acriwmv := deicr.statistical_values[i];
          IF a3ms_get_measured_type( acriwmv.representative_measured_value ) <> amdtn THEN
            RETURN( FALSE );
          END_IF;
        END_IF;
      END_REPEAT;
    END_IF;
    IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DATA_EQUIVALENCE_INSPECTION_INSTANCE_REPORT' IN 
        TYPEOF( ei ) THEN
      deiir := ei;
      REPEAT i := 1 TO SIZEOF( deiir.inspected_instances ) BY 1;
        IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.A3M_EQUIVALENCE_INSPECTION_INSTANCE_REPORT_ITEM' 
            IN TYPEOF( deiir.inspected_instances[i] ) THEN
          aeiiri := deiir.inspected_instances[i];
          IF a3ms_get_measured_type( aeiiri.measured_value_for_inspected_element ) <> amdtn THEN
            RETURN( FALSE );
          END_IF;
        END_IF;
        IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
            + 'EQUIVALENCE_INSTANCE_REPORT_ITEM_WITH_NOTABLE_INSTANCES'  IN TYPEOF( deiir.inspected_instances
            [i] ) THEN
          eiriwei := deiir.inspected_instances[i];
          REPEAT j := 1 TO SIZEOF( eiriwei.notable_instances ) BY 1;
            IF a3ms_get_measured_type( eiriwei.notable_instances[j].measured_value ) <> amdtn THEN
              RETURN( FALSE );
            END_IF;
          END_REPEAT;
        END_IF;
      END_REPEAT;
    END_IF;
    RETURN( TRUE );

  END_FUNCTION; -- a3ms_validate_measured_type (line:34690 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func A3MS_VALIDATE_MEASURED_TYPE(EI: eDATA_EQUIVALENCE_INSPECTION_REPORT? , 
                                   CR: eA3M_EQUIVALENCE_CRITERION_FOR_SHAPE? ) 
    -> SDAI.LOGICAL {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( EI, CR )
    if case .available(let _cached_value) = _a3ms_validate_measured_type__cache.cachedValue(params: _params) {
      return _cached_value as! SDAI.LOGICAL
    }

    var EI = EI; SDAI.TOUCH(var: &EI)
    var CR = CR; SDAI.TOUCH(var: &CR)

    //LOCAL
    var AMDTN: nA3MS_MEASURED_DATA_TYPE_NAME? 
    var DEICR: eDATA_EQUIVALENCE_INSPECTION_CRITERION_REPORT? 
    var ACRIWMV: eA3M_EQUIVALENCE_CRITERION_REPORT_ITEM_WITH_MEASURED_VALUE? 
    var DEIIR: eDATA_EQUIVALENCE_INSPECTION_INSTANCE_REPORT? 
    var AEIIRI: eA3M_EQUIVALENCE_INSPECTION_INSTANCE_REPORT_ITEM? 
    var EIRIWEI: eEQUIVALENCE_INSTANCE_REPORT_ITEM_WITH_NOTABLE_INSTANCES? 
    //END_LOCAL

    
    let _TEMP1 = CR?.MEASURED_DATA_TYPE
    AMDTN = _TEMP1
    
    let _TEMP2 = SDAI.TYPEOF(EI, IS: eDATA_EQUIVALENCE_INSPECTION_CRITERION_REPORT.self)
    if SDAI.IS_TRUE( _TEMP2 ) {
      DEICR = eDATA_EQUIVALENCE_INSPECTION_CRITERION_REPORT(/*eDATA_EQUIVALENCE_INSPECTION_REPORT*/EI)
      if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.SIZEOF(
        DEICR?.STATISTICAL_VALUES)) {
        for I in incrementControl {
          
          let _TEMP3 = SDAI.TYPEOF(DEICR?.STATISTICAL_VALUES[I], 
            IS: eA3M_EQUIVALENCE_CRITERION_REPORT_ITEM_WITH_MEASURED_VALUE.self)
          if SDAI.IS_TRUE( _TEMP3 ) {
            
            let _TEMP4 = DEICR?.STATISTICAL_VALUES
            let _TEMP5 = _TEMP4?[I]
            ACRIWMV = eA3M_EQUIVALENCE_CRITERION_REPORT_ITEM_WITH_MEASURED_VALUE(/*
              eDATA_EQUIVALENCE_INSPECTION_CRITERION_REPORT_ITEM*/_TEMP5)
            
            let _TEMP6 = ACRIWMV?.REPRESENTATIVE_MEASURED_VALUE
            let _TEMP7 = A3MS_GET_MEASURED_TYPE(_TEMP6)
            let _TEMP8 = _TEMP7 .!=. AMDTN
            if SDAI.IS_TRUE( _TEMP8 ) {
              return _a3ms_validate_measured_type__cache.updateCache(params: _params, value: SDAI.UNWRAP(
                SDAI.LOGICAL(SDAI.FALSE)))
            }
          }
        }
      }
    }
    
    let _TEMP9 = SDAI.TYPEOF(EI, IS: eDATA_EQUIVALENCE_INSPECTION_INSTANCE_REPORT.self)
    if SDAI.IS_TRUE( _TEMP9 ) {
      DEIIR = eDATA_EQUIVALENCE_INSPECTION_INSTANCE_REPORT(/*eDATA_EQUIVALENCE_INSPECTION_REPORT*/EI)
      if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.SIZEOF(
        DEIIR?.INSPECTED_INSTANCES)) {
        for I in incrementControl {
          
          let _TEMP10 = SDAI.TYPEOF(DEIIR?.INSPECTED_INSTANCES[I], 
            IS: eA3M_EQUIVALENCE_INSPECTION_INSTANCE_REPORT_ITEM.self)
          if SDAI.IS_TRUE( _TEMP10 ) {
            
            let _TEMP11 = DEIIR?.INSPECTED_INSTANCES
            let _TEMP12 = _TEMP11?[I]
            AEIIRI = eA3M_EQUIVALENCE_INSPECTION_INSTANCE_REPORT_ITEM(/*
              eDATA_EQUIVALENCE_INSPECTION_INSTANCE_REPORT_ITEM*/_TEMP12)
            
            let _TEMP13 = AEIIRI?.MEASURED_VALUE_FOR_INSPECTED_ELEMENT
            let _TEMP14 = A3MS_GET_MEASURED_TYPE(_TEMP13)
            let _TEMP15 = _TEMP14 .!=. AMDTN
            if SDAI.IS_TRUE( _TEMP15 ) {
              return _a3ms_validate_measured_type__cache.updateCache(params: _params, value: SDAI.UNWRAP(
                SDAI.LOGICAL(SDAI.FALSE)))
            }
          }
          
          let _TEMP16 = SDAI.TYPEOF(DEIIR?.INSPECTED_INSTANCES[I], 
            IS: eEQUIVALENCE_INSTANCE_REPORT_ITEM_WITH_NOTABLE_INSTANCES.self)
          if SDAI.IS_TRUE( _TEMP16 ) {
            
            let _TEMP17 = DEIIR?.INSPECTED_INSTANCES
            let _TEMP18 = _TEMP17?[I]
            EIRIWEI = eEQUIVALENCE_INSTANCE_REPORT_ITEM_WITH_NOTABLE_INSTANCES(/*
              eDATA_EQUIVALENCE_INSPECTION_INSTANCE_REPORT_ITEM*/_TEMP18)
            if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/
              SDAI.SIZEOF(EIRIWEI?.NOTABLE_INSTANCES)) {
              for J in incrementControl {
                
                let _TEMP19 = EIRIWEI?.NOTABLE_INSTANCES
                let _TEMP20 = _TEMP19?[J]
                let _TEMP21 = _TEMP20?.MEASURED_VALUE
                let _TEMP22 = A3MS_GET_MEASURED_TYPE(_TEMP21)
                let _TEMP23 = _TEMP22 .!=. AMDTN
                if SDAI.IS_TRUE( _TEMP23 ) {
                  return _a3ms_validate_measured_type__cache.updateCache(params: _params, value: SDAI.UNWRAP(
                    SDAI.LOGICAL(SDAI.FALSE)))
                }
              }
            }
          }
        }
      }
    }
    return _a3ms_validate_measured_type__cache.updateCache(params: _params, value: SDAI.UNWRAP(SDAI.LOGICAL(
      SDAI.TRUE)))
  }

}

//MARK: - function result cache
private var _a3ms_validate_measured_type__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

