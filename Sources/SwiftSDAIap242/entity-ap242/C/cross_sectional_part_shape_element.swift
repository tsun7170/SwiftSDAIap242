/* file: cross_sectional_part_shape_element.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY cross_sectional_part_shape_element
    SUPERTYPE OF ( 
        ONEOF ( 
            cross_sectional_alternative_shape_element, 
            cross_sectional_group_shape_element ) )
    SUBTYPE OF ( shape_aspect );
  END_ENTITY; -- cross_sectional_part_shape_element (line:10876 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	shape_aspect
    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT

    ATTR:  of_shape,	TYPE: product_definition_shape -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: component_feature,	TYPE: assembly_component
          ENTITY: constituent_shape_aspect,	TYPE: product_definition_shape	(as DERIVED)
          ENTITY: mated_part_relationship,	TYPE: mated_part_relationship	(as DERIVED)

    ATTR:  product_definitional,	TYPE: LOGICAL -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: default_model_geometric_view,	TYPE: LOGICAL	(as DERIVED)

    ATTR:  id,	TYPE: identifier -- DERIVED
      := get_id_value( SELF )


  ENTITY(SELF)	cross_sectional_part_shape_element
    (no local attributes)

  SUB- ENTITY(3)	cross_sectional_alternative_shape_element
    ATTR:  items,	TYPE: SET [2 : ?] OF shape_aspect_relationship -- INVERSE	(AMBIGUOUS/MASKED)
      FOR relating_shape_aspect;


  SUB- ENTITY(4)	cross_sectional_group_shape_element_with_tubular_cover
    (no local attributes)

  SUB- ENTITY(5)	cross_sectional_group_shape_element_with_lacing
    (no local attributes)

  SUB- ENTITY(6)	twisted_cross_sectional_group_shape_element
    (no local attributes)

  SUB- ENTITY(7)	cross_sectional_group_shape_element
    ATTR:  items,	TYPE: SET [1 : ?] OF shape_aspect_relationship -- INVERSE	(AMBIGUOUS/MASKED)
      FOR relating_shape_aspect;


*/


