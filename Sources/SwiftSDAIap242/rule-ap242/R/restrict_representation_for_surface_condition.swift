/* file: restrict_representation_for_surface_condition.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  RULE restrict_representation_for_surface_condition FOR ( property_definition_representation );

  WHERE
    wr1: ( SIZEOF( QUERY ( pdr <* property_definition_representation | ( NOT surface_condition_correlation( 
             pdr.definition, pdr.used_representation ) ) ) ) = 0 );

  END_RULE; -- restrict_representation_for_surface_condition (line:49685 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static
  func RESTRICT_REPRESENTATION_FOR_SURFACE_CONDITION( 
    allComplexEntities: AnySequence<SDAI.ComplexEntity> ) -> [SDAI.WhereLabel:SDAI.LOGICAL] {

    //ENTITY REFERENCES
    let PROPERTY_DEFINITION_REPRESENTATION = 
      SDAI.POPULATION(OF: ePROPERTY_DEFINITION_REPRESENTATION.self, FROM: allComplexEntities)


    //WHERE
    var _conformance: [SDAI.WhereLabel:SDAI.LOGICAL] = [:]

    let _TEMP1 = PROPERTY_DEFINITION_REPRESENTATION
      .QUERY{ PDR in 

        let _TEMP1 = PDR.DEFINITION
        let _TEMP2 = PDR.USED_REPRESENTATION
        let _TEMP3 = SURFACE_CONDITION_CORRELATION(
          PD: ePROPERTY_DEFINITION(/*sREPRESENTED_DEFINITION*/_TEMP1), 
          REP: _TEMP2)
        let _TEMP4 =  !_TEMP3
        return _TEMP4 }
    let _TEMP2 = SDAI.SIZEOF(_TEMP1)
    let _TEMP3 = _TEMP2 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
    let WHERE_wr1 = _TEMP3
    _conformance["WHERE_wr1"] = WHERE_wr1


    return _conformance
  }

}
