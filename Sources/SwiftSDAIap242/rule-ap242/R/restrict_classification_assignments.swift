/* file: restrict_classification_assignments.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  RULE restrict_classification_assignments FOR ( applied_classification_assignment );

  WHERE
    wr1: ( SIZEOF( QUERY ( aia <* applied_classification_assignment | ( NOT class_assignment_is_valid( aia ) ) ) ) 
             = 0 );

  END_RULE; -- restrict_classification_assignments (line:49404 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static
  func RESTRICT_CLASSIFICATION_ASSIGNMENTS( 
    allComplexEntities: AnySequence<SDAI.ComplexEntity> ) -> [SDAI.WhereLabel:SDAI.LOGICAL] {

    //ENTITY REFERENCES
    let APPLIED_CLASSIFICATION_ASSIGNMENT = 
      SDAI.POPULATION(OF: eAPPLIED_CLASSIFICATION_ASSIGNMENT.self, FROM: allComplexEntities)


    //WHERE
    var _conformance: [SDAI.WhereLabel:SDAI.LOGICAL] = [:]

    let _TEMP1 = APPLIED_CLASSIFICATION_ASSIGNMENT
      .QUERY{ AIA in 

        let _TEMP1 = CLASS_ASSIGNMENT_IS_VALID(AIA)
        let _TEMP2 =  !_TEMP1
        return _TEMP2 }
    let _TEMP2 = SDAI.SIZEOF(_TEMP1)
    let _TEMP3 = _TEMP2 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
    let WHERE_wr1 = _TEMP3
    _conformance["WHERE_wr1"] = WHERE_wr1


    return _conformance
  }

}
