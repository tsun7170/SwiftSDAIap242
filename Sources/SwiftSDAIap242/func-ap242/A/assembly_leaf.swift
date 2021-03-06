/* file: assembly_leaf.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  FUNCTION assembly_leaf(
               item : product_definition
           ) : BOOLEAN;

    LOCAL
      local_relation  : SET OF assembly_component_usage := [];
      local_relation2 : BAG OF assembly_component_usage := [];
    END_LOCAL;
    local_relation2 := local_relation2 + QUERY ( pdr <* USEDIN( item, 
        'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT_DEFINITION_RELATIONSHIP.'
        + 'RELATING_PRODUCT_DEFINITION'  ) | ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
        + 'ASSEMBLY_COMPONENT_USAGE'  IN TYPEOF( pdr ) ) );
    local_relation := bag_to_set( local_relation2 );
    IF SIZEOF( local_relation ) = 0 THEN
      RETURN( TRUE );
    ELSE
      RETURN( FALSE );
    END_IF;

  END_FUNCTION; -- assembly_leaf (line:35439 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func ASSEMBLY_LEAF(_ ITEM: ePRODUCT_DEFINITION? ) 
    -> SDAI.BOOLEAN? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( ITEM )
    if case .available(let _cached_value) = _assembly_leaf__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.BOOLEAN
    }

    var ITEM = ITEM; SDAI.TOUCH(var: &ITEM)

    //LOCAL
    var LOCAL_RELATION: SDAI.SET<eASSEMBLY_COMPONENT_USAGE>?  = SDAI.SET<eASSEMBLY_COMPONENT_USAGE>(
                                                                SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &LOCAL_RELATION)
    var LOCAL_RELATION2: SDAI.BAG<eASSEMBLY_COMPONENT_USAGE>?  = SDAI.BAG<eASSEMBLY_COMPONENT_USAGE>(
                                                                 SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &LOCAL_RELATION2)
    //END_LOCAL

    
    let _TEMP1 = SDAI.USEDIN(T: ITEM, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
      .ePRODUCT_DEFINITION_RELATIONSHIP.RELATING_PRODUCT_DEFINITION)
    let _TEMP2 = _TEMP1.QUERY{ PDR in 

        let _TEMP1 = SDAI.TYPEOF(PDR, IS: eASSEMBLY_COMPONENT_USAGE.self)
        return _TEMP1 }
    let _TEMP3 = SDAI.BAG<SDAI.GENERIC_ENTITY>(/*SDAI.BAG<eASSEMBLY_COMPONENT_USAGE>*/LOCAL_RELATION2) + SDAI.FORCE_OPTIONAL(
      _TEMP2)
    LOCAL_RELATION2 = SDAI.BAG<eASSEMBLY_COMPONENT_USAGE>(/*SDAI.BAG<SDAI.GENERIC_ENTITY>*/_TEMP3)
    
    let _TEMP4 = BAG_TO_SET(LOCAL_RELATION2)
    LOCAL_RELATION = SDAI.SET<eASSEMBLY_COMPONENT_USAGE>(generic: /*SDAI.SET<gINTYPE>*/_TEMP4)
    
    let _TEMP5 = SDAI.SIZEOF(LOCAL_RELATION)
    let _TEMP6 = _TEMP5 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
    if SDAI.IS_TRUE( _TEMP6 ) {
      return _assembly_leaf__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.TRUE))
    }
    else {
      return _assembly_leaf__cache.updateCache(params: _params, value: SDAI.BOOLEAN(SDAI.FALSE))
    }
  }

}

//MARK: - function result cache
private var _assembly_leaf__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

