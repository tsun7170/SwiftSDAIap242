/* file: restrict_group_relationship_for_classification_hierarchy.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  RULE restrict_group_relationship_for_classification_hierarchy FOR ( group_relationship );

  WHERE
    wr1: ( SIZEOF( QUERY ( gr <* group_relationship | ( ( gr\group_relationship.name = 'class hierarchy' ) 
             AND ( ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CLASS' IN TYPEOF( gr\
             group_relationship.related_group ) ) ) OR ( NOT ( 
             'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CLASS'  IN TYPEOF( gr\group_relationship.
             relating_group ) ) ) ) ) ) ) = 0 );

  END_RULE; -- restrict_group_relationship_for_classification_hierarchy (line:49503 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static
  func RESTRICT_GROUP_RELATIONSHIP_FOR_CLASSIFICATION_HIERARCHY( 
    allComplexEntities: AnySequence<SDAI.ComplexEntity> ) -> [SDAI.WhereLabel:SDAI.LOGICAL] {

    //ENTITY REFERENCES
    let GROUP_RELATIONSHIP = SDAI.POPULATION(OF: eGROUP_RELATIONSHIP.self, FROM: allComplexEntities)


    //WHERE
    var _conformance: [SDAI.WhereLabel:SDAI.LOGICAL] = [:]

    let _TEMP1 = GROUP_RELATIONSHIP.QUERY{ GR in 

        let _TEMP1 = GR.GROUP_REF(eGROUP_RELATIONSHIP.self)
        let _TEMP2 = _TEMP1?.NAME
        let _TEMP3 = _TEMP2 .==. SDAI.FORCE_OPTIONAL(SDAI.STRING("class hierarchy"))
        let _TEMP4 = SDAI.TYPEOF(GR.GROUP_REF(eGROUP_RELATIONSHIP.self)?.RELATED_GROUP, IS: eCLASS.self)
        let _TEMP5 =  !_TEMP4
        let _TEMP6 = SDAI.TYPEOF(GR.GROUP_REF(eGROUP_RELATIONSHIP.self)?.RELATING_GROUP, IS: eCLASS.self)
        let _TEMP7 =  !_TEMP6
        let _TEMP8 = _TEMP5 || _TEMP7
        let _TEMP9 = _TEMP3 && _TEMP8
        return _TEMP9 }
    let _TEMP2 = SDAI.SIZEOF(_TEMP1)
    let _TEMP3 = _TEMP2 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
    let WHERE_wr1 = _TEMP3
    _conformance["WHERE_wr1"] = WHERE_wr1


    return _conformance
  }

}
