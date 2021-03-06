/* file: property_definition.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY property_definition
    SUPERTYPE OF ( 
        ONEOF ( 
            product_definition_kinematics, 
            product_definition_relationship_kinematics, 
            product_definition_shape ) );
      name         : label;
      description  : OPTIONAL text;
      definition   : characterized_definition;
    DERIVE
      id  : identifier := get_id_value( SELF );
    WHERE
      wr1: ( SIZEOF( USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ID_ATTRIBUTE.'
               + 'IDENTIFIED_ITEM'  ) ) <= 1 );
  END_ENTITY; -- property_definition (line:26601 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  ENTITY(SELF)	property_definition
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


  SUB- ENTITY(2)	material_property
    (no local attributes)

  SUB- ENTITY(3)	mating_material
    REDCR: definition,	TYPE: product_definition_usage_relationship -- EXPLICIT
      -- OVERRIDING ENTITY: property_definition


  SUB- ENTITY(4)	product_definition_kinematics
    REDCR: definition,	TYPE: product_definition -- EXPLICIT
      -- OVERRIDING ENTITY: property_definition

    ATTR:  representation_relation,	TYPE: kinematic_property_definition_representation -- INVERSE
      FOR definition;


  SUB- ENTITY(5)	product_definition_relationship_kinematics
    REDCR: definition,	TYPE: product_definition_relationship -- EXPLICIT
      -- OVERRIDING ENTITY: property_definition


  SUB- ENTITY(6)	mated_part_relationship
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


  SUB- ENTITY(7)	interface_component
    (no local attributes)

  SUB- ENTITY(8)	physical_component
    (no local attributes)

  SUB- ENTITY(9)	thermal_component
    (no local attributes)

  SUB- ENTITY(10)	linear_array_placement_group_component
    (no local attributes)

  SUB- ENTITY(11)	rectangular_array_placement_group_component
    (no local attributes)

  SUB- ENTITY(12)	array_placement_group
    (no local attributes)

  SUB- ENTITY(13)	interfaced_group_component
    (no local attributes)

  SUB- ENTITY(14)	assembly_group_component
    (no local attributes)

  SUB- ENTITY(15)	assembly_component
    REDCR: definition,	TYPE: assembly_component -- DERIVED (DYNAMIC)
      := SELF
      -- OVERRIDING ENTITY: property_definition


  SUB- ENTITY(16)	product_definition_shape
    (no local attributes)

  SUB- ENTITY(17)	entity_assertion
    (no local attributes)

  SUB- ENTITY(18)	attribute_assertion
    (no local attributes)

  SUB- ENTITY(19)	fact_type
    (no local attributes)

  SUB- ENTITY(20)	back_chaining_rule_body
    (no local attributes)

  SUB- ENTITY(21)	forward_chaining_rule_premise
    (no local attributes)

  SUB- ENTITY(22)	single_property_is_definition
    REDCR: definition,	TYPE: product_definition -- EXPLICIT
      -- OVERRIDING ENTITY: property_definition


  SUB- ENTITY(23)	row_variable
    (no local attributes)

  SUB- ENTITY(24)	scalar_variable
    (no local attributes)

  SUB- ENTITY(25)	abstract_variable
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _property_definition : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      ePROPERTY_DEFINITION.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _name: tLABEL // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _description: tTEXT?  // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    /// - see the corresponding attribute accesser in the entity reference definition for the attribute value dynamic lookup logic
    public internal(set) var _definition: sCHARACTERIZED_DEFINITION?  // PLAIN EXPLICIT ATTRIBUTE

    internal static func _definition__provider(complex: SDAI.ComplexEntity) -> ePROPERTY_DEFINITION__DEFINITION__provider? {
      let resolved = complex.resolvePartialEntityInstance(from: [_mated_part_relationship.typeIdentity, 
        _assembly_component.typeIdentity])
      return resolved as? ePROPERTY_DEFINITION__DEFINITION__provider
    }

    /// DERIVE ATTRIBUTE
    internal func _id__getter(SELF: ePROPERTY_DEFINITION) -> tIDENTIFIER?  {

      let _TEMP1 = GET_ID_VALUE(sID_ATTRIBUTE_SELECT(/*ePROPERTY_DEFINITION*/SELF))
      return _TEMP1
    }

    //PARTIAL COMPLEX ENTITY SUPPORT
    final public override class func fixupPartialComplexEntityAttributes(partialComplex: SDAI.ComplexEntity, baseComplex: SDAI.ComplexEntity) {
      guard let pe = partialComplex.partialEntityInstance(_property_definition.self) else { return }

      if pe._definition == nil, self._definition__provider(complex: partialComplex) == nil, 
        let base__definition__provider = self._definition__provider(complex: baseComplex) {
        pe._definition = base__definition__provider._definition__getter(complex: baseComplex)
      }
    }
    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sDATE_AND_TIME_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sCLASSIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sACTION_ITEMS.typeName)) // -> sCLASSIFICATION_ITEM
      members.insert(SDAI.STRING(sCHANGE_MANAGEMENT_OBJECT.typeName)) // -> sACTION_ITEMS
      members.insert(SDAI.STRING(sIR_USAGE_ITEM.typeName)) // -> sCLASSIFICATION_ITEM
      members.insert(SDAI.STRING(sMULTI_LANGUAGE_ATTRIBUTE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sID_ATTRIBUTE_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sEXTERNAL_IDENTIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sPROPERTY_OR_SHAPE_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sITEM_IDENTIFIED_REPRESENTATION_USAGE_DEFINITION.typeName)) // -> Self
      members.insert(SDAI.STRING(sIDENTIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sTIME_INTERVAL_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sATTRIBUTE_CLASSIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sEVIDENCE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sSECURITY_CLASSIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sACTION_REQUEST_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sDRAUGHTING_MODEL_ITEM_DEFINITION.typeName)) // -> Self
      members.insert(SDAI.STRING(sDATE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sANALYSED_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sAPPROVAL_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sACTION_METHOD_ITEMS.typeName)) // -> Self
      members.insert(SDAI.STRING(sAP242_ASSIGNMENT_OBJECT_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sREPRESENTED_DEFINITION.typeName)) // -> Self
      members.insert(SDAI.STRING(sPERSON_AND_ORGANIZATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sGENERAL_ORGANIZATIONAL_DATA_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sEVENT_OCCURRENCE_ITEM.typeName)) // -> sGENERAL_ORGANIZATIONAL_DATA_SELECT
      members.insert(SDAI.STRING(sORGANIZATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sDERIVED_PROPERTY_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sDESCRIPTION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sGENERIC_PROPERTY_DEFINITION_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sATTRIBUTE_LANGUAGE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sDOCUMENT_REFERENCE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sGROUPABLE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sEFFECTIVITY_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sASSIGNMENT_OBJECT_SELECT.typeName)) // -> Self
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._name.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._description?.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._definition?.value.hashAsValue(into: &hasher, visited: &complexEntities)
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
      if let comp = self._definition?.value.isValueEqualOptionally(to: rhs._definition?.value, visited: &comppairs)	{
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
      if let comp = self._definition?.value.isValueEqualOptionally(to: rhs._definition?.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: ePROPERTY_DEFINITION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.USEDIN(T: SELF, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eID_ATTRIBUTE
        .IDENTIFIED_ITEM)
      let _TEMP2 = SDAI.SIZEOF(_TEMP1)
      let _TEMP3 = _TEMP2 <= SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      return _TEMP3
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(NAME: tLABEL, DESCRIPTION: tTEXT? , DEFINITION: sCHARACTERIZED_DEFINITION? ) {
      self._name = NAME
      self._description = DESCRIPTION
      self._definition = DEFINITION
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 3
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: tLABEL.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverOptionalParameter(as: tTEXT.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p2) = exchangeStructure.recoverOmittableParameter(as: sCHARACTERIZED_DEFINITION.self, from: parameters[2])
      else { exchangeStructure.add(errorContext: "while recovering parameter #2 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( NAME: p0, DESCRIPTION: p1, DEFINITION: p2 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY property_definition
    SUPERTYPE OF ( 
        ONEOF ( 
            product_definition_kinematics, 
            product_definition_relationship_kinematics, 
            product_definition_shape ) );
      name         : label;
      description  : OPTIONAL text;
      definition   : characterized_definition;
    DERIVE
      id  : identifier := get_id_value( SELF );
    WHERE
      wr1: ( SIZEOF( USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ID_ATTRIBUTE.'
               + 'IDENTIFIED_ITEM'  ) ) <= 1 );
  END_ENTITY; -- property_definition (line:26601 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class ePROPERTY_DEFINITION : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _property_definition.self
    }
    public let partialEntity: _property_definition

    //MARK: SUPERTYPES
    public var super_ePROPERTY_DEFINITION: ePROPERTY_DEFINITION { return self } 	// [1]

    //MARK: SUBTYPES
    public var sub_eMATERIAL_PROPERTY: eMATERIAL_PROPERTY? {	// [2]
      return self.complexEntity.entityReference(eMATERIAL_PROPERTY.self)
    }

    public var sub_eMATING_MATERIAL: eMATING_MATERIAL? {	// [3]
      return self.complexEntity.entityReference(eMATING_MATERIAL.self)
    }

    public var sub_ePRODUCT_DEFINITION_KINEMATICS: ePRODUCT_DEFINITION_KINEMATICS? {	// [4]
      return self.complexEntity.entityReference(ePRODUCT_DEFINITION_KINEMATICS.self)
    }

    public var sub_ePRODUCT_DEFINITION_RELATIONSHIP_KINEMATICS: ePRODUCT_DEFINITION_RELATIONSHIP_KINEMATICS? {	// [5]
      return self.complexEntity.entityReference(ePRODUCT_DEFINITION_RELATIONSHIP_KINEMATICS.self)
    }

    public var sub_eMATED_PART_RELATIONSHIP: eMATED_PART_RELATIONSHIP? {	// [6]
      return self.complexEntity.entityReference(eMATED_PART_RELATIONSHIP.self)
    }

    public var sub_eINTERFACE_COMPONENT: eINTERFACE_COMPONENT? {	// [7]
      return self.complexEntity.entityReference(eINTERFACE_COMPONENT.self)
    }

    public var sub_ePHYSICAL_COMPONENT: ePHYSICAL_COMPONENT? {	// [8]
      return self.complexEntity.entityReference(ePHYSICAL_COMPONENT.self)
    }

    public var sub_eTHERMAL_COMPONENT: eTHERMAL_COMPONENT? {	// [9]
      return self.complexEntity.entityReference(eTHERMAL_COMPONENT.self)
    }

    public var sub_eLINEAR_ARRAY_PLACEMENT_GROUP_COMPONENT: eLINEAR_ARRAY_PLACEMENT_GROUP_COMPONENT? {	// [10]
      return self.complexEntity.entityReference(eLINEAR_ARRAY_PLACEMENT_GROUP_COMPONENT.self)
    }

    public var sub_eRECTANGULAR_ARRAY_PLACEMENT_GROUP_COMPONENT: eRECTANGULAR_ARRAY_PLACEMENT_GROUP_COMPONENT? {	// [11]
      return self.complexEntity.entityReference(eRECTANGULAR_ARRAY_PLACEMENT_GROUP_COMPONENT.self)
    }

    public var sub_eARRAY_PLACEMENT_GROUP: eARRAY_PLACEMENT_GROUP? {	// [12]
      return self.complexEntity.entityReference(eARRAY_PLACEMENT_GROUP.self)
    }

    public var sub_eINTERFACED_GROUP_COMPONENT: eINTERFACED_GROUP_COMPONENT? {	// [13]
      return self.complexEntity.entityReference(eINTERFACED_GROUP_COMPONENT.self)
    }

    public var sub_eASSEMBLY_GROUP_COMPONENT: eASSEMBLY_GROUP_COMPONENT? {	// [14]
      return self.complexEntity.entityReference(eASSEMBLY_GROUP_COMPONENT.self)
    }

    public var sub_eASSEMBLY_COMPONENT: eASSEMBLY_COMPONENT? {	// [15]
      return self.complexEntity.entityReference(eASSEMBLY_COMPONENT.self)
    }

    public var sub_ePRODUCT_DEFINITION_SHAPE: ePRODUCT_DEFINITION_SHAPE? {	// [16]
      return self.complexEntity.entityReference(ePRODUCT_DEFINITION_SHAPE.self)
    }

    public var sub_eENTITY_ASSERTION: eENTITY_ASSERTION? {	// [17]
      return self.complexEntity.entityReference(eENTITY_ASSERTION.self)
    }

    public var sub_eATTRIBUTE_ASSERTION: eATTRIBUTE_ASSERTION? {	// [18]
      return self.complexEntity.entityReference(eATTRIBUTE_ASSERTION.self)
    }

    public var sub_eFACT_TYPE: eFACT_TYPE? {	// [19]
      return self.complexEntity.entityReference(eFACT_TYPE.self)
    }

    public var sub_eBACK_CHAINING_RULE_BODY: eBACK_CHAINING_RULE_BODY? {	// [20]
      return self.complexEntity.entityReference(eBACK_CHAINING_RULE_BODY.self)
    }

    public var sub_eFORWARD_CHAINING_RULE_PREMISE: eFORWARD_CHAINING_RULE_PREMISE? {	// [21]
      return self.complexEntity.entityReference(eFORWARD_CHAINING_RULE_PREMISE.self)
    }

    public var sub_eSINGLE_PROPERTY_IS_DEFINITION: eSINGLE_PROPERTY_IS_DEFINITION? {	// [22]
      return self.complexEntity.entityReference(eSINGLE_PROPERTY_IS_DEFINITION.self)
    }

    public var sub_eROW_VARIABLE: eROW_VARIABLE? {	// [23]
      return self.complexEntity.entityReference(eROW_VARIABLE.self)
    }

    public var sub_eSCALAR_VARIABLE: eSCALAR_VARIABLE? {	// [24]
      return self.complexEntity.entityReference(eSCALAR_VARIABLE.self)
    }

    public var sub_eABSTRACT_VARIABLE: eABSTRACT_VARIABLE? {	// [25]
      return self.complexEntity.entityReference(eABSTRACT_VARIABLE.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``ePROPERTY_DEFINITION`` )
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
    /// - origin: SELF( ``ePROPERTY_DEFINITION`` )
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

    /// __INVERSE__ attribute
    /// observing eKINEMATIC_PROPERTY_DEFINITION_REPRESENTATION .DEFINITION
    /// - origin: SUB( ``ePRODUCT_DEFINITION_KINEMATICS`` )
    public var REPRESENTATION_RELATION: eKINEMATIC_PROPERTY_DEFINITION_REPRESENTATION?  {
      get {
        return sub_ePRODUCT_DEFINITION_KINEMATICS?.partialEntity._representation_relation
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
    /// - origin: SELF( ``ePROPERTY_DEFINITION`` )
    public var DEFINITION: sCHARACTERIZED_DEFINITION {
      get {
        if let resolved = _property_definition._definition__provider(complex: self.complexEntity) {
          let value = resolved._definition__getter(complex: self.complexEntity)
          return value
        }
        else {
          return SDAI.UNWRAP( self.partialEntity._definition )
        }
      }
      set(newValue) {
        if let _ = _property_definition._definition__provider(complex: self.complexEntity) { return }

        let partial = self.partialEntity
        partial._definition = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``ePROPERTY_DEFINITION`` )
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
      guard let partial = complexEntity?.partialEntityInstance(_property_definition.self) else { return nil }
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
    public convenience init?(_ partial:_property_definition) {
      let complex = SDAI.ComplexEntity(entities:[partial])
      self.init(complex: complex)
    }


    //MARK: WHERE RULE VALIDATION (ENTITY)
    public override class func validateWhereRules(instance:SDAI.EntityReference?, prefix:SDAI.WhereLabel) -> [SDAI.WhereLabel:SDAI.LOGICAL] {
      guard let instance = instance as? Self else { return [:] }

      let prefix2 = prefix + " \(instance)"

      var result = super.validateWhereRules(instance:instance, prefix:prefix2)
      result[prefix2 + " .WHERE_wr1"] = _property_definition.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "PROPERTY_DEFINITION", type: self, explicitAttributeCount: 3)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: ePROPERTY_DEFINITION.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \ePROPERTY_DEFINITION.DESCRIPTION, 
        kind: .explicitOptional, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ITEMS", keyPath: \ePROPERTY_DEFINITION.ITEMS, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "OF_SHAPE", keyPath: \ePROPERTY_DEFINITION.OF_SHAPE, 
        kind: .derivedRedeclaring, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ID", keyPath: \ePROPERTY_DEFINITION.ID, 
        kind: .derived, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "REPRESENTATION_RELATION", keyPath: \ePROPERTY_DEFINITION.REPRESENTATION_RELATION, 
        kind: .inverse, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ASSIGNED_GROUP", keyPath: \ePROPERTY_DEFINITION.ASSIGNED_GROUP, 
        kind: .derivedRedeclaring, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DEFINITION", keyPath: \ePROPERTY_DEFINITION.DEFINITION, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \ePROPERTY_DEFINITION.NAME, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}

//MARK: - Entity Dynamic Attribute Protocols
internal protocol ePROPERTY_DEFINITION__DEFINITION__provider {
  func _definition__getter(complex: SDAI.ComplexEntity) -> 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sCHARACTERIZED_DEFINITION
}
