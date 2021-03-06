/* file: get_property_definition_representations.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  FUNCTION get_property_definition_representations(
               c_def_instance : characterized_definition
           ) : SET OF property_definition_representation;

    LOCAL
      pd_set  : SET OF property_definition := [];
      pdr_set : SET OF property_definition_representation := [];
    END_LOCAL;
    pd_set := bag_to_set( USEDIN( c_def_instance, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
        + 'PROPERTY_DEFINITION.DEFINITION'  ) );
    IF SIZEOF( pd_set ) < 1 THEN
      RETURN( pdr_set );
    END_IF;
    REPEAT i := 1 TO HIINDEX( pd_set ) BY 1;
      pdr_set := pdr_set + bag_to_set( USEDIN( pd_set[i], 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
          + 'PROPERTY_DEFINITION_REPRESENTATION.DEFINITION'  ) );
    END_REPEAT;
    RETURN( pdr_set );

  END_FUNCTION; -- get_property_definition_representations (line:41868 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func GET_PROPERTY_DEFINITION_REPRESENTATIONS(
    _ C_DEF_INSTANCE: sCHARACTERIZED_DEFINITION? ) 
    -> SDAI.SET<ePROPERTY_DEFINITION_REPRESENTATION>? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( C_DEF_INSTANCE )
    if case .available(let _cached_value) = _get_property_definition_representations__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.SET<ePROPERTY_DEFINITION_REPRESENTATION>
    }

    var C_DEF_INSTANCE = C_DEF_INSTANCE; SDAI.TOUCH(var: &C_DEF_INSTANCE)

    //LOCAL
    var PD_SET: SDAI.SET<ePROPERTY_DEFINITION>?  = SDAI.SET<ePROPERTY_DEFINITION>(SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &PD_SET)
    var PDR_SET: SDAI.SET<ePROPERTY_DEFINITION_REPRESENTATION>?  = SDAI.SET<
                                                                   ePROPERTY_DEFINITION_REPRESENTATION>(
                                                                   SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &PDR_SET)
    //END_LOCAL

    
    let _TEMP1 = SDAI.USEDIN(T: C_DEF_INSTANCE, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
      .ePROPERTY_DEFINITION.DEFINITION)
    let _TEMP2 = BAG_TO_SET(_TEMP1)
    PD_SET = SDAI.SET<ePROPERTY_DEFINITION>(generic: /*SDAI.SET<gINTYPE>*/_TEMP2)
    
    let _TEMP3 = SDAI.SIZEOF(PD_SET)
    let _TEMP4 = _TEMP3 < SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
    if SDAI.IS_TRUE( _TEMP4 ) {
      return _get_property_definition_representations__cache.updateCache(params: _params, value: PDR_SET)
    }
    if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.HIINDEX(
      PD_SET)) {
      for I in incrementControl {
        
        let _TEMP5 = PD_SET?[I]
        let _TEMP6 = SDAI.USEDIN(T: _TEMP5, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
          .ePROPERTY_DEFINITION_REPRESENTATION.DEFINITION)
        let _TEMP7 = BAG_TO_SET(_TEMP6)
        let _TEMP8 = PDR_SET + _TEMP7
        PDR_SET = SDAI.SET<ePROPERTY_DEFINITION_REPRESENTATION>(generic: /*SDAI.SET<runtime>*/_TEMP8)
      }
    }
    return _get_property_definition_representations__cache.updateCache(params: _params, value: PDR_SET)
  }

}

//MARK: - function result cache
private var _get_property_definition_representations__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

