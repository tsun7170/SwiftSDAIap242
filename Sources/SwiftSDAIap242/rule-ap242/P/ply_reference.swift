/* file: ply_reference.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  RULE ply_reference FOR ( ply_laminate_sequence_definition, next_assembly_usage_occurrence, 
    product_related_product_category );

    LOCAL
      dkuhr : LOGICAL := TRUE;
      nnauo : INTEGER;
      nprpc : INTEGER := 0;
      rp    : product;
    END_LOCAL;
    REPEAT i := LOINDEX( ply_laminate_sequence_definition ) TO HIINDEX( ply_laminate_sequence_definition )
        BY 1;
      nnauo := 0;
      REPEAT j := LOINDEX( next_assembly_usage_occurrence ) TO HIINDEX( next_assembly_usage_occurrence ) BY 1;
        IF ply_laminate_sequence_definition[i] = next_assembly_usage_occurrence[j].
            relating_product_definition THEN
          rp := next_assembly_usage_occurrence[j].related_product_definition.formation.of_product;
          nprpc := 0;
          REPEAT k := LOINDEX( product_related_product_category ) TO HIINDEX( 
              product_related_product_category ) BY 1;
            IF ( product_related_product_category[k].name = 'ply' ) AND ( rp IN 
                product_related_product_category[k].products ) THEN
              nprpc := nprpc + 1;
            END_IF;
          END_REPEAT;
          IF nprpc = 1 THEN
            nnauo := nnauo + 1;
          ELSE
            dkuhr := FALSE;
            ESCAPE;
          END_IF;
        END_IF;
      END_REPEAT;
      IF dkuhr = FALSE THEN
        ESCAPE;
      END_IF;
      IF nnauo = 0 THEN
        dkuhr := FALSE;
        ESCAPE;
      END_IF;
    END_REPEAT;

  WHERE
    wr1: dkuhr;

  END_RULE; -- ply_reference (line:49225 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static
  func PLY_REFERENCE( 
    allComplexEntities: AnySequence<SDAI.ComplexEntity> ) -> [SDAI.WhereLabel:SDAI.LOGICAL] {

    //ENTITY REFERENCES
    let PLY_LAMINATE_SEQUENCE_DEFINITION = 
      SDAI.POPULATION(OF: ePLY_LAMINATE_SEQUENCE_DEFINITION.self, FROM: allComplexEntities)
    let NEXT_ASSEMBLY_USAGE_OCCURRENCE = 
      SDAI.POPULATION(OF: eNEXT_ASSEMBLY_USAGE_OCCURRENCE.self, FROM: allComplexEntities)
    let PRODUCT_RELATED_PRODUCT_CATEGORY = 
      SDAI.POPULATION(OF: ePRODUCT_RELATED_PRODUCT_CATEGORY.self, FROM: allComplexEntities)

    //LOCAL
    var DKUHR: SDAI.LOGICAL = SDAI.LOGICAL(SDAI.TRUE); SDAI.TOUCH(var: &DKUHR)
    var NNAUO: SDAI.INTEGER? 
    var NPRPC: SDAI.INTEGER?  = SDAI.INTEGER(0); SDAI.TOUCH(var: &NPRPC)
    var RP: ePRODUCT? 
    //END_LOCAL

    if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/SDAI.LOINDEX(
      PLY_LAMINATE_SEQUENCE_DEFINITION), TO:/*SDAI.INTEGER*/SDAI.HIINDEX(
      PLY_LAMINATE_SEQUENCE_DEFINITION)) {
      for I in incrementControl {
        NNAUO = SDAI.INTEGER(0)
        if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/SDAI.LOINDEX(
          NEXT_ASSEMBLY_USAGE_OCCURRENCE), TO:/*SDAI.INTEGER*/SDAI.HIINDEX(
          NEXT_ASSEMBLY_USAGE_OCCURRENCE)) {
          for J in incrementControl {
            
            let _TEMP1 = PLY_LAMINATE_SEQUENCE_DEFINITION[I]
            let _TEMP2 = NEXT_ASSEMBLY_USAGE_OCCURRENCE[J]
            let _TEMP3 = _TEMP2?.RELATING_PRODUCT_DEFINITION
            let _TEMP4 = _TEMP1 .==. _TEMP3
            if SDAI.IS_TRUE( _TEMP4 ) {
              
              let _TEMP5 = NEXT_ASSEMBLY_USAGE_OCCURRENCE[J]
              let _TEMP6 = _TEMP5?.RELATED_PRODUCT_DEFINITION
              let _TEMP7 = _TEMP6?.FORMATION
              let _TEMP8 = _TEMP7?.OF_PRODUCT
              RP = _TEMP8
              NPRPC = SDAI.INTEGER(0)
              if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/SDAI.LOINDEX(
                PRODUCT_RELATED_PRODUCT_CATEGORY), TO:/*SDAI.INTEGER*/SDAI.HIINDEX(
                PRODUCT_RELATED_PRODUCT_CATEGORY)) {
                for K in incrementControl {
                  
                  let _TEMP9 = PRODUCT_RELATED_PRODUCT_CATEGORY[K]
                  let _TEMP10 = _TEMP9?.NAME
                  let _TEMP11 = _TEMP10 .==. SDAI.FORCE_OPTIONAL(SDAI.STRING("ply"))
                  let _TEMP12 = PRODUCT_RELATED_PRODUCT_CATEGORY[K]
                  let _TEMP13 = _TEMP12?.PRODUCTS
                  let _TEMP14 = SDAI.aggregate(_TEMP13, contains: RP)
                  let _TEMP15 = _TEMP11 && _TEMP14
                  if SDAI.IS_TRUE( _TEMP15 ) {
                    
                    let _TEMP16 = NPRPC + SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
                    NPRPC = _TEMP16
                  }
                }
              }
              
              let _TEMP17 = NPRPC .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
              if SDAI.IS_TRUE( _TEMP17 ) {
                
                let _TEMP18 = NNAUO + SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
                NNAUO = _TEMP18
              }
              else {
                DKUHR = SDAI.UNWRAP(SDAI.LOGICAL(SDAI.FALSE))
                break
              }
            }
          }
        }
        
        let _TEMP19 = SDAI.FORCE_OPTIONAL(DKUHR) .==. SDAI.FORCE_OPTIONAL(SDAI.LOGICAL(SDAI.FALSE))
        if SDAI.IS_TRUE( _TEMP19 ) {
          break
        }
        
        let _TEMP20 = NNAUO .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
        if SDAI.IS_TRUE( _TEMP20 ) {
          DKUHR = SDAI.UNWRAP(SDAI.LOGICAL(SDAI.FALSE))
          break
        }
      }
    }

    //WHERE
    var _conformance: [SDAI.WhereLabel:SDAI.LOGICAL] = [:]
    let WHERE_wr1 = DKUHR
    _conformance["WHERE_wr1"] = WHERE_wr1


    return _conformance
  }

}
