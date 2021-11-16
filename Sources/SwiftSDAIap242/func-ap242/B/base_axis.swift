/* file: base_axis.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  FUNCTION base_axis(
               dim : INTEGER;
               axis1, axis2, axis3 : direction
           ) : LIST [2 : 3] OF direction;

    LOCAL
      u      : LIST [2 : 3] OF direction;
      factor : REAL;
      d1     : direction;
      d2     : direction;
    END_LOCAL;
    IF dim = 3 THEN
      d1 := NVL( normalise( axis3 ), dummy_gri || direction( [0, 0, 1] ) );
      d2 := first_proj_axis( d1, axis1 );
      u := [d2, second_proj_axis( d1, d2, axis2 ), d1];
    ELSE
      IF EXISTS( axis1 ) THEN
        d1 := normalise( axis1 );
        u := [d1, orthogonal_complement( d1 )];
        IF EXISTS( axis2 ) THEN
          factor := dot_product( axis2, u[2] );
          IF factor < 0 THEN
            u[2].direction_ratios[1] := -u[2].direction_ratios[1];
            u[2].direction_ratios[2] := -u[2].direction_ratios[2];
          END_IF;
        END_IF;
      ELSE
        IF EXISTS( axis2 ) THEN
          d1 := normalise( axis2 );
          u := [orthogonal_complement( d1 ), d1];
          u[1].direction_ratios[1] := -u[1].direction_ratios[1];
          u[1].direction_ratios[2] := -u[1].direction_ratios[2];
        ELSE
          u := [dummy_gri || direction( [1, 0] ), dummy_gri || direction( [0, 1] )];
        END_IF;
      END_IF;
    END_IF;
    RETURN( u );

  END_FUNCTION; -- base_axis (line:35656 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func BASE_AXIS(DIM: SDAI.INTEGER? , AXIS1: eDIRECTION? , AXIS2: eDIRECTION? , 
                 AXIS3: eDIRECTION? ) 
    -> (SDAI.LIST<eDIRECTION>/*[2:3]*/ )? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( DIM, AXIS1, AXIS2, AXIS3 )
    if case .available(let _cached_value) = _base_axis__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.LIST<eDIRECTION>
    }

    var DIM = DIM; SDAI.TOUCH(var: &DIM)
    var AXIS1 = AXIS1; SDAI.TOUCH(var: &AXIS1)
    var AXIS2 = AXIS2; SDAI.TOUCH(var: &AXIS2)
    var AXIS3 = AXIS3; SDAI.TOUCH(var: &AXIS3)

    //LOCAL
    var U: (SDAI.LIST<eDIRECTION>/*[2:3]*/ )? 
    var FACTOR: SDAI.REAL? 
    var D1: eDIRECTION? 
    var D2: eDIRECTION? 
    //END_LOCAL

    
    let _TEMP1 = DIM .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(3))
    if SDAI.IS_TRUE( _TEMP1 ) {
      
      let _TEMP2 = NORMALISE(sVECTOR_OR_DIRECTION(/*eDIRECTION*/AXIS3))
      let _TEMP3 = SDAI.LIST<SDAI.REAL>(bound1: SDAI.UNWRAP(SDAI.INTEGER(2)), bound2: SDAI.INTEGER(3), 
        ([SDAI.AIE(SDAI.REAL(0)), SDAI.AIE(SDAI.REAL(0)), 
        SDAI.AIE(SDAI.REAL(1.0000000000e+00))] as [SDAI.AggregationInitializerElement<SDAI.REAL>]))
      let _TEMP4 = _direction(DIRECTION_RATIOS: SDAI.UNWRAP(_TEMP3))
      let _TEMP5 = DUMMY_GRI .||. _TEMP4
      let _TEMP6 = SDAI.NVL(V: _TEMP2, 
                            SUBSTITUTE: _TEMP5)
      D1 = eDIRECTION(/*sVECTOR_OR_DIRECTION*/_TEMP6)
      
      let _TEMP7 = FIRST_PROJ_AXIS(Z_AXIS: D1, 
                                   ARG: AXIS1)
      D2 = _TEMP7
      
      let _TEMP8 = SECOND_PROJ_AXIS(
        Z_AXIS: D1, X_AXIS: D2, ARG: AXIS2)
      let _TEMP9 = SDAI.LIST<eDIRECTION>(bound1: SDAI.UNWRAP(SDAI.INTEGER(2)), bound2: SDAI.INTEGER(3), 
        ([SDAI.AIE(D2), SDAI.AIE(_TEMP8), 
        SDAI.AIE(D1)] as [SDAI.AggregationInitializerElement<eDIRECTION>]))
      U = _TEMP9
    }
    else {
      
      let _TEMP10 = SDAI.EXISTS(AXIS1)
      if SDAI.IS_TRUE( _TEMP10 ) {
        
        let _TEMP11 = NORMALISE(sVECTOR_OR_DIRECTION(/*eDIRECTION*/AXIS1))
        D1 = eDIRECTION(/*sVECTOR_OR_DIRECTION*/_TEMP11)
        
        let _TEMP12 = ORTHOGONAL_COMPLEMENT(D1)
        let _TEMP13 = SDAI.LIST<eDIRECTION>(bound1: SDAI.UNWRAP(SDAI.INTEGER(2)), bound2: SDAI.INTEGER(3), 
          ([SDAI.AIE(D1), SDAI.AIE(_TEMP12)] as [SDAI.AggregationInitializerElement<eDIRECTION>]))
        U = _TEMP13
        
        let _TEMP14 = SDAI.EXISTS(AXIS2)
        if SDAI.IS_TRUE( _TEMP14 ) {
          
          let _TEMP15 = U?[2]
          let _TEMP16 = DOT_PRODUCT(
            ARG1: AXIS2, ARG2: _TEMP15)
          FACTOR = _TEMP16
          
          let _TEMP17 = FACTOR < SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
          if SDAI.IS_TRUE( _TEMP17 ) {
            
            let _TEMP18 = U?[2]
            let _TEMP19 = _TEMP18?.DIRECTION_RATIOS
            let _TEMP20 = _TEMP19?[1]
            let _TEMP21 =  -_TEMP20
            let _TEMP22 = U?[2]
            _TEMP22?.DIRECTION_RATIOS[1] = 
              _TEMP21
            
            let _TEMP23 = U?[2]
            let _TEMP24 = _TEMP23?.DIRECTION_RATIOS
            let _TEMP25 = _TEMP24?[2]
            let _TEMP26 =  -_TEMP25
            let _TEMP27 = U?[2]
            _TEMP27?.DIRECTION_RATIOS[2] = 
              _TEMP26
          }
        }
      }
      else {
        
        let _TEMP28 = SDAI.EXISTS(AXIS2)
        if SDAI.IS_TRUE( _TEMP28 ) {
          
          let _TEMP29 = NORMALISE(sVECTOR_OR_DIRECTION(/*eDIRECTION*/AXIS2))
          D1 = eDIRECTION(/*sVECTOR_OR_DIRECTION*/_TEMP29)
          
          let _TEMP30 = ORTHOGONAL_COMPLEMENT(D1)
          let _TEMP31 = SDAI.LIST<eDIRECTION>(bound1: SDAI.UNWRAP(SDAI.INTEGER(2)), bound2: SDAI.INTEGER(3), 
            ([SDAI.AIE(_TEMP30), SDAI.AIE(D1)] as [SDAI.AggregationInitializerElement<eDIRECTION>]))
          U = _TEMP31
          
          let _TEMP32 = U?[1]
          let _TEMP33 = _TEMP32?.DIRECTION_RATIOS
          let _TEMP34 = _TEMP33?[1]
          let _TEMP35 =  -_TEMP34
          let _TEMP36 = U?[1]
          _TEMP36?.DIRECTION_RATIOS[1] = 
            _TEMP35
          
          let _TEMP37 = U?[1]
          let _TEMP38 = _TEMP37?.DIRECTION_RATIOS
          let _TEMP39 = _TEMP38?[2]
          let _TEMP40 =  -_TEMP39
          let _TEMP41 = U?[1]
          _TEMP41?.DIRECTION_RATIOS[2] = 
            _TEMP40
        }
        else {
          
          let _TEMP42 = SDAI.LIST<SDAI.REAL>(bound1: SDAI.UNWRAP(SDAI.INTEGER(2)), bound2: SDAI.INTEGER(3), 
            ([SDAI.AIE(SDAI.REAL(1.0000000000e+00)), 
            SDAI.AIE(SDAI.REAL(0))] as [SDAI.AggregationInitializerElement<SDAI.REAL>]))
          let _TEMP43 = _direction(DIRECTION_RATIOS: SDAI.UNWRAP(_TEMP42))
          let _TEMP44 = DUMMY_GRI .||. _TEMP43
          let _TEMP45 = SDAI.LIST<SDAI.REAL>(bound1: SDAI.UNWRAP(SDAI.INTEGER(2)), bound2: SDAI.INTEGER(3), 
            ([SDAI.AIE(SDAI.REAL(0)), 
            SDAI.AIE(SDAI.REAL(1.0000000000e+00))] as [SDAI.AggregationInitializerElement<SDAI.REAL>]))
          let _TEMP46 = _direction(DIRECTION_RATIOS: SDAI.UNWRAP(_TEMP45))
          let _TEMP47 = DUMMY_GRI .||. _TEMP46
          let _TEMP48 = SDAI.LIST<eDIRECTION>(bound1: SDAI.UNWRAP(SDAI.INTEGER(2)), bound2: SDAI.INTEGER(3), 
            ([SDAI.AIE(eDIRECTION(/*SDAI.GENERIC_ENTITY*/_TEMP44)), 
            SDAI.AIE(eDIRECTION(/*SDAI.GENERIC_ENTITY*/_TEMP47))] as [SDAI.AggregationInitializerElement<
            eDIRECTION>]))
          U = _TEMP48
        }
      }
    }
    return _base_axis__cache.updateCache(params: _params, value: U)
  }

}

//MARK: - function result cache
private var _base_axis__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

