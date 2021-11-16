/* file: linear_array_component_definition_link.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY linear_array_component_definition_link
    SUBTYPE OF ( product_definition, product_definition_relationship );
      SELF\product_definition_relationship.relating_product_definition :
                                          linear_array_placement_group_component;
      SELF\product_definition_relationship.related_product_definition :
                                          linear_array_placement_group_component;
    WHERE
      wr1: ( SELF\product_definition_relationship.related_product_definition :<>: SELF\
               product_definition_relationship.relating_product_definition );
      wr2: acyclic_product_definition_relationship( SELF, [SELF\product_definition_relationship.
               related_product_definition], 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'LINEAR_ARRAY_COMPONENT_DEFINITION_LINK'  );
  END_ENTITY; -- linear_array_component_definition_link (line:19009 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	product_definition
    ATTR:  id,	TYPE: identifier -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  formation,	TYPE: product_definition_formation -- EXPLICIT
      -- observed by
        ENTITY(1): final_solution,	ATTR: specification,	TYPE: SET [1 : ?] OF product_definition
      -- possibly overriden by
          ENTITY: collection_view_definition,	TYPE: collection_version

    ATTR:  frame_of_reference,	TYPE: product_definition_context -- EXPLICIT

    ATTR:  name,	TYPE: label -- DERIVED	(AMBIGUOUS/MASKED)
      := get_name_value( SELF )


  SUPER- ENTITY(2)	product_definition_relationship
    ATTR:  id,	TYPE: identifier -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  name,	TYPE: label -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  relating_product_definition,	TYPE: product_definition_or_reference -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
      *** ENTITY: linear_array_component_definition_link,	TYPE: linear_array_placement_group_component
          ENTITY: multi_level_reference_designator,	TYPE: product_definition	(as DERIVED)
          ENTITY: assembly_group_component_definition_placement_link,	TYPE: assembly_component

    ATTR:  related_product_definition,	TYPE: product_definition_or_reference -- EXPLICIT (DYNAMIC)
      -- observed by
        ENTITY(1): product_definition_occurrence,	ATTR: assembly_usages,	TYPE: SET [0 : ?] OF
          assembly_component_usage
      -- possibly overriden by
      *** ENTITY: linear_array_component_definition_link,	TYPE: linear_array_placement_group_component
          ENTITY: multi_level_reference_designator,	TYPE: product_definition_or_reference	(as DERIVED)
          ENTITY: component_definition,	TYPE: component_definition	(as DERIVED)
          ENTITY: assembly_group_component_definition_placement_link,	TYPE: assembly_component


  ENTITY(SELF)	linear_array_component_definition_link
    REDCR: relating_product_definition,	TYPE: linear_array_placement_group_component -- EXPLICIT
      -- OVERRIDING ENTITY: product_definition_relationship

    REDCR: related_product_definition,	TYPE: linear_array_placement_group_component -- EXPLICIT
      -- OVERRIDING ENTITY: product_definition_relationship


*/


