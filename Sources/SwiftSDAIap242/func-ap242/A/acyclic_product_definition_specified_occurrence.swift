/* file: acyclic_product_definition_specified_occurrence.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  FUNCTION acyclic_product_definition_specified_occurrence(
               pdso : product_definition_specified_occurrence;
               definition : product_definition_occurrence
           ) : BOOLEAN;
    IF NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT_DEFINITION_SPECIFIED_OCCURRENCE' IN 
        TYPEOF( definition ) ) THEN
      RETURN( TRUE );
    END_IF;
    IF definition :=: pdso THEN
      RETURN( FALSE );
    ELSE
      RETURN( acyclic_product_definition_specified_occurrence( pdso, definition\product_definition_occurrence
          .definition ) );
    END_IF;

  END_FUNCTION; -- acyclic_product_definition_specified_occurrence (line:35152 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func ACYCLIC_PRODUCT_DEFINITION_SPECIFIED_OCCURRENCE(
    PDSO: ePRODUCT_DEFINITION_SPECIFIED_OCCURRENCE? , DEFINITION: ePRODUCT_DEFINITION_OCCURRENCE? ) 
    -> SDAI.BOOLEAN? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( PDSO, DEFINITION )
    if case .available(let _cached_value) = _acyclic_product_definition_specified_occurrence__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.BOOLEAN
    }

    var PDSO = PDSO; SDAI.TOUCH(var: &PDSO)
    var DEFINITION = DEFINITION; SDAI.TOUCH(var: &DEFINITION)

    
    let _TEMP1 = SDAI.TYPEOF(DEFINITION, IS: ePRODUCT_DEFINITION_SPECIFIED_OCCURRENCE.self)
    let _TEMP2 =  !_TEMP1
    if SDAI.IS_TRUE( _TEMP2 ) {
      return _acyclic_product_definition_specified_occurrence__cache.updateCache(params: _params, value: 
        SDAI.BOOLEAN(SDAI.TRUE))
    }
    
    let _TEMP3 = DEFINITION .===. PDSO
    if SDAI.IS_TRUE( _TEMP3 ) {
      return _acyclic_product_definition_specified_occurrence__cache.updateCache(params: _params, value: 
        SDAI.BOOLEAN(SDAI.FALSE))
    }
    else {
      
      let _TEMP4 = DEFINITION?.GROUP_REF(ePRODUCT_DEFINITION_OCCURRENCE.self)
      let _TEMP5 = _TEMP4?.DEFINITION
      let _TEMP6 = ACYCLIC_PRODUCT_DEFINITION_SPECIFIED_OCCURRENCE(
        PDSO: PDSO, DEFINITION: ePRODUCT_DEFINITION_OCCURRENCE(/*
        sPRODUCT_DEFINITION_OR_REFERENCE_OR_OCCURRENCE*/_TEMP5))
      return _acyclic_product_definition_specified_occurrence__cache.updateCache(params: _params, value: 
        _TEMP6)
    }
  }

}

//MARK: - function result cache
private var _acyclic_product_definition_specified_occurrence__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

