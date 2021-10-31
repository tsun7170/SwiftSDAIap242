/* file: restrict_centre_of_mass_representation.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  RULE restrict_centre_of_mass_representation FOR ( representation );

  WHERE
    wr1: ( SIZEOF( QUERY ( r <* representation | ( ( r.name = 'centre of mass' ) AND ( ( SIZEOF( r.items ) <>
             1 ) OR ( SIZEOF( QUERY ( i <* r.items | ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
             + 'POINT'  IN TYPEOF( i ) ) AND ( i.name = 'centre point' ) ) ) ) <> 1 ) ) ) ) ) = 0 );

  END_RULE; -- restrict_centre_of_mass_representation (line:49390 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static
  func RESTRICT_CENTRE_OF_MASS_REPRESENTATION( 
    allComplexEntities: AnySequence<SDAI.ComplexEntity> ) -> [SDAI.WhereLabel:SDAI.LOGICAL] {

    //ENTITY REFERENCES
    let REPRESENTATION = SDAI.POPULATION(OF: eREPRESENTATION.self, FROM: allComplexEntities)


    //WHERE
    var _conformance: [SDAI.WhereLabel:SDAI.LOGICAL] = [:]

    let _TEMP1 = REPRESENTATION.QUERY{ R in 

        let _TEMP1 = R.NAME
        let _TEMP2 = SDAI.FORCE_OPTIONAL(_TEMP1) .==. SDAI.FORCE_OPTIONAL(SDAI.STRING("centre of mass"))
        let _TEMP3 = R.ITEMS
        let _TEMP4 = SDAI.SIZEOF(_TEMP3)
        let _TEMP5 = _TEMP4 .!=. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
        let _TEMP6 = R.ITEMS
        let _TEMP7 = _TEMP6.QUERY{ I in 

            let _TEMP1 = SDAI.TYPEOF(I, IS: ePOINT.self)
            let _TEMP2 = I.NAME
            let _TEMP3 = SDAI.FORCE_OPTIONAL(_TEMP2) .==. SDAI.FORCE_OPTIONAL(SDAI.STRING("centre point"))
            let _TEMP4 = _TEMP1 && _TEMP3
            return _TEMP4 }
        let _TEMP8 = SDAI.SIZEOF(_TEMP7)
        let _TEMP9 = _TEMP8 .!=. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
        let _TEMP10 = _TEMP5 || _TEMP9
        let _TEMP11 = _TEMP2 && _TEMP10
        return _TEMP11 }
    let _TEMP2 = SDAI.SIZEOF(_TEMP1)
    let _TEMP3 = _TEMP2 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
    let WHERE_wr1 = _TEMP3
    _conformance["WHERE_wr1"] = WHERE_wr1


    return _conformance
  }

}
