/* file: restrict_product_definitions_for_collection.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  RULE restrict_product_definitions_for_collection FOR ( product_definition_relationship );

  WHERE
    wr1: ( SIZEOF( QUERY ( pdr <* product_definition_relationship | ( ( pdr.name = 'collection membership' ) 
             AND ( ( pdr.relating_product_definition.frame_of_reference.name <> 'part definition' ) OR ( pdr.
             related_product_definition.frame_of_reference.name <> 'part occurrence' ) OR ( SIZEOF( 
             QUERY ( pdca <* USEDIN( pdr.relating_product_definition, 
             'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT_DEFINITION_CONTEXT_ASSOCIATION.'
             + 'DEFINITION'  ) | ( ( pdca.role.name = 'part definition type' ) AND ( pdca.frame_of_reference.
             name = 'collection definition' ) ) ) ) = 0 ) ) ) ) ) = 0 );

  END_RULE; -- restrict_product_definitions_for_collection (line:49638 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static
  func RESTRICT_PRODUCT_DEFINITIONS_FOR_COLLECTION( 
    allComplexEntities: AnySequence<SDAI.ComplexEntity> ) -> [SDAI.WhereLabel:SDAI.LOGICAL] {

    //ENTITY REFERENCES
    let PRODUCT_DEFINITION_RELATIONSHIP = 
      SDAI.POPULATION(OF: ePRODUCT_DEFINITION_RELATIONSHIP.self, FROM: allComplexEntities)


    //WHERE
    var _conformance: [SDAI.WhereLabel:SDAI.LOGICAL] = [:]

    let _TEMP1 = PRODUCT_DEFINITION_RELATIONSHIP
      .QUERY{ PDR in 

        let _TEMP1 = PDR.NAME
        let _TEMP2 = SDAI.FORCE_OPTIONAL(_TEMP1) .==. SDAI.FORCE_OPTIONAL(SDAI.STRING("collection membership"))
        let _TEMP3 = PDR.RELATING_PRODUCT_DEFINITION
        let _TEMP4 = _TEMP3.FRAME_OF_REFERENCE
        let _TEMP5 = _TEMP4?.NAME
        let _TEMP6 = _TEMP5 .!=. SDAI.FORCE_OPTIONAL(SDAI.STRING("part definition"))
        let _TEMP7 = PDR.RELATED_PRODUCT_DEFINITION
        let _TEMP8 = _TEMP7.FRAME_OF_REFERENCE
        let _TEMP9 = _TEMP8?.NAME
        let _TEMP10 = _TEMP9 .!=. SDAI.FORCE_OPTIONAL(SDAI.STRING("part occurrence"))
        let _TEMP11 = _TEMP6 || _TEMP10
        let _TEMP12 = PDR.RELATING_PRODUCT_DEFINITION
        let _TEMP13 = SDAI.USEDIN(T: _TEMP12, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
          .ePRODUCT_DEFINITION_CONTEXT_ASSOCIATION.DEFINITION)
        let _TEMP14 = _TEMP13?.QUERY{ PDCA in 

            let _TEMP1 = /*runtime*/PDCA.ROLE
            let _TEMP2 = /*runtime*/SDAI.FORCE_OPTIONAL(_TEMP1)?.NAME
            let _TEMP3 = SDAI.FORCE_OPTIONAL(/*runtime*/_TEMP2) .==. SDAI.FORCE_OPTIONAL(SDAI.STRING(
              "part definition type"))
            let _TEMP4 = /*runtime*/PDCA.FRAME_OF_REFERENCE
            let _TEMP5 = /*runtime*/SDAI.FORCE_OPTIONAL(_TEMP4)?.NAME
            let _TEMP6 = SDAI.FORCE_OPTIONAL(/*runtime*/_TEMP5) .==. SDAI.FORCE_OPTIONAL(SDAI.STRING(
              "collection definition"))
            let _TEMP7 = _TEMP3 && _TEMP6
            return _TEMP7 }
        let _TEMP15 = SDAI.SIZEOF(_TEMP14)
        let _TEMP16 = _TEMP15 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
        let _TEMP17 = _TEMP11 || _TEMP16
        let _TEMP18 = _TEMP2 && _TEMP17
        return _TEMP18 }
    let _TEMP2 = SDAI.SIZEOF(_TEMP1)
    let _TEMP3 = _TEMP2 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
    let WHERE_wr1 = _TEMP3
    _conformance["WHERE_wr1"] = WHERE_wr1


    return _conformance
  }

}
