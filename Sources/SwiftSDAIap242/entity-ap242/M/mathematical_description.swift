/* file: mathematical_description.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY mathematical_description;
      described   : maths_expression;
      describing  : STRING;
      encoding    : label;
  END_ENTITY; -- mathematical_description (line:20278 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  ENTITY(SELF)	mathematical_description
    ATTR:  described,	TYPE: maths_expression -- EXPLICIT

    ATTR:  describing,	TYPE: STRING -- EXPLICIT

    ATTR:  encoding,	TYPE: label -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _mathematical_description : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eMATHEMATICAL_DESCRIPTION.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _described: sMATHS_EXPRESSION // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _describing: SDAI.STRING // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _encoding: tLABEL // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._described.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._describing.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._encoding.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._described.value.isValueEqualOptionally(to: rhs._described.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._describing.value.isValueEqualOptionally(to: rhs._describing.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._encoding.value.isValueEqualOptionally(to: rhs._encoding.value, visited: &comppairs)	{
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
      if let comp = self._described.value.isValueEqualOptionally(to: rhs._described.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._describing.value.isValueEqualOptionally(to: rhs._describing.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._encoding.value.isValueEqualOptionally(to: rhs._encoding.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(DESCRIBED: sMATHS_EXPRESSION, DESCRIBING: SDAI.STRING, ENCODING: tLABEL) {
      self._described = DESCRIBED
      self._describing = DESCRIBING
      self._encoding = ENCODING
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 3
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: sMATHS_EXPRESSION.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: SDAI.STRING.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p2) = exchangeStructure.recoverRequiredParameter(as: tLABEL.self, from: parameters[2])
      else { exchangeStructure.add(errorContext: "while recovering parameter #2 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( DESCRIBED: p0, DESCRIBING: p1, ENCODING: p2 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY mathematical_description;
      described   : maths_expression;
      describing  : STRING;
      encoding    : label;
  END_ENTITY; -- mathematical_description (line:20278 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eMATHEMATICAL_DESCRIPTION : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _mathematical_description.self
    }
    public let partialEntity: _mathematical_description

    //MARK: SUPERTYPES
    public var super_eMATHEMATICAL_DESCRIPTION: eMATHEMATICAL_DESCRIPTION { return self } 	// [1]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eMATHEMATICAL_DESCRIPTION`` )
    public var DESCRIBED: sMATHS_EXPRESSION {
      get {
        return SDAI.UNWRAP( self.partialEntity._described )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._described = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eMATHEMATICAL_DESCRIPTION`` )
    public var ENCODING: tLABEL {
      get {
        return SDAI.UNWRAP( self.partialEntity._encoding )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._encoding = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eMATHEMATICAL_DESCRIPTION`` )
    public var DESCRIBING: SDAI.STRING {
      get {
        return SDAI.UNWRAP( self.partialEntity._describing )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._describing = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_mathematical_description.self) else { return nil }
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
    public convenience init?(_ partial:_mathematical_description) {
      let complex = SDAI.ComplexEntity(entities:[partial])
      self.init(complex: complex)
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "MATHEMATICAL_DESCRIPTION", type: self, explicitAttributeCount: 3)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eMATHEMATICAL_DESCRIPTION.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIBED", keyPath: \eMATHEMATICAL_DESCRIPTION.DESCRIBED, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ENCODING", keyPath: \eMATHEMATICAL_DESCRIPTION.ENCODING, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DESCRIBING", keyPath: \eMATHEMATICAL_DESCRIPTION.DESCRIBING, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
