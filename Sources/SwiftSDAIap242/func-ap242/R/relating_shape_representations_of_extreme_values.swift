/* file: relating_shape_representations_of_extreme_values.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  FUNCTION relating_shape_representations_of_extreme_values(
               item : location_of_extreme_value_select
           ) : SET OF shape_representation;

    LOCAL
      results : SET OF shape_representation := [];
      exti    : SET OF extreme_instance := [];
      ii_ei   : SET OF instance_report_item_with_extreme_instances := [];
      sdiir   : SET OF shape_data_quality_inspection_instance_report := [];
      sdqr    : SET OF shape_data_quality_inspection_result_representation := [];
      sdisr   : SET OF shape_data_quality_inspected_shape_and_result_relationship := [];
    END_LOCAL;
    exti := exti + bag_to_set( USEDIN( item, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
        + 'EXTREME_INSTANCE.LOCATIONS_OF_EXTREME_VALUE'  ) );
    REPEAT i := 1 TO HIINDEX( exti ) BY 1;
      ii_ei := ii_ei + bag_to_set( USEDIN( exti[i], 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
          + 'INSTANCE_REPORT_ITEM_WITH_EXTREME_INSTANCES.EXTREME_INSTANCES'  ) );
    END_REPEAT;
    REPEAT i := 1 TO HIINDEX( ii_ei ) BY 1;
      sdiir := sdiir + bag_to_set( USEDIN( ii_ei[i], 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
          + 'SHAPE_DATA_QUALITY_INSPECTION_INSTANCE_REPORT.INSPECTED_INSTANCES'  ) );
    END_REPEAT;
    REPEAT i := 1 TO HIINDEX( sdiir ) BY 1;
      sdqr := sdqr + QUERY ( i1 <* bag_to_set( USEDIN( sdiir[i].inspection_result, 
          'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.REPRESENTATION.ITEMS'  ) ) | ( 
          'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
          + 'SHAPE_DATA_QUALITY_INSPECTION_RESULT_REPRESENTATION'  IN TYPEOF( i1 ) ) );
    END_REPEAT;
    REPEAT i := 1 TO HIINDEX( sdqr ) BY 1;
      sdisr := sdisr + bag_to_set( USEDIN( sdqr[i], 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
          + 'SHAPE_DATA_QUALITY_INSPECTED_SHAPE_AND_RESULT_RELATIONSHIP.REP_2'  ) );
    END_REPEAT;
    REPEAT i := 1 TO HIINDEX( sdisr ) BY 1;
      results := results + sdisr[i].rep_1;
    END_REPEAT;
    RETURN( results );

  END_FUNCTION; -- relating_shape_representations_of_extreme_values (line:44096 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func RELATING_SHAPE_REPRESENTATIONS_OF_EXTREME_VALUES(
    _ ITEM: sLOCATION_OF_EXTREME_VALUE_SELECT? ) 
    -> SDAI.SET<eSHAPE_REPRESENTATION>? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( ITEM )
    if case .available(let _cached_value) = _relating_shape_representations_of_extreme_values__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.SET<eSHAPE_REPRESENTATION>
    }

    var ITEM = ITEM; SDAI.TOUCH(var: &ITEM)

    //LOCAL
    var RESULTS: SDAI.SET<eSHAPE_REPRESENTATION>?  = SDAI.SET<eSHAPE_REPRESENTATION>(SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &RESULTS)
    var EXTI: SDAI.SET<eEXTREME_INSTANCE>?  = SDAI.SET<eEXTREME_INSTANCE>(SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &EXTI)
    var II_EI: SDAI.SET<eINSTANCE_REPORT_ITEM_WITH_EXTREME_INSTANCES>?  = 
      SDAI.SET<eINSTANCE_REPORT_ITEM_WITH_EXTREME_INSTANCES>(SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &II_EI)
    var SDIIR: SDAI.SET<eSHAPE_DATA_QUALITY_INSPECTION_INSTANCE_REPORT>?  = 
      SDAI.SET<eSHAPE_DATA_QUALITY_INSPECTION_INSTANCE_REPORT>(SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &SDIIR)
    var SDQR: SDAI.SET<eSHAPE_DATA_QUALITY_INSPECTION_RESULT_REPRESENTATION>?  = 
      SDAI.SET<eSHAPE_DATA_QUALITY_INSPECTION_RESULT_REPRESENTATION>(SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &SDQR)
    var SDISR: SDAI.SET<eSHAPE_DATA_QUALITY_INSPECTED_SHAPE_AND_RESULT_RELATIONSHIP>?  = 
      SDAI.SET<eSHAPE_DATA_QUALITY_INSPECTED_SHAPE_AND_RESULT_RELATIONSHIP>(SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &SDISR)
    //END_LOCAL

    
    let _TEMP1 = SDAI.USEDIN(T: ITEM, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
      .eEXTREME_INSTANCE.LOCATIONS_OF_EXTREME_VALUE)
    let _TEMP2 = BAG_TO_SET(_TEMP1)
    let _TEMP3 = EXTI + _TEMP2
    EXTI = SDAI.SET<eEXTREME_INSTANCE>(generic: /*SDAI.SET<runtime>*/_TEMP3)
    if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.HIINDEX(
      EXTI)) {
      for I in incrementControl {
        
        let _TEMP4 = EXTI?[I]
        let _TEMP5 = SDAI.USEDIN(T: _TEMP4, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
          .eINSTANCE_REPORT_ITEM_WITH_EXTREME_INSTANCES.EXTREME_INSTANCES)
        let _TEMP6 = BAG_TO_SET(_TEMP5)
        let _TEMP7 = II_EI + _TEMP6
        II_EI = SDAI.SET<eINSTANCE_REPORT_ITEM_WITH_EXTREME_INSTANCES>(generic: /*SDAI.SET<runtime>*/_TEMP7)
      }
    }
    if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.HIINDEX(
      II_EI)) {
      for I in incrementControl {
        
        let _TEMP8 = II_EI?[I]
        let _TEMP9 = SDAI.USEDIN(T: _TEMP8, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
          .eSHAPE_DATA_QUALITY_INSPECTION_INSTANCE_REPORT.INSPECTED_INSTANCES)
        let _TEMP10 = BAG_TO_SET(_TEMP9)
        let _TEMP11 = SDIIR + _TEMP10
        SDIIR = SDAI.SET<eSHAPE_DATA_QUALITY_INSPECTION_INSTANCE_REPORT>(generic: /*SDAI.SET<runtime>*/
          _TEMP11)
      }
    }
    if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.HIINDEX(
      SDIIR)) {
      for I in incrementControl {
        
        let _TEMP12 = SDIIR?[I]
        let _TEMP13 = _TEMP12?.INSPECTION_RESULT
        let _TEMP14 = SDAI.USEDIN(T: _TEMP13, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
          .eREPRESENTATION.ITEMS)
        let _TEMP15 = BAG_TO_SET(_TEMP14)
        let _TEMP16 = _TEMP15?.QUERY{ I1 in 

            let _TEMP1 = SDAI.TYPEOF(I1, IS: eSHAPE_DATA_QUALITY_INSPECTION_RESULT_REPRESENTATION.self)
            return _TEMP1 }
        let _TEMP17 = SDQR + _TEMP16
        SDQR = SDAI.SET<eSHAPE_DATA_QUALITY_INSPECTION_RESULT_REPRESENTATION>(generic: /*SDAI.SET<runtime>*/
          _TEMP17)
      }
    }
    if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.HIINDEX(
      SDQR)) {
      for I in incrementControl {
        
        let _TEMP18 = SDQR?[I]
        let _TEMP19 = SDAI.USEDIN(T: _TEMP18, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
          .eSHAPE_DATA_QUALITY_INSPECTED_SHAPE_AND_RESULT_RELATIONSHIP.REP_2)
        let _TEMP20 = BAG_TO_SET(_TEMP19)
        let _TEMP21 = SDISR + _TEMP20
        SDISR = SDAI.SET<eSHAPE_DATA_QUALITY_INSPECTED_SHAPE_AND_RESULT_RELATIONSHIP>(generic: /*SDAI.SET<
          runtime>*/_TEMP21)
      }
    }
    if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.HIINDEX(
      SDISR)) {
      for I in incrementControl {
        
        let _TEMP22 = SDISR?[I]
        let _TEMP23 = _TEMP22?.REP_1
        let _TEMP24 = RESULTS + _TEMP23
        RESULTS = _TEMP24
      }
    }
    return _relating_shape_representations_of_extreme_values__cache.updateCache(params: _params, value: 
      RESULTS)
  }

}

//MARK: - function result cache
private var _relating_shape_representations_of_extreme_values__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)
