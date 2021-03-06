/* file: restrict_language_assignment_per_attribute.swift 	 generated: Mon Jan  3 16:32:52 2022 */

/* This file was generated by the EXPRESS to Swift translator "exp2swift", 
    derived from STEPcode (formerly NIST's SCL).
 exp2swift version: v.1.0.1, derived from stepcode v0.8 as of 2019/11/23 
 WARNING: You probably don't want to edit it since your modifications 
    will be lost if exp2swift is used to regenerate it.
 */

 
import SwiftSDAIcore

extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF {
//MARK: -RULE DEFINITION in EXPRESS
/*

  RULE restrict_language_assignment_per_attribute FOR ( attribute_language_assignment );

  WHERE
    wr1: ( SIZEOF( QUERY ( ala1 <* attribute_language_assignment | ( SIZEOF( QUERY ( it <* ala1.items | ( 
             SIZEOF( QUERY ( ala2 <* USEDIN( it, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
             + 'ATTRIBUTE_LANGUAGE_ASSIGNMENT.ITEMS'  ) | ( ( ala1\attribute_classification_assignment.
             attribute_name = ala2\attribute_classification_assignment.attribute_name ) AND ( ala1\
             attribute_classification_assignment.assigned_class :=: ala2\attribute_classification_assignment.
             assigned_class ) ) ) ) > 1 ) ) ) > 0 ) ) ) = 0 );

  END_RULE; -- restrict_language_assignment_per_attribute (line:49527 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static
  func RESTRICT_LANGUAGE_ASSIGNMENT_PER_ATTRIBUTE( 
    allComplexEntities: AnySequence<SDAI.ComplexEntity> ) -> [SDAI.WhereLabel:SDAI.LOGICAL] {

    //ENTITY REFERENCES
    let ATTRIBUTE_LANGUAGE_ASSIGNMENT = 
      SDAI.POPULATION(OF: eATTRIBUTE_LANGUAGE_ASSIGNMENT.self, FROM: allComplexEntities)


    //WHERE
    var _conformance: [SDAI.WhereLabel:SDAI.LOGICAL] = [:]

    let _TEMP1 = ATTRIBUTE_LANGUAGE_ASSIGNMENT
      .QUERY{ ALA1 in 

        let _TEMP1 = ALA1.ITEMS
        let _TEMP2 = _TEMP1.QUERY{ IT in 

            let _TEMP1 = SDAI.USEDIN(T: IT, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
              .eATTRIBUTE_LANGUAGE_ASSIGNMENT.ITEMS)
            let _TEMP2 = _TEMP1.QUERY{ ALA2 in 

                let _TEMP1 = ALA1.GROUP_REF(eATTRIBUTE_CLASSIFICATION_ASSIGNMENT.self)
                let _TEMP2 = _TEMP1?.ATTRIBUTE_NAME
                let _TEMP3 = /*runtime*/ALA2.GROUP_REF(eATTRIBUTE_CLASSIFICATION_ASSIGNMENT.self)
                let _TEMP4 = /*runtime*/_TEMP3?.ATTRIBUTE_NAME
                let _TEMP5 = _TEMP2 .==. /*runtime*/_TEMP4
                let _TEMP6 = ALA1.GROUP_REF(eATTRIBUTE_CLASSIFICATION_ASSIGNMENT.self)
                let _TEMP7 = _TEMP6?.ASSIGNED_CLASS
                let _TEMP8 = /*runtime*/ALA2.GROUP_REF(eATTRIBUTE_CLASSIFICATION_ASSIGNMENT.self)
                let _TEMP9 = /*runtime*/_TEMP8?.ASSIGNED_CLASS
                let _TEMP10 = _TEMP7 .===. /*runtime*/_TEMP9
                let _TEMP11 = _TEMP5 && _TEMP10
                return _TEMP11 }
            let _TEMP3 = SDAI.SIZEOF(_TEMP2)
            let _TEMP4 = _TEMP3 > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
            return _TEMP4 }
        let _TEMP3 = SDAI.SIZEOF(_TEMP2)
        let _TEMP4 = _TEMP3 > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
        return _TEMP4 }
    let _TEMP2 = SDAI.SIZEOF(_TEMP1)
    let _TEMP3 = _TEMP2 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
    let WHERE_wr1 = _TEMP3
    _conformance["WHERE_wr1"] = WHERE_wr1


    return _conformance
  }

}
