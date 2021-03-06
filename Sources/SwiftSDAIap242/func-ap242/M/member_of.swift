/* file: member_of.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  FUNCTION member_of(
               val : GENERIC:g;
               spc : maths_space
           ) : LOGICAL;

    FUNCTION fedex(
                 val : AGGREGATE OF GENERIC:x;
                 i : INTEGER
             ) : GENERIC:x;
      RETURN( val[i] );

    END_FUNCTION; -- fedex (line:43005 file:ap242ed2_mim_lf_v1.101.TY.exp)

    LOCAL
      v         : maths_value := simplify_maths_value( convert_to_maths_value( val ) );
      vtypes    : SET OF STRING := stripped_typeof( v );
      s         : maths_space := simplify_maths_space( spc );
      stypes    : SET OF STRING := stripped_typeof( s );
      tmp_int   : INTEGER;
      tmp_real  : REAL;
      tmp_cmplx : complex_number_literal;
      cum       : LOGICAL := UNKNOWN;
      vspc      : maths_space;
      sspc      : maths_space;
      smem      : SET OF maths_value;
      factors   : LIST OF maths_space;
      v_list    : LIST OF GENERIC;
    END_LOCAL;
    IF NOT EXISTS( s ) THEN
      RETURN( FALSE );
    END_IF;
    IF NOT EXISTS( v ) THEN
      RETURN( s = the_generics );
    END_IF;
    IF ( 'GENERIC_EXPRESSION' IN vtypes ) AND ( NOT ( 'MATHS_SPACE' IN vtypes ) ) AND ( NOT ( 'MATHS_FUNCTION' 
        IN vtypes ) ) AND ( NOT ( 'COMPLEX_NUMBER_LITERAL' IN vtypes ) ) THEN
      IF has_values_space( v ) THEN
        vspc := values_space_of( v );
        IF subspace_of( vspc, s ) THEN
          RETURN( TRUE );
        END_IF;
        IF NOT compatible_spaces( vspc, s ) THEN
          RETURN( FALSE );
        END_IF;
        RETURN( UNKNOWN );
      END_IF;
      RETURN( UNKNOWN );
    END_IF;
    IF 'ELEMENTARY_SPACE' IN stypes THEN
      CASE s\elementary_space.space_id OF
        es_numbers                :           RETURN( ( 'NUMBER' IN vtypes ) OR ( 'COMPLEX_NUMBER_LITERAL' IN
              vtypes ) );
        es_complex_numbers        :           RETURN( 'COMPLEX_NUMBER_LITERAL' IN vtypes );
        es_reals                  :           RETURN( ( 'REAL' IN vtypes ) AND ( NOT ( 'INTEGER' IN vtypes ) ) );
        es_integers               :           RETURN( 'INTEGER' IN vtypes );
        es_logicals               :           RETURN( 'LOGICAL' IN vtypes );
        es_booleans               :           RETURN( 'BOOLEAN' IN vtypes );
        es_strings                :           RETURN( 'STRING' IN vtypes );
        es_binarys                :           RETURN( 'BINARY' IN vtypes );
        es_maths_spaces           :           RETURN( 'MATHS_SPACE' IN vtypes );
        es_maths_functions        :           RETURN( 'MATHS_FUNCTION' IN vtypes );
        es_generics               :           RETURN( TRUE );
      END_CASE;
    END_IF;
    IF 'FINITE_INTEGER_INTERVAL' IN stypes THEN
      IF 'INTEGER' IN vtypes THEN
        tmp_int := v;
        RETURN( ( s\finite_integer_interval.min <= tmp_int ) AND ( tmp_int <= s\finite_integer_interval.max ) );
      END_IF;
      RETURN( FALSE );
    END_IF;
    IF 'INTEGER_INTERVAL_FROM_MIN' IN stypes THEN
      IF 'INTEGER' IN vtypes THEN
        tmp_int := v;
        RETURN( s\integer_interval_from_min.min <= tmp_int );
      END_IF;
      RETURN( FALSE );
    END_IF;
    IF 'INTEGER_INTERVAL_TO_MAX' IN stypes THEN
      IF 'INTEGER' IN vtypes THEN
        tmp_int := v;
        RETURN( tmp_int <= s\integer_interval_to_max.max );
      END_IF;
      RETURN( FALSE );
    END_IF;
    IF 'FINITE_REAL_INTERVAL' IN stypes THEN
      IF ( 'REAL' IN vtypes ) AND ( NOT ( 'INTEGER' IN vtypes ) ) THEN
        tmp_real := v;
        IF s\finite_real_interval.min_closure = closed THEN
          IF s\finite_real_interval.max_closure = closed THEN
            RETURN( ( s\finite_real_interval.min <= tmp_real ) AND ( tmp_real <= s\finite_real_interval.max ) );
          ELSE
            RETURN( ( s\finite_real_interval.min <= tmp_real ) AND ( tmp_real < s\finite_real_interval.max ) );
          END_IF;
        ELSE
          IF s\finite_real_interval.max_closure = closed THEN
            RETURN( ( s\finite_real_interval.min < tmp_real ) AND ( tmp_real <= s\finite_real_interval.max ) );
          ELSE
            RETURN( ( s\finite_real_interval.min < tmp_real ) AND ( tmp_real < s\finite_real_interval.max ) );
          END_IF;
        END_IF;
      END_IF;
      RETURN( FALSE );
    END_IF;
    IF 'REAL_INTERVAL_FROM_MIN' IN stypes THEN
      IF ( 'REAL' IN vtypes ) AND ( NOT ( 'INTEGER' IN vtypes ) ) THEN
        tmp_real := v;
        IF s\real_interval_from_min.min_closure = closed THEN
          RETURN( s\real_interval_from_min.min <= tmp_real );
        ELSE
          RETURN( s\real_interval_from_min.min < tmp_real );
        END_IF;
      END_IF;
      RETURN( FALSE );
    END_IF;
    IF 'REAL_INTERVAL_TO_MAX' IN stypes THEN
      IF ( 'REAL' IN vtypes ) AND ( NOT ( 'INTEGER' IN vtypes ) ) THEN
        tmp_real := v;
        IF s\real_interval_to_max.max_closure = closed THEN
          RETURN( tmp_real <= s\real_interval_to_max.max );
        ELSE
          RETURN( tmp_real < s\real_interval_to_max.max );
        END_IF;
      END_IF;
      RETURN( FALSE );
    END_IF;
    IF 'CARTESIAN_COMPLEX_NUMBER_REGION' IN stypes THEN
      IF 'COMPLEX_NUMBER_LITERAL' IN vtypes THEN
        RETURN( member_of( v\complex_number_literal.real_part, s\cartesian_complex_number_region.
            real_constraint ) AND member_of( v\complex_number_literal.imag_part, s\
            cartesian_complex_number_region.imag_constraint ) );
      END_IF;
      RETURN( FALSE );
    END_IF;
    IF 'POLAR_COMPLEX_NUMBER_REGION' IN stypes THEN
      IF 'COMPLEX_NUMBER_LITERAL' IN vtypes THEN
        tmp_cmplx := v;
        tmp_cmplx.real_part := tmp_cmplx.real_part - s\polar_complex_number_region.centre.real_part;
        tmp_cmplx.imag_part := tmp_cmplx.imag_part - s\polar_complex_number_region.centre.imag_part;
        tmp_real := SQRT( ( tmp_cmplx.real_part ** 2 ) + ( tmp_cmplx.imag_part ** 2 ) );
        IF NOT member_of( tmp_real, s\polar_complex_number_region.distance_constraint ) THEN
          RETURN( FALSE );
        END_IF;
        IF tmp_real = 0 THEN
          RETURN( TRUE );
        END_IF;
        tmp_real := atan2( tmp_cmplx.imag_part, tmp_cmplx.real_part );
        RETURN( member_of( tmp_real, s\polar_complex_number_region.direction_constraint ) OR member_of( 
            tmp_real + ( 2 * PI ), s\polar_complex_number_region.direction_constraint ) );
      END_IF;
      RETURN( FALSE );
    END_IF;
    IF 'FINITE_SPACE' IN stypes THEN
      smem := s\finite_space.members;
      cum := FALSE;
      REPEAT i := 1 TO SIZEOF( smem ) BY 1;
        cum := cum OR equal_maths_values( v, smem[i] );
        IF cum = TRUE THEN
          RETURN( TRUE );
        END_IF;
      END_REPEAT;
      RETURN( cum );
    END_IF;
    IF 'UNIFORM_PRODUCT_SPACE' IN stypes THEN
      IF 'LIST' IN vtypes THEN
        v_list := v;
        IF SIZEOF( v_list ) = s\uniform_product_space.exponent THEN
          sspc := s\uniform_product_space.base;
          cum := TRUE;
          REPEAT i := 1 TO SIZEOF( v_list ) BY 1;
            cum := cum AND member_of( v_list[i], sspc );
            IF cum = FALSE THEN
              RETURN( FALSE );
            END_IF;
          END_REPEAT;
          RETURN( cum );
        END_IF;
      END_IF;
      RETURN( FALSE );
    END_IF;
    IF 'LISTED_PRODUCT_SPACE' IN stypes THEN
      IF 'LIST' IN vtypes THEN
        v_list := v;
        factors := s\listed_product_space.factors;
        IF SIZEOF( v_list ) = SIZEOF( factors ) THEN
          cum := TRUE;
          REPEAT i := 1 TO SIZEOF( v_list ) BY 1;
            cum := cum AND member_of( v_list[i], factors[i] );
            IF cum = FALSE THEN
              RETURN( FALSE );
            END_IF;
          END_REPEAT;
          RETURN( cum );
        END_IF;
      END_IF;
      RETURN( FALSE );
    END_IF;
    IF 'EXTENDED_TUPLE_SPACE' IN stypes THEN
      IF 'LIST' IN vtypes THEN
        v_list := v;
        sspc := s\extended_tuple_space.base;
        tmp_int := space_dimension( sspc );
        IF SIZEOF( v_list ) >= tmp_int THEN
          cum := TRUE;
          REPEAT i := 1 TO tmp_int BY 1;
            cum := cum AND member_of( v_list[i], factor_space( sspc, i ) );
            IF cum = FALSE THEN
              RETURN( FALSE );
            END_IF;
          END_REPEAT;
          sspc := s\extended_tuple_space.extender;
          REPEAT i := tmp_int + 1 TO SIZEOF( v_list ) BY 1;
            cum := cum AND member_of( v_list[i], sspc );
            IF cum = FALSE THEN
              RETURN( FALSE );
            END_IF;
          END_REPEAT;
          RETURN( cum );
        END_IF;
      END_IF;
      RETURN( FALSE );
    END_IF;
    IF 'FUNCTION_SPACE' IN stypes THEN
      IF 'MATHS_FUNCTION' IN vtypes THEN
        vspc := v\maths_function.domain;
        sspc := s\function_space.domain_argument;
        CASE s\function_space.domain_constraint OF
          sc_equal                  :             cum := equal_maths_spaces( vspc, sspc );
          sc_subspace               :             cum := subspace_of( vspc, sspc );
          sc_member                 :             cum := member_of( vspc, sspc );
        END_CASE;
        IF cum = FALSE THEN
          RETURN( FALSE );
        END_IF;
        vspc := v\maths_function.range;
        sspc := s\function_space.range_argument;
        CASE s\function_space.range_constraint OF
          sc_equal                  :             cum := cum AND equal_maths_spaces( vspc, sspc );
          sc_subspace               :             cum := cum AND subspace_of( vspc, sspc );
          sc_member                 :             cum := cum AND member_of( vspc, sspc );
        END_CASE;
        RETURN( cum );
      END_IF;
      RETURN( FALSE );
    END_IF;
    RETURN( UNKNOWN );

  END_FUNCTION; -- member_of (line:43002 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func MEMBER_OF<gG: SDAIGenericType>(
    VAL: gG? , SPC: eMATHS_SPACE? ) 
    -> SDAI.LOGICAL {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( VAL, SPC )
    if case .available(let _cached_value) = _member_of__cache.cachedValue(params: _params) {
      return _cached_value as! SDAI.LOGICAL
    }

    var VAL = VAL; SDAI.TOUCH(var: &VAL)
    var SPC = SPC; SDAI.TOUCH(var: &SPC)

    //NESTED FUNCTION
    func FEDEX<gX: SDAIGenericType, g_AGG2: SDAIAggregationType>(
      VAL: g_AGG2? , I: SDAI.INTEGER? ) 
      -> gX? 
    where g_AGG2.ELEMENT == gX {

      var VAL = VAL; SDAI.TOUCH(var: &VAL)
      var I = I; SDAI.TOUCH(var: &I)

      
      let _TEMP1 = VAL?[I]
      return _TEMP1
    } //END FUNCTION FEDEX

    //LOCAL
    var V: sMATHS_VALUE?  = SIMPLIFY_MATHS_VALUE(CONVERT_TO_MATHS_VALUE(VAL)); SDAI.TOUCH(var: &V)
    var VTYPES: SDAI.SET<SDAI.STRING>?  = STRIPPED_TYPEOF(V); SDAI.TOUCH(var: &VTYPES)
    var S: eMATHS_SPACE?  = SIMPLIFY_MATHS_SPACE(SPC); SDAI.TOUCH(var: &S)
    var STYPES: SDAI.SET<SDAI.STRING>?  = STRIPPED_TYPEOF(S); SDAI.TOUCH(var: &STYPES)
    var TMP_INT: SDAI.INTEGER? 
    var TMP_REAL: SDAI.REAL? 
    var TMP_CMPLX: eCOMPLEX_NUMBER_LITERAL? 
    var CUM: SDAI.LOGICAL = SDAI.LOGICAL(SDAI.UNKNOWN); SDAI.TOUCH(var: &CUM)
    var VSPC: eMATHS_SPACE? 
    var SSPC: eMATHS_SPACE? 
    var SMEM: SDAI.SET<sMATHS_VALUE>? 
    var FACTORS: SDAI.LIST<eMATHS_SPACE>? 
    var V_LIST: SDAI.LIST<SDAI.GENERIC>? 
    //END_LOCAL

    
    let _TEMP1 = SDAI.EXISTS(S)
    let _TEMP2 =  !_TEMP1
    if SDAI.IS_TRUE( _TEMP2 ) {
      return _member_of__cache.updateCache(params: _params, value: SDAI.UNWRAP(SDAI.LOGICAL(SDAI.FALSE)))
    }
    
    let _TEMP3 = SDAI.EXISTS(V)
    let _TEMP4 =  !_TEMP3
    if SDAI.IS_TRUE( _TEMP4 ) {
      
      let _TEMP5 = S .==. SDAI.FORCE_OPTIONAL(THE_GENERICS)
      return _member_of__cache.updateCache(params: _params, value: SDAI.UNWRAP(_TEMP5))
    }
    
    let _TEMP6 = SDAI.aggregate(VTYPES, contains: SDAI.STRING("GENERIC_EXPRESSION"))
    let _TEMP7 = SDAI.aggregate(VTYPES, contains: SDAI.STRING("MATHS_SPACE"))
    let _TEMP8 =  !_TEMP7
    let _TEMP9 = _TEMP6 && _TEMP8
    let _TEMP10 = SDAI.aggregate(VTYPES, contains: SDAI.STRING("MATHS_FUNCTION"))
    let _TEMP11 =  !_TEMP10
    let _TEMP12 = _TEMP9 && _TEMP11
    let _TEMP13 = SDAI.aggregate(VTYPES, contains: SDAI.STRING("COMPLEX_NUMBER_LITERAL"))
    let _TEMP14 =  !_TEMP13
    let _TEMP15 = _TEMP12 && _TEMP14
    if SDAI.IS_TRUE( _TEMP15 ) {
      
      let _TEMP16 = HAS_VALUES_SPACE(eGENERIC_EXPRESSION(/*sMATHS_VALUE*/V))
      if SDAI.IS_TRUE( _TEMP16 ) {
        
        let _TEMP17 = VALUES_SPACE_OF(eGENERIC_EXPRESSION(/*sMATHS_VALUE*/V))
        VSPC = _TEMP17
        
        let _TEMP18 = SUBSPACE_OF(SPACE1: VSPC, 
                                  SPACE2: S)
        if SDAI.IS_TRUE( _TEMP18 ) {
          return _member_of__cache.updateCache(params: _params, value: SDAI.UNWRAP(SDAI.LOGICAL(SDAI.TRUE)))
        }
        
        let _TEMP19 = COMPATIBLE_SPACES(
          SP1: VSPC, SP2: S)
        let _TEMP20 =  !_TEMP19
        if SDAI.IS_TRUE( _TEMP20 ) {
          return _member_of__cache.updateCache(params: _params, value: SDAI.UNWRAP(SDAI.LOGICAL(SDAI.FALSE)))
        }
        return _member_of__cache.updateCache(params: _params, value: SDAI.UNWRAP(SDAI.LOGICAL(SDAI.UNKNOWN)))
      }
      return _member_of__cache.updateCache(params: _params, value: SDAI.UNWRAP(SDAI.LOGICAL(SDAI.UNKNOWN)))
    }
    
    let _TEMP21 = SDAI.aggregate(STYPES, contains: SDAI.STRING("ELEMENTARY_SPACE"))
    if SDAI.IS_TRUE( _TEMP21 ) {
      
      let _TEMP22 = S?.GROUP_REF(eELEMENTARY_SPACE.self)
      let _TEMP23 = _TEMP22?.SPACE_ID
      if let selector = _TEMP23 {
        switch selector {
        case ES_NUMBERS:
          
          let _TEMP24 = SDAI.aggregate(VTYPES, contains: SDAI.STRING("NUMBER"))
          let _TEMP25 = SDAI.aggregate(VTYPES, contains: SDAI.STRING("COMPLEX_NUMBER_LITERAL"))
          let _TEMP26 = _TEMP24 || _TEMP25
          return _member_of__cache.updateCache(params: _params, value: SDAI.UNWRAP(_TEMP26))

        case ES_COMPLEX_NUMBERS:
          
          let _TEMP27 = SDAI.aggregate(VTYPES, contains: SDAI.STRING("COMPLEX_NUMBER_LITERAL"))
          return _member_of__cache.updateCache(params: _params, value: SDAI.UNWRAP(_TEMP27))

        case ES_REALS:
          
          let _TEMP28 = SDAI.aggregate(VTYPES, contains: SDAI.STRING("REAL"))
          let _TEMP29 = SDAI.aggregate(VTYPES, contains: SDAI.STRING("INTEGER"))
          let _TEMP30 =  !_TEMP29
          let _TEMP31 = _TEMP28 && _TEMP30
          return _member_of__cache.updateCache(params: _params, value: SDAI.UNWRAP(_TEMP31))

        case ES_INTEGERS:
          
          let _TEMP32 = SDAI.aggregate(VTYPES, contains: SDAI.STRING("INTEGER"))
          return _member_of__cache.updateCache(params: _params, value: SDAI.UNWRAP(_TEMP32))

        case ES_LOGICALS:
          
          let _TEMP33 = SDAI.aggregate(VTYPES, contains: SDAI.STRING("LOGICAL"))
          return _member_of__cache.updateCache(params: _params, value: SDAI.UNWRAP(_TEMP33))

        case ES_BOOLEANS:
          
          let _TEMP34 = SDAI.aggregate(VTYPES, contains: SDAI.STRING("BOOLEAN"))
          return _member_of__cache.updateCache(params: _params, value: SDAI.UNWRAP(_TEMP34))

        case ES_STRINGS:
          
          let _TEMP35 = SDAI.aggregate(VTYPES, contains: SDAI.STRING("STRING"))
          return _member_of__cache.updateCache(params: _params, value: SDAI.UNWRAP(_TEMP35))

        case ES_BINARYS:
          
          let _TEMP36 = SDAI.aggregate(VTYPES, contains: SDAI.STRING("BINARY"))
          return _member_of__cache.updateCache(params: _params, value: SDAI.UNWRAP(_TEMP36))

        case ES_MATHS_SPACES:
          
          let _TEMP37 = SDAI.aggregate(VTYPES, contains: SDAI.STRING("MATHS_SPACE"))
          return _member_of__cache.updateCache(params: _params, value: SDAI.UNWRAP(_TEMP37))

        case ES_MATHS_FUNCTIONS:
          
          let _TEMP38 = SDAI.aggregate(VTYPES, contains: SDAI.STRING("MATHS_FUNCTION"))
          return _member_of__cache.updateCache(params: _params, value: SDAI.UNWRAP(_TEMP38))

        case ES_GENERICS:
          return _member_of__cache.updateCache(params: _params, value: SDAI.UNWRAP(SDAI.LOGICAL(SDAI.TRUE)))

        default: break
        } //end switch
      }
    }
    
    let _TEMP39 = SDAI.aggregate(STYPES, contains: SDAI.STRING("FINITE_INTEGER_INTERVAL"))
    if SDAI.IS_TRUE( _TEMP39 ) {
      
      let _TEMP40 = SDAI.aggregate(VTYPES, contains: SDAI.STRING("INTEGER"))
      if SDAI.IS_TRUE( _TEMP40 ) {
        TMP_INT = SDAI.INTEGER(/*sMATHS_VALUE*/V)
        
        let _TEMP41 = S?.GROUP_REF(eFINITE_INTEGER_INTERVAL.self)
        let _TEMP42 = _TEMP41?.MIN
        let _TEMP43 = _TEMP42 <= TMP_INT
        let _TEMP44 = S?.GROUP_REF(eFINITE_INTEGER_INTERVAL.self)
        let _TEMP45 = _TEMP44?.MAX
        let _TEMP46 = TMP_INT <= _TEMP45
        let _TEMP47 = _TEMP43 && _TEMP46
        return _member_of__cache.updateCache(params: _params, value: SDAI.UNWRAP(_TEMP47))
      }
      return _member_of__cache.updateCache(params: _params, value: SDAI.UNWRAP(SDAI.LOGICAL(SDAI.FALSE)))
    }
    
    let _TEMP48 = SDAI.aggregate(STYPES, contains: SDAI.STRING("INTEGER_INTERVAL_FROM_MIN"))
    if SDAI.IS_TRUE( _TEMP48 ) {
      
      let _TEMP49 = SDAI.aggregate(VTYPES, contains: SDAI.STRING("INTEGER"))
      if SDAI.IS_TRUE( _TEMP49 ) {
        TMP_INT = SDAI.INTEGER(/*sMATHS_VALUE*/V)
        
        let _TEMP50 = S?.GROUP_REF(eINTEGER_INTERVAL_FROM_MIN.self)
        let _TEMP51 = _TEMP50?.MIN
        let _TEMP52 = _TEMP51 <= TMP_INT
        return _member_of__cache.updateCache(params: _params, value: SDAI.UNWRAP(_TEMP52))
      }
      return _member_of__cache.updateCache(params: _params, value: SDAI.UNWRAP(SDAI.LOGICAL(SDAI.FALSE)))
    }
    
    let _TEMP53 = SDAI.aggregate(STYPES, contains: SDAI.STRING("INTEGER_INTERVAL_TO_MAX"))
    if SDAI.IS_TRUE( _TEMP53 ) {
      
      let _TEMP54 = SDAI.aggregate(VTYPES, contains: SDAI.STRING("INTEGER"))
      if SDAI.IS_TRUE( _TEMP54 ) {
        TMP_INT = SDAI.INTEGER(/*sMATHS_VALUE*/V)
        
        let _TEMP55 = S?.GROUP_REF(eINTEGER_INTERVAL_TO_MAX.self)
        let _TEMP56 = _TEMP55?.MAX
        let _TEMP57 = TMP_INT <= _TEMP56
        return _member_of__cache.updateCache(params: _params, value: SDAI.UNWRAP(_TEMP57))
      }
      return _member_of__cache.updateCache(params: _params, value: SDAI.UNWRAP(SDAI.LOGICAL(SDAI.FALSE)))
    }
    
    let _TEMP58 = SDAI.aggregate(STYPES, contains: SDAI.STRING("FINITE_REAL_INTERVAL"))
    if SDAI.IS_TRUE( _TEMP58 ) {
      
      let _TEMP59 = SDAI.aggregate(VTYPES, contains: SDAI.STRING("REAL"))
      let _TEMP60 = SDAI.aggregate(VTYPES, contains: SDAI.STRING("INTEGER"))
      let _TEMP61 =  !_TEMP60
      let _TEMP62 = _TEMP59 && _TEMP61
      if SDAI.IS_TRUE( _TEMP62 ) {
        TMP_REAL = SDAI.REAL(/*sMATHS_VALUE*/V)
        
        let _TEMP63 = S?.GROUP_REF(eFINITE_REAL_INTERVAL.self)
        let _TEMP64 = _TEMP63?.MIN_CLOSURE
        let _TEMP65 = _TEMP64 .==. SDAI.FORCE_OPTIONAL(CLOSED)
        if SDAI.IS_TRUE( _TEMP65 ) {
          
          let _TEMP66 = S?.GROUP_REF(eFINITE_REAL_INTERVAL.self)
          let _TEMP67 = _TEMP66?.MAX_CLOSURE
          let _TEMP68 = _TEMP67 .==. SDAI.FORCE_OPTIONAL(CLOSED)
          if SDAI.IS_TRUE( _TEMP68 ) {
            
            let _TEMP69 = S?.GROUP_REF(eFINITE_REAL_INTERVAL.self)
            let _TEMP70 = _TEMP69?.MIN
            let _TEMP71 = _TEMP70 <= TMP_REAL
            let _TEMP72 = S?.GROUP_REF(eFINITE_REAL_INTERVAL.self)
            let _TEMP73 = _TEMP72?.MAX
            let _TEMP74 = TMP_REAL <= _TEMP73
            let _TEMP75 = _TEMP71 && _TEMP74
            return _member_of__cache.updateCache(params: _params, value: SDAI.UNWRAP(_TEMP75))
          }
          else {
            
            let _TEMP76 = S?.GROUP_REF(eFINITE_REAL_INTERVAL.self)
            let _TEMP77 = _TEMP76?.MIN
            let _TEMP78 = _TEMP77 <= TMP_REAL
            let _TEMP79 = S?.GROUP_REF(eFINITE_REAL_INTERVAL.self)
            let _TEMP80 = _TEMP79?.MAX
            let _TEMP81 = TMP_REAL < _TEMP80
            let _TEMP82 = _TEMP78 && _TEMP81
            return _member_of__cache.updateCache(params: _params, value: SDAI.UNWRAP(_TEMP82))
          }
        }
        else {
          
          let _TEMP83 = S?.GROUP_REF(eFINITE_REAL_INTERVAL.self)
          let _TEMP84 = _TEMP83?.MAX_CLOSURE
          let _TEMP85 = _TEMP84 .==. SDAI.FORCE_OPTIONAL(CLOSED)
          if SDAI.IS_TRUE( _TEMP85 ) {
            
            let _TEMP86 = S?.GROUP_REF(eFINITE_REAL_INTERVAL.self)
            let _TEMP87 = _TEMP86?.MIN
            let _TEMP88 = _TEMP87 < TMP_REAL
            let _TEMP89 = S?.GROUP_REF(eFINITE_REAL_INTERVAL.self)
            let _TEMP90 = _TEMP89?.MAX
            let _TEMP91 = TMP_REAL <= _TEMP90
            let _TEMP92 = _TEMP88 && _TEMP91
            return _member_of__cache.updateCache(params: _params, value: SDAI.UNWRAP(_TEMP92))
          }
          else {
            
            let _TEMP93 = S?.GROUP_REF(eFINITE_REAL_INTERVAL.self)
            let _TEMP94 = _TEMP93?.MIN
            let _TEMP95 = _TEMP94 < TMP_REAL
            let _TEMP96 = S?.GROUP_REF(eFINITE_REAL_INTERVAL.self)
            let _TEMP97 = _TEMP96?.MAX
            let _TEMP98 = TMP_REAL < _TEMP97
            let _TEMP99 = _TEMP95 && _TEMP98
            return _member_of__cache.updateCache(params: _params, value: SDAI.UNWRAP(_TEMP99))
          }
        }
      }
      return _member_of__cache.updateCache(params: _params, value: SDAI.UNWRAP(SDAI.LOGICAL(SDAI.FALSE)))
    }
    
    let _TEMP100 = SDAI.aggregate(STYPES, contains: SDAI.STRING("REAL_INTERVAL_FROM_MIN"))
    if SDAI.IS_TRUE( _TEMP100 ) {
      
      let _TEMP101 = SDAI.aggregate(VTYPES, contains: SDAI.STRING("REAL"))
      let _TEMP102 = SDAI.aggregate(VTYPES, contains: SDAI.STRING("INTEGER"))
      let _TEMP103 =  !_TEMP102
      let _TEMP104 = _TEMP101 && _TEMP103
      if SDAI.IS_TRUE( _TEMP104 ) {
        TMP_REAL = SDAI.REAL(/*sMATHS_VALUE*/V)
        
        let _TEMP105 = S?.GROUP_REF(eREAL_INTERVAL_FROM_MIN.self)
        let _TEMP106 = _TEMP105?.MIN_CLOSURE
        let _TEMP107 = _TEMP106 .==. SDAI.FORCE_OPTIONAL(CLOSED)
        if SDAI.IS_TRUE( _TEMP107 ) {
          
          let _TEMP108 = S?.GROUP_REF(eREAL_INTERVAL_FROM_MIN.self)
          let _TEMP109 = _TEMP108?.MIN
          let _TEMP110 = _TEMP109 <= TMP_REAL
          return _member_of__cache.updateCache(params: _params, value: SDAI.UNWRAP(_TEMP110))
        }
        else {
          
          let _TEMP111 = S?.GROUP_REF(eREAL_INTERVAL_FROM_MIN.self)
          let _TEMP112 = _TEMP111?.MIN
          let _TEMP113 = _TEMP112 < TMP_REAL
          return _member_of__cache.updateCache(params: _params, value: SDAI.UNWRAP(_TEMP113))
        }
      }
      return _member_of__cache.updateCache(params: _params, value: SDAI.UNWRAP(SDAI.LOGICAL(SDAI.FALSE)))
    }
    
    let _TEMP114 = SDAI.aggregate(STYPES, contains: SDAI.STRING("REAL_INTERVAL_TO_MAX"))
    if SDAI.IS_TRUE( _TEMP114 ) {
      
      let _TEMP115 = SDAI.aggregate(VTYPES, contains: SDAI.STRING("REAL"))
      let _TEMP116 = SDAI.aggregate(VTYPES, contains: SDAI.STRING("INTEGER"))
      let _TEMP117 =  !_TEMP116
      let _TEMP118 = _TEMP115 && _TEMP117
      if SDAI.IS_TRUE( _TEMP118 ) {
        TMP_REAL = SDAI.REAL(/*sMATHS_VALUE*/V)
        
        let _TEMP119 = S?.GROUP_REF(eREAL_INTERVAL_TO_MAX.self)
        let _TEMP120 = _TEMP119?.MAX_CLOSURE
        let _TEMP121 = _TEMP120 .==. SDAI.FORCE_OPTIONAL(CLOSED)
        if SDAI.IS_TRUE( _TEMP121 ) {
          
          let _TEMP122 = S?.GROUP_REF(eREAL_INTERVAL_TO_MAX.self)
          let _TEMP123 = _TEMP122?.MAX
          let _TEMP124 = TMP_REAL <= _TEMP123
          return _member_of__cache.updateCache(params: _params, value: SDAI.UNWRAP(_TEMP124))
        }
        else {
          
          let _TEMP125 = S?.GROUP_REF(eREAL_INTERVAL_TO_MAX.self)
          let _TEMP126 = _TEMP125?.MAX
          let _TEMP127 = TMP_REAL < _TEMP126
          return _member_of__cache.updateCache(params: _params, value: SDAI.UNWRAP(_TEMP127))
        }
      }
      return _member_of__cache.updateCache(params: _params, value: SDAI.UNWRAP(SDAI.LOGICAL(SDAI.FALSE)))
    }
    
    let _TEMP128 = SDAI.aggregate(STYPES, contains: SDAI.STRING("CARTESIAN_COMPLEX_NUMBER_REGION"))
    if SDAI.IS_TRUE( _TEMP128 ) {
      
      let _TEMP129 = SDAI.aggregate(VTYPES, contains: SDAI.STRING("COMPLEX_NUMBER_LITERAL"))
      if SDAI.IS_TRUE( _TEMP129 ) {
        
        let _TEMP130 = V?.GROUP_REF(eCOMPLEX_NUMBER_LITERAL.self)
        let _TEMP131 = _TEMP130?.REAL_PART
        let _TEMP132 = S?.GROUP_REF(eCARTESIAN_COMPLEX_NUMBER_REGION.self)
        let _TEMP133 = _TEMP132?.REAL_CONSTRAINT
        let _TEMP134 = MEMBER_OF(VAL: _TEMP131, 
                                 SPC: eMATHS_SPACE(/*sREAL_INTERVAL*/_TEMP133))
        let _TEMP135 = V?.GROUP_REF(eCOMPLEX_NUMBER_LITERAL.self)
        let _TEMP136 = _TEMP135?.IMAG_PART
        let _TEMP137 = S?.GROUP_REF(eCARTESIAN_COMPLEX_NUMBER_REGION.self)
        let _TEMP138 = _TEMP137?.IMAG_CONSTRAINT
        let _TEMP139 = MEMBER_OF(VAL: _TEMP136, 
                                 SPC: eMATHS_SPACE(/*sREAL_INTERVAL*/_TEMP138))
        let _TEMP140 = _TEMP134 && _TEMP139
        return _member_of__cache.updateCache(params: _params, value: SDAI.UNWRAP(_TEMP140))
      }
      return _member_of__cache.updateCache(params: _params, value: SDAI.UNWRAP(SDAI.LOGICAL(SDAI.FALSE)))
    }
    
    let _TEMP141 = SDAI.aggregate(STYPES, contains: SDAI.STRING("POLAR_COMPLEX_NUMBER_REGION"))
    if SDAI.IS_TRUE( _TEMP141 ) {
      
      let _TEMP142 = SDAI.aggregate(VTYPES, contains: SDAI.STRING("COMPLEX_NUMBER_LITERAL"))
      if SDAI.IS_TRUE( _TEMP142 ) {
        TMP_CMPLX = eCOMPLEX_NUMBER_LITERAL(/*sMATHS_VALUE*/V)
        
        let _TEMP143 = TMP_CMPLX?.REAL_PART
        let _TEMP144 = S?.GROUP_REF(ePOLAR_COMPLEX_NUMBER_REGION.self)
        let _TEMP145 = _TEMP144?.CENTRE
        let _TEMP146 = _TEMP145?.REAL_PART
        let _TEMP147 = _TEMP143 - _TEMP146
        TMP_CMPLX?.REAL_PART = SDAI.UNWRAP(_TEMP147)
        
        let _TEMP148 = TMP_CMPLX?.IMAG_PART
        let _TEMP149 = S?.GROUP_REF(ePOLAR_COMPLEX_NUMBER_REGION.self)
        let _TEMP150 = _TEMP149?.CENTRE
        let _TEMP151 = _TEMP150?.IMAG_PART
        let _TEMP152 = _TEMP148 - _TEMP151
        TMP_CMPLX?.IMAG_PART = SDAI.UNWRAP(_TEMP152)
        
        let _TEMP153 = TMP_CMPLX?.REAL_PART
        let _TEMP154 = _TEMP153 ** SDAI.FORCE_OPTIONAL(SDAI.INTEGER(2))
        let _TEMP155 = TMP_CMPLX?.IMAG_PART
        let _TEMP156 = _TEMP155 ** SDAI.FORCE_OPTIONAL(SDAI.INTEGER(2))
        let _TEMP157 = _TEMP154 + _TEMP156
        let _TEMP158 = SDAI.SQRT(_TEMP157)
        TMP_REAL = _TEMP158
        
        let _TEMP159 = S?.GROUP_REF(ePOLAR_COMPLEX_NUMBER_REGION.self)
        let _TEMP160 = _TEMP159?.DISTANCE_CONSTRAINT
        let _TEMP161 = MEMBER_OF(VAL: TMP_REAL, 
                                 SPC: eMATHS_SPACE(/*sREAL_INTERVAL*/_TEMP160))
        let _TEMP162 =  !_TEMP161
        if SDAI.IS_TRUE( _TEMP162 ) {
          return _member_of__cache.updateCache(params: _params, value: SDAI.UNWRAP(SDAI.LOGICAL(SDAI.FALSE)))
        }
        
        let _TEMP163 = TMP_REAL .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
        if SDAI.IS_TRUE( _TEMP163 ) {
          return _member_of__cache.updateCache(params: _params, value: SDAI.UNWRAP(SDAI.LOGICAL(SDAI.TRUE)))
        }
        
        let _TEMP164 = TMP_CMPLX?.IMAG_PART
        let _TEMP165 = TMP_CMPLX?.REAL_PART
        let _TEMP166 = ATAN2(Y: _TEMP164, 
                             X: _TEMP165)
        TMP_REAL = _TEMP166
        
        let _TEMP167 = S?.GROUP_REF(ePOLAR_COMPLEX_NUMBER_REGION.self)
        let _TEMP168 = _TEMP167?.DIRECTION_CONSTRAINT
        let _TEMP169 = MEMBER_OF(VAL: TMP_REAL, 
                                 SPC: eMATHS_SPACE(/*eFINITE_REAL_INTERVAL*/_TEMP168))
        let _TEMP170 = SDAI.REAL(2.0000000000e+00) * SDAI.REAL(SDAI.PI)
        let _TEMP171 = TMP_REAL + SDAI.FORCE_OPTIONAL(_TEMP170)
        let _TEMP172 = S?.GROUP_REF(ePOLAR_COMPLEX_NUMBER_REGION.self)
        let _TEMP173 = _TEMP172?.DIRECTION_CONSTRAINT
        let _TEMP174 = MEMBER_OF(VAL: _TEMP171, 
                                 SPC: eMATHS_SPACE(/*eFINITE_REAL_INTERVAL*/_TEMP173))
        let _TEMP175 = _TEMP169 || _TEMP174
        return _member_of__cache.updateCache(params: _params, value: SDAI.UNWRAP(_TEMP175))
      }
      return _member_of__cache.updateCache(params: _params, value: SDAI.UNWRAP(SDAI.LOGICAL(SDAI.FALSE)))
    }
    
    let _TEMP176 = SDAI.aggregate(STYPES, contains: SDAI.STRING("FINITE_SPACE"))
    if SDAI.IS_TRUE( _TEMP176 ) {
      
      let _TEMP177 = S?.GROUP_REF(eFINITE_SPACE.self)
      let _TEMP178 = _TEMP177?.MEMBERS
      SMEM = _TEMP178
      CUM = SDAI.UNWRAP(SDAI.LOGICAL(SDAI.FALSE))
      if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.SIZEOF(
        SMEM)) {
        for I in incrementControl {
          
          let _TEMP179 = SMEM?[I]
          let _TEMP180 = EQUAL_MATHS_VALUES(
            VAL1: V, VAL2: _TEMP179)
          let _TEMP181 = CUM || _TEMP180
          CUM = SDAI.UNWRAP(_TEMP181)
          
          let _TEMP182 = SDAI.FORCE_OPTIONAL(CUM) .==. SDAI.FORCE_OPTIONAL(SDAI.LOGICAL(SDAI.TRUE))
          if SDAI.IS_TRUE( _TEMP182 ) {
            return _member_of__cache.updateCache(params: _params, value: SDAI.UNWRAP(SDAI.LOGICAL(SDAI.TRUE)))
          }
        }
      }
      return _member_of__cache.updateCache(params: _params, value: SDAI.UNWRAP(CUM))
    }
    
    let _TEMP183 = SDAI.aggregate(STYPES, contains: SDAI.STRING("UNIFORM_PRODUCT_SPACE"))
    if SDAI.IS_TRUE( _TEMP183 ) {
      
      let _TEMP184 = SDAI.aggregate(VTYPES, contains: SDAI.STRING("LIST"))
      if SDAI.IS_TRUE( _TEMP184 ) {
        V_LIST = SDAI.LIST<SDAI.GENERIC>(/*sMATHS_VALUE*/V)
        
        let _TEMP185 = SDAI.SIZEOF(V_LIST)
        let _TEMP186 = S?.GROUP_REF(eUNIFORM_PRODUCT_SPACE.self)
        let _TEMP187 = _TEMP186?.EXPONENT
        let _TEMP188 = _TEMP185 .==. _TEMP187
        if SDAI.IS_TRUE( _TEMP188 ) {
          
          let _TEMP189 = S?.GROUP_REF(eUNIFORM_PRODUCT_SPACE.self)
          let _TEMP190 = _TEMP189?.BASE
          SSPC = _TEMP190
          CUM = SDAI.UNWRAP(SDAI.LOGICAL(SDAI.TRUE))
          if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/
            SDAI.SIZEOF(V_LIST)) {
            for I in incrementControl {
              
              let _TEMP191 = V_LIST?[I]
              let _TEMP192 = MEMBER_OF(
                VAL: _TEMP191, SPC: SSPC)
              let _TEMP193 = CUM && _TEMP192
              CUM = SDAI.UNWRAP(_TEMP193)
              
              let _TEMP194 = SDAI.FORCE_OPTIONAL(CUM) .==. SDAI.FORCE_OPTIONAL(SDAI.LOGICAL(SDAI.FALSE))
              if SDAI.IS_TRUE( _TEMP194 ) {
                return _member_of__cache.updateCache(params: _params, value: SDAI.UNWRAP(SDAI.LOGICAL(
                  SDAI.FALSE)))
              }
            }
          }
          return _member_of__cache.updateCache(params: _params, value: SDAI.UNWRAP(CUM))
        }
      }
      return _member_of__cache.updateCache(params: _params, value: SDAI.UNWRAP(SDAI.LOGICAL(SDAI.FALSE)))
    }
    
    let _TEMP195 = SDAI.aggregate(STYPES, contains: SDAI.STRING("LISTED_PRODUCT_SPACE"))
    if SDAI.IS_TRUE( _TEMP195 ) {
      
      let _TEMP196 = SDAI.aggregate(VTYPES, contains: SDAI.STRING("LIST"))
      if SDAI.IS_TRUE( _TEMP196 ) {
        V_LIST = SDAI.LIST<SDAI.GENERIC>(/*sMATHS_VALUE*/V)
        
        let _TEMP197 = S?.GROUP_REF(eLISTED_PRODUCT_SPACE.self)
        let _TEMP198 = _TEMP197?.FACTORS
        FACTORS = _TEMP198
        
        let _TEMP199 = SDAI.SIZEOF(V_LIST)
        let _TEMP200 = SDAI.SIZEOF(FACTORS)
        let _TEMP201 = _TEMP199 .==. _TEMP200
        if SDAI.IS_TRUE( _TEMP201 ) {
          CUM = SDAI.UNWRAP(SDAI.LOGICAL(SDAI.TRUE))
          if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/
            SDAI.SIZEOF(V_LIST)) {
            for I in incrementControl {
              
              let _TEMP202 = V_LIST?[I]
              let _TEMP203 = FACTORS?[I]
              let _TEMP204 = MEMBER_OF(
                VAL: _TEMP202, SPC: _TEMP203)
              let _TEMP205 = CUM && _TEMP204
              CUM = SDAI.UNWRAP(_TEMP205)
              
              let _TEMP206 = SDAI.FORCE_OPTIONAL(CUM) .==. SDAI.FORCE_OPTIONAL(SDAI.LOGICAL(SDAI.FALSE))
              if SDAI.IS_TRUE( _TEMP206 ) {
                return _member_of__cache.updateCache(params: _params, value: SDAI.UNWRAP(SDAI.LOGICAL(
                  SDAI.FALSE)))
              }
            }
          }
          return _member_of__cache.updateCache(params: _params, value: SDAI.UNWRAP(CUM))
        }
      }
      return _member_of__cache.updateCache(params: _params, value: SDAI.UNWRAP(SDAI.LOGICAL(SDAI.FALSE)))
    }
    
    let _TEMP207 = SDAI.aggregate(STYPES, contains: SDAI.STRING("EXTENDED_TUPLE_SPACE"))
    if SDAI.IS_TRUE( _TEMP207 ) {
      
      let _TEMP208 = SDAI.aggregate(VTYPES, contains: SDAI.STRING("LIST"))
      if SDAI.IS_TRUE( _TEMP208 ) {
        V_LIST = SDAI.LIST<SDAI.GENERIC>(/*sMATHS_VALUE*/V)
        
        let _TEMP209 = S?.GROUP_REF(eEXTENDED_TUPLE_SPACE.self)
        let _TEMP210 = _TEMP209?.BASE
        SSPC = eMATHS_SPACE(/*sTUPLE_SPACE*/_TEMP210)
        
        let _TEMP211 = SPACE_DIMENSION(sTUPLE_SPACE(/*eMATHS_SPACE*/SSPC))
        TMP_INT = SDAI.INTEGER(/*tNONNEGATIVE_INTEGER*/_TEMP211)
        
        let _TEMP212 = SDAI.SIZEOF(V_LIST)
        let _TEMP213 = _TEMP212 >= TMP_INT
        if SDAI.IS_TRUE( _TEMP213 ) {
          CUM = SDAI.UNWRAP(SDAI.LOGICAL(SDAI.TRUE))
          if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/TMP_INT) {
            for I in incrementControl {
              
              let _TEMP214 = V_LIST?[I]
              let _TEMP215 = FACTOR_SPACE(
                TSPACE: sTUPLE_SPACE(/*eMATHS_SPACE*/SSPC), 
                IDX: tPOSITIVE_INTEGER(/*SDAI.INTEGER*/I))
              let _TEMP216 = MEMBER_OF(
                VAL: _TEMP214, SPC: _TEMP215)
              let _TEMP217 = CUM && _TEMP216
              CUM = SDAI.UNWRAP(_TEMP217)
              
              let _TEMP218 = SDAI.FORCE_OPTIONAL(CUM) .==. SDAI.FORCE_OPTIONAL(SDAI.LOGICAL(SDAI.FALSE))
              if SDAI.IS_TRUE( _TEMP218 ) {
                return _member_of__cache.updateCache(params: _params, value: SDAI.UNWRAP(SDAI.LOGICAL(
                  SDAI.FALSE)))
              }
            }
          }
          
          let _TEMP219 = S?.GROUP_REF(eEXTENDED_TUPLE_SPACE.self)
          let _TEMP220 = _TEMP219?.EXTENDER
          SSPC = _TEMP220
          if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/TMP_INT + SDAI.FORCE_OPTIONAL(
            SDAI.INTEGER(1)), TO:/*SDAI.INTEGER*/SDAI.SIZEOF(V_LIST)) {
            for I in incrementControl {
              
              let _TEMP221 = V_LIST?[I]
              let _TEMP222 = MEMBER_OF(
                VAL: _TEMP221, SPC: SSPC)
              let _TEMP223 = CUM && _TEMP222
              CUM = SDAI.UNWRAP(_TEMP223)
              
              let _TEMP224 = SDAI.FORCE_OPTIONAL(CUM) .==. SDAI.FORCE_OPTIONAL(SDAI.LOGICAL(SDAI.FALSE))
              if SDAI.IS_TRUE( _TEMP224 ) {
                return _member_of__cache.updateCache(params: _params, value: SDAI.UNWRAP(SDAI.LOGICAL(
                  SDAI.FALSE)))
              }
            }
          }
          return _member_of__cache.updateCache(params: _params, value: SDAI.UNWRAP(CUM))
        }
      }
      return _member_of__cache.updateCache(params: _params, value: SDAI.UNWRAP(SDAI.LOGICAL(SDAI.FALSE)))
    }
    
    let _TEMP225 = SDAI.aggregate(STYPES, contains: SDAI.STRING("FUNCTION_SPACE"))
    if SDAI.IS_TRUE( _TEMP225 ) {
      
      let _TEMP226 = SDAI.aggregate(VTYPES, contains: SDAI.STRING("MATHS_FUNCTION"))
      if SDAI.IS_TRUE( _TEMP226 ) {
        
        let _TEMP227 = V?.GROUP_REF(eMATHS_FUNCTION.self)
        let _TEMP228 = _TEMP227?.DOMAIN
        VSPC = eMATHS_SPACE(/*sTUPLE_SPACE*/_TEMP228)
        
        let _TEMP229 = S?.GROUP_REF(eFUNCTION_SPACE.self)
        let _TEMP230 = _TEMP229?.DOMAIN_ARGUMENT
        SSPC = _TEMP230
        
        let _TEMP231 = S?.GROUP_REF(eFUNCTION_SPACE.self)
        let _TEMP232 = _TEMP231?.DOMAIN_CONSTRAINT
        if let selector = _TEMP232 {
          switch selector {
          case SC_EQUAL:
            
            let _TEMP233 = EQUAL_MATHS_SPACES(
              SPC1: VSPC, SPC2: SSPC)
            CUM = SDAI.UNWRAP(_TEMP233)

          case SC_SUBSPACE:
            
            let _TEMP234 = SUBSPACE_OF(
              SPACE1: VSPC, SPACE2: SSPC)
            CUM = SDAI.UNWRAP(_TEMP234)

          case SC_MEMBER:
            
            let _TEMP235 = MEMBER_OF(
              VAL: VSPC, SPC: SSPC)
            CUM = SDAI.UNWRAP(_TEMP235)

          default: break
          } //end switch
        }
        
        let _TEMP236 = SDAI.FORCE_OPTIONAL(CUM) .==. SDAI.FORCE_OPTIONAL(SDAI.LOGICAL(SDAI.FALSE))
        if SDAI.IS_TRUE( _TEMP236 ) {
          return _member_of__cache.updateCache(params: _params, value: SDAI.UNWRAP(SDAI.LOGICAL(SDAI.FALSE)))
        }
        
        let _TEMP237 = V?.GROUP_REF(eMATHS_FUNCTION.self)
        let _TEMP238 = _TEMP237?.RANGE
        VSPC = eMATHS_SPACE(/*sTUPLE_SPACE*/_TEMP238)
        
        let _TEMP239 = S?.GROUP_REF(eFUNCTION_SPACE.self)
        let _TEMP240 = _TEMP239?.RANGE_ARGUMENT
        SSPC = _TEMP240
        
        let _TEMP241 = S?.GROUP_REF(eFUNCTION_SPACE.self)
        let _TEMP242 = _TEMP241?.RANGE_CONSTRAINT
        if let selector = _TEMP242 {
          switch selector {
          case SC_EQUAL:
            
            let _TEMP243 = EQUAL_MATHS_SPACES(
              SPC1: VSPC, SPC2: SSPC)
            let _TEMP244 = CUM && _TEMP243
            CUM = SDAI.UNWRAP(_TEMP244)

          case SC_SUBSPACE:
            
            let _TEMP245 = SUBSPACE_OF(
              SPACE1: VSPC, SPACE2: SSPC)
            let _TEMP246 = CUM && _TEMP245
            CUM = SDAI.UNWRAP(_TEMP246)

          case SC_MEMBER:
            
            let _TEMP247 = MEMBER_OF(
              VAL: VSPC, SPC: SSPC)
            let _TEMP248 = CUM && _TEMP247
            CUM = SDAI.UNWRAP(_TEMP248)

          default: break
          } //end switch
        }
        return _member_of__cache.updateCache(params: _params, value: SDAI.UNWRAP(CUM))
      }
      return _member_of__cache.updateCache(params: _params, value: SDAI.UNWRAP(SDAI.LOGICAL(SDAI.FALSE)))
    }
    return _member_of__cache.updateCache(params: _params, value: SDAI.UNWRAP(SDAI.LOGICAL(SDAI.UNKNOWN)))
  }

}

//MARK: - function result cache
private var _member_of__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

