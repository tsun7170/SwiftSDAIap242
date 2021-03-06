/* file: product_concept_relationship.swift 	 generated: Mon Jan  3 16:32:52 2022 */

/* This file was generated by the EXPRESS to Swift translator "exp2swift", 
    derived from STEPcode (formerly NIST's SCL).
 exp2swift version: v.1.0.1, derived from stepcode v0.8 as of 2019/11/23 
 WARNING: You probably don't want to edit it since your modifications 
    will be lost if exp2swift is used to regenerate it.
 */

 
import SwiftSDAIcore

extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF {
//MARK: -ENTITY DEFINITION in EXPRESS
/*

  ENTITY product_concept_relationship;
      name                      : label;
      description               : OPTIONAL text;
      relating_product_concept  : product_concept;
      related_product_concept   : product_concept;
  END_ENTITY; -- product_concept_relationship (line:26008 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  ENTITY(SELF)	product_concept_relationship
    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT

    ATTR:  relating_product_concept,	TYPE: product_concept -- EXPLICIT

    ATTR:  related_product_concept,	TYPE: product_concept -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _product_concept_relationship : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      ePRODUCT_CONCEPT_RELATIONSHIP.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _name: tLABEL // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _description: tTEXT?  // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _relating_product_concept: ePRODUCT_CONCEPT // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _related_product_concept: ePRODUCT_CONCEPT // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sCLASSIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sACTION_ITEMS.typeName)) // -> sCLASSIFICATION_ITEM
      members.insert(SDAI.STRING(sCHANGE_MANAGEMENT_OBJECT.typeName)) // -> sACTION_ITEMS
      members.insert(SDAI.STRING(sIR_USAGE_ITEM.typeName)) // -> sCLASSIFICATION_ITEM
      members.insert(SDAI.STRING(sMULTI_LANGUAGE_ATTRIBUTE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sIDENTIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sDESCRIPTION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sATTRIBUTE_LANGUAGE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sEFFECTIVITY_ITEM.typeName)) // -> Self
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._name.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._description?.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._relating_product_concept.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._related_product_concept.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._name.value.isValueEqualOptionally(to: rhs._name.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._description?.value.isValueEqualOptionally(to: rhs._description?.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._relating_product_concept.value.isValueEqualOptionally(to: rhs._relating_product_concept.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._related_product_concept.value.isValueEqualOptionally(to: rhs._related_product_concept.value, visited: &comppairs)	{
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
      if let comp = self._name.value.isValueEqualOptionally(to: rhs._name.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._description?.value.isValueEqualOptionally(to: rhs._description?.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._relating_product_concept.value.isValueEqualOptionally(to: rhs._relating_product_concept.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._related_product_concept.value.isValueEqualOptionally(to: rhs._related_product_concept.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(NAME: tLABEL, DESCRIPTION: tTEXT? , RELATING_PRODUCT_CONCEPT: ePRODUCT_CONCEPT, 
                RELATED_PRODUCT_CONCEPT: ePRODUCT_CONCEPT) {
      self._name = NAME
      self._description = DESCRIPTION
      self._relating_product_concept = RELATING_PRODUCT_CONCEPT
      self._related_product_concept = RELATED_PRODUCT_CONCEPT
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 4
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: tLABEL.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverOptionalParameter(as: tTEXT.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p2) = exchangeStructure.recoverRequiredParameter(as: ePRODUCT_CONCEPT.self, from: parameters[2])
      else { exchangeStructure.add(errorContext: "while recovering parameter #2 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p3) = exchangeStructure.recoverRequiredParameter(as: ePRODUCT_CONCEPT.self, from: parameters[3])
      else { exchangeStructure.add(errorContext: "while recovering parameter #3 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( NAME: p0, DESCRIPTION: p1, RELATING_PRODUCT_CONCEPT: p2, RELATED_PRODUCT_CONCEPT: p3 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY product_concept_relationship;
      name                      : label;
      description               : OPTIONAL text;
      relating_product_concept  : product_concept;
      related_product_concept   : product_concept;
  END_ENTITY; -- product_concept_relationship (line:26008 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class ePRODUCT_CONCEPT_RELATIONSHIP : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _product_concept_relationship.self
    }
    public let partialEntity: _product_concept_relationship

    //MARK: SUPERTYPES
    public var super_ePRODUCT_CONCEPT_RELATIONSHIP: ePRODUCT_CONCEPT_RELATIONSHIP { return self } 	// [1]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``ePRODUCT_CONCEPT_RELATIONSHIP`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        return self.partialEntity._description
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._description = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``ePRODUCT_CONCEPT_RELATIONSHIP`` )
    public var RELATING_PRODUCT_CONCEPT: ePRODUCT_CONCEPT {
      get {
        return SDAI.UNWRAP( self.partialEntity._relating_product_concept )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._relating_product_concept = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``ePRODUCT_CONCEPT_RELATIONSHIP`` )
    public var RELATED_PRODUCT_CONCEPT: ePRODUCT_CONCEPT {
      get {
        return SDAI.UNWRAP( self.partialEntity._related_product_concept )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._related_product_concept = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``ePRODUCT_CONCEPT_RELATIONSHIP`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( self.partialEntity._name )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_product_concept_relationship.self) else { return nil }
      self.partialEntity = partial

      super.init(complex: complexEntity)
    }

    public required convenience init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let entityRef = generic?.entityReference else { return nil }
      self.init(complex: entityRef.complexEntity)
    }

    public convenience init?<S: SDAISelectType>(_ select: S?) { self.init(possiblyFrom: select) }
    public convenience init?(_ complex: SDAI.ComplexEntity?) { self.init(complex: complex) }

    //SIMPLE ENTITY REFERENCE
    public convenience init?(_ partial:_product_concept_relationship) {
      let complex = SDAI.ComplexEntity(entities:[partial])
      self.init(complex: complex)
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "PRODUCT_CONCEPT_RELATIONSHIP", type: self, explicitAttributeCount: 4)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: ePRODUCT_CONCEPT_RELATIONSHIP.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \ePRODUCT_CONCEPT_RELATIONSHIP.DESCRIPTION, 
        kind: .explicitOptional, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "RELATING_PRODUCT_CONCEPT", keyPath: \ePRODUCT_CONCEPT_RELATIONSHIP.RELATING_PRODUCT_CONCEPT, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RELATED_PRODUCT_CONCEPT", keyPath: \ePRODUCT_CONCEPT_RELATIONSHIP.RELATED_PRODUCT_CONCEPT, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \ePRODUCT_CONCEPT_RELATIONSHIP.NAME, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
