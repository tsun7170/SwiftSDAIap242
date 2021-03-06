/* file: a3m_equivalence_summary_report_request_with_representative_value.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY a3m_equivalence_summary_report_request_with_representative_value
    SUBTYPE OF ( data_equivalence_report_request );
      report_request_type  : representative_value_type;
  END_ENTITY; -- a3m_equivalence_summary_report_request_with_representative_value (line:6213 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	data_equivalence_report_request
    ATTR:  id,	TYPE: identifier -- EXPLICIT

    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT

    ATTR:  criterion_of_report_request,	TYPE: data_equivalence_criterion -- EXPLICIT


  ENTITY(SELF)	a3m_equivalence_summary_report_request_with_representative_value
    ATTR:  report_request_type,	TYPE: representative_value_type -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _a3m_equivalence_summary_report_request_with_representative_value : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eA3M_EQUIVALENCE_SUMMARY_REPORT_REQUEST_WITH_REPRESENTATIVE_VALUE.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _report_request_type: nREPRESENTATIVE_VALUE_TYPE // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._report_request_type.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._report_request_type.value.isValueEqualOptionally(to: rhs._report_request_type.value, visited: &comppairs)	{
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
      if let comp = self._report_request_type.value.isValueEqualOptionally(to: rhs._report_request_type.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(REPORT_REQUEST_TYPE: nREPRESENTATIVE_VALUE_TYPE) {
      self._report_request_type = REPORT_REQUEST_TYPE
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: nREPRESENTATIVE_VALUE_TYPE.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( REPORT_REQUEST_TYPE: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY a3m_equivalence_summary_report_request_with_representative_value
    SUBTYPE OF ( data_equivalence_report_request );
      report_request_type  : representative_value_type;
  END_ENTITY; -- a3m_equivalence_summary_report_request_with_representative_value (line:6213 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eA3M_EQUIVALENCE_SUMMARY_REPORT_REQUEST_WITH_REPRESENTATIVE_VALUE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _a3m_equivalence_summary_report_request_with_representative_value.self
    }
    public let partialEntity: _a3m_equivalence_summary_report_request_with_representative_value

    //MARK: SUPERTYPES
    public let super_eDATA_EQUIVALENCE_REPORT_REQUEST: eDATA_EQUIVALENCE_REPORT_REQUEST 	// [1]
    public var super_eA3M_EQUIVALENCE_SUMMARY_REPORT_REQUEST_WITH_REPRESENTATIVE_VALUE: eA3M_EQUIVALENCE_SUMMARY_REPORT_REQUEST_WITH_REPRESENTATIVE_VALUE { return self } 	// [2]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eDATA_EQUIVALENCE_REPORT_REQUEST`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        return super_eDATA_EQUIVALENCE_REPORT_REQUEST.partialEntity._description
      }
      set(newValue) {
        let partial = super_eDATA_EQUIVALENCE_REPORT_REQUEST.partialEntity
        partial._description = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eA3M_EQUIVALENCE_SUMMARY_REPORT_REQUEST_WITH_REPRESENTATIVE_VALUE`` )
    public var REPORT_REQUEST_TYPE: nREPRESENTATIVE_VALUE_TYPE {
      get {
        return SDAI.UNWRAP( self.partialEntity._report_request_type )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._report_request_type = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eDATA_EQUIVALENCE_REPORT_REQUEST`` )
    public var ID: tIDENTIFIER {
      get {
        return SDAI.UNWRAP( super_eDATA_EQUIVALENCE_REPORT_REQUEST.partialEntity._id )
      }
      set(newValue) {
        let partial = super_eDATA_EQUIVALENCE_REPORT_REQUEST.partialEntity
        partial._id = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eDATA_EQUIVALENCE_REPORT_REQUEST`` )
    public var CRITERION_OF_REPORT_REQUEST: eDATA_EQUIVALENCE_CRITERION {
      get {
        return SDAI.UNWRAP( super_eDATA_EQUIVALENCE_REPORT_REQUEST.partialEntity._criterion_of_report_request )
      }
      set(newValue) {
        let partial = super_eDATA_EQUIVALENCE_REPORT_REQUEST.partialEntity
        partial._criterion_of_report_request = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eDATA_EQUIVALENCE_REPORT_REQUEST`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( super_eDATA_EQUIVALENCE_REPORT_REQUEST.partialEntity._name )
      }
      set(newValue) {
        let partial = super_eDATA_EQUIVALENCE_REPORT_REQUEST.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_a3m_equivalence_summary_report_request_with_representative_value.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eDATA_EQUIVALENCE_REPORT_REQUEST.self) else { return nil }
      self.super_eDATA_EQUIVALENCE_REPORT_REQUEST = super1

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "A3M_EQUIVALENCE_SUMMARY_REPORT_REQUEST_WITH_REPRESENTATIVE_VALUE", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eDATA_EQUIVALENCE_REPORT_REQUEST.self)
      entityDef.add(supertype: eA3M_EQUIVALENCE_SUMMARY_REPORT_REQUEST_WITH_REPRESENTATIVE_VALUE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eA3M_EQUIVALENCE_SUMMARY_REPORT_REQUEST_WITH_REPRESENTATIVE_VALUE.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "REPORT_REQUEST_TYPE", keyPath: \eA3M_EQUIVALENCE_SUMMARY_REPORT_REQUEST_WITH_REPRESENTATIVE_VALUE.REPORT_REQUEST_TYPE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ID", keyPath: \eA3M_EQUIVALENCE_SUMMARY_REPORT_REQUEST_WITH_REPRESENTATIVE_VALUE.ID, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "CRITERION_OF_REPORT_REQUEST", keyPath: \eA3M_EQUIVALENCE_SUMMARY_REPORT_REQUEST_WITH_REPRESENTATIVE_VALUE.CRITERION_OF_REPORT_REQUEST, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eA3M_EQUIVALENCE_SUMMARY_REPORT_REQUEST_WITH_REPRESENTATIVE_VALUE.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
