/* file: restrict_treatment_result.swift 	 generated: Tue Nov 16 05:35:44 2021 */

/* This file was generated by the EXPRESS to Swift translator "exp2swift", 
    derived from STEPcode (formerly NIST's SCL).
 exp2swift version: v.1.0.0, derived from stepcode v0.8 as of 2019/11/23 
 WARNING: You probably don't want to edit it since your modifications 
    will be lost if exp2swift is used to regenerate it.
 */

 
import SwiftSDAIcore

extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF {
//MARK: -RULE DEFINITION in EXPRESS
/*

  RULE restrict_treatment_result FOR ( representation );

    LOCAL
      treatment_results : SET OF representation := [];
    END_LOCAL;
    treatment_results := QUERY ( r <* representation | ( r.name = 'treatment result' ) );

  WHERE
    wr1: ( ( SIZEOF( QUERY ( r <* treatment_results | ( SIZEOF( r.items ) > 2 ) ) ) = 0 ) AND ( SIZEOF( 
             QUERY ( r <* treatment_results | ( SIZEOF( QUERY ( i <* r.items | ( NOT ( 
             'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DESCRIPTIVE_REPRESENTATION_ITEM'  IN TYPEOF( i ) ) ) ) ) 
             > 0 ) ) ) = 0 ) );
    wr2: ( SIZEOF( QUERY ( r <* treatment_results | ( SIZEOF( QUERY ( i <* r.items | ( i.name = 'result' ) ) ) 
             = 0 ) ) ) = 0 );
    wr3: ( SIZEOF( QUERY ( r <* treatment_results | ( SIZEOF( QUERY ( i <* r.items | ( i.name = 'purpose' ) ) ) 
             > 1 ) ) ) = 0 );

  END_RULE; -- restrict_treatment_result (line:49729 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static
  func RESTRICT_TREATMENT_RESULT( 
    allComplexEntities: AnySequence<SDAI.ComplexEntity> ) -> [SDAI.WhereLabel:SDAI.LOGICAL] {

    //ENTITY REFERENCES
    let REPRESENTATION = SDAI.POPULATION(OF: eREPRESENTATION.self, FROM: allComplexEntities)

    //LOCAL
    var TREATMENT_RESULTS: SDAI.SET<eREPRESENTATION>?  = SDAI.SET<eREPRESENTATION>(SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &TREATMENT_RESULTS)

    
    let _TEMP1 = REPRESENTATION.QUERY{ R in 

        let _TEMP1 = R.NAME
        let _TEMP2 = SDAI.FORCE_OPTIONAL(_TEMP1) .==. SDAI.FORCE_OPTIONAL(SDAI.STRING("treatment result"))
        return _TEMP2 }
    TREATMENT_RESULTS = _TEMP1

    //WHERE
    var _conformance: [SDAI.WhereLabel:SDAI.LOGICAL] = [:]

    let _TEMP2 = TREATMENT_RESULTS?.QUERY{ R in 

        let _TEMP1 = R.ITEMS
        let _TEMP2 = SDAI.SIZEOF(_TEMP1)
        let _TEMP3 = _TEMP2 > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(2))
        return _TEMP3 }
    let _TEMP3 = SDAI.SIZEOF(_TEMP2)
    let _TEMP4 = _TEMP3 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
    let _TEMP5 = TREATMENT_RESULTS?.QUERY{ R in 

        let _TEMP1 = R.ITEMS
        let _TEMP2 = _TEMP1.QUERY{ I in 

            let _TEMP1 = SDAI.TYPEOF(I, IS: eDESCRIPTIVE_REPRESENTATION_ITEM.self)
            let _TEMP2 =  !_TEMP1
            return _TEMP2 }
        let _TEMP3 = SDAI.SIZEOF(_TEMP2)
        let _TEMP4 = _TEMP3 > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
        return _TEMP4 }
    let _TEMP6 = SDAI.SIZEOF(_TEMP5)
    let _TEMP7 = _TEMP6 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
    let _TEMP8 = _TEMP4 && _TEMP7
    let WHERE_wr1 = _TEMP8
    _conformance["WHERE_wr1"] = WHERE_wr1


    let _TEMP9 = TREATMENT_RESULTS?.QUERY{ R in 

        let _TEMP1 = R.ITEMS
        let _TEMP2 = _TEMP1.QUERY{ I in 

            let _TEMP1 = I.NAME
            let _TEMP2 = SDAI.FORCE_OPTIONAL(_TEMP1) .==. SDAI.FORCE_OPTIONAL(SDAI.STRING("result"))
            return _TEMP2 }
        let _TEMP3 = SDAI.SIZEOF(_TEMP2)
        let _TEMP4 = _TEMP3 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
        return _TEMP4 }
    let _TEMP10 = SDAI.SIZEOF(_TEMP9)
    let _TEMP11 = _TEMP10 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
    let WHERE_wr2 = _TEMP11
    _conformance["WHERE_wr2"] = WHERE_wr2


    let _TEMP12 = TREATMENT_RESULTS?
      .QUERY{ R in 

        let _TEMP1 = R.ITEMS
        let _TEMP2 = _TEMP1.QUERY{ I in 

            let _TEMP1 = I.NAME
            let _TEMP2 = SDAI.FORCE_OPTIONAL(_TEMP1) .==. SDAI.FORCE_OPTIONAL(SDAI.STRING("purpose"))
            return _TEMP2 }
        let _TEMP3 = SDAI.SIZEOF(_TEMP2)
        let _TEMP4 = _TEMP3 > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
        return _TEMP4 }
    let _TEMP13 = SDAI.SIZEOF(_TEMP12)
    let _TEMP14 = _TEMP13 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
    let WHERE_wr3 = _TEMP14
    _conformance["WHERE_wr3"] = WHERE_wr3


    return _conformance
  }

}
