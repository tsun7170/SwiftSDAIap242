/* file: text_font_usage.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  RULE text_font_usage FOR ( externally_defined_text_font, pre_defined_text_font );

  WHERE
    wr1: ( SIZEOF( QUERY ( pdtf <* pre_defined_text_font | ( SIZEOF( USEDIN( pdtf, 
             'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.TEXT_LITERAL.FONT'  ) ) = 0 ) ) ) = 0 );
    wr2: ( SIZEOF( QUERY ( edtf <* externally_defined_text_font | ( SIZEOF( USEDIN( edtf, 
             'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.TEXT_LITERAL.FONT'  ) ) = 0 ) ) ) = 0 );

  END_RULE; -- text_font_usage (line:49877 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static
  func TEXT_FONT_USAGE( 
    allComplexEntities: AnySequence<SDAI.ComplexEntity> ) -> [SDAI.WhereLabel:SDAI.LOGICAL] {

    //ENTITY REFERENCES
    let EXTERNALLY_DEFINED_TEXT_FONT = 
      SDAI.POPULATION(OF: eEXTERNALLY_DEFINED_TEXT_FONT.self, FROM: allComplexEntities)
    let PRE_DEFINED_TEXT_FONT = SDAI.POPULATION(OF: ePRE_DEFINED_TEXT_FONT.self, FROM: allComplexEntities)


    //WHERE
    var _conformance: [SDAI.WhereLabel:SDAI.LOGICAL] = [:]

    let _TEMP1 = PRE_DEFINED_TEXT_FONT
      .QUERY{ PDTF in 

        let _TEMP1 = SDAI.USEDIN(T: PDTF, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
          .eTEXT_LITERAL.FONT)
        let _TEMP2 = SDAI.SIZEOF(_TEMP1)
        let _TEMP3 = _TEMP2 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
        return _TEMP3 }
    let _TEMP2 = SDAI.SIZEOF(_TEMP1)
    let _TEMP3 = _TEMP2 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
    let WHERE_wr1 = _TEMP3
    _conformance["WHERE_wr1"] = WHERE_wr1


    let _TEMP4 = EXTERNALLY_DEFINED_TEXT_FONT
      .QUERY{ EDTF in 

        let _TEMP1 = SDAI.USEDIN(T: EDTF, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
          .eTEXT_LITERAL.FONT)
        let _TEMP2 = SDAI.SIZEOF(_TEMP1)
        let _TEMP3 = _TEMP2 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
        return _TEMP3 }
    let _TEMP5 = SDAI.SIZEOF(_TEMP4)
    let _TEMP6 = _TEMP5 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
    let WHERE_wr2 = _TEMP6
    _conformance["WHERE_wr2"] = WHERE_wr2


    return _conformance
  }

}
