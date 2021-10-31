/* file: camera_model_with_light_sources.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  ENTITY camera_model_with_light_sources
    SUBTYPE OF ( camera_model_d3 );
      sources  : SET [1 : ?] OF light_source;
  END_ENTITY; -- camera_model_with_light_sources (line:8808 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(2)	geometric_representation_item
    ATTR:  dim,	TYPE: dimension_count -- DERIVED
      := dimension_of( SELF )


  SUPER- ENTITY(3)	camera_model
    (no local attributes)

  SUPER- ENTITY(4)	camera_model_d3
    ATTR:  view_reference_system,	TYPE: axis2_placement_3d -- EXPLICIT

    ATTR:  perspective_of_volume,	TYPE: view_volume -- EXPLICIT
      -- observed by
        ENTITY(1): view_volume,	ATTR: camera_usages,	TYPE: SET [1 : ?] OF camera_model_d3


  ENTITY(SELF)	camera_model_with_light_sources
    ATTR:  sources,	TYPE: SET [1 : ?] OF light_source -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _camera_model_with_light_sources : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eCAMERA_MODEL_WITH_LIGHT_SOURCES.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _sources: SDAI.SET<eLIGHT_SOURCE>/*[1:nil]*/  // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._sources.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._sources.value.isValueEqualOptionally(to: rhs._sources.value, visited: &comppairs)	{
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
      if let comp = self._sources.value.isValueEqualOptionally(to: rhs._sources.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(SOURCES: SDAI.SET<eLIGHT_SOURCE>/*[1:nil]*/ ) {
      self._sources = SOURCES
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: SDAI.SET<eLIGHT_SOURCE>.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( SOURCES: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY camera_model_with_light_sources
    SUBTYPE OF ( camera_model_d3 );
      sources  : SET [1 : ?] OF light_source;
  END_ENTITY; -- camera_model_with_light_sources (line:8808 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eCAMERA_MODEL_WITH_LIGHT_SOURCES : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _camera_model_with_light_sources.self
    }
    public let partialEntity: _camera_model_with_light_sources

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_eCAMERA_MODEL: eCAMERA_MODEL 	// [3]
    public let super_eCAMERA_MODEL_D3: eCAMERA_MODEL_D3 	// [4]
    public var super_eCAMERA_MODEL_WITH_LIGHT_SOURCES: eCAMERA_MODEL_WITH_LIGHT_SOURCES { return self } 	// [5]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eCAMERA_MODEL_WITH_LIGHT_SOURCES`` )
    public var SOURCES: SDAI.SET<eLIGHT_SOURCE>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._sources )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._sources = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eCAMERA_MODEL_D3`` )
    public var VIEW_REFERENCE_SYSTEM: eAXIS2_PLACEMENT_3D {
      get {
        return SDAI.UNWRAP( super_eCAMERA_MODEL_D3.partialEntity._view_reference_system )
      }
      set(newValue) {
        let partial = super_eCAMERA_MODEL_D3.partialEntity
        partial._view_reference_system = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT(OBSERVED)__ attribute
    /// - origin: SUPER( ``eCAMERA_MODEL_D3`` )
    public var PERSPECTIVE_OF_VOLUME: eVIEW_VOLUME {
      get {
        return SDAI.UNWRAP( super_eCAMERA_MODEL_D3.partialEntity._perspective_of_volume )
      }
      set(newValue) {
        let partial = super_eCAMERA_MODEL_D3.partialEntity
        partial._perspective_of_volume = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eREPRESENTATION_ITEM`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( super_eREPRESENTATION_ITEM.partialEntity._name )
      }
      set(newValue) {
        let partial = super_eREPRESENTATION_ITEM.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eGEOMETRIC_REPRESENTATION_ITEM`` )
    public var DIM: tDIMENSION_COUNT?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"DIM") {
          return cached.value as! tDIMENSION_COUNT? 
        }
        let origin = super_eGEOMETRIC_REPRESENTATION_ITEM
        let value = tDIMENSION_COUNT(origin.partialEntity._dim__getter(SELF: origin))
        updateCache(derivedAttributeName:"DIM", value:value)
        return value
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_camera_model_with_light_sources.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(eCAMERA_MODEL.self) else { return nil }
      self.super_eCAMERA_MODEL = super3

      guard let super4 = complexEntity?.entityReference(eCAMERA_MODEL_D3.self) else { return nil }
      self.super_eCAMERA_MODEL_D3 = super4

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "CAMERA_MODEL_WITH_LIGHT_SOURCES", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eCAMERA_MODEL.self)
      entityDef.add(supertype: eCAMERA_MODEL_D3.self)
      entityDef.add(supertype: eCAMERA_MODEL_WITH_LIGHT_SOURCES.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "SOURCES", keyPath: \eCAMERA_MODEL_WITH_LIGHT_SOURCES.SOURCES, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "VIEW_REFERENCE_SYSTEM", keyPath: \eCAMERA_MODEL_WITH_LIGHT_SOURCES.VIEW_REFERENCE_SYSTEM, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "PERSPECTIVE_OF_VOLUME", keyPath: \eCAMERA_MODEL_WITH_LIGHT_SOURCES.PERSPECTIVE_OF_VOLUME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eCAMERA_MODEL_WITH_LIGHT_SOURCES.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \eCAMERA_MODEL_WITH_LIGHT_SOURCES.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
