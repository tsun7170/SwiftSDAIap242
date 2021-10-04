/* file: group.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY group
    SUPERTYPE OF ( 
        ONEOF ( 
            change_group, 
            change_element ) );
      name         : label;
      description  : OPTIONAL text;
    DERIVE
      id  : identifier := get_id_value( SELF );
    WHERE
      wr1: ( SIZEOF( USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ID_ATTRIBUTE.'
               + 'IDENTIFIED_ITEM'  ) ) <= 1 );
  END_ENTITY; -- group (line:17331 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  ENTITY(SELF)	group
    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT

    ATTR:  id,	TYPE: identifier -- DERIVED
      := get_id_value( SELF )


  SUB- ENTITY(2)	mating_material
    REDCR: definition,	TYPE: product_definition_usage_relationship -- EXPLICIT
      -- OVERRIDING ENTITY: property_definition


  SUB- ENTITY(3)	requirement_source
    (no local attributes)

  SUB- ENTITY(4)	product_group_rules
    (no local attributes)

  SUB- ENTITY(5)	change_group
    (no local attributes)

  SUB- ENTITY(6)	rep_item_group
    (no local attributes)

  SUB- ENTITY(7)	product_group_attributes
    (no local attributes)

  SUB- ENTITY(8)	validation
    (no local attributes)

  SUB- ENTITY(9)	delete_element
    (no local attributes)

  SUB- ENTITY(10)	add_element
    (no local attributes)

  SUB- ENTITY(11)	modify_element
    (no local attributes)

  SUB- ENTITY(12)	change_element
    (no local attributes)

  SUB- ENTITY(13)	characterized_class
    (no local attributes)

  SUB- ENTITY(14)	class_by_intension
    (no local attributes)

  SUB- ENTITY(15)	class_by_extension
    (no local attributes)

  SUB- ENTITY(16)	externally_defined_class
    (no local attributes)

  SUB- ENTITY(17)	class
    (no local attributes)

  SUB- ENTITY(18)	analysis_assignment
    (no local attributes)

  SUB- ENTITY(19)	mated_part_relationship
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


  SUB- ENTITY(20)	product_group
    (no local attributes)

  SUB- ENTITY(21)	hierarchical_interface_connection
    (no local attributes)

  SUB- ENTITY(22)	interface_connection
    (no local attributes)

  SUB- ENTITY(23)	in_zone
    (no local attributes)

  SUB- ENTITY(24)	characteristic_type
    (no local attributes)

  SUB- ENTITY(25)	verification
    (no local attributes)

  SUB- ENTITY(26)	document_identifier
    (no local attributes)

  SUB- ENTITY(27)	satisfies_requirement
    (no local attributes)

  SUB- ENTITY(28)	class_system
    (no local attributes)

  SUB- ENTITY(29)	language
    (no local attributes)

  SUB- ENTITY(30)	exclusive_product_concept_feature_category
    (no local attributes)

  SUB- ENTITY(31)	characterized_product_concept_feature_category
    (no local attributes)

  SUB- ENTITY(32)	product_concept_feature_category
    (no local attributes)

  SUB- ENTITY(33)	breakdown_element_realization
    (no local attributes)

  SUB- ENTITY(34)	product_definition_element_relationship
    (no local attributes)

  SUB- ENTITY(35)	message_contents_group
    (no local attributes)

  SUB- ENTITY(36)	interface_connector_occurrence
    (no local attributes)

  SUB- ENTITY(37)	requirement_assignment
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _group : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eGROUP.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _name: tLABEL // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _description: tTEXT?  // PLAIN EXPLICIT ATTRIBUTE

    /// DERIVE ATTRIBUTE
    internal func _id__getter(SELF: eGROUP) -> tIDENTIFIER?  {

      let _TEMP1 = GET_ID_VALUE(sID_ATTRIBUTE_SELECT(/*eGROUP*/SELF))
      return _TEMP1
    }

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sSTYLE_CONTEXT_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sCLASSIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sACTION_ITEMS.typeName)) // -> sCLASSIFICATION_ITEM
      members.insert(SDAI.STRING(sCHANGE_MANAGEMENT_OBJECT.typeName)) // -> sACTION_ITEMS
      members.insert(SDAI.STRING(sIR_USAGE_ITEM.typeName)) // -> sCLASSIFICATION_ITEM
      members.insert(SDAI.STRING(sMULTI_LANGUAGE_ATTRIBUTE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sID_ATTRIBUTE_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sSTATE_OBSERVED_OF_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sEXTERNAL_IDENTIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sINSPECTED_ECDQ_ELEMENT_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sLOCATION_OF_EXTREME_VALUE_SELECT.typeName)) // -> sINSPECTED_ECDQ_ELEMENT_SELECT
      members.insert(SDAI.STRING(sIDENTIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sATTRIBUTE_CLASSIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sREQUIREMENT_SOURCE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sSECURITY_CLASSIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sAPPROVAL_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sGENERAL_ORGANIZATIONAL_DATA_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sEVENT_OCCURRENCE_ITEM.typeName)) // -> sGENERAL_ORGANIZATIONAL_DATA_SELECT
      members.insert(SDAI.STRING(sNAME_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sDESCRIPTION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sATTRIBUTE_LANGUAGE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sINSPECTED_SHAPE_ELEMENT_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sDOCUMENT_REFERENCE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sINSPECTED_ELEMENT_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sEFFECTIVITY_ITEM.typeName)) // -> Self
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._name.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._description?.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._name.value.isValueEqualOptionally(to: rhs._name.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._description?.value.isValueEqualOptionally(to: rhs._description?.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      return true
    }

    public override func isValueEqualOptionally(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      guard let rhs = rhs as? Self else { return false }
      var result: Bool? = true
      if let comp = super.isValueEqualOptionally(to: rhs, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._name.value.isValueEqualOptionally(to: rhs._name.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._description?.value.isValueEqualOptionally(to: rhs._description?.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eGROUP?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.USEDIN(T: SELF, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eID_ATTRIBUTE
        .IDENTIFIED_ITEM)
      let _TEMP2 = SDAI.SIZEOF(_TEMP1)
      let _TEMP3 = _TEMP2 <= SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      return _TEMP3
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(NAME: tLABEL, DESCRIPTION: tTEXT? ) {
      self._name = NAME
      self._description = DESCRIPTION
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: tLABEL.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverOptionalParameter(as: tTEXT.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( NAME: p0, DESCRIPTION: p1 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY group
    SUPERTYPE OF ( 
        ONEOF ( 
            change_group, 
            change_element ) );
      name         : label;
      description  : OPTIONAL text;
    DERIVE
      id  : identifier := get_id_value( SELF );
    WHERE
      wr1: ( SIZEOF( USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ID_ATTRIBUTE.'
               + 'IDENTIFIED_ITEM'  ) ) <= 1 );
  END_ENTITY; -- group (line:17331 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eGROUP : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _group.self
    }
    public let partialEntity: _group

    //MARK: SUPERTYPES
    public var super_eGROUP: eGROUP { return self } 	// [1]

    //MARK: SUBTYPES
    public var sub_eMATING_MATERIAL: eMATING_MATERIAL? {	// [2]
      return self.complexEntity.entityReference(eMATING_MATERIAL.self)
    }

    public var sub_eREQUIREMENT_SOURCE: eREQUIREMENT_SOURCE? {	// [3]
      return self.complexEntity.entityReference(eREQUIREMENT_SOURCE.self)
    }

    public var sub_ePRODUCT_GROUP_RULES: ePRODUCT_GROUP_RULES? {	// [4]
      return self.complexEntity.entityReference(ePRODUCT_GROUP_RULES.self)
    }

    public var sub_eCHANGE_GROUP: eCHANGE_GROUP? {	// [5]
      return self.complexEntity.entityReference(eCHANGE_GROUP.self)
    }

    public var sub_eREP_ITEM_GROUP: eREP_ITEM_GROUP? {	// [6]
      return self.complexEntity.entityReference(eREP_ITEM_GROUP.self)
    }

    public var sub_ePRODUCT_GROUP_ATTRIBUTES: ePRODUCT_GROUP_ATTRIBUTES? {	// [7]
      return self.complexEntity.entityReference(ePRODUCT_GROUP_ATTRIBUTES.self)
    }

    public var sub_eVALIDATION: eVALIDATION? {	// [8]
      return self.complexEntity.entityReference(eVALIDATION.self)
    }

    public var sub_eDELETE_ELEMENT: eDELETE_ELEMENT? {	// [9]
      return self.complexEntity.entityReference(eDELETE_ELEMENT.self)
    }

    public var sub_eADD_ELEMENT: eADD_ELEMENT? {	// [10]
      return self.complexEntity.entityReference(eADD_ELEMENT.self)
    }

    public var sub_eMODIFY_ELEMENT: eMODIFY_ELEMENT? {	// [11]
      return self.complexEntity.entityReference(eMODIFY_ELEMENT.self)
    }

    public var sub_eCHANGE_ELEMENT: eCHANGE_ELEMENT? {	// [12]
      return self.complexEntity.entityReference(eCHANGE_ELEMENT.self)
    }

    public var sub_eCHARACTERIZED_CLASS: eCHARACTERIZED_CLASS? {	// [13]
      return self.complexEntity.entityReference(eCHARACTERIZED_CLASS.self)
    }

    public var sub_eCLASS_BY_INTENSION: eCLASS_BY_INTENSION? {	// [14]
      return self.complexEntity.entityReference(eCLASS_BY_INTENSION.self)
    }

    public var sub_eCLASS_BY_EXTENSION: eCLASS_BY_EXTENSION? {	// [15]
      return self.complexEntity.entityReference(eCLASS_BY_EXTENSION.self)
    }

    public var sub_eEXTERNALLY_DEFINED_CLASS: eEXTERNALLY_DEFINED_CLASS? {	// [16]
      return self.complexEntity.entityReference(eEXTERNALLY_DEFINED_CLASS.self)
    }

    public var sub_eCLASS: eCLASS? {	// [17]
      return self.complexEntity.entityReference(eCLASS.self)
    }

    public var sub_eANALYSIS_ASSIGNMENT: eANALYSIS_ASSIGNMENT? {	// [18]
      return self.complexEntity.entityReference(eANALYSIS_ASSIGNMENT.self)
    }

    public var sub_eMATED_PART_RELATIONSHIP: eMATED_PART_RELATIONSHIP? {	// [19]
      return self.complexEntity.entityReference(eMATED_PART_RELATIONSHIP.self)
    }

    public var sub_ePRODUCT_GROUP: ePRODUCT_GROUP? {	// [20]
      return self.complexEntity.entityReference(ePRODUCT_GROUP.self)
    }

    public var sub_eHIERARCHICAL_INTERFACE_CONNECTION: eHIERARCHICAL_INTERFACE_CONNECTION? {	// [21]
      return self.complexEntity.entityReference(eHIERARCHICAL_INTERFACE_CONNECTION.self)
    }

    public var sub_eINTERFACE_CONNECTION: eINTERFACE_CONNECTION? {	// [22]
      return self.complexEntity.entityReference(eINTERFACE_CONNECTION.self)
    }

    public var sub_eIN_ZONE: eIN_ZONE? {	// [23]
      return self.complexEntity.entityReference(eIN_ZONE.self)
    }

    public var sub_eCHARACTERISTIC_TYPE: eCHARACTERISTIC_TYPE? {	// [24]
      return self.complexEntity.entityReference(eCHARACTERISTIC_TYPE.self)
    }

    public var sub_eVERIFICATION: eVERIFICATION? {	// [25]
      return self.complexEntity.entityReference(eVERIFICATION.self)
    }

    public var sub_eDOCUMENT_IDENTIFIER: eDOCUMENT_IDENTIFIER? {	// [26]
      return self.complexEntity.entityReference(eDOCUMENT_IDENTIFIER.self)
    }

    public var sub_eSATISFIES_REQUIREMENT: eSATISFIES_REQUIREMENT? {	// [27]
      return self.complexEntity.entityReference(eSATISFIES_REQUIREMENT.self)
    }

    public var sub_eCLASS_SYSTEM: eCLASS_SYSTEM? {	// [28]
      return self.complexEntity.entityReference(eCLASS_SYSTEM.self)
    }

    public var sub_eLANGUAGE: eLANGUAGE? {	// [29]
      return self.complexEntity.entityReference(eLANGUAGE.self)
    }

    public var sub_eEXCLUSIVE_PRODUCT_CONCEPT_FEATURE_CATEGORY: eEXCLUSIVE_PRODUCT_CONCEPT_FEATURE_CATEGORY? {	// [30]
      return self.complexEntity.entityReference(eEXCLUSIVE_PRODUCT_CONCEPT_FEATURE_CATEGORY.self)
    }

    public var sub_eCHARACTERIZED_PRODUCT_CONCEPT_FEATURE_CATEGORY: eCHARACTERIZED_PRODUCT_CONCEPT_FEATURE_CATEGORY? {	// [31]
      return self.complexEntity.entityReference(eCHARACTERIZED_PRODUCT_CONCEPT_FEATURE_CATEGORY.self)
    }

    public var sub_ePRODUCT_CONCEPT_FEATURE_CATEGORY: ePRODUCT_CONCEPT_FEATURE_CATEGORY? {	// [32]
      return self.complexEntity.entityReference(ePRODUCT_CONCEPT_FEATURE_CATEGORY.self)
    }

    public var sub_eBREAKDOWN_ELEMENT_REALIZATION: eBREAKDOWN_ELEMENT_REALIZATION? {	// [33]
      return self.complexEntity.entityReference(eBREAKDOWN_ELEMENT_REALIZATION.self)
    }

    public var sub_ePRODUCT_DEFINITION_ELEMENT_RELATIONSHIP: ePRODUCT_DEFINITION_ELEMENT_RELATIONSHIP? {	// [34]
      return self.complexEntity.entityReference(ePRODUCT_DEFINITION_ELEMENT_RELATIONSHIP.self)
    }

    public var sub_eMESSAGE_CONTENTS_GROUP: eMESSAGE_CONTENTS_GROUP? {	// [35]
      return self.complexEntity.entityReference(eMESSAGE_CONTENTS_GROUP.self)
    }

    public var sub_eINTERFACE_CONNECTOR_OCCURRENCE: eINTERFACE_CONNECTOR_OCCURRENCE? {	// [36]
      return self.complexEntity.entityReference(eINTERFACE_CONNECTOR_OCCURRENCE.self)
    }

    public var sub_eREQUIREMENT_ASSIGNMENT: eREQUIREMENT_ASSIGNMENT? {	// [37]
      return self.complexEntity.entityReference(eREQUIREMENT_ASSIGNMENT.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eGROUP`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        return self.partialEntity._description
      }
      set(newValue) {
        let partial = self.partialEntity
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
    /// - origin: SELF( ``eGROUP`` )
    public var ID: tIDENTIFIER?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"ID") {
          return cached.value as! tIDENTIFIER? 
        }
        let origin = self
        let value = origin.partialEntity._id__getter(SELF: origin)
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

    /// __EXPLICIT REDEF(DYNAMIC)__ attribute
    /// - origin: SUB( ``eMATING_MATERIAL`` )
    public var DEFINITION: ePRODUCT_DEFINITION_USAGE_RELATIONSHIP?  {
      get {
        if let resolved = _property_definition._definition__provider(complex: self.complexEntity) {
          let value = ePRODUCT_DEFINITION_USAGE_RELATIONSHIP(resolved._definition__getter(
            complex: self.complexEntity))
          return value
        }
        else {
          return ePRODUCT_DEFINITION_USAGE_RELATIONSHIP(sub_eMATING_MATERIAL?.super_ePROPERTY_DEFINITION
            .partialEntity._definition)
        }
      }
      set(newValue) {
        if let _ = _property_definition._definition__provider(complex: self.complexEntity) { return }

        guard let partial = sub_eMATING_MATERIAL?.super_ePROPERTY_DEFINITION.partialEntity else { return }
        partial._definition = SDAI.UNWRAP(
          sCHARACTERIZED_DEFINITION(newValue))
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eGROUP`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( self.partialEntity._name )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_group.self) else { return nil }
      self.partialEntity = partial

      super.init(complex: complexEntity)
    }

    public required convenience init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let entityRef = generic?.entityReference else { return nil }
      self.init(complex: entityRef.complexEntity)
    }

    public convenience init?<S: SDAISelectType>(_ select: S?) { self.init(possiblyFrom: select) }
    public convenience init?(_ complex: SDAI.ComplexEntity?) { self.init(complex: complex) }

    //SIMPLE ENTITY REFERENCE
    public convenience init?(_ partial:_group) {
      let complex = SDAI.ComplexEntity(entities:[partial])
      self.init(complex: complex)
    }


    //MARK: WHERE RULE VALIDATION (ENTITY)
    public override class func validateWhereRules(instance:SDAI.EntityReference?, prefix:SDAI.WhereLabel) -> [SDAI.WhereLabel:SDAI.LOGICAL] {
      guard let instance = instance as? Self else { return [:] }

      let prefix2 = prefix + " \(instance)"

      var result = super.validateWhereRules(instance:instance, prefix:prefix2)
      result[prefix2 + " .WHERE_wr1"] = _group.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "GROUP", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eGROUP.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eGROUP.DESCRIPTION, 
        kind: .explicitOptional, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ITEMS", keyPath: \eGROUP.ITEMS, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "OF_SHAPE", keyPath: \eGROUP.OF_SHAPE, 
        kind: .derivedRedeclaring, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ID", keyPath: \eGROUP.ID, 
        kind: .derived, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ASSIGNED_GROUP", keyPath: \eGROUP.ASSIGNED_GROUP, 
        kind: .derivedRedeclaring, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DEFINITION", keyPath: \eGROUP.DEFINITION, 
        kind: .explicitRedeclaring, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eGROUP.NAME, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}