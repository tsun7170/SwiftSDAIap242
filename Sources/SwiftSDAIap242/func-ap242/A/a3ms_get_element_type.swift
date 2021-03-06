/* file: a3ms_get_element_type.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  FUNCTION a3ms_get_element_type(
               ei : SET [1 : ?] OF inspected_equivalence_element_select
           ) : a3ms_element_type_name;

    LOCAL
      type_out : SET OF STRING;
    END_LOCAL;
    type_out := TYPEOF( ei[1] );
    IF SIZEOF( ei ) > 1 THEN
      RETURN( etns_others );
    END_IF;
    IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CONNECTED_EDGE_SET' IN type_out THEN
      RETURN( etns_connected_edge_set );
    END_IF;
    IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CONNECTED_FACE_SET' IN type_out THEN
      RETURN( etns_connected_face_set );
    END_IF;
    IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.MANIFOLD_SOLID_BREP' IN type_out THEN
      RETURN( etns_manifold_solid_brep );
    END_IF;
    IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.POINT_CLOUD_DATASET' IN type_out THEN
      RETURN( etns_point_cloud_dataset );
    END_IF;
    IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHELL_BASED_SURFACE_MODEL' IN type_out THEN
      RETURN( etns_shell_based_surface_model );
    END_IF;
    IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHELL_BASED_WIREFRAME_MODEL' IN type_out THEN
      RETURN( etns_shell_based_wireframe_model );
    END_IF;
    IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.VERTEX_POINT' IN type_out THEN
      RETURN( etns_vertex_point );
    END_IF;
    IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.EXTERNALLY_DEFINED_REPRESENTATION_ITEM' IN type_out
        THEN
      RETURN( etns_external_representation_item );
    END_IF;
    RETURN( etns_others );

  END_FUNCTION; -- a3ms_get_element_type (line:34428 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func A3MS_GET_ELEMENT_TYPE(_ EI: (SDAI.SET<sINSPECTED_EQUIVALENCE_ELEMENT_SELECT>/*[1:nil]*/ )? ) 
    -> nA3MS_ELEMENT_TYPE_NAME? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( EI )
    if case .available(let _cached_value) = _a3ms_get_element_type__cache.cachedValue(params: _params) {
      return _cached_value as? nA3MS_ELEMENT_TYPE_NAME
    }

    var EI = EI; SDAI.TOUCH(var: &EI)

    //LOCAL
    var TYPE_OUT: SDAI.SET<SDAI.STRING>? 

    
    let _TEMP1 = EI?[1]
    let _TEMP2 = SDAI.TYPEOF(_TEMP1)
    TYPE_OUT = _TEMP2
    
    let _TEMP3 = SDAI.SIZEOF(EI)
    let _TEMP4 = _TEMP3 > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
    if SDAI.IS_TRUE( _TEMP4 ) {
      return _a3ms_get_element_type__cache.updateCache(params: _params, value: nA3MS_ELEMENT_TYPE_NAME(/*
        nA3M_ELEMENT_TYPE_NAME*/ETNS_OTHERS))
    }
    
    let _TEMP5 = SDAI.aggregate(TYPE_OUT, contains: SDAI.STRING(
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CONNECTED_EDGE_SET"))
    if SDAI.IS_TRUE( _TEMP5 ) {
      return _a3ms_get_element_type__cache.updateCache(params: _params, value: nA3MS_ELEMENT_TYPE_NAME(/*
        nA3M_ELEMENT_TYPE_NAME*/ETNS_CONNECTED_EDGE_SET))
    }
    
    let _TEMP6 = SDAI.aggregate(TYPE_OUT, contains: SDAI.STRING(
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CONNECTED_FACE_SET"))
    if SDAI.IS_TRUE( _TEMP6 ) {
      return _a3ms_get_element_type__cache.updateCache(params: _params, value: nA3MS_ELEMENT_TYPE_NAME(/*
        nA3M_ELEMENT_TYPE_NAME*/ETNS_CONNECTED_FACE_SET))
    }
    
    let _TEMP7 = SDAI.aggregate(TYPE_OUT, contains: SDAI.STRING(
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.MANIFOLD_SOLID_BREP"))
    if SDAI.IS_TRUE( _TEMP7 ) {
      return _a3ms_get_element_type__cache.updateCache(params: _params, value: nA3MS_ELEMENT_TYPE_NAME(/*
        nA3M_ELEMENT_TYPE_NAME*/ETNS_MANIFOLD_SOLID_BREP))
    }
    
    let _TEMP8 = SDAI.aggregate(TYPE_OUT, contains: SDAI.STRING(
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.POINT_CLOUD_DATASET"))
    if SDAI.IS_TRUE( _TEMP8 ) {
      return _a3ms_get_element_type__cache.updateCache(params: _params, value: nA3MS_ELEMENT_TYPE_NAME(/*
        nA3M_ELEMENT_TYPE_NAME*/ETNS_POINT_CLOUD_DATASET))
    }
    
    let _TEMP9 = SDAI.aggregate(TYPE_OUT, contains: SDAI.STRING(
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHELL_BASED_SURFACE_MODEL"))
    if SDAI.IS_TRUE( _TEMP9 ) {
      return _a3ms_get_element_type__cache.updateCache(params: _params, value: nA3MS_ELEMENT_TYPE_NAME(/*
        nA3M_ELEMENT_TYPE_NAME*/ETNS_SHELL_BASED_SURFACE_MODEL))
    }
    
    let _TEMP10 = SDAI.aggregate(TYPE_OUT, contains: SDAI.STRING(
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHELL_BASED_WIREFRAME_MODEL"))
    if SDAI.IS_TRUE( _TEMP10 ) {
      return _a3ms_get_element_type__cache.updateCache(params: _params, value: nA3MS_ELEMENT_TYPE_NAME(/*
        nA3M_ELEMENT_TYPE_NAME*/ETNS_SHELL_BASED_WIREFRAME_MODEL))
    }
    
    let _TEMP11 = SDAI.aggregate(TYPE_OUT, contains: SDAI.STRING(
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.VERTEX_POINT"))
    if SDAI.IS_TRUE( _TEMP11 ) {
      return _a3ms_get_element_type__cache.updateCache(params: _params, value: nA3MS_ELEMENT_TYPE_NAME(/*
        nA3M_ELEMENT_TYPE_NAME*/ETNS_VERTEX_POINT))
    }
    
    let _TEMP12 = SDAI.aggregate(TYPE_OUT, contains: SDAI.STRING(
      "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.EXTERNALLY_DEFINED_REPRESENTATION_ITEM"))
    if SDAI.IS_TRUE( _TEMP12 ) {
      return _a3ms_get_element_type__cache.updateCache(params: _params, value: nA3MS_ELEMENT_TYPE_NAME(/*
        nA3M_ELEMENT_TYPE_NAME*/ETNS_EXTERNAL_REPRESENTATION_ITEM))
    }
    return _a3ms_get_element_type__cache.updateCache(params: _params, value: nA3MS_ELEMENT_TYPE_NAME(/*
      nA3M_ELEMENT_TYPE_NAME*/ETNS_OTHERS))
  }

}

//MARK: - function result cache
private var _a3ms_get_element_type__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

