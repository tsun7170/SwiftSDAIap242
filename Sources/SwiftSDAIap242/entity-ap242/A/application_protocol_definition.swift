/* file: application_protocol_definition.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY application_protocol_definition;
      status                          : label;
      application_interpreted_model_schema_name : label;
      application_protocol_year       : year_number;
      application                     : application_context;
  END_ENTITY; -- application_protocol_definition (line:7065 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  ENTITY(SELF)	application_protocol_definition
    ATTR:  status,	TYPE: label -- EXPLICIT

    ATTR:  application_interpreted_model_schema_name,	TYPE: label -- EXPLICIT

    ATTR:  application_protocol_year,	TYPE: year_number -- EXPLICIT

    ATTR:  application,	TYPE: application_context -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _application_protocol_definition : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eAPPLICATION_PROTOCOL_DEFINITION.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _status: tLABEL // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _application_interpreted_model_schema_name: tLABEL // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _application_protocol_year: tYEAR_NUMBER // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _application: eAPPLICATION_CONTEXT // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._status.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._application_interpreted_model_schema_name.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._application_protocol_year.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._application.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._status.value.isValueEqualOptionally(to: rhs._status.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._application_interpreted_model_schema_name.value.isValueEqualOptionally(to: rhs._application_interpreted_model_schema_name.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._application_protocol_year.value.isValueEqualOptionally(to: rhs._application_protocol_year.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._application.value.isValueEqualOptionally(to: rhs._application.value, visited: &comppairs)	{
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
      if let comp = self._status.value.isValueEqualOptionally(to: rhs._status.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._application_interpreted_model_schema_name.value.isValueEqualOptionally(to: rhs._application_interpreted_model_schema_name.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._application_protocol_year.value.isValueEqualOptionally(to: rhs._application_protocol_year.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._application.value.isValueEqualOptionally(to: rhs._application.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(STATUS: tLABEL, APPLICATION_INTERPRETED_MODEL_SCHEMA_NAME: tLABEL, 
                APPLICATION_PROTOCOL_YEAR: tYEAR_NUMBER, APPLICATION: eAPPLICATION_CONTEXT) {
      self._status = STATUS
      self._application_interpreted_model_schema_name = APPLICATION_INTERPRETED_MODEL_SCHEMA_NAME
      self._application_protocol_year = APPLICATION_PROTOCOL_YEAR
      self._application = APPLICATION
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 4
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: tLABEL.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: tLABEL.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p2) = exchangeStructure.recoverRequiredParameter(as: tYEAR_NUMBER.self, from: parameters[2])
      else { exchangeStructure.add(errorContext: "while recovering parameter #2 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p3) = exchangeStructure.recoverRequiredParameter(as: eAPPLICATION_CONTEXT.self, from: parameters[3])
      else { exchangeStructure.add(errorContext: "while recovering parameter #3 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( STATUS: p0, APPLICATION_INTERPRETED_MODEL_SCHEMA_NAME: p1, APPLICATION_PROTOCOL_YEAR: p2, APPLICATION: p3 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY application_protocol_definition;
      status                          : label;
      application_interpreted_model_schema_name : label;
      application_protocol_year       : year_number;
      application                     : application_context;
  END_ENTITY; -- application_protocol_definition (line:7065 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eAPPLICATION_PROTOCOL_DEFINITION : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _application_protocol_definition.self
    }
    public let partialEntity: _application_protocol_definition

    //MARK: SUPERTYPES
    public var super_eAPPLICATION_PROTOCOL_DEFINITION: eAPPLICATION_PROTOCOL_DEFINITION { return self } 	// [1]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eAPPLICATION_PROTOCOL_DEFINITION`` )
    public var APPLICATION_PROTOCOL_YEAR: tYEAR_NUMBER {
      get {
        return SDAI.UNWRAP( self.partialEntity._application_protocol_year )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._application_protocol_year = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eAPPLICATION_PROTOCOL_DEFINITION`` )
    public var STATUS: tLABEL {
      get {
        return SDAI.UNWRAP( self.partialEntity._status )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._status = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eAPPLICATION_PROTOCOL_DEFINITION`` )
    public var APPLICATION: eAPPLICATION_CONTEXT {
      get {
        return SDAI.UNWRAP( self.partialEntity._application )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._application = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eAPPLICATION_PROTOCOL_DEFINITION`` )
    public var APPLICATION_INTERPRETED_MODEL_SCHEMA_NAME: tLABEL {
      get {
        return SDAI.UNWRAP( self.partialEntity._application_interpreted_model_schema_name )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._application_interpreted_model_schema_name = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_application_protocol_definition.self) else { return nil }
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
    public convenience init?(_ partial:_application_protocol_definition) {
      let complex = SDAI.ComplexEntity(entities:[partial])
      self.init(complex: complex)
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "APPLICATION_PROTOCOL_DEFINITION", type: self, explicitAttributeCount: 4)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eAPPLICATION_PROTOCOL_DEFINITION.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "APPLICATION_PROTOCOL_YEAR", keyPath: \eAPPLICATION_PROTOCOL_DEFINITION.APPLICATION_PROTOCOL_YEAR, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "STATUS", keyPath: \eAPPLICATION_PROTOCOL_DEFINITION.STATUS, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "APPLICATION", keyPath: \eAPPLICATION_PROTOCOL_DEFINITION.APPLICATION, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "APPLICATION_INTERPRETED_MODEL_SCHEMA_NAME", keyPath: \eAPPLICATION_PROTOCOL_DEFINITION.APPLICATION_INTERPRETED_MODEL_SCHEMA_NAME, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
