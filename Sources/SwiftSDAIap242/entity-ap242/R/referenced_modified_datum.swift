/* file: referenced_modified_datum.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  ENTITY referenced_modified_datum
    SUBTYPE OF ( datum_reference );
      modifier  : limit_condition;
  END_ENTITY; -- referenced_modified_datum (line:27257 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	datum_reference
    ATTR:  precedence,	TYPE: INTEGER -- EXPLICIT

    ATTR:  referenced_datum,	TYPE: datum -- EXPLICIT


  ENTITY(SELF)	referenced_modified_datum
    ATTR:  modifier,	TYPE: limit_condition -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _referenced_modified_datum : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eREFERENCED_MODIFIED_DATUM.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _modifier: nLIMIT_CONDITION // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._modifier.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._modifier.value.isValueEqualOptionally(to: rhs._modifier.value, visited: &comppairs)	{
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
      if let comp = self._modifier.value.isValueEqualOptionally(to: rhs._modifier.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(MODIFIER: nLIMIT_CONDITION) {
      self._modifier = MODIFIER
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: nLIMIT_CONDITION.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( MODIFIER: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY referenced_modified_datum
    SUBTYPE OF ( datum_reference );
      modifier  : limit_condition;
  END_ENTITY; -- referenced_modified_datum (line:27257 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eREFERENCED_MODIFIED_DATUM : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _referenced_modified_datum.self
    }
    public let partialEntity: _referenced_modified_datum

    //MARK: SUPERTYPES
    public let super_eDATUM_REFERENCE: eDATUM_REFERENCE 	// [1]
    public var super_eREFERENCED_MODIFIED_DATUM: eREFERENCED_MODIFIED_DATUM { return self } 	// [2]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eDATUM_REFERENCE`` )
    public var REFERENCED_DATUM: eDATUM {
      get {
        return SDAI.UNWRAP( super_eDATUM_REFERENCE.partialEntity._referenced_datum )
      }
      set(newValue) {
        let partial = super_eDATUM_REFERENCE.partialEntity
        partial._referenced_datum = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eDATUM_REFERENCE`` )
    public var PRECEDENCE: SDAI.INTEGER {
      get {
        return SDAI.UNWRAP( super_eDATUM_REFERENCE.partialEntity._precedence )
      }
      set(newValue) {
        let partial = super_eDATUM_REFERENCE.partialEntity
        partial._precedence = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eREFERENCED_MODIFIED_DATUM`` )
    public var MODIFIER: nLIMIT_CONDITION {
      get {
        return SDAI.UNWRAP( self.partialEntity._modifier )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._modifier = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_referenced_modified_datum.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eDATUM_REFERENCE.self) else { return nil }
      self.super_eDATUM_REFERENCE = super1

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "REFERENCED_MODIFIED_DATUM", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eDATUM_REFERENCE.self)
      entityDef.add(supertype: eREFERENCED_MODIFIED_DATUM.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "REFERENCED_DATUM", keyPath: \eREFERENCED_MODIFIED_DATUM.REFERENCED_DATUM, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "PRECEDENCE", keyPath: \eREFERENCED_MODIFIED_DATUM.PRECEDENCE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "MODIFIER", keyPath: \eREFERENCED_MODIFIED_DATUM.MODIFIER, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
