/* file: valid_csg_2d_primitives.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  FUNCTION valid_csg_2d_primitives(
               input : csg_solid_2d
           ) : BOOLEAN;
    CASE TRUE OF
      'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRIMITIVE_2D' IN TYPEOF( input\csg_solid_2d.
          tree_root_expression )  : 
        BEGIN
          IF SIZEOF( [ 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CIRCULAR_AREA', 
              'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.COMPLEX_AREA' , 
              'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ELLIPTIC_AREA' , 
              'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.HALF_SPACE_2D' , 
              'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.POLYGONAL_AREA' , 
              'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRIMITIVE_2D_WITH_INNER_BOUNDARY' , 
              'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.RECTANGULAR_AREA' ] * TYPEOF( input\
              csg_solid_2d.tree_root_expression ) ) > 0 THEN
            RETURN( TRUE );
          ELSE
            RETURN( FALSE );
          END_IF;
        END;
      'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.BOOLEAN_RESULT_2D' IN TYPEOF( input\csg_solid_2d.
          tree_root_expression )  :         RETURN( valid_csg_2d_primitives( input\csg_solid_2d.
            tree_root_expression\boolean_result_2d.first_operand ) AND valid_csg_2d_primitives( input\
            csg_solid_2d.tree_root_expression\boolean_result_2d.second_operand ) );
      OTHERWISE                   :         RETURN( FALSE );
    END_CASE;

  END_FUNCTION; -- valid_csg_2d_primitives (line:47505 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func VALID_CSG_2D_PRIMITIVES(_ INPUT: eCSG_SOLID_2D? ) 
    -> SDAI.BOOLEAN? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( INPUT )
    if case .available(let _cached_value) = _valid_csg_2d_primitives__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.BOOLEAN
    }

    var INPUT = INPUT; SDAI.TOUCH(var: &INPUT)

    if let selector = SDAI.FORCE_OPTIONAL(SDAI.TRUE) {
      switch selector {
      case SDAI.TYPEOF(INPUT?.GROUP_REF(eCSG_SOLID_2D.self)?.TREE_ROOT_EXPRESSION, IS: ePRIMITIVE_2D.self):
        //BEGIN
        
        let _TEMP1 = ([SDAI.AIE(SDAI.STRING("AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CIRCULAR_AREA")), 
          SDAI.AIE(SDAI.STRING("AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.COMPLEX_AREA")), 
          SDAI.AIE(SDAI.STRING("AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ELLIPTIC_AREA")), 
          SDAI.AIE(SDAI.STRING("AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.HALF_SPACE_2D")), 
          SDAI.AIE(SDAI.STRING("AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.POLYGONAL_AREA")), 
          SDAI.AIE(SDAI.STRING(
          "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRIMITIVE_2D_WITH_INNER_BOUNDARY")), 
          SDAI.AIE(SDAI.STRING("AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.RECTANGULAR_AREA"))] 
          as [SDAI.AggregationInitializerElement<SDAI.STRING>])
        let _TEMP2 = INPUT?.GROUP_REF(eCSG_SOLID_2D.self)
        let _TEMP3 = _TEMP2?.TREE_ROOT_EXPRESSION
        let _TEMP4 = SDAI.TYPEOF(_TEMP3)
        let _TEMP5 = SDAI.FORCE_OPTIONAL(_TEMP1) * _TEMP4
        let _TEMP6 = SDAI.SIZEOF(_TEMP5)
        let _TEMP7 = _TEMP6 > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
        if SDAI.IS_TRUE( _TEMP7 ) {
          return _valid_csg_2d_primitives__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.TRUE))
        }
        else {
          return _valid_csg_2d_primitives__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.FALSE))
        }
        //END

      case SDAI.TYPEOF(INPUT?.GROUP_REF(eCSG_SOLID_2D.self)?.TREE_ROOT_EXPRESSION, 
        IS: eBOOLEAN_RESULT_2D.self):
        
        let _TEMP8 = INPUT?.GROUP_REF(eCSG_SOLID_2D.self)
        let _TEMP9 = _TEMP8?.TREE_ROOT_EXPRESSION
        let _TEMP10 = _TEMP9?.GROUP_REF(eBOOLEAN_RESULT_2D.self)
        let _TEMP11 = _TEMP10?.FIRST_OPERAND
        let _TEMP12 = VALID_CSG_2D_PRIMITIVES(eCSG_SOLID_2D(/*sBOOLEAN_OPERAND_2D*/_TEMP11))
        let _TEMP13 = INPUT?.GROUP_REF(eCSG_SOLID_2D.self)
        let _TEMP14 = _TEMP13?.TREE_ROOT_EXPRESSION
        let _TEMP15 = _TEMP14?.GROUP_REF(eBOOLEAN_RESULT_2D.self)
        let _TEMP16 = _TEMP15?.SECOND_OPERAND
        let _TEMP17 = VALID_CSG_2D_PRIMITIVES(eCSG_SOLID_2D(/*sBOOLEAN_OPERAND_2D*/_TEMP16))
        let _TEMP18 = _TEMP12 && _TEMP17
        return _valid_csg_2d_primitives__cache.updateCache(params: _params, value: SDAI.BOOLEAN(/*SDAI.LOGICAL*/
          _TEMP18))

      default:
        return _valid_csg_2d_primitives__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.FALSE))
      } //end switch
    }
    else {
      return _valid_csg_2d_primitives__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.FALSE))
    }
  }

}

//MARK: - function result cache
private var _valid_csg_2d_primitives__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)
