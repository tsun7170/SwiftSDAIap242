/* file: current_change_element_assignment.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY current_change_element_assignment
    SUBTYPE OF ( group_assignment );
      SELF\group_assignment.assigned_group : current_element_assignment_select;
      items                           : SET [1 : ?] OF change_management_object;
  END_ENTITY; -- current_change_element_assignment (line:11006 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	group_assignment
    ATTR:  assigned_group,	TYPE: group -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: product_definition_group_assignment,	TYPE: product_definition_element_relationship
          ENTITY: assigned_requirement,	TYPE: requirement_assignment
      *** ENTITY: current_change_element_assignment,	TYPE: current_element_assignment_select
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


  ENTITY(SELF)	current_change_element_assignment
    REDCR: assigned_group,	TYPE: current_element_assignment_select -- EXPLICIT
      -- OVERRIDING ENTITY: group_assignment

    ATTR:  items,	TYPE: SET [1 : ?] OF change_management_object -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _current_change_element_assignment : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eCURRENT_CHANGE_ELEMENT_ASSIGNMENT.self
    }

    //ATTRIBUTES
    /* override var _assigned_group: sCURRENT_ELEMENT_ASSIGNMENT_SELECT	//EXPLICIT REDEFINITION(eGROUP_ASSIGNMENT) */

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _items: SDAI.SET<sCHANGE_MANAGEMENT_OBJECT>/*[1:nil]*/  // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._items.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._items.value.isValueEqualOptionally(to: rhs._items.value, visited: &comppairs)	{
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
      if let comp = self._items.value.isValueEqualOptionally(to: rhs._items.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(ITEMS: SDAI.SET<sCHANGE_MANAGEMENT_OBJECT>/*[1:nil]*/ ) {
      self._items = ITEMS
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: SDAI.SET<
        sCHANGE_MANAGEMENT_OBJECT>.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( ITEMS: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY current_change_element_assignment
    SUBTYPE OF ( group_assignment );
      SELF\group_assignment.assigned_group : current_element_assignment_select;
      items                           : SET [1 : ?] OF change_management_object;
  END_ENTITY; -- current_change_element_assignment (line:11006 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eCURRENT_CHANGE_ELEMENT_ASSIGNMENT : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _current_change_element_assignment.self
    }
    public let partialEntity: _current_change_element_assignment

    //MARK: SUPERTYPES
    public let super_eGROUP_ASSIGNMENT: eGROUP_ASSIGNMENT 	// [1]
    public var super_eCURRENT_CHANGE_ELEMENT_ASSIGNMENT: eCURRENT_CHANGE_ELEMENT_ASSIGNMENT { return self } 	// [2]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
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
    /// - origin: SELF( ``eCURRENT_CHANGE_ELEMENT_ASSIGNMENT`` )
    public var ITEMS: SDAI.SET<sCHANGE_MANAGEMENT_OBJECT>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._items )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._items = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT REDEF(DYNAMIC)__ attribute
    /// - origin: SELF( ``eCURRENT_CHANGE_ELEMENT_ASSIGNMENT`` )
    public var ASSIGNED_GROUP: sCURRENT_ELEMENT_ASSIGNMENT_SELECT {
      get {
        if let resolved = _group_assignment._assigned_group__provider(complex: self.complexEntity) {
          let value = SDAI.UNWRAP( sCURRENT_ELEMENT_ASSIGNMENT_SELECT(resolved._assigned_group__getter(
            complex: self.complexEntity)) )
          return value
        }
        else {
          return SDAI.UNWRAP( sCURRENT_ELEMENT_ASSIGNMENT_SELECT(super_eGROUP_ASSIGNMENT.partialEntity
            ._assigned_group) )
        }
      }
      set(newValue) {
        if let _ = _group_assignment._assigned_group__provider(complex: self.complexEntity) { return }

        let partial = super_eGROUP_ASSIGNMENT.partialEntity
        partial._assigned_group = SDAI.UNWRAP(
          eGROUP(newValue))
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_current_change_element_assignment.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eGROUP_ASSIGNMENT.self) else { return nil }
      self.super_eGROUP_ASSIGNMENT = super1

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "CURRENT_CHANGE_ELEMENT_ASSIGNMENT", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eGROUP_ASSIGNMENT.self)
      entityDef.add(supertype: eCURRENT_CHANGE_ELEMENT_ASSIGNMENT.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "ROLE", keyPath: \eCURRENT_CHANGE_ELEMENT_ASSIGNMENT.ROLE, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ITEMS", keyPath: \eCURRENT_CHANGE_ELEMENT_ASSIGNMENT.ITEMS, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ASSIGNED_GROUP", keyPath: \eCURRENT_CHANGE_ELEMENT_ASSIGNMENT.ASSIGNED_GROUP, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
