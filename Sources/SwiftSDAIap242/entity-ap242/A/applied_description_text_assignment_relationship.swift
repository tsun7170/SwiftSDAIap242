/* file: applied_description_text_assignment_relationship.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY applied_description_text_assignment_relationship
    SUBTYPE OF ( description_text_assignment_relationship );
      SELF\description_text_assignment_relationship.related : applied_description_text_assignment;
      SELF\description_text_assignment_relationship.relating : applied_description_text_assignment;
  END_ENTITY; -- applied_description_text_assignment_relationship (line:7225 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	description_text_assignment_relationship
    ATTR:  id,	TYPE: OPTIONAL identifier -- EXPLICIT

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT

    ATTR:  relating,	TYPE: description_text_assignment -- EXPLICIT
      -- possibly overriden by
      *** ENTITY: applied_description_text_assignment_relationship,	TYPE: applied_description_text_assignment

    ATTR:  related,	TYPE: description_text_assignment -- EXPLICIT
      -- possibly overriden by
      *** ENTITY: applied_description_text_assignment_relationship,	TYPE: applied_description_text_assignment

    ATTR:  relation_type,	TYPE: STRING -- EXPLICIT


  ENTITY(SELF)	applied_description_text_assignment_relationship
    REDCR: related,	TYPE: applied_description_text_assignment -- EXPLICIT
      -- OVERRIDING ENTITY: description_text_assignment_relationship

    REDCR: relating,	TYPE: applied_description_text_assignment -- EXPLICIT
      -- OVERRIDING ENTITY: description_text_assignment_relationship


*/


