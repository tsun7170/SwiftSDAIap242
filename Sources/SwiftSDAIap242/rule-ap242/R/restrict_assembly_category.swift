/* file: restrict_assembly_category.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  RULE restrict_assembly_category FOR ( product_definition );

    LOCAL
      assembly_definitions : SET OF product_definition := [];
    END_LOCAL;
    assembly_definitions := QUERY ( pd <* product_definition | ( SIZEOF( QUERY ( pdca <* USEDIN( pd, 
        'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT_DEFINITION_CONTEXT_ASSOCIATION.DEFINITION'  )
        | ( pdca.frame_of_reference.name = 'assembly definition' ) ) ) > 0 ) );

  WHERE
    wr1: ( SIZEOF( QUERY ( pd <* assembly_definitions | ( NOT ( 'assembly' IN categories_of_product( pd.
             formation.of_product ) ) ) ) ) = 0 );

  END_RULE; -- restrict_assembly_category (line:49374 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static
  func RESTRICT_ASSEMBLY_CATEGORY( 
    allComplexEntities: AnySequence<SDAI.ComplexEntity> ) -> [SDAI.WhereLabel:SDAI.LOGICAL] {

    //ENTITY REFERENCES
    let PRODUCT_DEFINITION = SDAI.POPULATION(OF: ePRODUCT_DEFINITION.self, FROM: allComplexEntities)

    //LOCAL
    var ASSEMBLY_DEFINITIONS: SDAI.SET<ePRODUCT_DEFINITION>?  = SDAI.SET<ePRODUCT_DEFINITION>(
                                                                SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &ASSEMBLY_DEFINITIONS)

    
    let _TEMP1 = PRODUCT_DEFINITION.QUERY{ PD in 

        let _TEMP1 = SDAI.USEDIN(T: PD, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
          .ePRODUCT_DEFINITION_CONTEXT_ASSOCIATION.DEFINITION)
        let _TEMP2 = _TEMP1?.QUERY{ PDCA in 

            let _TEMP1 = /*runtime*/PDCA.FRAME_OF_REFERENCE
            let _TEMP2 = /*runtime*/SDAI.FORCE_OPTIONAL(_TEMP1)?.NAME
            let _TEMP3 = SDAI.FORCE_OPTIONAL(/*runtime*/_TEMP2) .==. SDAI.FORCE_OPTIONAL(SDAI.STRING(
              "assembly definition"))
            return _TEMP3 }
        let _TEMP3 = SDAI.SIZEOF(_TEMP2)
        let _TEMP4 = _TEMP3 > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
        return _TEMP4 }
    ASSEMBLY_DEFINITIONS = _TEMP1

    //WHERE
    var _conformance: [SDAI.WhereLabel:SDAI.LOGICAL] = [:]

    let _TEMP2 = ASSEMBLY_DEFINITIONS?
      .QUERY{ PD in 

        let _TEMP1 = PD.FORMATION
        let _TEMP2 = _TEMP1.OF_PRODUCT
        let _TEMP3 = CATEGORIES_OF_PRODUCT(_TEMP2)
        let _TEMP4 = SDAI.aggregate(_TEMP3, contains: SDAI.STRING("assembly"))
        let _TEMP5 =  !_TEMP4
        return _TEMP5 }
    let _TEMP3 = SDAI.SIZEOF(_TEMP2)
    let _TEMP4 = _TEMP3 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
    let WHERE_wr1 = _TEMP4
    _conformance["WHERE_wr1"] = WHERE_wr1


    return _conformance
  }

}
