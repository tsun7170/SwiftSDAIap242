/* file: expanded_uncertainty.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY expanded_uncertainty
    SUBTYPE OF ( standard_uncertainty );
      coverage_factor  : REAL;
  END_ENTITY; -- expanded_uncertainty (line:14124 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	uncertainty_qualifier
    ATTR:  measure_name,	TYPE: label -- EXPLICIT

    ATTR:  description,	TYPE: text -- EXPLICIT


  SUPER- ENTITY(2)	standard_uncertainty
    ATTR:  uncertainty_value,	TYPE: REAL -- EXPLICIT


  ENTITY(SELF)	expanded_uncertainty
    ATTR:  coverage_factor,	TYPE: REAL -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _expanded_uncertainty : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eEXPANDED_UNCERTAINTY.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _coverage_factor: SDAI.REAL // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._coverage_factor.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._coverage_factor.value.isValueEqualOptionally(to: rhs._coverage_factor.value, visited: &comppairs)	{
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
      if let comp = self._coverage_factor.value.isValueEqualOptionally(to: rhs._coverage_factor.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(COVERAGE_FACTOR: SDAI.REAL) {
      self._coverage_factor = COVERAGE_FACTOR
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: SDAI.REAL.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( COVERAGE_FACTOR: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY expanded_uncertainty
    SUBTYPE OF ( standard_uncertainty );
      coverage_factor  : REAL;
  END_ENTITY; -- expanded_uncertainty (line:14124 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eEXPANDED_UNCERTAINTY : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _expanded_uncertainty.self
    }
    public let partialEntity: _expanded_uncertainty

    //MARK: SUPERTYPES
    public let super_eUNCERTAINTY_QUALIFIER: eUNCERTAINTY_QUALIFIER 	// [1]
    public let super_eSTANDARD_UNCERTAINTY: eSTANDARD_UNCERTAINTY 	// [2]
    public var super_eEXPANDED_UNCERTAINTY: eEXPANDED_UNCERTAINTY { return self } 	// [3]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eUNCERTAINTY_QUALIFIER`` )
    public var DESCRIPTION: tTEXT {
      get {
        return SDAI.UNWRAP( super_eUNCERTAINTY_QUALIFIER.partialEntity._description )
      }
      set(newValue) {
        let partial = super_eUNCERTAINTY_QUALIFIER.partialEntity
        partial._description = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eEXPANDED_UNCERTAINTY`` )
    public var COVERAGE_FACTOR: SDAI.REAL {
      get {
        return SDAI.UNWRAP( self.partialEntity._coverage_factor )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._coverage_factor = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eUNCERTAINTY_QUALIFIER`` )
    public var MEASURE_NAME: tLABEL {
      get {
        return SDAI.UNWRAP( super_eUNCERTAINTY_QUALIFIER.partialEntity._measure_name )
      }
      set(newValue) {
        let partial = super_eUNCERTAINTY_QUALIFIER.partialEntity
        partial._measure_name = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eSTANDARD_UNCERTAINTY`` )
    public var UNCERTAINTY_VALUE: SDAI.REAL {
      get {
        return SDAI.UNWRAP( super_eSTANDARD_UNCERTAINTY.partialEntity._uncertainty_value )
      }
      set(newValue) {
        let partial = super_eSTANDARD_UNCERTAINTY.partialEntity
        partial._uncertainty_value = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_expanded_uncertainty.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eUNCERTAINTY_QUALIFIER.self) else { return nil }
      self.super_eUNCERTAINTY_QUALIFIER = super1

      guard let super2 = complexEntity?.entityReference(eSTANDARD_UNCERTAINTY.self) else { return nil }
      self.super_eSTANDARD_UNCERTAINTY = super2

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "EXPANDED_UNCERTAINTY", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eUNCERTAINTY_QUALIFIER.self)
      entityDef.add(supertype: eSTANDARD_UNCERTAINTY.self)
      entityDef.add(supertype: eEXPANDED_UNCERTAINTY.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eEXPANDED_UNCERTAINTY.DESCRIPTION, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "COVERAGE_FACTOR", keyPath: \eEXPANDED_UNCERTAINTY.COVERAGE_FACTOR, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "MEASURE_NAME", keyPath: \eEXPANDED_UNCERTAINTY.MEASURE_NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "UNCERTAINTY_VALUE", keyPath: \eEXPANDED_UNCERTAINTY.UNCERTAINTY_VALUE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
