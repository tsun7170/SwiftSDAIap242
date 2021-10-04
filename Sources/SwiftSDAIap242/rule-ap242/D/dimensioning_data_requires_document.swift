/* file: dimensioning_data_requires_document.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  RULE dimensioning_data_requires_document FOR ( applied_document_reference, 
    product_definition_context_association, role_association );

    LOCAL
      adr    : SET OF applied_document_reference := QUERY ( adr <* applied_document_reference | ( ( adr\
                document_reference.assigned_document\document.kind\document_type.product_data_type = 
                'Standards Document'  ) AND ( ( adr\document_reference.assigned_document\document.id = 
                'ASME Y14.41-2003'  ) OR ( adr\document_reference.assigned_document\document.id = 'ASME Y14.'
                + '5M-1994'  ) OR ( adr\document_reference.assigned_document\document.id = 'ISO 1101: 2004' ) ) ) );
      pdca   : SET OF product_definition_context_association := QUERY ( pdca <* 
                product_definition_context_association | ( ( pdca\product_definition_context_association.role
                \product_definition_context_role.name = 'additional context' ) AND ( pdca\
                product_definition_context_association.frame_of_reference\application_context_element.name = 
                'Geometric Dimensioning and Tolerancing Product Specification'  ) ) );
      ra     : SET OF role_association := QUERY ( ra <* role_association | ( ra\role_association.role\
                object_role.name = 'dimensioning standard' ) );
      ra1    : SET OF role_association := [];
      pdpdca : SET OF product_definition := [];
      pdadr  : SET OF product_definition := [];
      pass   : BOOLEAN := TRUE;
      pd     : product_definition;
    END_LOCAL;
    REPEAT i := 1 TO HIINDEX( pdca ) BY 1;
      pdpdca := pdpdca + pdca[i]\product_definition_context_association.definition;
    END_REPEAT;
    REPEAT i := 1 TO HIINDEX( adr ) BY 1;
      ra1 := bag_to_set( USEDIN( adr[i], 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ROLE_ASSOCIATION.'
          + 'ITEM_WITH_ROLE'  ) );
      IF ( ra1 * ra ) <> ra1 THEN
        pass := FALSE;
      END_IF;
      REPEAT j := 1 TO HIINDEX( adr[i]\applied_document_reference.items ) BY 1;
        IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT_DEFINITION' IN TYPEOF( adr[i]\
            applied_document_reference.items[j] ) THEN
          pd := adr[i]\applied_document_reference.items[j];
          pdadr := pdadr + pd;
        END_IF;
      END_REPEAT;
    END_REPEAT;

  WHERE
    wr1: pass;
    wr2: ( pdpdca = pdadr );

  END_RULE; -- dimensioning_data_requires_document (line:49043 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static
  func DIMENSIONING_DATA_REQUIRES_DOCUMENT( 
    allComplexEntities: AnySequence<SDAI.ComplexEntity> ) -> [SDAI.WhereLabel:SDAI.LOGICAL] {

    //ENTITY REFERENCES
    let APPLIED_DOCUMENT_REFERENCE = 
      SDAI.POPULATION(OF: eAPPLIED_DOCUMENT_REFERENCE.self, FROM: allComplexEntities)
    let PRODUCT_DEFINITION_CONTEXT_ASSOCIATION = 
      SDAI.POPULATION(OF: ePRODUCT_DEFINITION_CONTEXT_ASSOCIATION.self, FROM: allComplexEntities)
    let ROLE_ASSOCIATION = SDAI.POPULATION(OF: eROLE_ASSOCIATION.self, FROM: allComplexEntities)

    //LOCAL
    var ADR: SDAI.SET<eAPPLIED_DOCUMENT_REFERENCE>?  = APPLIED_DOCUMENT_REFERENCE
                                                       .QUERY{ ADR in 

                                                         let _TEMP1 = ADR.GROUP_REF(eDOCUMENT_REFERENCE.self)
                                                         let _TEMP2 = _TEMP1?.ASSIGNED_DOCUMENT
                                                         let _TEMP3 = _TEMP2?.GROUP_REF(eDOCUMENT.self)
                                                         let _TEMP4 = _TEMP3?.KIND
                                                         let _TEMP5 = _TEMP4?.GROUP_REF(eDOCUMENT_TYPE.self)
                                                         let _TEMP6 = _TEMP5?.PRODUCT_DATA_TYPE
                                                         let _TEMP7 = _TEMP6 .==. SDAI.FORCE_OPTIONAL(SDAI.STRING(
                                                           "Standards Document"))
                                                         let _TEMP8 = ADR.GROUP_REF(eDOCUMENT_REFERENCE.self)
                                                         let _TEMP9 = _TEMP8?.ASSIGNED_DOCUMENT
                                                         let _TEMP10 = _TEMP9?.GROUP_REF(eDOCUMENT.self)
                                                         let _TEMP11 = _TEMP10?.ID
                                                         let _TEMP12 = _TEMP11 .==. SDAI.FORCE_OPTIONAL(SDAI.STRING(
                                                           "ASME Y14.41-2003"))
                                                         let _TEMP13 = ADR.GROUP_REF(eDOCUMENT_REFERENCE.self)
                                                         let _TEMP14 = _TEMP13?.ASSIGNED_DOCUMENT
                                                         let _TEMP15 = _TEMP14?.GROUP_REF(eDOCUMENT.self)
                                                         let _TEMP16 = _TEMP15?.ID
                                                         let _TEMP17 = _TEMP16 .==. SDAI.FORCE_OPTIONAL(SDAI.STRING(
                                                           "ASME Y14.5M-1994"))
                                                         let _TEMP18 = _TEMP12 || 
                                                           _TEMP17
                                                         let _TEMP19 = ADR.GROUP_REF(eDOCUMENT_REFERENCE.self)
                                                         let _TEMP20 = _TEMP19?.ASSIGNED_DOCUMENT
                                                         let _TEMP21 = _TEMP20?.GROUP_REF(eDOCUMENT.self)
                                                         let _TEMP22 = _TEMP21?.ID
                                                         let _TEMP23 = _TEMP22 .==. SDAI.FORCE_OPTIONAL(SDAI.STRING(
                                                           "ISO 1101: 2004"))
                                                         let _TEMP24 = _TEMP18 || 
                                                           _TEMP23
                                                         let _TEMP25 = _TEMP7 && 
                                                           _TEMP24
                                                         return _TEMP25 }; SDAI.TOUCH(var: &ADR)
    var PDCA: SDAI.SET<ePRODUCT_DEFINITION_CONTEXT_ASSOCIATION>?  = PRODUCT_DEFINITION_CONTEXT_ASSOCIATION
                                                                    .QUERY{ PDCA in 

                                                                      let _TEMP1 = PDCA.GROUP_REF(ePRODUCT_DEFINITION_CONTEXT_ASSOCIATION.self)
                                                                      let _TEMP2 = _TEMP1?.ROLE
                                                                      let _TEMP3 = _TEMP2?.GROUP_REF(
                                                                        ePRODUCT_DEFINITION_CONTEXT_ROLE.self)
                                                                      let _TEMP4 = _TEMP3?.NAME
                                                                      let _TEMP5 = _TEMP4 .==. SDAI.FORCE_OPTIONAL(
                                                                        SDAI.STRING("additional context"))
                                                                      let _TEMP6 = PDCA.GROUP_REF(ePRODUCT_DEFINITION_CONTEXT_ASSOCIATION.self)
                                                                      let _TEMP7 = _TEMP6?.FRAME_OF_REFERENCE
                                                                      let _TEMP8 = _TEMP7?.GROUP_REF(
                                                                        eAPPLICATION_CONTEXT_ELEMENT.self)
                                                                      let _TEMP9 = _TEMP8?.NAME
                                                                      let _TEMP10 = _TEMP9 .==. SDAI.FORCE_OPTIONAL(
                                                                        SDAI.STRING("Geometric Dimensioning and Tolerancing Product Specification"))
                                                                      let _TEMP11 = _TEMP5 && 
                                                                        _TEMP10
                                                                      return _TEMP11 }; SDAI.TOUCH(var: &PDCA)
    var RA: SDAI.SET<eROLE_ASSOCIATION>?  = ROLE_ASSOCIATION
                                            .QUERY{ RA in 

                                              let _TEMP1 = RA.GROUP_REF(eROLE_ASSOCIATION.self)
                                              let _TEMP2 = _TEMP1?.ROLE
                                              let _TEMP3 = _TEMP2?.GROUP_REF(eOBJECT_ROLE.self)
                                              let _TEMP4 = _TEMP3?.NAME
                                              let _TEMP5 = _TEMP4 .==. SDAI.FORCE_OPTIONAL(SDAI.STRING(
                                                "dimensioning standard"))
                                              return _TEMP5 }; SDAI.TOUCH(var: &RA)
    var RA1: SDAI.SET<eROLE_ASSOCIATION>?  = SDAI.SET<eROLE_ASSOCIATION>(SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &RA1)
    var PDPDCA: SDAI.SET<ePRODUCT_DEFINITION>?  = SDAI.SET<ePRODUCT_DEFINITION>(SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &PDPDCA)
    var PDADR: SDAI.SET<ePRODUCT_DEFINITION>?  = SDAI.SET<ePRODUCT_DEFINITION>(SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &PDADR)
    var PASS: SDAI.BOOLEAN?  = SDAI.BOOLEAN(SDAI.TRUE); SDAI.TOUCH(var: &PASS)
    var PD: ePRODUCT_DEFINITION? 
    //END_LOCAL

    if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.HIINDEX(
      PDCA)) {
      for I in incrementControl {
        
        let _TEMP1 = PDCA?[I]
        let _TEMP2 = _TEMP1?.GROUP_REF(ePRODUCT_DEFINITION_CONTEXT_ASSOCIATION.self)
        let _TEMP3 = _TEMP2?.DEFINITION
        let _TEMP4 = PDPDCA + _TEMP3
        PDPDCA = _TEMP4
      }
    }
    if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.HIINDEX(
      ADR)) {
      for I in incrementControl {
        
        let _TEMP5 = ADR?[I]
        let _TEMP6 = SDAI.USEDIN(T: _TEMP5, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
          .eROLE_ASSOCIATION.ITEM_WITH_ROLE)
        let _TEMP7 = BAG_TO_SET(_TEMP6)
        RA1 = SDAI.SET<eROLE_ASSOCIATION>(generic: /*SDAI.SET<gINTYPE>*/_TEMP7)
        
        let _TEMP8 = RA1 * RA
        let _TEMP9 = _TEMP8 .!=. RA1
        if SDAI.IS_TRUE( _TEMP9 ) {
          PASS = SDAI.BOOLEAN(SDAI.FALSE)
        }
        if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/
          SDAI.HIINDEX(ADR?[I]?.GROUP_REF(eAPPLIED_DOCUMENT_REFERENCE.self)?.ITEMS)) {
          for J in incrementControl {
            
            let _TEMP10 = SDAI.TYPEOF(ADR?[I]?.GROUP_REF(eAPPLIED_DOCUMENT_REFERENCE.self)?.ITEMS[J], 
              IS: ePRODUCT_DEFINITION.self)
            if SDAI.IS_TRUE( _TEMP10 ) {
              
              let _TEMP11 = ADR?[I]
              let _TEMP12 = _TEMP11?.GROUP_REF(eAPPLIED_DOCUMENT_REFERENCE.self)
              let _TEMP13 = _TEMP12?.ITEMS
              let _TEMP14 = _TEMP13?[J]
              PD = ePRODUCT_DEFINITION(/*sDOCUMENT_REFERENCE_ITEM*/_TEMP14)
              
              let _TEMP15 = PDADR + PD
              PDADR = _TEMP15
            }
          }
        }
      }
    }

    //WHERE
    var _conformance: [SDAI.WhereLabel:SDAI.LOGICAL] = [:]
    let WHERE_wr1 = SDAI.LOGICAL(/*SDAI.BOOLEAN*/PASS)
    _conformance["WHERE_wr1"] = WHERE_wr1


    let _TEMP16 = PDPDCA .==. PDADR
    let WHERE_wr2 = _TEMP16
    _conformance["WHERE_wr2"] = WHERE_wr2


    return _conformance
  }

}