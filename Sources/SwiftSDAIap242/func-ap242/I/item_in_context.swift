/* file: item_in_context.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  FUNCTION item_in_context(
               item : representation_item;
               cntxt : representation_context
           ) : BOOLEAN;

    LOCAL
      y : BAG OF representation_item;
    END_LOCAL;
    IF SIZEOF( USEDIN( item, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.REPRESENTATION.ITEMS' ) * cntxt
        .representations_in_context ) > 0 THEN
      RETURN( TRUE );
    ELSE
      y := QUERY ( z <* USEDIN( item, '' ) | ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
          + 'REPRESENTATION_ITEM'  IN TYPEOF( z ) ) );
      IF SIZEOF( y ) > 0 THEN
        REPEAT i := 1 TO HIINDEX( y ) BY 1;
          IF item_in_context( y[i], cntxt ) THEN
            RETURN( TRUE );
          END_IF;
        END_REPEAT;
      END_IF;
    END_IF;
    RETURN( FALSE );

  END_FUNCTION; -- item_in_context (line:42382 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func ITEM_IN_CONTEXT(ITEM: eREPRESENTATION_ITEM? , CNTXT: eREPRESENTATION_CONTEXT? ) 
    -> SDAI.BOOLEAN? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( ITEM, CNTXT )
    if case .available(let _cached_value) = _item_in_context__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.BOOLEAN
    }

    var ITEM = ITEM; SDAI.TOUCH(var: &ITEM)
    var CNTXT = CNTXT; SDAI.TOUCH(var: &CNTXT)

    //LOCAL
    var Y: SDAI.BAG<eREPRESENTATION_ITEM>? 

    
    let _TEMP1 = SDAI.USEDIN(T: ITEM, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eREPRESENTATION
      .ITEMS)
    let _TEMP2 = CNTXT?.REPRESENTATIONS_IN_CONTEXT
    let _TEMP3 = _TEMP1 * SDAI.SET<SDAI.GENERIC_ENTITY>(bound1: SDAI.UNWRAP(SDAI.INTEGER(1)), bound2: (nil as 
      SDAI.INTEGER?), /*SDAI.SET<eREPRESENTATION>[1:nil] */_TEMP2)
    let _TEMP4 = SDAI.SIZEOF(_TEMP3)
    let _TEMP5 = _TEMP4 > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
    if SDAI.IS_TRUE( _TEMP5 ) {
      return _item_in_context__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.TRUE))
    }
    else {
      
      let _TEMP6 = SDAI.USEDIN(T: ITEM)
      let _TEMP7 = _TEMP6?.QUERY{ Z in 

          let _TEMP1 = SDAI.TYPEOF(Z, IS: eREPRESENTATION_ITEM.self)
          return _TEMP1 }
      Y = SDAI.BAG<eREPRESENTATION_ITEM>(/*SDAI.BAG<SDAI.GENERIC_ENTITY>*/_TEMP7)
      
      let _TEMP8 = SDAI.SIZEOF(Y)
      let _TEMP9 = _TEMP8 > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      if SDAI.IS_TRUE( _TEMP9 ) {
        if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/
          SDAI.HIINDEX(Y)) {
          for I in incrementControl {
            
            let _TEMP10 = Y?[I]
            let _TEMP11 = ITEM_IN_CONTEXT(
              ITEM: _TEMP10, CNTXT: CNTXT)
            if SDAI.IS_TRUE( _TEMP11 ) {
              return _item_in_context__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.TRUE))
            }
          }
        }
      }
    }
    return _item_in_context__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.FALSE))
  }

}

//MARK: - function result cache
private var _item_in_context__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)
