/* file: acyclic_alternative_solution_relationship.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  FUNCTION acyclic_alternative_solution_relationship(
               relation : alternative_solution_relationship;
               relatives : SET [1 : ?] OF product_definition_formation;
               specific_relation : STRING
           ) : BOOLEAN;

    LOCAL
      x : SET OF alternative_solution_relationship;
    END_LOCAL;
    IF relation.relating_product_definition_formation IN relatives THEN
      RETURN( FALSE );
    END_IF;
    x := QUERY ( asr <* bag_to_set( USEDIN( relation.relating_product_definition_formation, 
        'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ALTERNATIVE_SOLUTION_RELATIONSHIP.'
        + 'RELATED_PRODUCT_DEFINITION_FORMATION'  ) ) | ( specific_relation IN TYPEOF( asr ) ) );
    REPEAT i := 1 TO HIINDEX( x ) BY 1;
      IF NOT acyclic_alternative_solution_relationship( x[i], relatives + relation.
          relating_product_definition_formation, specific_relation ) THEN
        RETURN( FALSE );
      END_IF;
    END_REPEAT;
    RETURN( TRUE );

  END_FUNCTION; -- acyclic_alternative_solution_relationship (line:34827 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func ACYCLIC_ALTERNATIVE_SOLUTION_RELATIONSHIP(
    RELATION: eALTERNATIVE_SOLUTION_RELATIONSHIP? , RELATIVES: (SDAI.SET<ePRODUCT_DEFINITION_FORMATION>/*[1:
    nil]*/ )? , SPECIFIC_RELATION: SDAI.STRING? ) 
    -> SDAI.BOOLEAN? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( RELATION, RELATIVES, SPECIFIC_RELATION )
    if case .available(let _cached_value) = _acyclic_alternative_solution_relationship__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.BOOLEAN
    }

    var RELATION = RELATION; SDAI.TOUCH(var: &RELATION)
    var RELATIVES = RELATIVES; SDAI.TOUCH(var: &RELATIVES)
    var SPECIFIC_RELATION = SPECIFIC_RELATION; SDAI.TOUCH(var: &SPECIFIC_RELATION)

    //LOCAL
    var X: SDAI.SET<eALTERNATIVE_SOLUTION_RELATIONSHIP>? 

    
    let _TEMP1 = RELATION?.RELATING_PRODUCT_DEFINITION_FORMATION
    let _TEMP2 = SDAI.aggregate(RELATIVES, contains: _TEMP1)
    if SDAI.IS_TRUE( _TEMP2 ) {
      return _acyclic_alternative_solution_relationship__cache.updateCache(params: _params, value: SDAI.BOOLEAN(
        SDAI.FALSE))
    }
    
    let _TEMP3 = RELATION?.RELATING_PRODUCT_DEFINITION_FORMATION
    let _TEMP4 = SDAI.USEDIN(T: _TEMP3, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
      .eALTERNATIVE_SOLUTION_RELATIONSHIP.RELATED_PRODUCT_DEFINITION_FORMATION)
    let _TEMP5 = BAG_TO_SET(_TEMP4)
    let _TEMP6 = _TEMP5?.QUERY{ ASR in 

        let _TEMP1 = SDAI.TYPEOF(ASR)
        let _TEMP2 = SDAI.aggregate(_TEMP1, contains: SPECIFIC_RELATION)
        return _TEMP2 }
    X = SDAI.SET<eALTERNATIVE_SOLUTION_RELATIONSHIP>(generic: /*SDAI.SET<gINTYPE>*/_TEMP6)
    if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.HIINDEX(
      X)) {
      for I in incrementControl {
        
        let _TEMP7 = X?[I]
        let _TEMP8 = RELATION?.RELATING_PRODUCT_DEFINITION_FORMATION
        let _TEMP9 = RELATIVES + _TEMP8
        let _TEMP10 = ACYCLIC_ALTERNATIVE_SOLUTION_RELATIONSHIP(
          RELATION: _TEMP7, RELATIVES: SDAI.SET<ePRODUCT_DEFINITION_FORMATION>(
          bound1: SDAI.UNWRAP(SDAI.INTEGER(1)), bound2: (nil as SDAI.INTEGER?), 
          /*SDAI.SET<ePRODUCT_DEFINITION_FORMATION>*/_TEMP9), 
          SPECIFIC_RELATION: SPECIFIC_RELATION)
        let _TEMP11 =  !_TEMP10
        if SDAI.IS_TRUE( _TEMP11 ) {
          return _acyclic_alternative_solution_relationship__cache.updateCache(params: _params, value: SDAI.BOOLEAN(
            SDAI.FALSE))
        }
      }
    }
    return _acyclic_alternative_solution_relationship__cache.updateCache(params: _params, value: SDAI.BOOLEAN(
      SDAI.TRUE))
  }

}

//MARK: - function result cache
private var _acyclic_alternative_solution_relationship__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

