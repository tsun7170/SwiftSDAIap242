/* file: get_associated_mandatory_document_ids.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  FUNCTION get_associated_mandatory_document_ids(
               pdc : product_definition_context
           ) : SET OF STRING;

    LOCAL
      result        : SET OF STRING := [];
      adrs_raw      : SET OF applied_document_reference := bag_to_set( USEDIN( pdc, 
                       'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.APPLIED_DOCUMENT_REFERENCE.ITEMS'  ) );
      adrs_filtered : SET OF applied_document_reference := [];
      dpas          : SET OF document_product_association;
    END_LOCAL;
    REPEAT i := 1 TO HIINDEX( adrs_raw ) BY 1;
      IF adrs_raw[i]\document_reference.role\object_role.name = 'mandatory' THEN
        adrs_filtered := adrs_filtered + adrs_raw[i];
      END_IF;
    END_REPEAT;
    REPEAT i := 1 TO HIINDEX( adrs_filtered ) BY 1;
      dpas := bag_to_set( USEDIN( adrs_filtered[i]\document_reference.assigned_document, 
          'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DOCUMENT_PRODUCT_ASSOCIATION.RELATING_DOCUMENT'  ) );
      REPEAT j := 1 TO HIINDEX( dpas ) BY 1;
        IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DOCUMENT_PRODUCT_EQUIVALENCE' IN TYPEOF( dpas[j] )
            THEN
          IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT_DEFINITION_FORMATION' IN TYPEOF( dpas[j]
              \document_product_association.related_product ) THEN
            result := result + dpas[j]\document_product_association.related_product\
                product_definition_formation.of_product\product.id;
          END_IF;
          IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT' IN TYPEOF( dpas[j].related_product )
              THEN
            result := result + dpas[j]\document_product_association.related_product\product.id;
          END_IF;
        END_IF;
      END_REPEAT;
    END_REPEAT;
    RETURN( result );

  END_FUNCTION; -- get_associated_mandatory_document_ids (line:41453 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func GET_ASSOCIATED_MANDATORY_DOCUMENT_IDS(
    _ PDC: ePRODUCT_DEFINITION_CONTEXT? ) 
    -> SDAI.SET<SDAI.STRING>? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( PDC )
    if case .available(let _cached_value) = _get_associated_mandatory_document_ids__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.SET<SDAI.STRING>
    }

    var PDC = PDC; SDAI.TOUCH(var: &PDC)

    //LOCAL
    var RESULT: SDAI.SET<SDAI.STRING>?  = SDAI.SET<SDAI.STRING>(SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &RESULT)
    var ADRS_RAW: SDAI.SET<eAPPLIED_DOCUMENT_REFERENCE>?  = SDAI.SET<eAPPLIED_DOCUMENT_REFERENCE>(generic: /*
                                                            SDAI.SET<gINTYPE>*/BAG_TO_SET(
                                                            SDAI.USEDIN(T: PDC, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
                                                            .eAPPLIED_DOCUMENT_REFERENCE.ITEMS))); SDAI.TOUCH(var: &ADRS_RAW)
    var ADRS_FILTERED: SDAI.SET<eAPPLIED_DOCUMENT_REFERENCE>?  = SDAI.SET<eAPPLIED_DOCUMENT_REFERENCE>(
                                                                 SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &ADRS_FILTERED)
    var DPAS: SDAI.SET<eDOCUMENT_PRODUCT_ASSOCIATION>? 
    //END_LOCAL

    if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.HIINDEX(
      ADRS_RAW)) {
      for I in incrementControl {
        
        let _TEMP1 = ADRS_RAW?[I]
        let _TEMP2 = _TEMP1?.GROUP_REF(eDOCUMENT_REFERENCE.self)
        let _TEMP3 = _TEMP2?.ROLE
        let _TEMP4 = _TEMP3?.GROUP_REF(eOBJECT_ROLE.self)
        let _TEMP5 = _TEMP4?.NAME
        let _TEMP6 = _TEMP5 .==. SDAI.FORCE_OPTIONAL(SDAI.STRING("mandatory"))
        if SDAI.IS_TRUE( _TEMP6 ) {
          
          let _TEMP7 = ADRS_RAW?[I]
          let _TEMP8 = ADRS_FILTERED + _TEMP7
          ADRS_FILTERED = _TEMP8
        }
      }
    }
    if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.HIINDEX(
      ADRS_FILTERED)) {
      for I in incrementControl {
        
        let _TEMP9 = ADRS_FILTERED?[I]
        let _TEMP10 = _TEMP9?.GROUP_REF(eDOCUMENT_REFERENCE.self)
        let _TEMP11 = _TEMP10?.ASSIGNED_DOCUMENT
        let _TEMP12 = SDAI.USEDIN(T: _TEMP11, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
          .eDOCUMENT_PRODUCT_ASSOCIATION.RELATING_DOCUMENT)
        let _TEMP13 = BAG_TO_SET(_TEMP12)
        DPAS = SDAI.SET<eDOCUMENT_PRODUCT_ASSOCIATION>(generic: /*SDAI.SET<gINTYPE>*/_TEMP13)
        if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/
          SDAI.HIINDEX(DPAS)) {
          for J in incrementControl {
            
            let _TEMP14 = SDAI.TYPEOF(DPAS?[J], IS: eDOCUMENT_PRODUCT_EQUIVALENCE.self)
            if SDAI.IS_TRUE( _TEMP14 ) {
              
              let _TEMP15 = SDAI.TYPEOF(DPAS?[J]?.GROUP_REF(eDOCUMENT_PRODUCT_ASSOCIATION.self)?.RELATED_PRODUCT, 
                IS: ePRODUCT_DEFINITION_FORMATION.self)
              if SDAI.IS_TRUE( _TEMP15 ) {
                
                let _TEMP16 = DPAS?[J]
                let _TEMP17 = _TEMP16?.GROUP_REF(eDOCUMENT_PRODUCT_ASSOCIATION.self)
                let _TEMP18 = _TEMP17?.RELATED_PRODUCT
                let _TEMP19 = _TEMP18?.GROUP_REF(ePRODUCT_DEFINITION_FORMATION.self)
                let _TEMP20 = _TEMP19?.OF_PRODUCT
                let _TEMP21 = _TEMP20?.GROUP_REF(ePRODUCT.self)
                let _TEMP22 = _TEMP21?.ID
                let _TEMP23 = RESULT + _TEMP22
                RESULT = _TEMP23
              }
              
              let _TEMP24 = SDAI.TYPEOF(DPAS?[J]?.RELATED_PRODUCT, IS: ePRODUCT.self)
              if SDAI.IS_TRUE( _TEMP24 ) {
                
                let _TEMP25 = DPAS?[J]
                let _TEMP26 = _TEMP25?.GROUP_REF(eDOCUMENT_PRODUCT_ASSOCIATION.self)
                let _TEMP27 = _TEMP26?.RELATED_PRODUCT
                let _TEMP28 = _TEMP27?.GROUP_REF(ePRODUCT.self)
                let _TEMP29 = _TEMP28?.ID
                let _TEMP30 = RESULT + _TEMP29
                RESULT = _TEMP30
              }
            }
          }
        }
      }
    }
    return _get_associated_mandatory_document_ids__cache.updateCache(params: _params, value: RESULT)
  }

}

//MARK: - function result cache
private var _get_associated_mandatory_document_ids__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