//MARK: - Partial Entity
  public final class _cross_sectional_part_shape_element : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eCROSS_SECTIONAL_PART_SHAPE_ELEMENT.self
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
  ENTITY cross_sectional_part_shape_element
    SUPERTYPE OF ( 
        ONEOF ( 
            cross_sectional_alternative_shape_element, 
            cross_sectional_group_shape_element ) )
    SUBTYPE OF ( shape_aspect );
  END_ENTITY; -- cross_sectional_part_shape_element (line:10876 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eCROSS_SECTIONAL_PART_SHAPE_ELEMENT : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _cross_sectional_part_shape_element.self
    }
    public let partialEntity: _cross_sectional_part_shape_element

    //MARK: SUPERTYPES
    public let super_eSHAPE_ASPECT: eSHAPE_ASPECT 	// [1]
    public var super_eCROSS_SECTIONAL_PART_SHAPE_ELEMENT: eCROSS_SECTIONAL_PART_SHAPE_ELEMENT { return self } 	// [2]

    //MARK: SUBTYPES
    public var sub_eCROSS_SECTIONAL_ALTERNATIVE_SHAPE_ELEMENT: eCROSS_SECTIONAL_ALTERNATIVE_SHAPE_ELEMENT? {	// [3]
      return self.complexEntity.entityReference(eCROSS_SECTIONAL_ALTERNATIVE_SHAPE_ELEMENT.self)
    }

    public var sub_eCROSS_SECTIONAL_GROUP_SHAPE_ELEMENT_WITH_TUBULAR_COVER: eCROSS_SECTIONAL_GROUP_SHAPE_ELEMENT_WITH_TUBULAR_COVER? {	// [4]
      return self.complexEntity.entityReference(eCROSS_SECTIONAL_GROUP_SHAPE_ELEMENT_WITH_TUBULAR_COVER.self)
    }

    public var sub_eCROSS_SECTIONAL_GROUP_SHAPE_ELEMENT_WITH_LACING: eCROSS_SECTIONAL_GROUP_SHAPE_ELEMENT_WITH_LACING? {	// [5]
      return self.complexEntity.entityReference(eCROSS_SECTIONAL_GROUP_SHAPE_ELEMENT_WITH_LACING.self)
    }

    public var sub_eTWISTED_CROSS_SECTIONAL_GROUP_SHAPE_ELEMENT: eTWISTED_CROSS_SECTIONAL_GROUP_SHAPE_ELEMENT? {	// [6]
      return self.complexEntity.entityReference(eTWISTED_CROSS_SECTIONAL_GROUP_SHAPE_ELEMENT.self)
    }

    public var sub_eCROSS_SECTIONAL_GROUP_SHAPE_ELEMENT: eCROSS_SECTIONAL_GROUP_SHAPE_ELEMENT? {	// [7]
      return self.complexEntity.entityReference(eCROSS_SECTIONAL_GROUP_SHAPE_ELEMENT.self)
    }


    //MARK: ATTRIBUTES
    // ITEMS: (2 AMBIGUOUS REFs)

    /// __EXPLICIT(DYNAMIC)__ attribute
    /// - origin: SUPER( ``eSHAPE_ASPECT`` )
    public var PRODUCT_DEFINITIONAL: SDAI.LOGICAL {
      get {
        if let resolved = _shape_aspect._product_definitional__provider(complex: self.complexEntity) {
          let value = resolved._product_definitional__getter(complex: self.complexEntity)
          return value
        }
        else {
          return SDAI.UNWRAP( super_eSHAPE_ASPECT.partialEntity._product_definitional )
        }
      }
      set(newValue) {
        if let _ = _shape_aspect._product_definitional__provider(complex: self.complexEntity) { return }

        let partial = super_eSHAPE_ASPECT.partialEntity
        partial._product_definitional = SDAI.LOGICAL(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eSHAPE_ASPECT`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        return super_eSHAPE_ASPECT.partialEntity._description
      }
      set(newValue) {
        let partial = super_eSHAPE_ASPECT.partialEntity
        partial._description = newValue
      }
    }

    /// __EXPLICIT(DYNAMIC)__ attribute
    /// - origin: SUPER( ``eSHAPE_ASPECT`` )
    public var OF_SHAPE: ePRODUCT_DEFINITION_SHAPE {
      get {
        if let resolved = _shape_aspect._of_shape__provider(complex: self.complexEntity) {
          let value = resolved._of_shape__getter(complex: self.complexEntity)
          return value
        }
        else {
          return SDAI.UNWRAP( super_eSHAPE_ASPECT.partialEntity._of_shape )
        }
      }
      set(newValue) {
        if let _ = _shape_aspect._of_shape__provider(complex: self.complexEntity) { return }

        let partial = super_eSHAPE_ASPECT.partialEntity
        partial._of_shape = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eSHAPE_ASPECT`` )
    public var ID: tIDENTIFIER?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"ID") {
          return cached.value as! tIDENTIFIER? 
        }
        let origin = super_eSHAPE_ASPECT
        let value = tIDENTIFIER(origin.partialEntity._id__getter(SELF: origin))
        updateCache(derivedAttributeName:"ID", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eSHAPE_ASPECT`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( super_eSHAPE_ASPECT.partialEntity._name )
      }
      set(newValue) {
        let partial = super_eSHAPE_ASPECT.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_cross_sectional_part_shape_element.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eSHAPE_ASPECT.self) else { return nil }
      self.super_eSHAPE_ASPECT = super1

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "CROSS_SECTIONAL_PART_SHAPE_ELEMENT", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eSHAPE_ASPECT.self)
      entityDef.add(supertype: eCROSS_SECTIONAL_PART_SHAPE_ELEMENT.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "PRODUCT_DEFINITIONAL", keyPath: \eCROSS_SECTIONAL_PART_SHAPE_ELEMENT.PRODUCT_DEFINITIONAL, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eCROSS_SECTIONAL_PART_SHAPE_ELEMENT.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "OF_SHAPE", keyPath: \eCROSS_SECTIONAL_PART_SHAPE_ELEMENT.OF_SHAPE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ID", keyPath: \eCROSS_SECTIONAL_PART_SHAPE_ELEMENT.ID, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eCROSS_SECTIONAL_PART_SHAPE_ELEMENT.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}