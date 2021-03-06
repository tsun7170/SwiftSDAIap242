/* file: restrict_part_occurrence_category.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  RULE restrict_part_occurrence_category FOR ( product_definition );

    LOCAL
      part_occurrences : SET OF product_definition := QUERY ( pd <* product_definition | ( pd.
                          frame_of_reference.name = 'part occurrence' ) );
    END_LOCAL;

  WHERE
    wr1: ( SIZEOF( QUERY ( pd <* part_occurrences | ( SIZEOF( QUERY ( prpc <* USEDIN( pd.formation.of_product, 
             'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT_RELATED_PRODUCT_CATEGORY.PRODUCTS'  )
             | ( prpc.name IN [ 'part', 'raw material', 'tool'] ) ) ) = 0 ) ) ) = 0 );

  END_RULE; -- restrict_part_occurrence_category (line:49621 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static
  func RESTRICT_PART_OCCURRENCE_CATEGORY( 
    allComplexEntities: AnySequence<SDAI.ComplexEntity> ) -> [SDAI.WhereLabel:SDAI.LOGICAL] {

    //ENTITY REFERENCES
    let PRODUCT_DEFINITION = SDAI.POPULATION(OF: ePRODUCT_DEFINITION.self, FROM: allComplexEntities)

    //LOCAL
    var PART_OCCURRENCES: SDAI.SET<ePRODUCT_DEFINITION>?  = PRODUCT_DEFINITION
                                                            .QUERY{ PD in 

                                                              let _TEMP1 = PD.FRAME_OF_REFERENCE
                                                              let _TEMP2 = _TEMP1.NAME
                                                              let _TEMP3 = SDAI.FORCE_OPTIONAL(_TEMP2) .==. SDAI.FORCE_OPTIONAL(
                                                                SDAI.STRING("part occurrence"))
                                                              return _TEMP3 }; SDAI.TOUCH(var: &PART_OCCURRENCES)


    //WHERE
    var _conformance: [SDAI.WhereLabel:SDAI.LOGICAL] = [:]

    let _TEMP1 = PART_OCCURRENCES?.QUERY{ PD in 

        let _TEMP1 = PD.FORMATION
        let _TEMP2 = _TEMP1.OF_PRODUCT
        let _TEMP3 = SDAI.USEDIN(T: _TEMP2, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
          .ePRODUCT_RELATED_PRODUCT_CATEGORY.PRODUCTS)
        let _TEMP4 = _TEMP3.QUERY{ PRPC in 

            let _TEMP1 = /*runtime*/PRPC.NAME
            let _TEMP2 = ([SDAI.AIE(SDAI.STRING("part")), 
              SDAI.AIE(SDAI.STRING("raw material")), 
              SDAI.AIE(SDAI.STRING("tool"))] as [SDAI.AggregationInitializerElement<SDAI.STRING>])
            let _TEMP3 = SDAI.aggregate(_TEMP2, contains: SDAI.STRING(fromGeneric: /*/*runtime*/SDAI.GENERIC*/
              _TEMP1))
            return _TEMP3 }
        let _TEMP5 = SDAI.SIZEOF(_TEMP4)
        let _TEMP6 = _TEMP5 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
        return _TEMP6 }
    let _TEMP2 = SDAI.SIZEOF(_TEMP1)
    let _TEMP3 = _TEMP2 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
    let WHERE_wr1 = _TEMP3
    _conformance["WHERE_wr1"] = WHERE_wr1


    return _conformance
  }

}
