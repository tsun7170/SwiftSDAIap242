/* file: kinematic_control.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY kinematic_control;
      controlled_mechanism          : mechanism_representation;
      contained_kinematic_programs  : kinematic_analysis_definition;
  END_ENTITY; -- kinematic_control (line:18693 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  ENTITY(SELF)	kinematic_control
    ATTR:  controlled_mechanism,	TYPE: mechanism_representation -- EXPLICIT

    ATTR:  contained_kinematic_programs,	TYPE: kinematic_analysis_definition -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _kinematic_control : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eKINEMATIC_CONTROL.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _controlled_mechanism: eMECHANISM_REPRESENTATION // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _contained_kinematic_programs: sKINEMATIC_ANALYSIS_DEFINITION // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._controlled_mechanism.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._contained_kinematic_programs.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._controlled_mechanism.value.isValueEqualOptionally(to: rhs._controlled_mechanism.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._contained_kinematic_programs.value.isValueEqualOptionally(to: rhs._contained_kinematic_programs.value, visited: &comppairs)	{
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
      if let comp = self._controlled_mechanism.value.isValueEqualOptionally(to: rhs._controlled_mechanism.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._contained_kinematic_programs.value.isValueEqualOptionally(to: rhs._contained_kinematic_programs.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(CONTROLLED_MECHANISM: eMECHANISM_REPRESENTATION, CONTAINED_KINEMATIC_PROGRAMS: 
                sKINEMATIC_ANALYSIS_DEFINITION) {
      self._controlled_mechanism = CONTROLLED_MECHANISM
      self._contained_kinematic_programs = CONTAINED_KINEMATIC_PROGRAMS
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: eMECHANISM_REPRESENTATION.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: 
        sKINEMATIC_ANALYSIS_DEFINITION.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( CONTROLLED_MECHANISM: p0, CONTAINED_KINEMATIC_PROGRAMS: p1 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY kinematic_control;
      controlled_mechanism          : mechanism_representation;
      contained_kinematic_programs  : kinematic_analysis_definition;
  END_ENTITY; -- kinematic_control (line:18693 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eKINEMATIC_CONTROL : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _kinematic_control.self
    }
    public let partialEntity: _kinematic_control

    //MARK: SUPERTYPES
    public var super_eKINEMATIC_CONTROL: eKINEMATIC_CONTROL { return self } 	// [1]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eKINEMATIC_CONTROL`` )
    public var CONTAINED_KINEMATIC_PROGRAMS: sKINEMATIC_ANALYSIS_DEFINITION {
      get {
        return SDAI.UNWRAP( self.partialEntity._contained_kinematic_programs )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._contained_kinematic_programs = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eKINEMATIC_CONTROL`` )
    public var CONTROLLED_MECHANISM: eMECHANISM_REPRESENTATION {
      get {
        return SDAI.UNWRAP( self.partialEntity._controlled_mechanism )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._controlled_mechanism = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_kinematic_control.self) else { return nil }
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
    public convenience init?(_ partial:_kinematic_control) {
      let complex = SDAI.ComplexEntity(entities:[partial])
      self.init(complex: complex)
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "KINEMATIC_CONTROL", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eKINEMATIC_CONTROL.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "CONTAINED_KINEMATIC_PROGRAMS", keyPath: \eKINEMATIC_CONTROL.CONTAINED_KINEMATIC_PROGRAMS, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "CONTROLLED_MECHANISM", keyPath: \eKINEMATIC_CONTROL.CONTROLLED_MECHANISM, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