//MARK: - Partial Entity
  public final class _applied_description_text_assignment_relationship : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eAPPLIED_DESCRIPTION_TEXT_ASSIGNMENT_RELATIONSHIP.self
    }

    //ATTRIBUTES
    /* override var _related: eAPPLIED_DESCRIPTION_TEXT_ASSIGNMENT	//EXPLICIT REDEFINITION(eDESCRIPTION_TEXT_ASSIGNMENT_RELATIONSHIP) */

    /* override var _relating: eAPPLIED_DESCRIPTION_TEXT_ASSIGNMENT	//EXPLICIT REDEFINITION(eDESCRIPTION_TEXT_ASSIGNMENT_RELATIONSHIP) */

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
      members.insert(SDAI.STRING(sSECURITY_CLASSIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sAPPROVAL_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sGENERAL_ORGANIZATIONAL_DATA_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sEVENT_OCCURRENCE_ITEM.typeName)) // -> sGENERAL_ORGANIZATIONAL_DATA_SELECT
      members.insert(SDAI.STRING(sDESCRIPTION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sDOCUMENT_REFERENCE_ITEM.typeName)) // -> Self
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
  ENTITY applied_description_text_assignment_relationship
    SUBTYPE OF ( description_text_assignment_relationship );
      SELF\description_text_assignment_relationship.related : applied_description_text_assignment;
      SELF\description_text_assignment_relationship.relating : applied_description_text_assignment;
  END_ENTITY; -- applied_description_text_assignment_relationship (line:7225 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eAPPLIED_DESCRIPTION_TEXT_ASSIGNMENT_RELATIONSHIP : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _applied_description_text_assignment_relationship.self
    }
    public let partialEntity: _applied_description_text_assignment_relationship

    //MARK: SUPERTYPES
    public let super_eDESCRIPTION_TEXT_ASSIGNMENT_RELATIONSHIP: eDESCRIPTION_TEXT_ASSIGNMENT_RELATIONSHIP 	// [1]
    public var super_eAPPLIED_DESCRIPTION_TEXT_ASSIGNMENT_RELATIONSHIP: eAPPLIED_DESCRIPTION_TEXT_ASSIGNMENT_RELATIONSHIP { return self } 	// [2]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eDESCRIPTION_TEXT_ASSIGNMENT_RELATIONSHIP`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        return super_eDESCRIPTION_TEXT_ASSIGNMENT_RELATIONSHIP.partialEntity._description
      }
      set(newValue) {
        let partial = super_eDESCRIPTION_TEXT_ASSIGNMENT_RELATIONSHIP.partialEntity
        partial._description = newValue
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SELF( ``eAPPLIED_DESCRIPTION_TEXT_ASSIGNMENT_RELATIONSHIP`` )
    public var RELATING: eAPPLIED_DESCRIPTION_TEXT_ASSIGNMENT {
      get {
        return SDAI.UNWRAP( eAPPLIED_DESCRIPTION_TEXT_ASSIGNMENT( super_eDESCRIPTION_TEXT_ASSIGNMENT_RELATIONSHIP
          .partialEntity._relating ) )
      }
      set(newValue) {
        let partial = super_eDESCRIPTION_TEXT_ASSIGNMENT_RELATIONSHIP.partialEntity
        partial._relating = SDAI.UNWRAP(
          eDESCRIPTION_TEXT_ASSIGNMENT(newValue))
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eDESCRIPTION_TEXT_ASSIGNMENT_RELATIONSHIP`` )
    public var RELATION_TYPE: SDAI.STRING {
      get {
        return SDAI.UNWRAP( super_eDESCRIPTION_TEXT_ASSIGNMENT_RELATIONSHIP.partialEntity._relation_type )
      }
      set(newValue) {
        let partial = super_eDESCRIPTION_TEXT_ASSIGNMENT_RELATIONSHIP.partialEntity
        partial._relation_type = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SELF( ``eAPPLIED_DESCRIPTION_TEXT_ASSIGNMENT_RELATIONSHIP`` )
    public var RELATED: eAPPLIED_DESCRIPTION_TEXT_ASSIGNMENT {
      get {
        return SDAI.UNWRAP( eAPPLIED_DESCRIPTION_TEXT_ASSIGNMENT( super_eDESCRIPTION_TEXT_ASSIGNMENT_RELATIONSHIP
          .partialEntity._related ) )
      }
      set(newValue) {
        let partial = super_eDESCRIPTION_TEXT_ASSIGNMENT_RELATIONSHIP.partialEntity
        partial._related = SDAI.UNWRAP(
          eDESCRIPTION_TEXT_ASSIGNMENT(newValue))
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eDESCRIPTION_TEXT_ASSIGNMENT_RELATIONSHIP`` )
    public var ID: tIDENTIFIER?  {
      get {
        return super_eDESCRIPTION_TEXT_ASSIGNMENT_RELATIONSHIP.partialEntity._id
      }
      set(newValue) {
        let partial = super_eDESCRIPTION_TEXT_ASSIGNMENT_RELATIONSHIP.partialEntity
        partial._id = newValue
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_applied_description_text_assignment_relationship.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eDESCRIPTION_TEXT_ASSIGNMENT_RELATIONSHIP.self) else { return nil }
      self.super_eDESCRIPTION_TEXT_ASSIGNMENT_RELATIONSHIP = super1

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "APPLIED_DESCRIPTION_TEXT_ASSIGNMENT_RELATIONSHIP", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eDESCRIPTION_TEXT_ASSIGNMENT_RELATIONSHIP.self)
      entityDef.add(supertype: eAPPLIED_DESCRIPTION_TEXT_ASSIGNMENT_RELATIONSHIP.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eAPPLIED_DESCRIPTION_TEXT_ASSIGNMENT_RELATIONSHIP.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "RELATING", keyPath: \eAPPLIED_DESCRIPTION_TEXT_ASSIGNMENT_RELATIONSHIP.RELATING, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RELATION_TYPE", keyPath: \eAPPLIED_DESCRIPTION_TEXT_ASSIGNMENT_RELATIONSHIP.RELATION_TYPE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "RELATED", keyPath: \eAPPLIED_DESCRIPTION_TEXT_ASSIGNMENT_RELATIONSHIP.RELATED, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ID", keyPath: \eAPPLIED_DESCRIPTION_TEXT_ASSIGNMENT_RELATIONSHIP.ID, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
