/* file: externally_conditioned_data_quality_criterion.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY externally_conditioned_data_quality_criterion
    SUBTYPE OF ( data_quality_criterion, data_quality_measurement_requirement );
    WHERE
      wr1: ( SIZEOF( USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'DATA_QUALITY_CRITERION_ASSESSMENT_ASSOCIATION.CRITERION'  ) ) = 0 );
      wr2: ( SIZEOF( QUERY ( i1 <* bag_to_set( USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'REPRESENTATION_ITEM_RELATIONSHIP.RELATED_REPRESENTATION_ITEM'  ) ) | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'DATA_QUALITY_CRITERION_MEASUREMENT_ASSOCIATION'  IN TYPEOF( i1 ) ) ) ) = 0 );
      wr3: ( SIZEOF( QUERY ( i1 <* bag_to_set( USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'REPRESENTATION_ITEM_RELATIONSHIP.RELATING_REPRESENTATION_ITEM'  ) ) | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'DATA_QUALITY_CRITERION_MEASUREMENT_ASSOCIATION'  IN TYPEOF( i1 ) ) ) ) = 0 );
  END_ENTITY; -- externally_conditioned_data_quality_criterion (line:14328 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(2)	data_quality_criterion
    (no local attributes)

  SUPER- ENTITY(3)	data_quality_measurement_requirement
    (no local attributes)

  ENTITY(SELF)	externally_conditioned_data_quality_criterion
    (no local attributes)

  SUB- ENTITY(5)	inappropriate_use_of_layer
    (no local attributes)

  SUB- ENTITY(6)	non_agreed_unit_usage
    (no local attributes)

  SUB- ENTITY(7)	non_agreed_scale_usage
    (no local attributes)

  SUB- ENTITY(8)	wrong_element_name
    (no local attributes)

  SUB- ENTITY(9)	disallowed_assembly_relationship_usage
    (no local attributes)

  SUB- ENTITY(10)	excessive_use_of_groups
    (no local attributes)

  SUB- ENTITY(11)	non_referenced_coordinate_system
    (no local attributes)

  SUB- ENTITY(12)	unused_shape_element
    (no local attributes)

  SUB- ENTITY(13)	inconsistent_element_reference
    (no local attributes)

  SUB- ENTITY(14)	excessive_use_of_layers
    (no local attributes)

  SUB- ENTITY(15)	non_agreed_accuracy_parameter_usage
    (no local attributes)

  SUB- ENTITY(16)	inappropriate_element_visibility
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _externally_conditioned_data_quality_criterion : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eEXTERNALLY_CONDITIONED_DATA_QUALITY_CRITERION.self
    }

    //ATTRIBUTES
    // (no local attributes)

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sDOCUMENT_REFERENCE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sACTION_ITEMS.typeName)) // -> sDOCUMENT_REFERENCE_ITEM
      members.insert(SDAI.STRING(sCHANGE_MANAGEMENT_OBJECT.typeName)) // -> sACTION_ITEMS
      members.insert(SDAI.STRING(sIR_USAGE_ITEM.typeName)) // -> sDOCUMENT_REFERENCE_ITEM
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
    public static func WHERE_wr1(SELF: eEXTERNALLY_CONDITIONED_DATA_QUALITY_CRITERION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.USEDIN(T: SELF, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
        .eDATA_QUALITY_CRITERION_ASSESSMENT_ASSOCIATION.CRITERION)
      let _TEMP2 = SDAI.SIZEOF(_TEMP1)
      let _TEMP3 = _TEMP2 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP3
    }
    public static func WHERE_wr2(SELF: eEXTERNALLY_CONDITIONED_DATA_QUALITY_CRITERION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.USEDIN(T: SELF, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
        .eREPRESENTATION_ITEM_RELATIONSHIP.RELATED_REPRESENTATION_ITEM)
      let _TEMP2 = BAG_TO_SET(_TEMP1)
      let _TEMP3 = _TEMP2?.QUERY{ I1 in 

          let _TEMP1 = SDAI.TYPEOF(I1, IS: eDATA_QUALITY_CRITERION_MEASUREMENT_ASSOCIATION.self)
          return _TEMP1 }
      let _TEMP4 = SDAI.SIZEOF(_TEMP3)
      let _TEMP5 = _TEMP4 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP5
    }
    public static func WHERE_wr3(SELF: eEXTERNALLY_CONDITIONED_DATA_QUALITY_CRITERION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.USEDIN(T: SELF, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
        .eREPRESENTATION_ITEM_RELATIONSHIP.RELATING_REPRESENTATION_ITEM)
      let _TEMP2 = BAG_TO_SET(_TEMP1)
      let _TEMP3 = _TEMP2?.QUERY{ I1 in 

          let _TEMP1 = SDAI.TYPEOF(I1, IS: eDATA_QUALITY_CRITERION_MEASUREMENT_ASSOCIATION.self)
          return _TEMP1 }
      let _TEMP4 = SDAI.SIZEOF(_TEMP3)
      let _TEMP5 = _TEMP4 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP5
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
  ENTITY externally_conditioned_data_quality_criterion
    SUBTYPE OF ( data_quality_criterion, data_quality_measurement_requirement );
    WHERE
      wr1: ( SIZEOF( USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'DATA_QUALITY_CRITERION_ASSESSMENT_ASSOCIATION.CRITERION'  ) ) = 0 );
      wr2: ( SIZEOF( QUERY ( i1 <* bag_to_set( USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'REPRESENTATION_ITEM_RELATIONSHIP.RELATED_REPRESENTATION_ITEM'  ) ) | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'DATA_QUALITY_CRITERION_MEASUREMENT_ASSOCIATION'  IN TYPEOF( i1 ) ) ) ) = 0 );
      wr3: ( SIZEOF( QUERY ( i1 <* bag_to_set( USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'REPRESENTATION_ITEM_RELATIONSHIP.RELATING_REPRESENTATION_ITEM'  ) ) | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'DATA_QUALITY_CRITERION_MEASUREMENT_ASSOCIATION'  IN TYPEOF( i1 ) ) ) ) = 0 );
  END_ENTITY; -- externally_conditioned_data_quality_criterion (line:14328 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eEXTERNALLY_CONDITIONED_DATA_QUALITY_CRITERION : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _externally_conditioned_data_quality_criterion.self
    }
    public let partialEntity: _externally_conditioned_data_quality_criterion

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eDATA_QUALITY_CRITERION: eDATA_QUALITY_CRITERION 	// [2]
    public let super_eDATA_QUALITY_MEASUREMENT_REQUIREMENT: eDATA_QUALITY_MEASUREMENT_REQUIREMENT 	// [3]
    public var super_eEXTERNALLY_CONDITIONED_DATA_QUALITY_CRITERION: eEXTERNALLY_CONDITIONED_DATA_QUALITY_CRITERION { return self } 	// [4]

    //MARK: SUBTYPES
    public var sub_eINAPPROPRIATE_USE_OF_LAYER: eINAPPROPRIATE_USE_OF_LAYER? {	// [5]
      return self.complexEntity.entityReference(eINAPPROPRIATE_USE_OF_LAYER.self)
    }

    public var sub_eNON_AGREED_UNIT_USAGE: eNON_AGREED_UNIT_USAGE? {	// [6]
      return self.complexEntity.entityReference(eNON_AGREED_UNIT_USAGE.self)
    }

    public var sub_eNON_AGREED_SCALE_USAGE: eNON_AGREED_SCALE_USAGE? {	// [7]
      return self.complexEntity.entityReference(eNON_AGREED_SCALE_USAGE.self)
    }

    public var sub_eWRONG_ELEMENT_NAME: eWRONG_ELEMENT_NAME? {	// [8]
      return self.complexEntity.entityReference(eWRONG_ELEMENT_NAME.self)
    }

    public var sub_eDISALLOWED_ASSEMBLY_RELATIONSHIP_USAGE: eDISALLOWED_ASSEMBLY_RELATIONSHIP_USAGE? {	// [9]
      return self.complexEntity.entityReference(eDISALLOWED_ASSEMBLY_RELATIONSHIP_USAGE.self)
    }

    public var sub_eEXCESSIVE_USE_OF_GROUPS: eEXCESSIVE_USE_OF_GROUPS? {	// [10]
      return self.complexEntity.entityReference(eEXCESSIVE_USE_OF_GROUPS.self)
    }

    public var sub_eNON_REFERENCED_COORDINATE_SYSTEM: eNON_REFERENCED_COORDINATE_SYSTEM? {	// [11]
      return self.complexEntity.entityReference(eNON_REFERENCED_COORDINATE_SYSTEM.self)
    }

    public var sub_eUNUSED_SHAPE_ELEMENT: eUNUSED_SHAPE_ELEMENT? {	// [12]
      return self.complexEntity.entityReference(eUNUSED_SHAPE_ELEMENT.self)
    }

    public var sub_eINCONSISTENT_ELEMENT_REFERENCE: eINCONSISTENT_ELEMENT_REFERENCE? {	// [13]
      return self.complexEntity.entityReference(eINCONSISTENT_ELEMENT_REFERENCE.self)
    }

    public var sub_eEXCESSIVE_USE_OF_LAYERS: eEXCESSIVE_USE_OF_LAYERS? {	// [14]
      return self.complexEntity.entityReference(eEXCESSIVE_USE_OF_LAYERS.self)
    }

    public var sub_eNON_AGREED_ACCURACY_PARAMETER_USAGE: eNON_AGREED_ACCURACY_PARAMETER_USAGE? {	// [15]
      return self.complexEntity.entityReference(eNON_AGREED_ACCURACY_PARAMETER_USAGE.self)
    }

    public var sub_eINAPPROPRIATE_ELEMENT_VISIBILITY: eINAPPROPRIATE_ELEMENT_VISIBILITY? {	// [16]
      return self.complexEntity.entityReference(eINAPPROPRIATE_ELEMENT_VISIBILITY.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eREPRESENTATION_ITEM`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( super_eREPRESENTATION_ITEM.partialEntity._name )
      }
      set(newValue) {
        let partial = super_eREPRESENTATION_ITEM.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_externally_conditioned_data_quality_criterion.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eDATA_QUALITY_CRITERION.self) else { return nil }
      self.super_eDATA_QUALITY_CRITERION = super2

      guard let super3 = complexEntity?.entityReference(eDATA_QUALITY_MEASUREMENT_REQUIREMENT.self) else { return nil }
      self.super_eDATA_QUALITY_MEASUREMENT_REQUIREMENT = super3

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
      result[prefix2 + " .WHERE_wr1"] = _externally_conditioned_data_quality_criterion.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _externally_conditioned_data_quality_criterion.WHERE_wr2(SELF: instance)
      result[prefix2 + " .WHERE_wr3"] = _externally_conditioned_data_quality_criterion.WHERE_wr3(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "EXTERNALLY_CONDITIONED_DATA_QUALITY_CRITERION", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eDATA_QUALITY_CRITERION.self)
      entityDef.add(supertype: eDATA_QUALITY_MEASUREMENT_REQUIREMENT.self)
      entityDef.add(supertype: eEXTERNALLY_CONDITIONED_DATA_QUALITY_CRITERION.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "NAME", keyPath: \eEXTERNALLY_CONDITIONED_DATA_QUALITY_CRITERION.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}