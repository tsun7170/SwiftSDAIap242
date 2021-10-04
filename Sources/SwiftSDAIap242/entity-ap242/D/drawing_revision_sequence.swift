/* file: drawing_revision_sequence.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY drawing_revision_sequence;
      predecessor  : drawing_revision;
      successor    : drawing_revision;
    WHERE
      wr1: ( predecessor :<>: successor );
  END_ENTITY; -- drawing_revision_sequence (line:13202 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  ENTITY(SELF)	drawing_revision_sequence
    ATTR:  predecessor,	TYPE: drawing_revision -- EXPLICIT

    ATTR:  successor,	TYPE: drawing_revision -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _drawing_revision_sequence : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eDRAWING_REVISION_SEQUENCE.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _predecessor: eDRAWING_REVISION // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _successor: eDRAWING_REVISION // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._predecessor.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._successor.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._predecessor.value.isValueEqualOptionally(to: rhs._predecessor.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._successor.value.isValueEqualOptionally(to: rhs._successor.value, visited: &comppairs)	{
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
      if let comp = self._predecessor.value.isValueEqualOptionally(to: rhs._predecessor.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._successor.value.isValueEqualOptionally(to: rhs._successor.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eDRAWING_REVISION_SEQUENCE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.FORCE_OPTIONAL(SELF.PREDECESSOR) .!==. SDAI.FORCE_OPTIONAL(SELF.SUCCESSOR)
      return _TEMP1
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(PREDECESSOR: eDRAWING_REVISION, SUCCESSOR: eDRAWING_REVISION) {
      self._predecessor = PREDECESSOR
      self._successor = SUCCESSOR
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: eDRAWING_REVISION.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: eDRAWING_REVISION.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( PREDECESSOR: p0, SUCCESSOR: p1 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY drawing_revision_sequence;
      predecessor  : drawing_revision;
      successor    : drawing_revision;
    WHERE
      wr1: ( predecessor :<>: successor );
  END_ENTITY; -- drawing_revision_sequence (line:13202 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eDRAWING_REVISION_SEQUENCE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _drawing_revision_sequence.self
    }
    public let partialEntity: _drawing_revision_sequence

    //MARK: SUPERTYPES
    public var super_eDRAWING_REVISION_SEQUENCE: eDRAWING_REVISION_SEQUENCE { return self } 	// [1]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eDRAWING_REVISION_SEQUENCE`` )
    public var SUCCESSOR: eDRAWING_REVISION {
      get {
        return SDAI.UNWRAP( self.partialEntity._successor )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._successor = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eDRAWING_REVISION_SEQUENCE`` )
    public var PREDECESSOR: eDRAWING_REVISION {
      get {
        return SDAI.UNWRAP( self.partialEntity._predecessor )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._predecessor = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_drawing_revision_sequence.self) else { return nil }
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
    public convenience init?(_ partial:_drawing_revision_sequence) {
      let complex = SDAI.ComplexEntity(entities:[partial])
      self.init(complex: complex)
    }


    //MARK: WHERE RULE VALIDATION (ENTITY)
    public override class func validateWhereRules(instance:SDAI.EntityReference?, prefix:SDAI.WhereLabel) -> [SDAI.WhereLabel:SDAI.LOGICAL] {
      guard let instance = instance as? Self else { return [:] }

      let prefix2 = prefix + " \(instance)"

      var result = super.validateWhereRules(instance:instance, prefix:prefix2)
      result[prefix2 + " .WHERE_wr1"] = _drawing_revision_sequence.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "DRAWING_REVISION_SEQUENCE", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eDRAWING_REVISION_SEQUENCE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "SUCCESSOR", keyPath: \eDRAWING_REVISION_SEQUENCE.SUCCESSOR, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "PREDECESSOR", keyPath: \eDRAWING_REVISION_SEQUENCE.PREDECESSOR, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
