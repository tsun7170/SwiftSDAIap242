/* file: acyclic_shape_aspect_relationship.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  FUNCTION acyclic_shape_aspect_relationship(
               relation : shape_aspect_relationship;
               relatives : SET [1 : ?] OF shape_aspect;
               specific_relation : STRING
           ) : BOOLEAN;

    LOCAL
      x : SET OF shape_aspect_relationship;
    END_LOCAL;
    IF relation.relating_shape_aspect IN relatives THEN
      RETURN( FALSE );
    END_IF;
    x := QUERY ( sa <* bag_to_set( USEDIN( relation.relating_shape_aspect, 
        'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_ASPECT_RELATIONSHIP.RELATED_SHAPE_ASPECT'  ) )
        | ( specific_relation IN TYPEOF( sa ) ) );
    REPEAT i := 1 TO HIINDEX( x ) BY 1;
      IF NOT acyclic_shape_aspect_relationship( x[i], relatives + relation.relating_shape_aspect, 
          specific_relation ) THEN
        RETURN( FALSE );
      END_IF;
    END_REPEAT;
    RETURN( TRUE );

  END_FUNCTION; -- acyclic_shape_aspect_relationship (line:35206 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func ACYCLIC_SHAPE_ASPECT_RELATIONSHIP(
    RELATION: eSHAPE_ASPECT_RELATIONSHIP? , RELATIVES: (SDAI.SET<eSHAPE_ASPECT>/*[1:nil]*/ )? , 
    SPECIFIC_RELATION: SDAI.STRING? ) 
    -> SDAI.BOOLEAN? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( RELATION, RELATIVES, SPECIFIC_RELATION )
    if case .available(let _cached_value) = _acyclic_shape_aspect_relationship__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.BOOLEAN
    }

    var RELATION = RELATION; SDAI.TOUCH(var: &RELATION)
    var RELATIVES = RELATIVES; SDAI.TOUCH(var: &RELATIVES)
    var SPECIFIC_RELATION = SPECIFIC_RELATION; SDAI.TOUCH(var: &SPECIFIC_RELATION)

    //LOCAL
    var X: SDAI.SET<eSHAPE_ASPECT_RELATIONSHIP>? 

    
    let _TEMP1 = RELATION?.RELATING_SHAPE_ASPECT
    let _TEMP2 = SDAI.aggregate(RELATIVES, contains: _TEMP1)
    if SDAI.IS_TRUE( _TEMP2 ) {
      return _acyclic_shape_aspect_relationship__cache.updateCache(params: _params, value: SDAI.BOOLEAN(
        SDAI.FALSE))
    }
    
    let _TEMP3 = RELATION?.RELATING_SHAPE_ASPECT
    let _TEMP4 = SDAI.USEDIN(T: _TEMP3, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
      .eSHAPE_ASPECT_RELATIONSHIP.RELATED_SHAPE_ASPECT)
    let _TEMP5 = BAG_TO_SET(_TEMP4)
    let _TEMP6 = _TEMP5?.QUERY{ SA in 

        let _TEMP1 = SDAI.TYPEOF(SA)
        let _TEMP2 = SDAI.aggregate(_TEMP1, contains: SPECIFIC_RELATION)
        return _TEMP2 }
    X = SDAI.SET<eSHAPE_ASPECT_RELATIONSHIP>(generic: /*SDAI.SET<gINTYPE>*/_TEMP6)
    if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/1, TO:/*SDAI.INTEGER*/SDAI.HIINDEX(
      X)) {
      for I in incrementControl {
        
        let _TEMP7 = X?[I]
        let _TEMP8 = RELATION?.RELATING_SHAPE_ASPECT
        let _TEMP9 = RELATIVES + _TEMP8
        let _TEMP10 = ACYCLIC_SHAPE_ASPECT_RELATIONSHIP(
          RELATION: _TEMP7, RELATIVES: SDAI.SET<eSHAPE_ASPECT>(bound1: SDAI.UNWRAP(SDAI.INTEGER(1)), bound2: (nil as 
          SDAI.INTEGER?), /*SDAI.SET<eSHAPE_ASPECT>*/_TEMP9), 
          SPECIFIC_RELATION: SPECIFIC_RELATION)
        let _TEMP11 =  !_TEMP10
        if SDAI.IS_TRUE( _TEMP11 ) {
          return _acyclic_shape_aspect_relationship__cache.updateCache(params: _params, value: SDAI.BOOLEAN(
            SDAI.FALSE))
        }
      }
    }
    return _acyclic_shape_aspect_relationship__cache.updateCache(params: _params, value: SDAI.BOOLEAN(
      SDAI.TRUE))
  }

}

//MARK: - function result cache
private var _acyclic_shape_aspect_relationship__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)
