/* file: find_shape_representation_of_product_definition.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  FUNCTION find_shape_representation_of_product_definition(
               item : product_definition
           ) : SET OF shape_representation;

    LOCAL
      local_p_d_s  : SET OF product_definition_shape := [];
      local_p_d_s2 : BAG OF product_definition_shape := [];
      local_s_d_r  : SET OF shape_definition_representation := [];
      local_s_d_r2 : BAG OF shape_definition_representation := [];
      local_s_r    : SET OF shape_representation := [];
    END_LOCAL;
    local_p_d_s2 := local_p_d_s2 + QUERY ( pd <* USEDIN( item, 
        'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PROPERTY_DEFINITION.DEFINITION'  ) | ( 
        'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT_DEFINITION_SHAPE'  IN TYPEOF( pd ) ) );
    local_p_d_s := bag_to_set( local_p_d_s2 );
    REPEAT i := 1 TO HIINDEX( local_p_d_s ) BY 1;
      local_s_d_r2 := local_s_d_r2 + QUERY ( pdr <* USEDIN( local_p_d_s[i], 
          'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PROPERTY_DEFINITION_REPRESENTATION.DEFINITION'  )
          | ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_DEFINITION_REPRESENTATION' IN TYPEOF( 
          pdr ) ) );
    END_REPEAT;
    local_s_d_r := bag_to_set( local_s_d_r2 );
    REPEAT i := 1 TO HIINDEX( local_s_d_r ) BY 1;
      IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_REPRESENTATION' IN TYPEOF( local_s_d_r[i].
          used_representation ) THEN
        local_s_r := local_s_r + local_s_d_r[i].used_representation;
      END_IF;
    END_REPEAT;
    RETURN( local_s_r );

  END_FUNCTION; -- find_shape_representation_of_product_definition (line:40872 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func FIND_SHAPE_REPRESENTATION_OF_PRODUCT_DEFINITION(
    _ ITEM: ePRODUCT_DEFINITION? ) -> SDAI.SET<eSHAPE_REPRESENTATION>? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( ITEM )
    if case .available(let _cached_value) = _find_shape_representation_of_product_definition__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.SET<eSHAPE_REPRESENTATION>
    }

    var ITEM = ITEM; SDAI.TOUCH(var: &ITEM)

    //LOCAL
    var LOCAL_P_D_S: SDAI.SET<ePRODUCT_DEFINITION_SHAPE>?  = SDAI.SET<ePRODUCT_DEFINITION_SHAPE>(
                                                             SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &LOCAL_P_D_S)
    var LOCAL_P_D_S2: SDAI.BAG<ePRODUCT_DEFINITION_SHAPE>?  = SDAI.BAG<ePRODUCT_DEFINITION_SHAPE>(
                                                              SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &LOCAL_P_D_S2)
    var LOCAL_S_D_R: SDAI.SET<eSHAPE_DEFINITION_REPRESENTATION>?  = SDAI.SET<eSHAPE_DEFINITION_REPRESENTATION>(
                                                                    SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &LOCAL_S_D_R)
    var LOCAL_S_D_R2: SDAI.BAG<eSHAPE_DEFINITION_REPRESENTATION>?  = SDAI.BAG<
                                                                     eSHAPE_DEFINITION_REPRESENTATION>(
                                                                     SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &LOCAL_S_D_R2)
    var LOCAL_S_R: SDAI.SET<eSHAPE_REPRESENTATION>?  = SDAI.SET<eSHAPE_REPRESENTATION>(SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &LOCAL_S_R)
    //END_LOCAL

    
    let _TEMP1 = SDAI.USEDIN(T: ITEM, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
      .ePROPERTY_DEFINITION.DEFINITION)
    let _TEMP2 = _TEMP1.QUERY{ PD in 

        let _TEMP1 = SDAI.TYPEOF(PD, IS: ePRODUCT_DEFINITION_SHAPE.self)
        return _TEMP1 }
    let _TEMP3 = SDAI.BAG<SDAI.GENERIC_ENTITY>(/*SDAI.BAG<ePRODUCT_DEFINITION_SHAPE>*/LOCAL_P_D_S2) + SDAI.FORCE_OPTIONAL(
      _TEMP2)
    LOCAL_P_D_S2 = SDAI.BAG<ePRODUCT_DEFINITION_SHAPE>(/*SDAI.BAG<SDAI.GENERIC_ENTITY>*/_TEMP3)
    
    let _TEMP4 = BAG_TO_SET(LOCAL_P_D_S2)
    LOCAL_P_D_S = SDAI.SET<ePRODUCT_DEFINITION_SHAPE>(generic: /*SDAI.SET<gINTYPE>*/_TEMP4)
    if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.HIINDEX(
      LOCAL_P_D_S)) {
      for I in incrementControl {
        
        let _TEMP5 = LOCAL_P_D_S?[I]
        let _TEMP6 = SDAI.USEDIN(T: _TEMP5, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
          .ePROPERTY_DEFINITION_REPRESENTATION.DEFINITION)
        let _TEMP7 = _TEMP6.QUERY{ PDR in 

            let _TEMP1 = SDAI.TYPEOF(PDR, IS: eSHAPE_DEFINITION_REPRESENTATION.self)
            return _TEMP1 }
        let _TEMP8 = SDAI.BAG<SDAI.GENERIC_ENTITY>(/*SDAI.BAG<eSHAPE_DEFINITION_REPRESENTATION>*/LOCAL_S_D_R2)
          + SDAI.FORCE_OPTIONAL(_TEMP7)
        LOCAL_S_D_R2 = SDAI.BAG<eSHAPE_DEFINITION_REPRESENTATION>(/*SDAI.BAG<SDAI.GENERIC_ENTITY>*/_TEMP8)
      }
    }
    
    let _TEMP9 = BAG_TO_SET(LOCAL_S_D_R2)
    LOCAL_S_D_R = SDAI.SET<eSHAPE_DEFINITION_REPRESENTATION>(generic: /*SDAI.SET<gINTYPE>*/_TEMP9)
    if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.HIINDEX(
      LOCAL_S_D_R)) {
      for I in incrementControl {
        
        let _TEMP10 = SDAI.TYPEOF(LOCAL_S_D_R?[I]?.USED_REPRESENTATION, IS: eSHAPE_REPRESENTATION.self)
        if SDAI.IS_TRUE( _TEMP10 ) {
          
          let _TEMP11 = LOCAL_S_D_R?[I]
          let _TEMP12 = _TEMP11?.USED_REPRESENTATION
          let _TEMP13 = LOCAL_S_R + _TEMP12
          LOCAL_S_R = _TEMP13
        }
      }
    }
    return _find_shape_representation_of_product_definition__cache.updateCache(params: _params, value: 
      LOCAL_S_R)
  }

}

//MARK: - function result cache
private var _find_shape_representation_of_product_definition__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

