/* file: acyclic_mapped_representation.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  FUNCTION acyclic_mapped_representation(
               mi : mapped_item
           ) : BOOLEAN;

    LOCAL
      rms : SET OF representation_map;
      mis : SET OF mapped_item;
      rs1 : SET OF representation;
      rs2 : SET OF representation;
    END_LOCAL;
    rs1 := using_representations( mi );
    rs2 := [];
    REPEAT WHILE SIZEOF( rs1 ) > 0;
      REPEAT i := 1 TO HIINDEX( rs1 ) BY 1;
        rms := bag_to_set( USEDIN( rs1[i], 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
            + 'REPRESENTATION_MAP.MAPPED_REPRESENTATION'  ) );
        IF SIZEOF( rms ) > 0 THEN
          REPEAT j := 1 TO HIINDEX( rms ) BY 1;
            mis := bag_to_set( USEDIN( rms[j], 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.MAPPED_ITEM.'
                + 'MAPPING_SOURCE'  ) );
            IF SIZEOF( mis ) > 0 THEN
              REPEAT k := 1 TO HIINDEX( mis ) BY 1;
                IF mis[k] :=: mi THEN
                  RETURN( FALSE );
                END_IF;
                rs2 := rs2 + using_representations( mis[k] );
              END_REPEAT;
            END_IF;
          END_REPEAT;
        END_IF;
      END_REPEAT;
      rs1 := rs2;
      rs2 := [];
    END_REPEAT;
    RETURN( TRUE );

  END_FUNCTION; -- acyclic_mapped_representation (line:35064 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func ACYCLIC_MAPPED_REPRESENTATION(
    _ MI: eMAPPED_ITEM? ) -> SDAI.BOOLEAN? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( MI )
    if case .available(let _cached_value) = _acyclic_mapped_representation__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.BOOLEAN
    }

    var MI = MI; SDAI.TOUCH(var: &MI)

    //LOCAL
    var RMS: SDAI.SET<eREPRESENTATION_MAP>? 
    var MIS: SDAI.SET<eMAPPED_ITEM>? 
    var RS1: SDAI.SET<eREPRESENTATION>? 
    var RS2: SDAI.SET<eREPRESENTATION>? 
    //END_LOCAL

    
    let _TEMP1 = USING_REPRESENTATIONS(sFOUNDED_ITEM_SELECT(/*eMAPPED_ITEM*/MI))
    RS1 = _TEMP1
    
    let _TEMP2 = SDAI.SET<eREPRESENTATION>(SDAI.EMPLY_AGGREGATE)
    RS2 = _TEMP2
    while !SDAI.IS_TRUE(( SDAI.SIZEOF(RS1) > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0)) )) {
      if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.HIINDEX(
        RS1)) {
        for I in incrementControl {
          
          let _TEMP3 = RS1?[I]
          let _TEMP4 = SDAI.USEDIN(T: _TEMP3, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
            .eREPRESENTATION_MAP.MAPPED_REPRESENTATION)
          let _TEMP5 = BAG_TO_SET(_TEMP4)
          RMS = SDAI.SET<eREPRESENTATION_MAP>(generic: /*SDAI.SET<gINTYPE>*/_TEMP5)
          
          let _TEMP6 = SDAI.SIZEOF(RMS)
          let _TEMP7 = _TEMP6 > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
          if SDAI.IS_TRUE( _TEMP7 ) {
            if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/
              SDAI.HIINDEX(RMS)) {
              for J in incrementControl {
                
                let _TEMP8 = RMS?[J]
                let _TEMP9 = SDAI.USEDIN(T: _TEMP8, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
                  .eMAPPED_ITEM.MAPPING_SOURCE)
                let _TEMP10 = BAG_TO_SET(_TEMP9)
                MIS = SDAI.SET<eMAPPED_ITEM>(generic: /*SDAI.SET<gINTYPE>*/_TEMP10)
                
                let _TEMP11 = SDAI.SIZEOF(MIS)
                let _TEMP12 = _TEMP11 > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
                if SDAI.IS_TRUE( _TEMP12 ) {
                  if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/
                    SDAI.HIINDEX(MIS)) {
                    for K in incrementControl {
                      
                      let _TEMP13 = MIS?[K]
                      let _TEMP14 = _TEMP13 .===. MI
                      if SDAI.IS_TRUE( _TEMP14 ) {
                        return _acyclic_mapped_representation__cache.updateCache(params: _params, value: 
                          SDAI.BOOLEAN(SDAI.FALSE))
                      }
                      
                      let _TEMP15 = MIS?[K]
                      let _TEMP16 = USING_REPRESENTATIONS(sFOUNDED_ITEM_SELECT(/*eMAPPED_ITEM*/_TEMP15))
                      let _TEMP17 = RS2 + _TEMP16
                      RS2 = _TEMP17
                    }
                  }
                }
              }
            }
          }
        }
      }
      RS1 = RS2
      
      let _TEMP18 = SDAI.SET<eREPRESENTATION>(SDAI.EMPLY_AGGREGATE)
      RS2 = _TEMP18
    }
    return _acyclic_mapped_representation__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.TRUE))
  }

}

//MARK: - function result cache
private var _acyclic_mapped_representation__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

