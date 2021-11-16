/* file: assoc_product_space.swift 	 generated: Tue Nov 16 05:35:44 2021 */

/* This file was generated by the EXPRESS to Swift translator "exp2swift", 
  derived from STEPcode (formerly NIST's SCL).
 exp2swift version: v.1.0.0, derived from stepcode v0.8 as of 2019/11/23 
 WARNING: You probably don't want to edit it since your modifications 
  will be lost if exp2swift is used to regenerate it.
 */

 
import SwiftSDAIcore

extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF {
//MARK: -FUNCTION DEFINITION in EXPRESS
/*

  FUNCTION assoc_product_space(
               ts1, ts2 : tuple_space
           ) : tuple_space;

    LOCAL
      types1  : SET OF STRING := stripped_typeof( ts1 );
      types2  : SET OF STRING := stripped_typeof( ts2 );
      up1     : uniform_product_space := make_uniform_product_space( the_reals, 1 );
      up2     : uniform_product_space := make_uniform_product_space( the_reals, 1 );
      lp1     : listed_product_space := the_zero_tuple_space;
      lp2     : listed_product_space := the_zero_tuple_space;
      lps     : listed_product_space := the_zero_tuple_space;
      et1     : extended_tuple_space := the_tuples;
      et2     : extended_tuple_space := the_tuples;
      ets     : extended_tuple_space := the_tuples;
      use_up1 : BOOLEAN;
      use_up2 : BOOLEAN;
      use_lp1 : BOOLEAN;
      use_lp2 : BOOLEAN;
      factors : LIST OF maths_space := [];
      tspace  : tuple_space;
    END_LOCAL;
    IF 'UNIFORM_PRODUCT_SPACE' IN types1 THEN
      up1 := ts1;
      use_up1 := TRUE;
      use_lp1 := FALSE;
    ELSE
      IF 'LISTED_PRODUCT_SPACE' IN types1 THEN
        lp1 := ts1;
        use_up1 := FALSE;
        use_lp1 := TRUE;
      ELSE
        IF NOT ( 'EXTENDED_TUPLE_SPACE' IN types1 ) THEN
          RETURN( ? );
        END_IF;
        et1 := ts1;
        use_up1 := FALSE;
        use_lp1 := FALSE;
      END_IF;
    END_IF;
    IF 'UNIFORM_PRODUCT_SPACE' IN types2 THEN
      up2 := ts2;
      use_up2 := TRUE;
      use_lp2 := FALSE;
    ELSE
      IF 'LISTED_PRODUCT_SPACE' IN types2 THEN
        lp2 := ts2;
        use_up2 := FALSE;
        use_lp2 := TRUE;
      ELSE
        IF NOT ( 'EXTENDED_TUPLE_SPACE' IN types2 ) THEN
          RETURN( ? );
        END_IF;
        et2 := ts2;
        use_up2 := FALSE;
        use_lp2 := FALSE;
      END_IF;
    END_IF;
    IF use_up1 THEN
      IF use_up2 THEN
        IF up1.base = up2.base THEN
          tspace := make_uniform_product_space( up1.base, up1.exponent + up2.exponent );
        ELSE
          factors := [up1.base : up1.exponent, up2.base : up2.exponent];
          tspace := make_listed_product_space( factors );
        END_IF;
      ELSE
        IF use_lp2 THEN
          factors := [up1.base : up1.exponent];
          factors := factors + lp2.factors;
          tspace := make_listed_product_space( factors );
        ELSE
          tspace := assoc_product_space( up1, et2.base );
          tspace := make_extended_tuple_space( tspace, et2.extender );
        END_IF;
      END_IF;
    ELSE
      IF use_lp1 THEN
        IF use_up2 THEN
          factors := [up2.base : up2.exponent];
          factors := lp1.factors + factors;
          tspace := make_listed_product_space( factors );
        ELSE
          IF use_lp2 THEN
            tspace := make_listed_product_space( lp1.factors + lp2.factors );
          ELSE
            tspace := assoc_product_space( lp1, et2.base );
            tspace := make_extended_tuple_space( tspace, et2.extender );
          END_IF;
        END_IF;
      ELSE
        IF use_up2 THEN
          IF et1.extender = up2.base THEN
            tspace := assoc_product_space( et1.base, up2 );
            tspace := make_extended_tuple_space( tspace, et1.extender );
          ELSE
            RETURN( ? );
          END_IF;
        ELSE
          IF use_lp2 THEN
            factors := lp2.factors;
            REPEAT i := 1 TO SIZEOF( factors ) BY 1;
              IF et1.extender <> factors[i] THEN
                RETURN( ? );
              END_IF;
            END_REPEAT;
            tspace := assoc_product_space( et1.base, lp2 );
            tspace := make_extended_tuple_space( tspace, et1.extender );
          ELSE
            IF et1.extender = et2.extender THEN
              tspace := assoc_product_space( et1, et2.base );
            ELSE
              RETURN( ? );
            END_IF;
          END_IF;
        END_IF;
      END_IF;
    END_IF;
    RETURN( tspace );

  END_FUNCTION; -- assoc_product_space (line:35471 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func ASSOC_PRODUCT_SPACE(TS1: sTUPLE_SPACE? , TS2: sTUPLE_SPACE? ) 
    -> sTUPLE_SPACE? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( TS1, TS2 )
    if case .available(let _cached_value) = _assoc_product_space__cache.cachedValue(params: _params) {
      return _cached_value as? sTUPLE_SPACE
    }

    var TS1 = TS1; SDAI.TOUCH(var: &TS1)
    var TS2 = TS2; SDAI.TOUCH(var: &TS2)

    //LOCAL
    var TYPES1: SDAI.SET<SDAI.STRING>?  = STRIPPED_TYPEOF(TS1); SDAI.TOUCH(var: &TYPES1)
    var TYPES2: SDAI.SET<SDAI.STRING>?  = STRIPPED_TYPEOF(TS2); SDAI.TOUCH(var: &TYPES2)
    var UP1: eUNIFORM_PRODUCT_SPACE?  = MAKE_UNIFORM_PRODUCT_SPACE(
                                        BASE: eMATHS_SPACE(/*eELEMENTARY_SPACE*/THE_REALS), 
                                        EXPONENT: tPOSITIVE_INTEGER(1)); SDAI.TOUCH(var: &UP1)
    var UP2: eUNIFORM_PRODUCT_SPACE?  = MAKE_UNIFORM_PRODUCT_SPACE(
                                        BASE: eMATHS_SPACE(/*eELEMENTARY_SPACE*/THE_REALS), 
                                        EXPONENT: tPOSITIVE_INTEGER(1)); SDAI.TOUCH(var: &UP2)
    var LP1: eLISTED_PRODUCT_SPACE?  = THE_ZERO_TUPLE_SPACE; SDAI.TOUCH(var: &LP1)
    var LP2: eLISTED_PRODUCT_SPACE?  = THE_ZERO_TUPLE_SPACE; SDAI.TOUCH(var: &LP2)
    var LPS: eLISTED_PRODUCT_SPACE?  = THE_ZERO_TUPLE_SPACE; SDAI.TOUCH(var: &LPS)
    var ET1: eEXTENDED_TUPLE_SPACE?  = THE_TUPLES; SDAI.TOUCH(var: &ET1)
    var ET2: eEXTENDED_TUPLE_SPACE?  = THE_TUPLES; SDAI.TOUCH(var: &ET2)
    var ETS: eEXTENDED_TUPLE_SPACE?  = THE_TUPLES; SDAI.TOUCH(var: &ETS)
    var USE_UP1: SDAI.BOOLEAN? 
    var USE_UP2: SDAI.BOOLEAN? 
    var USE_LP1: SDAI.BOOLEAN? 
    var USE_LP2: SDAI.BOOLEAN? 
    var FACTORS: SDAI.LIST<eMATHS_SPACE>?  = SDAI.LIST<eMATHS_SPACE>(SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &FACTORS)
    var TSPACE: sTUPLE_SPACE? 
    //END_LOCAL

    
    let _TEMP1 = SDAI.aggregate(TYPES1, contains: SDAI.STRING("UNIFORM_PRODUCT_SPACE"))
    if SDAI.IS_TRUE( _TEMP1 ) {
      UP1 = eUNIFORM_PRODUCT_SPACE(/*sTUPLE_SPACE*/TS1)
      USE_UP1 = SDAI.BOOLEAN(SDAI.TRUE)
      USE_LP1 = SDAI.BOOLEAN(SDAI.FALSE)
    }
    else {
      
      let _TEMP2 = SDAI.aggregate(TYPES1, contains: SDAI.STRING("LISTED_PRODUCT_SPACE"))
      if SDAI.IS_TRUE( _TEMP2 ) {
        LP1 = eLISTED_PRODUCT_SPACE(/*sTUPLE_SPACE*/TS1)
        USE_UP1 = SDAI.BOOLEAN(SDAI.FALSE)
        USE_LP1 = SDAI.BOOLEAN(SDAI.TRUE)
      }
      else {
        
        let _TEMP3 = SDAI.aggregate(TYPES1, contains: SDAI.STRING("EXTENDED_TUPLE_SPACE"))
        let _TEMP4 =  !_TEMP3
        if SDAI.IS_TRUE( _TEMP4 ) {
          return _assoc_product_space__cache.updateCache(params: _params, value: (nil as sTUPLE_SPACE?))
        }
        ET1 = eEXTENDED_TUPLE_SPACE(/*sTUPLE_SPACE*/TS1)
        USE_UP1 = SDAI.BOOLEAN(SDAI.FALSE)
        USE_LP1 = SDAI.BOOLEAN(SDAI.FALSE)
      }
    }
    
    let _TEMP5 = SDAI.aggregate(TYPES2, contains: SDAI.STRING("UNIFORM_PRODUCT_SPACE"))
    if SDAI.IS_TRUE( _TEMP5 ) {
      UP2 = eUNIFORM_PRODUCT_SPACE(/*sTUPLE_SPACE*/TS2)
      USE_UP2 = SDAI.BOOLEAN(SDAI.TRUE)
      USE_LP2 = SDAI.BOOLEAN(SDAI.FALSE)
    }
    else {
      
      let _TEMP6 = SDAI.aggregate(TYPES2, contains: SDAI.STRING("LISTED_PRODUCT_SPACE"))
      if SDAI.IS_TRUE( _TEMP6 ) {
        LP2 = eLISTED_PRODUCT_SPACE(/*sTUPLE_SPACE*/TS2)
        USE_UP2 = SDAI.BOOLEAN(SDAI.FALSE)
        USE_LP2 = SDAI.BOOLEAN(SDAI.TRUE)
      }
      else {
        
        let _TEMP7 = SDAI.aggregate(TYPES2, contains: SDAI.STRING("EXTENDED_TUPLE_SPACE"))
        let _TEMP8 =  !_TEMP7
        if SDAI.IS_TRUE( _TEMP8 ) {
          return _assoc_product_space__cache.updateCache(params: _params, value: (nil as sTUPLE_SPACE?))
        }
        ET2 = eEXTENDED_TUPLE_SPACE(/*sTUPLE_SPACE*/TS2)
        USE_UP2 = SDAI.BOOLEAN(SDAI.FALSE)
        USE_LP2 = SDAI.BOOLEAN(SDAI.FALSE)
      }
    }
    if SDAI.IS_TRUE( USE_UP1 ) {
      if SDAI.IS_TRUE( USE_UP2 ) {
        
        let _TEMP9 = UP1?.BASE
        let _TEMP10 = UP2?.BASE
        let _TEMP11 = _TEMP9 .==. _TEMP10
        if SDAI.IS_TRUE( _TEMP11 ) {
          
          let _TEMP12 = UP1?.BASE
          let _TEMP13 = UP1?.EXPONENT
          let _TEMP14 = UP2?.EXPONENT
          let _TEMP15 = _TEMP13 + _TEMP14
          let _TEMP16 = MAKE_UNIFORM_PRODUCT_SPACE(
            BASE: _TEMP12, EXPONENT: tPOSITIVE_INTEGER(/*SDAI.INTEGER*/_TEMP15))
          TSPACE = sTUPLE_SPACE(/*eUNIFORM_PRODUCT_SPACE*/_TEMP16)
        }
        else {
          
          let _TEMP17 = UP1?.BASE
          let _TEMP18 = UP1?.EXPONENT
          let _TEMP19 = UP2?.BASE
          let _TEMP20 = UP2?.EXPONENT
          let _TEMP21 = SDAI.LIST<eMATHS_SPACE>(([
            SDAI.AIE(_TEMP17, repeat: _TEMP18), 
            SDAI.AIE(_TEMP19, repeat: _TEMP20)] as [SDAI.AggregationInitializerElement<eMATHS_SPACE>]))
          FACTORS = _TEMP21
          
          let _TEMP22 = MAKE_LISTED_PRODUCT_SPACE(FACTORS)
          TSPACE = sTUPLE_SPACE(/*eLISTED_PRODUCT_SPACE*/_TEMP22)
        }
      }
      else {
        if SDAI.IS_TRUE( USE_LP2 ) {
          
          let _TEMP23 = UP1?.BASE
          let _TEMP24 = UP1?.EXPONENT
          let _TEMP25 = SDAI.LIST<eMATHS_SPACE>(([
            SDAI.AIE(_TEMP23, repeat: _TEMP24)] as [SDAI.AggregationInitializerElement<eMATHS_SPACE>]))
          FACTORS = _TEMP25
          
          let _TEMP26 = LP2?.FACTORS
          let _TEMP27 = FACTORS + _TEMP26
          FACTORS = _TEMP27
          
          let _TEMP28 = MAKE_LISTED_PRODUCT_SPACE(FACTORS)
          TSPACE = sTUPLE_SPACE(/*eLISTED_PRODUCT_SPACE*/_TEMP28)
        }
        else {
          
          let _TEMP29 = ET2?.BASE
          let _TEMP30 = ASSOC_PRODUCT_SPACE(
            TS1: sTUPLE_SPACE(/*eUNIFORM_PRODUCT_SPACE*/UP1), 
            TS2: _TEMP29)
          TSPACE = _TEMP30
          
          let _TEMP31 = ET2?.EXTENDER
          let _TEMP32 = MAKE_EXTENDED_TUPLE_SPACE(
            BASE: TSPACE, EXTENDER: _TEMP31)
          TSPACE = sTUPLE_SPACE(/*eEXTENDED_TUPLE_SPACE*/_TEMP32)
        }
      }
    }
    else {
      if SDAI.IS_TRUE( USE_LP1 ) {
        if SDAI.IS_TRUE( USE_UP2 ) {
          
          let _TEMP33 = UP2?.BASE
          let _TEMP34 = UP2?.EXPONENT
          let _TEMP35 = SDAI.LIST<eMATHS_SPACE>(([
            SDAI.AIE(_TEMP33, repeat: _TEMP34)] as [SDAI.AggregationInitializerElement<eMATHS_SPACE>]))
          FACTORS = _TEMP35
          
          let _TEMP36 = LP1?.FACTORS
          let _TEMP37 = _TEMP36 + FACTORS
          FACTORS = _TEMP37
          
          let _TEMP38 = MAKE_LISTED_PRODUCT_SPACE(FACTORS)
          TSPACE = sTUPLE_SPACE(/*eLISTED_PRODUCT_SPACE*/_TEMP38)
        }
        else {
          if SDAI.IS_TRUE( USE_LP2 ) {
            
            let _TEMP39 = LP1?.FACTORS
            let _TEMP40 = LP2?.FACTORS
            let _TEMP41 = _TEMP39 + _TEMP40
            let _TEMP42 = MAKE_LISTED_PRODUCT_SPACE(_TEMP41)
            TSPACE = sTUPLE_SPACE(/*eLISTED_PRODUCT_SPACE*/_TEMP42)
          }
          else {
            
            let _TEMP43 = ET2?.BASE
            let _TEMP44 = ASSOC_PRODUCT_SPACE(
              TS1: sTUPLE_SPACE(/*eLISTED_PRODUCT_SPACE*/LP1), 
              TS2: _TEMP43)
            TSPACE = _TEMP44
            
            let _TEMP45 = ET2?.EXTENDER
            let _TEMP46 = MAKE_EXTENDED_TUPLE_SPACE(
              BASE: TSPACE, EXTENDER: _TEMP45)
            TSPACE = sTUPLE_SPACE(/*eEXTENDED_TUPLE_SPACE*/_TEMP46)
          }
        }
      }
      else {
        if SDAI.IS_TRUE( USE_UP2 ) {
          
          let _TEMP47 = ET1?.EXTENDER
          let _TEMP48 = UP2?.BASE
          let _TEMP49 = _TEMP47 .==. _TEMP48
          if SDAI.IS_TRUE( _TEMP49 ) {
            
            let _TEMP50 = ET1?.BASE
            let _TEMP51 = ASSOC_PRODUCT_SPACE(
              TS1: _TEMP50, TS2: sTUPLE_SPACE(/*eUNIFORM_PRODUCT_SPACE*/UP2))
            TSPACE = _TEMP51
            
            let _TEMP52 = ET1?.EXTENDER
            let _TEMP53 = MAKE_EXTENDED_TUPLE_SPACE(
              BASE: TSPACE, EXTENDER: _TEMP52)
            TSPACE = sTUPLE_SPACE(/*eEXTENDED_TUPLE_SPACE*/_TEMP53)
          }
          else {
            return _assoc_product_space__cache.updateCache(params: _params, value: (nil as sTUPLE_SPACE?))
          }
        }
        else {
          if SDAI.IS_TRUE( USE_LP2 ) {
            
            let _TEMP54 = LP2?.FACTORS
            FACTORS = _TEMP54
            if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/
              SDAI.SIZEOF(FACTORS)) {
              for I in incrementControl {
                
                let _TEMP55 = ET1?.EXTENDER
                let _TEMP56 = FACTORS?[I]
                let _TEMP57 = _TEMP55 .!=. _TEMP56
                if SDAI.IS_TRUE( _TEMP57 ) {
                  return _assoc_product_space__cache.updateCache(params: _params, value: (nil as sTUPLE_SPACE?))
                }
              }
            }
            
            let _TEMP58 = ET1?.BASE
            let _TEMP59 = ASSOC_PRODUCT_SPACE(
              TS1: _TEMP58, TS2: sTUPLE_SPACE(/*eLISTED_PRODUCT_SPACE*/LP2))
            TSPACE = _TEMP59
            
            let _TEMP60 = ET1?.EXTENDER
            let _TEMP61 = MAKE_EXTENDED_TUPLE_SPACE(
              BASE: TSPACE, EXTENDER: _TEMP60)
            TSPACE = sTUPLE_SPACE(/*eEXTENDED_TUPLE_SPACE*/_TEMP61)
          }
          else {
            
            let _TEMP62 = ET1?.EXTENDER
            let _TEMP63 = ET2?.EXTENDER
            let _TEMP64 = _TEMP62 .==. _TEMP63
            if SDAI.IS_TRUE( _TEMP64 ) {
              
              let _TEMP65 = ET2?.BASE
              let _TEMP66 = ASSOC_PRODUCT_SPACE(
                TS1: sTUPLE_SPACE(/*eEXTENDED_TUPLE_SPACE*/ET1), 
                TS2: _TEMP65)
              TSPACE = _TEMP66
            }
            else {
              return _assoc_product_space__cache.updateCache(params: _params, value: (nil as sTUPLE_SPACE?))
            }
          }
        }
      }
    }
    return _assoc_product_space__cache.updateCache(params: _params, value: TSPACE)
  }

}

//MARK: - function result cache
private var _assoc_product_space__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

