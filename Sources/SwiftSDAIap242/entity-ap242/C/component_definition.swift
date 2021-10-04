/* file: component_definition.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY component_definition
    SUBTYPE OF ( product_definition, product_definition_relationship );
    DERIVE
      SELF\product_definition_relationship.related_product_definition : component_definition := SELF;
    WHERE
      wr1: ( NOT EXISTS( SELF\product_definition_relationship.description ) );
      wr2: ( NOT EXISTS( SELF\property_definition.description ) );
      wr3: ( SELF\product_definition_relationship.id = SELF\product_definition.id );
      wr4: ( SELF\product_definition_relationship.name = 'definition usage' );
      wr5: ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT_DEFINITION_USAGE' IN TYPEOF( SELF ) ) );
  END_ENTITY; -- component_definition (line:9846 file:ap242ed2_mim_lf_v1.101.TY.exp)

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
          ENTITY: linear_array_component_definition_link,	TYPE: linear_array_placement_group_component
          ENTITY: multi_level_reference_designator,	TYPE: product_definition	(as DERIVED)
          ENTITY: assembly_group_component_definition_placement_link,	TYPE: assembly_component

    ATTR:  related_product_definition,	TYPE: product_definition_or_reference -- EXPLICIT (DYNAMIC)
      -- observed by
        ENTITY(1): product_definition_occurrence,	ATTR: assembly_usages,	TYPE: SET [0 : ?] OF
          assembly_component_usage
      -- possibly overriden by
          ENTITY: linear_array_component_definition_link,	TYPE: linear_array_placement_group_component
          ENTITY: multi_level_reference_designator,	TYPE: product_definition_or_reference	(as DERIVED)
      *** ENTITY: component_definition,	TYPE: component_definition	(as DERIVED)
          ENTITY: assembly_group_component_definition_placement_link,	TYPE: assembly_component


  ENTITY(SELF)	component_definition
    REDCR: related_product_definition,	TYPE: component_definition -- DERIVED (DYNAMIC)
      := SELF
      -- OVERRIDING ENTITY: product_definition_relationship


  SUB- ENTITY(4)	interface_component
    (no local attributes)

  SUB- ENTITY(5)	physical_component
    (no local attributes)

  SUB- ENTITY(6)	thermal_component
    (no local attributes)

  SUB- ENTITY(7)	linear_array_placement_group_component
    (no local attributes)

  SUB- ENTITY(8)	rectangular_array_placement_group_component
    (no local attributes)

  SUB- ENTITY(9)	array_placement_group
    (no local attributes)

  SUB- ENTITY(10)	interfaced_group_component
    (no local attributes)

  SUB- ENTITY(11)	assembly_group_component
    (no local attributes)

  SUB- ENTITY(12)	assembly_component
    REDCR: definition,	TYPE: assembly_component -- DERIVED (DYNAMIC)
      := SELF
      -- OVERRIDING ENTITY: property_definition


*/


