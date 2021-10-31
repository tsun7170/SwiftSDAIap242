/* file: collection.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  ENTITY collection
    SUBTYPE OF ( product );
  END_ENTITY; -- collection (line:9651 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	product
    ATTR:  id,	TYPE: identifier -- EXPLICIT

    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT

    ATTR:  frame_of_reference,	TYPE: SET [1 : ?] OF product_context -- EXPLICIT


  ENTITY(SELF)	collection
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _collection : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eCOLLECTION.self
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
  ENTITY collection
    SUBTYPE OF ( product );
  END_ENTITY; -- collection (line:9651 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eCOLLECTION : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _collection.self
    }
    public let partialEntity: _collection

    //MARK: SUPERTYPES
    public let super_ePRODUCT: ePRODUCT 	// [1]
    public var super_eCOLLECTION: eCOLLECTION { return self } 	// [2]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``ePRODUCT`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        return super_ePRODUCT.partialEntity._description
      }
      set(newValue) {
        let partial = super_ePRODUCT.partialEntity
        partial._description = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``ePRODUCT`` )
    public var ID: tIDENTIFIER {
      get {
        return SDAI.UNWRAP( super_ePRODUCT.partialEntity._id )
      }
      set(newValue) {
        let partial = super_ePRODUCT.partialEntity
        partial._id = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``ePRODUCT`` )
    public var FRAME_OF_REFERENCE: SDAI.SET<ePRODUCT_CONTEXT>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( super_ePRODUCT.partialEntity._frame_of_reference )
      }
      set(newValue) {
        let partial = super_ePRODUCT.partialEntity
        partial._frame_of_reference = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``ePRODUCT`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( super_ePRODUCT.partialEntity._name )
      }
      set(newValue) {
        let partial = super_ePRODUCT.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_collection.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(ePRODUCT.self) else { return nil }
      self.super_ePRODUCT = super1

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "COLLECTION", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: ePRODUCT.self)
      entityDef.add(supertype: eCOLLECTION.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eCOLLECTION.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ID", keyPath: \eCOLLECTION.ID, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "FRAME_OF_REFERENCE", keyPath: \eCOLLECTION.FRAME_OF_REFERENCE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eCOLLECTION.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
