/* file: draughting_callout_relationship.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY draughting_callout_relationship;
      name                         : label;
      description                  : text;
      relating_draughting_callout  : draughting_callout;
      related_draughting_callout   : draughting_callout;
  END_ENTITY; -- draughting_callout_relationship (line:12997 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  ENTITY(SELF)	draughting_callout_relationship
    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  description,	TYPE: text -- EXPLICIT

    ATTR:  relating_draughting_callout,	TYPE: draughting_callout -- EXPLICIT

    ATTR:  related_draughting_callout,	TYPE: draughting_callout -- EXPLICIT


  SUB- ENTITY(2)	dimension_callout_component_relationship
    (no local attributes)

  SUB- ENTITY(3)	dimension_pair
    (no local attributes)

  SUB- ENTITY(4)	dimension_callout_relationship
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _draughting_callout_relationship : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eDRAUGHTING_CALLOUT_RELATIONSHIP.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _name: tLABEL // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _description: tTEXT // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _relating_draughting_callout: eDRAUGHTING_CALLOUT // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _related_draughting_callout: eDRAUGHTING_CALLOUT // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._name.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._description.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._relating_draughting_callout.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._related_draughting_callout.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._name.value.isValueEqualOptionally(to: rhs._name.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._description.value.isValueEqualOptionally(to: rhs._description.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._relating_draughting_callout.value.isValueEqualOptionally(to: rhs._relating_draughting_callout.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._related_draughting_callout.value.isValueEqualOptionally(to: rhs._related_draughting_callout.value, visited: &comppairs)	{
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
      if let comp = self._description.value.isValueEqualOptionally(to: rhs._description.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._relating_draughting_callout.value.isValueEqualOptionally(to: rhs._relating_draughting_callout.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._related_draughting_callout.value.isValueEqualOptionally(to: rhs._related_draughting_callout.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(NAME: tLABEL, DESCRIPTION: tTEXT, RELATING_DRAUGHTING_CALLOUT: eDRAUGHTING_CALLOUT, 
                RELATED_DRAUGHTING_CALLOUT: eDRAUGHTING_CALLOUT) {
      self._name = NAME
      self._description = DESCRIPTION
      self._relating_draughting_callout = RELATING_DRAUGHTING_CALLOUT
      self._related_draughting_callout = RELATED_DRAUGHTING_CALLOUT
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 4
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: tLABEL.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: tTEXT.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p2) = exchangeStructure.recoverRequiredParameter(as: eDRAUGHTING_CALLOUT.self, from: parameters[2])
      else { exchangeStructure.add(errorContext: "while recovering parameter #2 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p3) = exchangeStructure.recoverRequiredParameter(as: eDRAUGHTING_CALLOUT.self, from: parameters[3])
      else { exchangeStructure.add(errorContext: "while recovering parameter #3 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( NAME: p0, DESCRIPTION: p1, RELATING_DRAUGHTING_CALLOUT: p2, RELATED_DRAUGHTING_CALLOUT: p3 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY draughting_callout_relationship;
      name                         : label;
      description                  : text;
      relating_draughting_callout  : draughting_callout;
      related_draughting_callout   : draughting_callout;
  END_ENTITY; -- draughting_callout_relationship (line:12997 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eDRAUGHTING_CALLOUT_RELATIONSHIP : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _draughting_callout_relationship.self
    }
    public let partialEntity: _draughting_callout_relationship

    //MARK: SUPERTYPES
    public var super_eDRAUGHTING_CALLOUT_RELATIONSHIP: eDRAUGHTING_CALLOUT_RELATIONSHIP { return self } 	// [1]

    //MARK: SUBTYPES
    public var sub_eDIMENSION_CALLOUT_COMPONENT_RELATIONSHIP: eDIMENSION_CALLOUT_COMPONENT_RELATIONSHIP? {	// [2]
      return self.complexEntity.entityReference(eDIMENSION_CALLOUT_COMPONENT_RELATIONSHIP.self)
    }

    public var sub_eDIMENSION_PAIR: eDIMENSION_PAIR? {	// [3]
      return self.complexEntity.entityReference(eDIMENSION_PAIR.self)
    }

    public var sub_eDIMENSION_CALLOUT_RELATIONSHIP: eDIMENSION_CALLOUT_RELATIONSHIP? {	// [4]
      return self.complexEntity.entityReference(eDIMENSION_CALLOUT_RELATIONSHIP.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eDRAUGHTING_CALLOUT_RELATIONSHIP`` )
    public var DESCRIPTION: tTEXT {
      get {
        return SDAI.UNWRAP( self.partialEntity._description )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._description = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eDRAUGHTING_CALLOUT_RELATIONSHIP`` )
    public var RELATED_DRAUGHTING_CALLOUT: eDRAUGHTING_CALLOUT {
      get {
        return SDAI.UNWRAP( self.partialEntity._related_draughting_callout )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._related_draughting_callout = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eDRAUGHTING_CALLOUT_RELATIONSHIP`` )
    public var RELATING_DRAUGHTING_CALLOUT: eDRAUGHTING_CALLOUT {
      get {
        return SDAI.UNWRAP( self.partialEntity._relating_draughting_callout )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._relating_draughting_callout = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eDRAUGHTING_CALLOUT_RELATIONSHIP`` )
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
      guard let partial = complexEntity?.partialEntityInstance(_draughting_callout_relationship.self) else { return nil }
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
    public convenience init?(_ partial:_draughting_callout_relationship) {
      let complex = SDAI.ComplexEntity(entities:[partial])
      self.init(complex: complex)
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "DRAUGHTING_CALLOUT_RELATIONSHIP", type: self, explicitAttributeCount: 4)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eDRAUGHTING_CALLOUT_RELATIONSHIP.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eDRAUGHTING_CALLOUT_RELATIONSHIP.DESCRIPTION, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "RELATED_DRAUGHTING_CALLOUT", keyPath: \eDRAUGHTING_CALLOUT_RELATIONSHIP.RELATED_DRAUGHTING_CALLOUT, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RELATING_DRAUGHTING_CALLOUT", keyPath: \eDRAUGHTING_CALLOUT_RELATIONSHIP.RELATING_DRAUGHTING_CALLOUT, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eDRAUGHTING_CALLOUT_RELATIONSHIP.NAME, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
