/* file: partial_document_with_structured_text_representation_assignment.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY partial_document_with_structured_text_representation_assignment
    SUBTYPE OF ( applied_document_usage_constraint_assignment, characterized_object );
  END_ENTITY; -- partial_document_with_structured_text_representation_assignment (line:23611 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	document_usage_constraint_assignment
    ATTR:  assigned_document_usage,	TYPE: document_usage_constraint -- EXPLICIT

    ATTR:  role,	TYPE: document_usage_role -- EXPLICIT


  SUPER- ENTITY(2)	applied_document_usage_constraint_assignment
    ATTR:  items,	TYPE: SET [1 : ?] OF document_reference_item -- EXPLICIT


  SUPER- ENTITY(3)	characterized_object
    ATTR:  name,	TYPE: label -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: shape_feature_definition_element_relationship,	TYPE: label	(as DERIVED)
          ENTITY: shape_feature_fit_relationship,	TYPE: label	(as DERIVED)
          ENTITY: characterized_representation,	TYPE: label	(as DERIVED)
          ENTITY: shape_feature_definition_relationship,	TYPE: label	(as DERIVED)

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: shape_feature_definition_element_relationship,	TYPE: text	(as DERIVED)
          ENTITY: shape_feature_fit_relationship,	TYPE: text	(as DERIVED)
          ENTITY: characterized_representation,	TYPE: text	(as DERIVED)
          ENTITY: shape_feature_definition_relationship,	TYPE: text	(as DERIVED)


  ENTITY(SELF)	partial_document_with_structured_text_representation_assignment
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _partial_document_with_structured_text_representation_assignment : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      ePARTIAL_DOCUMENT_WITH_STRUCTURED_TEXT_REPRESENTATION_ASSIGNMENT.self
    }

    //ATTRIBUTES
    // (no local attributes)

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
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
  ENTITY partial_document_with_structured_text_representation_assignment
    SUBTYPE OF ( applied_document_usage_constraint_assignment, characterized_object );
  END_ENTITY; -- partial_document_with_structured_text_representation_assignment (line:23611 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class ePARTIAL_DOCUMENT_WITH_STRUCTURED_TEXT_REPRESENTATION_ASSIGNMENT : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _partial_document_with_structured_text_representation_assignment.self
    }
    public let partialEntity: _partial_document_with_structured_text_representation_assignment

    //MARK: SUPERTYPES
    public let super_eDOCUMENT_USAGE_CONSTRAINT_ASSIGNMENT: eDOCUMENT_USAGE_CONSTRAINT_ASSIGNMENT 	// [1]
    public let super_eAPPLIED_DOCUMENT_USAGE_CONSTRAINT_ASSIGNMENT: eAPPLIED_DOCUMENT_USAGE_CONSTRAINT_ASSIGNMENT 	// [2]
    public let super_eCHARACTERIZED_OBJECT: eCHARACTERIZED_OBJECT 	// [3]
    public var super_ePARTIAL_DOCUMENT_WITH_STRUCTURED_TEXT_REPRESENTATION_ASSIGNMENT: ePARTIAL_DOCUMENT_WITH_STRUCTURED_TEXT_REPRESENTATION_ASSIGNMENT { return self } 	// [4]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eDOCUMENT_USAGE_CONSTRAINT_ASSIGNMENT`` )
    public var ASSIGNED_DOCUMENT_USAGE: eDOCUMENT_USAGE_CONSTRAINT {
      get {
        return SDAI.UNWRAP( super_eDOCUMENT_USAGE_CONSTRAINT_ASSIGNMENT.partialEntity
          ._assigned_document_usage )
      }
      set(newValue) {
        let partial = super_eDOCUMENT_USAGE_CONSTRAINT_ASSIGNMENT.partialEntity
        partial._assigned_document_usage = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT(DYNAMIC)__ attribute
    /// - origin: SUPER( ``eCHARACTERIZED_OBJECT`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        if let resolved = _characterized_object._description__provider(complex: self.complexEntity) {
          let value = resolved._description__getter(complex: self.complexEntity)
          return value
        }
        else {
          return super_eCHARACTERIZED_OBJECT.partialEntity._description
        }
      }
      set(newValue) {
        if let _ = _characterized_object._description__provider(complex: self.complexEntity) { return }

        let partial = super_eCHARACTERIZED_OBJECT.partialEntity
        partial._description = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eDOCUMENT_USAGE_CONSTRAINT_ASSIGNMENT`` )
    public var ROLE: eDOCUMENT_USAGE_ROLE {
      get {
        return SDAI.UNWRAP( super_eDOCUMENT_USAGE_CONSTRAINT_ASSIGNMENT.partialEntity._role )
      }
      set(newValue) {
        let partial = super_eDOCUMENT_USAGE_CONSTRAINT_ASSIGNMENT.partialEntity
        partial._role = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eAPPLIED_DOCUMENT_USAGE_CONSTRAINT_ASSIGNMENT`` )
    public var ITEMS: SDAI.SET<sDOCUMENT_REFERENCE_ITEM>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( super_eAPPLIED_DOCUMENT_USAGE_CONSTRAINT_ASSIGNMENT.partialEntity._items )
      }
      set(newValue) {
        let partial = super_eAPPLIED_DOCUMENT_USAGE_CONSTRAINT_ASSIGNMENT.partialEntity
        partial._items = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT(DYNAMIC)__ attribute
    /// - origin: SUPER( ``eCHARACTERIZED_OBJECT`` )
    public var NAME: tLABEL {
      get {
        if let resolved = _characterized_object._name__provider(complex: self.complexEntity) {
          let value = resolved._name__getter(complex: self.complexEntity)
          return value
        }
        else {
          return SDAI.UNWRAP( super_eCHARACTERIZED_OBJECT.partialEntity._name )
        }
      }
      set(newValue) {
        if let _ = _characterized_object._name__provider(complex: self.complexEntity) { return }

        let partial = super_eCHARACTERIZED_OBJECT.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_partial_document_with_structured_text_representation_assignment.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eDOCUMENT_USAGE_CONSTRAINT_ASSIGNMENT.self) else { return nil }
      self.super_eDOCUMENT_USAGE_CONSTRAINT_ASSIGNMENT = super1

      guard let super2 = complexEntity?.entityReference(eAPPLIED_DOCUMENT_USAGE_CONSTRAINT_ASSIGNMENT.self) else { return nil }
      self.super_eAPPLIED_DOCUMENT_USAGE_CONSTRAINT_ASSIGNMENT = super2

      guard let super3 = complexEntity?.entityReference(eCHARACTERIZED_OBJECT.self) else { return nil }
      self.super_eCHARACTERIZED_OBJECT = super3

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "PARTIAL_DOCUMENT_WITH_STRUCTURED_TEXT_REPRESENTATION_ASSIGNMENT", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eDOCUMENT_USAGE_CONSTRAINT_ASSIGNMENT.self)
      entityDef.add(supertype: eAPPLIED_DOCUMENT_USAGE_CONSTRAINT_ASSIGNMENT.self)
      entityDef.add(supertype: eCHARACTERIZED_OBJECT.self)
      entityDef.add(supertype: ePARTIAL_DOCUMENT_WITH_STRUCTURED_TEXT_REPRESENTATION_ASSIGNMENT.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "ASSIGNED_DOCUMENT_USAGE", keyPath: \ePARTIAL_DOCUMENT_WITH_STRUCTURED_TEXT_REPRESENTATION_ASSIGNMENT.ASSIGNED_DOCUMENT_USAGE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \ePARTIAL_DOCUMENT_WITH_STRUCTURED_TEXT_REPRESENTATION_ASSIGNMENT.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ROLE", keyPath: \ePARTIAL_DOCUMENT_WITH_STRUCTURED_TEXT_REPRESENTATION_ASSIGNMENT.ROLE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ITEMS", keyPath: \ePARTIAL_DOCUMENT_WITH_STRUCTURED_TEXT_REPRESENTATION_ASSIGNMENT.ITEMS, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \ePARTIAL_DOCUMENT_WITH_STRUCTURED_TEXT_REPRESENTATION_ASSIGNMENT.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
