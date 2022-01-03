/* file: using_product_definition_of_shape_representation.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  FUNCTION using_product_definition_of_shape_representation(
               item : shape_representation
           ) : SET OF product_definition;

    LOCAL
      local_s_d_r : SET OF shape_definition_representation := [];
      local_p_d   : SET OF product_definition := [];
      p_d         : product_definition;
    END_LOCAL;
    local_s_d_r := QUERY ( i1 <* bag_to_set( USEDIN( item, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
        + 'PROPERTY_DEFINITION_REPRESENTATION.USED_REPRESENTATION'  ) ) | ( 
        'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_DEFINITION_REPRESENTATION'  IN TYPEOF( i1 ) ) );
    REPEAT i := 1 TO HIINDEX( local_s_d_r ) BY 1;
      IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PROPERTY_DEFINITION' IN TYPEOF( local_s_d_r[i]\
          property_definition_representation.definition ) THEN
        IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT_DEFINITION' IN TYPEOF( local_s_d_r[i]\
            property_definition_representation.definition\property_definition.definition ) THEN
          p_d := local_s_d_r[i]\property_definition_representation.definition\property_definition.definition;
          local_p_d := local_p_d + p_d;
        END_IF;
      END_IF;
    END_REPEAT;
    RETURN( local_p_d );

  END_FUNCTION; -- using_product_definition_of_shape_representation (line:47324 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func USING_PRODUCT_DEFINITION_OF_SHAPE_REPRESENTATION(
    _ ITEM: eSHAPE_REPRESENTATION? ) 
    -> SDAI.SET<ePRODUCT_DEFINITION>? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( ITEM )
    if case .available(let _cached_value) = _using_product_definition_of_shape_representation__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.SET<ePRODUCT_DEFINITION>
    }

    var ITEM = ITEM; SDAI.TOUCH(var: &ITEM)

    //LOCAL
    var LOCAL_S_D_R: SDAI.SET<eSHAPE_DEFINITION_REPRESENTATION>?  = SDAI.SET<eSHAPE_DEFINITION_REPRESENTATION>(
                                                                    SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &LOCAL_S_D_R)
    var LOCAL_P_D: SDAI.SET<ePRODUCT_DEFINITION>?  = SDAI.SET<ePRODUCT_DEFINITION>(SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &LOCAL_P_D)
    var P_D: ePRODUCT_DEFINITION? 
    //END_LOCAL

    
    let _TEMP1 = SDAI.USEDIN(T: ITEM, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
      .ePROPERTY_DEFINITION_REPRESENTATION.USED_REPRESENTATION)
    let _TEMP2 = BAG_TO_SET(_TEMP1)
    let _TEMP3 = _TEMP2?.QUERY{ I1 in 

        let _TEMP1 = SDAI.TYPEOF(I1, IS: eSHAPE_DEFINITION_REPRESENTATION.self)
        return _TEMP1 }
    LOCAL_S_D_R = SDAI.SET<eSHAPE_DEFINITION_REPRESENTATION>(generic: /*SDAI.SET<gINTYPE>*/_TEMP3)
    if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.HIINDEX(
      LOCAL_S_D_R)) {
      for I in incrementControl {
        
        let _TEMP4 = SDAI.TYPEOF(LOCAL_S_D_R?[I]?.GROUP_REF(ePROPERTY_DEFINITION_REPRESENTATION.self)?.DEFINITION, 
          IS: ePROPERTY_DEFINITION.self)
        if SDAI.IS_TRUE( _TEMP4 ) {
          
          let _TEMP5 = SDAI.TYPEOF(LOCAL_S_D_R?[I]?.GROUP_REF(ePROPERTY_DEFINITION_REPRESENTATION.self)?.DEFINITION
            .GROUP_REF(ePROPERTY_DEFINITION.self)?.DEFINITION, IS: ePRODUCT_DEFINITION.self)
          if SDAI.IS_TRUE( _TEMP5 ) {
            
            let _TEMP6 = LOCAL_S_D_R?[I]
            let _TEMP7 = _TEMP6?.GROUP_REF(ePROPERTY_DEFINITION_REPRESENTATION.self)
            let _TEMP8 = _TEMP7?.DEFINITION
            let _TEMP9 = _TEMP8?.GROUP_REF(ePROPERTY_DEFINITION.self)
            let _TEMP10 = _TEMP9?.DEFINITION
            P_D = ePRODUCT_DEFINITION(/*sCHARACTERIZED_DEFINITION*/_TEMP10)
            
            let _TEMP11 = LOCAL_P_D + P_D
            LOCAL_P_D = _TEMP11
          }
        }
      }
    }
    return _using_product_definition_of_shape_representation__cache.updateCache(params: _params, value: 
      LOCAL_P_D)
  }

}

//MARK: - function result cache
private var _using_product_definition_of_shape_representation__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

