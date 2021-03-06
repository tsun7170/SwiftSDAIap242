/* file: a3ma_get_value_limit_type.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  FUNCTION a3ma_get_value_limit_type(
               ei : shape_data_quality_value_limit_type_select
           ) : a3ma_measured_data_type_name;

    LOCAL
      type_out : SET OF STRING;
    END_LOCAL;
    type_out := value_limit_type( ei );
    IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CONTEXT_DEPENDENT_MEASURE' IN type_out THEN
      RETURN( mdna_context_dependent_measure );
    END_IF;
    IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.LENGTH_MEASURE' IN type_out THEN
      RETURN( mdna_length_measure );
    END_IF;
    IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PLANE_ANGLE_MEASURE' IN type_out THEN
      RETURN( mdna_plane_angle_measure );
    END_IF;
    IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.VOLUME_MEASURE' IN type_out THEN
      RETURN( mdna_volume_measure );
    END_IF;
    RETURN( mdna_others );

  END_FUNCTION; -- a3ma_get_value_limit_type (line:34066 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func A3MA_GET_VALUE_LIMIT_TYPE(_ EI: sSHAPE_DATA_QUALITY_VALUE_LIMIT_TYPE_SELECT? ) 
    -> nA3MA_MEASURED_DATA_TYPE_NAME? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( EI )
    if case .available(let _cached_value) = _a3ma_get_value_limit_type__cache.cachedValue(params: _params) {
      return _cached_value as? nA3MA_MEASURED_DATA_TYPE_NAME
    }

    var EI = EI; SDAI.TOUCH(var: &EI)

    //LOCAL
    var TYPE_OUT: SDAI.SET<SDAI.STRING>? 

    
    let _TEMP1 = VALUE_LIMIT_TYPE(EI)
    TYPE_OUT = _TEMP1
    
    let _TEMP2 = SDAI.aggregate(TYPE_OUT, contains: SDAI.STRING(
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CONTEXT_DEPENDENT_MEASURE"))
    if SDAI.IS_TRUE( _TEMP2 ) {
      return _a3ma_get_value_limit_type__cache.updateCache(params: _params, value: 
        nA3MA_MEASURED_DATA_TYPE_NAME(/*nA3M_MEASURED_DATA_TYPE_NAME*/MDNA_CONTEXT_DEPENDENT_MEASURE))
    }
    
    let _TEMP3 = SDAI.aggregate(TYPE_OUT, contains: SDAI.STRING(
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.LENGTH_MEASURE"))
    if SDAI.IS_TRUE( _TEMP3 ) {
      return _a3ma_get_value_limit_type__cache.updateCache(params: _params, value: 
        nA3MA_MEASURED_DATA_TYPE_NAME(/*nA3M_MEASURED_DATA_TYPE_NAME*/MDNA_LENGTH_MEASURE))
    }
    
    let _TEMP4 = SDAI.aggregate(TYPE_OUT, contains: SDAI.STRING(
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PLANE_ANGLE_MEASURE"))
    if SDAI.IS_TRUE( _TEMP4 ) {
      return _a3ma_get_value_limit_type__cache.updateCache(params: _params, value: 
        nA3MA_MEASURED_DATA_TYPE_NAME(/*nA3M_MEASURED_DATA_TYPE_NAME*/MDNA_PLANE_ANGLE_MEASURE))
    }
    
    let _TEMP5 = SDAI.aggregate(TYPE_OUT, contains: SDAI.STRING(
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.VOLUME_MEASURE"))
    if SDAI.IS_TRUE( _TEMP5 ) {
      return _a3ma_get_value_limit_type__cache.updateCache(params: _params, value: 
        nA3MA_MEASURED_DATA_TYPE_NAME(/*nA3M_MEASURED_DATA_TYPE_NAME*/MDNA_VOLUME_MEASURE))
    }
    return _a3ma_get_value_limit_type__cache.updateCache(params: _params, value: 
      nA3MA_MEASURED_DATA_TYPE_NAME(/*nA3M_MEASURED_DATA_TYPE_NAME*/MDNA_OTHERS))
  }

}

//MARK: - function result cache
private var _a3ma_get_value_limit_type__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

