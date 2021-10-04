/* file: acyclic_composite_text.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  FUNCTION acyclic_composite_text(
               start_composite : composite_text;
               child_text : SET [1 : ?] OF text_or_character
           ) : LOGICAL;

    LOCAL
      local_composite_text   : SET [0 : ?] OF composite_text;
      local_annotation_text  : SET [0 : ?] OF annotation_text;
      local_children         : SET [0 : ?] OF text_or_character;
      set__text_or_character : SET [0 : ?] OF text_or_character;
    END_LOCAL;
    local_composite_text := QUERY ( child <* child_text | ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
        + 'COMPOSITE_TEXT'  IN TYPEOF( child ) ) );
    IF SIZEOF( local_composite_text ) > 0 THEN
      REPEAT i := 1 TO HIINDEX( local_composite_text ) BY 1;
        IF start_composite :=: local_composite_text[i] THEN
          RETURN( FALSE );
        END_IF;
      END_REPEAT;
    END_IF;
    local_children := child_text;
    IF SIZEOF( local_composite_text ) > 0 THEN
      REPEAT i := 1 TO HIINDEX( local_composite_text ) BY 1;
        local_children := local_children + local_composite_text[i].collected_text;
      END_REPEAT;
    END_IF;
    local_annotation_text := QUERY ( child <* child_text | ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
        + 'ANNOTATION_TEXT'  IN TYPEOF( child ) ) );
    IF SIZEOF( local_annotation_text ) > 0 THEN
      REPEAT i := 1 TO HIINDEX( local_annotation_text ) BY 1;
        set__text_or_character := QUERY ( item <* local_annotation_text[i]\mapped_item.mapping_source.
            mapped_representation.items | ( SIZEOF( [ 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
            + 'ANNOTATION_TEXT' , 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.COMPOSITE_TEXT'] * 
            TYPEOF( item ) ) > 0 ) );
        local_children := local_children + set__text_or_character;
      END_REPEAT;
    END_IF;
    IF local_children :<>: child_text THEN
      RETURN( acyclic_composite_text( start_composite, local_children ) );
    ELSE
      RETURN( TRUE );
    END_IF;

  END_FUNCTION; -- acyclic_composite_text (line:34882 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func ACYCLIC_COMPOSITE_TEXT(START_COMPOSITE: eCOMPOSITE_TEXT? , CHILD_TEXT: (SDAI.SET<sTEXT_OR_CHARACTER>
                              /*[1:nil]*/ )? ) 
    -> SDAI.LOGICAL {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( START_COMPOSITE, CHILD_TEXT )
    if case .available(let _cached_value) = _acyclic_composite_text__cache.cachedValue(params: _params) {
      return _cached_value as! SDAI.LOGICAL
    }

    var START_COMPOSITE = START_COMPOSITE; SDAI.TOUCH(var: &START_COMPOSITE)
    var CHILD_TEXT = CHILD_TEXT; SDAI.TOUCH(var: &CHILD_TEXT)

    //LOCAL
    var LOCAL_COMPOSITE_TEXT: (SDAI.SET<eCOMPOSITE_TEXT>/*[0:nil]*/ )? 
    var LOCAL_ANNOTATION_TEXT: (SDAI.SET<eANNOTATION_TEXT>/*[0:nil]*/ )? 
    var LOCAL_CHILDREN: (SDAI.SET<sTEXT_OR_CHARACTER>/*[0:nil]*/ )? 
    var SET__TEXT_OR_CHARACTER: (SDAI.SET<sTEXT_OR_CHARACTER>/*[0:nil]*/ )? 
    //END_LOCAL

    
    let _TEMP1 = CHILD_TEXT?.QUERY{ CHILD in 

        let _TEMP1 = SDAI.TYPEOF(CHILD, IS: eCOMPOSITE_TEXT.self)
        return _TEMP1 }
    LOCAL_COMPOSITE_TEXT = SDAI.SET<eCOMPOSITE_TEXT>(bound1: SDAI.UNWRAP(SDAI.INTEGER(0)), bound2: (nil as 
      SDAI.INTEGER?), /*SDAI.SET<sTEXT_OR_CHARACTER>[1:nil] */_TEMP1)
    
    let _TEMP2 = SDAI.SIZEOF(LOCAL_COMPOSITE_TEXT)
    let _TEMP3 = _TEMP2 > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
    if SDAI.IS_TRUE( _TEMP3 ) {
      if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.HIINDEX(
        LOCAL_COMPOSITE_TEXT)) {
        for I in incrementControl {
          
          let _TEMP4 = LOCAL_COMPOSITE_TEXT?[I]
          let _TEMP5 = START_COMPOSITE .===. _TEMP4
          if SDAI.IS_TRUE( _TEMP5 ) {
            return _acyclic_composite_text__cache.updateCache(params: _params, value: SDAI.LOGICAL(SDAI.FALSE))
          }
        }
      }
    }
    LOCAL_CHILDREN = SDAI.SET<sTEXT_OR_CHARACTER>(bound1: SDAI.UNWRAP(SDAI.INTEGER(0)), bound2: (nil as SDAI.INTEGER?), 
      /*SDAI.SET<sTEXT_OR_CHARACTER>[1:nil] */CHILD_TEXT)
    
    let _TEMP6 = SDAI.SIZEOF(LOCAL_COMPOSITE_TEXT)
    let _TEMP7 = _TEMP6 > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
    if SDAI.IS_TRUE( _TEMP7 ) {
      if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.HIINDEX(
        LOCAL_COMPOSITE_TEXT)) {
        for I in incrementControl {
          
          let _TEMP8 = LOCAL_COMPOSITE_TEXT?[I]
          let _TEMP9 = _TEMP8?.COLLECTED_TEXT
          let _TEMP10 = LOCAL_CHILDREN + _TEMP9
          LOCAL_CHILDREN = SDAI.SET<sTEXT_OR_CHARACTER>(bound1: SDAI.UNWRAP(SDAI.INTEGER(0)), bound2: (nil as 
            SDAI.INTEGER?), /*SDAI.SET<sTEXT_OR_CHARACTER>*/_TEMP10)
        }
      }
    }
    
    let _TEMP11 = CHILD_TEXT?.QUERY{ CHILD in 

        let _TEMP1 = SDAI.TYPEOF(CHILD, IS: eANNOTATION_TEXT.self)
        return _TEMP1 }
    LOCAL_ANNOTATION_TEXT = SDAI.SET<eANNOTATION_TEXT>(bound1: SDAI.UNWRAP(SDAI.INTEGER(0)), bound2: (nil as 
      SDAI.INTEGER?), /*SDAI.SET<sTEXT_OR_CHARACTER>[1:nil] */_TEMP11)
    
    let _TEMP12 = SDAI.SIZEOF(LOCAL_ANNOTATION_TEXT)
    let _TEMP13 = _TEMP12 > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
    if SDAI.IS_TRUE( _TEMP13 ) {
      if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.HIINDEX(
        LOCAL_ANNOTATION_TEXT)) {
        for I in incrementControl {
          
          let _TEMP14 = LOCAL_ANNOTATION_TEXT?[I]
          let _TEMP15 = _TEMP14?.GROUP_REF(eMAPPED_ITEM.self)
          let _TEMP16 = _TEMP15?.MAPPING_SOURCE
          let _TEMP17 = _TEMP16?.MAPPED_REPRESENTATION
          let _TEMP18 = _TEMP17?.ITEMS
          let _TEMP19 = _TEMP18?.QUERY{ ITEM in 

              let _TEMP1 = ([SDAI.AIE(SDAI.STRING(
                "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ANNOTATION_TEXT")), 
                SDAI.AIE(SDAI.STRING("AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.COMPOSITE_TEXT"))] 
                as [SDAI.AggregationInitializerElement<SDAI.STRING>])
              let _TEMP2 = SDAI.TYPEOF(ITEM)
              let _TEMP3 = SDAI.FORCE_OPTIONAL(_TEMP1) * _TEMP2
              let _TEMP4 = SDAI.SIZEOF(_TEMP3)
              let _TEMP5 = _TEMP4 > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
              return _TEMP5 }
          SET__TEXT_OR_CHARACTER = SDAI.SET<sTEXT_OR_CHARACTER>(bound1: SDAI.UNWRAP(SDAI.INTEGER(0)), 
            bound2: (nil as SDAI.INTEGER?), 
            /*SDAI.SET<eREPRESENTATION_ITEM>[1:nil] */_TEMP19)
          
          let _TEMP20 = LOCAL_CHILDREN + SET__TEXT_OR_CHARACTER
          LOCAL_CHILDREN = SDAI.SET<sTEXT_OR_CHARACTER>(bound1: SDAI.UNWRAP(SDAI.INTEGER(0)), bound2: (nil as 
            SDAI.INTEGER?), /*SDAI.SET<sTEXT_OR_CHARACTER>*/_TEMP20)
        }
      }
    }
    
    let _TEMP21 = LOCAL_CHILDREN .!==. CHILD_TEXT
    if SDAI.IS_TRUE( _TEMP21 ) {
      
      let _TEMP22 = ACYCLIC_COMPOSITE_TEXT(
        START_COMPOSITE: START_COMPOSITE, 
        CHILD_TEXT: SDAI.SET<sTEXT_OR_CHARACTER>(bound1: SDAI.UNWRAP(SDAI.INTEGER(1)), bound2: (nil as SDAI.INTEGER?), 
        /*SDAI.SET<sTEXT_OR_CHARACTER>[0:nil] */LOCAL_CHILDREN))
      return _acyclic_composite_text__cache.updateCache(params: _params, value: _TEMP22)
    }
    else {
      return _acyclic_composite_text__cache.updateCache(params: _params, value: SDAI.LOGICAL(SDAI.TRUE))
    }
  }

}

//MARK: - function result cache
private var _acyclic_composite_text__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

