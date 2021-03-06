/* file: validate_inspected_elements_type.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  FUNCTION validate_inspected_elements_type(
               ei : shape_data_quality_criterion;
               type_list : BAG OF STRING
           ) : LOGICAL;

    LOCAL
      sdqir       : SET OF shape_data_quality_inspection_result := [];
      sdir        : SET OF shape_data_quality_inspection_instance_report := [];
      sdiri       : SET OF shape_data_quality_inspection_instance_report_item := [];
      t_type_list : BAG OF STRING := [];
    END_LOCAL;
    sdqir := QUERY ( q <* bag_to_set( USEDIN( ei, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
        + 'DATA_QUALITY_INSPECTION_RESULT.CRITERION_INSPECTED'  ) ) | ( 
        'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_DATA_QUALITY_INSPECTION_RESULT'  IN TYPEOF( q ) ) );
    IF SIZEOF( sdqir ) = 0 THEN
      RETURN( TRUE );
    END_IF;
    REPEAT i := 1 TO SIZEOF( sdqir ) BY 1;
      sdir := sdir + QUERY ( q <* bag_to_set( USEDIN( sdqir[i], 
          'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DATA_QUALITY_INSPECTION_REPORT.INSPECTION_RESULT'  ) )
          | ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_DATA_QUALITY_INSPECTION_INSTANCE_REPORT' 
          IN TYPEOF( q ) ) );
    END_REPEAT;
    IF SIZEOF( sdir ) = 0 THEN
      RETURN( TRUE );
    END_IF;
    REPEAT i := 1 TO SIZEOF( sdir ) BY 1;
      sdiri := sdiri + QUERY ( q <* sdir[i].inspected_instances | ( 
          'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_DATA_QUALITY_INSPECTION_INSTANCE_REPORT_ITEM'  
          IN TYPEOF( q ) ) );
    END_REPEAT;
    IF SIZEOF( sdiri ) = 0 THEN
      RETURN( TRUE );
    END_IF;
    REPEAT i := 1 TO SIZEOF( sdiri ) BY 1;
      IF SIZEOF( sdiri[i].inspected_elements ) <> SIZEOF( type_list ) THEN
        RETURN( FALSE );
      END_IF;
      t_type_list := type_list;
      REPEAT j := 1 TO SIZEOF( sdiri[i].inspected_elements ) BY 1;
        REPEAT k := 1 TO SIZEOF( t_type_list ) BY 1;
          IF t_type_list[k] IN TYPEOF( sdiri[i].inspected_elements[j] ) THEN
            t_type_list := t_type_list - t_type_list[k];
            ESCAPE;
          END_IF;
        END_REPEAT;
      END_REPEAT;
      IF SIZEOF( t_type_list ) > 0 THEN
        RETURN( FALSE );
      END_IF;
    END_REPEAT;
    RETURN( TRUE );

  END_FUNCTION; -- validate_inspected_elements_type (line:48327 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func VALIDATE_INSPECTED_ELEMENTS_TYPE(
    EI: eSHAPE_DATA_QUALITY_CRITERION? , TYPE_LIST: SDAI.BAG<SDAI.STRING>? ) 
    -> SDAI.LOGICAL {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( EI, TYPE_LIST )
    if case .available(let _cached_value) = _validate_inspected_elements_type__cache.cachedValue(params: _params) {
      return _cached_value as! SDAI.LOGICAL
    }

    var EI = EI; SDAI.TOUCH(var: &EI)
    var TYPE_LIST = TYPE_LIST; SDAI.TOUCH(var: &TYPE_LIST)

    //LOCAL
    var SDQIR: SDAI.SET<eSHAPE_DATA_QUALITY_INSPECTION_RESULT>?  = SDAI.SET<
                                                                   eSHAPE_DATA_QUALITY_INSPECTION_RESULT>(
                                                                   SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &SDQIR)
    var SDIR: SDAI.SET<eSHAPE_DATA_QUALITY_INSPECTION_INSTANCE_REPORT>?  = 
      SDAI.SET<eSHAPE_DATA_QUALITY_INSPECTION_INSTANCE_REPORT>(SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &SDIR)
    var SDIRI: SDAI.SET<eSHAPE_DATA_QUALITY_INSPECTION_INSTANCE_REPORT_ITEM>?  = 
      SDAI.SET<eSHAPE_DATA_QUALITY_INSPECTION_INSTANCE_REPORT_ITEM>(SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &SDIRI)
    var T_TYPE_LIST: SDAI.BAG<SDAI.STRING>?  = SDAI.BAG<SDAI.STRING>(SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &T_TYPE_LIST)
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
      return _validate_inspected_elements_type__cache.updateCache(params: _params, value: SDAI.UNWRAP(SDAI.LOGICAL(
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

            let _TEMP1 = SDAI.TYPEOF(Q, IS: eSHAPE_DATA_QUALITY_INSPECTION_INSTANCE_REPORT.self)
            return _TEMP1 }
        let _TEMP10 = SDIR + _TEMP9
        SDIR = SDAI.SET<eSHAPE_DATA_QUALITY_INSPECTION_INSTANCE_REPORT>(generic: /*SDAI.SET<runtime>*/_TEMP10)
      }
    }
    
    let _TEMP11 = SDAI.SIZEOF(SDIR)
    let _TEMP12 = _TEMP11 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
    if SDAI.IS_TRUE( _TEMP12 ) {
      return _validate_inspected_elements_type__cache.updateCache(params: _params, value: SDAI.UNWRAP(SDAI.LOGICAL(
        SDAI.TRUE)))
    }
    if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.SIZEOF(
      SDIR)) {
      for I in incrementControl {
        
        let _TEMP13 = SDIR?[I]
        let _TEMP14 = _TEMP13?.INSPECTED_INSTANCES
        let _TEMP15 = _TEMP14?.QUERY{ Q in 

            let _TEMP1 = SDAI.TYPEOF(Q, IS: eSHAPE_DATA_QUALITY_INSPECTION_INSTANCE_REPORT_ITEM.self)
            return _TEMP1 }
        let _TEMP16 = SDIRI + _TEMP15
        SDIRI = _TEMP16
      }
    }
    
    let _TEMP17 = SDAI.SIZEOF(SDIRI)
    let _TEMP18 = _TEMP17 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
    if SDAI.IS_TRUE( _TEMP18 ) {
      return _validate_inspected_elements_type__cache.updateCache(params: _params, value: SDAI.UNWRAP(SDAI.LOGICAL(
        SDAI.TRUE)))
    }
    if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.SIZEOF(
      SDIRI)) {
      for I in incrementControl {
        
        let _TEMP19 = SDIRI?[I]
        let _TEMP20 = _TEMP19?.INSPECTED_ELEMENTS
        let _TEMP21 = SDAI.SIZEOF(_TEMP20)
        let _TEMP22 = SDAI.SIZEOF(TYPE_LIST)
        let _TEMP23 = _TEMP21 .!=. _TEMP22
        if SDAI.IS_TRUE( _TEMP23 ) {
          return _validate_inspected_elements_type__cache.updateCache(params: _params, value: SDAI.UNWRAP(
            SDAI.LOGICAL(SDAI.FALSE)))
        }
        T_TYPE_LIST = TYPE_LIST
        if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/
          SDAI.SIZEOF(SDIRI?[I]?.INSPECTED_ELEMENTS)) {
          for J in incrementControl {
            if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/
              SDAI.SIZEOF(T_TYPE_LIST)) {
              for K in incrementControl {
                
                let _TEMP24 = T_TYPE_LIST?[K]
                let _TEMP25 = SDIRI?[I]
                let _TEMP26 = _TEMP25?.INSPECTED_ELEMENTS
                let _TEMP27 = _TEMP26?[J]
                let _TEMP28 = SDAI.TYPEOF(_TEMP27)
                let _TEMP29 = SDAI.aggregate(_TEMP28, contains: _TEMP24)
                if SDAI.IS_TRUE( _TEMP29 ) {
                  
                  let _TEMP30 = T_TYPE_LIST?[K]
                  let _TEMP31 = T_TYPE_LIST - _TEMP30
                  T_TYPE_LIST = _TEMP31
                  break
                }
              }
            }
          }
        }
        
        let _TEMP32 = SDAI.SIZEOF(T_TYPE_LIST)
        let _TEMP33 = _TEMP32 > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
        if SDAI.IS_TRUE( _TEMP33 ) {
          return _validate_inspected_elements_type__cache.updateCache(params: _params, value: SDAI.UNWRAP(
            SDAI.LOGICAL(SDAI.FALSE)))
        }
      }
    }
    return _validate_inspected_elements_type__cache.updateCache(params: _params, value: SDAI.UNWRAP(SDAI.LOGICAL(
      SDAI.TRUE)))
  }

}

//MARK: - function result cache
private var _validate_inspected_elements_type__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

