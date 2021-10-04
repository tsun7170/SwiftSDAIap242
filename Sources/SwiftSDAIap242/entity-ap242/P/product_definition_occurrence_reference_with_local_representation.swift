/* file: product_definition_occurrence_reference_with_local_representation.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY product_definition_occurrence_reference_with_local_representation
    SUBTYPE OF ( product_definition_occurrence, generic_product_definition_reference );
  END_ENTITY; -- product_definition_occurrence_reference_with_local_representation (line:26139 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	product_definition_occurrence
    ATTR:  id,	TYPE: identifier -- EXPLICIT

    ATTR:  name,	TYPE: OPTIONAL label -- EXPLICIT

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT

    ATTR:  definition,	TYPE: OPTIONAL product_definition_or_reference_or_occurrence -- EXPLICIT
      -- possibly overriden by
          ENTITY: product_definition_specified_occurrence,	TYPE: product_definition_occurrence_or_reference

    ATTR:  quantity,	TYPE: OPTIONAL measure_with_unit -- EXPLICIT

    ATTR:  descendant_occurrences,	TYPE: SET [0 : ?] OF product_definition_specified_occurrence -- DERIVED
      := get_descendant_occurrences( SELF )

    ATTR:  assembly_usages,	TYPE: SET [0 : ?] OF assembly_component_usage -- INVERSE
      FOR related_product_definition;

    ATTR:  child_occurrences,	TYPE: SET [0 : ?] OF product_definition_specified_occurrence -- INVERSE
      FOR occurrence_usage;


  SUPER- ENTITY(2)	generic_product_definition_reference
    ATTR:  source,	TYPE: external_source -- EXPLICIT


  ENTITY(SELF)	product_definition_occurrence_reference_with_local_representation
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _product_definition_occurrence_reference_with_local_representation : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      ePRODUCT_DEFINITION_OCCURRENCE_REFERENCE_WITH_LOCAL_REPRESENTATION.self
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
  ENTITY product_definition_occurrence_reference_with_local_representation
    SUBTYPE OF ( product_definition_occurrence, generic_product_definition_reference );
  END_ENTITY; -- product_definition_occurrence_reference_with_local_representation (line:26139 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class ePRODUCT_DEFINITION_OCCURRENCE_REFERENCE_WITH_LOCAL_REPRESENTATION : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _product_definition_occurrence_reference_with_local_representation.self
    }
    public let partialEntity: _product_definition_occurrence_reference_with_local_representation

    //MARK: SUPERTYPES
    public let super_ePRODUCT_DEFINITION_OCCURRENCE: ePRODUCT_DEFINITION_OCCURRENCE 	// [1]
    public let super_eGENERIC_PRODUCT_DEFINITION_REFERENCE: eGENERIC_PRODUCT_DEFINITION_REFERENCE 	// [2]
    public var super_ePRODUCT_DEFINITION_OCCURRENCE_REFERENCE_WITH_LOCAL_REPRESENTATION: ePRODUCT_DEFINITION_OCCURRENCE_REFERENCE_WITH_LOCAL_REPRESENTATION { return self } 	// [3]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``ePRODUCT_DEFINITION_OCCURRENCE`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        return super_ePRODUCT_DEFINITION_OCCURRENCE.partialEntity._description
      }
      set(newValue) {
        let partial = super_ePRODUCT_DEFINITION_OCCURRENCE.partialEntity
        partial._description = newValue
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``ePRODUCT_DEFINITION_OCCURRENCE`` )
    public var DESCENDANT_OCCURRENCES: (SDAI.SET<ePRODUCT_DEFINITION_SPECIFIED_OCCURRENCE>/*[0:nil]*/ )?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"DESCENDANT_OCCURRENCES") {
          return cached.value as! (SDAI.SET<ePRODUCT_DEFINITION_SPECIFIED_OCCURRENCE>/*[0:nil]*/ )? 
        }
        let origin = super_ePRODUCT_DEFINITION_OCCURRENCE
        let value = SDAI.SET<ePRODUCT_DEFINITION_SPECIFIED_OCCURRENCE>(
          origin.partialEntity._descendant_occurrences__getter(SELF: origin))
        updateCache(derivedAttributeName:"DESCENDANT_OCCURRENCES", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``ePRODUCT_DEFINITION_OCCURRENCE`` )
    public var QUANTITY: eMEASURE_WITH_UNIT?  {
      get {
        return super_ePRODUCT_DEFINITION_OCCURRENCE.partialEntity._quantity
      }
      set(newValue) {
        let partial = super_ePRODUCT_DEFINITION_OCCURRENCE.partialEntity
        partial._quantity = newValue
      }
    }

    /// __INVERSE__ attribute
    /// observing ePRODUCT_DEFINITION_SPECIFIED_OCCURRENCE .OCCURRENCE_USAGE
    /// - origin: SUPER( ``ePRODUCT_DEFINITION_OCCURRENCE`` )
    public var CHILD_OCCURRENCES: SDAI.SET<ePRODUCT_DEFINITION_SPECIFIED_OCCURRENCE>/*[0:nil]*/  {
      get {
        return SDAI.UNWRAP( super_ePRODUCT_DEFINITION_OCCURRENCE.partialEntity._child_occurrences )
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eGENERIC_PRODUCT_DEFINITION_REFERENCE`` )
    public var SOURCE: eEXTERNAL_SOURCE {
      get {
        return SDAI.UNWRAP( super_eGENERIC_PRODUCT_DEFINITION_REFERENCE.partialEntity._source )
      }
      set(newValue) {
        let partial = super_eGENERIC_PRODUCT_DEFINITION_REFERENCE.partialEntity
        partial._source = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``ePRODUCT_DEFINITION_OCCURRENCE`` )
    public var ID: tIDENTIFIER {
      get {
        return SDAI.UNWRAP( super_ePRODUCT_DEFINITION_OCCURRENCE.partialEntity._id )
      }
      set(newValue) {
        let partial = super_ePRODUCT_DEFINITION_OCCURRENCE.partialEntity
        partial._id = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``ePRODUCT_DEFINITION_OCCURRENCE`` )
    public var DEFINITION: sPRODUCT_DEFINITION_OR_REFERENCE_OR_OCCURRENCE?  {
      get {
        return super_ePRODUCT_DEFINITION_OCCURRENCE.partialEntity._definition
      }
      set(newValue) {
        let partial = super_ePRODUCT_DEFINITION_OCCURRENCE.partialEntity
        partial._definition = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``ePRODUCT_DEFINITION_OCCURRENCE`` )
    public var NAME: tLABEL?  {
      get {
        return super_ePRODUCT_DEFINITION_OCCURRENCE.partialEntity._name
      }
      set(newValue) {
        let partial = super_ePRODUCT_DEFINITION_OCCURRENCE.partialEntity
        partial._name = newValue
      }
    }

    /// __INVERSE__ attribute
    /// observing ePRODUCT_DEFINITION_RELATIONSHIP .RELATED_PRODUCT_DEFINITION
    /// - origin: SUPER( ``ePRODUCT_DEFINITION_OCCURRENCE`` )
    public var ASSEMBLY_USAGES: SDAI.SET<eASSEMBLY_COMPONENT_USAGE>/*[0:nil]*/  {
      get {
        return SDAI.UNWRAP( super_ePRODUCT_DEFINITION_OCCURRENCE.partialEntity._assembly_usages )
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_product_definition_occurrence_reference_with_local_representation.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(ePRODUCT_DEFINITION_OCCURRENCE.self) else { return nil }
      self.super_ePRODUCT_DEFINITION_OCCURRENCE = super1

      guard let super2 = complexEntity?.entityReference(eGENERIC_PRODUCT_DEFINITION_REFERENCE.self) else { return nil }
      self.super_eGENERIC_PRODUCT_DEFINITION_REFERENCE = super2

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "PRODUCT_DEFINITION_OCCURRENCE_REFERENCE_WITH_LOCAL_REPRESENTATION", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: ePRODUCT_DEFINITION_OCCURRENCE.self)
      entityDef.add(supertype: eGENERIC_PRODUCT_DEFINITION_REFERENCE.self)
      entityDef.add(supertype: ePRODUCT_DEFINITION_OCCURRENCE_REFERENCE_WITH_LOCAL_REPRESENTATION.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \ePRODUCT_DEFINITION_OCCURRENCE_REFERENCE_WITH_LOCAL_REPRESENTATION.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DESCENDANT_OCCURRENCES", keyPath: \ePRODUCT_DEFINITION_OCCURRENCE_REFERENCE_WITH_LOCAL_REPRESENTATION.DESCENDANT_OCCURRENCES, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "QUANTITY", keyPath: \ePRODUCT_DEFINITION_OCCURRENCE_REFERENCE_WITH_LOCAL_REPRESENTATION.QUANTITY, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "CHILD_OCCURRENCES", keyPath: \ePRODUCT_DEFINITION_OCCURRENCE_REFERENCE_WITH_LOCAL_REPRESENTATION.CHILD_OCCURRENCES, 
        kind: .inverse, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "SOURCE", keyPath: \ePRODUCT_DEFINITION_OCCURRENCE_REFERENCE_WITH_LOCAL_REPRESENTATION.SOURCE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ID", keyPath: \ePRODUCT_DEFINITION_OCCURRENCE_REFERENCE_WITH_LOCAL_REPRESENTATION.ID, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DEFINITION", keyPath: \ePRODUCT_DEFINITION_OCCURRENCE_REFERENCE_WITH_LOCAL_REPRESENTATION.DEFINITION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \ePRODUCT_DEFINITION_OCCURRENCE_REFERENCE_WITH_LOCAL_REPRESENTATION.NAME, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ASSEMBLY_USAGES", keyPath: \ePRODUCT_DEFINITION_OCCURRENCE_REFERENCE_WITH_LOCAL_REPRESENTATION.ASSEMBLY_USAGES, 
        kind: .inverse, source: .superEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
