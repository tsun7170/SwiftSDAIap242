/* file: product_definition_occurrence_relationship.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY product_definition_occurrence_relationship;
      name              : label;
      description       : OPTIONAL text;
      occurrence        : product_definition;
      occurrence_usage  : assembly_component_usage;
    WHERE
      wr1: ( occurrence_usage.relating_product_definition :<>: occurrence );
      wr2: ( occurrence_usage.related_product_definition :<>: occurrence );
      wr3: ( occurrence.formation :=: occurrence_usage.related_product_definition.formation );
  END_ENTITY; -- product_definition_occurrence_relationship (line:26157 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  ENTITY(SELF)	product_definition_occurrence_relationship
    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT

    ATTR:  occurrence,	TYPE: product_definition -- EXPLICIT

    ATTR:  occurrence_usage,	TYPE: assembly_component_usage -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _product_definition_occurrence_relationship : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      ePRODUCT_DEFINITION_OCCURRENCE_RELATIONSHIP.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _name: tLABEL // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _description: tTEXT?  // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _occurrence: ePRODUCT_DEFINITION // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _occurrence_usage: eASSEMBLY_COMPONENT_USAGE // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._name.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._description?.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._occurrence.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._occurrence_usage.value.hashAsValue(into: &hasher, visited: &complexEntities)
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
      if let comp = self._occurrence.value.isValueEqualOptionally(to: rhs._occurrence.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._occurrence_usage.value.isValueEqualOptionally(to: rhs._occurrence_usage.value, visited: &comppairs)	{
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
      if let comp = self._occurrence.value.isValueEqualOptionally(to: rhs._occurrence.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._occurrence_usage.value.isValueEqualOptionally(to: rhs._occurrence_usage.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: ePRODUCT_DEFINITION_OCCURRENCE_RELATIONSHIP?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.OCCURRENCE_USAGE.RELATING_PRODUCT_DEFINITION
      let _TEMP2 = SDAI.FORCE_OPTIONAL(_TEMP1) .!==. SDAI.FORCE_OPTIONAL(SELF.OCCURRENCE)
      return _TEMP2
    }
    public static func WHERE_wr2(SELF: ePRODUCT_DEFINITION_OCCURRENCE_RELATIONSHIP?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.OCCURRENCE_USAGE.RELATED_PRODUCT_DEFINITION
      let _TEMP2 = SDAI.FORCE_OPTIONAL(_TEMP1) .!==. SDAI.FORCE_OPTIONAL(SELF.OCCURRENCE)
      return _TEMP2
    }
    public static func WHERE_wr3(SELF: ePRODUCT_DEFINITION_OCCURRENCE_RELATIONSHIP?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.OCCURRENCE.FORMATION
      let _TEMP2 = SELF.OCCURRENCE_USAGE.RELATED_PRODUCT_DEFINITION
      let _TEMP3 = _TEMP2.FORMATION
      let _TEMP4 = SDAI.FORCE_OPTIONAL(_TEMP1) .===. _TEMP3
      return _TEMP4
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(NAME: tLABEL, DESCRIPTION: tTEXT? , OCCURRENCE: ePRODUCT_DEFINITION, 
                OCCURRENCE_USAGE: eASSEMBLY_COMPONENT_USAGE) {
      self._name = NAME
      self._description = DESCRIPTION
      self._occurrence = OCCURRENCE
      self._occurrence_usage = OCCURRENCE_USAGE
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

      guard case .success(let p2) = exchangeStructure.recoverRequiredParameter(as: ePRODUCT_DEFINITION.self, from: parameters[2])
      else { exchangeStructure.add(errorContext: "while recovering parameter #2 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p3) = exchangeStructure.recoverRequiredParameter(as: eASSEMBLY_COMPONENT_USAGE.self, from: parameters[3])
      else { exchangeStructure.add(errorContext: "while recovering parameter #3 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( NAME: p0, DESCRIPTION: p1, OCCURRENCE: p2, OCCURRENCE_USAGE: p3 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY product_definition_occurrence_relationship;
      name              : label;
      description       : OPTIONAL text;
      occurrence        : product_definition;
      occurrence_usage  : assembly_component_usage;
    WHERE
      wr1: ( occurrence_usage.relating_product_definition :<>: occurrence );
      wr2: ( occurrence_usage.related_product_definition :<>: occurrence );
      wr3: ( occurrence.formation :=: occurrence_usage.related_product_definition.formation );
  END_ENTITY; -- product_definition_occurrence_relationship (line:26157 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class ePRODUCT_DEFINITION_OCCURRENCE_RELATIONSHIP : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _product_definition_occurrence_relationship.self
    }
    public let partialEntity: _product_definition_occurrence_relationship

    //MARK: SUPERTYPES
    public var super_ePRODUCT_DEFINITION_OCCURRENCE_RELATIONSHIP: ePRODUCT_DEFINITION_OCCURRENCE_RELATIONSHIP { return self } 	// [1]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``ePRODUCT_DEFINITION_OCCURRENCE_RELATIONSHIP`` )
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
    /// - origin: SELF( ``ePRODUCT_DEFINITION_OCCURRENCE_RELATIONSHIP`` )
    public var OCCURRENCE_USAGE: eASSEMBLY_COMPONENT_USAGE {
      get {
        return SDAI.UNWRAP( self.partialEntity._occurrence_usage )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._occurrence_usage = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``ePRODUCT_DEFINITION_OCCURRENCE_RELATIONSHIP`` )
    public var OCCURRENCE: ePRODUCT_DEFINITION {
      get {
        return SDAI.UNWRAP( self.partialEntity._occurrence )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._occurrence = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``ePRODUCT_DEFINITION_OCCURRENCE_RELATIONSHIP`` )
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
      guard let partial = complexEntity?.partialEntityInstance(_product_definition_occurrence_relationship.self) else { return nil }
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
    public convenience init?(_ partial:_product_definition_occurrence_relationship) {
      let complex = SDAI.ComplexEntity(entities:[partial])
      self.init(complex: complex)
    }


    //MARK: WHERE RULE VALIDATION (ENTITY)
    public override class func validateWhereRules(instance:SDAI.EntityReference?, prefix:SDAI.WhereLabel) -> [SDAI.WhereLabel:SDAI.LOGICAL] {
      guard let instance = instance as? Self else { return [:] }

      let prefix2 = prefix + " \(instance)"

      var result = super.validateWhereRules(instance:instance, prefix:prefix2)
      result[prefix2 + " .WHERE_wr1"] = _product_definition_occurrence_relationship.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _product_definition_occurrence_relationship.WHERE_wr2(SELF: instance)
      result[prefix2 + " .WHERE_wr3"] = _product_definition_occurrence_relationship.WHERE_wr3(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "PRODUCT_DEFINITION_OCCURRENCE_RELATIONSHIP", type: self, explicitAttributeCount: 4)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: ePRODUCT_DEFINITION_OCCURRENCE_RELATIONSHIP.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \ePRODUCT_DEFINITION_OCCURRENCE_RELATIONSHIP.DESCRIPTION, 
        kind: .explicitOptional, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "OCCURRENCE_USAGE", keyPath: \ePRODUCT_DEFINITION_OCCURRENCE_RELATIONSHIP.OCCURRENCE_USAGE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "OCCURRENCE", keyPath: \ePRODUCT_DEFINITION_OCCURRENCE_RELATIONSHIP.OCCURRENCE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \ePRODUCT_DEFINITION_OCCURRENCE_RELATIONSHIP.NAME, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
