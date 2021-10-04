/* file: parallelism_tolerance.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY parallelism_tolerance
    SUBTYPE OF ( geometric_tolerance_with_datum_reference );
  END_ENTITY; -- parallelism_tolerance (line:23481 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	geometric_tolerance
    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT

    ATTR:  magnitude,	TYPE: OPTIONAL length_measure_with_unit -- EXPLICIT

    ATTR:  toleranced_shape_aspect,	TYPE: geometric_tolerance_target -- EXPLICIT

    ATTR:  controlling_shape,	TYPE: product_definition_shape -- DERIVED
      := sts_get_product_definition_shape( toleranced_shape_aspect )

    ATTR:  id,	TYPE: identifier -- DERIVED
      := get_id_value( SELF )

    ATTR:  auxiliary_classification,	TYPE: SET [0 : ?] OF geometric_tolerance_auxiliary_classification -- INVERSE
      FOR described_item;

    ATTR:  tolerance_relationship,	TYPE: SET [0 : ?] OF geometric_tolerance_relationship -- INVERSE
      FOR relating_geometric_tolerance;


  SUPER- ENTITY(2)	geometric_tolerance_with_datum_reference
    ATTR:  datum_system,	TYPE: SET [1 : ?] OF datum_system_or_reference -- EXPLICIT


  ENTITY(SELF)	parallelism_tolerance
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _parallelism_tolerance : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      ePARALLELISM_TOLERANCE.self
    }

    //ATTRIBUTES
    // (no local attributes)

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sDRAUGHTING_MODEL_ITEM_DEFINITION.typeName)) // -> Self
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
  ENTITY parallelism_tolerance
    SUBTYPE OF ( geometric_tolerance_with_datum_reference );
  END_ENTITY; -- parallelism_tolerance (line:23481 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class ePARALLELISM_TOLERANCE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _parallelism_tolerance.self
    }
    public let partialEntity: _parallelism_tolerance

    //MARK: SUPERTYPES
    public let super_eGEOMETRIC_TOLERANCE: eGEOMETRIC_TOLERANCE 	// [1]
    public let super_eGEOMETRIC_TOLERANCE_WITH_DATUM_REFERENCE: eGEOMETRIC_TOLERANCE_WITH_DATUM_REFERENCE 	// [2]
    public var super_ePARALLELISM_TOLERANCE: ePARALLELISM_TOLERANCE { return self } 	// [3]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eGEOMETRIC_TOLERANCE`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        return super_eGEOMETRIC_TOLERANCE.partialEntity._description
      }
      set(newValue) {
        let partial = super_eGEOMETRIC_TOLERANCE.partialEntity
        partial._description = newValue
      }
    }

    /// __INVERSE__ attribute
    /// observing eGEOMETRIC_TOLERANCE_RELATIONSHIP .RELATING_GEOMETRIC_TOLERANCE
    /// - origin: SUPER( ``eGEOMETRIC_TOLERANCE`` )
    public var TOLERANCE_RELATIONSHIP: SDAI.SET<eGEOMETRIC_TOLERANCE_RELATIONSHIP>/*[0:nil]*/  {
      get {
        return SDAI.UNWRAP( super_eGEOMETRIC_TOLERANCE.partialEntity._tolerance_relationship )
      }
    }

    /// __INVERSE__ attribute
    /// observing eGEOMETRIC_TOLERANCE_AUXILIARY_CLASSIFICATION .DESCRIBED_ITEM
    /// - origin: SUPER( ``eGEOMETRIC_TOLERANCE`` )
    public var AUXILIARY_CLASSIFICATION: SDAI.SET<eGEOMETRIC_TOLERANCE_AUXILIARY_CLASSIFICATION>/*[0:nil]*/  {
      get {
        return SDAI.UNWRAP( super_eGEOMETRIC_TOLERANCE.partialEntity._auxiliary_classification )
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eGEOMETRIC_TOLERANCE_WITH_DATUM_REFERENCE`` )
    public var DATUM_SYSTEM: SDAI.SET<sDATUM_SYSTEM_OR_REFERENCE>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( super_eGEOMETRIC_TOLERANCE_WITH_DATUM_REFERENCE.partialEntity._datum_system )
      }
      set(newValue) {
        let partial = super_eGEOMETRIC_TOLERANCE_WITH_DATUM_REFERENCE.partialEntity
        partial._datum_system = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eGEOMETRIC_TOLERANCE`` )
    public var MAGNITUDE: eLENGTH_MEASURE_WITH_UNIT?  {
      get {
        return super_eGEOMETRIC_TOLERANCE.partialEntity._magnitude
      }
      set(newValue) {
        let partial = super_eGEOMETRIC_TOLERANCE.partialEntity
        partial._magnitude = newValue
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eGEOMETRIC_TOLERANCE`` )
    public var ID: tIDENTIFIER?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"ID") {
          return cached.value as! tIDENTIFIER? 
        }
        let origin = super_eGEOMETRIC_TOLERANCE
        let value = tIDENTIFIER(origin.partialEntity._id__getter(SELF: origin))
        updateCache(derivedAttributeName:"ID", value:value)
        return value
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eGEOMETRIC_TOLERANCE`` )
    public var CONTROLLING_SHAPE: ePRODUCT_DEFINITION_SHAPE?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"CONTROLLING_SHAPE") {
          return cached.value as! ePRODUCT_DEFINITION_SHAPE? 
        }
        let origin = super_eGEOMETRIC_TOLERANCE
        let value = ePRODUCT_DEFINITION_SHAPE(origin.partialEntity._controlling_shape__getter(SELF: origin))
        updateCache(derivedAttributeName:"CONTROLLING_SHAPE", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eGEOMETRIC_TOLERANCE`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( super_eGEOMETRIC_TOLERANCE.partialEntity._name )
      }
      set(newValue) {
        let partial = super_eGEOMETRIC_TOLERANCE.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eGEOMETRIC_TOLERANCE`` )
    public var TOLERANCED_SHAPE_ASPECT: sGEOMETRIC_TOLERANCE_TARGET {
      get {
        return SDAI.UNWRAP( super_eGEOMETRIC_TOLERANCE.partialEntity._toleranced_shape_aspect )
      }
      set(newValue) {
        let partial = super_eGEOMETRIC_TOLERANCE.partialEntity
        partial._toleranced_shape_aspect = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_parallelism_tolerance.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eGEOMETRIC_TOLERANCE.self) else { return nil }
      self.super_eGEOMETRIC_TOLERANCE = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_TOLERANCE_WITH_DATUM_REFERENCE.self) else { return nil }
      self.super_eGEOMETRIC_TOLERANCE_WITH_DATUM_REFERENCE = super2

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "PARALLELISM_TOLERANCE", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eGEOMETRIC_TOLERANCE.self)
      entityDef.add(supertype: eGEOMETRIC_TOLERANCE_WITH_DATUM_REFERENCE.self)
      entityDef.add(supertype: ePARALLELISM_TOLERANCE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \ePARALLELISM_TOLERANCE.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "TOLERANCE_RELATIONSHIP", keyPath: \ePARALLELISM_TOLERANCE.TOLERANCE_RELATIONSHIP, 
        kind: .inverse, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "AUXILIARY_CLASSIFICATION", keyPath: \ePARALLELISM_TOLERANCE.AUXILIARY_CLASSIFICATION, 
        kind: .inverse, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DATUM_SYSTEM", keyPath: \ePARALLELISM_TOLERANCE.DATUM_SYSTEM, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "MAGNITUDE", keyPath: \ePARALLELISM_TOLERANCE.MAGNITUDE, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ID", keyPath: \ePARALLELISM_TOLERANCE.ID, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "CONTROLLING_SHAPE", keyPath: \ePARALLELISM_TOLERANCE.CONTROLLING_SHAPE, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \ePARALLELISM_TOLERANCE.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "TOLERANCED_SHAPE_ASPECT", keyPath: \ePARALLELISM_TOLERANCE.TOLERANCED_SHAPE_ASPECT, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
