/* file: simplify_maths_space.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  FUNCTION simplify_maths_space(
               spc : maths_space
           ) : maths_space;

    LOCAL
      stypes   : SET OF STRING := stripped_typeof( spc );
      sset     : SET OF maths_value;
      zset     : SET OF maths_value := [];
      zval     : maths_value;
      zspc     : maths_space;
      zallint  : BOOLEAN := TRUE;
      zint     : INTEGER;
      zmin     : INTEGER;
      zmax     : INTEGER;
      factors  : LIST OF maths_space;
      zfactors : LIST OF maths_space := [];
      rspc     : maths_space;
    END_LOCAL;
    IF 'FINITE_SPACE' IN stypes THEN
      sset := spc\finite_space.members;
      REPEAT i := 1 TO SIZEOF( sset ) BY 1;
        zval := simplify_maths_value( sset[i] );
        zset := zset + [zval];
        IF zallint AND ( 'INTEGER' IN TYPEOF( zval ) ) THEN
          zint := zval;
          IF i = 1 THEN
            zmin := zint;
            zmax := zint;
          ELSE
            IF zint < zmin THEN
              zmin := zint;
            END_IF;
            IF zint > zmax THEN
              zmax := zint;
            END_IF;
          END_IF;
        ELSE
          zallint := FALSE;
        END_IF;
      END_REPEAT;
      IF zallint AND ( SIZEOF( zset ) = ( ( zmax - zmin ) + 1 ) ) THEN
        RETURN( make_finite_integer_interval( zmin, zmax ) );
      END_IF;
      RETURN( make_finite_space( zset ) );
    END_IF;
    IF 'UNIFORM_PRODUCT_SPACE' IN stypes THEN
      zspc := simplify_maths_space( spc\uniform_product_space.base );
      RETURN( make_uniform_product_space( zspc, spc\uniform_product_space.exponent ) );
    END_IF;
    IF 'LISTED_PRODUCT_SPACE' IN stypes THEN
      factors := spc\listed_product_space.factors;
      REPEAT i := 1 TO SIZEOF( factors ) BY 1;
        INSERT( zfactors, simplify_maths_space( factors[i] ), i - 1 );
      END_REPEAT;
      RETURN( make_listed_product_space( zfactors ) );
    END_IF;
    IF 'EXTENDED_TUPLE_SPACE' IN stypes THEN
      zspc := simplify_maths_space( spc\extended_tuple_space.base );
      rspc := simplify_maths_space( spc\extended_tuple_space.extender );
      RETURN( make_extended_tuple_space( zspc, rspc ) );
    END_IF;
    IF 'FUNCTION_SPACE' IN stypes THEN
      zspc := simplify_maths_space( spc\function_space.domain_argument );
      rspc := simplify_maths_space( spc\function_space.range_argument );
      RETURN( make_function_space( spc\function_space.domain_constraint, zspc, spc\function_space.
          range_constraint, rspc ) );
    END_IF;
    RETURN( spc );

  END_FUNCTION; -- simplify_maths_space (line:46286 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func SIMPLIFY_MATHS_SPACE(_ SPC: eMATHS_SPACE? ) 
    -> eMATHS_SPACE? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( SPC )
    if case .available(let _cached_value) = _simplify_maths_space__cache.cachedValue(params: _params) {
      return _cached_value as? eMATHS_SPACE
    }

    var SPC = SPC; SDAI.TOUCH(var: &SPC)

    //LOCAL
    var STYPES: SDAI.SET<SDAI.STRING>?  = STRIPPED_TYPEOF(SPC); SDAI.TOUCH(var: &STYPES)
    var SSET: SDAI.SET<sMATHS_VALUE>? 
    var ZSET: SDAI.SET<sMATHS_VALUE>?  = SDAI.SET<sMATHS_VALUE>(SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &ZSET)
    var ZVAL: sMATHS_VALUE? 
    var ZSPC: eMATHS_SPACE? 
    var ZALLINT: SDAI.BOOLEAN?  = SDAI.BOOLEAN(SDAI.TRUE); SDAI.TOUCH(var: &ZALLINT)
    var ZINT: SDAI.INTEGER? 
    var ZMIN: SDAI.INTEGER? 
    var ZMAX: SDAI.INTEGER? 
    var FACTORS: SDAI.LIST<eMATHS_SPACE>? 
    var ZFACTORS: SDAI.LIST<eMATHS_SPACE>?  = SDAI.LIST<eMATHS_SPACE>(SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &ZFACTORS)
    var RSPC: eMATHS_SPACE? 
    //END_LOCAL

    
    let _TEMP1 = SDAI.aggregate(STYPES, contains: SDAI.STRING("FINITE_SPACE"))
    if SDAI.IS_TRUE( _TEMP1 ) {
      
      let _TEMP2 = SPC?.GROUP_REF(eFINITE_SPACE.self)
      let _TEMP3 = _TEMP2?.MEMBERS
      SSET = _TEMP3
      if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.SIZEOF(
        SSET)) {
        for I in incrementControl {
          
          let _TEMP4 = SSET?[I]
          let _TEMP5 = SIMPLIFY_MATHS_VALUE(_TEMP4)
          ZVAL = _TEMP5
          
          let _TEMP6 = ([SDAI.AIE(ZVAL)] as [SDAI.AggregationInitializerElement<sMATHS_VALUE>])
          let _TEMP7 = ZSET + SDAI.FORCE_OPTIONAL(_TEMP6)
          ZSET = _TEMP7
          
          let _TEMP8 = SDAI.TYPEOF(ZVAL, IS: SDAI.INTEGER.self)
          let _TEMP9 = ZALLINT && _TEMP8
          if SDAI.IS_TRUE( _TEMP9 ) {
            ZINT = SDAI.INTEGER(/*sMATHS_VALUE*/ZVAL)
            
            let _TEMP10 = SDAI.FORCE_OPTIONAL(I) .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
            if SDAI.IS_TRUE( _TEMP10 ) {
              ZMIN = ZINT
              ZMAX = ZINT
            }
            else {
              
              let _TEMP11 = ZINT < ZMIN
              if SDAI.IS_TRUE( _TEMP11 ) {
                ZMIN = ZINT
              }
              
              let _TEMP12 = ZINT > ZMAX
              if SDAI.IS_TRUE( _TEMP12 ) {
                ZMAX = ZINT
              }
            }
          }
          else {
            ZALLINT = SDAI.BOOLEAN(SDAI.FALSE)
          }
        }
      }
      
      let _TEMP13 = SDAI.SIZEOF(ZSET)
      let _TEMP14 = ZMAX - ZMIN
      let _TEMP15 = _TEMP14 + SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      let _TEMP16 = _TEMP13 .==. _TEMP15
      let _TEMP17 = ZALLINT && _TEMP16
      if SDAI.IS_TRUE( _TEMP17 ) {
        
        let _TEMP18 = MAKE_FINITE_INTEGER_INTERVAL(
          MIN: ZMIN, MAX: ZMAX)
        return _simplify_maths_space__cache.updateCache(params: _params, value: eMATHS_SPACE(/*
          eFINITE_INTEGER_INTERVAL*/_TEMP18))
      }
      
      let _TEMP19 = MAKE_FINITE_SPACE(ZSET)
      return _simplify_maths_space__cache.updateCache(params: _params, value: eMATHS_SPACE(/*eFINITE_SPACE*/
        _TEMP19))
    }
    
    let _TEMP20 = SDAI.aggregate(STYPES, contains: SDAI.STRING("UNIFORM_PRODUCT_SPACE"))
    if SDAI.IS_TRUE( _TEMP20 ) {
      
      let _TEMP21 = SPC?.GROUP_REF(eUNIFORM_PRODUCT_SPACE.self)
      let _TEMP22 = _TEMP21?.BASE
      let _TEMP23 = SIMPLIFY_MATHS_SPACE(_TEMP22)
      ZSPC = _TEMP23
      
      let _TEMP24 = SPC?.GROUP_REF(eUNIFORM_PRODUCT_SPACE.self)
      let _TEMP25 = _TEMP24?.EXPONENT
      let _TEMP26 = MAKE_UNIFORM_PRODUCT_SPACE(
        BASE: ZSPC, EXPONENT: _TEMP25)
      return _simplify_maths_space__cache.updateCache(params: _params, value: eMATHS_SPACE(/*
        eUNIFORM_PRODUCT_SPACE*/_TEMP26))
    }
    
    let _TEMP27 = SDAI.aggregate(STYPES, contains: SDAI.STRING("LISTED_PRODUCT_SPACE"))
    if SDAI.IS_TRUE( _TEMP27 ) {
      
      let _TEMP28 = SPC?.GROUP_REF(eLISTED_PRODUCT_SPACE.self)
      let _TEMP29 = _TEMP28?.FACTORS
      FACTORS = _TEMP29
      if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.SIZEOF(
        FACTORS)) {
        for I in incrementControl {
          SDAI.INSERT( L: &ZFACTORS, E: SIMPLIFY_MATHS_SPACE(FACTORS?[I]), 
            P: SDAI.FORCE_OPTIONAL(I) - SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1)) )
        }
      }
      
      let _TEMP30 = MAKE_LISTED_PRODUCT_SPACE(ZFACTORS)
      return _simplify_maths_space__cache.updateCache(params: _params, value: eMATHS_SPACE(/*
        eLISTED_PRODUCT_SPACE*/_TEMP30))
    }
    
    let _TEMP31 = SDAI.aggregate(STYPES, contains: SDAI.STRING("EXTENDED_TUPLE_SPACE"))
    if SDAI.IS_TRUE( _TEMP31 ) {
      
      let _TEMP32 = SPC?.GROUP_REF(eEXTENDED_TUPLE_SPACE.self)
      let _TEMP33 = _TEMP32?.BASE
      let _TEMP34 = SIMPLIFY_MATHS_SPACE(eMATHS_SPACE(/*sTUPLE_SPACE*/_TEMP33))
      ZSPC = _TEMP34
      
      let _TEMP35 = SPC?.GROUP_REF(eEXTENDED_TUPLE_SPACE.self)
      let _TEMP36 = _TEMP35?.EXTENDER
      let _TEMP37 = SIMPLIFY_MATHS_SPACE(_TEMP36)
      RSPC = _TEMP37
      
      let _TEMP38 = MAKE_EXTENDED_TUPLE_SPACE(
        BASE: sTUPLE_SPACE(/*eMATHS_SPACE*/ZSPC), 
        EXTENDER: RSPC)
      return _simplify_maths_space__cache.updateCache(params: _params, value: eMATHS_SPACE(/*
        eEXTENDED_TUPLE_SPACE*/_TEMP38))
    }
    
    let _TEMP39 = SDAI.aggregate(STYPES, contains: SDAI.STRING("FUNCTION_SPACE"))
    if SDAI.IS_TRUE( _TEMP39 ) {
      
      let _TEMP40 = SPC?.GROUP_REF(eFUNCTION_SPACE.self)
      let _TEMP41 = _TEMP40?.DOMAIN_ARGUMENT
      let _TEMP42 = SIMPLIFY_MATHS_SPACE(_TEMP41)
      ZSPC = _TEMP42
      
      let _TEMP43 = SPC?.GROUP_REF(eFUNCTION_SPACE.self)
      let _TEMP44 = _TEMP43?.RANGE_ARGUMENT
      let _TEMP45 = SIMPLIFY_MATHS_SPACE(_TEMP44)
      RSPC = _TEMP45
      
      let _TEMP46 = SPC?.GROUP_REF(eFUNCTION_SPACE.self)
      let _TEMP47 = _TEMP46?.DOMAIN_CONSTRAINT
      let _TEMP48 = SPC?.GROUP_REF(eFUNCTION_SPACE.self)
      let _TEMP49 = _TEMP48?.RANGE_CONSTRAINT
      let _TEMP50 = MAKE_FUNCTION_SPACE(
        DOMAIN_CONSTRAINT: _TEMP47, 
        DOMAIN_ARGUMENT: ZSPC, RANGE_CONSTRAINT: _TEMP49, 
        RANGE_ARGUMENT: RSPC)
      return _simplify_maths_space__cache.updateCache(params: _params, value: eMATHS_SPACE(/*eFUNCTION_SPACE*/
        _TEMP50))
    }
    return _simplify_maths_space__cache.updateCache(params: _params, value: SPC)
  }

}

//MARK: - function result cache
private var _simplify_maths_space__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

