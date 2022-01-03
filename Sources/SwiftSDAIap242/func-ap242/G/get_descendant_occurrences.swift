/* file: get_descendant_occurrences.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  FUNCTION get_descendant_occurrences(
               input : product_definition_occurrence
           ) : SET [0 : ?] OF product_definition_specified_occurrence;

    LOCAL
      result : SET OF product_definition_specified_occurrence := input.child_occurrences;
    END_LOCAL;
    REPEAT i := 1 TO HIINDEX( input.child_occurrences ) BY 1;
      result := result + get_descendant_occurrences( input.child_occurrences[i] );
    END_REPEAT;
    RETURN( result );

  END_FUNCTION; -- get_descendant_occurrences (line:41651 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func GET_DESCENDANT_OCCURRENCES(_ INPUT: ePRODUCT_DEFINITION_OCCURRENCE? ) 
    -> (SDAI.SET<ePRODUCT_DEFINITION_SPECIFIED_OCCURRENCE>/*[0:nil]*/ )? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( INPUT )
    if case .available(let _cached_value) = _get_descendant_occurrences__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.SET<ePRODUCT_DEFINITION_SPECIFIED_OCCURRENCE>
    }

    var INPUT = INPUT; SDAI.TOUCH(var: &INPUT)

    //LOCAL
    var RESULT: SDAI.SET<ePRODUCT_DEFINITION_SPECIFIED_OCCURRENCE>?  = SDAI.SET<ePRODUCT_DEFINITION_SPECIFIED_OCCURRENCE>(/*
                                                                       SDAI.SET<ePRODUCT_DEFINITION_SPECIFIED_OCCURRENCE>
                                                                       [0:nil] */INPUT?.CHILD_OCCURRENCES); SDAI.TOUCH(var: &RESULT)

    if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.HIINDEX(
      INPUT?.CHILD_OCCURRENCES)) {
      for I in incrementControl {
        
        let _TEMP1 = INPUT?.CHILD_OCCURRENCES
        let _TEMP2 = _TEMP1?[I]
        let _TEMP3 = GET_DESCENDANT_OCCURRENCES(ePRODUCT_DEFINITION_OCCURRENCE(/*
          ePRODUCT_DEFINITION_SPECIFIED_OCCURRENCE*/_TEMP2))
        let _TEMP4 = RESULT + _TEMP3
        RESULT = _TEMP4
      }
    }
    return _get_descendant_occurrences__cache.updateCache(params: _params, value: SDAI.SET<
      ePRODUCT_DEFINITION_SPECIFIED_OCCURRENCE>(bound1: SDAI.UNWRAP(SDAI.INTEGER(0)), bound2: (nil as SDAI.INTEGER?), 
      /*SDAI.SET<ePRODUCT_DEFINITION_SPECIFIED_OCCURRENCE>*/RESULT))
  }

}

//MARK: - function result cache
private var _get_descendant_occurrences__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

