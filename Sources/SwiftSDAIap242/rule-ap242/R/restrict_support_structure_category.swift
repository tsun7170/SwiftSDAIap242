/* file: restrict_support_structure_category.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  RULE restrict_support_structure_category FOR ( product_definition );

    LOCAL
      support_structures : SET OF product_definition := [];
    END_LOCAL;
    support_structures := QUERY ( pd <* product_definition | ( SIZEOF( QUERY ( prpc <* USEDIN( pd.formation.
        of_product, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT_RELATED_PRODUCT_CATEGORY.'
        + 'PRODUCTS'  ) | ( prpc.name = 'additive manufacturing support structure' ) ) ) <> 0 ) );

  WHERE
    wr1: ( SIZEOF( QUERY ( pd <* support_structures | ( SIZEOF( QUERY ( prpc <* USEDIN( pd.formation.
             of_product, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT_RELATED_PRODUCT_CATEGORY.'
             + 'PRODUCTS'  ) | ( prpc.name = 'part' ) ) ) <> 0 ) ) ) = 0 );

  END_RULE; -- restrict_support_structure_category (line:49693 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static
  func RESTRICT_SUPPORT_STRUCTURE_CATEGORY( 
    allComplexEntities: AnySequence<SDAI.ComplexEntity> ) -> [SDAI.WhereLabel:SDAI.LOGICAL] {

    //ENTITY REFERENCES
    let PRODUCT_DEFINITION = SDAI.POPULATION(OF: ePRODUCT_DEFINITION.self, FROM: allComplexEntities)

    //LOCAL
    var SUPPORT_STRUCTURES: SDAI.SET<ePRODUCT_DEFINITION>?  = SDAI.SET<ePRODUCT_DEFINITION>(
                                                              SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &SUPPORT_STRUCTURES)

    
    let _TEMP1 = PRODUCT_DEFINITION.QUERY{ PD in 

        let _TEMP1 = PD.FORMATION
        let _TEMP2 = _TEMP1.OF_PRODUCT
        let _TEMP3 = SDAI.USEDIN(T: _TEMP2, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
          .ePRODUCT_RELATED_PRODUCT_CATEGORY.PRODUCTS)
        let _TEMP4 = _TEMP3.QUERY{ PRPC in 

            let _TEMP1 = /*runtime*/PRPC.NAME
            let _TEMP2 = SDAI.FORCE_OPTIONAL(/*runtime*/_TEMP1) .==. SDAI.FORCE_OPTIONAL(SDAI.STRING(
              "additive manufacturing support structure"))
            return _TEMP2 }
        let _TEMP5 = SDAI.SIZEOF(_TEMP4)
        let _TEMP6 = _TEMP5 .!=. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
        return _TEMP6 }
    SUPPORT_STRUCTURES = _TEMP1

    //WHERE
    var _conformance: [SDAI.WhereLabel:SDAI.LOGICAL] = [:]

    let _TEMP2 = SUPPORT_STRUCTURES?
      .QUERY{ PD in 

        let _TEMP1 = PD.FORMATION
        let _TEMP2 = _TEMP1.OF_PRODUCT
        let _TEMP3 = SDAI.USEDIN(T: _TEMP2, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
          .ePRODUCT_RELATED_PRODUCT_CATEGORY.PRODUCTS)
        let _TEMP4 = _TEMP3.QUERY{ PRPC in 

            let _TEMP1 = /*runtime*/PRPC.NAME
            let _TEMP2 = SDAI.FORCE_OPTIONAL(/*runtime*/_TEMP1) .==. SDAI.FORCE_OPTIONAL(SDAI.STRING("part"))
            return _TEMP2 }
        let _TEMP5 = SDAI.SIZEOF(_TEMP4)
        let _TEMP6 = _TEMP5 .!=. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
        return _TEMP6 }
    let _TEMP3 = SDAI.SIZEOF(_TEMP2)
    let _TEMP4 = _TEMP3 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
    let WHERE_wr1 = _TEMP4
    _conformance["WHERE_wr1"] = WHERE_wr1


    return _conformance
  }

}
