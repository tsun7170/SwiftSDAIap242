/* file: data_equivalence_report_request.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  ENTITY data_equivalence_report_request;
      id                           : identifier;
      name                         : label;
      description                  : OPTIONAL text;
      criterion_of_report_request  : data_equivalence_criterion;
  END_ENTITY; -- data_equivalence_report_request (line:11436 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  ENTITY(SELF)	data_equivalence_report_request
    ATTR:  id,	TYPE: identifier -- EXPLICIT

    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT

    ATTR:  criterion_of_report_request,	TYPE: data_equivalence_criterion -- EXPLICIT


  SUB- ENTITY(2)	a3m_equivalence_summary_report_request_with_representative_value
    ATTR:  report_request_type,	TYPE: representative_value_type -- EXPLICIT	(AMBIGUOUS/MASKED)


  SUB- ENTITY(3)	detailed_equivalence_report_request_with_number_of_instances
    ATTR:  number_of_instances,	TYPE: INTEGER -- EXPLICIT

    REDCR: report_request_type,	TYPE: detailed_report_style_type -- DERIVED (DYNAMIC)	(AMBIGUOUS/MASKED)
      := inspected_element
      -- OVERRIDING ENTITY: detailed_equivalence_report_request


  SUB- ENTITY(4)	detailed_equivalence_report_request
    ATTR:  report_request_type,	TYPE: detailed_report_style_type -- EXPLICIT (DYNAMIC)	(AMBIGUOUS/MASKED)
      -- possibly overriden by
          ENTITY: detailed_equivalence_report_request_with_number_of_instances,	TYPE: detailed_report_style_type	(as DERIVED)

    ATTR:  report_sequence,	TYPE: preferred_report_ordering -- EXPLICIT


  SUB- ENTITY(5)	summary_report_request_with_number_of_instances
    ATTR:  report_request_type,	TYPE: SET [1 : 3] OF summary_report_style_type -- EXPLICIT	(AMBIGUOUS/MASKED)


*/


