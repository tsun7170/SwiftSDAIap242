/* file: product_definition_formation_with_specified_source.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY product_definition_formation_with_specified_source
    SUBTYPE OF ( product_definition_formation );
      make_or_buy  : source;
  END_ENTITY; -- product_definition_formation_with_specified_source (line:26106 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	product_definition_formation
    ATTR:  id,	TYPE: identifier -- EXPLICIT

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT

    ATTR:  of_product,	TYPE: product -- EXPLICIT
      -- possibly overriden by
          ENTITY: collection_version,	TYPE: collection


  ENTITY(SELF)	product_definition_formation_with_specified_source
    ATTR:  make_or_buy,	TYPE: source -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _product_definition_formation_with_specified_source : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      ePRODUCT_DEFINITION_FORMATION_WITH_SPECIFIED_SOURCE.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _make_or_buy: nSOURCE // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._make_or_buy.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._make_or_buy.value.isValueEqualOptionally(to: rhs._make_or_buy.value, visited: &comppairs)	{
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
      if let comp = self._make_or_buy.value.isValueEqualOptionally(to: rhs._make_or_buy.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(MAKE_OR_BUY: nSOURCE) {
      self._make_or_buy = MAKE_OR_BUY
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: nSOURCE.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( MAKE_OR_BUY: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY product_definition_formation_with_specified_source
    SUBTYPE OF ( product_definition_formation );
      make_or_buy  : source;
  END_ENTITY; -- product_definition_formation_with_specified_source (line:26106 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class ePRODUCT_DEFINITION_FORMATION_WITH_SPECIFIED_SOURCE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _product_definition_formation_with_specified_source.self
    }
    public let partialEntity: _product_definition_formation_with_specified_source

    //MARK: SUPERTYPES
    public let super_ePRODUCT_DEFINITION_FORMATION: ePRODUCT_DEFINITION_FORMATION 	// [1]
    public var super_ePRODUCT_DEFINITION_FORMATION_WITH_SPECIFIED_SOURCE: ePRODUCT_DEFINITION_FORMATION_WITH_SPECIFIED_SOURCE { return self } 	// [2]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``ePRODUCT_DEFINITION_FORMATION`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        return super_ePRODUCT_DEFINITION_FORMATION.partialEntity._description
      }
      set(newValue) {
        let partial = super_ePRODUCT_DEFINITION_FORMATION.partialEntity
        partial._description = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``ePRODUCT_DEFINITION_FORMATION_WITH_SPECIFIED_SOURCE`` )
    public var MAKE_OR_BUY: nSOURCE {
      get {
        return SDAI.UNWRAP( self.partialEntity._make_or_buy )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._make_or_buy = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``ePRODUCT_DEFINITION_FORMATION`` )
    public var ID: tIDENTIFIER {
      get {
        return SDAI.UNWRAP( super_ePRODUCT_DEFINITION_FORMATION.partialEntity._id )
      }
      set(newValue) {
        let partial = super_ePRODUCT_DEFINITION_FORMATION.partialEntity
        partial._id = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``ePRODUCT_DEFINITION_FORMATION`` )
    public var OF_PRODUCT: ePRODUCT {
      get {
        return SDAI.UNWRAP( super_ePRODUCT_DEFINITION_FORMATION.partialEntity._of_product )
      }
      set(newValue) {
        let partial = super_ePRODUCT_DEFINITION_FORMATION.partialEntity
        partial._of_product = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_product_definition_formation_with_specified_source.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(ePRODUCT_DEFINITION_FORMATION.self) else { return nil }
      self.super_ePRODUCT_DEFINITION_FORMATION = super1

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "PRODUCT_DEFINITION_FORMATION_WITH_SPECIFIED_SOURCE", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: ePRODUCT_DEFINITION_FORMATION.self)
      entityDef.add(supertype: ePRODUCT_DEFINITION_FORMATION_WITH_SPECIFIED_SOURCE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \ePRODUCT_DEFINITION_FORMATION_WITH_SPECIFIED_SOURCE.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "MAKE_OR_BUY", keyPath: \ePRODUCT_DEFINITION_FORMATION_WITH_SPECIFIED_SOURCE.MAKE_OR_BUY, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ID", keyPath: \ePRODUCT_DEFINITION_FORMATION_WITH_SPECIFIED_SOURCE.ID, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "OF_PRODUCT", keyPath: \ePRODUCT_DEFINITION_FORMATION_WITH_SPECIFIED_SOURCE.OF_PRODUCT, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
