/* file: compatible_complex_number_regions.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  FUNCTION compatible_complex_number_regions(
               sp1, sp2 : maths_space
           ) : BOOLEAN;

    LOCAL
      typenames   : SET OF STRING := stripped_typeof( sp1 );
      crgn1       : cartesian_complex_number_region;
      crgn2       : cartesian_complex_number_region;
      prgn1       : polar_complex_number_region;
      prgn2       : polar_complex_number_region;
      prgn1c2     : polar_complex_number_region;
      prgn2c1     : polar_complex_number_region;
      sp1_is_crgn : BOOLEAN;
      sp2_is_crgn : BOOLEAN;
    END_LOCAL;
    IF 'CARTESIAN_COMPLEX_NUMBER_REGION' IN typenames THEN
      sp1_is_crgn := TRUE;
      crgn1 := sp1;
    ELSE
      IF 'POLAR_COMPLEX_NUMBER_REGION' IN typenames THEN
        sp1_is_crgn := FALSE;
        prgn1 := sp1;
      ELSE
        RETURN( TRUE );
      END_IF;
    END_IF;
    typenames := stripped_typeof( sp2 );
    IF 'CARTESIAN_COMPLEX_NUMBER_REGION' IN typenames THEN
      sp2_is_crgn := TRUE;
      crgn2 := sp2;
    ELSE
      IF 'POLAR_COMPLEX_NUMBER_REGION' IN typenames THEN
        sp2_is_crgn := FALSE;
        prgn2 := sp2;
      ELSE
        RETURN( TRUE );
      END_IF;
    END_IF;
    IF sp1_is_crgn AND sp2_is_crgn THEN
      RETURN( compatible_intervals( crgn1.real_constraint, crgn2.real_constraint ) AND compatible_intervals( 
          crgn1.imag_constraint, crgn2.imag_constraint ) );
    END_IF;
    IF ( NOT sp1_is_crgn ) AND ( NOT sp2_is_crgn ) AND ( prgn1.centre.real_part = prgn2.centre.real_part ) 
        AND ( prgn1.centre.imag_part = prgn2.centre.imag_part ) THEN
      IF NOT compatible_intervals( prgn1.distance_constraint, prgn2.distance_constraint ) THEN
        RETURN( FALSE );
      END_IF;
      IF compatible_intervals( prgn1.direction_constraint, prgn2.direction_constraint ) THEN
        RETURN( TRUE );
      END_IF;
      IF ( prgn1.direction_constraint.max > PI ) AND ( prgn2.direction_constraint.max < PI ) THEN
        RETURN( compatible_intervals( prgn2.direction_constraint, make_finite_real_interval( -PI, open, prgn1
            .direction_constraint.max - ( 2 * PI ), prgn1.direction_constraint.max_closure ) ) );
      END_IF;
      IF ( prgn2.direction_constraint.max > PI ) AND ( prgn1.direction_constraint.max < PI ) THEN
        RETURN( compatible_intervals( prgn1.direction_constraint, make_finite_real_interval( -PI, open, prgn2
            .direction_constraint.max - ( 2 * PI ), prgn2.direction_constraint.max_closure ) ) );
      END_IF;
      RETURN( FALSE );
    END_IF;
    IF sp1_is_crgn AND ( NOT sp2_is_crgn ) THEN
      crgn2 := enclose_pregion_in_cregion( prgn2 );
      prgn1 := enclose_cregion_in_pregion( crgn1, prgn2.centre );
      RETURN( compatible_complex_number_regions( crgn1, crgn2 ) AND compatible_complex_number_regions( prgn1, 
          prgn2 ) );
    END_IF;
    IF ( NOT sp1_is_crgn ) AND sp2_is_crgn THEN
      crgn1 := enclose_pregion_in_cregion( prgn1 );
      prgn2 := enclose_cregion_in_pregion( crgn2, prgn1.centre );
      RETURN( compatible_complex_number_regions( crgn1, crgn2 ) AND compatible_complex_number_regions( prgn1, 
          prgn2 ) );
    END_IF;
    prgn1c2 := enclose_pregion_in_pregion( prgn1, prgn2.centre );
    prgn2c1 := enclose_pregion_in_pregion( prgn2, prgn1.centre );
    RETURN( compatible_complex_number_regions( prgn1, prgn2c1 ) AND compatible_complex_number_regions( 
        prgn1c2, prgn2 ) );

  END_FUNCTION; -- compatible_complex_number_regions (line:36190 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func COMPATIBLE_COMPLEX_NUMBER_REGIONS(
    SP1: eMATHS_SPACE? , SP2: eMATHS_SPACE? ) 
    -> SDAI.BOOLEAN? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( SP1, SP2 )
    if case .available(let _cached_value) = _compatible_complex_number_regions__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.BOOLEAN
    }

    var SP1 = SP1; SDAI.TOUCH(var: &SP1)
    var SP2 = SP2; SDAI.TOUCH(var: &SP2)

    //LOCAL
    var TYPENAMES: SDAI.SET<SDAI.STRING>?  = STRIPPED_TYPEOF(SP1); SDAI.TOUCH(var: &TYPENAMES)
    var CRGN1: eCARTESIAN_COMPLEX_NUMBER_REGION? 
    var CRGN2: eCARTESIAN_COMPLEX_NUMBER_REGION? 
    var PRGN1: ePOLAR_COMPLEX_NUMBER_REGION? 
    var PRGN2: ePOLAR_COMPLEX_NUMBER_REGION? 
    var PRGN1C2: ePOLAR_COMPLEX_NUMBER_REGION? 
    var PRGN2C1: ePOLAR_COMPLEX_NUMBER_REGION? 
    var SP1_IS_CRGN: SDAI.BOOLEAN? 
    var SP2_IS_CRGN: SDAI.BOOLEAN? 
    //END_LOCAL

    
    let _TEMP1 = SDAI.aggregate(TYPENAMES, contains: SDAI.STRING("CARTESIAN_COMPLEX_NUMBER_REGION"))
    if SDAI.IS_TRUE( _TEMP1 ) {
      SP1_IS_CRGN = SDAI.BOOLEAN(SDAI.TRUE)
      CRGN1 = eCARTESIAN_COMPLEX_NUMBER_REGION(/*eMATHS_SPACE*/SP1)
    }
    else {
      
      let _TEMP2 = SDAI.aggregate(TYPENAMES, contains: SDAI.STRING("POLAR_COMPLEX_NUMBER_REGION"))
      if SDAI.IS_TRUE( _TEMP2 ) {
        SP1_IS_CRGN = SDAI.BOOLEAN(SDAI.FALSE)
        PRGN1 = ePOLAR_COMPLEX_NUMBER_REGION(/*eMATHS_SPACE*/SP1)
      }
      else {
        return _compatible_complex_number_regions__cache.updateCache(params: _params, value: SDAI.BOOLEAN(
          SDAI.TRUE))
      }
    }
    
    let _TEMP3 = STRIPPED_TYPEOF(SP2)
    TYPENAMES = _TEMP3
    
    let _TEMP4 = SDAI.aggregate(TYPENAMES, contains: SDAI.STRING("CARTESIAN_COMPLEX_NUMBER_REGION"))
    if SDAI.IS_TRUE( _TEMP4 ) {
      SP2_IS_CRGN = SDAI.BOOLEAN(SDAI.TRUE)
      CRGN2 = eCARTESIAN_COMPLEX_NUMBER_REGION(/*eMATHS_SPACE*/SP2)
    }
    else {
      
      let _TEMP5 = SDAI.aggregate(TYPENAMES, contains: SDAI.STRING("POLAR_COMPLEX_NUMBER_REGION"))
      if SDAI.IS_TRUE( _TEMP5 ) {
        SP2_IS_CRGN = SDAI.BOOLEAN(SDAI.FALSE)
        PRGN2 = ePOLAR_COMPLEX_NUMBER_REGION(/*eMATHS_SPACE*/SP2)
      }
      else {
        return _compatible_complex_number_regions__cache.updateCache(params: _params, value: SDAI.BOOLEAN(
          SDAI.TRUE))
      }
    }
    
    let _TEMP6 = SP1_IS_CRGN && SP2_IS_CRGN
    if SDAI.IS_TRUE( _TEMP6 ) {
      
      let _TEMP7 = CRGN1?.REAL_CONSTRAINT
      let _TEMP8 = CRGN2?.REAL_CONSTRAINT
      let _TEMP9 = COMPATIBLE_INTERVALS(
        SP1: eMATHS_SPACE(/*sREAL_INTERVAL*/_TEMP7), 
        SP2: eMATHS_SPACE(/*sREAL_INTERVAL*/_TEMP8))
      let _TEMP10 = CRGN1?.IMAG_CONSTRAINT
      let _TEMP11 = CRGN2?.IMAG_CONSTRAINT
      let _TEMP12 = COMPATIBLE_INTERVALS(
        SP1: eMATHS_SPACE(/*sREAL_INTERVAL*/_TEMP10), 
        SP2: eMATHS_SPACE(/*sREAL_INTERVAL*/_TEMP11))
      let _TEMP13 = _TEMP9 && _TEMP12
      return _compatible_complex_number_regions__cache.updateCache(params: _params, value: SDAI.BOOLEAN(/*
        SDAI.LOGICAL*/_TEMP13))
    }
    
    let _TEMP14 = (  !SP1_IS_CRGN ) && (  !SP2_IS_CRGN )
    let _TEMP15 = PRGN1?.CENTRE
    let _TEMP16 = _TEMP15?.REAL_PART
    let _TEMP17 = PRGN2?.CENTRE
    let _TEMP18 = _TEMP17?.REAL_PART
    let _TEMP19 = _TEMP16 .==. _TEMP18
    let _TEMP20 = _TEMP14 && _TEMP19
    let _TEMP21 = PRGN1?.CENTRE
    let _TEMP22 = _TEMP21?.IMAG_PART
    let _TEMP23 = PRGN2?.CENTRE
    let _TEMP24 = _TEMP23?.IMAG_PART
    let _TEMP25 = _TEMP22 .==. _TEMP24
    let _TEMP26 = _TEMP20 && _TEMP25
    if SDAI.IS_TRUE( _TEMP26 ) {
      
      let _TEMP27 = PRGN1?.DISTANCE_CONSTRAINT
      let _TEMP28 = PRGN2?.DISTANCE_CONSTRAINT
      let _TEMP29 = COMPATIBLE_INTERVALS(
        SP1: eMATHS_SPACE(/*sREAL_INTERVAL*/_TEMP27), 
        SP2: eMATHS_SPACE(/*sREAL_INTERVAL*/_TEMP28))
      let _TEMP30 =  !_TEMP29
      if SDAI.IS_TRUE( _TEMP30 ) {
        return _compatible_complex_number_regions__cache.updateCache(params: _params, value: SDAI.BOOLEAN(
          SDAI.FALSE))
      }
      
      let _TEMP31 = PRGN1?.DIRECTION_CONSTRAINT
      let _TEMP32 = PRGN2?.DIRECTION_CONSTRAINT
      let _TEMP33 = COMPATIBLE_INTERVALS(
        SP1: eMATHS_SPACE(/*eFINITE_REAL_INTERVAL*/_TEMP31), 
        SP2: eMATHS_SPACE(/*eFINITE_REAL_INTERVAL*/_TEMP32))
      if SDAI.IS_TRUE( _TEMP33 ) {
        return _compatible_complex_number_regions__cache.updateCache(params: _params, value: SDAI.BOOLEAN(
          SDAI.TRUE))
      }
      
      let _TEMP34 = PRGN1?.DIRECTION_CONSTRAINT
      let _TEMP35 = _TEMP34?.MAX
      let _TEMP36 = _TEMP35 > SDAI.FORCE_OPTIONAL(SDAI.REAL(SDAI.PI))
      let _TEMP37 = PRGN2?.DIRECTION_CONSTRAINT
      let _TEMP38 = _TEMP37?.MAX
      let _TEMP39 = _TEMP38 < SDAI.FORCE_OPTIONAL(SDAI.REAL(SDAI.PI))
      let _TEMP40 = _TEMP36 && _TEMP39
      if SDAI.IS_TRUE( _TEMP40 ) {
        
        let _TEMP41 = PRGN2?.DIRECTION_CONSTRAINT
        let _TEMP42 = PRGN1?.DIRECTION_CONSTRAINT
        let _TEMP43 = _TEMP42?.MAX
        let _TEMP44 = SDAI.REAL(2.0000000000e+00) * SDAI.REAL(SDAI.PI)
        let _TEMP45 = _TEMP43 - SDAI.FORCE_OPTIONAL(_TEMP44)
        let _TEMP46 = PRGN1?.DIRECTION_CONSTRAINT
        let _TEMP47 = _TEMP46?.MAX_CLOSURE
        let _TEMP48 = MAKE_FINITE_REAL_INTERVAL(
          MIN: SDAI.REAL( -SDAI.PI), 
          MINCLO: OPEN, MAX: _TEMP45, 
          MAXCLO: _TEMP47)
        let _TEMP49 = COMPATIBLE_INTERVALS(
          SP1: eMATHS_SPACE(/*eFINITE_REAL_INTERVAL*/_TEMP41), 
          SP2: eMATHS_SPACE(/*eFINITE_REAL_INTERVAL*/_TEMP48))
        return _compatible_complex_number_regions__cache.updateCache(params: _params, value: _TEMP49)
      }
      
      let _TEMP50 = PRGN2?.DIRECTION_CONSTRAINT
      let _TEMP51 = _TEMP50?.MAX
      let _TEMP52 = _TEMP51 > SDAI.FORCE_OPTIONAL(SDAI.REAL(SDAI.PI))
      let _TEMP53 = PRGN1?.DIRECTION_CONSTRAINT
      let _TEMP54 = _TEMP53?.MAX
      let _TEMP55 = _TEMP54 < SDAI.FORCE_OPTIONAL(SDAI.REAL(SDAI.PI))
      let _TEMP56 = _TEMP52 && _TEMP55
      if SDAI.IS_TRUE( _TEMP56 ) {
        
        let _TEMP57 = PRGN1?.DIRECTION_CONSTRAINT
        let _TEMP58 = PRGN2?.DIRECTION_CONSTRAINT
        let _TEMP59 = _TEMP58?.MAX
        let _TEMP60 = SDAI.REAL(2.0000000000e+00) * SDAI.REAL(SDAI.PI)
        let _TEMP61 = _TEMP59 - SDAI.FORCE_OPTIONAL(_TEMP60)
        let _TEMP62 = PRGN2?.DIRECTION_CONSTRAINT
        let _TEMP63 = _TEMP62?.MAX_CLOSURE
        let _TEMP64 = MAKE_FINITE_REAL_INTERVAL(
          MIN: SDAI.REAL( -SDAI.PI), 
          MINCLO: OPEN, MAX: _TEMP61, 
          MAXCLO: _TEMP63)
        let _TEMP65 = COMPATIBLE_INTERVALS(
          SP1: eMATHS_SPACE(/*eFINITE_REAL_INTERVAL*/_TEMP57), 
          SP2: eMATHS_SPACE(/*eFINITE_REAL_INTERVAL*/_TEMP64))
        return _compatible_complex_number_regions__cache.updateCache(params: _params, value: _TEMP65)
      }
      return _compatible_complex_number_regions__cache.updateCache(params: _params, value: SDAI.BOOLEAN(
        SDAI.FALSE))
    }
    
    let _TEMP66 = SP1_IS_CRGN && (  !SP2_IS_CRGN )
    if SDAI.IS_TRUE( _TEMP66 ) {
      
      let _TEMP67 = ENCLOSE_PREGION_IN_CREGION(PRGN2)
      CRGN2 = _TEMP67
      
      let _TEMP68 = PRGN2?.CENTRE
      let _TEMP69 = ENCLOSE_CREGION_IN_PREGION(
        CRGN: CRGN1, CENTRE: _TEMP68)
      PRGN1 = _TEMP69
      
      let _TEMP70 = COMPATIBLE_COMPLEX_NUMBER_REGIONS(
        SP1: eMATHS_SPACE(/*eCARTESIAN_COMPLEX_NUMBER_REGION*/CRGN1), 
        SP2: eMATHS_SPACE(/*eCARTESIAN_COMPLEX_NUMBER_REGION*/CRGN2))
      let _TEMP71 = COMPATIBLE_COMPLEX_NUMBER_REGIONS(
        SP1: eMATHS_SPACE(/*ePOLAR_COMPLEX_NUMBER_REGION*/PRGN1), 
        SP2: eMATHS_SPACE(/*ePOLAR_COMPLEX_NUMBER_REGION*/PRGN2))
      let _TEMP72 = _TEMP70 && _TEMP71
      return _compatible_complex_number_regions__cache.updateCache(params: _params, value: SDAI.BOOLEAN(/*
        SDAI.LOGICAL*/_TEMP72))
    }
    
    let _TEMP73 = (  !SP1_IS_CRGN ) && SP2_IS_CRGN
    if SDAI.IS_TRUE( _TEMP73 ) {
      
      let _TEMP74 = ENCLOSE_PREGION_IN_CREGION(PRGN1)
      CRGN1 = _TEMP74
      
      let _TEMP75 = PRGN1?.CENTRE
      let _TEMP76 = ENCLOSE_CREGION_IN_PREGION(
        CRGN: CRGN2, CENTRE: _TEMP75)
      PRGN2 = _TEMP76
      
      let _TEMP77 = COMPATIBLE_COMPLEX_NUMBER_REGIONS(
        SP1: eMATHS_SPACE(/*eCARTESIAN_COMPLEX_NUMBER_REGION*/CRGN1), 
        SP2: eMATHS_SPACE(/*eCARTESIAN_COMPLEX_NUMBER_REGION*/CRGN2))
      let _TEMP78 = COMPATIBLE_COMPLEX_NUMBER_REGIONS(
        SP1: eMATHS_SPACE(/*ePOLAR_COMPLEX_NUMBER_REGION*/PRGN1), 
        SP2: eMATHS_SPACE(/*ePOLAR_COMPLEX_NUMBER_REGION*/PRGN2))
      let _TEMP79 = _TEMP77 && _TEMP78
      return _compatible_complex_number_regions__cache.updateCache(params: _params, value: SDAI.BOOLEAN(/*
        SDAI.LOGICAL*/_TEMP79))
    }
    
    let _TEMP80 = PRGN2?.CENTRE
    let _TEMP81 = ENCLOSE_PREGION_IN_PREGION(
      PRGN: PRGN1, CENTRE: _TEMP80)
    PRGN1C2 = _TEMP81
    
    let _TEMP82 = PRGN1?.CENTRE
    let _TEMP83 = ENCLOSE_PREGION_IN_PREGION(
      PRGN: PRGN2, CENTRE: _TEMP82)
    PRGN2C1 = _TEMP83
    
    let _TEMP84 = COMPATIBLE_COMPLEX_NUMBER_REGIONS(
      SP1: eMATHS_SPACE(/*ePOLAR_COMPLEX_NUMBER_REGION*/PRGN1), 
      SP2: eMATHS_SPACE(/*ePOLAR_COMPLEX_NUMBER_REGION*/PRGN2C1))
    let _TEMP85 = COMPATIBLE_COMPLEX_NUMBER_REGIONS(
      SP1: eMATHS_SPACE(/*ePOLAR_COMPLEX_NUMBER_REGION*/PRGN1C2), 
      SP2: eMATHS_SPACE(/*ePOLAR_COMPLEX_NUMBER_REGION*/PRGN2))
    let _TEMP86 = _TEMP84 && _TEMP85
    return _compatible_complex_number_regions__cache.updateCache(params: _params, value: SDAI.BOOLEAN(/*SDAI.LOGICAL*/
      _TEMP86))
  }

}

//MARK: - function result cache
private var _compatible_complex_number_regions__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

