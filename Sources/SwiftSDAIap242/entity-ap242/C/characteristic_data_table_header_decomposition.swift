/* file: characteristic_data_table_header_decomposition.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY characteristic_data_table_header_decomposition
    SUBTYPE OF ( general_property_relationship );
  END_ENTITY; -- characteristic_data_table_header_decomposition (line:9212 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	general_property_relationship
    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT

    ATTR:  relating_property,	TYPE: general_property -- EXPLICIT

    ATTR:  related_property,	TYPE: general_property -- EXPLICIT


  ENTITY(SELF)	characteristic_data_table_header_decomposition
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _characteristic_data_table_header_decomposition : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eCHARACTERISTIC_DATA_TABLE_HEADER_DECOMPOSITION.self
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
  ENTITY characteristic_data_table_header_decomposition
    SUBTYPE OF ( general_property_relationship );
  END_ENTITY; -- characteristic_data_table_header_decomposition (line:9212 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eCHARACTERISTIC_DATA_TABLE_HEADER_DECOMPOSITION : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _characteristic_data_table_header_decomposition.self
    }
    public let partialEntity: _characteristic_data_table_header_decomposition

    //MARK: SUPERTYPES
    public let super_eGENERAL_PROPERTY_RELATIONSHIP: eGENERAL_PROPERTY_RELATIONSHIP 	// [1]
    public var super_eCHARACTERISTIC_DATA_TABLE_HEADER_DECOMPOSITION: eCHARACTERISTIC_DATA_TABLE_HEADER_DECOMPOSITION { return self } 	// [2]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eGENERAL_PROPERTY_RELATIONSHIP`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        return super_eGENERAL_PROPERTY_RELATIONSHIP.partialEntity._description
      }
      set(newValue) {
        let partial = super_eGENERAL_PROPERTY_RELATIONSHIP.partialEntity
        partial._description = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eGENERAL_PROPERTY_RELATIONSHIP`` )
    public var RELATING_PROPERTY: eGENERAL_PROPERTY {
      get {
        return SDAI.UNWRAP( super_eGENERAL_PROPERTY_RELATIONSHIP.partialEntity._relating_property )
      }
      set(newValue) {
        let partial = super_eGENERAL_PROPERTY_RELATIONSHIP.partialEntity
        partial._relating_property = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eGENERAL_PROPERTY_RELATIONSHIP`` )
    public var RELATED_PROPERTY: eGENERAL_PROPERTY {
      get {
        return SDAI.UNWRAP( super_eGENERAL_PROPERTY_RELATIONSHIP.partialEntity._related_property )
      }
      set(newValue) {
        let partial = super_eGENERAL_PROPERTY_RELATIONSHIP.partialEntity
        partial._related_property = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eGENERAL_PROPERTY_RELATIONSHIP`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( super_eGENERAL_PROPERTY_RELATIONSHIP.partialEntity._name )
      }
      set(newValue) {
        let partial = super_eGENERAL_PROPERTY_RELATIONSHIP.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_characteristic_data_table_header_decomposition.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eGENERAL_PROPERTY_RELATIONSHIP.self) else { return nil }
      self.super_eGENERAL_PROPERTY_RELATIONSHIP = super1

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "CHARACTERISTIC_DATA_TABLE_HEADER_DECOMPOSITION", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eGENERAL_PROPERTY_RELATIONSHIP.self)
      entityDef.add(supertype: eCHARACTERISTIC_DATA_TABLE_HEADER_DECOMPOSITION.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eCHARACTERISTIC_DATA_TABLE_HEADER_DECOMPOSITION.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "RELATING_PROPERTY", keyPath: \eCHARACTERISTIC_DATA_TABLE_HEADER_DECOMPOSITION.RELATING_PROPERTY, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RELATED_PROPERTY", keyPath: \eCHARACTERISTIC_DATA_TABLE_HEADER_DECOMPOSITION.RELATED_PROPERTY, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eCHARACTERISTIC_DATA_TABLE_HEADER_DECOMPOSITION.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
