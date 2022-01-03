/* file: any_space_satisfies.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  FUNCTION any_space_satisfies(
               sc : space_constraint_type;
               spc : maths_space
           ) : BOOLEAN;

    LOCAL
      spc_id : elementary_space_enumerators;
    END_LOCAL;
    IF ( sc = sc_equal ) OR ( NOT ( 'ELEMENTARY_SPACE' IN stripped_typeof( spc ) ) ) THEN
      RETURN( FALSE );
    END_IF;
    spc_id := spc\elementary_space.space_id;
    IF sc = sc_subspace THEN
      RETURN( bool( spc_id = es_generics ) );
    END_IF;
    IF sc = sc_member THEN
      RETURN( bool( ( spc_id = es_generics ) OR ( spc_id = es_maths_spaces ) ) );
    END_IF;
    RETURN( ? );

  END_FUNCTION; -- any_space_satisfies (line:35409 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func ANY_SPACE_SATISFIES(SC: nSPACE_CONSTRAINT_TYPE? , SPC: eMATHS_SPACE? ) 
    -> SDAI.BOOLEAN? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( SC, SPC )
    if case .available(let _cached_value) = _any_space_satisfies__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.BOOLEAN
    }

    var SC = SC; SDAI.TOUCH(var: &SC)
    var SPC = SPC; SDAI.TOUCH(var: &SPC)

    //LOCAL
    var SPC_ID: nELEMENTARY_SPACE_ENUMERATORS? 

    
    let _TEMP1 = SC .==. SDAI.FORCE_OPTIONAL(SC_EQUAL)
    let _TEMP2 = STRIPPED_TYPEOF(SPC)
    let _TEMP3 = SDAI.aggregate(_TEMP2, contains: SDAI.STRING("ELEMENTARY_SPACE"))
    let _TEMP4 =  !_TEMP3
    let _TEMP5 = _TEMP1 || _TEMP4
    if SDAI.IS_TRUE( _TEMP5 ) {
      return _any_space_satisfies__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.FALSE))
    }
    
    let _TEMP6 = SPC?.GROUP_REF(eELEMENTARY_SPACE.self)
    let _TEMP7 = _TEMP6?.SPACE_ID
    SPC_ID = _TEMP7
    
    let _TEMP8 = SC .==. SDAI.FORCE_OPTIONAL(SC_SUBSPACE)
    if SDAI.IS_TRUE( _TEMP8 ) {
      
      let _TEMP9 = SPC_ID .==. SDAI.FORCE_OPTIONAL(ES_GENERICS)
      let _TEMP10 = BOOL(SDAI.LOGICAL(_TEMP9))
      return _any_space_satisfies__cache.updateCache(params: _params, value: _TEMP10)
    }
    
    let _TEMP11 = SC .==. SDAI.FORCE_OPTIONAL(SC_MEMBER)
    if SDAI.IS_TRUE( _TEMP11 ) {
      
      let _TEMP12 = SPC_ID .==. SDAI.FORCE_OPTIONAL(ES_GENERICS)
      let _TEMP13 = SPC_ID .==. SDAI.FORCE_OPTIONAL(ES_MATHS_SPACES)
      let _TEMP14 = _TEMP12 || _TEMP13
      let _TEMP15 = BOOL(SDAI.LOGICAL(_TEMP14))
      return _any_space_satisfies__cache.updateCache(params: _params, value: _TEMP15)
    }
    return _any_space_satisfies__cache.updateCache(params: _params, value: (nil as SDAI.BOOLEAN?))
  }

}

//MARK: - function result cache
private var _any_space_satisfies__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

