/* file: number_tuple_subspace_check.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  FUNCTION number_tuple_subspace_check(
               spc : maths_space
           ) : LOGICAL;

    LOCAL
      types   : SET OF STRING := stripped_typeof( spc );
      factors : LIST OF maths_space;
      cum     : LOGICAL := TRUE;
    END_LOCAL;
    IF 'UNIFORM_PRODUCT_SPACE' IN types THEN
      RETURN( subspace_of_es( spc\uniform_product_space.base, es_numbers ) );
    END_IF;
    IF 'LISTED_PRODUCT_SPACE' IN types THEN
      factors := spc\listed_product_space.factors;
      REPEAT i := 1 TO SIZEOF( factors ) BY 1;
        cum := cum AND subspace_of_es( factors[i], es_numbers );
      END_REPEAT;
      RETURN( cum );
    END_IF;
    IF 'EXTENDED_TUPLE_SPACE' IN types THEN
      cum := subspace_of_es( spc\extended_tuple_space.extender, es_numbers );
      cum := cum AND number_tuple_subspace_check( spc\extended_tuple_space.base );
      RETURN( cum );
    END_IF;
    RETURN( FALSE );

  END_FUNCTION; -- number_tuple_subspace_check (line:43782 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func NUMBER_TUPLE_SUBSPACE_CHECK(_ SPC: eMATHS_SPACE? ) 
    -> SDAI.LOGICAL {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( SPC )
    if case .available(let _cached_value) = _number_tuple_subspace_check__cache.cachedValue(params: _params) {
      return _cached_value as! SDAI.LOGICAL
    }

    var SPC = SPC; SDAI.TOUCH(var: &SPC)

    //LOCAL
    var TYPES: SDAI.SET<SDAI.STRING>?  = STRIPPED_TYPEOF(SPC); SDAI.TOUCH(var: &TYPES)
    var FACTORS: SDAI.LIST<eMATHS_SPACE>? 
    var CUM: SDAI.LOGICAL = SDAI.LOGICAL(SDAI.TRUE); SDAI.TOUCH(var: &CUM)
    //END_LOCAL

    
    let _TEMP1 = SDAI.aggregate(TYPES, contains: SDAI.STRING("UNIFORM_PRODUCT_SPACE"))
    if SDAI.IS_TRUE( _TEMP1 ) {
      
      let _TEMP2 = SPC?.GROUP_REF(eUNIFORM_PRODUCT_SPACE.self)
      let _TEMP3 = _TEMP2?.BASE
      let _TEMP4 = SUBSPACE_OF_ES(SPC: _TEMP3, 
                                  ES: ES_NUMBERS)
      return _number_tuple_subspace_check__cache.updateCache(params: _params, value: _TEMP4)
    }
    
    let _TEMP5 = SDAI.aggregate(TYPES, contains: SDAI.STRING("LISTED_PRODUCT_SPACE"))
    if SDAI.IS_TRUE( _TEMP5 ) {
      
      let _TEMP6 = SPC?.GROUP_REF(eLISTED_PRODUCT_SPACE.self)
      let _TEMP7 = _TEMP6?.FACTORS
      FACTORS = _TEMP7
      if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.SIZEOF(
        FACTORS)) {
        for I in incrementControl {
          
          let _TEMP8 = FACTORS?[I]
          let _TEMP9 = SUBSPACE_OF_ES(
            SPC: _TEMP8, ES: ES_NUMBERS)
          let _TEMP10 = CUM && _TEMP9
          CUM = SDAI.UNWRAP(_TEMP10)
        }
      }
      return _number_tuple_subspace_check__cache.updateCache(params: _params, value: CUM)
    }
    
    let _TEMP11 = SDAI.aggregate(TYPES, contains: SDAI.STRING("EXTENDED_TUPLE_SPACE"))
    if SDAI.IS_TRUE( _TEMP11 ) {
      
      let _TEMP12 = SPC?.GROUP_REF(eEXTENDED_TUPLE_SPACE.self)
      let _TEMP13 = _TEMP12?.EXTENDER
      let _TEMP14 = SUBSPACE_OF_ES(SPC: _TEMP13, 
                                   ES: ES_NUMBERS)
      CUM = SDAI.UNWRAP(_TEMP14)
      
      let _TEMP15 = SPC?.GROUP_REF(eEXTENDED_TUPLE_SPACE.self)
      let _TEMP16 = _TEMP15?.BASE
      let _TEMP17 = NUMBER_TUPLE_SUBSPACE_CHECK(eMATHS_SPACE(/*sTUPLE_SPACE*/_TEMP16))
      let _TEMP18 = CUM && _TEMP17
      CUM = SDAI.UNWRAP(_TEMP18)
      return _number_tuple_subspace_check__cache.updateCache(params: _params, value: CUM)
    }
    return _number_tuple_subspace_check__cache.updateCache(params: _params, value: SDAI.LOGICAL(SDAI.FALSE))
  }

}

//MARK: - function result cache
private var _number_tuple_subspace_check__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

