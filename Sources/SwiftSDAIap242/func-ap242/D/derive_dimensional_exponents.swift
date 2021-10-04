/* file: derive_dimensional_exponents.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  FUNCTION derive_dimensional_exponents(
               x : unit
           ) : dimensional_exponents;

    LOCAL
      result : dimensional_exponents := dimensional_exponents( 0, 0, 0, 0, 0, 0, 0 );
    END_LOCAL;
    IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DERIVED_UNIT' IN TYPEOF( x ) THEN
      REPEAT i := LOINDEX( x\derived_unit.elements ) TO HIINDEX( x\derived_unit.elements ) BY 1;
        result.length_exponent := result.length_exponent + ( x\derived_unit.elements[i]\derived_unit_element.
            exponent * x\derived_unit.elements[i]\derived_unit_element.unit\named_unit.dimensions.
            length_exponent );
        result.mass_exponent := result.mass_exponent + ( x\derived_unit.elements[i]\derived_unit_element.
            exponent * x\derived_unit.elements[i]\derived_unit_element.unit\named_unit.dimensions.
            mass_exponent );
        result.time_exponent := result.time_exponent + ( x\derived_unit.elements[i]\derived_unit_element.
            exponent * x\derived_unit.elements[i]\derived_unit_element.unit\named_unit.dimensions.
            time_exponent );
        result.electric_current_exponent := result.electric_current_exponent + ( x\derived_unit.elements[i]\
            derived_unit_element.exponent * x\derived_unit.elements[i]\derived_unit_element.unit\named_unit.
            dimensions.electric_current_exponent );
        result.thermodynamic_temperature_exponent := result.thermodynamic_temperature_exponent + ( x\
            derived_unit.elements[i]\derived_unit_element.exponent * x\derived_unit.elements[i]\
            derived_unit_element.unit\named_unit.dimensions.thermodynamic_temperature_exponent );
        result.amount_of_substance_exponent := result.amount_of_substance_exponent + ( x\derived_unit.
            elements[i]\derived_unit_element.exponent * x\derived_unit.elements[i]\derived_unit_element.unit\
            named_unit.dimensions.amount_of_substance_exponent );
        result.luminous_intensity_exponent := result.luminous_intensity_exponent + ( x\derived_unit.elements[
            i]\derived_unit_element.exponent * x\derived_unit.elements[i]\derived_unit_element.unit\
            named_unit.dimensions.luminous_intensity_exponent );
      END_REPEAT;
    ELSE
      result := x\named_unit.dimensions;
    END_IF;
    RETURN( result );

  END_FUNCTION; -- derive_dimensional_exponents (line:37781 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func DERIVE_DIMENSIONAL_EXPONENTS(
    _ X: sUNIT? ) -> eDIMENSIONAL_EXPONENTS? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( X )
    if case .available(let _cached_value) = _derive_dimensional_exponents__cache.cachedValue(params: _params) {
      return _cached_value as? eDIMENSIONAL_EXPONENTS
    }

    var X = X; SDAI.TOUCH(var: &X)

    //LOCAL
    var RESULT: eDIMENSIONAL_EXPONENTS?  = eDIMENSIONAL_EXPONENTS(/*partial entity*/
                                           _dimensional_exponents(
                                           LENGTH_EXPONENT: SDAI.UNWRAP(SDAI.REAL(0)), 
                                           MASS_EXPONENT: SDAI.UNWRAP(SDAI.REAL(0)), 
                                           TIME_EXPONENT: SDAI.UNWRAP(SDAI.REAL(0)), 
                                           ELECTRIC_CURRENT_EXPONENT: SDAI.UNWRAP(SDAI.REAL(0)), 
                                           THERMODYNAMIC_TEMPERATURE_EXPONENT: SDAI.UNWRAP(SDAI.REAL(0)), 
                                           AMOUNT_OF_SUBSTANCE_EXPONENT: SDAI.UNWRAP(SDAI.REAL(0)), 
                                           LUMINOUS_INTENSITY_EXPONENT: SDAI.UNWRAP(SDAI.REAL(0)))); SDAI.TOUCH(var: &RESULT)

    
    let _TEMP1 = SDAI.TYPEOF(X, IS: eDERIVED_UNIT.self)
    if SDAI.IS_TRUE( _TEMP1 ) {
      if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/SDAI.LOINDEX(
        X?.GROUP_REF(eDERIVED_UNIT.self)?.ELEMENTS), TO:/*SDAI.INTEGER*/SDAI.HIINDEX(
        X?.GROUP_REF(eDERIVED_UNIT.self)?.ELEMENTS)) {
        for I in incrementControl {
          
          let _TEMP2 = RESULT?.LENGTH_EXPONENT
          let _TEMP3 = X?.GROUP_REF(eDERIVED_UNIT.self)
          let _TEMP4 = _TEMP3?.ELEMENTS
          let _TEMP5 = _TEMP4?[I]
          let _TEMP6 = _TEMP5?.GROUP_REF(eDERIVED_UNIT_ELEMENT.self)
          let _TEMP7 = _TEMP6?.EXPONENT
          let _TEMP8 = X?.GROUP_REF(eDERIVED_UNIT.self)
          let _TEMP9 = _TEMP8?.ELEMENTS
          let _TEMP10 = _TEMP9?[I]
          let _TEMP11 = _TEMP10?.GROUP_REF(eDERIVED_UNIT_ELEMENT.self)
          let _TEMP12 = _TEMP11?.UNIT
          let _TEMP13 = _TEMP12?.GROUP_REF(eNAMED_UNIT.self)
          let _TEMP14 = _TEMP13?.DIMENSIONS
          let _TEMP15 = _TEMP14?.LENGTH_EXPONENT
          let _TEMP16 = _TEMP7 * _TEMP15
          let _TEMP17 = _TEMP2 + _TEMP16
          RESULT?.LENGTH_EXPONENT = 
            SDAI.UNWRAP(_TEMP17)
          
          let _TEMP18 = RESULT?.MASS_EXPONENT
          let _TEMP19 = X?.GROUP_REF(eDERIVED_UNIT.self)
          let _TEMP20 = _TEMP19?.ELEMENTS
          let _TEMP21 = _TEMP20?[I]
          let _TEMP22 = _TEMP21?.GROUP_REF(eDERIVED_UNIT_ELEMENT.self)
          let _TEMP23 = _TEMP22?.EXPONENT
          let _TEMP24 = X?.GROUP_REF(eDERIVED_UNIT.self)
          let _TEMP25 = _TEMP24?.ELEMENTS
          let _TEMP26 = _TEMP25?[I]
          let _TEMP27 = _TEMP26?.GROUP_REF(eDERIVED_UNIT_ELEMENT.self)
          let _TEMP28 = _TEMP27?.UNIT
          let _TEMP29 = _TEMP28?.GROUP_REF(eNAMED_UNIT.self)
          let _TEMP30 = _TEMP29?.DIMENSIONS
          let _TEMP31 = _TEMP30?.MASS_EXPONENT
          let _TEMP32 = _TEMP23 * _TEMP31
          let _TEMP33 = _TEMP18 + _TEMP32
          RESULT?.MASS_EXPONENT = SDAI.UNWRAP(_TEMP33)
          
          let _TEMP34 = RESULT?.TIME_EXPONENT
          let _TEMP35 = X?.GROUP_REF(eDERIVED_UNIT.self)
          let _TEMP36 = _TEMP35?.ELEMENTS
          let _TEMP37 = _TEMP36?[I]
          let _TEMP38 = _TEMP37?.GROUP_REF(eDERIVED_UNIT_ELEMENT.self)
          let _TEMP39 = _TEMP38?.EXPONENT
          let _TEMP40 = X?.GROUP_REF(eDERIVED_UNIT.self)
          let _TEMP41 = _TEMP40?.ELEMENTS
          let _TEMP42 = _TEMP41?[I]
          let _TEMP43 = _TEMP42?.GROUP_REF(eDERIVED_UNIT_ELEMENT.self)
          let _TEMP44 = _TEMP43?.UNIT
          let _TEMP45 = _TEMP44?.GROUP_REF(eNAMED_UNIT.self)
          let _TEMP46 = _TEMP45?.DIMENSIONS
          let _TEMP47 = _TEMP46?.TIME_EXPONENT
          let _TEMP48 = _TEMP39 * _TEMP47
          let _TEMP49 = _TEMP34 + _TEMP48
          RESULT?.TIME_EXPONENT = SDAI.UNWRAP(_TEMP49)
          
          let _TEMP50 = RESULT?.ELECTRIC_CURRENT_EXPONENT
          let _TEMP51 = X?.GROUP_REF(eDERIVED_UNIT.self)
          let _TEMP52 = _TEMP51?.ELEMENTS
          let _TEMP53 = _TEMP52?[I]
          let _TEMP54 = _TEMP53?.GROUP_REF(eDERIVED_UNIT_ELEMENT.self)
          let _TEMP55 = _TEMP54?.EXPONENT
          let _TEMP56 = X?.GROUP_REF(eDERIVED_UNIT.self)
          let _TEMP57 = _TEMP56?.ELEMENTS
          let _TEMP58 = _TEMP57?[I]
          let _TEMP59 = _TEMP58?.GROUP_REF(eDERIVED_UNIT_ELEMENT.self)
          let _TEMP60 = _TEMP59?.UNIT
          let _TEMP61 = _TEMP60?.GROUP_REF(eNAMED_UNIT.self)
          let _TEMP62 = _TEMP61?.DIMENSIONS
          let _TEMP63 = _TEMP62?.ELECTRIC_CURRENT_EXPONENT
          let _TEMP64 = _TEMP55 * _TEMP63
          let _TEMP65 = _TEMP50 + _TEMP64
          RESULT?.ELECTRIC_CURRENT_EXPONENT = 
            SDAI.UNWRAP(_TEMP65)
          
          let _TEMP66 = RESULT?.THERMODYNAMIC_TEMPERATURE_EXPONENT
          let _TEMP67 = X?.GROUP_REF(eDERIVED_UNIT.self)
          let _TEMP68 = _TEMP67?.ELEMENTS
          let _TEMP69 = _TEMP68?[I]
          let _TEMP70 = _TEMP69?.GROUP_REF(eDERIVED_UNIT_ELEMENT.self)
          let _TEMP71 = _TEMP70?.EXPONENT
          let _TEMP72 = X?.GROUP_REF(eDERIVED_UNIT.self)
          let _TEMP73 = _TEMP72?.ELEMENTS
          let _TEMP74 = _TEMP73?[I]
          let _TEMP75 = _TEMP74?.GROUP_REF(eDERIVED_UNIT_ELEMENT.self)
          let _TEMP76 = _TEMP75?.UNIT
          let _TEMP77 = _TEMP76?.GROUP_REF(eNAMED_UNIT.self)
          let _TEMP78 = _TEMP77?.DIMENSIONS
          let _TEMP79 = _TEMP78?.THERMODYNAMIC_TEMPERATURE_EXPONENT
          let _TEMP80 = _TEMP71 * _TEMP79
          let _TEMP81 = _TEMP66 + _TEMP80
          RESULT?.THERMODYNAMIC_TEMPERATURE_EXPONENT = 
            SDAI.UNWRAP(_TEMP81)
          
          let _TEMP82 = RESULT?.AMOUNT_OF_SUBSTANCE_EXPONENT
          let _TEMP83 = X?.GROUP_REF(eDERIVED_UNIT.self)
          let _TEMP84 = _TEMP83?.ELEMENTS
          let _TEMP85 = _TEMP84?[I]
          let _TEMP86 = _TEMP85?.GROUP_REF(eDERIVED_UNIT_ELEMENT.self)
          let _TEMP87 = _TEMP86?.EXPONENT
          let _TEMP88 = X?.GROUP_REF(eDERIVED_UNIT.self)
          let _TEMP89 = _TEMP88?.ELEMENTS
          let _TEMP90 = _TEMP89?[I]
          let _TEMP91 = _TEMP90?.GROUP_REF(eDERIVED_UNIT_ELEMENT.self)
          let _TEMP92 = _TEMP91?.UNIT
          let _TEMP93 = _TEMP92?.GROUP_REF(eNAMED_UNIT.self)
          let _TEMP94 = _TEMP93?.DIMENSIONS
          let _TEMP95 = _TEMP94?.AMOUNT_OF_SUBSTANCE_EXPONENT
          let _TEMP96 = _TEMP87 * _TEMP95
          let _TEMP97 = _TEMP82 + _TEMP96
          RESULT?.AMOUNT_OF_SUBSTANCE_EXPONENT = 
            SDAI.UNWRAP(_TEMP97)
          
          let _TEMP98 = RESULT?.LUMINOUS_INTENSITY_EXPONENT
          let _TEMP99 = X?.GROUP_REF(eDERIVED_UNIT.self)
          let _TEMP100 = _TEMP99?.ELEMENTS
          let _TEMP101 = _TEMP100?[I]
          let _TEMP102 = _TEMP101?.GROUP_REF(eDERIVED_UNIT_ELEMENT.self)
          let _TEMP103 = _TEMP102?.EXPONENT
          let _TEMP104 = X?.GROUP_REF(eDERIVED_UNIT.self)
          let _TEMP105 = _TEMP104?.ELEMENTS
          let _TEMP106 = _TEMP105?[I]
          let _TEMP107 = _TEMP106?.GROUP_REF(eDERIVED_UNIT_ELEMENT.self)
          let _TEMP108 = _TEMP107?.UNIT
          let _TEMP109 = _TEMP108?.GROUP_REF(eNAMED_UNIT.self)
          let _TEMP110 = _TEMP109?.DIMENSIONS
          let _TEMP111 = _TEMP110?.LUMINOUS_INTENSITY_EXPONENT
          let _TEMP112 = _TEMP103 * _TEMP111
          let _TEMP113 = _TEMP98 + _TEMP112
          RESULT?.LUMINOUS_INTENSITY_EXPONENT = 
            SDAI.UNWRAP(_TEMP113)
        }
      }
    }
    else {
      
      let _TEMP114 = X?.GROUP_REF(eNAMED_UNIT.self)
      let _TEMP115 = _TEMP114?.DIMENSIONS
      RESULT = _TEMP115
    }
    return _derive_dimensional_exponents__cache.updateCache(params: _params, value: RESULT)
  }

}

//MARK: - function result cache
private var _derive_dimensional_exponents__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