//MARK: - Partial Entity
  public final class _data_equivalence_report_request : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eDATA_EQUIVALENCE_REPORT_REQUEST.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _id: tIDENTIFIER // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _name: tLABEL // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _description: tTEXT?  // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _criterion_of_report_request: eDATA_EQUIVALENCE_CRITERION // PLAIN EXPLICIT ATTRIBUTE

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
      self._criterion_of_report_request.value.hashAsValue(into: &hasher, visited: &complexEntities)
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
      if let comp = self._criterion_of_report_request.value.isValueEqualOptionally(to: rhs._criterion_of_report_request.value, visited: &comppairs)	{
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
      if let comp = self._criterion_of_report_request.value.isValueEqualOptionally(to: rhs._criterion_of_report_request.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(ID: tIDENTIFIER, NAME: tLABEL, DESCRIPTION: tTEXT? , CRITERION_OF_REPORT_REQUEST: 
                eDATA_EQUIVALENCE_CRITERION) {
      self._id = ID
      self._name = NAME
      self._description = DESCRIPTION
      self._criterion_of_report_request = CRITERION_OF_REPORT_REQUEST
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 4
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: tIDENTIFIER.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: tLABEL.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p2) = exchangeStructure.recoverOptionalParameter(as: tTEXT.self, from: parameters[2])
      else { exchangeStructure.add(errorContext: "while recovering parameter #2 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p3) = exchangeStructure.recoverRequiredParameter(as: 
        eDATA_EQUIVALENCE_CRITERION.self, from: parameters[3])
      else { exchangeStructure.add(errorContext: "while recovering parameter #3 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( ID: p0, NAME: p1, DESCRIPTION: p2, CRITERION_OF_REPORT_REQUEST: p3 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY data_equivalence_report_request;
      id                           : identifier;
      name                         : label;
      description                  : OPTIONAL text;
      criterion_of_report_request  : data_equivalence_criterion;
  END_ENTITY; -- data_equivalence_report_request (line:11436 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eDATA_EQUIVALENCE_REPORT_REQUEST : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _data_equivalence_report_request.self
    }
    public let partialEntity: _data_equivalence_report_request

    //MARK: SUPERTYPES
    public var super_eDATA_EQUIVALENCE_REPORT_REQUEST: eDATA_EQUIVALENCE_REPORT_REQUEST { return self } 	// [1]

    //MARK: SUBTYPES
    public var sub_eA3M_EQUIVALENCE_SUMMARY_REPORT_REQUEST_WITH_REPRESENTATIVE_VALUE: eA3M_EQUIVALENCE_SUMMARY_REPORT_REQUEST_WITH_REPRESENTATIVE_VALUE? {	// [2]
      return self.complexEntity.entityReference(eA3M_EQUIVALENCE_SUMMARY_REPORT_REQUEST_WITH_REPRESENTATIVE_VALUE.self)
    }

    public var sub_eDETAILED_EQUIVALENCE_REPORT_REQUEST_WITH_NUMBER_OF_INSTANCES: eDETAILED_EQUIVALENCE_REPORT_REQUEST_WITH_NUMBER_OF_INSTANCES? {	// [3]
      return self.complexEntity.entityReference(eDETAILED_EQUIVALENCE_REPORT_REQUEST_WITH_NUMBER_OF_INSTANCES.self)
    }

    public var sub_eDETAILED_EQUIVALENCE_REPORT_REQUEST: eDETAILED_EQUIVALENCE_REPORT_REQUEST? {	// [4]
      return self.complexEntity.entityReference(eDETAILED_EQUIVALENCE_REPORT_REQUEST.self)
    }

    public var sub_eSUMMARY_REPORT_REQUEST_WITH_NUMBER_OF_INSTANCES: eSUMMARY_REPORT_REQUEST_WITH_NUMBER_OF_INSTANCES? {	// [5]
      return self.complexEntity.entityReference(eSUMMARY_REPORT_REQUEST_WITH_NUMBER_OF_INSTANCES.self)
    }


    //MARK: ATTRIBUTES
    // REPORT_REQUEST_TYPE: (4 AMBIGUOUS REFs)

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eDATA_EQUIVALENCE_REPORT_REQUEST`` )
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
    /// - origin: SUB( ``eDETAILED_EQUIVALENCE_REPORT_REQUEST`` )
    public var REPORT_SEQUENCE: nPREFERRED_REPORT_ORDERING?  {
      get {
        return sub_eDETAILED_EQUIVALENCE_REPORT_REQUEST?.partialEntity._report_sequence
      }
      set(newValue) {
        guard let partial = sub_eDETAILED_EQUIVALENCE_REPORT_REQUEST?.super_eDETAILED_EQUIVALENCE_REPORT_REQUEST
          .partialEntity else { return }
        partial._report_sequence = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eDATA_EQUIVALENCE_REPORT_REQUEST`` )
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
    /// - origin: SELF( ``eDATA_EQUIVALENCE_REPORT_REQUEST`` )
    public var CRITERION_OF_REPORT_REQUEST: eDATA_EQUIVALENCE_CRITERION {
      get {
        return SDAI.UNWRAP( self.partialEntity._criterion_of_report_request )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._criterion_of_report_request = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eDATA_EQUIVALENCE_REPORT_REQUEST`` )
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
    /// - origin: SUB( ``eDETAILED_EQUIVALENCE_REPORT_REQUEST_WITH_NUMBER_OF_INSTANCES`` )
    public var NUMBER_OF_INSTANCES: SDAI.INTEGER?  {
      get {
        return sub_eDETAILED_EQUIVALENCE_REPORT_REQUEST_WITH_NUMBER_OF_INSTANCES?.partialEntity
          ._number_of_instances
      }
      set(newValue) {
        guard let partial = sub_eDETAILED_EQUIVALENCE_REPORT_REQUEST_WITH_NUMBER_OF_INSTANCES?.super_eDETAILED_EQUIVALENCE_REPORT_REQUEST_WITH_NUMBER_OF_INSTANCES
          .partialEntity else { return }
        partial._number_of_instances = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_data_equivalence_report_request.self) else { return nil }
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
    public convenience init?(_ partial:_data_equivalence_report_request) {
      let complex = SDAI.ComplexEntity(entities:[partial])
      self.init(complex: complex)
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "DATA_EQUIVALENCE_REPORT_REQUEST", type: self, explicitAttributeCount: 4)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eDATA_EQUIVALENCE_REPORT_REQUEST.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eDATA_EQUIVALENCE_REPORT_REQUEST.DESCRIPTION, 
        kind: .explicitOptional, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "REPORT_SEQUENCE", keyPath: \eDATA_EQUIVALENCE_REPORT_REQUEST.REPORT_SEQUENCE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ID", keyPath: \eDATA_EQUIVALENCE_REPORT_REQUEST.ID, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "CRITERION_OF_REPORT_REQUEST", keyPath: \eDATA_EQUIVALENCE_REPORT_REQUEST.CRITERION_OF_REPORT_REQUEST, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eDATA_EQUIVALENCE_REPORT_REQUEST.NAME, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NUMBER_OF_INSTANCES", keyPath: \eDATA_EQUIVALENCE_REPORT_REQUEST.NUMBER_OF_INSTANCES, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
