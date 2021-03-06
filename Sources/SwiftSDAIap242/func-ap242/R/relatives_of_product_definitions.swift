/* file: relatives_of_product_definitions.swift 	 generated: Mon Jan  3 16:32:52 2022 */

/* This file was generated by the EXPRESS to Swift translator "exp2swift", 
  derived from STEPcode (formerly NIST's SCL).
 exp2swift version: v.1.0.1, derived from stepcode v0.8 as of 2019/11/23 
 WARNING: You probably don't want to edit it since your modifications 
  will be lost if exp2swift is used to regenerate it.
 */

 
import SwiftSDAIcore

extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF {
//MARK: -FUNCTION DEFINITION in EXPRESS
/*

  FUNCTION relatives_of_product_definitions(
               definition_set : SET OF product_definition;
               relation_subtype : STRING
           ) : SET OF product_definition;

    FUNCTION local_relatives_of_product_definitions(
                 definition_set : SET OF product_definition;
                 total_definitions : SET OF product_definition;
                 relation_subtype : STRING
             ) : SET OF product_definition;

      LOCAL
        local_def   : SET OF product_definition := [];
        local_pdr   : SET OF product_definition_relationship := [];
        local_total : SET OF product_definition := [];
      END_LOCAL;
      REPEAT i := 1 TO HIINDEX( definition_set ) BY 1;
        local_pdr := local_pdr + bag_to_set( USEDIN( definition_set[i], relation_subtype + '.'
            + 'RELATING_PRODUCT_DEFINITION'  ) );
      END_REPEAT;
      REPEAT i := 1 TO HIINDEX( local_pdr ) BY 1;
        local_def := local_def + local_pdr[i].related_product_definition;
      END_REPEAT;
      IF ( SIZEOF( local_def ) - SIZEOF( total_definitions ) ) = 0 THEN
        RETURN( local_def );
      ELSE
        local_total := total_definitions + local_def;
        RETURN( local_def + local_relatives_of_product_definitions( local_def - total_definitions, 
            local_total, relation_subtype ) );
      END_IF;

    END_FUNCTION; -- local_relatives_of_product_definitions (line:51173 file:ap242ed2_mim_lf_v1.101.TY.exp)
    RETURN( local_relatives_of_product_definitions( definition_set, definition_set, relation_subtype ) );

  END_FUNCTION; -- relatives_of_product_definitions (line:51172 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func RELATIVES_OF_PRODUCT_DEFINITIONS(
    DEFINITION_SET: SDAI.SET<ePRODUCT_DEFINITION>? , RELATION_SUBTYPE: SDAI.STRING? ) 
    -> SDAI.SET<ePRODUCT_DEFINITION>? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( DEFINITION_SET, RELATION_SUBTYPE )
    if case .available(let _cached_value) = _relatives_of_product_definitions__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.SET<ePRODUCT_DEFINITION>
    }

    var DEFINITION_SET = DEFINITION_SET; SDAI.TOUCH(var: &DEFINITION_SET)
    var RELATION_SUBTYPE = RELATION_SUBTYPE; SDAI.TOUCH(var: &RELATION_SUBTYPE)

    //NESTED FUNCTION
    func LOCAL_RELATIVES_OF_PRODUCT_DEFINITIONS(
      DEFINITION_SET: SDAI.SET<ePRODUCT_DEFINITION>? , TOTAL_DEFINITIONS: SDAI.SET<ePRODUCT_DEFINITION>? , 
      RELATION_SUBTYPE: SDAI.STRING? ) 
      -> SDAI.SET<ePRODUCT_DEFINITION>? {

      var DEFINITION_SET = DEFINITION_SET; SDAI.TOUCH(var: &DEFINITION_SET)
      var TOTAL_DEFINITIONS = TOTAL_DEFINITIONS; SDAI.TOUCH(var: &TOTAL_DEFINITIONS)
      var RELATION_SUBTYPE = RELATION_SUBTYPE; SDAI.TOUCH(var: &RELATION_SUBTYPE)

      //LOCAL
      var LOCAL_DEF: SDAI.SET<ePRODUCT_DEFINITION>?  = SDAI.SET<ePRODUCT_DEFINITION>(SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &LOCAL_DEF)
      var LOCAL_PDR: SDAI.SET<ePRODUCT_DEFINITION_RELATIONSHIP>?  = SDAI.SET<ePRODUCT_DEFINITION_RELATIONSHIP>(
                                                                    SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &LOCAL_PDR)
      var LOCAL_TOTAL: SDAI.SET<ePRODUCT_DEFINITION>?  = SDAI.SET<ePRODUCT_DEFINITION>(SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &LOCAL_TOTAL)
      //END_LOCAL

      if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.HIINDEX(
        DEFINITION_SET)) {
        for I in incrementControl {
          
          let _TEMP1 = DEFINITION_SET?[I]
          let _TEMP2 = RELATION_SUBTYPE + SDAI.FORCE_OPTIONAL(SDAI.STRING(".RELATING_PRODUCT_DEFINITION"))
          let _TEMP3 = SDAI.USEDIN(T: _TEMP1, R: _TEMP2)
          let _TEMP4 = BAG_TO_SET(_TEMP3)
          let _TEMP5 = LOCAL_PDR + _TEMP4
          LOCAL_PDR = SDAI.SET<ePRODUCT_DEFINITION_RELATIONSHIP>(generic: /*SDAI.SET<runtime>*/_TEMP5)
        }
      }
      if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.HIINDEX(
        LOCAL_PDR)) {
        for I in incrementControl {
          
          let _TEMP6 = LOCAL_PDR?[I]
          let _TEMP7 = _TEMP6?.RELATED_PRODUCT_DEFINITION
          let _TEMP8 = LOCAL_DEF + _TEMP7
          LOCAL_DEF = _TEMP8
        }
      }
      
      let _TEMP9 = SDAI.SIZEOF(LOCAL_DEF)
      let _TEMP10 = SDAI.SIZEOF(TOTAL_DEFINITIONS)
      let _TEMP11 = _TEMP9 - _TEMP10
      let _TEMP12 = _TEMP11 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      if SDAI.IS_TRUE( _TEMP12 ) {
        return LOCAL_DEF
      }
      else {
        
        let _TEMP13 = TOTAL_DEFINITIONS + LOCAL_DEF
        LOCAL_TOTAL = _TEMP13
        
        let _TEMP14 = LOCAL_DEF - TOTAL_DEFINITIONS
        let _TEMP15 = LOCAL_RELATIVES_OF_PRODUCT_DEFINITIONS(
          DEFINITION_SET: _TEMP14, TOTAL_DEFINITIONS: LOCAL_TOTAL, 
          RELATION_SUBTYPE: RELATION_SUBTYPE)
        let _TEMP16 = LOCAL_DEF + _TEMP15
        return _TEMP16
      }
    } //END FUNCTION LOCAL_RELATIVES_OF_PRODUCT_DEFINITIONS

    
    let _TEMP1 = LOCAL_RELATIVES_OF_PRODUCT_DEFINITIONS(
      DEFINITION_SET: DEFINITION_SET, 
      TOTAL_DEFINITIONS: DEFINITION_SET, 
      RELATION_SUBTYPE: RELATION_SUBTYPE)
    return _relatives_of_product_definitions__cache.updateCache(params: _params, value: _TEMP1)
  }

}

//MARK: - function result cache
private var _relatives_of_product_definitions__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