//MARK: - Partial Entity
  public final class _component_definition : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eCOMPONENT_DEFINITION.self
    }

    //ATTRIBUTES
    /// DERIVE ATTRIBUTE REDEFINITION(origin: ePRODUCT_DEFINITION_RELATIONSHIP)
    /// - attribute value provider protocol conformance wrapper
    internal func _related_product_definition__getter(complex: SDAI.ComplexEntity) -> 
      sPRODUCT_DEFINITION_OR_REFERENCE {
      let SELF = complex.entityReference( eCOMPONENT_DEFINITION.self )!
      return SDAI.UNWRAP( sPRODUCT_DEFINITION_OR_REFERENCE(SELF.RELATED_PRODUCT_DEFINITION) )
    }
    /// DERIVE ATTRIBUTE REDEFINITION(origin: ePRODUCT_DEFINITION_RELATIONSHIP)
    /// - gut of derived attribute logic
    internal func _related_product_definition__getter(SELF: eCOMPONENT_DEFINITION) -> eCOMPONENT_DEFINITION {
      let value = SELF
      return SDAI.UNWRAP( value )
    }

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
    public static func WHERE_wr1(SELF: eCOMPONENT_DEFINITION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.GROUP_REF(ePRODUCT_DEFINITION_RELATIONSHIP.self)
      let _TEMP2 = _TEMP1?.DESCRIPTION
      let _TEMP3 = SDAI.EXISTS(_TEMP2)
      let _TEMP4 =  !_TEMP3
      return _TEMP4
    }
    public static func WHERE_wr2(SELF: eCOMPONENT_DEFINITION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.GROUP_REF(ePROPERTY_DEFINITION.self)
      let _TEMP2 = _TEMP1?.DESCRIPTION
      let _TEMP3 = SDAI.EXISTS(_TEMP2)
      let _TEMP4 =  !_TEMP3
      return _TEMP4
    }
    public static func WHERE_wr3(SELF: eCOMPONENT_DEFINITION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.GROUP_REF(ePRODUCT_DEFINITION_RELATIONSHIP.self)
      let _TEMP2 = _TEMP1?.ID
      let _TEMP3 = SELF.GROUP_REF(ePRODUCT_DEFINITION.self)
      let _TEMP4 = _TEMP3?.ID
      let _TEMP5 = _TEMP2 .==. _TEMP4
      return _TEMP5
    }
    public static func WHERE_wr4(SELF: eCOMPONENT_DEFINITION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.GROUP_REF(ePRODUCT_DEFINITION_RELATIONSHIP.self)
      let _TEMP2 = _TEMP1?.NAME
      let _TEMP3 = _TEMP2 .==. SDAI.FORCE_OPTIONAL(SDAI.STRING("definition usage"))
      return _TEMP3
    }
    public static func WHERE_wr5(SELF: eCOMPONENT_DEFINITION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF, IS: ePRODUCT_DEFINITION_USAGE.self)
      let _TEMP2 =  !_TEMP1
      return _TEMP2
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
  ENTITY component_definition
    SUBTYPE OF ( product_definition, product_definition_relationship );
    DERIVE
      SELF\product_definition_relationship.related_product_definition : component_definition := SELF;
    WHERE
      wr1: ( NOT EXISTS( SELF\product_definition_relationship.description ) );
      wr2: ( NOT EXISTS( SELF\property_definition.description ) );
      wr3: ( SELF\product_definition_relationship.id = SELF\product_definition.id );
      wr4: ( SELF\product_definition_relationship.name = 'definition usage' );
      wr5: ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT_DEFINITION_USAGE' IN TYPEOF( SELF ) ) );
  END_ENTITY; -- component_definition (line:9846 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eCOMPONENT_DEFINITION : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _component_definition.self
    }
    public let partialEntity: _component_definition

    //MARK: SUPERTYPES
    public let super_ePRODUCT_DEFINITION: ePRODUCT_DEFINITION 	// [1]
    public let super_ePRODUCT_DEFINITION_RELATIONSHIP: ePRODUCT_DEFINITION_RELATIONSHIP 	// [2]
    public var super_eCOMPONENT_DEFINITION: eCOMPONENT_DEFINITION { return self } 	// [3]

    //MARK: SUBTYPES
    public var sub_eINTERFACE_COMPONENT: eINTERFACE_COMPONENT? {	// [4]
      return self.complexEntity.entityReference(eINTERFACE_COMPONENT.self)
    }

    public var sub_ePHYSICAL_COMPONENT: ePHYSICAL_COMPONENT? {	// [5]
      return self.complexEntity.entityReference(ePHYSICAL_COMPONENT.self)
    }

    public var sub_eTHERMAL_COMPONENT: eTHERMAL_COMPONENT? {	// [6]
      return self.complexEntity.entityReference(eTHERMAL_COMPONENT.self)
    }

    public var sub_eLINEAR_ARRAY_PLACEMENT_GROUP_COMPONENT: eLINEAR_ARRAY_PLACEMENT_GROUP_COMPONENT? {	// [7]
      return self.complexEntity.entityReference(eLINEAR_ARRAY_PLACEMENT_GROUP_COMPONENT.self)
    }

    public var sub_eRECTANGULAR_ARRAY_PLACEMENT_GROUP_COMPONENT: eRECTANGULAR_ARRAY_PLACEMENT_GROUP_COMPONENT? {	// [8]
      return self.complexEntity.entityReference(eRECTANGULAR_ARRAY_PLACEMENT_GROUP_COMPONENT.self)
    }

    public var sub_eARRAY_PLACEMENT_GROUP: eARRAY_PLACEMENT_GROUP? {	// [9]
      return self.complexEntity.entityReference(eARRAY_PLACEMENT_GROUP.self)
    }

    public var sub_eINTERFACED_GROUP_COMPONENT: eINTERFACED_GROUP_COMPONENT? {	// [10]
      return self.complexEntity.entityReference(eINTERFACED_GROUP_COMPONENT.self)
    }

    public var sub_eASSEMBLY_GROUP_COMPONENT: eASSEMBLY_GROUP_COMPONENT? {	// [11]
      return self.complexEntity.entityReference(eASSEMBLY_GROUP_COMPONENT.self)
    }

    public var sub_eASSEMBLY_COMPONENT: eASSEMBLY_COMPONENT? {	// [12]
      return self.complexEntity.entityReference(eASSEMBLY_COMPONENT.self)
    }


    //MARK: ATTRIBUTES
    // DESCRIPTION: (2 AMBIGUOUS REFs)

    // ID: (2 AMBIGUOUS REFs)

    // NAME: (2 AMBIGUOUS REFs)

    /// __EXPLICIT(DYNAMIC)__ attribute
    /// - origin: SUPER( ``ePRODUCT_DEFINITION_RELATIONSHIP`` )
    public var RELATING_PRODUCT_DEFINITION: sPRODUCT_DEFINITION_OR_REFERENCE {
      get {
        if let resolved = _product_definition_relationship._relating_product_definition__provider(complex: self.complexEntity) {
          let value = resolved._relating_product_definition__getter(complex: self.complexEntity)
          return value
        }
        else {
          return SDAI.UNWRAP( super_ePRODUCT_DEFINITION_RELATIONSHIP.partialEntity
            ._relating_product_definition )
        }
      }
      set(newValue) {
        if let _ = _product_definition_relationship._relating_product_definition__provider(complex: self.complexEntity) { return }

        let partial = super_ePRODUCT_DEFINITION_RELATIONSHIP.partialEntity
        partial._relating_product_definition = SDAI.UNWRAP(newValue)
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

    /// __EXPLICIT REDEF(DERIVE)__ attribute
    /// - origin: SUB( ``eASSEMBLY_COMPONENT`` )
    public var DEFINITION: eASSEMBLY_COMPONENT?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"DEFINITION") {
          return cached.value as! eASSEMBLY_COMPONENT? 
        }
        guard let origin = sub_eASSEMBLY_COMPONENT else { return nil }
        let value = eASSEMBLY_COMPONENT(origin.partialEntity._definition__getter(SELF: origin))
        updateCache(derivedAttributeName:"DEFINITION", value:value)
        return value
      }
    }

    /// __EXPLICIT REDEF(DERIVE)__ attribute
    /// - origin: SELF( ``eCOMPONENT_DEFINITION`` )
    public var RELATED_PRODUCT_DEFINITION: eCOMPONENT_DEFINITION {
      get {
        if let cached = cachedValue(derivedAttributeName:"RELATED_PRODUCT_DEFINITION") {
          return cached.value as! eCOMPONENT_DEFINITION
        }
        let origin = self
        let value = SDAI.UNWRAP( origin.partialEntity._related_product_definition__getter(SELF: origin) )
        updateCache(derivedAttributeName:"RELATED_PRODUCT_DEFINITION", value:value)
        return value
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
      guard let partial = complexEntity?.partialEntityInstance(_component_definition.self) else { return nil }
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
      result[prefix2 + " .WHERE_wr1"] = _component_definition.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _component_definition.WHERE_wr2(SELF: instance)
      result[prefix2 + " .WHERE_wr3"] = _component_definition.WHERE_wr3(SELF: instance)
      result[prefix2 + " .WHERE_wr4"] = _component_definition.WHERE_wr4(SELF: instance)
      result[prefix2 + " .WHERE_wr5"] = _component_definition.WHERE_wr5(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "COMPONENT_DEFINITION", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: ePRODUCT_DEFINITION.self)
      entityDef.add(supertype: ePRODUCT_DEFINITION_RELATIONSHIP.self)
      entityDef.add(supertype: eCOMPONENT_DEFINITION.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "RELATING_PRODUCT_DEFINITION", keyPath: \eCOMPONENT_DEFINITION.RELATING_PRODUCT_DEFINITION, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "FRAME_OF_REFERENCE", keyPath: \eCOMPONENT_DEFINITION.FRAME_OF_REFERENCE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DEFINITION", keyPath: \eCOMPONENT_DEFINITION.DEFINITION, 
        kind: .derivedRedeclaring, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RELATED_PRODUCT_DEFINITION", keyPath: \eCOMPONENT_DEFINITION.RELATED_PRODUCT_DEFINITION, 
        kind: .derivedRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "FORMATION", keyPath: \eCOMPONENT_DEFINITION.FORMATION, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}

//MARK: - partial Entity Dynamic Attribute Protocol Conformances
extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF._component_definition :
  ePRODUCT_DEFINITION_RELATIONSHIP__RELATED_PRODUCT_DEFINITION__provider {}
