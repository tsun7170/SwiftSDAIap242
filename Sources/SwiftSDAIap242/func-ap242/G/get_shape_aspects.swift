/* file: get_shape_aspects.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  FUNCTION get_shape_aspects(
               c_def_instance : characterized_definition
           ) : SET OF shape_aspect;

    LOCAL
      pd_set  : SET OF product_definition_shape := [];
      pdr_set : SET OF shape_aspect := [];
    END_LOCAL;
    pd_set := bag_to_set( QUERY ( pd <* USEDIN( c_def_instance, 
        'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PROPERTY_DEFINITION.DEFINITION'  ) | ( 
        'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT_DEFINITION_SHAPE'  IN TYPEOF( pd ) ) ) );
    IF SIZEOF( pd_set ) < 1 THEN
      RETURN( pdr_set );
    END_IF;
    REPEAT i := 1 TO HIINDEX( pd_set ) BY 1;
      pdr_set := pdr_set + bag_to_set( USEDIN( pd_set[i], 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
          + 'SHAPE_ASPECT.OF_SHAPE'  ) );
    END_REPEAT;
    RETURN( pdr_set );

  END_FUNCTION; -- get_shape_aspects (line:41967 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func GET_SHAPE_ASPECTS(_ C_DEF_INSTANCE: sCHARACTERIZED_DEFINITION? ) 
    -> SDAI.SET<eSHAPE_ASPECT>? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( C_DEF_INSTANCE )
    if case .available(let _cached_value) = _get_shape_aspects__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.SET<eSHAPE_ASPECT>
    }

    var C_DEF_INSTANCE = C_DEF_INSTANCE; SDAI.TOUCH(var: &C_DEF_INSTANCE)

    //LOCAL
    var PD_SET: SDAI.SET<ePRODUCT_DEFINITION_SHAPE>?  = SDAI.SET<ePRODUCT_DEFINITION_SHAPE>(
                                                        SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &PD_SET)
    var PDR_SET: SDAI.SET<eSHAPE_ASPECT>?  = SDAI.SET<eSHAPE_ASPECT>(SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &PDR_SET)
    //END_LOCAL

    
    let _TEMP1 = SDAI.USEDIN(T: C_DEF_INSTANCE, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
      .ePROPERTY_DEFINITION.DEFINITION)
    let _TEMP2 = _TEMP1.QUERY{ PD in 

        let _TEMP1 = SDAI.TYPEOF(PD, IS: ePRODUCT_DEFINITION_SHAPE.self)
        return _TEMP1 }
    let _TEMP3 = BAG_TO_SET(_TEMP2)
    PD_SET = SDAI.SET<ePRODUCT_DEFINITION_SHAPE>(generic: /*SDAI.SET<gINTYPE>*/_TEMP3)
    
    let _TEMP4 = SDAI.SIZEOF(PD_SET)
    let _TEMP5 = _TEMP4 < SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
    if SDAI.IS_TRUE( _TEMP5 ) {
      return _get_shape_aspects__cache.updateCache(params: _params, value: PDR_SET)
    }
    if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.HIINDEX(
      PD_SET)) {
      for I in incrementControl {
        
        let _TEMP6 = PD_SET?[I]
        let _TEMP7 = SDAI.USEDIN(T: _TEMP6, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
          .eSHAPE_ASPECT.OF_SHAPE)
        let _TEMP8 = BAG_TO_SET(_TEMP7)
        let _TEMP9 = PDR_SET + _TEMP8
        PDR_SET = SDAI.SET<eSHAPE_ASPECT>(generic: /*SDAI.SET<runtime>*/_TEMP9)
      }
    }
    return _get_shape_aspects__cache.updateCache(params: _params, value: PDR_SET)
  }

}

//MARK: - function result cache
private var _get_shape_aspects__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

