/* file: picture_representation_item.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY picture_representation_item
    ABSTRACT SUPERTYPE OF ( 
        ONEOF ( 
            externally_defined_picture_representation_item, 
            predefined_picture_representation_item ) )
    SUBTYPE OF ( bytes_representation_item );
  END_ENTITY; -- picture_representation_item (line:24489 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(2)	binary_representation_item
    ATTR:  binary_value,	TYPE: BINARY -- EXPLICIT


  SUPER- ENTITY(3)	bytes_representation_item
    ATTR:  no_of_bytes,	TYPE: INTEGER -- DERIVED
      := BLENGTH( SELF\binary_representation_item.binary_value ) DIV 8


  ENTITY(SELF)	picture_representation_item
    (no local attributes)

  SUB- ENTITY(5)	externally_defined_picture_representation_item
    ATTR:  source,	TYPE: applied_external_identification_assignment -- INVERSE
      FOR items;


  SUB- ENTITY(6)	predefined_picture_representation_item
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _picture_representation_item : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      ePICTURE_REPRESENTATION_ITEM.self
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
  ENTITY picture_representation_item
    ABSTRACT SUPERTYPE OF ( 
        ONEOF ( 
            externally_defined_picture_representation_item, 
            predefined_picture_representation_item ) )
    SUBTYPE OF ( bytes_representation_item );
  END_ENTITY; -- picture_representation_item (line:24489 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class ePICTURE_REPRESENTATION_ITEM : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _picture_representation_item.self
    }
    public let partialEntity: _picture_representation_item

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eBINARY_REPRESENTATION_ITEM: eBINARY_REPRESENTATION_ITEM 	// [2]
    public let super_eBYTES_REPRESENTATION_ITEM: eBYTES_REPRESENTATION_ITEM 	// [3]
    public var super_ePICTURE_REPRESENTATION_ITEM: ePICTURE_REPRESENTATION_ITEM { return self } 	// [4]

    //MARK: SUBTYPES
    public var sub_eEXTERNALLY_DEFINED_PICTURE_REPRESENTATION_ITEM: eEXTERNALLY_DEFINED_PICTURE_REPRESENTATION_ITEM? {	// [5]
      return self.complexEntity.entityReference(eEXTERNALLY_DEFINED_PICTURE_REPRESENTATION_ITEM.self)
    }

    public var sub_ePREDEFINED_PICTURE_REPRESENTATION_ITEM: ePREDEFINED_PICTURE_REPRESENTATION_ITEM? {	// [6]
      return self.complexEntity.entityReference(ePREDEFINED_PICTURE_REPRESENTATION_ITEM.self)
    }


    //MARK: ATTRIBUTES
    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eBYTES_REPRESENTATION_ITEM`` )
    public var NO_OF_BYTES: SDAI.INTEGER?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"NO_OF_BYTES") {
          return cached.value as! SDAI.INTEGER? 
        }
        let origin = super_eBYTES_REPRESENTATION_ITEM
        let value = SDAI.INTEGER(origin.partialEntity._no_of_bytes__getter(SELF: origin))
        updateCache(derivedAttributeName:"NO_OF_BYTES", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eBINARY_REPRESENTATION_ITEM`` )
    public var BINARY_VALUE: SDAI.BINARY {
      get {
        return SDAI.UNWRAP( super_eBINARY_REPRESENTATION_ITEM.partialEntity._binary_value )
      }
      set(newValue) {
        let partial = super_eBINARY_REPRESENTATION_ITEM.partialEntity
        partial._binary_value = SDAI.UNWRAP(newValue)
      }
    }

    /// __INVERSE__ attribute
    /// observing eAPPLIED_EXTERNAL_IDENTIFICATION_ASSIGNMENT .ITEMS
    /// - origin: SUB( ``eEXTERNALLY_DEFINED_PICTURE_REPRESENTATION_ITEM`` )
    public var SOURCE: eAPPLIED_EXTERNAL_IDENTIFICATION_ASSIGNMENT?  {
      get {
        return sub_eEXTERNALLY_DEFINED_PICTURE_REPRESENTATION_ITEM?.partialEntity._source
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


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_picture_representation_item.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eBINARY_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eBINARY_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(eBYTES_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eBYTES_REPRESENTATION_ITEM = super3

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "PICTURE_REPRESENTATION_ITEM", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eBINARY_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eBYTES_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: ePICTURE_REPRESENTATION_ITEM.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "NO_OF_BYTES", keyPath: \ePICTURE_REPRESENTATION_ITEM.NO_OF_BYTES, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "BINARY_VALUE", keyPath: \ePICTURE_REPRESENTATION_ITEM.BINARY_VALUE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SOURCE", keyPath: \ePICTURE_REPRESENTATION_ITEM.SOURCE, 
        kind: .inverse, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \ePICTURE_REPRESENTATION_ITEM.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
