/* file: state_definition_to_state_assignment_relationship.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY state_definition_to_state_assignment_relationship
    SUBTYPE OF ( ascribable_state_relationship );
      relation_type  : STRING;
    WHERE
      wr1: acyclic_state_definition_to_state_assignment_relationship( SELF, [SELF\
               ascribable_state_relationship.related_ascribable_state], 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'STATE_DEFINITION_TO_STATE_ASSIGNMENT_RELATIONSHIP'  );
  END_ENTITY; -- state_definition_to_state_assignment_relationship (line:30669 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	ascribable_state_relationship
    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT

    ATTR:  relating_ascribable_state,	TYPE: ascribable_state -- EXPLICIT

    ATTR:  related_ascribable_state,	TYPE: ascribable_state -- EXPLICIT

    ATTR:  id,	TYPE: identifier -- DERIVED
      := get_id_value( SELF )


  ENTITY(SELF)	state_definition_to_state_assignment_relationship
    ATTR:  relation_type,	TYPE: STRING -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _state_definition_to_state_assignment_relationship : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eSTATE_DEFINITION_TO_STATE_ASSIGNMENT_RELATIONSHIP.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _relation_type: SDAI.STRING // PLAIN EXPLICIT ATTRIBUTE

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
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._relation_type.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._relation_type.value.isValueEqualOptionally(to: rhs._relation_type.value, visited: &comppairs)	{
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
      if let comp = self._relation_type.value.isValueEqualOptionally(to: rhs._relation_type.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eSTATE_DEFINITION_TO_STATE_ASSIGNMENT_RELATIONSHIP?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.GROUP_REF(eASCRIBABLE_STATE_RELATIONSHIP.self)
      let _TEMP2 = _TEMP1?.RELATED_ASCRIBABLE_STATE
      let _TEMP3 = SDAI.SET<eASCRIBABLE_STATE>(bound1: SDAI.UNWRAP(SDAI.INTEGER(1)), bound2: (nil as SDAI.INTEGER?), 
        ([SDAI.AIE(_TEMP2)] as [SDAI.AggregationInitializerElement<eASCRIBABLE_STATE>]))
      let _TEMP4 = ACYCLIC_STATE_DEFINITION_TO_STATE_ASSIGNMENT_RELATIONSHIP(
        RELATION: SELF, RELATIVES: _TEMP3, 
        SPECIFIC_RELATION: SDAI.STRING(
        "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.STATE_DEFINITION_TO_STATE_ASSIGNMENT_RELATIONSHIP"))
      return _TEMP4
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(RELATION_TYPE: SDAI.STRING) {
      self._relation_type = RELATION_TYPE
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: SDAI.STRING.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( RELATION_TYPE: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY state_definition_to_state_assignment_relationship
    SUBTYPE OF ( ascribable_state_relationship );
      relation_type  : STRING;
    WHERE
      wr1: acyclic_state_definition_to_state_assignment_relationship( SELF, [SELF\
               ascribable_state_relationship.related_ascribable_state], 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'STATE_DEFINITION_TO_STATE_ASSIGNMENT_RELATIONSHIP'  );
  END_ENTITY; -- state_definition_to_state_assignment_relationship (line:30669 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eSTATE_DEFINITION_TO_STATE_ASSIGNMENT_RELATIONSHIP : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _state_definition_to_state_assignment_relationship.self
    }
    public let partialEntity: _state_definition_to_state_assignment_relationship

    //MARK: SUPERTYPES
    public let super_eASCRIBABLE_STATE_RELATIONSHIP: eASCRIBABLE_STATE_RELATIONSHIP 	// [1]
    public var super_eSTATE_DEFINITION_TO_STATE_ASSIGNMENT_RELATIONSHIP: eSTATE_DEFINITION_TO_STATE_ASSIGNMENT_RELATIONSHIP { return self } 	// [2]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eASCRIBABLE_STATE_RELATIONSHIP`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        return super_eASCRIBABLE_STATE_RELATIONSHIP.partialEntity._description
      }
      set(newValue) {
        let partial = super_eASCRIBABLE_STATE_RELATIONSHIP.partialEntity
        partial._description = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eASCRIBABLE_STATE_RELATIONSHIP`` )
    public var RELATED_ASCRIBABLE_STATE: eASCRIBABLE_STATE {
      get {
        return SDAI.UNWRAP( super_eASCRIBABLE_STATE_RELATIONSHIP.partialEntity._related_ascribable_state )
      }
      set(newValue) {
        let partial = super_eASCRIBABLE_STATE_RELATIONSHIP.partialEntity
        partial._related_ascribable_state = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eSTATE_DEFINITION_TO_STATE_ASSIGNMENT_RELATIONSHIP`` )
    public var RELATION_TYPE: SDAI.STRING {
      get {
        return SDAI.UNWRAP( self.partialEntity._relation_type )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._relation_type = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eASCRIBABLE_STATE_RELATIONSHIP`` )
    public var ID: tIDENTIFIER?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"ID") {
          return cached.value as! tIDENTIFIER? 
        }
        let origin = super_eASCRIBABLE_STATE_RELATIONSHIP
        let value = tIDENTIFIER(origin.partialEntity._id__getter(SELF: origin))
        updateCache(derivedAttributeName:"ID", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eASCRIBABLE_STATE_RELATIONSHIP`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( super_eASCRIBABLE_STATE_RELATIONSHIP.partialEntity._name )
      }
      set(newValue) {
        let partial = super_eASCRIBABLE_STATE_RELATIONSHIP.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eASCRIBABLE_STATE_RELATIONSHIP`` )
    public var RELATING_ASCRIBABLE_STATE: eASCRIBABLE_STATE {
      get {
        return SDAI.UNWRAP( super_eASCRIBABLE_STATE_RELATIONSHIP.partialEntity._relating_ascribable_state )
      }
      set(newValue) {
        let partial = super_eASCRIBABLE_STATE_RELATIONSHIP.partialEntity
        partial._relating_ascribable_state = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_state_definition_to_state_assignment_relationship.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eASCRIBABLE_STATE_RELATIONSHIP.self) else { return nil }
      self.super_eASCRIBABLE_STATE_RELATIONSHIP = super1

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
      result[prefix2 + " .WHERE_wr1"] = _state_definition_to_state_assignment_relationship.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "STATE_DEFINITION_TO_STATE_ASSIGNMENT_RELATIONSHIP", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eASCRIBABLE_STATE_RELATIONSHIP.self)
      entityDef.add(supertype: eSTATE_DEFINITION_TO_STATE_ASSIGNMENT_RELATIONSHIP.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eSTATE_DEFINITION_TO_STATE_ASSIGNMENT_RELATIONSHIP.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "RELATED_ASCRIBABLE_STATE", keyPath: \eSTATE_DEFINITION_TO_STATE_ASSIGNMENT_RELATIONSHIP.RELATED_ASCRIBABLE_STATE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RELATION_TYPE", keyPath: \eSTATE_DEFINITION_TO_STATE_ASSIGNMENT_RELATIONSHIP.RELATION_TYPE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ID", keyPath: \eSTATE_DEFINITION_TO_STATE_ASSIGNMENT_RELATIONSHIP.ID, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eSTATE_DEFINITION_TO_STATE_ASSIGNMENT_RELATIONSHIP.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "RELATING_ASCRIBABLE_STATE", keyPath: \eSTATE_DEFINITION_TO_STATE_ASSIGNMENT_RELATIONSHIP.RELATING_ASCRIBABLE_STATE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
