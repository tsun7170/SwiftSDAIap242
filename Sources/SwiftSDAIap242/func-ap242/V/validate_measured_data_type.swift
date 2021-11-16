/* file: validate_measured_data_type.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  FUNCTION validate_measured_data_type(
               ei : shape_data_quality_criterion;
               type_string : STRING
           ) : LOGICAL;

    LOCAL
      sdqir : SET OF shape_data_quality_inspection_result := [];
      sdcr  : SET OF shape_data_quality_inspection_criterion_report := [];
      sdir  : SET OF shape_data_quality_inspection_instance_report := [];
      sdii  : SET OF shape_data_quality_inspection_instance_report_item := [];
      sdei  : BAG OF instance_report_item_with_extreme_instances := [];
    END_LOCAL;
    sdqir := QUERY ( q <* bag_to_set( USEDIN( ei, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
        + 'DATA_QUALITY_INSPECTION_RESULT.CRITERION_INSPECTED'  ) ) | ( 
        'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_DATA_QUALITY_INSPECTION_RESULT'  IN TYPEOF( q ) ) );
    IF SIZEOF( sdqir ) = 0 THEN
      RETURN( TRUE );
    END_IF;
    REPEAT i := 1 TO SIZEOF( sdqir ) BY 1;
      sdcr := sdcr + QUERY ( q <* bag_to_set( USEDIN( sdqir[i], 
          'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DATA_QUALITY_INSPECTION_REPORT.INSPECTION_RESULT'  ) )
          | ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_DATA_QUALITY_INSPECTION_CRITERION_REPORT' 
          IN TYPEOF( q ) ) );
    END_REPEAT;
    REPEAT i := 1 TO SIZEOF( sdqir ) BY 1;
      sdir := sdir + QUERY ( q <* bag_to_set( USEDIN( sdqir[i], 
          'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DATA_QUALITY_INSPECTION_REPORT.INSPECTION_RESULT'  ) )
          | ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_DATA_QUALITY_INSPECTION_INSTANCE_REPORT' 
          IN TYPEOF( q ) ) );
    END_REPEAT;
    IF ( SIZEOF( sdcr ) = 0 ) AND ( SIZEOF( sdir ) = 0 ) THEN
      RETURN( TRUE );
    END_IF;
    REPEAT i := 1 TO SIZEOF( sdir ) BY 1;
      sdii := sdii + QUERY ( q <* sdir[i].inspected_instances | ( 
          'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_DATA_QUALITY_INSPECTION_INSTANCE_REPORT_ITEM'  
          IN TYPEOF( q ) ) );
    END_REPEAT;
    REPEAT i := 1 TO SIZEOF( sdir ) BY 1;
      sdei := sdei + QUERY ( q <* sdir[i].inspected_instances | ( 
          'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.INSTANCE_REPORT_ITEM_WITH_EXTREME_INSTANCES'  IN 
          TYPEOF( q ) ) );
    END_REPEAT;
    REPEAT i := 1 TO SIZEOF( sdcr ) BY 1;
      IF NOT ( type_string IN TYPEOF( sdcr[i].representative_measured_value ) ) THEN
        RETURN( FALSE );
      END_IF;
    END_REPEAT;
    REPEAT i := 1 TO SIZEOF( sdii ) BY 1;
      IF NOT ( type_string IN TYPEOF( sdii[i].measured_value ) ) THEN
        RETURN( FALSE );
      END_IF;
    END_REPEAT;
    REPEAT i := 1 TO SIZEOF( sdei ) BY 1;
      REPEAT j := 1 TO SIZEOF( sdei[i].extreme_instances ) BY 1;
        IF NOT ( type_string IN TYPEOF( sdei[i].extreme_instances[j].measured_value ) ) THEN
          RETURN( FALSE );
        END_IF;
      END_REPEAT;
    END_REPEAT;
    RETURN( TRUE );

  END_FUNCTION; -- validate_measured_data_type (line:48456 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func VALIDATE_MEASURED_DATA_TYPE(EI: eSHAPE_DATA_QUALITY_CRITERION? , TYPE_STRING: SDAI.STRING? ) 
    -> SDAI.LOGICAL {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( EI, TYPE_STRING )
    if case .available(let _cached_value) = _validate_measured_data_type__cache.cachedValue(params: _params) {
      return _cached_value as! SDAI.LOGICAL
    }

    var EI = EI; SDAI.TOUCH(var: &EI)
    var TYPE_STRING = TYPE_STRING; SDAI.TOUCH(var: &TYPE_STRING)

    //LOCAL
    var SDQIR: SDAI.SET<eSHAPE_DATA_QUALITY_INSPECTION_RESULT>?  = SDAI.SET<
                                                                   eSHAPE_DATA_QUALITY_INSPECTION_RESULT>(
                                                                   SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &SDQIR)
    var SDCR: SDAI.SET<eSHAPE_DATA_QUALITY_INSPECTION_CRITERION_REPORT>?  = 
      SDAI.SET<eSHAPE_DATA_QUALITY_INSPECTION_CRITERION_REPORT>(SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &SDCR)
    var SDIR: SDAI.SET<eSHAPE_DATA_QUALITY_INSPECTION_INSTANCE_REPORT>?  = 
      SDAI.SET<eSHAPE_DATA_QUALITY_INSPECTION_INSTANCE_REPORT>(SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &SDIR)
    var SDII: SDAI.SET<eSHAPE_DATA_QUALITY_INSPECTION_INSTANCE_REPORT_ITEM>?  = 
      SDAI.SET<eSHAPE_DATA_QUALITY_INSPECTION_INSTANCE_REPORT_ITEM>(SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &SDII)
    var SDEI: SDAI.BAG<eINSTANCE_REPORT_ITEM_WITH_EXTREME_INSTANCES>?  = 
      SDAI.BAG<eINSTANCE_REPORT_ITEM_WITH_EXTREME_INSTANCES>(SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &SDEI)
    //END_LOCAL

    
    let _TEMP1 = SDAI.USEDIN(T: EI, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
      .eDATA_QUALITY_INSPECTION_RESULT.CRITERION_INSPECTED)
    let _TEMP2 = BAG_TO_SET(_TEMP1)
    let _TEMP3 = _TEMP2?.QUERY{ Q in 

        let _TEMP1 = SDAI.TYPEOF(Q, IS: eSHAPE_DATA_QUALITY_INSPECTION_RESULT.self)
        return _TEMP1 }
    SDQIR = SDAI.SET<eSHAPE_DATA_QUALITY_INSPECTION_RESULT>(generic: /*SDAI.SET<gINTYPE>*/_TEMP3)
    
    let _TEMP4 = SDAI.SIZEOF(SDQIR)
    let _TEMP5 = _TEMP4 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
    if SDAI.IS_TRUE( _TEMP5 ) {
      return _validate_measured_data_type__cache.updateCache(params: _params, value: SDAI.UNWRAP(SDAI.LOGICAL(
        SDAI.TRUE)))
    }
    if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.SIZEOF(
      SDQIR)) {
      for I in incrementControl {
        
        let _TEMP6 = SDQIR?[I]
        let _TEMP7 = SDAI.USEDIN(T: _TEMP6, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
          .eDATA_QUALITY_INSPECTION_REPORT.INSPECTION_RESULT)
        let _TEMP8 = BAG_TO_SET(_TEMP7)
        let _TEMP9 = _TEMP8?.QUERY{ Q in 

            let _TEMP1 = SDAI.TYPEOF(Q, IS: eSHAPE_DATA_QUALITY_INSPECTION_CRITERION_REPORT.self)
            return _TEMP1 }
        let _TEMP10 = SDCR + _TEMP9
        SDCR = SDAI.SET<eSHAPE_DATA_QUALITY_INSPECTION_CRITERION_REPORT>(generic: /*SDAI.SET<runtime>*/
          _TEMP10)
      }
    }
    if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.SIZEOF(
      SDQIR)) {
      for I in incrementControl {
        
        let _TEMP11 = SDQIR?[I]
        let _TEMP12 = SDAI.USEDIN(T: _TEMP11, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
          .eDATA_QUALITY_INSPECTION_REPORT.INSPECTION_RESULT)
        let _TEMP13 = BAG_TO_SET(_TEMP12)
        let _TEMP14 = _TEMP13?.QUERY{ Q in 

            let _TEMP1 = SDAI.TYPEOF(Q, IS: eSHAPE_DATA_QUALITY_INSPECTION_INSTANCE_REPORT.self)
            return _TEMP1 }
        let _TEMP15 = SDIR + _TEMP14
        SDIR = SDAI.SET<eSHAPE_DATA_QUALITY_INSPECTION_INSTANCE_REPORT>(generic: /*SDAI.SET<runtime>*/_TEMP15)
      }
    }
    
    let _TEMP16 = SDAI.SIZEOF(SDCR)
    let _TEMP17 = _TEMP16 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
    let _TEMP18 = SDAI.SIZEOF(SDIR)
    let _TEMP19 = _TEMP18 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
    let _TEMP20 = _TEMP17 && _TEMP19
    if SDAI.IS_TRUE( _TEMP20 ) {
      return _validate_measured_data_type__cache.updateCache(params: _params, value: SDAI.UNWRAP(SDAI.LOGICAL(
        SDAI.TRUE)))
    }
    if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.SIZEOF(
      SDIR)) {
      for I in incrementControl {
        
        let _TEMP21 = SDIR?[I]
        let _TEMP22 = _TEMP21?.INSPECTED_INSTANCES
        let _TEMP23 = _TEMP22?.QUERY{ Q in 

            let _TEMP1 = SDAI.TYPEOF(Q, IS: eSHAPE_DATA_QUALITY_INSPECTION_INSTANCE_REPORT_ITEM.self)
            return _TEMP1 }
        let _TEMP24 = SDII + _TEMP23
        SDII = _TEMP24
      }
    }
    if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.SIZEOF(
      SDIR)) {
      for I in incrementControl {
        
        let _TEMP25 = SDIR?[I]
        let _TEMP26 = _TEMP25?.INSPECTED_INSTANCES
        let _TEMP27 = _TEMP26?.QUERY{ Q in 

            let _TEMP1 = SDAI.TYPEOF(Q, IS: eINSTANCE_REPORT_ITEM_WITH_EXTREME_INSTANCES.self)
            return _TEMP1 }
        let _TEMP28 = SDAI.BAG<SDAI.GENERIC_ENTITY>(/*SDAI.BAG<eINSTANCE_REPORT_ITEM_WITH_EXTREME_INSTANCES>*/
          SDEI) + SDAI.LIST<SDAI.GENERIC_ENTITY>(bound1: SDAI.UNWRAP(SDAI.INTEGER(1)), bound2: (nil as SDAI.INTEGER?), 
          /*SDAI.LIST<eSHAPE_DATA_QUALITY_INSPECTION_INSTANCE_REPORT_ITEM>[1:nil] */_TEMP27)
        SDEI = SDAI.BAG<eINSTANCE_REPORT_ITEM_WITH_EXTREME_INSTANCES>(/*SDAI.BAG<SDAI.GENERIC_ENTITY>*/
          _TEMP28)
      }
    }
    if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.SIZEOF(
      SDCR)) {
      for I in incrementControl {
        
        let _TEMP29 = SDCR?[I]
        let _TEMP30 = _TEMP29?.REPRESENTATIVE_MEASURED_VALUE
        let _TEMP31 = SDAI.TYPEOF(_TEMP30)
        let _TEMP32 = SDAI.aggregate(_TEMP31, contains: TYPE_STRING)
        let _TEMP33 =  !_TEMP32
        if SDAI.IS_TRUE( _TEMP33 ) {
          return _validate_measured_data_type__cache.updateCache(params: _params, value: SDAI.UNWRAP(SDAI.LOGICAL(
            SDAI.FALSE)))
        }
      }
    }
    if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.SIZEOF(
      SDII)) {
      for I in incrementControl {
        
        let _TEMP34 = SDII?[I]
        let _TEMP35 = _TEMP34?.MEASURED_VALUE
        let _TEMP36 = SDAI.TYPEOF(_TEMP35)
        let _TEMP37 = SDAI.aggregate(_TEMP36, contains: TYPE_STRING)
        let _TEMP38 =  !_TEMP37
        if SDAI.IS_TRUE( _TEMP38 ) {
          return _validate_measured_data_type__cache.updateCache(params: _params, value: SDAI.UNWRAP(SDAI.LOGICAL(
            SDAI.FALSE)))
        }
      }
    }
    if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.SIZEOF(
      SDEI)) {
      for I in incrementControl {
        if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/
          SDAI.SIZEOF(SDEI?[I]?.EXTREME_INSTANCES)) {
          for J in incrementControl {
            
            let _TEMP39 = SDEI?[I]
            let _TEMP40 = _TEMP39?.EXTREME_INSTANCES
            let _TEMP41 = _TEMP40?[J]
            let _TEMP42 = _TEMP41?.MEASURED_VALUE
            let _TEMP43 = SDAI.TYPEOF(_TEMP42)
            let _TEMP44 = SDAI.aggregate(_TEMP43, contains: TYPE_STRING)
            let _TEMP45 =  !_TEMP44
            if SDAI.IS_TRUE( _TEMP45 ) {
              return _validate_measured_data_type__cache.updateCache(params: _params, value: SDAI.UNWRAP(
                SDAI.LOGICAL(SDAI.FALSE)))
            }
          }
        }
      }
    }
    return _validate_measured_data_type__cache.updateCache(params: _params, value: SDAI.UNWRAP(SDAI.LOGICAL(
      SDAI.TRUE)))
  }

}

//MARK: - function result cache
private var _validate_measured_data_type__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

