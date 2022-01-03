/* file: chamfer_offset_requires_faces.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  RULE chamfer_offset_requires_faces FOR ( chamfer_offset, property_definition_representation );

  WHERE
    wr1: ( SIZEOF( QUERY ( co <* chamfer_offset | ( NOT ( 1 = SIZEOF( QUERY ( pdr <* 
             property_definition_representation | ( ( pdr\property_definition_representation.definition\
             property_definition.definition = co ) AND ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
             + 'FACE_SHAPE_REPRESENTATION'  IN TYPEOF( pdr.used_representation ) ) AND ( ( ( pdr\
             property_definition_representation.definition\property_definition.definition.description = 
             'first offset'  ) AND ( pdr.used_representation.name = 'first face shape' ) ) OR ( ( pdr\
             property_definition_representation.definition\property_definition.definition.description = 
             'second offset'  ) AND ( pdr.used_representation.name = 'second face shape' ) ) ) ) ) ) ) ) ) ) 
             = 0 );

  END_RULE; -- chamfer_offset_requires_faces (line:48894 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static
  func CHAMFER_OFFSET_REQUIRES_FACES( 
    allComplexEntities: AnySequence<SDAI.ComplexEntity> ) -> [SDAI.WhereLabel:SDAI.LOGICAL] {

    //ENTITY REFERENCES
    let CHAMFER_OFFSET = SDAI.POPULATION(OF: eCHAMFER_OFFSET.self, FROM: allComplexEntities)
    let PROPERTY_DEFINITION_REPRESENTATION = 
      SDAI.POPULATION(OF: ePROPERTY_DEFINITION_REPRESENTATION.self, FROM: allComplexEntities)


    //WHERE
    var _conformance: [SDAI.WhereLabel:SDAI.LOGICAL] = [:]

    let _TEMP1 = CHAMFER_OFFSET.QUERY{ CO in 

        let _TEMP1 = PROPERTY_DEFINITION_REPRESENTATION
          .QUERY{ PDR in 

            let _TEMP1 = PDR.GROUP_REF(ePROPERTY_DEFINITION_REPRESENTATION.self)
            let _TEMP2 = _TEMP1?.DEFINITION
            let _TEMP3 = _TEMP2?.GROUP_REF(ePROPERTY_DEFINITION.self)
            let _TEMP4 = _TEMP3?.DEFINITION
            let _TEMP5 = _TEMP4 .==. SDAI.FORCE_OPTIONAL(CO)
            let _TEMP6 = SDAI.TYPEOF(PDR.USED_REPRESENTATION, IS: eFACE_SHAPE_REPRESENTATION.self)
            let _TEMP7 = _TEMP5 && _TEMP6
            let _TEMP8 = PDR.GROUP_REF(ePROPERTY_DEFINITION_REPRESENTATION.self)
            let _TEMP9 = _TEMP8?.DEFINITION
            let _TEMP10 = _TEMP9?.GROUP_REF(ePROPERTY_DEFINITION.self)
            let _TEMP11 = _TEMP10?.DEFINITION
            let _TEMP12 = /*runtime*/_TEMP11?.DESCRIPTION
            let _TEMP13 = /*runtime*/_TEMP12 .==. SDAI.FORCE_OPTIONAL(SDAI.STRING("first offset"))
            let _TEMP14 = PDR.USED_REPRESENTATION
            let _TEMP15 = _TEMP14.NAME
            let _TEMP16 = SDAI.FORCE_OPTIONAL(_TEMP15) .==. SDAI.FORCE_OPTIONAL(SDAI.STRING("first face shape"))
            let _TEMP17 = _TEMP13 && _TEMP16
            let _TEMP18 = PDR.GROUP_REF(ePROPERTY_DEFINITION_REPRESENTATION.self)
            let _TEMP19 = _TEMP18?.DEFINITION
            let _TEMP20 = _TEMP19?.GROUP_REF(ePROPERTY_DEFINITION.self)
            let _TEMP21 = _TEMP20?.DEFINITION
            let _TEMP22 = /*runtime*/_TEMP21?.DESCRIPTION
            let _TEMP23 = /*runtime*/_TEMP22 .==. SDAI.FORCE_OPTIONAL(SDAI.STRING("second offset"))
            let _TEMP24 = PDR.USED_REPRESENTATION
            let _TEMP25 = _TEMP24.NAME
            let _TEMP26 = SDAI.FORCE_OPTIONAL(_TEMP25) .==. SDAI.FORCE_OPTIONAL(SDAI.STRING("second face shape"))
            let _TEMP27 = _TEMP23 && _TEMP26
            let _TEMP28 = _TEMP17 || _TEMP27
            let _TEMP29 = _TEMP7 && _TEMP28
            return _TEMP29 }
        let _TEMP2 = SDAI.SIZEOF(_TEMP1)
        let _TEMP3 = SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1)) .==. _TEMP2
        let _TEMP4 =  !_TEMP3
        return _TEMP4 }
    let _TEMP2 = SDAI.SIZEOF(_TEMP1)
    let _TEMP3 = _TEMP2 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
    let WHERE_wr1 = _TEMP3
    _conformance["WHERE_wr1"] = WHERE_wr1


    return _conformance
  }

}
