/* file: geometric_representation_context_with_parameter.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY geometric_representation_context_with_parameter
    SUBTYPE OF ( geometric_representation_context );
      parameter_unit  : OPTIONAL unit;
  END_ENTITY; -- geometric_representation_context_with_parameter (line:16886 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_context
    ATTR:  context_identifier,	TYPE: identifier -- EXPLICIT

    ATTR:  context_type,	TYPE: text -- EXPLICIT

    ATTR:  representations_in_context,	TYPE: SET [1 : ?] OF representation -- INVERSE
      FOR context_of_items;


  SUPER- ENTITY(2)	geometric_representation_context
    ATTR:  coordinate_space_dimension,	TYPE: dimension_count -- EXPLICIT


  ENTITY(SELF)	geometric_representation_context_with_parameter
    ATTR:  parameter_unit,	TYPE: OPTIONAL unit -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _geometric_representation_context_with_parameter : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eGEOMETRIC_REPRESENTATION_CONTEXT_WITH_PARAMETER.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _parameter_unit: sUNIT?  // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._parameter_unit?.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._parameter_unit?.value.isValueEqualOptionally(to: rhs._parameter_unit?.value, visited: &comppairs)	{
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
      if let comp = self._parameter_unit?.value.isValueEqualOptionally(to: rhs._parameter_unit?.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(PARAMETER_UNIT: sUNIT? ) {
      self._parameter_unit = PARAMETER_UNIT
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverOptionalParameter(as: sUNIT.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( PARAMETER_UNIT: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY geometric_representation_context_with_parameter
    SUBTYPE OF ( geometric_representation_context );
      parameter_unit  : OPTIONAL unit;
  END_ENTITY; -- geometric_representation_context_with_parameter (line:16886 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eGEOMETRIC_REPRESENTATION_CONTEXT_WITH_PARAMETER : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _geometric_representation_context_with_parameter.self
    }
    public let partialEntity: _geometric_representation_context_with_parameter

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_CONTEXT: eREPRESENTATION_CONTEXT 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_CONTEXT: eGEOMETRIC_REPRESENTATION_CONTEXT 	// [2]
    public var super_eGEOMETRIC_REPRESENTATION_CONTEXT_WITH_PARAMETER: eGEOMETRIC_REPRESENTATION_CONTEXT_WITH_PARAMETER { return self } 	// [3]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eREPRESENTATION_CONTEXT`` )
    public var CONTEXT_IDENTIFIER: tIDENTIFIER {
      get {
        return SDAI.UNWRAP( super_eREPRESENTATION_CONTEXT.partialEntity._context_identifier )
      }
      set(newValue) {
        let partial = super_eREPRESENTATION_CONTEXT.partialEntity
        partial._context_identifier = SDAI.UNWRAP(newValue)
      }
    }

    /// __INVERSE__ attribute
    /// observing eREPRESENTATION .CONTEXT_OF_ITEMS
    /// - origin: SUPER( ``eREPRESENTATION_CONTEXT`` )
    public var REPRESENTATIONS_IN_CONTEXT: SDAI.SET<eREPRESENTATION>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( super_eREPRESENTATION_CONTEXT.partialEntity._representations_in_context )
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eGEOMETRIC_REPRESENTATION_CONTEXT`` )
    public var COORDINATE_SPACE_DIMENSION: tDIMENSION_COUNT {
      get {
        return SDAI.UNWRAP( super_eGEOMETRIC_REPRESENTATION_CONTEXT.partialEntity._coordinate_space_dimension )
      }
      set(newValue) {
        let partial = super_eGEOMETRIC_REPRESENTATION_CONTEXT.partialEntity
        partial._coordinate_space_dimension = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eREPRESENTATION_CONTEXT`` )
    public var CONTEXT_TYPE: tTEXT {
      get {
        return SDAI.UNWRAP( super_eREPRESENTATION_CONTEXT.partialEntity._context_type )
      }
      set(newValue) {
        let partial = super_eREPRESENTATION_CONTEXT.partialEntity
        partial._context_type = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eGEOMETRIC_REPRESENTATION_CONTEXT_WITH_PARAMETER`` )
    public var PARAMETER_UNIT: sUNIT?  {
      get {
        return self.partialEntity._parameter_unit
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._parameter_unit = newValue
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_geometric_representation_context_with_parameter.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_CONTEXT.self) else { return nil }
      self.super_eREPRESENTATION_CONTEXT = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_CONTEXT.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_CONTEXT = super2

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "GEOMETRIC_REPRESENTATION_CONTEXT_WITH_PARAMETER", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_CONTEXT.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_CONTEXT.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_CONTEXT_WITH_PARAMETER.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "CONTEXT_IDENTIFIER", keyPath: \eGEOMETRIC_REPRESENTATION_CONTEXT_WITH_PARAMETER.CONTEXT_IDENTIFIER, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "REPRESENTATIONS_IN_CONTEXT", keyPath: \eGEOMETRIC_REPRESENTATION_CONTEXT_WITH_PARAMETER.REPRESENTATIONS_IN_CONTEXT, 
        kind: .inverse, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "COORDINATE_SPACE_DIMENSION", keyPath: \eGEOMETRIC_REPRESENTATION_CONTEXT_WITH_PARAMETER.COORDINATE_SPACE_DIMENSION, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "CONTEXT_TYPE", keyPath: \eGEOMETRIC_REPRESENTATION_CONTEXT_WITH_PARAMETER.CONTEXT_TYPE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "PARAMETER_UNIT", keyPath: \eGEOMETRIC_REPRESENTATION_CONTEXT_WITH_PARAMETER.PARAMETER_UNIT, 
        kind: .explicitOptional, source: .thisEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
