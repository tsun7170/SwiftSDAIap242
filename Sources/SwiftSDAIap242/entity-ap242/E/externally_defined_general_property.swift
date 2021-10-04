/* file: externally_defined_general_property.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY externally_defined_general_property
    SUBTYPE OF ( general_property, externally_defined_item );
  END_ENTITY; -- externally_defined_general_property (line:14904 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	general_property
    ATTR:  id,	TYPE: identifier -- EXPLICIT

    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT


  SUPER- ENTITY(2)	externally_defined_item
    ATTR:  item_id,	TYPE: source_item -- EXPLICIT

    ATTR:  source,	TYPE: external_source -- EXPLICIT


  ENTITY(SELF)	externally_defined_general_property
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _externally_defined_general_property : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eEXTERNALLY_DEFINED_GENERAL_PROPERTY.self
    }

    //ATTRIBUTES
    // (no local attributes)

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sEXTERNAL_IDENTIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sSECURITY_CLASSIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sAPPROVAL_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sACTION_METHOD_ITEMS.typeName)) // -> Self
      members.insert(SDAI.STRING(sEFFECTIVITY_ITEM.typeName)) // -> Self
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
  ENTITY externally_defined_general_property
    SUBTYPE OF ( general_property, externally_defined_item );
  END_ENTITY; -- externally_defined_general_property (line:14904 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eEXTERNALLY_DEFINED_GENERAL_PROPERTY : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _externally_defined_general_property.self
    }
    public let partialEntity: _externally_defined_general_property

    //MARK: SUPERTYPES
    public let super_eGENERAL_PROPERTY: eGENERAL_PROPERTY 	// [1]
    public let super_eEXTERNALLY_DEFINED_ITEM: eEXTERNALLY_DEFINED_ITEM 	// [2]
    public var super_eEXTERNALLY_DEFINED_GENERAL_PROPERTY: eEXTERNALLY_DEFINED_GENERAL_PROPERTY { return self } 	// [3]

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
    /// - origin: SUPER( ``eGENERAL_PROPERTY`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        return super_eGENERAL_PROPERTY.partialEntity._description
      }
      set(newValue) {
        let partial = super_eGENERAL_PROPERTY.partialEntity
        partial._description = newValue
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
    /// - origin: SUPER( ``eGENERAL_PROPERTY`` )
    public var ID: tIDENTIFIER {
      get {
        return SDAI.UNWRAP( super_eGENERAL_PROPERTY.partialEntity._id )
      }
      set(newValue) {
        let partial = super_eGENERAL_PROPERTY.partialEntity
        partial._id = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eGENERAL_PROPERTY`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( super_eGENERAL_PROPERTY.partialEntity._name )
      }
      set(newValue) {
        let partial = super_eGENERAL_PROPERTY.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_externally_defined_general_property.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eGENERAL_PROPERTY.self) else { return nil }
      self.super_eGENERAL_PROPERTY = super1

      guard let super2 = complexEntity?.entityReference(eEXTERNALLY_DEFINED_ITEM.self) else { return nil }
      self.super_eEXTERNALLY_DEFINED_ITEM = super2

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "EXTERNALLY_DEFINED_GENERAL_PROPERTY", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eGENERAL_PROPERTY.self)
      entityDef.add(supertype: eEXTERNALLY_DEFINED_ITEM.self)
      entityDef.add(supertype: eEXTERNALLY_DEFINED_GENERAL_PROPERTY.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "ITEM_ID", keyPath: \eEXTERNALLY_DEFINED_GENERAL_PROPERTY.ITEM_ID, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eEXTERNALLY_DEFINED_GENERAL_PROPERTY.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SOURCE", keyPath: \eEXTERNALLY_DEFINED_GENERAL_PROPERTY.SOURCE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ID", keyPath: \eEXTERNALLY_DEFINED_GENERAL_PROPERTY.ID, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eEXTERNALLY_DEFINED_GENERAL_PROPERTY.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}