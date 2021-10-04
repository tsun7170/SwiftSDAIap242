/* file: product_definition_shape.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY product_definition_shape
    SUBTYPE OF ( property_definition );
    UNIQUE
      ur1 : SELF\property_definition.definition;
    WHERE
      wr1: ( SIZEOF( [ 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CHARACTERIZED_PRODUCT_DEFINITION', 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CHARACTERIZED_OBJECT' ] * TYPEOF( SELF\
               property_definition.definition ) ) > 0 );
  END_ENTITY; -- product_definition_shape (line:26208 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	property_definition
    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT

    ATTR:  definition,	TYPE: characterized_definition -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: mating_material,	TYPE: product_definition_usage_relationship
          ENTITY: product_definition_kinematics,	TYPE: product_definition
          ENTITY: product_definition_relationship_kinematics,	TYPE: product_definition_relationship
          ENTITY: mated_part_relationship,	TYPE: mated_part_relationship	(as DERIVED)
          ENTITY: single_property_is_definition,	TYPE: product_definition
          ENTITY: assembly_component,	TYPE: assembly_component	(as DERIVED)

    ATTR:  id,	TYPE: identifier -- DERIVED
      := get_id_value( SELF )


  ENTITY(SELF)	product_definition_shape
    (no local attributes)

  SUB- ENTITY(3)	mated_part_relationship
    ATTR:  items,	TYPE: SET [0 : ?] OF product_definition -- EXPLICIT

    REDCR: assigned_group,	TYPE: mated_part_relationship -- DERIVED (DYNAMIC)
      := SELF
      -- OVERRIDING ENTITY: group_assignment

    REDCR: definition,	TYPE: mated_part_relationship -- DERIVED (DYNAMIC)
      := SELF
      -- OVERRIDING ENTITY: property_definition

    REDCR: of_shape,	TYPE: mated_part_relationship -- DERIVED (DYNAMIC)
      := SELF
      -- OVERRIDING ENTITY: shape_aspect


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
  public final class _product_definition_shape : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      ePRODUCT_DEFINITION_SHAPE.self
    }

    //ATTRIBUTES
    // (no local attributes)

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sMULTI_LANGUAGE_ATTRIBUTE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sGEOMETRIC_TOLERANCE_TARGET.typeName)) // -> Self
      members.insert(SDAI.STRING(sDRAUGHTING_MODEL_ITEM_DEFINITION.typeName)) // -> Self
      members.insert(SDAI.STRING(sSHAPE_DEFINITION.typeName)) // -> Self
      members.insert(SDAI.STRING(sPROPERTY_OR_SHAPE_SELECT.typeName)) // -> sSHAPE_DEFINITION
      members.insert(SDAI.STRING(sCHARACTERIZED_DEFINITION.typeName)) // -> sSHAPE_DEFINITION
      members.insert(SDAI.STRING(sATTRIBUTE_LANGUAGE_ITEM.typeName)) // -> Self
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
    public static func WHERE_wr1(SELF: ePRODUCT_DEFINITION_SHAPE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = ([SDAI.AIE(SDAI.STRING(
        "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CHARACTERIZED_PRODUCT_DEFINITION")), 
        SDAI.AIE(SDAI.STRING("AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CHARACTERIZED_OBJECT"))] 
        as [SDAI.AggregationInitializerElement<SDAI.STRING>])
      let _TEMP2 = SELF.GROUP_REF(ePROPERTY_DEFINITION.self)
      let _TEMP3 = _TEMP2?.DEFINITION
      let _TEMP4 = SDAI.TYPEOF(_TEMP3)
      let _TEMP5 = SDAI.FORCE_OPTIONAL(_TEMP1) * _TEMP4
      let _TEMP6 = SDAI.SIZEOF(_TEMP5)
      let _TEMP7 = _TEMP6 > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP7
    }

    //UNIQUENESS RULES
    public static func UNIQUE_ur1(SELF: SDAI.EntityReference) -> AnyHashable? {
      guard let SELF = SELF as? ePRODUCT_DEFINITION_SHAPE else { return nil }
      //SIMPLE UNIQUE RULE

      guard let attr = SELF.GROUP_REF(ePROPERTY_DEFINITION.self)?.DEFINITION else { return nil }
      return AnyHashable( attr )
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
  ENTITY product_definition_shape
    SUBTYPE OF ( property_definition );
    UNIQUE
      ur1 : SELF\property_definition.definition;
    WHERE
      wr1: ( SIZEOF( [ 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CHARACTERIZED_PRODUCT_DEFINITION', 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CHARACTERIZED_OBJECT' ] * TYPEOF( SELF\
               property_definition.definition ) ) > 0 );
  END_ENTITY; -- product_definition_shape (line:26208 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class ePRODUCT_DEFINITION_SHAPE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _product_definition_shape.self
    }
    public let partialEntity: _product_definition_shape

    //MARK: SUPERTYPES
    public let super_ePROPERTY_DEFINITION: ePROPERTY_DEFINITION 	// [1]
    public var super_ePRODUCT_DEFINITION_SHAPE: ePRODUCT_DEFINITION_SHAPE { return self } 	// [2]

    //MARK: SUBTYPES
    public var sub_eMATED_PART_RELATIONSHIP: eMATED_PART_RELATIONSHIP? {	// [3]
      return self.complexEntity.entityReference(eMATED_PART_RELATIONSHIP.self)
    }

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
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``ePROPERTY_DEFINITION`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        return super_ePROPERTY_DEFINITION.partialEntity._description
      }
      set(newValue) {
        let partial = super_ePROPERTY_DEFINITION.partialEntity
        partial._description = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eMATED_PART_RELATIONSHIP`` )
    public var ITEMS: (SDAI.SET<ePRODUCT_DEFINITION>/*[0:nil]*/ )?  {
      get {
        return sub_eMATED_PART_RELATIONSHIP?.partialEntity._items
      }
      set(newValue) {
        guard let partial = sub_eMATED_PART_RELATIONSHIP?.super_eMATED_PART_RELATIONSHIP.partialEntity
          else { return }
        partial._items = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT REDEF(DERIVE)__ attribute
    /// - origin: SUB( ``eMATED_PART_RELATIONSHIP`` )
    public var OF_SHAPE: eMATED_PART_RELATIONSHIP?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"OF_SHAPE") {
          return cached.value as! eMATED_PART_RELATIONSHIP? 
        }
        guard let origin = sub_eMATED_PART_RELATIONSHIP else { return nil }
        let value = eMATED_PART_RELATIONSHIP(origin.partialEntity._of_shape__getter(SELF: origin))
        updateCache(derivedAttributeName:"OF_SHAPE", value:value)
        return value
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``ePROPERTY_DEFINITION`` )
    public var ID: tIDENTIFIER?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"ID") {
          return cached.value as! tIDENTIFIER? 
        }
        let origin = super_ePROPERTY_DEFINITION
        let value = tIDENTIFIER(origin.partialEntity._id__getter(SELF: origin))
        updateCache(derivedAttributeName:"ID", value:value)
        return value
      }
    }

    /// __EXPLICIT REDEF(DERIVE)__ attribute
    /// - origin: SUB( ``eMATED_PART_RELATIONSHIP`` )
    public var ASSIGNED_GROUP: eMATED_PART_RELATIONSHIP?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"ASSIGNED_GROUP") {
          return cached.value as! eMATED_PART_RELATIONSHIP? 
        }
        guard let origin = sub_eMATED_PART_RELATIONSHIP else { return nil }
        let value = eMATED_PART_RELATIONSHIP(origin.partialEntity._assigned_group__getter(SELF: origin))
        updateCache(derivedAttributeName:"ASSIGNED_GROUP", value:value)
        return value
      }
    }

    /// __EXPLICIT(DYNAMIC)__ attribute
    /// - origin: SUPER( ``ePROPERTY_DEFINITION`` )
    public var DEFINITION: sCHARACTERIZED_DEFINITION {
      get {
        if let resolved = _property_definition._definition__provider(complex: self.complexEntity) {
          let value = resolved._definition__getter(complex: self.complexEntity)
          return value
        }
        else {
          return SDAI.UNWRAP( super_ePROPERTY_DEFINITION.partialEntity._definition )
        }
      }
      set(newValue) {
        if let _ = _property_definition._definition__provider(complex: self.complexEntity) { return }

        let partial = super_ePROPERTY_DEFINITION.partialEntity
        partial._definition = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``ePROPERTY_DEFINITION`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( super_ePROPERTY_DEFINITION.partialEntity._name )
      }
      set(newValue) {
        let partial = super_ePROPERTY_DEFINITION.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_product_definition_shape.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(ePROPERTY_DEFINITION.self) else { return nil }
      self.super_ePROPERTY_DEFINITION = super1

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
      result[prefix2 + " .WHERE_wr1"] = _product_definition_shape.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "PRODUCT_DEFINITION_SHAPE", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: ePROPERTY_DEFINITION.self)
      entityDef.add(supertype: ePRODUCT_DEFINITION_SHAPE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \ePRODUCT_DEFINITION_SHAPE.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ITEMS", keyPath: \ePRODUCT_DEFINITION_SHAPE.ITEMS, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "OF_SHAPE", keyPath: \ePRODUCT_DEFINITION_SHAPE.OF_SHAPE, 
        kind: .derivedRedeclaring, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ID", keyPath: \ePRODUCT_DEFINITION_SHAPE.ID, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ASSIGNED_GROUP", keyPath: \ePRODUCT_DEFINITION_SHAPE.ASSIGNED_GROUP, 
        kind: .derivedRedeclaring, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DEFINITION", keyPath: \ePRODUCT_DEFINITION_SHAPE.DEFINITION, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \ePRODUCT_DEFINITION_SHAPE.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      //MARK: UNIQUENESS RULE REGISTRATIONS
      entityDef.addUniqunessRule(label:"UNIQUE_ur1", rule: _product_definition_shape.UNIQUE_ur1)

      return entityDef
    }

  }
}
