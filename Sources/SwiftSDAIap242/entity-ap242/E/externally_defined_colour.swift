/* file: externally_defined_colour.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY externally_defined_colour
    SUBTYPE OF ( colour_specification, externally_defined_item );
  END_ENTITY; -- externally_defined_colour (line:14385 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	colour
    (no local attributes)

  SUPER- ENTITY(2)	colour_specification
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(3)	externally_defined_item
    ATTR:  item_id,	TYPE: source_item -- EXPLICIT

    ATTR:  source,	TYPE: external_source -- EXPLICIT


  ENTITY(SELF)	externally_defined_colour
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _externally_defined_colour : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eEXTERNALLY_DEFINED_COLOUR.self
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
  ENTITY externally_defined_colour
    SUBTYPE OF ( colour_specification, externally_defined_item );
  END_ENTITY; -- externally_defined_colour (line:14385 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eEXTERNALLY_DEFINED_COLOUR : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _externally_defined_colour.self
    }
    public let partialEntity: _externally_defined_colour

    //MARK: SUPERTYPES
    public let super_eCOLOUR: eCOLOUR 	// [1]
    public let super_eCOLOUR_SPECIFICATION: eCOLOUR_SPECIFICATION 	// [2]
    public let super_eEXTERNALLY_DEFINED_ITEM: eEXTERNALLY_DEFINED_ITEM 	// [3]
    public var super_eEXTERNALLY_DEFINED_COLOUR: eEXTERNALLY_DEFINED_COLOUR { return self } 	// [4]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eEXTERNALLY_DEFINED_ITEM`` )
    public var ITEM_ID: sSOURCE_ITEM {
      get {
        return SDAI.UNWRAP( super_eEXTERNALLY_DEFINED_ITEM.partialEntity._item_id )
      }
      set(newValue) {
        let partial = super_eEXTERNALLY_DEFINED_ITEM.partialEntity
        partial._item_id = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eEXTERNALLY_DEFINED_ITEM`` )
    public var SOURCE: eEXTERNAL_SOURCE {
      get {
        return SDAI.UNWRAP( super_eEXTERNALLY_DEFINED_ITEM.partialEntity._source )
      }
      set(newValue) {
        let partial = super_eEXTERNALLY_DEFINED_ITEM.partialEntity
        partial._source = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eCOLOUR_SPECIFICATION`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( super_eCOLOUR_SPECIFICATION.partialEntity._name )
      }
      set(newValue) {
        let partial = super_eCOLOUR_SPECIFICATION.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_externally_defined_colour.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eCOLOUR.self) else { return nil }
      self.super_eCOLOUR = super1

      guard let super2 = complexEntity?.entityReference(eCOLOUR_SPECIFICATION.self) else { return nil }
      self.super_eCOLOUR_SPECIFICATION = super2

      guard let super3 = complexEntity?.entityReference(eEXTERNALLY_DEFINED_ITEM.self) else { return nil }
      self.super_eEXTERNALLY_DEFINED_ITEM = super3

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "EXTERNALLY_DEFINED_COLOUR", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eCOLOUR.self)
      entityDef.add(supertype: eCOLOUR_SPECIFICATION.self)
      entityDef.add(supertype: eEXTERNALLY_DEFINED_ITEM.self)
      entityDef.add(supertype: eEXTERNALLY_DEFINED_COLOUR.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "ITEM_ID", keyPath: \eEXTERNALLY_DEFINED_COLOUR.ITEM_ID, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SOURCE", keyPath: \eEXTERNALLY_DEFINED_COLOUR.SOURCE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eEXTERNALLY_DEFINED_COLOUR.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
