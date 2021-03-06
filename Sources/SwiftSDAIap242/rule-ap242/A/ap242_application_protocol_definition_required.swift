/* file: ap242_application_protocol_definition_required.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  RULE ap242_application_protocol_definition_required FOR ( application_context );

  WHERE
    wr1: ( SIZEOF( QUERY ( ac <* application_context | ( SIZEOF( QUERY ( apd <* USEDIN( ac, 
             'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.APPLICATION_PROTOCOL_DEFINITION.APPLICATION'  )
             | ( apd.application_interpreted_model_schema_name = 
             'ap242_managed_model_based_3d_engineering_mim_lf'  ) ) ) > 0 ) ) ) > 0 );

  END_RULE; -- ap242_application_protocol_definition_required (line:48851 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static
  func AP242_APPLICATION_PROTOCOL_DEFINITION_REQUIRED( 
    allComplexEntities: AnySequence<SDAI.ComplexEntity> ) -> [SDAI.WhereLabel:SDAI.LOGICAL] {

    //ENTITY REFERENCES
    let APPLICATION_CONTEXT = SDAI.POPULATION(OF: eAPPLICATION_CONTEXT.self, FROM: allComplexEntities)


    //WHERE
    var _conformance: [SDAI.WhereLabel:SDAI.LOGICAL] = [:]

    let _TEMP1 = APPLICATION_CONTEXT
      .QUERY{ AC in 

        let _TEMP1 = SDAI.USEDIN(T: AC, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
          .eAPPLICATION_PROTOCOL_DEFINITION.APPLICATION)
        let _TEMP2 = _TEMP1.QUERY{ APD in 

            let _TEMP1 = /*runtime*/APD.APPLICATION_INTERPRETED_MODEL_SCHEMA_NAME
            let _TEMP2 = SDAI.FORCE_OPTIONAL(/*runtime*/_TEMP1) .==. SDAI.FORCE_OPTIONAL(SDAI.STRING(
              "ap242_managed_model_based_3d_engineering_mim_lf"))
            return _TEMP2 }
        let _TEMP3 = SDAI.SIZEOF(_TEMP2)
        let _TEMP4 = _TEMP3 > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
        return _TEMP4 }
    let _TEMP2 = SDAI.SIZEOF(_TEMP1)
    let _TEMP3 = _TEMP2 > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
    let WHERE_wr1 = _TEMP3
    _conformance["WHERE_wr1"] = WHERE_wr1


    return _conformance
  }

}
