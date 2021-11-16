/* file: known_source.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY known_source
    SUBTYPE OF ( external_source, pre_defined_item );
  END_ENTITY; -- known_source (line:18868 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	external_source
    ATTR:  source_id,	TYPE: source_item -- EXPLICIT

    ATTR:  description,	TYPE: text -- DERIVED
      := get_description_value( SELF )


  SUPER- ENTITY(2)	pre_defined_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  ENTITY(SELF)	known_source
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _known_source : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eKNOWN_SOURCE.self
    }

    //ATTRIBUTES
    // (no local attributes)

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      return true
    }

    public override func isValueEqualOptionally(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      guard let rhs = rhs as? Self else { return false }
      var result: Bool? = true
      if let comp = super.isValueEqualOptionally(to: rhs, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init() {
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 0
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      self.init( )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY known_source
    SUBTYPE OF ( external_source, pre_defined_item );
  END_ENTITY; -- known_source (line:18868 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eKNOWN_SOURCE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _known_source.self
    }
    public let partialEntity: _known_source

    //MARK: SUPERTYPES
    public let super_eEXTERNAL_SOURCE: eEXTERNAL_SOURCE 	// [1]
    public let super_ePRE_DEFINED_ITEM: ePRE_DEFINED_ITEM 	// [2]
    public var super_eKNOWN_SOURCE: eKNOWN_SOURCE { return self } 	// [3]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eEXTERNAL_SOURCE`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"DESCRIPTION") {
          return cached.value as! tTEXT? 
        }
        let origin = super_eEXTERNAL_SOURCE
        let value = tTEXT(origin.partialEntity._description__getter(SELF: origin))
        updateCache(derivedAttributeName:"DESCRIPTION", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eEXTERNAL_SOURCE`` )
    public var SOURCE_ID: sSOURCE_ITEM {
      get {
        return SDAI.UNWRAP( super_eEXTERNAL_SOURCE.partialEntity._source_id )
      }
      set(newValue) {
        let partial = super_eEXTERNAL_SOURCE.partialEntity
        partial._source_id = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``ePRE_DEFINED_ITEM`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( super_ePRE_DEFINED_ITEM.partialEntity._name )
      }
      set(newValue) {
        let partial = super_ePRE_DEFINED_ITEM.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_known_source.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eEXTERNAL_SOURCE.self) else { return nil }
      self.super_eEXTERNAL_SOURCE = super1

      guard let super2 = complexEntity?.entityReference(ePRE_DEFINED_ITEM.self) else { return nil }
      self.super_ePRE_DEFINED_ITEM = super2

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "KNOWN_SOURCE", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eEXTERNAL_SOURCE.self)
      entityDef.add(supertype: ePRE_DEFINED_ITEM.self)
      entityDef.add(supertype: eKNOWN_SOURCE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eKNOWN_SOURCE.DESCRIPTION, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SOURCE_ID", keyPath: \eKNOWN_SOURCE.SOURCE_ID, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eKNOWN_SOURCE.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
