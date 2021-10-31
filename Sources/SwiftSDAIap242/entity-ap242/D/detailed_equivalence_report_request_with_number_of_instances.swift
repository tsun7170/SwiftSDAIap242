/* file: detailed_equivalence_report_request_with_number_of_instances.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  ENTITY detailed_equivalence_report_request_with_number_of_instances
    SUBTYPE OF ( detailed_equivalence_report_request );
      number_of_instances  : INTEGER;
    DERIVE
      SELF\detailed_equivalence_report_request.report_request_type : detailed_report_style_type := 
                                          inspected_element;
  END_ENTITY; -- detailed_equivalence_report_request_with_number_of_instances (line:11990 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	data_equivalence_report_request
    ATTR:  id,	TYPE: identifier -- EXPLICIT

    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT

    ATTR:  criterion_of_report_request,	TYPE: data_equivalence_criterion -- EXPLICIT


  SUPER- ENTITY(2)	detailed_equivalence_report_request
    ATTR:  report_request_type,	TYPE: detailed_report_style_type -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
      *** ENTITY: detailed_equivalence_report_request_with_number_of_instances,	TYPE: detailed_report_style_type	(as DERIVED)

    ATTR:  report_sequence,	TYPE: preferred_report_ordering -- EXPLICIT


  ENTITY(SELF)	detailed_equivalence_report_request_with_number_of_instances
    ATTR:  number_of_instances,	TYPE: INTEGER -- EXPLICIT

    REDCR: report_request_type,	TYPE: detailed_report_style_type -- DERIVED (DYNAMIC)
      := inspected_element
      -- OVERRIDING ENTITY: detailed_equivalence_report_request


*/


