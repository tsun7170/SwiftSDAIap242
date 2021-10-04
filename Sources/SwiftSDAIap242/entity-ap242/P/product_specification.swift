/* file: product_specification.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY product_specification
    SUBTYPE OF ( product_identification, configurable_item );
  END_ENTITY; -- product_specification (line:26433 file:ap242ed2_mim_lf_v1.101.TY.exp)

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


  SUPER- ENTITY(3)	product_identification
    REDCR: item_concept,	TYPE: product_class -- EXPLICIT
      -- OVERRIDING ENTITY: configuration_item


  SUPER- ENTITY(4)	configurable_item
    ATTR:  item_concept_feature,	TYPE: SET [1 : ?] OF product_concept_feature_association -- EXPLICIT


  ENTITY(SELF)	product_specification
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _product_specification : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      ePRODUCT_SPECIFICATION.self
    }

    //ATTRIBUTES
    // (no local attributes)

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sMULTI_LANGUAGE_ATTRIBUTE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sEXTERNAL_IDENTIFICATION_ITEM.typeName)) // -> Self
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
  ENTITY product_specification
    SUBTYPE OF ( product_identification, configurable_item );
  END_ENTITY; -- product_specification (line:26433 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class ePRODUCT_SPECIFICATION : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _product_specification.self
    }
    public let partialEntity: _product_specification

    //MARK: SUPERTYPES
    public let super_eCONFIGURATION_ITEM: eCONFIGURATION_ITEM 	// [1]
    public let super_eCHARACTERIZED_OBJECT: eCHARACTERIZED_OBJECT 	// [2]
    public let super_ePRODUCT_IDENTIFICATION: ePRODUCT_IDENTIFICATION 	// [3]
    public let super_eCONFIGURABLE_ITEM: eCONFIGURABLE_ITEM 	// [4]
    public var super_ePRODUCT_SPECIFICATION: ePRODUCT_SPECIFICATION { return self } 	// [5]

    //MARK: SUBTYPES

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

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eCONFIGURABLE_ITEM`` )
    public var ITEM_CONCEPT_FEATURE: SDAI.SET<ePRODUCT_CONCEPT_FEATURE_ASSOCIATION>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( super_eCONFIGURABLE_ITEM.partialEntity._item_concept_feature )
      }
      set(newValue) {
        let partial = super_eCONFIGURABLE_ITEM.partialEntity
        partial._item_concept_feature = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SUPER( ``ePRODUCT_IDENTIFICATION`` )
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
      guard let partial = complexEntity?.partialEntityInstance(_product_specification.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eCONFIGURATION_ITEM.self) else { return nil }
      self.super_eCONFIGURATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eCHARACTERIZED_OBJECT.self) else { return nil }
      self.super_eCHARACTERIZED_OBJECT = super2

      guard let super3 = complexEntity?.entityReference(ePRODUCT_IDENTIFICATION.self) else { return nil }
      self.super_ePRODUCT_IDENTIFICATION = super3

      guard let super4 = complexEntity?.entityReference(eCONFIGURABLE_ITEM.self) else { return nil }
      self.super_eCONFIGURABLE_ITEM = super4

      super.init(complex: complexEntity)
    }

    public required convenience init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let entityRef = generic?.entityReference else { return nil }
      self.init(complex: entityRef.complexEntity)
    }

    public convenience init?<S: SDAISelectType>(_ select: S?) { self.init(possiblyFrom: select) }
    public convenience init?(_ complex: SDAI.ComplexEntity?) { self.init(complex: complex) }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "PRODUCT_SPECIFICATION", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eCONFIGURATION_ITEM.self)
      entityDef.add(supertype: eCHARACTERIZED_OBJECT.self)
      entityDef.add(supertype: ePRODUCT_IDENTIFICATION.self)
      entityDef.add(supertype: eCONFIGURABLE_ITEM.self)
      entityDef.add(supertype: ePRODUCT_SPECIFICATION.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "PURPOSE", keyPath: \ePRODUCT_SPECIFICATION.PURPOSE, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ITEM_CONCEPT_FEATURE", keyPath: \ePRODUCT_SPECIFICATION.ITEM_CONCEPT_FEATURE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ITEM_CONCEPT", keyPath: \ePRODUCT_SPECIFICATION.ITEM_CONCEPT, 
        kind: .explicitRedeclaring, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ID", keyPath: \ePRODUCT_SPECIFICATION.ID, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}