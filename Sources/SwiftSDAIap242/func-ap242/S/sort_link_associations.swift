/* file: sort_link_associations.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  FUNCTION sort_link_associations(
               aprr : SET [1 : ?] OF pair_representation_relationship;
               one_not_two : BOOLEAN
           ) : SET OF kinematic_link_representation;

    LOCAL
      result : SET OF kinematic_link_representation := [];
    END_LOCAL;
    IF one_not_two THEN
      REPEAT i := 1 TO HIINDEX( aprr ) BY 1;
        result := result + aprr[i].rep_1;
      END_REPEAT;
    ELSE
      REPEAT i := 1 TO HIINDEX( aprr ) BY 1;
        result := result + aprr[i].rep_2;
      END_REPEAT;
    END_IF;
    RETURN( result );

  END_FUNCTION; -- sort_link_associations (line:46392 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func SORT_LINK_ASSOCIATIONS(APRR: (SDAI.SET<ePAIR_REPRESENTATION_RELATIONSHIP>/*[1:nil]*/ )? , 
                              ONE_NOT_TWO: SDAI.BOOLEAN? ) 
    -> SDAI.SET<eKINEMATIC_LINK_REPRESENTATION>? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( APRR, ONE_NOT_TWO )
    if case .available(let _cached_value) = _sort_link_associations__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.SET<eKINEMATIC_LINK_REPRESENTATION>
    }

    var APRR = APRR; SDAI.TOUCH(var: &APRR)
    var ONE_NOT_TWO = ONE_NOT_TWO; SDAI.TOUCH(var: &ONE_NOT_TWO)

    //LOCAL
    var RESULT: SDAI.SET<eKINEMATIC_LINK_REPRESENTATION>?  = SDAI.SET<eKINEMATIC_LINK_REPRESENTATION>(
                                                             SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &RESULT)

    if SDAI.IS_TRUE( ONE_NOT_TWO ) {
      if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.HIINDEX(
        APRR)) {
        for I in incrementControl {
          
          let _TEMP1 = APRR?[I]
          let _TEMP2 = _TEMP1?.REP_1
          let _TEMP3 = RESULT + _TEMP2
          RESULT = _TEMP3
        }
      }
    }
    else {
      if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.HIINDEX(
        APRR)) {
        for I in incrementControl {
          
          let _TEMP4 = APRR?[I]
          let _TEMP5 = _TEMP4?.REP_2
          let _TEMP6 = RESULT + _TEMP5
          RESULT = _TEMP6
        }
      }
    }
    return _sort_link_associations__cache.updateCache(params: _params, value: RESULT)
  }

}

//MARK: - function result cache
private var _sort_link_associations__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

