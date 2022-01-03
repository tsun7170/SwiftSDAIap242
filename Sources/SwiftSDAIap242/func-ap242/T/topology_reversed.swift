/* file: topology_reversed.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  FUNCTION topology_reversed(
               an_item : reversible_topology
           ) : reversible_topology;
    IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.EDGE' IN TYPEOF( an_item ) THEN
      RETURN( edge_reversed( an_item ) );
    END_IF;
    IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PATH' IN TYPEOF( an_item ) THEN
      RETURN( path_reversed( an_item ) );
    END_IF;
    IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.FACE_BOUND' IN TYPEOF( an_item ) THEN
      RETURN( face_bound_reversed( an_item ) );
    END_IF;
    IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.FACE' IN TYPEOF( an_item ) THEN
      RETURN( face_reversed( an_item ) );
    END_IF;
    IF 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHELL' IN TYPEOF( an_item ) THEN
      RETURN( shell_reversed( an_item ) );
    END_IF;
    IF 'SET' IN TYPEOF( an_item ) THEN
      RETURN( set_of_topology_reversed( an_item ) );
    END_IF;
    IF 'LIST' IN TYPEOF( an_item ) THEN
      RETURN( list_of_topology_reversed( an_item ) );
    END_IF;
    RETURN( ? );

  END_FUNCTION; -- topology_reversed (line:47052 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func TOPOLOGY_REVERSED(_ AN_ITEM: sREVERSIBLE_TOPOLOGY? ) 
    -> sREVERSIBLE_TOPOLOGY? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( AN_ITEM )
    if case .available(let _cached_value) = _topology_reversed__cache.cachedValue(params: _params) {
      return _cached_value as? sREVERSIBLE_TOPOLOGY
    }

    var AN_ITEM = AN_ITEM; SDAI.TOUCH(var: &AN_ITEM)

    
    let _TEMP1 = SDAI.TYPEOF(AN_ITEM, IS: eEDGE.self)
    if SDAI.IS_TRUE( _TEMP1 ) {
      
      let _TEMP2 = EDGE_REVERSED(eEDGE(/*sREVERSIBLE_TOPOLOGY*/AN_ITEM))
      return _topology_reversed__cache.updateCache(params: _params, value: sREVERSIBLE_TOPOLOGY(/*
        eORIENTED_EDGE*/_TEMP2))
    }
    
    let _TEMP3 = SDAI.TYPEOF(AN_ITEM, IS: ePATH.self)
    if SDAI.IS_TRUE( _TEMP3 ) {
      
      let _TEMP4 = PATH_REVERSED(ePATH(/*sREVERSIBLE_TOPOLOGY*/AN_ITEM))
      return _topology_reversed__cache.updateCache(params: _params, value: sREVERSIBLE_TOPOLOGY(/*
        eORIENTED_PATH*/_TEMP4))
    }
    
    let _TEMP5 = SDAI.TYPEOF(AN_ITEM, IS: eFACE_BOUND.self)
    if SDAI.IS_TRUE( _TEMP5 ) {
      
      let _TEMP6 = FACE_BOUND_REVERSED(eFACE_BOUND(/*sREVERSIBLE_TOPOLOGY*/AN_ITEM))
      return _topology_reversed__cache.updateCache(params: _params, value: sREVERSIBLE_TOPOLOGY(/*eFACE_BOUND*/
        _TEMP6))
    }
    
    let _TEMP7 = SDAI.TYPEOF(AN_ITEM, IS: eFACE.self)
    if SDAI.IS_TRUE( _TEMP7 ) {
      
      let _TEMP8 = FACE_REVERSED(eFACE(/*sREVERSIBLE_TOPOLOGY*/AN_ITEM))
      return _topology_reversed__cache.updateCache(params: _params, value: sREVERSIBLE_TOPOLOGY(/*
        eORIENTED_FACE*/_TEMP8))
    }
    
    let _TEMP9 = SDAI.TYPEOF(AN_ITEM, IS: sSHELL.self)
    if SDAI.IS_TRUE( _TEMP9 ) {
      
      let _TEMP10 = SHELL_REVERSED(sSHELL(/*sREVERSIBLE_TOPOLOGY*/AN_ITEM))
      return _topology_reversed__cache.updateCache(params: _params, value: sREVERSIBLE_TOPOLOGY(/*sSHELL*/
        _TEMP10))
    }
    
    let _TEMP11 = SDAI.aggregate(SDAI.TYPEOF(AN_ITEM), contains: SDAI.STRING("SET"))
    if SDAI.IS_TRUE( _TEMP11 ) {
      
      let _TEMP12 = SET_OF_TOPOLOGY_REVERSED(tSET_OF_REVERSIBLE_TOPOLOGY_ITEM(/*sREVERSIBLE_TOPOLOGY*/AN_ITEM))
      return _topology_reversed__cache.updateCache(params: _params, value: sREVERSIBLE_TOPOLOGY(/*
        tSET_OF_REVERSIBLE_TOPOLOGY_ITEM*/_TEMP12))
    }
    
    let _TEMP13 = SDAI.aggregate(SDAI.TYPEOF(AN_ITEM), contains: SDAI.STRING("LIST"))
    if SDAI.IS_TRUE( _TEMP13 ) {
      
      let _TEMP14 = LIST_OF_TOPOLOGY_REVERSED(tLIST_OF_REVERSIBLE_TOPOLOGY_ITEM(/*sREVERSIBLE_TOPOLOGY*/
        AN_ITEM))
      return _topology_reversed__cache.updateCache(params: _params, value: sREVERSIBLE_TOPOLOGY(/*
        tLIST_OF_REVERSIBLE_TOPOLOGY_ITEM*/_TEMP14))
    }
    return _topology_reversed__cache.updateCache(params: _params, value: (nil as sREVERSIBLE_TOPOLOGY?))
  }

}

//MARK: - function result cache
private var _topology_reversed__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

