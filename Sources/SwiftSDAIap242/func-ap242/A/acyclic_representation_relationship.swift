/* file: acyclic_representation_relationship.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  FUNCTION acyclic_representation_relationship(
               relation : representation_relationship;
               relatives : SET [1 : ?] OF representation;
               specific_relation : STRING
           ) : BOOLEAN;

    LOCAL
      x                   : SET OF representation_relationship;
      set__representation : SET OF representation;
    END_LOCAL;
    IF relation.rep_1 IN relatives THEN
      RETURN( FALSE );
    END_IF;
    x := QUERY ( r <* bag_to_set( USEDIN( relation.rep_1, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
        + 'REPRESENTATION_RELATIONSHIP.REP_2'  ) ) | ( specific_relation IN TYPEOF( r ) ) );
    REPEAT i := 1 TO HIINDEX( x ) BY 1;
      set__representation := relation.rep_1;
      IF NOT acyclic_representation_relationship( x[i], relatives + set__representation, specific_relation )
          THEN
        RETURN( FALSE );
      END_IF;
    END_REPEAT;
    RETURN( TRUE );

  END_FUNCTION; -- acyclic_representation_relationship (line:35167 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func ACYCLIC_REPRESENTATION_RELATIONSHIP(
    RELATION: eREPRESENTATION_RELATIONSHIP? , RELATIVES: (SDAI.SET<eREPRESENTATION>/*[1:nil]*/ )? , 
    SPECIFIC_RELATION: SDAI.STRING? ) 
    -> SDAI.BOOLEAN? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( RELATION, RELATIVES, SPECIFIC_RELATION )
    if case .available(let _cached_value) = _acyclic_representation_relationship__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.BOOLEAN
    }

    var RELATION = RELATION; SDAI.TOUCH(var: &RELATION)
    var RELATIVES = RELATIVES; SDAI.TOUCH(var: &RELATIVES)
    var SPECIFIC_RELATION = SPECIFIC_RELATION; SDAI.TOUCH(var: &SPECIFIC_RELATION)

    //LOCAL
    var X: SDAI.SET<eREPRESENTATION_RELATIONSHIP>? 
    var SET__REPRESENTATION: SDAI.SET<eREPRESENTATION>? 
    //END_LOCAL

    
    let _TEMP1 = RELATION?.REP_1
    let _TEMP2 = SDAI.aggregate(RELATIVES, contains: eREPRESENTATION(/*
      sREPRESENTATION_OR_REPRESENTATION_REFERENCE*/_TEMP1))
    if SDAI.IS_TRUE( _TEMP2 ) {
      return _acyclic_representation_relationship__cache.updateCache(params: _params, value: SDAI.BOOLEAN(
        SDAI.FALSE))
    }
    
    let _TEMP3 = RELATION?.REP_1
    let _TEMP4 = SDAI.USEDIN(T: _TEMP3, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
      .eREPRESENTATION_RELATIONSHIP.REP_2)
    let _TEMP5 = BAG_TO_SET(_TEMP4)
    let _TEMP6 = _TEMP5?.QUERY{ R in 

        let _TEMP1 = SDAI.TYPEOF(R)
        let _TEMP2 = SDAI.aggregate(_TEMP1, contains: SPECIFIC_RELATION)
        return _TEMP2 }
    X = SDAI.SET<eREPRESENTATION_RELATIONSHIP>(generic: /*SDAI.SET<gINTYPE>*/_TEMP6)
    if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.HIINDEX(
      X)) {
      for I in incrementControl {
        
        let _TEMP7 = RELATION?.REP_1
        SET__REPRESENTATION = SDAI.SET<eREPRESENTATION>(/*sREPRESENTATION_OR_REPRESENTATION_REFERENCE*/_TEMP7)
        
        let _TEMP8 = X?[I]
        let _TEMP9 = RELATIVES + SET__REPRESENTATION
        let _TEMP10 = ACYCLIC_REPRESENTATION_RELATIONSHIP(
          RELATION: _TEMP8, RELATIVES: SDAI.SET<eREPRESENTATION>(bound1: SDAI.UNWRAP(SDAI.INTEGER(1)), 
          bound2: (nil as SDAI.INTEGER?), 
          /*SDAI.SET<eREPRESENTATION>*/_TEMP9), 
          SPECIFIC_RELATION: SPECIFIC_RELATION)
        let _TEMP11 =  !_TEMP10
        if SDAI.IS_TRUE( _TEMP11 ) {
          return _acyclic_representation_relationship__cache.updateCache(params: _params, value: SDAI.BOOLEAN(
            SDAI.FALSE))
        }
      }
    }
    return _acyclic_representation_relationship__cache.updateCache(params: _params, value: SDAI.BOOLEAN(
      SDAI.TRUE))
  }

}

//MARK: - function result cache
private var _acyclic_representation_relationship__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

