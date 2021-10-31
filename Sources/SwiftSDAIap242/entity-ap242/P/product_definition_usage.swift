/* file: product_definition_usage.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  ENTITY product_definition_usage
    SUPERTYPE OF ( 
        ONEOF ( 
            make_from_usage_option, 
            assembly_component_usage ) )
    SUBTYPE OF ( product_definition_relationship );
    UNIQUE
      ur1 : SELF\product_definition_relationship.id, SELF\product_definition_relationship.
               relating_product_definition, SELF\product_definition_relationship.related_product_definition;
    WHERE
      wr1: acyclic_product_definition_relationship( SELF, [SELF\product_definition_relationship.
               related_product_definition], 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'PRODUCT_DEFINITION_USAGE'  );
  END_ENTITY; -- product_definition_usage (line:26241 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	product_definition_relationship
    ATTR:  id,	TYPE: identifier -- EXPLICIT

    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT

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
          ENTITY: component_definition,	TYPE: component_definition	(as DERIVED)
          ENTITY: assembly_group_component_definition_placement_link,	TYPE: assembly_component


  ENTITY(SELF)	product_definition_usage
    (no local attributes)

  SUB- ENTITY(3)	make_from_usage_option
    ATTR:  ranking,	TYPE: INTEGER -- EXPLICIT

    ATTR:  ranking_rationale,	TYPE: text -- EXPLICIT

    ATTR:  quantity,	TYPE: measure_with_unit -- EXPLICIT	(AMBIGUOUS/MASKED)


  SUB- ENTITY(4)	specified_higher_usage_occurrence
    ATTR:  upper_usage,	TYPE: assembly_component_usage -- EXPLICIT

    ATTR:  next_usage,	TYPE: next_assembly_usage_occurrence -- EXPLICIT


  SUB- ENTITY(5)	quantified_assembly_component_usage
    ATTR:  quantity,	TYPE: measure_with_unit -- EXPLICIT	(AMBIGUOUS/MASKED)


  SUB- ENTITY(6)	additive_manufacturing_build_plate_relationship
    (no local attributes)

  SUB- ENTITY(7)	additive_manufacturing_support_structure_geometry_relationship
    (no local attributes)

  SUB- ENTITY(8)	additive_manufacturing_setup_workpiece_relationship
    (no local attributes)

  SUB- ENTITY(9)	additive_manufacturing_setup_relationship
    (no local attributes)

  SUB- ENTITY(10)	next_assembly_usage_occurrence
    ATTR:  product_definition_occurrence_id,	TYPE: identifier -- DERIVED
      := SELF\product_definition_relationship.related_product_definition\product_definition_occurrence.id


  SUB- ENTITY(11)	multi_level_reference_designator
    ATTR:  location,	TYPE: LIST [1 : ?] OF UNIQUE next_assembly_usage_occurrence -- EXPLICIT

    REDCR: relating_product_definition,	TYPE: product_definition -- DERIVED (DYNAMIC)
      := location[1]\product_definition_relationship.relating_product_definition
      -- OVERRIDING ENTITY: product_definition_relationship

    REDCR: related_product_definition,	TYPE: product_definition_or_reference -- DERIVED (DYNAMIC)
      := location[HIINDEX( location )]\product_definition_relationship.related_product_definition
      -- OVERRIDING ENTITY: product_definition_relationship

    ATTR:  leaf,	TYPE: product_definition_or_reference -- DERIVED
      := related_product_definition

    ATTR:  root,	TYPE: product_definition -- DERIVED
      := relating_product_definition


  SUB- ENTITY(12)	promissory_usage_occurrence
    (no local attributes)

  SUB- ENTITY(13)	assembly_component_usage
    ATTR:  reference_designator,	TYPE: OPTIONAL identifier -- EXPLICIT


  SUB- ENTITY(14)	definitional_product_definition_usage
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _product_definition_usage : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      ePRODUCT_DEFINITION_USAGE.self
    }

    //ATTRIBUTES
    // (no local attributes)

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sCLASSIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sACTION_ITEMS.typeName)) // -> sCLASSIFICATION_ITEM
      members.insert(SDAI.STRING(sCHANGE_MANAGEMENT_OBJECT.typeName)) // -> sACTION_ITEMS
      members.insert(SDAI.STRING(sIR_USAGE_ITEM.typeName)) // -> sCLASSIFICATION_ITEM
      members.insert(SDAI.STRING(sMULTI_LANGUAGE_ATTRIBUTE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sPRODUCT_DEFINITION_OR_PRODUCT_DEFINITION_RELATIONSHIP.typeName)) // -> Self
      members.insert(SDAI.STRING(sPRODUCT_DEFINITION_OR_BREAKDOWN_ELEMENT_USAGE.typeName)) // -> Self
      members.insert(SDAI.STRING(sIDENTIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sSECURITY_CLASSIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sAPPROVAL_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sGENERAL_ORGANIZATIONAL_DATA_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sEVENT_OCCURRENCE_ITEM.typeName)) // -> sGENERAL_ORGANIZATIONAL_DATA_SELECT
      members.insert(SDAI.STRING(sINSTANCE_USAGE_CONTEXT_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sDESCRIPTION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sDOCUMENT_REFERENCE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sEFFECTIVITY_ITEM.typeName)) // -> Self
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
    public static func WHERE_wr1(SELF: ePRODUCT_DEFINITION_USAGE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.GROUP_REF(ePRODUCT_DEFINITION_RELATIONSHIP.self)
      let _TEMP2 = _TEMP1?.RELATED_PRODUCT_DEFINITION
      let _TEMP3 = SDAI.SET<sPRODUCT_DEFINITION_OR_REFERENCE>(bound1: SDAI.UNWRAP(SDAI.INTEGER(1)), bound2: (nil as 
        SDAI.INTEGER?), ([SDAI.AIE(_TEMP2)] as [SDAI.AggregationInitializerElement<
        sPRODUCT_DEFINITION_OR_REFERENCE>]))
      let _TEMP4 = ACYCLIC_PRODUCT_DEFINITION_RELATIONSHIP(
        RELATION: ePRODUCT_DEFINITION_RELATIONSHIP(/*ePRODUCT_DEFINITION_USAGE*/SELF), 
        RELATIVES: _TEMP3, SPECIFIC_RELATION: SDAI.STRING(
        "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT_DEFINITION_USAGE"))
      return SDAI.LOGICAL(_TEMP4)
    }

    //UNIQUENESS RULES
    public static func UNIQUE_ur1(SELF: SDAI.EntityReference) -> AnyHashable? {
      guard let SELF = SELF as? ePRODUCT_DEFINITION_USAGE else { return nil }
      //JOINT UNIQUE RULE

      var attributes: Array<AnyHashable> = []

      guard let attr1 = SELF.GROUP_REF(ePRODUCT_DEFINITION_RELATIONSHIP.self)?.ID else { return nil }
      attributes.append( AnyHashable(attr1) )
      guard let attr2 = SELF.GROUP_REF(ePRODUCT_DEFINITION_RELATIONSHIP.self)?.RELATING_PRODUCT_DEFINITION
        else { return nil }
      attributes.append( AnyHashable(attr2) )
      guard let attr3 = SELF.GROUP_REF(ePRODUCT_DEFINITION_RELATIONSHIP.self)?.RELATED_PRODUCT_DEFINITION
        else { return nil }
      attributes.append( AnyHashable(attr3) )

      return AnyHashable( attributes )
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
  ENTITY product_definition_usage
    SUPERTYPE OF ( 
        ONEOF ( 
            make_from_usage_option, 
            assembly_component_usage ) )
    SUBTYPE OF ( product_definition_relationship );
    UNIQUE
      ur1 : SELF\product_definition_relationship.id, SELF\product_definition_relationship.
               relating_product_definition, SELF\product_definition_relationship.related_product_definition;
    WHERE
      wr1: acyclic_product_definition_relationship( SELF, [SELF\product_definition_relationship.
               related_product_definition], 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'PRODUCT_DEFINITION_USAGE'  );
  END_ENTITY; -- product_definition_usage (line:26241 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class ePRODUCT_DEFINITION_USAGE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _product_definition_usage.self
    }
    public let partialEntity: _product_definition_usage

    //MARK: SUPERTYPES
    public let super_ePRODUCT_DEFINITION_RELATIONSHIP: ePRODUCT_DEFINITION_RELATIONSHIP 	// [1]
    public var super_ePRODUCT_DEFINITION_USAGE: ePRODUCT_DEFINITION_USAGE { return self } 	// [2]

    //MARK: SUBTYPES
    public var sub_eMAKE_FROM_USAGE_OPTION: eMAKE_FROM_USAGE_OPTION? {	// [3]
      return self.complexEntity.entityReference(eMAKE_FROM_USAGE_OPTION.self)
    }

    public var sub_eSPECIFIED_HIGHER_USAGE_OCCURRENCE: eSPECIFIED_HIGHER_USAGE_OCCURRENCE? {	// [4]
      return self.complexEntity.entityReference(eSPECIFIED_HIGHER_USAGE_OCCURRENCE.self)
    }

    public var sub_eQUANTIFIED_ASSEMBLY_COMPONENT_USAGE: eQUANTIFIED_ASSEMBLY_COMPONENT_USAGE? {	// [5]
      return self.complexEntity.entityReference(eQUANTIFIED_ASSEMBLY_COMPONENT_USAGE.self)
    }

    public var sub_eADDITIVE_MANUFACTURING_BUILD_PLATE_RELATIONSHIP: eADDITIVE_MANUFACTURING_BUILD_PLATE_RELATIONSHIP? {	// [6]
      return self.complexEntity.entityReference(eADDITIVE_MANUFACTURING_BUILD_PLATE_RELATIONSHIP.self)
    }

    public var sub_eADDITIVE_MANUFACTURING_SUPPORT_STRUCTURE_GEOMETRY_RELATIONSHIP: eADDITIVE_MANUFACTURING_SUPPORT_STRUCTURE_GEOMETRY_RELATIONSHIP? {	// [7]
      return self.complexEntity.entityReference(eADDITIVE_MANUFACTURING_SUPPORT_STRUCTURE_GEOMETRY_RELATIONSHIP.self)
    }

    public var sub_eADDITIVE_MANUFACTURING_SETUP_WORKPIECE_RELATIONSHIP: eADDITIVE_MANUFACTURING_SETUP_WORKPIECE_RELATIONSHIP? {	// [8]
      return self.complexEntity.entityReference(eADDITIVE_MANUFACTURING_SETUP_WORKPIECE_RELATIONSHIP.self)
    }

    public var sub_eADDITIVE_MANUFACTURING_SETUP_RELATIONSHIP: eADDITIVE_MANUFACTURING_SETUP_RELATIONSHIP? {	// [9]
      return self.complexEntity.entityReference(eADDITIVE_MANUFACTURING_SETUP_RELATIONSHIP.self)
    }

    public var sub_eNEXT_ASSEMBLY_USAGE_OCCURRENCE: eNEXT_ASSEMBLY_USAGE_OCCURRENCE? {	// [10]
      return self.complexEntity.entityReference(eNEXT_ASSEMBLY_USAGE_OCCURRENCE.self)
    }

    public var sub_eMULTI_LEVEL_REFERENCE_DESIGNATOR: eMULTI_LEVEL_REFERENCE_DESIGNATOR? {	// [11]
      return self.complexEntity.entityReference(eMULTI_LEVEL_REFERENCE_DESIGNATOR.self)
    }

    public var sub_ePROMISSORY_USAGE_OCCURRENCE: ePROMISSORY_USAGE_OCCURRENCE? {	// [12]
      return self.complexEntity.entityReference(ePROMISSORY_USAGE_OCCURRENCE.self)
    }

    public var sub_eASSEMBLY_COMPONENT_USAGE: eASSEMBLY_COMPONENT_USAGE? {	// [13]
      return self.complexEntity.entityReference(eASSEMBLY_COMPONENT_USAGE.self)
    }

    public var sub_eDEFINITIONAL_PRODUCT_DEFINITION_USAGE: eDEFINITIONAL_PRODUCT_DEFINITION_USAGE? {	// [14]
      return self.complexEntity.entityReference(eDEFINITIONAL_PRODUCT_DEFINITION_USAGE.self)
    }


    //MARK: ATTRIBUTES
    // QUANTITY: (2 AMBIGUOUS REFs)

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``ePRODUCT_DEFINITION_RELATIONSHIP`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        return super_ePRODUCT_DEFINITION_RELATIONSHIP.partialEntity._description
      }
      set(newValue) {
        let partial = super_ePRODUCT_DEFINITION_RELATIONSHIP.partialEntity
        partial._description = newValue
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUB( ``eMULTI_LEVEL_REFERENCE_DESIGNATOR`` )
    public var LEAF: sPRODUCT_DEFINITION_OR_REFERENCE?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"LEAF") {
          return cached.value as! sPRODUCT_DEFINITION_OR_REFERENCE? 
        }
        guard let origin = sub_eMULTI_LEVEL_REFERENCE_DESIGNATOR else { return nil }
        let value = sPRODUCT_DEFINITION_OR_REFERENCE(origin.partialEntity._leaf__getter(SELF: origin))
        updateCache(derivedAttributeName:"LEAF", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eSPECIFIED_HIGHER_USAGE_OCCURRENCE`` )
    public var NEXT_USAGE: eNEXT_ASSEMBLY_USAGE_OCCURRENCE?  {
      get {
        return sub_eSPECIFIED_HIGHER_USAGE_OCCURRENCE?.partialEntity._next_usage
      }
      set(newValue) {
        guard let partial = sub_eSPECIFIED_HIGHER_USAGE_OCCURRENCE?.super_eSPECIFIED_HIGHER_USAGE_OCCURRENCE
          .partialEntity else { return }
        partial._next_usage = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eASSEMBLY_COMPONENT_USAGE`` )
    public var REFERENCE_DESIGNATOR: tIDENTIFIER?  {
      get {
        return sub_eASSEMBLY_COMPONENT_USAGE?.partialEntity._reference_designator
      }
      set(newValue) {
        guard let partial = sub_eASSEMBLY_COMPONENT_USAGE?.super_eASSEMBLY_COMPONENT_USAGE.partialEntity
          else { return }
        partial._reference_designator = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eSPECIFIED_HIGHER_USAGE_OCCURRENCE`` )
    public var UPPER_USAGE: eASSEMBLY_COMPONENT_USAGE?  {
      get {
        return sub_eSPECIFIED_HIGHER_USAGE_OCCURRENCE?.partialEntity._upper_usage
      }
      set(newValue) {
        guard let partial = sub_eSPECIFIED_HIGHER_USAGE_OCCURRENCE?.super_eSPECIFIED_HIGHER_USAGE_OCCURRENCE
          .partialEntity else { return }
        partial._upper_usage = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eMAKE_FROM_USAGE_OPTION`` )
    public var RANKING_RATIONALE: tTEXT?  {
      get {
        return sub_eMAKE_FROM_USAGE_OPTION?.partialEntity._ranking_rationale
      }
      set(newValue) {
        guard let partial = sub_eMAKE_FROM_USAGE_OPTION?.super_eMAKE_FROM_USAGE_OPTION.partialEntity
          else { return }
        partial._ranking_rationale = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eMAKE_FROM_USAGE_OPTION`` )
    public var RANKING: SDAI.INTEGER?  {
      get {
        return sub_eMAKE_FROM_USAGE_OPTION?.partialEntity._ranking
      }
      set(newValue) {
        guard let partial = sub_eMAKE_FROM_USAGE_OPTION?.super_eMAKE_FROM_USAGE_OPTION.partialEntity
          else { return }
        partial._ranking = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUB( ``eMULTI_LEVEL_REFERENCE_DESIGNATOR`` )
    public var ROOT: ePRODUCT_DEFINITION?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"ROOT") {
          return cached.value as! ePRODUCT_DEFINITION? 
        }
        guard let origin = sub_eMULTI_LEVEL_REFERENCE_DESIGNATOR else { return nil }
        let value = ePRODUCT_DEFINITION(origin.partialEntity._root__getter(SELF: origin))
        updateCache(derivedAttributeName:"ROOT", value:value)
        return value
      }
    }

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
    /// - origin: SUPER( ``ePRODUCT_DEFINITION_RELATIONSHIP`` )
    public var ID: tIDENTIFIER {
      get {
        return SDAI.UNWRAP( super_ePRODUCT_DEFINITION_RELATIONSHIP.partialEntity._id )
      }
      set(newValue) {
        let partial = super_ePRODUCT_DEFINITION_RELATIONSHIP.partialEntity
        partial._id = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUB( ``eNEXT_ASSEMBLY_USAGE_OCCURRENCE`` )
    public var PRODUCT_DEFINITION_OCCURRENCE_ID: tIDENTIFIER?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"PRODUCT_DEFINITION_OCCURRENCE_ID") {
          return cached.value as! tIDENTIFIER? 
        }
        guard let origin = sub_eNEXT_ASSEMBLY_USAGE_OCCURRENCE else { return nil }
        let value = tIDENTIFIER(origin.partialEntity._product_definition_occurrence_id__getter(SELF: origin))
        updateCache(derivedAttributeName:"PRODUCT_DEFINITION_OCCURRENCE_ID", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eMULTI_LEVEL_REFERENCE_DESIGNATOR`` )
    public var LOCATION: (SDAI.LIST_UNIQUE<eNEXT_ASSEMBLY_USAGE_OCCURRENCE>/*[1:nil]*/ )?  {
      get {
        return sub_eMULTI_LEVEL_REFERENCE_DESIGNATOR?.partialEntity._location
      }
      set(newValue) {
        guard let partial = sub_eMULTI_LEVEL_REFERENCE_DESIGNATOR?.super_eMULTI_LEVEL_REFERENCE_DESIGNATOR
          .partialEntity else { return }
        partial._location = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT(DYNAMIC)(OBSERVED)__ attribute
    /// - origin: SUPER( ``ePRODUCT_DEFINITION_RELATIONSHIP`` )
    public var RELATED_PRODUCT_DEFINITION: sPRODUCT_DEFINITION_OR_REFERENCE {
      get {
        if let resolved = _product_definition_relationship._related_product_definition__provider(complex: self.complexEntity) {
          let value = resolved._related_product_definition__getter(complex: self.complexEntity)
          return value
        }
        else {
          return SDAI.UNWRAP( super_ePRODUCT_DEFINITION_RELATIONSHIP.partialEntity
            ._related_product_definition )
        }
      }
      set(newValue) {
        if let _ = _product_definition_relationship._related_product_definition__provider(complex: self.complexEntity) { return }

        let partial = super_ePRODUCT_DEFINITION_RELATIONSHIP.partialEntity
        partial._related_product_definition = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``ePRODUCT_DEFINITION_RELATIONSHIP`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( super_ePRODUCT_DEFINITION_RELATIONSHIP.partialEntity._name )
      }
      set(newValue) {
        let partial = super_ePRODUCT_DEFINITION_RELATIONSHIP.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_product_definition_usage.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(ePRODUCT_DEFINITION_RELATIONSHIP.self) else { return nil }
      self.super_ePRODUCT_DEFINITION_RELATIONSHIP = super1

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
      result[prefix2 + " .WHERE_wr1"] = _product_definition_usage.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "PRODUCT_DEFINITION_USAGE", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: ePRODUCT_DEFINITION_RELATIONSHIP.self)
      entityDef.add(supertype: ePRODUCT_DEFINITION_USAGE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \ePRODUCT_DEFINITION_USAGE.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "LEAF", keyPath: \ePRODUCT_DEFINITION_USAGE.LEAF, 
        kind: .derived, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NEXT_USAGE", keyPath: \ePRODUCT_DEFINITION_USAGE.NEXT_USAGE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "REFERENCE_DESIGNATOR", keyPath: \ePRODUCT_DEFINITION_USAGE.REFERENCE_DESIGNATOR, 
        kind: .explicitOptional, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "UPPER_USAGE", keyPath: \ePRODUCT_DEFINITION_USAGE.UPPER_USAGE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RANKING_RATIONALE", keyPath: \ePRODUCT_DEFINITION_USAGE.RANKING_RATIONALE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "RANKING", keyPath: \ePRODUCT_DEFINITION_USAGE.RANKING, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ROOT", keyPath: \ePRODUCT_DEFINITION_USAGE.ROOT, 
        kind: .derived, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RELATING_PRODUCT_DEFINITION", keyPath: \ePRODUCT_DEFINITION_USAGE.RELATING_PRODUCT_DEFINITION, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ID", keyPath: \ePRODUCT_DEFINITION_USAGE.ID, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "PRODUCT_DEFINITION_OCCURRENCE_ID", keyPath: \ePRODUCT_DEFINITION_USAGE.PRODUCT_DEFINITION_OCCURRENCE_ID, 
        kind: .derived, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "LOCATION", keyPath: \ePRODUCT_DEFINITION_USAGE.LOCATION, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RELATED_PRODUCT_DEFINITION", keyPath: \ePRODUCT_DEFINITION_USAGE.RELATED_PRODUCT_DEFINITION, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \ePRODUCT_DEFINITION_USAGE.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      //MARK: UNIQUENESS RULE REGISTRATIONS
      entityDef.addUniqunessRule(label:"UNIQUE_ur1", rule: _product_definition_usage.UNIQUE_ur1)

      return entityDef
    }

  }
}
