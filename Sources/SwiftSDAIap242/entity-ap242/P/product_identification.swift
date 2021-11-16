/* file: product_identification.swift 	 generated: Tue Nov 16 05:35:44 2021 */

/* This file was generated by the EXPRESS to Swift translator "exp2swift", 
    derived from STEPcode (formerly NIST's SCL).
 exp2swift version: v.1.0.0, derived from stepcode v0.8 as of 2019/11/23 
 WARNING: You probably don't want to edit it since your modifications 
    will be lost if exp2swift is used to regenerate it.
 */

 
import SwiftSDAIcore

extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF {
//MARK: -ENTITY DEFINITION in EXPRESS
/*

  ENTITY product_identification
    SUBTYPE OF ( configuration_item, characterized_object );
      SELF\configuration_item.item_concept : product_class;
    WHERE
      wr1: ( SIZEOF( QUERY ( cd <* USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'CONFIGURATION_DESIGN.CONFIGURATION'  ) | ( ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT_DEFINITION_FORMATION'  IN TYPEOF( cd.
               design ) ) AND ( SIZEOF( QUERY ( prpc <* USEDIN( cd.design\product_definition_formation.
               of_product, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT_RELATED_PRODUCT_CATEGORY.'
               + 'PRODUCTS'  ) | ( prpc.name IN [ 'part', 'raw material', 'tool'] ) ) ) > 0 ) ) ) ) <= 1 );
      wr2: ( ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CONFIGURABLE_ITEM' IN TYPEOF( SELF ) ) ) 
               XOR ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT_SPECIFICATION' IN TYPEOF( SELF ) ) );
  END_ENTITY; -- product_identification (line:26350 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	configuration_item
    ATTR:  id,	TYPE: identifier -- EXPLICIT

    ATTR:  name,	TYPE: label -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  item_concept,	TYPE: product_concept -- EXPLICIT
      -- possibly overriden by
      *** ENTITY: product_identification,	TYPE: product_class

    ATTR:  purpose,	TYPE: OPTIONAL label -- EXPLICIT


  SUPER- ENTITY(2)	characterized_object
    ATTR:  name,	TYPE: label -- EXPLICIT (DYNAMIC)	(AMBIGUOUS/MASKED)
      -- possibly overriden by
          ENTITY: shape_feature_definition_element_relationship,	TYPE: label	(as DERIVED)
          ENTITY: shape_feature_fit_relationship,	TYPE: label	(as DERIVED)
          ENTITY: characterized_representation,	TYPE: label	(as DERIVED)
          ENTITY: shape_feature_definition_relationship,	TYPE: label	(as DERIVED)

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT (DYNAMIC)	(AMBIGUOUS/MASKED)
      -- possibly overriden by
          ENTITY: shape_feature_definition_element_relationship,	TYPE: text	(as DERIVED)
          ENTITY: shape_feature_fit_relationship,	TYPE: text	(as DERIVED)
          ENTITY: characterized_representation,	TYPE: text	(as DERIVED)
          ENTITY: shape_feature_definition_relationship,	TYPE: text	(as DERIVED)


  ENTITY(SELF)	product_identification
    REDCR: item_concept,	TYPE: product_class -- EXPLICIT
      -- OVERRIDING ENTITY: configuration_item


  SUB- ENTITY(4)	product_specification
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _product_identification : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      ePRODUCT_IDENTIFICATION.self
    }

    //ATTRIBUTES
    /* override var _item_concept: ePRODUCT_CLASS	//EXPLICIT REDEFINITION(eCONFIGURATION_ITEM) */

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sDATE_AND_TIME_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sMULTI_LANGUAGE_ATTRIBUTE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sEXTERNAL_IDENTIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sIDENTIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sACTION_ITEMS.typeName)) // -> sIDENTIFICATION_ITEM
      members.insert(SDAI.STRING(sCHANGE_MANAGEMENT_OBJECT.typeName)) // -> sACTION_ITEMS
      members.insert(SDAI.STRING(sIR_USAGE_ITEM.typeName)) // -> sIDENTIFICATION_ITEM
      members.insert(SDAI.STRING(sSECURITY_CLASSIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sACTION_REQUEST_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sCONTRACT_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sDATE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sACTION_METHOD_ITEMS.typeName)) // -> Self
      members.insert(SDAI.STRING(sPROJECT_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sCERTIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sEFFECTIVITY_ITEM.typeName)) // -> Self
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      return true
    }

    public override func isValueEqualOptionally(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      guard let rhs = rhs as? Self else { return false }
      var result: Bool? = true
      if let comp = super.isValueEqualOptionally(to: rhs, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: ePRODUCT_IDENTIFICATION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.USEDIN(T: SELF, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
        .eCONFIGURATION_DESIGN.CONFIGURATION)
      let _TEMP2 = _TEMP1.QUERY{ CD in 

          let _TEMP1 = SDAI.TYPEOF(CD.DESIGN, IS: ePRODUCT_DEFINITION_FORMATION.self)
          let _TEMP2 = /*runtime*/CD.DESIGN
          let _TEMP3 = /*runtime*/SDAI.FORCE_OPTIONAL(_TEMP2)?.GROUP_REF(ePRODUCT_DEFINITION_FORMATION.self)
          let _TEMP4 = /*runtime*/_TEMP3?.OF_PRODUCT
          let _TEMP5 = SDAI.USEDIN(T: _TEMP4, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
            .ePRODUCT_RELATED_PRODUCT_CATEGORY.PRODUCTS)
          let _TEMP6 = _TEMP5.QUERY{ PRPC in 

              let _TEMP1 = /*runtime*/PRPC.NAME
              let _TEMP2 = ([SDAI.AIE(SDAI.STRING("part")), 
                SDAI.AIE(SDAI.STRING("raw material")), 
                SDAI.AIE(SDAI.STRING("tool"))] as [SDAI.AggregationInitializerElement<SDAI.STRING>])
              let _TEMP3 = SDAI.aggregate(_TEMP2, contains: SDAI.STRING(fromGeneric: /*
                /*runtime*/SDAI.GENERIC*/_TEMP1))
              return _TEMP3 }
          let _TEMP7 = SDAI.SIZEOF(_TEMP6)
          let _TEMP8 = _TEMP7 > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
          let _TEMP9 = _TEMP1 && _TEMP8
          return _TEMP9 }
      let _TEMP3 = SDAI.SIZEOF(_TEMP2)
      let _TEMP4 = _TEMP3 <= SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      return _TEMP4
    }
    public static func WHERE_wr2(SELF: ePRODUCT_IDENTIFICATION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF, IS: eCONFIGURABLE_ITEM.self)
      let _TEMP2 =  !_TEMP1
      let _TEMP3 = SDAI.TYPEOF(SELF, IS: ePRODUCT_SPECIFICATION.self)
      let _TEMP4 = _TEMP2 .!=. _TEMP3
      return _TEMP4
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init() {
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 0
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      self.init( )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY product_identification
    SUBTYPE OF ( configuration_item, characterized_object );
      SELF\configuration_item.item_concept : product_class;
    WHERE
      wr1: ( SIZEOF( QUERY ( cd <* USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'CONFIGURATION_DESIGN.CONFIGURATION'  ) | ( ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT_DEFINITION_FORMATION'  IN TYPEOF( cd.
               design ) ) AND ( SIZEOF( QUERY ( prpc <* USEDIN( cd.design\product_definition_formation.
               of_product, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT_RELATED_PRODUCT_CATEGORY.'
               + 'PRODUCTS'  ) | ( prpc.name IN [ 'part', 'raw material', 'tool'] ) ) ) > 0 ) ) ) ) <= 1 );
      wr2: ( ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CONFIGURABLE_ITEM' IN TYPEOF( SELF ) ) ) 
               XOR ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT_SPECIFICATION' IN TYPEOF( SELF ) ) );
  END_ENTITY; -- product_identification (line:26350 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class ePRODUCT_IDENTIFICATION : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _product_identification.self
    }
    public let partialEntity: _product_identification

    //MARK: SUPERTYPES
    public let super_eCONFIGURATION_ITEM: eCONFIGURATION_ITEM 	// [1]
    public let super_eCHARACTERIZED_OBJECT: eCHARACTERIZED_OBJECT 	// [2]
    public var super_ePRODUCT_IDENTIFICATION: ePRODUCT_IDENTIFICATION { return self } 	// [3]

    //MARK: SUBTYPES
    public var sub_ePRODUCT_SPECIFICATION: ePRODUCT_SPECIFICATION? {	// [4]
      return self.complexEntity.entityReference(ePRODUCT_SPECIFICATION.self)
    }


    //MARK: ATTRIBUTES
    // DESCRIPTION: (2 AMBIGUOUS REFs)

    // NAME: (2 AMBIGUOUS REFs)

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eCONFIGURATION_ITEM`` )
    public var PURPOSE: tLABEL?  {
      get {
        return super_eCONFIGURATION_ITEM.partialEntity._purpose
      }
      set(newValue) {
        let partial = super_eCONFIGURATION_ITEM.partialEntity
        partial._purpose = newValue
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SELF( ``ePRODUCT_IDENTIFICATION`` )
    public var ITEM_CONCEPT: ePRODUCT_CLASS {
      get {
        return SDAI.UNWRAP( ePRODUCT_CLASS( super_eCONFIGURATION_ITEM.partialEntity._item_concept ) )
      }
      set(newValue) {
        let partial = super_eCONFIGURATION_ITEM.partialEntity
        partial._item_concept = SDAI.UNWRAP(
          ePRODUCT_CONCEPT(newValue))
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eCONFIGURATION_ITEM`` )
    public var ID: tIDENTIFIER {
      get {
        return SDAI.UNWRAP( super_eCONFIGURATION_ITEM.partialEntity._id )
      }
      set(newValue) {
        let partial = super_eCONFIGURATION_ITEM.partialEntity
        partial._id = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_product_identification.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eCONFIGURATION_ITEM.self) else { return nil }
      self.super_eCONFIGURATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eCHARACTERIZED_OBJECT.self) else { return nil }
      self.super_eCHARACTERIZED_OBJECT = super2

      super.init(complex: complexEntity)
    }

    public required convenience init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let entityRef = generic?.entityReference else { return nil }
      self.init(complex: entityRef.complexEntity)
    }

    public convenience init?<S: SDAISelectType>(_ select: S?) { self.init(possiblyFrom: select) }
    public convenience init?(_ complex: SDAI.ComplexEntity?) { self.init(complex: complex) }


    //MARK: WHERE RULE VALIDATION (ENTITY)
    public override class func validateWhereRules(instance:SDAI.EntityReference?, prefix:SDAI.WhereLabel) -> [SDAI.WhereLabel:SDAI.LOGICAL] {
      guard let instance = instance as? Self else { return [:] }

      let prefix2 = prefix + " \(instance)"

      var result = super.validateWhereRules(instance:instance, prefix:prefix2)
      result[prefix2 + " .WHERE_wr1"] = _product_identification.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _product_identification.WHERE_wr2(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "PRODUCT_IDENTIFICATION", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eCONFIGURATION_ITEM.self)
      entityDef.add(supertype: eCHARACTERIZED_OBJECT.self)
      entityDef.add(supertype: ePRODUCT_IDENTIFICATION.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "PURPOSE", keyPath: \ePRODUCT_IDENTIFICATION.PURPOSE, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ITEM_CONCEPT", keyPath: \ePRODUCT_IDENTIFICATION.ITEM_CONCEPT, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ID", keyPath: \ePRODUCT_IDENTIFICATION.ID, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
