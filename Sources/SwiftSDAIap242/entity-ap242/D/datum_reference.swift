/* file: datum_reference.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  ENTITY datum_reference;
      precedence        : INTEGER;
      referenced_datum  : datum;
    WHERE
      wr1: ( precedence > 0 );
  END_ENTITY; -- datum_reference (line:11708 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  ENTITY(SELF)	datum_reference
    ATTR:  precedence,	TYPE: INTEGER -- EXPLICIT

    ATTR:  referenced_datum,	TYPE: datum -- EXPLICIT


  SUB- ENTITY(2)	referenced_modified_datum
    ATTR:  modifier,	TYPE: limit_condition -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _datum_reference : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eDATUM_REFERENCE.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _precedence: SDAI.INTEGER // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _referenced_datum: eDATUM // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sDATUM_SYSTEM_OR_REFERENCE.typeName)) // -> Self
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._precedence.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._referenced_datum.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._precedence.value.isValueEqualOptionally(to: rhs._precedence.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._referenced_datum.value.isValueEqualOptionally(to: rhs._referenced_datum.value, visited: &comppairs)	{
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
      if let comp = self._precedence.value.isValueEqualOptionally(to: rhs._precedence.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._referenced_datum.value.isValueEqualOptionally(to: rhs._referenced_datum.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eDATUM_REFERENCE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.FORCE_OPTIONAL(SELF.PRECEDENCE) > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP1
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(PRECEDENCE: SDAI.INTEGER, REFERENCED_DATUM: eDATUM) {
      self._precedence = PRECEDENCE
      self._referenced_datum = REFERENCED_DATUM
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: SDAI.INTEGER.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: eDATUM.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( PRECEDENCE: p0, REFERENCED_DATUM: p1 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY datum_reference;
      precedence        : INTEGER;
      referenced_datum  : datum;
    WHERE
      wr1: ( precedence > 0 );
  END_ENTITY; -- datum_reference (line:11708 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eDATUM_REFERENCE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _datum_reference.self
    }
    public let partialEntity: _datum_reference

    //MARK: SUPERTYPES
    public var super_eDATUM_REFERENCE: eDATUM_REFERENCE { return self } 	// [1]

    //MARK: SUBTYPES
    public var sub_eREFERENCED_MODIFIED_DATUM: eREFERENCED_MODIFIED_DATUM? {	// [2]
      return self.complexEntity.entityReference(eREFERENCED_MODIFIED_DATUM.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eDATUM_REFERENCE`` )
    public var REFERENCED_DATUM: eDATUM {
      get {
        return SDAI.UNWRAP( self.partialEntity._referenced_datum )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._referenced_datum = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eDATUM_REFERENCE`` )
    public var PRECEDENCE: SDAI.INTEGER {
      get {
        return SDAI.UNWRAP( self.partialEntity._precedence )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._precedence = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eREFERENCED_MODIFIED_DATUM`` )
    public var MODIFIER: nLIMIT_CONDITION?  {
      get {
        return sub_eREFERENCED_MODIFIED_DATUM?.partialEntity._modifier
      }
      set(newValue) {
        guard let partial = sub_eREFERENCED_MODIFIED_DATUM?.super_eREFERENCED_MODIFIED_DATUM.partialEntity
          else { return }
        partial._modifier = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_datum_reference.self) else { return nil }
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
    public convenience init?(_ partial:_datum_reference) {
      let complex = SDAI.ComplexEntity(entities:[partial])
      self.init(complex: complex)
    }


    //MARK: WHERE RULE VALIDATION (ENTITY)
    public override class func validateWhereRules(instance:SDAI.EntityReference?, prefix:SDAI.WhereLabel) -> [SDAI.WhereLabel:SDAI.LOGICAL] {
      guard let instance = instance as? Self else { return [:] }

      let prefix2 = prefix + " \(instance)"

      var result = super.validateWhereRules(instance:instance, prefix:prefix2)
      result[prefix2 + " .WHERE_wr1"] = _datum_reference.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "DATUM_REFERENCE", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eDATUM_REFERENCE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "REFERENCED_DATUM", keyPath: \eDATUM_REFERENCE.REFERENCED_DATUM, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "PRECEDENCE", keyPath: \eDATUM_REFERENCE.PRECEDENCE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "MODIFIER", keyPath: \eDATUM_REFERENCE.MODIFIER, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
