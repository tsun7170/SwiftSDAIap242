/* file: restrict_product_definitions_for_design_constraint_association.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  RULE restrict_product_definitions_for_design_constraint_association FOR ( product_definition_relationship );

  WHERE
    wr1: ( SIZEOF( QUERY ( pdr <* product_definition_relationship | ( ( pdr.name = 
             'design constraint association'  ) AND ( ( pdr.relating_product_definition.frame_of_reference.
             name <> 'design constraint definition' ) OR ( NOT ( pdr.related_product_definition.
             frame_of_reference.name IN [ 'alternative definition', 'functional definition', 
             'conceptual definition' ] ) ) ) ) ) ) = 0 );

  END_RULE; -- restrict_product_definitions_for_design_constraint_association (line:49675 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static
  func RESTRICT_PRODUCT_DEFINITIONS_FOR_DESIGN_CONSTRAINT_ASSOCIATION( 
    allComplexEntities: AnySequence<SDAI.ComplexEntity> ) -> [SDAI.WhereLabel:SDAI.LOGICAL] {

    //ENTITY REFERENCES
    let PRODUCT_DEFINITION_RELATIONSHIP = 
      SDAI.POPULATION(OF: ePRODUCT_DEFINITION_RELATIONSHIP.self, FROM: allComplexEntities)


    //WHERE
    var _conformance: [SDAI.WhereLabel:SDAI.LOGICAL] = [:]

    let _TEMP1 = PRODUCT_DEFINITION_RELATIONSHIP
      .QUERY{ PDR in 

        let _TEMP1 = PDR.NAME
        let _TEMP2 = SDAI.FORCE_OPTIONAL(_TEMP1) .==. SDAI.FORCE_OPTIONAL(SDAI.STRING(
          "design constraint association"))
        let _TEMP3 = PDR.RELATING_PRODUCT_DEFINITION
        let _TEMP4 = _TEMP3.FRAME_OF_REFERENCE
        let _TEMP5 = _TEMP4?.NAME
        let _TEMP6 = _TEMP5 .!=. SDAI.FORCE_OPTIONAL(SDAI.STRING("design constraint definition"))
        let _TEMP7 = PDR.RELATED_PRODUCT_DEFINITION
        let _TEMP8 = _TEMP7.FRAME_OF_REFERENCE
        let _TEMP9 = _TEMP8?.NAME
        let _TEMP10 = ([SDAI.AIE(SDAI.STRING("alternative definition")), 
          SDAI.AIE(SDAI.STRING("functional definition")), 
          SDAI.AIE(SDAI.STRING("conceptual definition"))] as [SDAI.AggregationInitializerElement<SDAI.STRING>])
        let _TEMP11 = SDAI.aggregate(_TEMP10, contains: SDAI.STRING(/*tLABEL*/_TEMP9))
        let _TEMP12 =  !_TEMP11
        let _TEMP13 = _TEMP6 || _TEMP12
        let _TEMP14 = _TEMP2 && _TEMP13
        return _TEMP14 }
    let _TEMP2 = SDAI.SIZEOF(_TEMP1)
    let _TEMP3 = _TEMP2 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
    let WHERE_wr1 = _TEMP3
    _conformance["WHERE_wr1"] = WHERE_wr1


    return _conformance
  }

}
