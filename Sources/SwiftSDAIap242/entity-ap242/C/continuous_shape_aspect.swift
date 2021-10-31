/* file: continuous_shape_aspect.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  ENTITY continuous_shape_aspect
    SUPERTYPE OF ( 
        ONEOF ( 
            between_shape_aspect, 
            all_around_shape_aspect ) )
    SUBTYPE OF ( composite_shape_aspect );
  END_ENTITY; -- continuous_shape_aspect (line:10616 file:ap242ed2_mim_lf_v1.101.TY.exp)

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


  SUPER- ENTITY(2)	composite_shape_aspect
    ATTR:  component_relationships,	TYPE: SET [2 : ?] OF shape_aspect_relationship -- INVERSE
      FOR relating_shape_aspect;


  ENTITY(SELF)	continuous_shape_aspect
    (no local attributes)

  SUB- ENTITY(4)	all_around_shape_aspect
    (no local attributes)

  SUB- ENTITY(5)	between_shape_aspect
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _continuous_shape_aspect : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eCONTINUOUS_SHAPE_ASPECT.self
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
  ENTITY continuous_shape_aspect
    SUPERTYPE OF ( 
        ONEOF ( 
            between_shape_aspect, 
            all_around_shape_aspect ) )
    SUBTYPE OF ( composite_shape_aspect );
  END_ENTITY; -- continuous_shape_aspect (line:10616 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eCONTINUOUS_SHAPE_ASPECT : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _continuous_shape_aspect.self
    }
    public let partialEntity: _continuous_shape_aspect

    //MARK: SUPERTYPES
    public let super_eSHAPE_ASPECT: eSHAPE_ASPECT 	// [1]
    public let super_eCOMPOSITE_SHAPE_ASPECT: eCOMPOSITE_SHAPE_ASPECT 	// [2]
    public var super_eCONTINUOUS_SHAPE_ASPECT: eCONTINUOUS_SHAPE_ASPECT { return self } 	// [3]

    //MARK: SUBTYPES
    public var sub_eALL_AROUND_SHAPE_ASPECT: eALL_AROUND_SHAPE_ASPECT? {	// [4]
      return self.complexEntity.entityReference(eALL_AROUND_SHAPE_ASPECT.self)
    }

    public var sub_eBETWEEN_SHAPE_ASPECT: eBETWEEN_SHAPE_ASPECT? {	// [5]
      return self.complexEntity.entityReference(eBETWEEN_SHAPE_ASPECT.self)
    }


    //MARK: ATTRIBUTES
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

    /// __INVERSE__ attribute
    /// observing eSHAPE_ASPECT_RELATIONSHIP .RELATING_SHAPE_ASPECT
    /// - origin: SUPER( ``eCOMPOSITE_SHAPE_ASPECT`` )
    public var COMPONENT_RELATIONSHIPS: SDAI.SET<eSHAPE_ASPECT_RELATIONSHIP>/*[2:nil]*/  {
      get {
        return SDAI.UNWRAP( super_eCOMPOSITE_SHAPE_ASPECT.partialEntity._component_relationships )
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
      guard let partial = complexEntity?.partialEntityInstance(_continuous_shape_aspect.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eSHAPE_ASPECT.self) else { return nil }
      self.super_eSHAPE_ASPECT = super1

      guard let super2 = complexEntity?.entityReference(eCOMPOSITE_SHAPE_ASPECT.self) else { return nil }
      self.super_eCOMPOSITE_SHAPE_ASPECT = super2

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "CONTINUOUS_SHAPE_ASPECT", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eSHAPE_ASPECT.self)
      entityDef.add(supertype: eCOMPOSITE_SHAPE_ASPECT.self)
      entityDef.add(supertype: eCONTINUOUS_SHAPE_ASPECT.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "PRODUCT_DEFINITIONAL", keyPath: \eCONTINUOUS_SHAPE_ASPECT.PRODUCT_DEFINITIONAL, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eCONTINUOUS_SHAPE_ASPECT.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "OF_SHAPE", keyPath: \eCONTINUOUS_SHAPE_ASPECT.OF_SHAPE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "COMPONENT_RELATIONSHIPS", keyPath: \eCONTINUOUS_SHAPE_ASPECT.COMPONENT_RELATIONSHIPS, 
        kind: .inverse, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ID", keyPath: \eCONTINUOUS_SHAPE_ASPECT.ID, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eCONTINUOUS_SHAPE_ASPECT.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
