/* file: dimensional_size_with_datum_feature.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY dimensional_size_with_datum_feature
    SUBTYPE OF ( datum_feature, dimensional_size );
    WHERE
      wr1: ( SELF\dimensional_size.applies_to :=: SELF );
  END_ENTITY; -- dimensional_size_with_datum_feature (line:12555 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	shape_aspect
    ATTR:  name,	TYPE: label -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT

    ATTR:  of_shape,	TYPE: product_definition_shape -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: component_feature,	TYPE: assembly_component
          ENTITY: constituent_shape_aspect,	TYPE: product_definition_shape	(as DERIVED)
          ENTITY: mated_part_relationship,	TYPE: mated_part_relationship	(as DERIVED)

    ATTR:  product_definitional,	TYPE: LOGICAL -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: default_model_geometric_view,	TYPE: LOGICAL	(as DERIVED)

    ATTR:  id,	TYPE: identifier -- DERIVED	(AMBIGUOUS/MASKED)
      := get_id_value( SELF )


  SUPER- ENTITY(2)	datum_feature
    ATTR:  feature_basis_relationship,	TYPE: SET [1 : ?] OF shape_aspect_relationship -- INVERSE
      FOR relating_shape_aspect;


  SUPER- ENTITY(3)	dimensional_size
    ATTR:  applies_to,	TYPE: shape_aspect -- EXPLICIT

    ATTR:  name,	TYPE: label -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  id,	TYPE: identifier -- DERIVED	(AMBIGUOUS/MASKED)
      := get_id_value( SELF )


  ENTITY(SELF)	dimensional_size_with_datum_feature
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _dimensional_size_with_datum_feature : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eDIMENSIONAL_SIZE_WITH_DATUM_FEATURE.self
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


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eDIMENSIONAL_SIZE_WITH_DATUM_FEATURE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.GROUP_REF(eDIMENSIONAL_SIZE.self)
      let _TEMP2 = _TEMP1?.APPLIES_TO
      let _TEMP3 = _TEMP2 .===. SDAI.FORCE_OPTIONAL(SELF)
      return _TEMP3
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
  ENTITY dimensional_size_with_datum_feature
    SUBTYPE OF ( datum_feature, dimensional_size );
    WHERE
      wr1: ( SELF\dimensional_size.applies_to :=: SELF );
  END_ENTITY; -- dimensional_size_with_datum_feature (line:12555 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eDIMENSIONAL_SIZE_WITH_DATUM_FEATURE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _dimensional_size_with_datum_feature.self
    }
    public let partialEntity: _dimensional_size_with_datum_feature

    //MARK: SUPERTYPES
    public let super_eSHAPE_ASPECT: eSHAPE_ASPECT 	// [1]
    public let super_eDATUM_FEATURE: eDATUM_FEATURE 	// [2]
    public let super_eDIMENSIONAL_SIZE: eDIMENSIONAL_SIZE 	// [3]
    public var super_eDIMENSIONAL_SIZE_WITH_DATUM_FEATURE: eDIMENSIONAL_SIZE_WITH_DATUM_FEATURE { return self } 	// [4]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    // ID: (2 AMBIGUOUS REFs)

    // NAME: (2 AMBIGUOUS REFs)

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

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eDIMENSIONAL_SIZE`` )
    public var APPLIES_TO: eSHAPE_ASPECT {
      get {
        return SDAI.UNWRAP( super_eDIMENSIONAL_SIZE.partialEntity._applies_to )
      }
      set(newValue) {
        let partial = super_eDIMENSIONAL_SIZE.partialEntity
        partial._applies_to = SDAI.UNWRAP(newValue)
      }
    }

    /// __INVERSE__ attribute
    /// observing eSHAPE_ASPECT_RELATIONSHIP .RELATING_SHAPE_ASPECT
    /// - origin: SUPER( ``eDATUM_FEATURE`` )
    public var FEATURE_BASIS_RELATIONSHIP: SDAI.SET<eSHAPE_ASPECT_RELATIONSHIP>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( super_eDATUM_FEATURE.partialEntity._feature_basis_relationship )
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_dimensional_size_with_datum_feature.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eSHAPE_ASPECT.self) else { return nil }
      self.super_eSHAPE_ASPECT = super1

      guard let super2 = complexEntity?.entityReference(eDATUM_FEATURE.self) else { return nil }
      self.super_eDATUM_FEATURE = super2

      guard let super3 = complexEntity?.entityReference(eDIMENSIONAL_SIZE.self) else { return nil }
      self.super_eDIMENSIONAL_SIZE = super3

      super.init(complex: complexEntity)
    }

    public required convenience init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let entityRef = generic?.entityReference else { return nil }
      self.init(complex: entityRef.complexEntity)
    }

    public convenience init?<S: SDAISelectType>(_ select: S?) { self.init(possiblyFrom: select) }
    public convenience init?(_ complex: SDAI.ComplexEntity?) { self.init(complex: complex) }


    //MARK: WHERE RULE VALIDATION (ENTITY)
    public override class func validateWhereRules(instance:SDAI.EntityReference?, prefix:SDAI.WhereLabel) -> [SDAI.WhereLabel:SDAI.LOGICAL] {
      guard let instance = instance as? Self else { return [:] }

      let prefix2 = prefix + " \(instance)"

      var result = super.validateWhereRules(instance:instance, prefix:prefix2)
      result[prefix2 + " .WHERE_wr1"] = _dimensional_size_with_datum_feature.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "DIMENSIONAL_SIZE_WITH_DATUM_FEATURE", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eSHAPE_ASPECT.self)
      entityDef.add(supertype: eDATUM_FEATURE.self)
      entityDef.add(supertype: eDIMENSIONAL_SIZE.self)
      entityDef.add(supertype: eDIMENSIONAL_SIZE_WITH_DATUM_FEATURE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "PRODUCT_DEFINITIONAL", keyPath: \eDIMENSIONAL_SIZE_WITH_DATUM_FEATURE.PRODUCT_DEFINITIONAL, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eDIMENSIONAL_SIZE_WITH_DATUM_FEATURE.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "OF_SHAPE", keyPath: \eDIMENSIONAL_SIZE_WITH_DATUM_FEATURE.OF_SHAPE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "APPLIES_TO", keyPath: \eDIMENSIONAL_SIZE_WITH_DATUM_FEATURE.APPLIES_TO, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "FEATURE_BASIS_RELATIONSHIP", keyPath: \eDIMENSIONAL_SIZE_WITH_DATUM_FEATURE.FEATURE_BASIS_RELATIONSHIP, 
        kind: .inverse, source: .superEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
