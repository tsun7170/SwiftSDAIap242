/* file: product_group_membership.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY product_group_membership
    SUBTYPE OF ( characterized_object, group_assignment );
      member  : product_select;
  END_ENTITY; -- product_group_membership (line:26318 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	characterized_object
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


  SUPER- ENTITY(2)	group_assignment
    ATTR:  assigned_group,	TYPE: group -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: product_definition_group_assignment,	TYPE: product_definition_element_relationship
          ENTITY: assigned_requirement,	TYPE: requirement_assignment
          ENTITY: current_change_element_assignment,	TYPE: current_element_assignment_select
          ENTITY: mating_material_items,	TYPE: mating_material
          ENTITY: previous_change_element_assignment,	TYPE: previous_element_assignment_select
          ENTITY: document_identifier_assignment,	TYPE: document_identifier
          ENTITY: product_group_membership_rules,	TYPE: product_group
          ENTITY: mated_part_relationship,	TYPE: mated_part_relationship	(as DERIVED)
          ENTITY: assigned_analysis,	TYPE: analysis_assignment
          ENTITY: product_concept_feature_category_usage,	TYPE: product_concept_feature_category
          ENTITY: source_for_requirement,	TYPE: requirement_source
          ENTITY: sourced_requirement,	TYPE: requirement_source
          ENTITY: containing_message,	TYPE: message_contents_group
          ENTITY: product_group_attribute_set,	TYPE: product_group
          ENTITY: satisfied_requirement,	TYPE: satisfies_requirement
          ENTITY: message_contents_assignment,	TYPE: message_contents_group
          ENTITY: breakdown_element_group_assignment,	TYPE: product_definition_element_relationship
          ENTITY: satisfying_item,	TYPE: satisfies_requirement
          ENTITY: analysis_item,	TYPE: analysis_assignment
          ENTITY: product_group_rule_assignment,	TYPE: product_group_rules
          ENTITY: product_group_attribute_assignment,	TYPE: product_group_attributes
          ENTITY: change_group_assignment,	TYPE: change_group
          ENTITY: requirement_assigned_object,	TYPE: requirement_assignment

    ATTR:  role,	TYPE: object_role -- DERIVED
      := get_role( SELF )


  ENTITY(SELF)	product_group_membership
    ATTR:  member,	TYPE: product_select -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _product_group_membership : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      ePRODUCT_GROUP_MEMBERSHIP.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _member: sPRODUCT_SELECT // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sDATE_AND_TIME_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sCLASSIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sACTION_ITEMS.typeName)) // -> sCLASSIFICATION_ITEM
      members.insert(SDAI.STRING(sCHANGE_MANAGEMENT_OBJECT.typeName)) // -> sACTION_ITEMS
      members.insert(SDAI.STRING(sIR_USAGE_ITEM.typeName)) // -> sCLASSIFICATION_ITEM
      members.insert(SDAI.STRING(sIDENTIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sSECURITY_CLASSIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sDATE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sACTION_METHOD_ITEMS.typeName)) // -> Self
      members.insert(SDAI.STRING(sREQUIREMENT_ASSIGNED_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sREQUIREMENT_SATISFACTION_ITEM.typeName)) // -> sREQUIREMENT_ASSIGNED_ITEM
      members.insert(SDAI.STRING(sPERSON_AND_ORGANIZATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sORGANIZATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sDESCRIPTION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sPROJECT_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sDOCUMENT_REFERENCE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sGROUPABLE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sEFFECTIVITY_ITEM.typeName)) // -> Self
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._member.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._member.value.isValueEqualOptionally(to: rhs._member.value, visited: &comppairs)	{
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
      if let comp = self._member.value.isValueEqualOptionally(to: rhs._member.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(MEMBER: sPRODUCT_SELECT) {
      self._member = MEMBER
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: sPRODUCT_SELECT.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( MEMBER: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY product_group_membership
    SUBTYPE OF ( characterized_object, group_assignment );
      member  : product_select;
  END_ENTITY; -- product_group_membership (line:26318 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class ePRODUCT_GROUP_MEMBERSHIP : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _product_group_membership.self
    }
    public let partialEntity: _product_group_membership

    //MARK: SUPERTYPES
    public let super_eCHARACTERIZED_OBJECT: eCHARACTERIZED_OBJECT 	// [1]
    public let super_eGROUP_ASSIGNMENT: eGROUP_ASSIGNMENT 	// [2]
    public var super_ePRODUCT_GROUP_MEMBERSHIP: ePRODUCT_GROUP_MEMBERSHIP { return self } 	// [3]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
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

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eGROUP_ASSIGNMENT`` )
    public var ROLE: eOBJECT_ROLE?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"ROLE") {
          return cached.value as! eOBJECT_ROLE? 
        }
        let origin = super_eGROUP_ASSIGNMENT
        let value = eOBJECT_ROLE(origin.partialEntity._role__getter(SELF: origin))
        updateCache(derivedAttributeName:"ROLE", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``ePRODUCT_GROUP_MEMBERSHIP`` )
    public var MEMBER: sPRODUCT_SELECT {
      get {
        return SDAI.UNWRAP( self.partialEntity._member )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._member = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT(DYNAMIC)__ attribute
    /// - origin: SUPER( ``eGROUP_ASSIGNMENT`` )
    public var ASSIGNED_GROUP: eGROUP {
      get {
        if let resolved = _group_assignment._assigned_group__provider(complex: self.complexEntity) {
          let value = resolved._assigned_group__getter(complex: self.complexEntity)
          return value
        }
        else {
          return SDAI.UNWRAP( super_eGROUP_ASSIGNMENT.partialEntity._assigned_group )
        }
      }
      set(newValue) {
        if let _ = _group_assignment._assigned_group__provider(complex: self.complexEntity) { return }

        let partial = super_eGROUP_ASSIGNMENT.partialEntity
        partial._assigned_group = SDAI.UNWRAP(newValue)
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
      guard let partial = complexEntity?.partialEntityInstance(_product_group_membership.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eCHARACTERIZED_OBJECT.self) else { return nil }
      self.super_eCHARACTERIZED_OBJECT = super1

      guard let super2 = complexEntity?.entityReference(eGROUP_ASSIGNMENT.self) else { return nil }
      self.super_eGROUP_ASSIGNMENT = super2

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "PRODUCT_GROUP_MEMBERSHIP", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eCHARACTERIZED_OBJECT.self)
      entityDef.add(supertype: eGROUP_ASSIGNMENT.self)
      entityDef.add(supertype: ePRODUCT_GROUP_MEMBERSHIP.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \ePRODUCT_GROUP_MEMBERSHIP.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ROLE", keyPath: \ePRODUCT_GROUP_MEMBERSHIP.ROLE, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "MEMBER", keyPath: \ePRODUCT_GROUP_MEMBERSHIP.MEMBER, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ASSIGNED_GROUP", keyPath: \ePRODUCT_GROUP_MEMBERSHIP.ASSIGNED_GROUP, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \ePRODUCT_GROUP_MEMBERSHIP.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
