/* file: categories_of_product.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  FUNCTION categories_of_product(
               obj : product
           ) : SET OF STRING;

    LOCAL
      category_assignments : BAG OF product_category;
      categories           : SET OF STRING := [];
    END_LOCAL;
    category_assignments := USEDIN( obj, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
        + 'PRODUCT_RELATED_PRODUCT_CATEGORY.PRODUCTS'  );
    REPEAT i := LOINDEX( category_assignments ) TO HIINDEX( category_assignments ) BY 1;
      categories := categories + category_assignments[i].name;
    END_REPEAT;
    RETURN( categories );

  END_FUNCTION; -- categories_of_product (line:35742 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/

  public static 
  func CATEGORIES_OF_PRODUCT(_ OBJ: ePRODUCT? ) 
    -> SDAI.SET<SDAI.STRING>? {

    // CACHE LOOKUP
    let _params = SDAI.ParameterList( OBJ )
    if case .available(let _cached_value) = _categories_of_product__cache.cachedValue(params: _params) {
      return _cached_value as? SDAI.SET<SDAI.STRING>
    }

    var OBJ = OBJ; SDAI.TOUCH(var: &OBJ)

    //LOCAL
    var CATEGORY_ASSIGNMENTS: SDAI.BAG<ePRODUCT_CATEGORY>? 
    var CATEGORIES: SDAI.SET<SDAI.STRING>?  = SDAI.SET<SDAI.STRING>(SDAI.EMPLY_AGGREGATE); SDAI.TOUCH(var: &CATEGORIES)
    //END_LOCAL

    
    let _TEMP1 = SDAI.USEDIN(T: OBJ, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
      .ePRODUCT_RELATED_PRODUCT_CATEGORY.PRODUCTS)
    CATEGORY_ASSIGNMENTS = SDAI.BAG<ePRODUCT_CATEGORY>(/*SDAI.BAG<SDAI.GENERIC_ENTITY>*/_TEMP1)
    if let incrementControl/*SDAI.INTEGER*/ = SDAI.FROM(/*SDAI.INTEGER*/SDAI.LOINDEX(
      CATEGORY_ASSIGNMENTS), TO:/*SDAI.INTEGER*/SDAI.HIINDEX(CATEGORY_ASSIGNMENTS)) {
      for I in incrementControl {
        
        let _TEMP2 = CATEGORY_ASSIGNMENTS?[I]
        let _TEMP3 = _TEMP2?.NAME
        let _TEMP4 = CATEGORIES + _TEMP3
        CATEGORIES = _TEMP4
      }
    }
    return _categories_of_product__cache.updateCache(params: _params, value: CATEGORIES)
  }

}

//MARK: - function result cache
private var _categories_of_product__cache = SDAI.FunctionResultCache(
  controller: AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.schemaDefinition)

