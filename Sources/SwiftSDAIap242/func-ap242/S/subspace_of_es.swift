/* file: subspace_of_es.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  FUNCTION subspace_of_es(
               spc : maths_space;
               es : elementary_space_enumerators
           ) : LOGICAL;

    LOCAL
      types : SET OF STRING := stripped_typeof( spc );
    END_LOCAL;
    IF ( NOT EXISTS( spc ) ) OR ( NOT EXISTS( es ) ) THEN
      RETURN( FALSE );
    END_IF;
    IF 'ELEMENTARY_SPACE' IN types THEN
      RETURN( es_subspace_of_es( spc\elementary_space.space_id, es ) );
    END_IF;
    IF 'FINITE_SPACE' IN types THEN
      RETURN( all_members_of_es( spc\finite_space.members, es ) );
    END_IF;
    CASE es OF
      es_numbers                  :         RETURN( ( 'FINITE_INTEGER_INTERVAL' IN types ) OR ( 
            'INTEGER_INTERVAL_FROM_MIN'  IN types ) OR ( 'INTEGER_INTERVAL_TO_MAX' IN types ) OR ( 
            'FINITE_REAL_INTERVAL'  IN types ) OR ( 'REAL_INTERVAL_FROM_MIN' IN types ) OR ( 
            'REAL_INTERVAL_TO_MAX'  IN types ) OR ( 'CARTESIAN_COMPLEX_NUMBER_REGION' IN types ) OR ( 
            'POLAR_COMPLEX_NUMBER_REGION'  IN types ) );
      es_complex_numbers          :         RETURN( ( 'CARTESIAN_COMPLEX_NUMBER_REGION' IN types ) OR ( 
            'POLAR_COMPLEX_NUMBER_REGION'  IN types ) );
      es_reals                    :         RETURN( ( 'FINITE_REAL_INTERVAL' IN types ) OR ( 
            'REAL_INTERVAL_FROM_MIN'  IN types ) OR ( 'REAL_INTERVAL_TO_MAX' IN types ) );
      es_integers                 :         RETURN( ( 'FINITE_INTEGER_INTERVAL' IN types ) OR ( 
            'INTEGER_INTERVAL_FROM_MIN'  IN types ) OR ( 'INTEGER_INTERVAL_TO_MAX' IN types ) );
      es_logicals                 :         RETURN( FALSE );
      es_booleans                 :         RETURN( FALSE );
      es_strings                  :         RETURN( FALSE );
      es_binarys                  :         RETURN( FALSE );
      es_maths_spaces             :         RETURN( FALSE );
      es_maths_functions          :         RETURN( 'FUNCTION_SPACE' IN types );
      es_generics                 :         RETURN( TRUE );
    END_CASE;
    RETURN( UNKNOWN );

  END_FUNCTION; -- subspace_of_es (line:46890 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func SUBSPACE_OF_ES(SPC: eMATHS_SPACE? , ES: nELEMENTARY_SPACE_ENUMERATORS? ) 
    -> SDAI.LOGICAL {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( SPC, ES )
    if case .available(let _cached_value) = _subspace_of_es__cache.cachedValue(params: _params) {
      return _cached_value as! SDAI.LOGICAL
    }

    var SPC = SPC; SDAI.TOUCH(var: &SPC)
    var ES = ES; SDAI.TOUCH(var: &ES)

    //LOCAL
    var TYPES: SDAI.SET<SDAI.STRING>?  = STRIPPED_TYPEOF(SPC); SDAI.TOUCH(var: &TYPES)

    
    let _TEMP1 = SDAI.EXISTS(SPC)
    let _TEMP2 =  !_TEMP1
    let _TEMP3 = SDAI.EXISTS(ES)
    let _TEMP4 =  !_TEMP3
    let _TEMP5 = _TEMP2 || _TEMP4
    if SDAI.IS_TRUE( _TEMP5 ) {
      return _subspace_of_es__cache.updateCache(params: _params, value: SDAI.LOGICAL(SDAI.FALSE))
    }
    
    let _TEMP6 = SDAI.aggregate(TYPES, contains: SDAI.STRING("ELEMENTARY_SPACE"))
    if SDAI.IS_TRUE( _TEMP6 ) {
      
      let _TEMP7 = SPC?.GROUP_REF(eELEMENTARY_SPACE.self)
      let _TEMP8 = _TEMP7?.SPACE_ID
      let _TEMP9 = ES_SUBSPACE_OF_ES(
        ES1: _TEMP8, ES2: ES)
      return _subspace_of_es__cache.updateCache(params: _params, value: SDAI.LOGICAL(/*SDAI.BOOLEAN*/_TEMP9))
    }
    
    let _TEMP10 = SDAI.aggregate(TYPES, contains: SDAI.STRING("FINITE_SPACE"))
    if SDAI.IS_TRUE( _TEMP10 ) {
      
      let _TEMP11 = SPC?.GROUP_REF(eFINITE_SPACE.self)
      let _TEMP12 = _TEMP11?.MEMBERS
      let _TEMP13 = ALL_MEMBERS_OF_ES(
        SV: _TEMP12, ES: ES)
      return _subspace_of_es__cache.updateCache(params: _params, value: _TEMP13)
    }
    if let selector = ES {
      switch selector {
      case ES_NUMBERS:
        
        let _TEMP14 = SDAI.aggregate(TYPES, contains: SDAI.STRING("FINITE_INTEGER_INTERVAL"))
        let _TEMP15 = SDAI.aggregate(TYPES, contains: SDAI.STRING("INTEGER_INTERVAL_FROM_MIN"))
        let _TEMP16 = _TEMP14 || _TEMP15
        let _TEMP17 = SDAI.aggregate(TYPES, contains: SDAI.STRING("INTEGER_INTERVAL_TO_MAX"))
        let _TEMP18 = _TEMP16 || _TEMP17
        let _TEMP19 = SDAI.aggregate(TYPES, contains: SDAI.STRING("FINITE_REAL_INTERVAL"))
        let _TEMP20 = _TEMP18 || _TEMP19
        let _TEMP21 = SDAI.aggregate(TYPES, contains: SDAI.STRING("REAL_INTERVAL_FROM_MIN"))
        let _TEMP22 = _TEMP20 || _TEMP21
        let _TEMP23 = SDAI.aggregate(TYPES, contains: SDAI.STRING("REAL_INTERVAL_TO_MAX"))
        let _TEMP24 = _TEMP22 || _TEMP23
        let _TEMP25 = SDAI.aggregate(TYPES, contains: SDAI.STRING("CARTESIAN_COMPLEX_NUMBER_REGION"))
        let _TEMP26 = _TEMP24 || _TEMP25
        let _TEMP27 = SDAI.aggregate(TYPES, contains: SDAI.STRING("POLAR_COMPLEX_NUMBER_REGION"))
        let _TEMP28 = _TEMP26 || _TEMP27
        return _subspace_of_es__cache.updateCache(params: _params, value: _TEMP28)

      case ES_COMPLEX_NUMBERS:
        
        let _TEMP29 = SDAI.aggregate(TYPES, contains: SDAI.STRING("CARTESIAN_COMPLEX_NUMBER_REGION"))
        let _TEMP30 = SDAI.aggregate(TYPES, contains: SDAI.STRING("POLAR_COMPLEX_NUMBER_REGION"))
        let _TEMP31 = _TEMP29 || _TEMP30
        return _subspace_of_es__cache.updateCache(params: _params, value: _TEMP31)

      case ES_REALS:
        
        let _TEMP32 = SDAI.aggregate(TYPES, contains: SDAI.STRING("FINITE_REAL_INTERVAL"))
        let _TEMP33 = SDAI.aggregate(TYPES, contains: SDAI.STRING("REAL_INTERVAL_FROM_MIN"))
        let _TEMP34 = _TEMP32 || _TEMP33
        let _TEMP35 = SDAI.aggregate(TYPES, contains: SDAI.STRING("REAL_INTERVAL_TO_MAX"))
        let _TEMP36 = _TEMP34 || _TEMP35
        return _subspace_of_es__cache.updateCache(params: _params, value: _TEMP36)

      case ES_INTEGERS:
        
        let _TEMP37 = SDAI.aggregate(TYPES, contains: SDAI.STRING("FINITE_INTEGER_INTERVAL"))
        let _TEMP38 = SDAI.aggregate(TYPES, contains: SDAI.STRING("INTEGER_INTERVAL_FROM_MIN"))
        let _TEMP39 = _TEMP37 || _TEMP38
        let _TEMP40 = SDAI.aggregate(TYPES, contains: SDAI.STRING("INTEGER_INTERVAL_TO_MAX"))
        let _TEMP41 = _TEMP39 || _TEMP40
        return _subspace_of_es__cache.updateCache(params: _params, value: _TEMP41)

      case ES_LOGICALS:
        return _subspace_of_es__cache.updateCache(params: _params, value: SDAI.LOGICAL(SDAI.FALSE))

      case ES_BOOLEANS:
        return _subspace_of_es__cache.updateCache(params: _params, value: SDAI.LOGICAL(SDAI.FALSE))

      case ES_STRINGS:
        return _subspace_of_es__cache.updateCache(params: _params, value: SDAI.LOGICAL(SDAI.FALSE))

      case ES_BINARYS:
        return _subspace_of_es__cache.updateCache(params: _params, value: SDAI.LOGICAL(SDAI.FALSE))

      case ES_MATHS_SPACES:
        return _subspace_of_es__cache.updateCache(params: _params, value: SDAI.LOGICAL(SDAI.FALSE))

      case ES_MATHS_FUNCTIONS:
        
        let _TEMP42 = SDAI.aggregate(TYPES, contains: SDAI.STRING("FUNCTION_SPACE"))
        return _subspace_of_es__cache.updateCache(params: _params, value: _TEMP42)

      case ES_GENERICS:
        return _subspace_of_es__cache.updateCache(params: _params, value: SDAI.LOGICAL(SDAI.TRUE))

      default: break
      } //end switch
    }
    return _subspace_of_es__cache.updateCache(params: _params, value: SDAI.LOGICAL(SDAI.UNKNOWN))
  }

}

//MARK: - function result cache
private var _subspace_of_es__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)
