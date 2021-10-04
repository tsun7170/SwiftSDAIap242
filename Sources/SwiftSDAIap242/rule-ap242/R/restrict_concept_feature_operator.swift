/* file: restrict_concept_feature_operator.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  RULE restrict_concept_feature_operator FOR ( concept_feature_operator );

  WHERE
    wr1: ( SIZEOF( QUERY ( cfo <* concept_feature_operator | ( NOT ( cfo.name IN [ 'and', 'or', 'oneof', 'not', 
             'implication' ] ) ) ) ) = 0 );
    wr2: ( SIZEOF( QUERY ( cfo <* concept_feature_operator | ( ( cfo.name = 'implication' ) AND ( SIZEOF( 
             QUERY ( cfrwc <* USEDIN( cfo, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
             + 'CONCEPT_FEATURE_RELATIONSHIP_WITH_CONDITION.CONDITIONAL_OPERATOR'  ) | ( SIZEOF( 
             QUERY ( ccf <* USEDIN( cfrwc, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
             + 'CONDITIONAL_CONCEPT_FEATURE.CONDITION'  ) | ( NOT ( 
             'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.INCLUSION_PRODUCT_CONCEPT_FEATURE'  IN TYPEOF( 
             ccf ) ) ) ) ) > 0 ) ) ) > 0 ) ) ) ) = 0 );
    wr3: ( SIZEOF( QUERY ( cfo <* concept_feature_operator | ( ( cfo.name = 'not' ) AND ( SIZEOF( 
             QUERY ( cfrwc <* USEDIN( cfo, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
             + 'CONCEPT_FEATURE_RELATIONSHIP_WITH_CONDITION.CONDITIONAL_OPERATOR'  ) | ( cfrwc.
             related_product_concept_feature :<>: cfrwc.relating_product_concept_feature ) ) ) > 0 ) ) ) ) = 
             0 );

  END_RULE; -- restrict_concept_feature_operator (line:49427 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static
  func RESTRICT_CONCEPT_FEATURE_OPERATOR( 
    allComplexEntities: AnySequence<SDAI.ComplexEntity> ) -> [SDAI.WhereLabel:SDAI.LOGICAL] {

    //ENTITY REFERENCES
    let CONCEPT_FEATURE_OPERATOR = 
      SDAI.POPULATION(OF: eCONCEPT_FEATURE_OPERATOR.self, FROM: allComplexEntities)


    //WHERE
    var _conformance: [SDAI.WhereLabel:SDAI.LOGICAL] = [:]

    let _TEMP1 = CONCEPT_FEATURE_OPERATOR
      .QUERY{ CFO in 

        let _TEMP1 = CFO.NAME
        let _TEMP2 = ([SDAI.AIE(SDAI.STRING("and")), 
          SDAI.AIE(SDAI.STRING("or")), 
          SDAI.AIE(SDAI.STRING("oneof")), 
          SDAI.AIE(SDAI.STRING("not")), 
          SDAI.AIE(SDAI.STRING("implication"))] as [SDAI.AggregationInitializerElement<SDAI.STRING>])
        let _TEMP3 = SDAI.aggregate(_TEMP2, contains: SDAI.STRING(/*tLABEL*/_TEMP1))
        let _TEMP4 =  !_TEMP3
        return _TEMP4 }
    let _TEMP2 = SDAI.SIZEOF(_TEMP1)
    let _TEMP3 = _TEMP2 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
    let WHERE_wr1 = _TEMP3
    _conformance["WHERE_wr1"] = WHERE_wr1


    let _TEMP4 = CONCEPT_FEATURE_OPERATOR
      .QUERY{ CFO in 

        let _TEMP1 = CFO.NAME
        let _TEMP2 = SDAI.FORCE_OPTIONAL(_TEMP1) .==. SDAI.FORCE_OPTIONAL(SDAI.STRING("implication"))
        let _TEMP3 = SDAI.USEDIN(T: CFO, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
          .eCONCEPT_FEATURE_RELATIONSHIP_WITH_CONDITION.CONDITIONAL_OPERATOR)
        let _TEMP4 = _TEMP3?.QUERY{ CFRWC in 

            let _TEMP1 = SDAI.USEDIN(T: CFRWC, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
              .eCONDITIONAL_CONCEPT_FEATURE.CONDITION)
            let _TEMP2 = _TEMP1?.QUERY{ CCF in 

                let _TEMP1 = SDAI.TYPEOF(CCF, IS: eINCLUSION_PRODUCT_CONCEPT_FEATURE.self)
                let _TEMP2 =  !_TEMP1
                return _TEMP2 }
            let _TEMP3 = SDAI.SIZEOF(_TEMP2)
            let _TEMP4 = _TEMP3 > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
            return _TEMP4 }
        let _TEMP5 = SDAI.SIZEOF(_TEMP4)
        let _TEMP6 = _TEMP5 > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
        let _TEMP7 = _TEMP2 && _TEMP6
        return _TEMP7 }
    let _TEMP5 = SDAI.SIZEOF(_TEMP4)
    let _TEMP6 = _TEMP5 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
    let WHERE_wr2 = _TEMP6
    _conformance["WHERE_wr2"] = WHERE_wr2


    let _TEMP7 = CONCEPT_FEATURE_OPERATOR
      .QUERY{ CFO in 

        let _TEMP1 = CFO.NAME
        let _TEMP2 = SDAI.FORCE_OPTIONAL(_TEMP1) .==. SDAI.FORCE_OPTIONAL(SDAI.STRING("not"))
        let _TEMP3 = SDAI.USEDIN(T: CFO, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
          .eCONCEPT_FEATURE_RELATIONSHIP_WITH_CONDITION.CONDITIONAL_OPERATOR)
        let _TEMP4 = _TEMP3?.QUERY{ CFRWC in 

            let _TEMP1 = /*runtime*/CFRWC.RELATED_PRODUCT_CONCEPT_FEATURE
            let _TEMP2 = /*runtime*/CFRWC.RELATING_PRODUCT_CONCEPT_FEATURE
            let _TEMP3 = SDAI.FORCE_OPTIONAL(/*runtime*/_TEMP1) .!==. SDAI.FORCE_OPTIONAL(/*runtime*/_TEMP2)
            return _TEMP3 }
        let _TEMP5 = SDAI.SIZEOF(_TEMP4)
        let _TEMP6 = _TEMP5 > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
        let _TEMP7 = _TEMP2 && _TEMP6
        return _TEMP7 }
    let _TEMP8 = SDAI.SIZEOF(_TEMP7)
    let _TEMP9 = _TEMP8 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
    let WHERE_wr3 = _TEMP9
    _conformance["WHERE_wr3"] = WHERE_wr3


    return _conformance
  }

}
