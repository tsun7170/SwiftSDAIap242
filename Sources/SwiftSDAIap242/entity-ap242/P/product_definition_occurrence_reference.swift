/* file: product_definition_occurrence_reference.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY product_definition_occurrence_reference
    SUBTYPE OF ( product_definition_reference );
      product_occurrence_id  : identifier;
  END_ENTITY; -- product_definition_occurrence_reference (line:26134 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	generic_product_definition_reference
    ATTR:  source,	TYPE: external_source -- EXPLICIT


  SUPER- ENTITY(2)	product_definition_reference
    ATTR:  product_id,	TYPE: identifier -- EXPLICIT

    ATTR:  product_definition_formation_id,	TYPE: identifier -- EXPLICIT

    ATTR:  product_definition_id,	TYPE: identifier -- EXPLICIT

    ATTR:  id_owning_organization_name,	TYPE: OPTIONAL label -- EXPLICIT


  ENTITY(SELF)	product_definition_occurrence_reference
    ATTR:  product_occurrence_id,	TYPE: identifier -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _product_definition_occurrence_reference : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      ePRODUCT_DEFINITION_OCCURRENCE_REFERENCE.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _product_occurrence_id: tIDENTIFIER // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sEXTERNAL_IDENTIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sIDENTIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sACTION_ITEMS.typeName)) // -> sIDENTIFICATION_ITEM
      members.insert(SDAI.STRING(sCHANGE_MANAGEMENT_OBJECT.typeName)) // -> sACTION_ITEMS
      members.insert(SDAI.STRING(sIR_USAGE_ITEM.typeName)) // -> sIDENTIFICATION_ITEM
      members.insert(SDAI.STRING(sPRODUCT_DEFINITION_OCCURRENCE_OR_REFERENCE.typeName)) // -> Self
      members.insert(SDAI.STRING(sGENERAL_ORGANIZATIONAL_DATA_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sEVENT_OCCURRENCE_ITEM.typeName)) // -> sGENERAL_ORGANIZATIONAL_DATA_SELECT
      members.insert(SDAI.STRING(sPROJECT_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sCERTIFICATION_ITEM.typeName)) // -> Self
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._product_occurrence_id.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._product_occurrence_id.value.isValueEqualOptionally(to: rhs._product_occurrence_id.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      return true
    }

    public override func isValueEqualOptionally(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      guard let rhs = rhs as? Self else { return false }
      var result: Bool? = true
      if let comp = super.isValueEqualOptionally(to: rhs, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._product_occurrence_id.value.isValueEqualOptionally(to: rhs._product_occurrence_id.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(PRODUCT_OCCURRENCE_ID: tIDENTIFIER) {
      self._product_occurrence_id = PRODUCT_OCCURRENCE_ID
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: tIDENTIFIER.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( PRODUCT_OCCURRENCE_ID: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY product_definition_occurrence_reference
    SUBTYPE OF ( product_definition_reference );
      product_occurrence_id  : identifier;
  END_ENTITY; -- product_definition_occurrence_reference (line:26134 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class ePRODUCT_DEFINITION_OCCURRENCE_REFERENCE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _product_definition_occurrence_reference.self
    }
    public let partialEntity: _product_definition_occurrence_reference

    //MARK: SUPERTYPES
    public let super_eGENERIC_PRODUCT_DEFINITION_REFERENCE: eGENERIC_PRODUCT_DEFINITION_REFERENCE 	// [1]
    public let super_ePRODUCT_DEFINITION_REFERENCE: ePRODUCT_DEFINITION_REFERENCE 	// [2]
    public var super_ePRODUCT_DEFINITION_OCCURRENCE_REFERENCE: ePRODUCT_DEFINITION_OCCURRENCE_REFERENCE { return self } 	// [3]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``ePRODUCT_DEFINITION_OCCURRENCE_REFERENCE`` )
    public var PRODUCT_OCCURRENCE_ID: tIDENTIFIER {
      get {
        return SDAI.UNWRAP( self.partialEntity._product_occurrence_id )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._product_occurrence_id = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``ePRODUCT_DEFINITION_REFERENCE`` )
    public var PRODUCT_DEFINITION_ID: tIDENTIFIER {
      get {
        return SDAI.UNWRAP( super_ePRODUCT_DEFINITION_REFERENCE.partialEntity._product_definition_id )
      }
      set(newValue) {
        let partial = super_ePRODUCT_DEFINITION_REFERENCE.partialEntity
        partial._product_definition_id = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``ePRODUCT_DEFINITION_REFERENCE`` )
    public var PRODUCT_DEFINITION_FORMATION_ID: tIDENTIFIER {
      get {
        return SDAI.UNWRAP( super_ePRODUCT_DEFINITION_REFERENCE.partialEntity
          ._product_definition_formation_id )
      }
      set(newValue) {
        let partial = super_ePRODUCT_DEFINITION_REFERENCE.partialEntity
        partial._product_definition_formation_id = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``ePRODUCT_DEFINITION_REFERENCE`` )
    public var ID_OWNING_ORGANIZATION_NAME: tLABEL?  {
      get {
        return super_ePRODUCT_DEFINITION_REFERENCE.partialEntity._id_owning_organization_name
      }
      set(newValue) {
        let partial = super_ePRODUCT_DEFINITION_REFERENCE.partialEntity
        partial._id_owning_organization_name = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``ePRODUCT_DEFINITION_REFERENCE`` )
    public var PRODUCT_ID: tIDENTIFIER {
      get {
        return SDAI.UNWRAP( super_ePRODUCT_DEFINITION_REFERENCE.partialEntity._product_id )
      }
      set(newValue) {
        let partial = super_ePRODUCT_DEFINITION_REFERENCE.partialEntity
        partial._product_id = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eGENERIC_PRODUCT_DEFINITION_REFERENCE`` )
    public var SOURCE: eEXTERNAL_SOURCE {
      get {
        return SDAI.UNWRAP( super_eGENERIC_PRODUCT_DEFINITION_REFERENCE.partialEntity._source )
      }
      set(newValue) {
        let partial = super_eGENERIC_PRODUCT_DEFINITION_REFERENCE.partialEntity
        partial._source = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_product_definition_occurrence_reference.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eGENERIC_PRODUCT_DEFINITION_REFERENCE.self) else { return nil }
      self.super_eGENERIC_PRODUCT_DEFINITION_REFERENCE = super1

      guard let super2 = complexEntity?.entityReference(ePRODUCT_DEFINITION_REFERENCE.self) else { return nil }
      self.super_ePRODUCT_DEFINITION_REFERENCE = super2

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "PRODUCT_DEFINITION_OCCURRENCE_REFERENCE", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eGENERIC_PRODUCT_DEFINITION_REFERENCE.self)
      entityDef.add(supertype: ePRODUCT_DEFINITION_REFERENCE.self)
      entityDef.add(supertype: ePRODUCT_DEFINITION_OCCURRENCE_REFERENCE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "PRODUCT_OCCURRENCE_ID", keyPath: \ePRODUCT_DEFINITION_OCCURRENCE_REFERENCE.PRODUCT_OCCURRENCE_ID, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "PRODUCT_DEFINITION_ID", keyPath: \ePRODUCT_DEFINITION_OCCURRENCE_REFERENCE.PRODUCT_DEFINITION_ID, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "PRODUCT_DEFINITION_FORMATION_ID", keyPath: \ePRODUCT_DEFINITION_OCCURRENCE_REFERENCE.PRODUCT_DEFINITION_FORMATION_ID, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ID_OWNING_ORGANIZATION_NAME", keyPath: \ePRODUCT_DEFINITION_OCCURRENCE_REFERENCE.ID_OWNING_ORGANIZATION_NAME, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "PRODUCT_ID", keyPath: \ePRODUCT_DEFINITION_OCCURRENCE_REFERENCE.PRODUCT_ID, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SOURCE", keyPath: \ePRODUCT_DEFINITION_OCCURRENCE_REFERENCE.SOURCE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}