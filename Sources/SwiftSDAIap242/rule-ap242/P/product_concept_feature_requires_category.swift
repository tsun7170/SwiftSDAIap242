/* file: product_concept_feature_requires_category.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  RULE product_concept_feature_requires_category FOR ( product_concept_feature );

  WHERE
    wr1: ( SIZEOF( QUERY ( pcf <* product_concept_feature | ( ( SIZEOF( [
             'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.INCLUSION_PRODUCT_CONCEPT_FEATURE' , 
             'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CONDITIONAL_CONCEPT_FEATURE' ] * TYPEOF( pcf ) ) 
             = 0 ) AND ( SIZEOF( QUERY ( aga <* USEDIN( pcf, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
             + 'APPLIED_GROUP_ASSIGNMENT.ITEMS'  ) | ( ( aga\group_assignment.role\object_role.name = 
             'specification category member'  ) AND ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
             + 'PRODUCT_CONCEPT_FEATURE_CATEGORY'  IN TYPEOF( aga.assigned_group ) ) ) ) ) <> 1 ) ) ) ) = 0 );

  END_RULE; -- product_concept_feature_requires_category (line:49328 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static
  func PRODUCT_CONCEPT_FEATURE_REQUIRES_CATEGORY( 
    allComplexEntities: AnySequence<SDAI.ComplexEntity> ) -> [SDAI.WhereLabel:SDAI.LOGICAL] {

    //ENTITY REFERENCES
    let PRODUCT_CONCEPT_FEATURE = 
      SDAI.POPULATION(OF: ePRODUCT_CONCEPT_FEATURE.self, FROM: allComplexEntities)


    //WHERE
    var _conformance: [SDAI.WhereLabel:SDAI.LOGICAL] = [:]

    let _TEMP1 = PRODUCT_CONCEPT_FEATURE
      .QUERY{ PCF in 

        let _TEMP1 = ([SDAI.AIE(SDAI.STRING(
          "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.INCLUSION_PRODUCT_CONCEPT_FEATURE")), 
          SDAI.AIE(SDAI.STRING("AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CONDITIONAL_CONCEPT_FEATURE"))] 
          as [SDAI.AggregationInitializerElement<SDAI.STRING>])
        let _TEMP2 = SDAI.TYPEOF(PCF)
        let _TEMP3 = SDAI.FORCE_OPTIONAL(_TEMP1) * SDAI.FORCE_OPTIONAL(_TEMP2)
        let _TEMP4 = SDAI.SIZEOF(_TEMP3)
        let _TEMP5 = _TEMP4 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
        let _TEMP6 = SDAI.USEDIN(T: PCF, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
          .eAPPLIED_GROUP_ASSIGNMENT.ITEMS)
        let _TEMP7 = _TEMP6.QUERY{ AGA in 

            let _TEMP1 = /*runtime*/AGA.GROUP_REF(eGROUP_ASSIGNMENT.self)
            let _TEMP2 = /*runtime*/_TEMP1?.ROLE
            let _TEMP3 = /*runtime*/_TEMP2?.GROUP_REF(eOBJECT_ROLE.self)
            let _TEMP4 = /*runtime*/_TEMP3?.NAME
            let _TEMP5 = /*runtime*/_TEMP4 .==. SDAI.FORCE_OPTIONAL(SDAI.STRING("specification category member"))
            let _TEMP6 = SDAI.TYPEOF(AGA.ASSIGNED_GROUP, IS: ePRODUCT_CONCEPT_FEATURE_CATEGORY.self)
            let _TEMP7 = _TEMP5 && _TEMP6
            return _TEMP7 }
        let _TEMP8 = SDAI.SIZEOF(_TEMP7)
        let _TEMP9 = _TEMP8 .!=. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
        let _TEMP10 = _TEMP5 && _TEMP9
        return _TEMP10 }
    let _TEMP2 = SDAI.SIZEOF(_TEMP1)
    let _TEMP3 = _TEMP2 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
    let WHERE_wr1 = _TEMP3
    _conformance["WHERE_wr1"] = WHERE_wr1


    return _conformance
  }

}
