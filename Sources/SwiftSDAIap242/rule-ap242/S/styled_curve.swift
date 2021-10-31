/* file: styled_curve.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  RULE styled_curve FOR ( styled_item );

  WHERE
    wr1: ( SIZEOF( QUERY ( si <* styled_item | ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CURVE' IN
             TYPEOF( si.item ) ) AND ( SIZEOF( QUERY ( psa <* si.styles | ( SIZEOF( QUERY ( cs <* psa.styles
             | ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CURVE_STYLE' IN TYPEOF( cs ) ) ) ) > 0 ) ) ) 
             <> 1 ) ) ) ) = 0 );

  END_RULE; -- styled_curve (line:49760 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static
  func STYLED_CURVE( 
    allComplexEntities: AnySequence<SDAI.ComplexEntity> ) -> [SDAI.WhereLabel:SDAI.LOGICAL] {

    //ENTITY REFERENCES
    let STYLED_ITEM = SDAI.POPULATION(OF: eSTYLED_ITEM.self, FROM: allComplexEntities)


    //WHERE
    var _conformance: [SDAI.WhereLabel:SDAI.LOGICAL] = [:]

    let _TEMP1 = STYLED_ITEM.QUERY{ SI in 

        let _TEMP1 = SDAI.TYPEOF(SI.ITEM, IS: eCURVE.self)
        let _TEMP2 = SI.STYLES
        let _TEMP3 = _TEMP2.QUERY{ PSA in 

            let _TEMP1 = PSA.STYLES
            let _TEMP2 = _TEMP1.QUERY{ CS in 

                let _TEMP1 = SDAI.TYPEOF(CS, IS: eCURVE_STYLE.self)
                return _TEMP1 }
            let _TEMP3 = SDAI.SIZEOF(_TEMP2)
            let _TEMP4 = _TEMP3 > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
            return _TEMP4 }
        let _TEMP4 = SDAI.SIZEOF(_TEMP3)
        let _TEMP5 = _TEMP4 .!=. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
        let _TEMP6 = _TEMP1 && _TEMP5
        return _TEMP6 }
    let _TEMP2 = SDAI.SIZEOF(_TEMP1)
    let _TEMP3 = _TEMP2 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
    let WHERE_wr1 = _TEMP3
    _conformance["WHERE_wr1"] = WHERE_wr1


    return _conformance
  }

}
