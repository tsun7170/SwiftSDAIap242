/* file: get_product_definitions.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  FUNCTION get_product_definitions(
               c_def_instance : product
           ) : SET OF product_definition;

    LOCAL
      pd_set  : SET OF product_definition_formation := [];
      pdr_set : SET OF product_definition := [];
    END_LOCAL;
    pd_set := bag_to_set( USEDIN( c_def_instance, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
        + 'PRODUCT_DEFINITION_FORMATION.OF_PRODUCT'  ) );
    IF SIZEOF( pd_set ) < 1 THEN
      RETURN( pdr_set );
    END_IF;
    REPEAT i := 1 TO HIINDEX( pd_set ) BY 1;
      pdr_set := pdr_set + bag_to_set( USEDIN( pd_set[i], 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
          + 'PRODUCT_DEFINITION.FORMATION'  ) );
    END_REPEAT;
    RETURN( pdr_set );

  END_FUNCTION; -- get_product_definitions (line:51050 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func GET_PRODUCT_DEFINITIONS(_ C_DEF_INSTANCE: ePRODUCT? ) 
    -> SDAI.SET<ePRODUCT_DEFINITION>? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( C_DEF_INSTANCE )
    if case .available(let _cached_value) = _get_product_definitions__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.SET<ePRODUCT_DEFINITION>
    }

    var C_DEF_INSTANCE = C_DEF_INSTANCE; SDAI.TOUCH(var: &C_DEF_INSTANCE)

    //LOCAL
    var PD_SET: SDAI.SET<ePRODUCT_DEFINITION_FORMATION>?  = SDAI.SET<ePRODUCT_DEFINITION_FORMATION>(
                                                            SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &PD_SET)
    var PDR_SET: SDAI.SET<ePRODUCT_DEFINITION>?  = SDAI.SET<ePRODUCT_DEFINITION>(SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &PDR_SET)
    //END_LOCAL

    
    let _TEMP1 = SDAI.USEDIN(T: C_DEF_INSTANCE, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
      .ePRODUCT_DEFINITION_FORMATION.OF_PRODUCT)
    let _TEMP2 = BAG_TO_SET(_TEMP1)
    PD_SET = SDAI.SET<ePRODUCT_DEFINITION_FORMATION>(generic: /*SDAI.SET<gINTYPE>*/_TEMP2)
    
    let _TEMP3 = SDAI.SIZEOF(PD_SET)
    let _TEMP4 = _TEMP3 < SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
    if SDAI.IS_TRUE( _TEMP4 ) {
      return _get_product_definitions__cache.updateCache(params: _params, value: PDR_SET)
    }
    if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.HIINDEX(
      PD_SET)) {
      for I in incrementControl {
        
        let _TEMP5 = PD_SET?[I]
        let _TEMP6 = SDAI.USEDIN(T: _TEMP5, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
          .ePRODUCT_DEFINITION.FORMATION)
        let _TEMP7 = BAG_TO_SET(_TEMP6)
        let _TEMP8 = PDR_SET + _TEMP7
        PDR_SET = SDAI.SET<ePRODUCT_DEFINITION>(generic: /*SDAI.SET<runtime>*/_TEMP8)
      }
    }
    return _get_product_definitions__cache.updateCache(params: _params, value: PDR_SET)
  }

}

//MARK: - function result cache
private var _get_product_definitions__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)
