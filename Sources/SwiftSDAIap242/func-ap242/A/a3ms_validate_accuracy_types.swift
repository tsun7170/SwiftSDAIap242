/* file: a3ms_validate_accuracy_types.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  FUNCTION a3ms_validate_accuracy_types(
               ei : accuracy_associated_target_select;
               cr : a3m_equivalence_criterion_for_shape
           ) : LOGICAL;

    LOCAL
      aeaa : SET OF a3m_equivalence_accuracy_association;
      rp   : SET OF representation;
      tp   : SET OF a3ms_accuracy_type_name := [];
    END_LOCAL;
    REPEAT i := 1 TO SIZEOF( cr.accuracy_types ) BY 1;
      tp := tp + [cr.accuracy_types[i]];
    END_REPEAT;
    IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.REPRESENTATION_ITEM' IN TYPEOF( ei ) THEN
      aeaa := bag_to_set( USEDIN( ei, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
          + 'A3M_EQUIVALENCE_ACCURACY_ASSOCIATION.EQUIVALENCE_TARGET'  ) );
      IF SIZEOF( cr.accuracy_types ) = 0 THEN
        IF SIZEOF( aeaa ) = 0 THEN
          RETURN( TRUE );
        ELSE
          RETURN( FALSE );
        END_IF;
      END_IF;
      IF a3ms_get_accuracy_types( aeaa ) = tp THEN
        RETURN( TRUE );
      END_IF;
      rp := bag_to_set( USEDIN( ei, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.REPRESENTATION.ITEMS' ) );
    ELSE
      IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.REPRESENTATION' IN TYPEOF( ei ) THEN
        rp := [ei];
      ELSE
        rp := [];
      END_IF;
    END_IF;
    aeaa := [];
    REPEAT i := 1 TO SIZEOF( rp ) BY 1;
      aeaa := aeaa + bag_to_set( USEDIN( rp[i], 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
          + 'A3M_EQUIVALENCE_ACCURACY_ASSOCIATION.EQUIVALENCE_TARGET'  ) );
    END_REPEAT;
    IF a3ms_get_accuracy_types( aeaa ) >= tp THEN
      RETURN( TRUE );
    END_IF;
    RETURN( FALSE );

  END_FUNCTION; -- a3ms_validate_accuracy_types (line:34513 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func A3MS_VALIDATE_ACCURACY_TYPES(
    EI: sACCURACY_ASSOCIATED_TARGET_SELECT? , CR: eA3M_EQUIVALENCE_CRITERION_FOR_SHAPE? ) 
    -> SDAI.LOGICAL {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( EI, CR )
    if case .available(let _cached_value) = _a3ms_validate_accuracy_types__cache.cachedValue(params: _params) {
      return _cached_value as! SDAI.LOGICAL
    }

    var EI = EI; SDAI.TOUCH(var: &EI)
    var CR = CR; SDAI.TOUCH(var: &CR)

    //LOCAL
    var AEAA: SDAI.SET<eA3M_EQUIVALENCE_ACCURACY_ASSOCIATION>? 
    var RP: SDAI.SET<eREPRESENTATION>? 
    var TP: SDAI.SET<nA3MS_ACCURACY_TYPE_NAME>?  = SDAI.SET<nA3MS_ACCURACY_TYPE_NAME>(SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &TP)
    //END_LOCAL

    if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.SIZEOF(
      CR?.ACCURACY_TYPES)) {
      for I in incrementControl {
        
        let _TEMP1 = CR?.ACCURACY_TYPES
        let _TEMP2 = _TEMP1?[I]
        let _TEMP3 = ([SDAI.AIE(_TEMP2)] as [SDAI.AggregationInitializerElement<nA3MS_ACCURACY_TYPE_NAME>])
        let _TEMP4 = TP + SDAI.FORCE_OPTIONAL(_TEMP3)
        TP = _TEMP4
      }
    }
    
    let _TEMP5 = SDAI.TYPEOF(EI, IS: eREPRESENTATION_ITEM.self)
    if SDAI.IS_TRUE( _TEMP5 ) {
      
      let _TEMP6 = SDAI.USEDIN(T: EI, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
        .eA3M_EQUIVALENCE_ACCURACY_ASSOCIATION.EQUIVALENCE_TARGET)
      let _TEMP7 = BAG_TO_SET(_TEMP6)
      AEAA = SDAI.SET<eA3M_EQUIVALENCE_ACCURACY_ASSOCIATION>(generic: /*SDAI.SET<gINTYPE>*/_TEMP7)
      
      let _TEMP8 = CR?.ACCURACY_TYPES
      let _TEMP9 = SDAI.SIZEOF(_TEMP8)
      let _TEMP10 = _TEMP9 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      if SDAI.IS_TRUE( _TEMP10 ) {
        
        let _TEMP11 = SDAI.SIZEOF(AEAA)
        let _TEMP12 = _TEMP11 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
        if SDAI.IS_TRUE( _TEMP12 ) {
          return _a3ms_validate_accuracy_types__cache.updateCache(params: _params, value: SDAI.UNWRAP(SDAI.LOGICAL(
            SDAI.TRUE)))
        }
        else {
          return _a3ms_validate_accuracy_types__cache.updateCache(params: _params, value: SDAI.UNWRAP(SDAI.LOGICAL(
            SDAI.FALSE)))
        }
      }
      
      let _TEMP13 = A3MS_GET_ACCURACY_TYPES(SDAI.SET<eA3M_EQUIVALENCE_ACCURACY_ASSOCIATION>(
        bound1: SDAI.UNWRAP(SDAI.INTEGER(0)), bound2: (nil as SDAI.INTEGER?), 
        /*SDAI.SET<eA3M_EQUIVALENCE_ACCURACY_ASSOCIATION>*/AEAA))
      let _TEMP14 = _TEMP13 .==. TP
      if SDAI.IS_TRUE( _TEMP14 ) {
        return _a3ms_validate_accuracy_types__cache.updateCache(params: _params, value: SDAI.UNWRAP(SDAI.LOGICAL(
          SDAI.TRUE)))
      }
      
      let _TEMP15 = SDAI.USEDIN(T: EI, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION
        .ITEMS)
      let _TEMP16 = BAG_TO_SET(_TEMP15)
      RP = SDAI.SET<eREPRESENTATION>(generic: /*SDAI.SET<gINTYPE>*/_TEMP16)
    }
    else {
      
      let _TEMP17 = SDAI.TYPEOF(EI, IS: eREPRESENTATION.self)
      if SDAI.IS_TRUE( _TEMP17 ) {
        
        let _TEMP18 = SDAI.SET<eREPRESENTATION>(([
          SDAI.AIE(eREPRESENTATION(/*sACCURACY_ASSOCIATED_TARGET_SELECT*/EI))] 
          as [SDAI.AggregationInitializerElement<eREPRESENTATION>]))
        RP = _TEMP18
      }
      else {
        
        let _TEMP19 = SDAI.SET<eREPRESENTATION>(SDAI.EMPLY_AGGREGATE)
        RP = _TEMP19
      }
    }
    
    let _TEMP20 = SDAI.SET<eA3M_EQUIVALENCE_ACCURACY_ASSOCIATION>(SDAI.EMPLY_AGGREGATE)
    AEAA = _TEMP20
    if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.SIZEOF(
      RP)) {
      for I in incrementControl {
        
        let _TEMP21 = RP?[I]
        let _TEMP22 = SDAI.USEDIN(T: _TEMP21, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
          .eA3M_EQUIVALENCE_ACCURACY_ASSOCIATION.EQUIVALENCE_TARGET)
        let _TEMP23 = BAG_TO_SET(_TEMP22)
        let _TEMP24 = AEAA + _TEMP23
        AEAA = SDAI.SET<eA3M_EQUIVALENCE_ACCURACY_ASSOCIATION>(generic: /*SDAI.SET<runtime>*/_TEMP24)
      }
    }
    
    let _TEMP25 = A3MS_GET_ACCURACY_TYPES(SDAI.SET<eA3M_EQUIVALENCE_ACCURACY_ASSOCIATION>(
      bound1: SDAI.UNWRAP(SDAI.INTEGER(0)), bound2: (nil as SDAI.INTEGER?), 
      /*SDAI.SET<eA3M_EQUIVALENCE_ACCURACY_ASSOCIATION>*/AEAA))
    let _TEMP26 = _TEMP25 >= TP
    if SDAI.IS_TRUE( _TEMP26 ) {
      return _a3ms_validate_accuracy_types__cache.updateCache(params: _params, value: SDAI.UNWRAP(SDAI.LOGICAL(
        SDAI.TRUE)))
    }
    return _a3ms_validate_accuracy_types__cache.updateCache(params: _params, value: SDAI.UNWRAP(SDAI.LOGICAL(
      SDAI.FALSE)))
  }

}

//MARK: - function result cache
private var _a3ms_validate_accuracy_types__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

