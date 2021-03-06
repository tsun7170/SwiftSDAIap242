/* file: kinematic_analysis_consistency.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY kinematic_analysis_consistency;
      control  : kinematic_control;
      result   : kinematic_analysis_result;
    WHERE
      wr1: ( control.controlled_mechanism :=: result.analysed_mechanism );
  END_ENTITY; -- kinematic_analysis_consistency (line:18696 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  ENTITY(SELF)	kinematic_analysis_consistency
    ATTR:  control,	TYPE: kinematic_control -- EXPLICIT

    ATTR:  result,	TYPE: kinematic_analysis_result -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _kinematic_analysis_consistency : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eKINEMATIC_ANALYSIS_CONSISTENCY.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _control: eKINEMATIC_CONTROL // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _result: eKINEMATIC_ANALYSIS_RESULT // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._control.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._result.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._control.value.isValueEqualOptionally(to: rhs._control.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._result.value.isValueEqualOptionally(to: rhs._result.value, visited: &comppairs)	{
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
      if let comp = self._control.value.isValueEqualOptionally(to: rhs._control.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._result.value.isValueEqualOptionally(to: rhs._result.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eKINEMATIC_ANALYSIS_CONSISTENCY?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.CONTROL.CONTROLLED_MECHANISM
      let _TEMP2 = SELF.RESULT.ANALYSED_MECHANISM
      let _TEMP3 = SDAI.FORCE_OPTIONAL(_TEMP1) .===. SDAI.FORCE_OPTIONAL(_TEMP2)
      return _TEMP3
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(CONTROL: eKINEMATIC_CONTROL, RESULT: eKINEMATIC_ANALYSIS_RESULT) {
      self._control = CONTROL
      self._result = RESULT
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: eKINEMATIC_CONTROL.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: eKINEMATIC_ANALYSIS_RESULT.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( CONTROL: p0, RESULT: p1 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY kinematic_analysis_consistency;
      control  : kinematic_control;
      result   : kinematic_analysis_result;
    WHERE
      wr1: ( control.controlled_mechanism :=: result.analysed_mechanism );
  END_ENTITY; -- kinematic_analysis_consistency (line:18696 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eKINEMATIC_ANALYSIS_CONSISTENCY : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _kinematic_analysis_consistency.self
    }
    public let partialEntity: _kinematic_analysis_consistency

    //MARK: SUPERTYPES
    public var super_eKINEMATIC_ANALYSIS_CONSISTENCY: eKINEMATIC_ANALYSIS_CONSISTENCY { return self } 	// [1]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eKINEMATIC_ANALYSIS_CONSISTENCY`` )
    public var CONTROL: eKINEMATIC_CONTROL {
      get {
        return SDAI.UNWRAP( self.partialEntity._control )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._control = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eKINEMATIC_ANALYSIS_CONSISTENCY`` )
    public var RESULT: eKINEMATIC_ANALYSIS_RESULT {
      get {
        return SDAI.UNWRAP( self.partialEntity._result )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._result = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_kinematic_analysis_consistency.self) else { return nil }
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
    public convenience init?(_ partial:_kinematic_analysis_consistency) {
      let complex = SDAI.ComplexEntity(entities:[partial])
      self.init(complex: complex)
    }


    //MARK: WHERE RULE VALIDATION (ENTITY)
    public override class func validateWhereRules(instance:SDAI.EntityReference?, prefix:SDAI.WhereLabel) -> [SDAI.WhereLabel:SDAI.LOGICAL] {
      guard let instance = instance as? Self else { return [:] }

      let prefix2 = prefix + " \(instance)"

      var result = super.validateWhereRules(instance:instance, prefix:prefix2)
      result[prefix2 + " .WHERE_wr1"] = _kinematic_analysis_consistency.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "KINEMATIC_ANALYSIS_CONSISTENCY", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eKINEMATIC_ANALYSIS_CONSISTENCY.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "CONTROL", keyPath: \eKINEMATIC_ANALYSIS_CONSISTENCY.CONTROL, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RESULT", keyPath: \eKINEMATIC_ANALYSIS_CONSISTENCY.RESULT, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
