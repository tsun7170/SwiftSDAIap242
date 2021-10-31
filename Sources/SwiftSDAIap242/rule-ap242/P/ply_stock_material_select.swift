/* file: ply_stock_material_select.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  RULE ply_stock_material_select FOR ( product_related_product_category, make_from_usage_option );

    LOCAL
      dkuhr : LOGICAL;
      nmfuo : INTEGER;
      nprpc : INTEGER := 0;
      rp    : product;
    END_LOCAL;
    dkuhr := TRUE;
    REPEAT kp := LOINDEX( product_related_product_category ) TO HIINDEX( product_related_product_category )
        BY 1;
      IF product_related_product_category[kp].name = 'ply' THEN
        REPEAT i := LOINDEX( product_related_product_category[kp].products ) TO HIINDEX( 
            product_related_product_category[kp].products ) BY 1;
          nmfuo := 0;
          REPEAT j := LOINDEX( make_from_usage_option ) TO HIINDEX( make_from_usage_option ) BY 1;
            rp := make_from_usage_option[j].related_product_definition.formation.of_product;
            IF product_related_product_category[kp].products[i] = rp THEN
              REPEAT k := LOINDEX( product_related_product_category ) TO HIINDEX( 
                  product_related_product_category ) BY 1;
                IF ( rp IN product_related_product_category[k].products ) AND ( 
                    product_related_product_category[k].name IN [ 'isotropic material', 'filament assembly', 
                    'discontinuous fiber assembly' ] ) THEN
                  nprpc := nprpc + 1;
                END_IF;
              END_REPEAT;
              IF nprpc = 1 THEN
                nmfuo := nmfuo + 1;
              ELSE
                dkuhr := FALSE;
                ESCAPE;
              END_IF;
            END_IF;
          END_REPEAT;
          IF dkuhr = FALSE THEN
            ESCAPE;
          END_IF;
          IF nmfuo <> 1 THEN
            dkuhr := FALSE;
            ESCAPE;
          END_IF;
        END_REPEAT;
      END_IF;
    END_REPEAT;

  WHERE
    wr1: dkuhr;

  END_RULE; -- ply_stock_material_select (line:49263 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static
  func PLY_STOCK_MATERIAL_SELECT( 
    allComplexEntities: AnySequence<SDAI.ComplexEntity> ) -> [SDAI.WhereLabel:SDAI.LOGICAL] {

    //ENTITY REFERENCES
    let PRODUCT_RELATED_PRODUCT_CATEGORY = 
      SDAI.POPULATION(OF: ePRODUCT_RELATED_PRODUCT_CATEGORY.self, FROM: allComplexEntities)
    let MAKE_FROM_USAGE_OPTION = SDAI.POPULATION(OF: eMAKE_FROM_USAGE_OPTION.self, FROM: allComplexEntities)

    //LOCAL
    var DKUHR: SDAI.LOGICAL
    var NMFUO: SDAI.INTEGER? 
    var NPRPC: SDAI.INTEGER?  = SDAI.INTEGER(0); SDAI.TOUCH(var: &NPRPC)
    var RP: ePRODUCT? 
    //END_LOCAL

    DKUHR = SDAI.UNWRAP(SDAI.LOGICAL(SDAI.TRUE))
    if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/SDAI.LOINDEX(
      PRODUCT_RELATED_PRODUCT_CATEGORY), TO:/*SDAI.INTEGER*/SDAI.HIINDEX(
      PRODUCT_RELATED_PRODUCT_CATEGORY)) {
      for KP in incrementControl {
        
        let _TEMP1 = PRODUCT_RELATED_PRODUCT_CATEGORY[KP]
        let _TEMP2 = _TEMP1?.NAME
        let _TEMP3 = _TEMP2 .==. SDAI.FORCE_OPTIONAL(SDAI.STRING("ply"))
        if SDAI.IS_TRUE( _TEMP3 ) {
          if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/SDAI.LOINDEX(
            PRODUCT_RELATED_PRODUCT_CATEGORY[KP]?.PRODUCTS), TO:/*SDAI.INTEGER*/SDAI.HIINDEX(
            PRODUCT_RELATED_PRODUCT_CATEGORY[KP]?.PRODUCTS)) {
            for I in incrementControl {
              NMFUO = SDAI.INTEGER(0)
              if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/SDAI.LOINDEX(
                MAKE_FROM_USAGE_OPTION), TO:/*SDAI.INTEGER*/SDAI.HIINDEX(
                MAKE_FROM_USAGE_OPTION)) {
                for J in incrementControl {
                  
                  let _TEMP4 = MAKE_FROM_USAGE_OPTION[J]
                  let _TEMP5 = _TEMP4?.RELATED_PRODUCT_DEFINITION
                  let _TEMP6 = _TEMP5?.FORMATION
                  let _TEMP7 = _TEMP6?.OF_PRODUCT
                  RP = _TEMP7
                  
                  let _TEMP8 = PRODUCT_RELATED_PRODUCT_CATEGORY[KP]
                  let _TEMP9 = _TEMP8?.PRODUCTS
                  let _TEMP10 = _TEMP9?[I]
                  let _TEMP11 = _TEMP10 .==. RP
                  if SDAI.IS_TRUE( _TEMP11 ) {
                    if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/SDAI.LOINDEX(
                      PRODUCT_RELATED_PRODUCT_CATEGORY), TO:/*SDAI.INTEGER*/SDAI.HIINDEX(
                      PRODUCT_RELATED_PRODUCT_CATEGORY)) {
                      for K in incrementControl {
                        
                        let _TEMP12 = PRODUCT_RELATED_PRODUCT_CATEGORY[K]
                        let _TEMP13 = _TEMP12?.PRODUCTS
                        let _TEMP14 = SDAI.aggregate(_TEMP13, contains: RP)
                        let _TEMP15 = PRODUCT_RELATED_PRODUCT_CATEGORY[K]
                        let _TEMP16 = _TEMP15?.NAME
                        let _TEMP17 = ([
                          SDAI.AIE(SDAI.STRING("isotropic material")), 
                          SDAI.AIE(SDAI.STRING("filament assembly")), 
                          SDAI.AIE(SDAI.STRING("discontinuous fiber assembly"))] 
                          as [SDAI.AggregationInitializerElement<SDAI.STRING>])
                        let _TEMP18 = SDAI.aggregate(_TEMP17, contains: SDAI.STRING(/*tLABEL*/_TEMP16))
                        let _TEMP19 = _TEMP14 && _TEMP18
                        if SDAI.IS_TRUE( _TEMP19 ) {
                          
                          let _TEMP20 = NPRPC + SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
                          NPRPC = _TEMP20
                        }
                      }
                    }
                    
                    let _TEMP21 = NPRPC .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
                    if SDAI.IS_TRUE( _TEMP21 ) {
                      
                      let _TEMP22 = NMFUO + SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
                      NMFUO = _TEMP22
                    }
                    else {
                      DKUHR = SDAI.UNWRAP(SDAI.LOGICAL(SDAI.FALSE))
                      break
                    }
                  }
                }
              }
              
              let _TEMP23 = SDAI.FORCE_OPTIONAL(DKUHR) .==. SDAI.FORCE_OPTIONAL(SDAI.LOGICAL(SDAI.FALSE))
              if SDAI.IS_TRUE( _TEMP23 ) {
                break
              }
              
              let _TEMP24 = NMFUO .!=. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
              if SDAI.IS_TRUE( _TEMP24 ) {
                DKUHR = SDAI.UNWRAP(SDAI.LOGICAL(SDAI.FALSE))
                break
              }
            }
          }
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
