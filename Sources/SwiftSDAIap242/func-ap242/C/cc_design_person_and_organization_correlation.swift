/* file: cc_design_person_and_organization_correlation.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  FUNCTION cc_design_person_and_organization_correlation(
               e : cc_design_person_and_organization_assignment
           ) : BOOLEAN;

    LOCAL
      po_role : STRING;
    END_LOCAL;
    po_role := e\person_and_organization_assignment.role.name;
    CASE po_role OF
      'request_recipient'         :         IF SIZEOF( e.items ) <> SIZEOF( QUERY ( x <* e.items | ( SIZEOF( 
            [ 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CHANGE_REQUEST', 
            'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.START_REQUEST' ] * TYPEOF( x ) ) = 1 ) ) ) THEN
          RETURN( FALSE );
        END_IF;
      'initiator'                 :         IF SIZEOF( e.items ) <> SIZEOF( QUERY ( x <* e.items | ( SIZEOF( 
            [ 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CHANGE_REQUEST', 
            'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.START_REQUEST' , 
            'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.START_WORK' , 
            'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CHANGE' ] * TYPEOF( x ) ) = 1 ) ) ) THEN
          RETURN( FALSE );
        END_IF;
      'creator'                   :         IF SIZEOF( e.items ) <> SIZEOF( QUERY ( x <* e.items | ( SIZEOF( 
            [ 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT_DEFINITION_FORMATION', 
            'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT_DEFINITION' ] * TYPEOF( x ) ) = 1 ) ) )
            THEN
          RETURN( FALSE );
        END_IF;
      'part_supplier'             :         IF SIZEOF( e.items ) <> SIZEOF( QUERY ( x <* e.items | ( 
            'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT_DEFINITION_FORMATION'  IN TYPEOF( x ) ) ) )
            THEN
          RETURN( FALSE );
        END_IF;
      'design_supplier'           :         IF SIZEOF( e.items ) <> SIZEOF( QUERY ( x <* e.items | ( 
            'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT_DEFINITION_FORMATION'  IN TYPEOF( x ) ) ) )
            THEN
          RETURN( FALSE );
        END_IF;
      'design_owner'              :         IF SIZEOF( e.items ) <> SIZEOF( QUERY ( x <* e.items | ( 
            'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT'  IN TYPEOF( x ) ) ) ) THEN
          RETURN( FALSE );
        END_IF;
      'configuration_manager'     :         IF SIZEOF( e.items ) <> SIZEOF( QUERY ( x <* e.items | ( 
            'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CONFIGURATION_ITEM'  IN TYPEOF( x ) ) ) ) THEN
          RETURN( FALSE );
        END_IF;
      'contractor'                :         IF SIZEOF( e.items ) <> SIZEOF( QUERY ( x <* e.items | ( 
            'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CONTRACT'  IN TYPEOF( x ) ) ) ) THEN
          RETURN( FALSE );
        END_IF;
      'classification_officer'    :         IF SIZEOF( e.items ) <> SIZEOF( QUERY ( x <* e.items | ( 
            'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SECURITY_CLASSIFICATION'  IN TYPEOF( x ) ) ) )
            THEN
          RETURN( FALSE );
        END_IF;
      OTHERWISE                   :         RETURN( TRUE );
    END_CASE;
    RETURN( TRUE );

  END_FUNCTION; -- cc_design_person_and_organization_correlation (line:35740 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func CC_DESIGN_PERSON_AND_ORGANIZATION_CORRELATION(
    _ E: eCC_DESIGN_PERSON_AND_ORGANIZATION_ASSIGNMENT? ) 
    -> SDAI.BOOLEAN? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( E )
    if case .available(let _cached_value) = _cc_design_person_and_organization_correlation__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.BOOLEAN
    }

    var E = E; SDAI.TOUCH(var: &E)

    //LOCAL
    var PO_ROLE: SDAI.STRING? 

    
    let _TEMP1 = E?.GROUP_REF(ePERSON_AND_ORGANIZATION_ASSIGNMENT.self)
    let _TEMP2 = _TEMP1?.ROLE
    let _TEMP3 = _TEMP2?.NAME
    PO_ROLE = SDAI.STRING(/*tLABEL*/_TEMP3)
    if let selector = PO_ROLE {
      switch selector {
      case "request_recipient":
        
        let _TEMP4 = E?.ITEMS
        let _TEMP5 = SDAI.SIZEOF(_TEMP4)
        let _TEMP6 = E?.ITEMS
        let _TEMP7 = _TEMP6?.QUERY{ X in 

            let _TEMP1 = ([SDAI.AIE(SDAI.STRING(
              "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CHANGE_REQUEST")), 
              SDAI.AIE(SDAI.STRING("AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.START_REQUEST"))] 
              as [SDAI.AggregationInitializerElement<SDAI.STRING>])
            let _TEMP2 = SDAI.TYPEOF(X)
            let _TEMP3 = SDAI.FORCE_OPTIONAL(_TEMP1) * _TEMP2
            let _TEMP4 = SDAI.SIZEOF(_TEMP3)
            let _TEMP5 = _TEMP4 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
            return _TEMP5 }
        let _TEMP8 = SDAI.SIZEOF(_TEMP7)
        let _TEMP9 = _TEMP5 .!=. _TEMP8
        if SDAI.IS_TRUE( _TEMP9 ) {
          return _cc_design_person_and_organization_correlation__cache.updateCache(params: _params, value: 
            SDAI.BOOLEAN(SDAI.FALSE))
        }

      case "initiator":
        
        let _TEMP10 = E?.ITEMS
        let _TEMP11 = SDAI.SIZEOF(_TEMP10)
        let _TEMP12 = E?.ITEMS
        let _TEMP13 = _TEMP12?.QUERY{ X in 

            let _TEMP1 = ([SDAI.AIE(SDAI.STRING(
              "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CHANGE_REQUEST")), 
              SDAI.AIE(SDAI.STRING("AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.START_REQUEST")), 
              SDAI.AIE(SDAI.STRING("AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.START_WORK")), 
              SDAI.AIE(SDAI.STRING("AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CHANGE"))] 
              as [SDAI.AggregationInitializerElement<SDAI.STRING>])
            let _TEMP2 = SDAI.TYPEOF(X)
            let _TEMP3 = SDAI.FORCE_OPTIONAL(_TEMP1) * _TEMP2
            let _TEMP4 = SDAI.SIZEOF(_TEMP3)
            let _TEMP5 = _TEMP4 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
            return _TEMP5 }
        let _TEMP14 = SDAI.SIZEOF(_TEMP13)
        let _TEMP15 = _TEMP11 .!=. _TEMP14
        if SDAI.IS_TRUE( _TEMP15 ) {
          return _cc_design_person_and_organization_correlation__cache.updateCache(params: _params, value: 
            SDAI.BOOLEAN(SDAI.FALSE))
        }

      case "creator":
        
        let _TEMP16 = E?.ITEMS
        let _TEMP17 = SDAI.SIZEOF(_TEMP16)
        let _TEMP18 = E?.ITEMS
        let _TEMP19 = _TEMP18?.QUERY{ X in 

            let _TEMP1 = ([SDAI.AIE(SDAI.STRING(
              "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT_DEFINITION_FORMATION")), 
              SDAI.AIE(SDAI.STRING("AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT_DEFINITION"))] 
              as [SDAI.AggregationInitializerElement<SDAI.STRING>])
            let _TEMP2 = SDAI.TYPEOF(X)
            let _TEMP3 = SDAI.FORCE_OPTIONAL(_TEMP1) * _TEMP2
            let _TEMP4 = SDAI.SIZEOF(_TEMP3)
            let _TEMP5 = _TEMP4 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
            return _TEMP5 }
        let _TEMP20 = SDAI.SIZEOF(_TEMP19)
        let _TEMP21 = _TEMP17 .!=. _TEMP20
        if SDAI.IS_TRUE( _TEMP21 ) {
          return _cc_design_person_and_organization_correlation__cache.updateCache(params: _params, value: 
            SDAI.BOOLEAN(SDAI.FALSE))
        }

      case "part_supplier":
        
        let _TEMP22 = E?.ITEMS
        let _TEMP23 = SDAI.SIZEOF(_TEMP22)
        let _TEMP24 = E?.ITEMS
        let _TEMP25 = _TEMP24?.QUERY{ X in 

            let _TEMP1 = SDAI.TYPEOF(X, IS: ePRODUCT_DEFINITION_FORMATION.self)
            return _TEMP1 }
        let _TEMP26 = SDAI.SIZEOF(_TEMP25)
        let _TEMP27 = _TEMP23 .!=. _TEMP26
        if SDAI.IS_TRUE( _TEMP27 ) {
          return _cc_design_person_and_organization_correlation__cache.updateCache(params: _params, value: 
            SDAI.BOOLEAN(SDAI.FALSE))
        }

      case "design_supplier":
        
        let _TEMP28 = E?.ITEMS
        let _TEMP29 = SDAI.SIZEOF(_TEMP28)
        let _TEMP30 = E?.ITEMS
        let _TEMP31 = _TEMP30?.QUERY{ X in 

            let _TEMP1 = SDAI.TYPEOF(X, IS: ePRODUCT_DEFINITION_FORMATION.self)
            return _TEMP1 }
        let _TEMP32 = SDAI.SIZEOF(_TEMP31)
        let _TEMP33 = _TEMP29 .!=. _TEMP32
        if SDAI.IS_TRUE( _TEMP33 ) {
          return _cc_design_person_and_organization_correlation__cache.updateCache(params: _params, value: 
            SDAI.BOOLEAN(SDAI.FALSE))
        }

      case "design_owner":
        
        let _TEMP34 = E?.ITEMS
        let _TEMP35 = SDAI.SIZEOF(_TEMP34)
        let _TEMP36 = E?.ITEMS
        let _TEMP37 = _TEMP36?.QUERY{ X in 

            let _TEMP1 = SDAI.TYPEOF(X, IS: ePRODUCT.self)
            return _TEMP1 }
        let _TEMP38 = SDAI.SIZEOF(_TEMP37)
        let _TEMP39 = _TEMP35 .!=. _TEMP38
        if SDAI.IS_TRUE( _TEMP39 ) {
          return _cc_design_person_and_organization_correlation__cache.updateCache(params: _params, value: 
            SDAI.BOOLEAN(SDAI.FALSE))
        }

      case "configuration_manager":
        
        let _TEMP40 = E?.ITEMS
        let _TEMP41 = SDAI.SIZEOF(_TEMP40)
        let _TEMP42 = E?.ITEMS
        let _TEMP43 = _TEMP42?.QUERY{ X in 

            let _TEMP1 = SDAI.TYPEOF(X, IS: eCONFIGURATION_ITEM.self)
            return _TEMP1 }
        let _TEMP44 = SDAI.SIZEOF(_TEMP43)
        let _TEMP45 = _TEMP41 .!=. _TEMP44
        if SDAI.IS_TRUE( _TEMP45 ) {
          return _cc_design_person_and_organization_correlation__cache.updateCache(params: _params, value: 
            SDAI.BOOLEAN(SDAI.FALSE))
        }

      case "contractor":
        
        let _TEMP46 = E?.ITEMS
        let _TEMP47 = SDAI.SIZEOF(_TEMP46)
        let _TEMP48 = E?.ITEMS
        let _TEMP49 = _TEMP48?.QUERY{ X in 

            let _TEMP1 = SDAI.TYPEOF(X, IS: eCONTRACT.self)
            return _TEMP1 }
        let _TEMP50 = SDAI.SIZEOF(_TEMP49)
        let _TEMP51 = _TEMP47 .!=. _TEMP50
        if SDAI.IS_TRUE( _TEMP51 ) {
          return _cc_design_person_and_organization_correlation__cache.updateCache(params: _params, value: 
            SDAI.BOOLEAN(SDAI.FALSE))
        }

      case "classification_officer":
        
        let _TEMP52 = E?.ITEMS
        let _TEMP53 = SDAI.SIZEOF(_TEMP52)
        let _TEMP54 = E?.ITEMS
        let _TEMP55 = _TEMP54?.QUERY{ X in 

            let _TEMP1 = SDAI.TYPEOF(X, IS: eSECURITY_CLASSIFICATION.self)
            return _TEMP1 }
        let _TEMP56 = SDAI.SIZEOF(_TEMP55)
        let _TEMP57 = _TEMP53 .!=. _TEMP56
        if SDAI.IS_TRUE( _TEMP57 ) {
          return _cc_design_person_and_organization_correlation__cache.updateCache(params: _params, value: 
            SDAI.BOOLEAN(SDAI.FALSE))
        }

      default:
        return _cc_design_person_and_organization_correlation__cache.updateCache(params: _params, value: 
          SDAI.BOOLEAN(SDAI.TRUE))
      } //end switch
    }
    else {
      return _cc_design_person_and_organization_correlation__cache.updateCache(params: _params, value: SDAI.BOOLEAN(
        SDAI.TRUE))
    }
    return _cc_design_person_and_organization_correlation__cache.updateCache(params: _params, value: SDAI.BOOLEAN(
      SDAI.TRUE))
  }

}

//MARK: - function result cache
private var _cc_design_person_and_organization_correlation__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)