//MARK: - Partial Entity
  public final class _linear_array_component_definition_link : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eLINEAR_ARRAY_COMPONENT_DEFINITION_LINK.self
    }

    //ATTRIBUTES
    /* override var _relating_product_definition: eLINEAR_ARRAY_PLACEMENT_GROUP_COMPONENT	//EXPLICIT REDEFINITION(ePRODUCT_DEFINITION_RELATIONSHIP) */

    /* override var _related_product_definition: eLINEAR_ARRAY_PLACEMENT_GROUP_COMPONENT	//EXPLICIT REDEFINITION(ePRODUCT_DEFINITION_RELATIONSHIP) */

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
    public static func WHERE_wr1(SELF: eLINEAR_ARRAY_COMPONENT_DEFINITION_LINK?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.GROUP_REF(ePRODUCT_DEFINITION_RELATIONSHIP.self)
      let _TEMP2 = _TEMP1?.RELATED_PRODUCT_DEFINITION
      let _TEMP3 = SELF.GROUP_REF(ePRODUCT_DEFINITION_RELATIONSHIP.self)
      let _TEMP4 = _TEMP3?.RELATING_PRODUCT_DEFINITION
      let _TEMP5 = _TEMP2 .!==. _TEMP4
      return _TEMP5
    }
    public static func WHERE_wr2(SELF: eLINEAR_ARRAY_COMPONENT_DEFINITION_LINK?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.GROUP_REF(ePRODUCT_DEFINITION_RELATIONSHIP.self)
      let _TEMP2 = _TEMP1?.RELATED_PRODUCT_DEFINITION
      let _TEMP3 = SDAI.SET<sPRODUCT_DEFINITION_OR_REFERENCE>(bound1: SDAI.UNWRAP(SDAI.INTEGER(1)), bound2: (nil as 
        SDAI.INTEGER?), ([SDAI.AIE(_TEMP2)] as [SDAI.AggregationInitializerElement<
        sPRODUCT_DEFINITION_OR_REFERENCE>]))
      let _TEMP4 = ACYCLIC_PRODUCT_DEFINITION_RELATIONSHIP(
        RELATION: ePRODUCT_DEFINITION_RELATIONSHIP(/*eLINEAR_ARRAY_COMPONENT_DEFINITION_LINK*/SELF), 
        RELATIVES: _TEMP3, SPECIFIC_RELATION: SDAI.STRING(
        "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.LINEAR_ARRAY_COMPONENT_DEFINITION_LINK"))
      return SDAI.LOGICAL(_TEMP4)
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
  ENTITY linear_array_component_definition_link
    SUBTYPE OF ( product_definition, product_definition_relationship );
      SELF\product_definition_relationship.relating_product_definition :
                                          linear_array_placement_group_component;
      SELF\product_definition_relationship.related_product_definition :
                                          linear_array_placement_group_component;
    WHERE
      wr1: ( SELF\product_definition_relationship.related_product_definition :<>: SELF\
               product_definition_relationship.relating_product_definition );
      wr2: acyclic_product_definition_relationship( SELF, [SELF\product_definition_relationship.
               related_product_definition], 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'LINEAR_ARRAY_COMPONENT_DEFINITION_LINK'  );
  END_ENTITY; -- linear_array_component_definition_link (line:19009 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eLINEAR_ARRAY_COMPONENT_DEFINITION_LINK : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _linear_array_component_definition_link.self
    }
    public let partialEntity: _linear_array_component_definition_link

    //MARK: SUPERTYPES
    public let super_ePRODUCT_DEFINITION: ePRODUCT_DEFINITION 	// [1]
    public let super_ePRODUCT_DEFINITION_RELATIONSHIP: ePRODUCT_DEFINITION_RELATIONSHIP 	// [2]
    public var super_eLINEAR_ARRAY_COMPONENT_DEFINITION_LINK: eLINEAR_ARRAY_COMPONENT_DEFINITION_LINK { return self } 	// [3]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    // DESCRIPTION: (2 AMBIGUOUS REFs)

    // ID: (2 AMBIGUOUS REFs)

    // NAME: (2 AMBIGUOUS REFs)

    /// __EXPLICIT REDEF(DYNAMIC)__ attribute
    /// - origin: SELF( ``eLINEAR_ARRAY_COMPONENT_DEFINITION_LINK`` )
    public var RELATING_PRODUCT_DEFINITION: eLINEAR_ARRAY_PLACEMENT_GROUP_COMPONENT {
      get {
        if let resolved = _product_definition_relationship._relating_product_definition__provider(complex: self.complexEntity) {
          let value = SDAI.UNWRAP( eLINEAR_ARRAY_PLACEMENT_GROUP_COMPONENT(resolved
            ._relating_product_definition__getter(complex: self.complexEntity)) )
          return value
        }
        else {
          return SDAI.UNWRAP( eLINEAR_ARRAY_PLACEMENT_GROUP_COMPONENT(super_ePRODUCT_DEFINITION_RELATIONSHIP
            .partialEntity._relating_product_definition) )
        }
      }
      set(newValue) {
        if let _ = _product_definition_relationship._relating_product_definition__provider(complex: self.complexEntity) { return }

        let partial = super_ePRODUCT_DEFINITION_RELATIONSHIP.partialEntity
        partial._relating_product_definition = SDAI.UNWRAP(
          sPRODUCT_DEFINITION_OR_REFERENCE(newValue))
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``ePRODUCT_DEFINITION`` )
    public var FRAME_OF_REFERENCE: ePRODUCT_DEFINITION_CONTEXT {
      get {
        return SDAI.UNWRAP( super_ePRODUCT_DEFINITION.partialEntity._frame_of_reference )
      }
      set(newValue) {
        let partial = super_ePRODUCT_DEFINITION.partialEntity
        partial._frame_of_reference = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT REDEF(DYNAMIC)__ attribute
    /// - origin: SELF( ``eLINEAR_ARRAY_COMPONENT_DEFINITION_LINK`` )
    public var RELATED_PRODUCT_DEFINITION: eLINEAR_ARRAY_PLACEMENT_GROUP_COMPONENT {
      get {
        if let resolved = _product_definition_relationship._related_product_definition__provider(complex: self.complexEntity) {
          let value = SDAI.UNWRAP( eLINEAR_ARRAY_PLACEMENT_GROUP_COMPONENT(resolved
            ._related_product_definition__getter(complex: self.complexEntity)) )
          return value
        }
        else {
          return SDAI.UNWRAP( eLINEAR_ARRAY_PLACEMENT_GROUP_COMPONENT(super_ePRODUCT_DEFINITION_RELATIONSHIP
            .partialEntity._related_product_definition) )
        }
      }
      set(newValue) {
        if let _ = _product_definition_relationship._related_product_definition__provider(complex: self.complexEntity) { return }

        let partial = super_ePRODUCT_DEFINITION_RELATIONSHIP.partialEntity
        partial._related_product_definition = SDAI.UNWRAP(
          sPRODUCT_DEFINITION_OR_REFERENCE(newValue))
      }
    }

    /// __EXPLICIT(OBSERVED)__ attribute
    /// - origin: SUPER( ``ePRODUCT_DEFINITION`` )
    public var FORMATION: ePRODUCT_DEFINITION_FORMATION {
      get {
        return SDAI.UNWRAP( super_ePRODUCT_DEFINITION.partialEntity._formation )
      }
      set(newValue) {
        let partial = super_ePRODUCT_DEFINITION.partialEntity
        partial._formation = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_linear_array_component_definition_link.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(ePRODUCT_DEFINITION.self) else { return nil }
      self.super_ePRODUCT_DEFINITION = super1

      guard let super2 = complexEntity?.entityReference(ePRODUCT_DEFINITION_RELATIONSHIP.self) else { return nil }
      self.super_ePRODUCT_DEFINITION_RELATIONSHIP = super2

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
      result[prefix2 + " .WHERE_wr1"] = _linear_array_component_definition_link.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _linear_array_component_definition_link.WHERE_wr2(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "LINEAR_ARRAY_COMPONENT_DEFINITION_LINK", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: ePRODUCT_DEFINITION.self)
      entityDef.add(supertype: ePRODUCT_DEFINITION_RELATIONSHIP.self)
      entityDef.add(supertype: eLINEAR_ARRAY_COMPONENT_DEFINITION_LINK.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "RELATING_PRODUCT_DEFINITION", keyPath: \eLINEAR_ARRAY_COMPONENT_DEFINITION_LINK.RELATING_PRODUCT_DEFINITION, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "FRAME_OF_REFERENCE", keyPath: \eLINEAR_ARRAY_COMPONENT_DEFINITION_LINK.FRAME_OF_REFERENCE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RELATED_PRODUCT_DEFINITION", keyPath: \eLINEAR_ARRAY_COMPONENT_DEFINITION_LINK.RELATED_PRODUCT_DEFINITION, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "FORMATION", keyPath: \eLINEAR_ARRAY_COMPONENT_DEFINITION_LINK.FORMATION, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
