/* file: group_relationship.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY group_relationship;
      name            : label;
      description     : OPTIONAL text;
      relating_group  : group;
      related_group   : group;
  END_ENTITY; -- group_relationship (line:17366 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  ENTITY(SELF)	group_relationship
    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT

    ATTR:  relating_group,	TYPE: group -- EXPLICIT
      -- possibly overriden by
          ENTITY: change_composition_relationship,	TYPE: change_group
          ENTITY: verification_relationship,	TYPE: verification
          ENTITY: change_element_sequence,	TYPE: change_element

    ATTR:  related_group,	TYPE: group -- EXPLICIT
      -- possibly overriden by
          ENTITY: change_composition_relationship,	TYPE: change_element
          ENTITY: verification_relationship,	TYPE: verification
          ENTITY: change_element_sequence,	TYPE: change_element


  SUB- ENTITY(2)	change_composition_relationship
    REDCR: relating_group,	TYPE: change_group -- EXPLICIT
      -- OVERRIDING ENTITY: group_relationship

    REDCR: related_group,	TYPE: change_element -- EXPLICIT
      -- OVERRIDING ENTITY: group_relationship

    ATTR:  composition,	TYPE: change_group -- DERIVED
      := SELF\group_relationship.relating_group

    ATTR:  element,	TYPE: change_element -- DERIVED
      := SELF\group_relationship.related_group


  SUB- ENTITY(3)	verification_relationship
    REDCR: relating_group,	TYPE: verification -- EXPLICIT
      -- OVERRIDING ENTITY: group_relationship

    REDCR: related_group,	TYPE: verification -- EXPLICIT
      -- OVERRIDING ENTITY: group_relationship


  SUB- ENTITY(4)	product_group_relationship
    (no local attributes)

  SUB- ENTITY(5)	change_element_sequence
    REDCR: relating_group,	TYPE: change_element -- EXPLICIT
      -- OVERRIDING ENTITY: group_relationship

    REDCR: related_group,	TYPE: change_element -- EXPLICIT
      -- OVERRIDING ENTITY: group_relationship

    ATTR:  next,	TYPE: change_element -- DERIVED
      := SELF\group_relationship.related_group

    ATTR:  previous,	TYPE: change_element -- DERIVED
      := SELF\group_relationship.relating_group


*/


