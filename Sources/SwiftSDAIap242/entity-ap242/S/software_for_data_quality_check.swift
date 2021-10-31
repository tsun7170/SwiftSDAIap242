/* file: software_for_data_quality_check.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  ENTITY software_for_data_quality_check;
      description       : text;
      software_name     : text;
      software_version  : text;
      data_quality      : data_quality_definition_representation_relationship;
  END_ENTITY; -- software_for_data_quality_check (line:29890 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  ENTITY(SELF)	software_for_data_quality_check
    ATTR:  description,	TYPE: text -- EXPLICIT

    ATTR:  software_name,	TYPE: text -- EXPLICIT

    ATTR:  software_version,	TYPE: text -- EXPLICIT

    ATTR:  data_quality,	TYPE: data_quality_definition_representation_relationship -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _software_for_data_quality_check : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eSOFTWARE_FOR_DATA_QUALITY_CHECK.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _description: tTEXT // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _software_name: tTEXT // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _software_version: tTEXT // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _data_quality: eDATA_QUALITY_DEFINITION_REPRESENTATION_RELATIONSHIP // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._description.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._software_name.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._software_version.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._data_quality.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._description.value.isValueEqualOptionally(to: rhs._description.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._software_name.value.isValueEqualOptionally(to: rhs._software_name.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._software_version.value.isValueEqualOptionally(to: rhs._software_version.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._data_quality.value.isValueEqualOptionally(to: rhs._data_quality.value, visited: &comppairs)	{
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
      if let comp = self._description.value.isValueEqualOptionally(to: rhs._description.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._software_name.value.isValueEqualOptionally(to: rhs._software_name.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._software_version.value.isValueEqualOptionally(to: rhs._software_version.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._data_quality.value.isValueEqualOptionally(to: rhs._data_quality.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(DESCRIPTION: tTEXT, SOFTWARE_NAME: tTEXT, SOFTWARE_VERSION: tTEXT, 
                DATA_QUALITY: eDATA_QUALITY_DEFINITION_REPRESENTATION_RELATIONSHIP) {
      self._description = DESCRIPTION
      self._software_name = SOFTWARE_NAME
      self._software_version = SOFTWARE_VERSION
      self._data_quality = DATA_QUALITY
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 4
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: tTEXT.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: tTEXT.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p2) = exchangeStructure.recoverRequiredParameter(as: tTEXT.self, from: parameters[2])
      else { exchangeStructure.add(errorContext: "while recovering parameter #2 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p3) = exchangeStructure.recoverRequiredParameter(as: 
        eDATA_QUALITY_DEFINITION_REPRESENTATION_RELATIONSHIP.self, from: parameters[3])
      else { exchangeStructure.add(errorContext: "while recovering parameter #3 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( DESCRIPTION: p0, SOFTWARE_NAME: p1, SOFTWARE_VERSION: p2, DATA_QUALITY: p3 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY software_for_data_quality_check;
      description       : text;
      software_name     : text;
      software_version  : text;
      data_quality      : data_quality_definition_representation_relationship;
  END_ENTITY; -- software_for_data_quality_check (line:29890 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eSOFTWARE_FOR_DATA_QUALITY_CHECK : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _software_for_data_quality_check.self
    }
    public let partialEntity: _software_for_data_quality_check

    //MARK: SUPERTYPES
    public var super_eSOFTWARE_FOR_DATA_QUALITY_CHECK: eSOFTWARE_FOR_DATA_QUALITY_CHECK { return self } 	// [1]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eSOFTWARE_FOR_DATA_QUALITY_CHECK`` )
    public var DESCRIPTION: tTEXT {
      get {
        return SDAI.UNWRAP( self.partialEntity._description )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._description = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eSOFTWARE_FOR_DATA_QUALITY_CHECK`` )
    public var DATA_QUALITY: eDATA_QUALITY_DEFINITION_REPRESENTATION_RELATIONSHIP {
      get {
        return SDAI.UNWRAP( self.partialEntity._data_quality )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._data_quality = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eSOFTWARE_FOR_DATA_QUALITY_CHECK`` )
    public var SOFTWARE_VERSION: tTEXT {
      get {
        return SDAI.UNWRAP( self.partialEntity._software_version )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._software_version = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eSOFTWARE_FOR_DATA_QUALITY_CHECK`` )
    public var SOFTWARE_NAME: tTEXT {
      get {
        return SDAI.UNWRAP( self.partialEntity._software_name )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._software_name = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_software_for_data_quality_check.self) else { return nil }
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
    public convenience init?(_ partial:_software_for_data_quality_check) {
      let complex = SDAI.ComplexEntity(entities:[partial])
      self.init(complex: complex)
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "SOFTWARE_FOR_DATA_QUALITY_CHECK", type: self, explicitAttributeCount: 4)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eSOFTWARE_FOR_DATA_QUALITY_CHECK.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eSOFTWARE_FOR_DATA_QUALITY_CHECK.DESCRIPTION, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DATA_QUALITY", keyPath: \eSOFTWARE_FOR_DATA_QUALITY_CHECK.DATA_QUALITY, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "SOFTWARE_VERSION", keyPath: \eSOFTWARE_FOR_DATA_QUALITY_CHECK.SOFTWARE_VERSION, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SOFTWARE_NAME", keyPath: \eSOFTWARE_FOR_DATA_QUALITY_CHECK.SOFTWARE_NAME, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
