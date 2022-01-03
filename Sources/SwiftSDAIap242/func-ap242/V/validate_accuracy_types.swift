/* file: validate_accuracy_types.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  FUNCTION validate_accuracy_types(
               ei : shape_data_quality_criterion;
               type_list : BAG OF STRING
           ) : LOGICAL;

    LOCAL
      sdqca   : BAG OF shape_data_quality_criterion_and_accuracy_association := [];
      sma     : BAG OF shape_measurement_accuracy := [];
      sdqir   : SET OF shape_data_quality_inspection_result := [];
      scraa   : BAG OF shape_inspection_result_accuracy_association := [];
      t_logic : BOOLEAN;
    END_LOCAL;
    sdqca := USEDIN( ei, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
        + 'SHAPE_DATA_QUALITY_CRITERION_AND_ACCURACY_ASSOCIATION.SHAPE_DATA_QUALITY_CRITERION'  );
    IF SIZEOF( sdqca ) <> 0 THEN
      REPEAT i := 1 TO SIZEOF( sdqca ) BY 1;
        sma := sma + sdqca[i].required_specific_accuracy;
      END_REPEAT;
      IF SIZEOF( type_list ) < SIZEOF( sma ) THEN
        RETURN( FALSE );
      END_IF;
      REPEAT i := 1 TO SIZEOF( sma ) BY 1;
        t_logic := FALSE;
        REPEAT j := 1 TO SIZEOF( type_list ) BY 1;
          IF type_list[j] IN value_limit_type( sma[i].range ) THEN
            t_logic := TRUE;
            ESCAPE;
          END_IF;
        END_REPEAT;
        IF NOT t_logic THEN
          RETURN( FALSE );
        END_IF;
      END_REPEAT;
    END_IF;
    sdqir := QUERY ( q <* bag_to_set( USEDIN( ei, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
        + 'DATA_QUALITY_INSPECTION_RESULT.CRITERION_INSPECTED'  ) ) | ( 
        'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_DATA_QUALITY_INSPECTION_RESULT'  IN TYPEOF( q ) ) );
    IF SIZEOF( sdqir ) = 0 THEN
      RETURN( TRUE );
    END_IF;
    REPEAT i := 1 TO SIZEOF( sdqir ) BY 1;
      scraa := USEDIN( sdqir[i], 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
          + 'SHAPE_INSPECTION_RESULT_ACCURACY_ASSOCIATION.SHAPE_DATA_QUALITY_RESULT'  );
      IF SIZEOF( scraa ) <> 0 THEN
        sma := [];
        REPEAT j := 1 TO SIZEOF( scraa ) BY 1;
          sma := sma + scraa[j].applied_specific_accuracy;
        END_REPEAT;
        IF SIZEOF( type_list ) < SIZEOF( sma ) THEN
          RETURN( FALSE );
        END_IF;
        REPEAT j := 1 TO SIZEOF( sma ) BY 1;
          t_logic := FALSE;
          REPEAT k := 1 TO SIZEOF( type_list ) BY 1;
            IF type_list[k] IN value_limit_type( sma[j].range ) THEN
              t_logic := TRUE;
              ESCAPE;
            END_IF;
          END_REPEAT;
          IF NOT t_logic THEN
            RETURN( FALSE );
          END_IF;
        END_REPEAT;
      END_IF;
    END_REPEAT;
    RETURN( TRUE );

  END_FUNCTION; -- validate_accuracy_types (line:48057 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func VALIDATE_ACCURACY_TYPES(EI: eSHAPE_DATA_QUALITY_CRITERION? , TYPE_LIST: SDAI.BAG<SDAI.STRING>? ) 
    -> SDAI.LOGICAL {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( EI, TYPE_LIST )
    if case .available(let _cached_value) = _validate_accuracy_types__cache.cachedValue(params: _params) {
      return _cached_value as! SDAI.LOGICAL
    }

    var EI = EI; SDAI.TOUCH(var: &EI)
    var TYPE_LIST = TYPE_LIST; SDAI.TOUCH(var: &TYPE_LIST)

    //LOCAL
    var SDQCA: SDAI.BAG<eSHAPE_DATA_QUALITY_CRITERION_AND_ACCURACY_ASSOCIATION>?  = 
      SDAI.BAG<eSHAPE_DATA_QUALITY_CRITERION_AND_ACCURACY_ASSOCIATION>(SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &SDQCA)
    var SMA: SDAI.BAG<eSHAPE_MEASUREMENT_ACCURACY>?  = SDAI.BAG<eSHAPE_MEASUREMENT_ACCURACY>(
                                                       SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &SMA)
    var SDQIR: SDAI.SET<eSHAPE_DATA_QUALITY_INSPECTION_RESULT>?  = SDAI.SET<
                                                                   eSHAPE_DATA_QUALITY_INSPECTION_RESULT>(
                                                                   SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &SDQIR)
    var SCRAA: SDAI.BAG<eSHAPE_INSPECTION_RESULT_ACCURACY_ASSOCIATION>?  = 
      SDAI.BAG<eSHAPE_INSPECTION_RESULT_ACCURACY_ASSOCIATION>(SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &SCRAA)
    var T_LOGIC: SDAI.BOOLEAN? 
    //END_LOCAL

    
    let _TEMP1 = SDAI.USEDIN(T: EI, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
      .eSHAPE_DATA_QUALITY_CRITERION_AND_ACCURACY_ASSOCIATION.SHAPE_DATA_QUALITY_CRITERION)
    SDQCA = SDAI.BAG<eSHAPE_DATA_QUALITY_CRITERION_AND_ACCURACY_ASSOCIATION>(/*SDAI.BAG<SDAI.GENERIC_ENTITY>*/
      _TEMP1)
    
    let _TEMP2 = SDAI.SIZEOF(SDQCA)
    let _TEMP3 = _TEMP2 .!=. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
    if SDAI.IS_TRUE( _TEMP3 ) {
      if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.SIZEOF(
        SDQCA)) {
        for I in incrementControl {
          
          let _TEMP4 = SDQCA?[I]
          let _TEMP5 = _TEMP4?.REQUIRED_SPECIFIC_ACCURACY
          let _TEMP6 = SMA + _TEMP5
          SMA = _TEMP6
        }
      }
      
      let _TEMP7 = SDAI.SIZEOF(TYPE_LIST)
      let _TEMP8 = SDAI.SIZEOF(SMA)
      let _TEMP9 = _TEMP7 < _TEMP8
      if SDAI.IS_TRUE( _TEMP9 ) {
        return _validate_accuracy_types__cache.updateCache(params: _params, value: SDAI.UNWRAP(SDAI.LOGICAL(
          SDAI.FALSE)))
      }
      if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.SIZEOF(
        SMA)) {
        for I in incrementControl {
          T_LOGIC = SDAI.BOOLEAN(SDAI.FALSE)
          if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/
            SDAI.SIZEOF(TYPE_LIST)) {
            for J in incrementControl {
              
              let _TEMP10 = TYPE_LIST?[J]
              let _TEMP11 = SMA?[I]
              let _TEMP12 = _TEMP11?.RANGE
              let _TEMP13 = VALUE_LIMIT_TYPE(_TEMP12)
              let _TEMP14 = SDAI.aggregate(_TEMP13, contains: _TEMP10)
              if SDAI.IS_TRUE( _TEMP14 ) {
                T_LOGIC = SDAI.BOOLEAN(SDAI.TRUE)
                break
              }
            }
          }
          if SDAI.IS_TRUE( (  !T_LOGIC ) ) {
            return _validate_accuracy_types__cache.updateCache(params: _params, value: SDAI.UNWRAP(SDAI.LOGICAL(
              SDAI.FALSE)))
          }
        }
      }
    }
    
    let _TEMP15 = SDAI.USEDIN(T: EI, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
      .eDATA_QUALITY_INSPECTION_RESULT.CRITERION_INSPECTED)
    let _TEMP16 = BAG_TO_SET(_TEMP15)
    let _TEMP17 = _TEMP16?.QUERY{ Q in 

        let _TEMP1 = SDAI.TYPEOF(Q, IS: eSHAPE_DATA_QUALITY_INSPECTION_RESULT.self)
        return _TEMP1 }
    SDQIR = SDAI.SET<eSHAPE_DATA_QUALITY_INSPECTION_RESULT>(generic: /*SDAI.SET<gINTYPE>*/_TEMP17)
    
    let _TEMP18 = SDAI.SIZEOF(SDQIR)
    let _TEMP19 = _TEMP18 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
    if SDAI.IS_TRUE( _TEMP19 ) {
      return _validate_accuracy_types__cache.updateCache(params: _params, value: SDAI.UNWRAP(SDAI.LOGICAL(
        SDAI.TRUE)))
    }
    if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.SIZEOF(
      SDQIR)) {
      for I in incrementControl {
        
        let _TEMP20 = SDQIR?[I]
        let _TEMP21 = SDAI.USEDIN(T: _TEMP20, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
          .eSHAPE_INSPECTION_RESULT_ACCURACY_ASSOCIATION.SHAPE_DATA_QUALITY_RESULT)
        SCRAA = SDAI.BAG<eSHAPE_INSPECTION_RESULT_ACCURACY_ASSOCIATION>(/*SDAI.BAG<SDAI.GENERIC_ENTITY>*/
          _TEMP21)
        
        let _TEMP22 = SDAI.SIZEOF(SCRAA)
        let _TEMP23 = _TEMP22 .!=. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
        if SDAI.IS_TRUE( _TEMP23 ) {
          
          let _TEMP24 = SDAI.BAG<eSHAPE_MEASUREMENT_ACCURACY>(SDAI.EMPLY_AGGREGATE)
          SMA = _TEMP24
          if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/
            SDAI.SIZEOF(SCRAA)) {
            for J in incrementControl {
              
              let _TEMP25 = SCRAA?[J]
              let _TEMP26 = _TEMP25?.APPLIED_SPECIFIC_ACCURACY
              let _TEMP27 = SMA + _TEMP26
              SMA = _TEMP27
            }
          }
          
          let _TEMP28 = SDAI.SIZEOF(TYPE_LIST)
          let _TEMP29 = SDAI.SIZEOF(SMA)
          let _TEMP30 = _TEMP28 < _TEMP29
          if SDAI.IS_TRUE( _TEMP30 ) {
            return _validate_accuracy_types__cache.updateCache(params: _params, value: SDAI.UNWRAP(SDAI.LOGICAL(
              SDAI.FALSE)))
          }
          if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/
            SDAI.SIZEOF(SMA)) {
            for J in incrementControl {
              T_LOGIC = SDAI.BOOLEAN(SDAI.FALSE)
              if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/
                SDAI.SIZEOF(TYPE_LIST)) {
                for K in incrementControl {
                  
                  let _TEMP31 = TYPE_LIST?[K]
                  let _TEMP32 = SMA?[J]
                  let _TEMP33 = _TEMP32?.RANGE
                  let _TEMP34 = VALUE_LIMIT_TYPE(_TEMP33)
                  let _TEMP35 = SDAI.aggregate(_TEMP34, contains: _TEMP31)
                  if SDAI.IS_TRUE( _TEMP35 ) {
                    T_LOGIC = SDAI.BOOLEAN(SDAI.TRUE)
                    break
                  }
                }
              }
              if SDAI.IS_TRUE( (  !T_LOGIC ) ) {
                return _validate_accuracy_types__cache.updateCache(params: _params, value: SDAI.UNWRAP(SDAI.LOGICAL(
                  SDAI.FALSE)))
              }
            }
          }
        }
      }
    }
    return _validate_accuracy_types__cache.updateCache(params: _params, value: SDAI.UNWRAP(SDAI.LOGICAL(
      SDAI.TRUE)))
  }

}

//MARK: - function result cache
private var _validate_accuracy_types__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