//MARK: - Partial Entity
  public final class _detailed_equivalence_report_request_with_number_of_instances : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eDETAILED_EQUIVALENCE_REPORT_REQUEST_WITH_NUMBER_OF_INSTANCES.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _number_of_instances: SDAI.INTEGER // PLAIN EXPLICIT ATTRIBUTE

    /// DERIVE ATTRIBUTE REDEFINITION(origin: eDETAILED_EQUIVALENCE_REPORT_REQUEST)
    /// - attribute value provider protocol conformance wrapper
    internal func _report_request_type__getter(complex: SDAI.ComplexEntity) -> nDETAILED_REPORT_STYLE_TYPE {
      let SELF = complex.entityReference( eDETAILED_EQUIVALENCE_REPORT_REQUEST_WITH_NUMBER_OF_INSTANCES.self )!
      return SDAI.UNWRAP( nDETAILED_REPORT_STYLE_TYPE(SELF.REPORT_REQUEST_TYPE) )
    }
    /// DERIVE ATTRIBUTE REDEFINITION(origin: eDETAILED_EQUIVALENCE_REPORT_REQUEST)
    /// - gut of derived attribute logic
    internal func _report_request_type__getter(SELF: eDETAILED_EQUIVALENCE_REPORT_REQUEST_WITH_NUMBER_OF_INSTANCES) -> 
      nDETAILED_REPORT_STYLE_TYPE {
      let value = INSPECTED_ELEMENT
      return SDAI.UNWRAP( value )
    }

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._number_of_instances.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._number_of_instances.value.isValueEqualOptionally(to: rhs._number_of_instances.value, visited: &comppairs)	{
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
      if let comp = self._number_of_instances.value.isValueEqualOptionally(to: rhs._number_of_instances.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(NUMBER_OF_INSTANCES: SDAI.INTEGER) {
      self._number_of_instances = NUMBER_OF_INSTANCES
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: SDAI.INTEGER.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( NUMBER_OF_INSTANCES: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY detailed_equivalence_report_request_with_number_of_instances
    SUBTYPE OF ( detailed_equivalence_report_request );
      number_of_instances  : INTEGER;
    DERIVE
      SELF\detailed_equivalence_report_request.report_request_type : detailed_report_style_type := 
                                          inspected_element;
  END_ENTITY; -- detailed_equivalence_report_request_with_number_of_instances (line:11990 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eDETAILED_EQUIVALENCE_REPORT_REQUEST_WITH_NUMBER_OF_INSTANCES : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _detailed_equivalence_report_request_with_number_of_instances.self
    }
    public let partialEntity: _detailed_equivalence_report_request_with_number_of_instances

    //MARK: SUPERTYPES
    public let super_eDATA_EQUIVALENCE_REPORT_REQUEST: eDATA_EQUIVALENCE_REPORT_REQUEST 	// [1]
    public let super_eDETAILED_EQUIVALENCE_REPORT_REQUEST: eDETAILED_EQUIVALENCE_REPORT_REQUEST 	// [2]
    public var super_eDETAILED_EQUIVALENCE_REPORT_REQUEST_WITH_NUMBER_OF_INSTANCES: eDETAILED_EQUIVALENCE_REPORT_REQUEST_WITH_NUMBER_OF_INSTANCES { return self } 	// [3]

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

    /// __EXPLICIT REDEF(DERIVE)__ attribute
    /// - origin: SELF( ``eDETAILED_EQUIVALENCE_REPORT_REQUEST_WITH_NUMBER_OF_INSTANCES`` )
    public var REPORT_REQUEST_TYPE: nDETAILED_REPORT_STYLE_TYPE {
      get {
        if let cached = cachedValue(derivedAttributeName:"REPORT_REQUEST_TYPE") {
          return cached.value as! nDETAILED_REPORT_STYLE_TYPE
        }
        let origin = self
        let value = SDAI.UNWRAP( origin.partialEntity._report_request_type__getter(SELF: origin) )
        updateCache(derivedAttributeName:"REPORT_REQUEST_TYPE", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eDETAILED_EQUIVALENCE_REPORT_REQUEST`` )
    public var REPORT_SEQUENCE: nPREFERRED_REPORT_ORDERING {
      get {
        return SDAI.UNWRAP( super_eDETAILED_EQUIVALENCE_REPORT_REQUEST.partialEntity._report_sequence )
      }
      set(newValue) {
        let partial = super_eDETAILED_EQUIVALENCE_REPORT_REQUEST.partialEntity
        partial._report_sequence = SDAI.UNWRAP(newValue)
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

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eDETAILED_EQUIVALENCE_REPORT_REQUEST_WITH_NUMBER_OF_INSTANCES`` )
    public var NUMBER_OF_INSTANCES: SDAI.INTEGER {
      get {
        return SDAI.UNWRAP( self.partialEntity._number_of_instances )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._number_of_instances = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_detailed_equivalence_report_request_with_number_of_instances.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eDATA_EQUIVALENCE_REPORT_REQUEST.self) else { return nil }
      self.super_eDATA_EQUIVALENCE_REPORT_REQUEST = super1

      guard let super2 = complexEntity?.entityReference(eDETAILED_EQUIVALENCE_REPORT_REQUEST.self) else { return nil }
      self.super_eDETAILED_EQUIVALENCE_REPORT_REQUEST = super2

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "DETAILED_EQUIVALENCE_REPORT_REQUEST_WITH_NUMBER_OF_INSTANCES", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eDATA_EQUIVALENCE_REPORT_REQUEST.self)
      entityDef.add(supertype: eDETAILED_EQUIVALENCE_REPORT_REQUEST.self)
      entityDef.add(supertype: eDETAILED_EQUIVALENCE_REPORT_REQUEST_WITH_NUMBER_OF_INSTANCES.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eDETAILED_EQUIVALENCE_REPORT_REQUEST_WITH_NUMBER_OF_INSTANCES.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "REPORT_REQUEST_TYPE", keyPath: \eDETAILED_EQUIVALENCE_REPORT_REQUEST_WITH_NUMBER_OF_INSTANCES.REPORT_REQUEST_TYPE, 
        kind: .derivedRedeclaring, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "REPORT_SEQUENCE", keyPath: \eDETAILED_EQUIVALENCE_REPORT_REQUEST_WITH_NUMBER_OF_INSTANCES.REPORT_SEQUENCE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ID", keyPath: \eDETAILED_EQUIVALENCE_REPORT_REQUEST_WITH_NUMBER_OF_INSTANCES.ID, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "CRITERION_OF_REPORT_REQUEST", keyPath: \eDETAILED_EQUIVALENCE_REPORT_REQUEST_WITH_NUMBER_OF_INSTANCES.CRITERION_OF_REPORT_REQUEST, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eDETAILED_EQUIVALENCE_REPORT_REQUEST_WITH_NUMBER_OF_INSTANCES.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NUMBER_OF_INSTANCES", keyPath: \eDETAILED_EQUIVALENCE_REPORT_REQUEST_WITH_NUMBER_OF_INSTANCES.NUMBER_OF_INSTANCES, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}

//MARK: - partial Entity Dynamic Attribute Protocol Conformances
extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
  ._detailed_equivalence_report_request_with_number_of_instances :
  eDETAILED_EQUIVALENCE_REPORT_REQUEST__REPORT_REQUEST_TYPE__provider {}
