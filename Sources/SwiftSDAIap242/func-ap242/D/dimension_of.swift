/* file: dimension_of.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  FUNCTION dimension_of(
               item : geometric_representation_item
           ) : dimension_count;

    LOCAL
      x   : SET OF representation;
      y   : representation_context;
      dim : dimension_count;
    END_LOCAL;
    IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CARTESIAN_POINT' IN TYPEOF( item ) THEN
      dim := SIZEOF( item\cartesian_point.coordinates );
      RETURN( dim );
    END_IF;
    IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DIRECTION' IN TYPEOF( item ) THEN
      dim := SIZEOF( item\direction.direction_ratios );
      RETURN( dim );
    END_IF;
    IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.VECTOR' IN TYPEOF( item ) THEN
      dim := SIZEOF( item\vector.orientation\direction.direction_ratios );
      RETURN( dim );
    END_IF;
    x := using_representations( item );
    IF SIZEOF( x ) > 0 THEN
      y := x[1].context_of_items;
      dim := y\geometric_representation_context.coordinate_space_dimension;
      RETURN( dim );
    ELSE
      RETURN( ? );
    END_IF;

  END_FUNCTION; -- dimension_of (line:38450 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func DIMENSION_OF(_ ITEM: eGEOMETRIC_REPRESENTATION_ITEM? ) 
    -> tDIMENSION_COUNT? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( ITEM )
    if case .available(let _cached_value) = _dimension_of__cache.cachedValue(params: _params) {
      return _cached_value as? tDIMENSION_COUNT
    }

    var ITEM = ITEM; SDAI.TOUCH(var: &ITEM)

    //LOCAL
    var X: SDAI.SET<eREPRESENTATION>? 
    var Y: eREPRESENTATION_CONTEXT? 
    var DIM: tDIMENSION_COUNT? 
    //END_LOCAL

    
    let _TEMP1 = SDAI.TYPEOF(ITEM, IS: eCARTESIAN_POINT.self)
    if SDAI.IS_TRUE( _TEMP1 ) {
      
      let _TEMP2 = ITEM?.GROUP_REF(eCARTESIAN_POINT.self)
      let _TEMP3 = _TEMP2?.COORDINATES
      let _TEMP4 = SDAI.SIZEOF(_TEMP3)
      DIM = tDIMENSION_COUNT(/*SDAI.INTEGER*/_TEMP4)
      return _dimension_of__cache.updateCache(params: _params, value: DIM)
    }
    
    let _TEMP5 = SDAI.TYPEOF(ITEM, IS: eDIRECTION.self)
    if SDAI.IS_TRUE( _TEMP5 ) {
      
      let _TEMP6 = ITEM?.GROUP_REF(eDIRECTION.self)
      let _TEMP7 = _TEMP6?.DIRECTION_RATIOS
      let _TEMP8 = SDAI.SIZEOF(_TEMP7)
      DIM = tDIMENSION_COUNT(/*SDAI.INTEGER*/_TEMP8)
      return _dimension_of__cache.updateCache(params: _params, value: DIM)
    }
    
    let _TEMP9 = SDAI.TYPEOF(ITEM, IS: eVECTOR.self)
    if SDAI.IS_TRUE( _TEMP9 ) {
      
      let _TEMP10 = ITEM?.GROUP_REF(eVECTOR.self)
      let _TEMP11 = _TEMP10?.ORIENTATION
      let _TEMP12 = _TEMP11?.GROUP_REF(eDIRECTION.self)
      let _TEMP13 = _TEMP12?.DIRECTION_RATIOS
      let _TEMP14 = SDAI.SIZEOF(_TEMP13)
      DIM = tDIMENSION_COUNT(/*SDAI.INTEGER*/_TEMP14)
      return _dimension_of__cache.updateCache(params: _params, value: DIM)
    }
    
    let _TEMP15 = USING_REPRESENTATIONS(sFOUNDED_ITEM_SELECT(/*eGEOMETRIC_REPRESENTATION_ITEM*/ITEM))
    X = _TEMP15
    
    let _TEMP16 = SDAI.SIZEOF(X)
    let _TEMP17 = _TEMP16 > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
    if SDAI.IS_TRUE( _TEMP17 ) {
      
      let _TEMP18 = X?[1]
      let _TEMP19 = _TEMP18?.CONTEXT_OF_ITEMS
      Y = _TEMP19
      
      let _TEMP20 = Y?.GROUP_REF(eGEOMETRIC_REPRESENTATION_CONTEXT.self)
      let _TEMP21 = _TEMP20?.COORDINATE_SPACE_DIMENSION
      DIM = _TEMP21
      return _dimension_of__cache.updateCache(params: _params, value: DIM)
    }
    else {
      return _dimension_of__cache.updateCache(params: _params, value: (nil as tDIMENSION_COUNT?))
    }
  }

}

//MARK: - function result cache
private var _dimension_of__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

