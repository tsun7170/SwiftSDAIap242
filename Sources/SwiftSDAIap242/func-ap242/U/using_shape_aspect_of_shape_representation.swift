/* file: using_shape_aspect_of_shape_representation.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  FUNCTION using_shape_aspect_of_shape_representation(
               item : shape_representation
           ) : SET OF shape_aspect;

    LOCAL
      local_s_d_r  : SET OF shape_definition_representation := [];
      local_s_d_r2 : BAG OF shape_definition_representation := [];
      local_s_a    : SET OF shape_aspect := [];
      s_a          : shape_aspect;
    END_LOCAL;
    local_s_d_r2 := local_s_d_r2 + QUERY ( pdr <* USEDIN( item, 
        'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PROPERTY_DEFINITION_REPRESENTATION.'
        + 'USED_REPRESENTATION'  ) | ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
        + 'SHAPE_DEFINITION_REPRESENTATION'  IN TYPEOF( pdr ) ) );
    local_s_d_r := bag_to_set( local_s_d_r2 );
    REPEAT i := 1 TO HIINDEX( local_s_d_r ) BY 1;
      IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_ASPECT' IN TYPEOF( local_s_d_r[i]\
          property_definition_representation.definition\property_definition.definition ) THEN
        s_a := local_s_d_r[i]\property_definition_representation.definition\property_definition.definition;
        local_s_a := local_s_a + s_a;
      END_IF;
    END_REPEAT;
    RETURN( local_s_a );

  END_FUNCTION; -- using_shape_aspect_of_shape_representation (line:47407 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func USING_SHAPE_ASPECT_OF_SHAPE_REPRESENTATION(
    _ ITEM: eSHAPE_REPRESENTATION? ) 
    -> SDAI.SET<eSHAPE_ASPECT>? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( ITEM )
    if case .available(let _cached_value) = _using_shape_aspect_of_shape_representation__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.SET<eSHAPE_ASPECT>
    }

    var ITEM = ITEM; SDAI.TOUCH(var: &ITEM)

    //LOCAL
    var LOCAL_S_D_R: SDAI.SET<eSHAPE_DEFINITION_REPRESENTATION>?  = SDAI.SET<eSHAPE_DEFINITION_REPRESENTATION>(
                                                                    SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &LOCAL_S_D_R)
    var LOCAL_S_D_R2: SDAI.BAG<eSHAPE_DEFINITION_REPRESENTATION>?  = SDAI.BAG<
                                                                     eSHAPE_DEFINITION_REPRESENTATION>(
                                                                     SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &LOCAL_S_D_R2)
    var LOCAL_S_A: SDAI.SET<eSHAPE_ASPECT>?  = SDAI.SET<eSHAPE_ASPECT>(SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &LOCAL_S_A)
    var S_A: eSHAPE_ASPECT? 
    //END_LOCAL

    
    let _TEMP1 = SDAI.USEDIN(T: ITEM, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
      .ePROPERTY_DEFINITION_REPRESENTATION.USED_REPRESENTATION)
    let _TEMP2 = _TEMP1?.QUERY{ PDR in 

        let _TEMP1 = SDAI.TYPEOF(PDR, IS: eSHAPE_DEFINITION_REPRESENTATION.self)
        return _TEMP1 }
    let _TEMP3 = SDAI.BAG<SDAI.GENERIC_ENTITY>(/*SDAI.BAG<eSHAPE_DEFINITION_REPRESENTATION>*/LOCAL_S_D_R2) + 
      _TEMP2
    LOCAL_S_D_R2 = SDAI.BAG<eSHAPE_DEFINITION_REPRESENTATION>(/*SDAI.BAG<SDAI.GENERIC_ENTITY>*/_TEMP3)
    
    let _TEMP4 = BAG_TO_SET(LOCAL_S_D_R2)
    LOCAL_S_D_R = SDAI.SET<eSHAPE_DEFINITION_REPRESENTATION>(generic: /*SDAI.SET<gINTYPE>*/_TEMP4)
    if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.HIINDEX(
      LOCAL_S_D_R)) {
      for I in incrementControl {
        
        let _TEMP5 = SDAI.TYPEOF(LOCAL_S_D_R?[I]?.GROUP_REF(ePROPERTY_DEFINITION_REPRESENTATION.self)?.DEFINITION
          .GROUP_REF(ePROPERTY_DEFINITION.self)?.DEFINITION, IS: eSHAPE_ASPECT.self)
        if SDAI.IS_TRUE( _TEMP5 ) {
          
          let _TEMP6 = LOCAL_S_D_R?[I]
          let _TEMP7 = _TEMP6?.GROUP_REF(ePROPERTY_DEFINITION_REPRESENTATION.self)
          let _TEMP8 = _TEMP7?.DEFINITION
          let _TEMP9 = _TEMP8?.GROUP_REF(ePROPERTY_DEFINITION.self)
          let _TEMP10 = _TEMP9?.DEFINITION
          S_A = eSHAPE_ASPECT(/*sCHARACTERIZED_DEFINITION*/_TEMP10)
          
          let _TEMP11 = LOCAL_S_A + S_A
          LOCAL_S_A = _TEMP11
        }
      }
    }
    return _using_shape_aspect_of_shape_representation__cache.updateCache(params: _params, value: LOCAL_S_A)
  }

}

//MARK: - function result cache
private var _using_shape_aspect_of_shape_representation__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)
