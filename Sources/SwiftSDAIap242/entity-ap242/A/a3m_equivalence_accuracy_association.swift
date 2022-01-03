/* file: a3m_equivalence_accuracy_association.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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
  ENTITY a3m_equivalence_accuracy_association;
      id                  : identifier;
      name                : label;
      description         : OPTIONAL text;
      specific_accuracy   : shape_measurement_accuracy;
      equivalence_target  : accuracy_associated_target_select;
  END_ENTITY; -- a3m_equivalence_accuracy_association (line:6016 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  ENTITY(SELF)	a3m_equivalence_accuracy_association
    ATTR:  id,	TYPE: identifier -- EXPLICIT

    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT

    ATTR:  specific_accuracy,	TYPE: shape_measurement_accuracy -- EXPLICIT

    ATTR:  equivalence_target,	TYPE: accuracy_associated_target_select -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _a3m_equivalence_accuracy_association : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eA3M_EQUIVALENCE_ACCURACY_ASSOCIATION.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _id: tIDENTIFIER // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _name: tLABEL // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _description: tTEXT?  // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _specific_accuracy: eSHAPE_MEASUREMENT_ACCURACY // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _equivalence_target: sACCURACY_ASSOCIATED_TARGET_SELECT // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._id.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._name.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._description?.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._specific_accuracy.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._equivalence_target.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._id.value.isValueEqualOptionally(to: rhs._id.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._name.value.isValueEqualOptionally(to: rhs._name.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._description?.value.isValueEqualOptionally(to: rhs._description?.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._specific_accuracy.value.isValueEqualOptionally(to: rhs._specific_accuracy.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._equivalence_target.value.isValueEqualOptionally(to: rhs._equivalence_target.value, visited: &comppairs)	{
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
      if let comp = self._id.value.isValueEqualOptionally(to: rhs._id.value, visited: &comppairs) {
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
      if let comp = self._specific_accuracy.value.isValueEqualOptionally(to: rhs._specific_accuracy.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._equivalence_target.value.isValueEqualOptionally(to: rhs._equivalence_target.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(ID: tIDENTIFIER, NAME: tLABEL, DESCRIPTION: tTEXT? , SPECIFIC_ACCURACY: 
                eSHAPE_MEASUREMENT_ACCURACY, EQUIVALENCE_TARGET: sACCURACY_ASSOCIATED_TARGET_SELECT) {
      self._id = ID
      self._name = NAME
      self._description = DESCRIPTION
      self._specific_accuracy = SPECIFIC_ACCURACY
      self._equivalence_target = EQUIVALENCE_TARGET
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 5
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: tIDENTIFIER.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: tLABEL.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p2) = exchangeStructure.recoverOptionalParameter(as: tTEXT.self, from: parameters[2])
      else { exchangeStructure.add(errorContext: "while recovering parameter #2 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p3) = exchangeStructure.recoverRequiredParameter(as: 
        eSHAPE_MEASUREMENT_ACCURACY.self, from: parameters[3])
      else { exchangeStructure.add(errorContext: "while recovering parameter #3 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p4) = exchangeStructure.recoverRequiredParameter(as: 
        sACCURACY_ASSOCIATED_TARGET_SELECT.self, from: parameters[4])
      else { exchangeStructure.add(errorContext: "while recovering parameter #4 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( ID: p0, NAME: p1, DESCRIPTION: p2, SPECIFIC_ACCURACY: p3, EQUIVALENCE_TARGET: p4 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY a3m_equivalence_accuracy_association;
      id                  : identifier;
      name                : label;
      description         : OPTIONAL text;
      specific_accuracy   : shape_measurement_accuracy;
      equivalence_target  : accuracy_associated_target_select;
  END_ENTITY; -- a3m_equivalence_accuracy_association (line:6016 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eA3M_EQUIVALENCE_ACCURACY_ASSOCIATION : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _a3m_equivalence_accuracy_association.self
    }
    public let partialEntity: _a3m_equivalence_accuracy_association

    //MARK: SUPERTYPES
    public var super_eA3M_EQUIVALENCE_ACCURACY_ASSOCIATION: eA3M_EQUIVALENCE_ACCURACY_ASSOCIATION { return self } 	// [1]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eA3M_EQUIVALENCE_ACCURACY_ASSOCIATION`` )
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
    /// - origin: SELF( ``eA3M_EQUIVALENCE_ACCURACY_ASSOCIATION`` )
    public var SPECIFIC_ACCURACY: eSHAPE_MEASUREMENT_ACCURACY {
      get {
        return SDAI.UNWRAP( self.partialEntity._specific_accuracy )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._specific_accuracy = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eA3M_EQUIVALENCE_ACCURACY_ASSOCIATION`` )
    public var ID: tIDENTIFIER {
      get {
        return SDAI.UNWRAP( self.partialEntity._id )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._id = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eA3M_EQUIVALENCE_ACCURACY_ASSOCIATION`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( self.partialEntity._name )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eA3M_EQUIVALENCE_ACCURACY_ASSOCIATION`` )
    public var EQUIVALENCE_TARGET: sACCURACY_ASSOCIATED_TARGET_SELECT {
      get {
        return SDAI.UNWRAP( self.partialEntity._equivalence_target )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._equivalence_target = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_a3m_equivalence_accuracy_association.self) else { return nil }
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
    public convenience init?(_ partial:_a3m_equivalence_accuracy_association) {
      let complex = SDAI.ComplexEntity(entities:[partial])
      self.init(complex: complex)
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "A3M_EQUIVALENCE_ACCURACY_ASSOCIATION", type: self, explicitAttributeCount: 5)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eA3M_EQUIVALENCE_ACCURACY_ASSOCIATION.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eA3M_EQUIVALENCE_ACCURACY_ASSOCIATION.DESCRIPTION, 
        kind: .explicitOptional, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SPECIFIC_ACCURACY", keyPath: \eA3M_EQUIVALENCE_ACCURACY_ASSOCIATION.SPECIFIC_ACCURACY, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ID", keyPath: \eA3M_EQUIVALENCE_ACCURACY_ASSOCIATION.ID, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eA3M_EQUIVALENCE_ACCURACY_ASSOCIATION.NAME, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "EQUIVALENCE_TARGET", keyPath: \eA3M_EQUIVALENCE_ACCURACY_ASSOCIATION.EQUIVALENCE_TARGET, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