//MARK: - Partial Entity
  public final class _group_relationship : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eGROUP_RELATIONSHIP.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _name: tLABEL // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _description: tTEXT?  // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _relating_group: eGROUP // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _related_group: eGROUP // PLAIN EXPLICIT ATTRIBUTE

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
      members.insert(SDAI.STRING(sATTRIBUTE_CLASSIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sREQUIREMENT_SOURCE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sAPPROVAL_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sGENERAL_ORGANIZATIONAL_DATA_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sEVENT_OCCURRENCE_ITEM.typeName)) // -> sGENERAL_ORGANIZATIONAL_DATA_SELECT
      members.insert(SDAI.STRING(sNAME_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sDESCRIPTION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sATTRIBUTE_LANGUAGE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sDOCUMENT_REFERENCE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sGROUPABLE_ITEM.typeName)) // -> Self
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._name.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._description?.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._relating_group.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._related_group.value.hashAsValue(into: &hasher, visited: &complexEntities)
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
      if let comp = self._relating_group.value.isValueEqualOptionally(to: rhs._relating_group.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._related_group.value.isValueEqualOptionally(to: rhs._related_group.value, visited: &comppairs)	{
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
      if let comp = self._relating_group.value.isValueEqualOptionally(to: rhs._relating_group.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._related_group.value.isValueEqualOptionally(to: rhs._related_group.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(NAME: tLABEL, DESCRIPTION: tTEXT? , RELATING_GROUP: eGROUP, 
                RELATED_GROUP: eGROUP) {
      self._name = NAME
      self._description = DESCRIPTION
      self._relating_group = RELATING_GROUP
      self._related_group = RELATED_GROUP
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

      guard case .success(let p2) = exchangeStructure.recoverRequiredParameter(as: eGROUP.self, from: parameters[2])
      else { exchangeStructure.add(errorContext: "while recovering parameter #2 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p3) = exchangeStructure.recoverRequiredParameter(as: eGROUP.self, from: parameters[3])
      else { exchangeStructure.add(errorContext: "while recovering parameter #3 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( NAME: p0, DESCRIPTION: p1, RELATING_GROUP: p2, RELATED_GROUP: p3 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY group_relationship;
      name            : label;
      description     : OPTIONAL text;
      relating_group  : group;
      related_group   : group;
  END_ENTITY; -- group_relationship (line:17366 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eGROUP_RELATIONSHIP : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _group_relationship.self
    }
    public let partialEntity: _group_relationship

    //MARK: SUPERTYPES
    public var super_eGROUP_RELATIONSHIP: eGROUP_RELATIONSHIP { return self } 	// [1]

    //MARK: SUBTYPES
    public var sub_eCHANGE_COMPOSITION_RELATIONSHIP: eCHANGE_COMPOSITION_RELATIONSHIP? {	// [2]
      return self.complexEntity.entityReference(eCHANGE_COMPOSITION_RELATIONSHIP.self)
    }

    public var sub_eVERIFICATION_RELATIONSHIP: eVERIFICATION_RELATIONSHIP? {	// [3]
      return self.complexEntity.entityReference(eVERIFICATION_RELATIONSHIP.self)
    }

    public var sub_ePRODUCT_GROUP_RELATIONSHIP: ePRODUCT_GROUP_RELATIONSHIP? {	// [4]
      return self.complexEntity.entityReference(ePRODUCT_GROUP_RELATIONSHIP.self)
    }

    public var sub_eCHANGE_ELEMENT_SEQUENCE: eCHANGE_ELEMENT_SEQUENCE? {	// [5]
      return self.complexEntity.entityReference(eCHANGE_ELEMENT_SEQUENCE.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eGROUP_RELATIONSHIP`` )
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
    /// - origin: SELF( ``eGROUP_RELATIONSHIP`` )
    public var RELATED_GROUP: eGROUP {
      get {
        return SDAI.UNWRAP( self.partialEntity._related_group )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._related_group = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUB( ``eCHANGE_ELEMENT_SEQUENCE`` )
    public var PREVIOUS: eCHANGE_ELEMENT?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"PREVIOUS") {
          return cached.value as! eCHANGE_ELEMENT? 
        }
        guard let origin = sub_eCHANGE_ELEMENT_SEQUENCE else { return nil }
        let value = eCHANGE_ELEMENT(origin.partialEntity._previous__getter(SELF: origin))
        updateCache(derivedAttributeName:"PREVIOUS", value:value)
        return value
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUB( ``eCHANGE_COMPOSITION_RELATIONSHIP`` )
    public var ELEMENT: eCHANGE_ELEMENT?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"ELEMENT") {
          return cached.value as! eCHANGE_ELEMENT? 
        }
        guard let origin = sub_eCHANGE_COMPOSITION_RELATIONSHIP else { return nil }
        let value = eCHANGE_ELEMENT(origin.partialEntity._element__getter(SELF: origin))
        updateCache(derivedAttributeName:"ELEMENT", value:value)
        return value
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUB( ``eCHANGE_ELEMENT_SEQUENCE`` )
    public var NEXT: eCHANGE_ELEMENT?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"NEXT") {
          return cached.value as! eCHANGE_ELEMENT? 
        }
        guard let origin = sub_eCHANGE_ELEMENT_SEQUENCE else { return nil }
        let value = eCHANGE_ELEMENT(origin.partialEntity._next__getter(SELF: origin))
        updateCache(derivedAttributeName:"NEXT", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eGROUP_RELATIONSHIP`` )
    public var RELATING_GROUP: eGROUP {
      get {
        return SDAI.UNWRAP( self.partialEntity._relating_group )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._relating_group = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUB( ``eCHANGE_COMPOSITION_RELATIONSHIP`` )
    public var COMPOSITION: eCHANGE_GROUP?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"COMPOSITION") {
          return cached.value as! eCHANGE_GROUP? 
        }
        guard let origin = sub_eCHANGE_COMPOSITION_RELATIONSHIP else { return nil }
        let value = eCHANGE_GROUP(origin.partialEntity._composition__getter(SELF: origin))
        updateCache(derivedAttributeName:"COMPOSITION", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eGROUP_RELATIONSHIP`` )
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
      guard let partial = complexEntity?.partialEntityInstance(_group_relationship.self) else { return nil }
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
    public convenience init?(_ partial:_group_relationship) {
      let complex = SDAI.ComplexEntity(entities:[partial])
      self.init(complex: complex)
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "GROUP_RELATIONSHIP", type: self, explicitAttributeCount: 4)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eGROUP_RELATIONSHIP.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eGROUP_RELATIONSHIP.DESCRIPTION, 
        kind: .explicitOptional, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "RELATED_GROUP", keyPath: \eGROUP_RELATIONSHIP.RELATED_GROUP, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "PREVIOUS", keyPath: \eGROUP_RELATIONSHIP.PREVIOUS, 
        kind: .derived, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ELEMENT", keyPath: \eGROUP_RELATIONSHIP.ELEMENT, 
        kind: .derived, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NEXT", keyPath: \eGROUP_RELATIONSHIP.NEXT, 
        kind: .derived, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RELATING_GROUP", keyPath: \eGROUP_RELATIONSHIP.RELATING_GROUP, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "COMPOSITION", keyPath: \eGROUP_RELATIONSHIP.COMPOSITION, 
        kind: .derived, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eGROUP_RELATIONSHIP.NAME, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
