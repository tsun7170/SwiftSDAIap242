/* file: external_version_assignment_is_valid.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  FUNCTION external_version_assignment_is_valid(
               aia : applied_external_identification_assignment
           ) : BOOLEAN;

    LOCAL
      item : external_identification_item;
      role : identification_role;
    END_LOCAL;
    role := aia.role;
    IF role.name = 'version' THEN
      REPEAT i := LOINDEX( aia\applied_external_identification_assignment.items ) TO HIINDEX( aia\
          applied_external_identification_assignment.items ) BY 1;
        item := aia\applied_external_identification_assignment.items[i];
        IF SIZEOF( [ 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.EXTERNALLY_DEFINED_GENERAL_PROPERTY'] *
            TYPEOF( item ) ) = 0 THEN
          RETURN( FALSE );
        END_IF;
      END_REPEAT;
      RETURN( TRUE );
    ELSE
      RETURN( TRUE );
    END_IF;

  END_FUNCTION; -- external_version_assignment_is_valid (line:40574 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func EXTERNAL_VERSION_ASSIGNMENT_IS_VALID(
    _ AIA: eAPPLIED_EXTERNAL_IDENTIFICATION_ASSIGNMENT? ) 
    -> SDAI.BOOLEAN? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( AIA )
    if case .available(let _cached_value) = _external_version_assignment_is_valid__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.BOOLEAN
    }

    var AIA = AIA; SDAI.TOUCH(var: &AIA)

    //LOCAL
    var ITEM: sEXTERNAL_IDENTIFICATION_ITEM? 
    var ROLE: eIDENTIFICATION_ROLE? 
    //END_LOCAL

    
    let _TEMP1 = AIA?.ROLE
    ROLE = _TEMP1
    
    let _TEMP2 = ROLE?.NAME
    let _TEMP3 = _TEMP2 .==. SDAI.FORCE_OPTIONAL(SDAI.STRING("version"))
    if SDAI.IS_TRUE( _TEMP3 ) {
      if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/SDAI.LOINDEX(
        AIA?.GROUP_REF(eAPPLIED_EXTERNAL_IDENTIFICATION_ASSIGNMENT.self)?.ITEMS), TO:/*SDAI.INTEGER*/
        SDAI.HIINDEX(AIA?.GROUP_REF(eAPPLIED_EXTERNAL_IDENTIFICATION_ASSIGNMENT.self)?.ITEMS)) {
        for I in incrementControl {
          
          let _TEMP4 = AIA?.GROUP_REF(eAPPLIED_EXTERNAL_IDENTIFICATION_ASSIGNMENT.self)
          let _TEMP5 = _TEMP4?.ITEMS
          let _TEMP6 = _TEMP5?[I]
          ITEM = _TEMP6
          
          let _TEMP7 = ([SDAI.AIE(SDAI.STRING(
            "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.EXTERNALLY_DEFINED_GENERAL_PROPERTY"))] 
            as [SDAI.AggregationInitializerElement<SDAI.STRING>])
          let _TEMP8 = SDAI.TYPEOF(ITEM)
          let _TEMP9 = SDAI.FORCE_OPTIONAL(_TEMP7) * _TEMP8
          let _TEMP10 = SDAI.SIZEOF(_TEMP9)
          let _TEMP11 = _TEMP10 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
          if SDAI.IS_TRUE( _TEMP11 ) {
            return _external_version_assignment_is_valid__cache.updateCache(params: _params, value: SDAI.BOOLEAN(
              SDAI.FALSE))
          }
        }
      }
      return _external_version_assignment_is_valid__cache.updateCache(params: _params, value: SDAI.BOOLEAN(
        SDAI.TRUE))
    }
    else {
      return _external_version_assignment_is_valid__cache.updateCache(params: _params, value: SDAI.BOOLEAN(
        SDAI.TRUE))
    }
  }

}

//MARK: - function result cache
private var _external_version_assignment_is_valid__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

