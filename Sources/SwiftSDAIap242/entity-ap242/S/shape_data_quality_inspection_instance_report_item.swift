/* file: shape_data_quality_inspection_instance_report_item.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY shape_data_quality_inspection_instance_report_item
    SUBTYPE OF ( data_quality_inspection_instance_report_item );
      SELF\data_quality_inspection_instance_report_item.inspected_elements : SET [1 : ?] OF
                                          inspected_shape_element_select;
      measured_value                  : measured_value_select;
  END_ENTITY; -- shape_data_quality_inspection_instance_report_item (line:28791 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(2)	data_quality_inspection_instance_report_item
    ATTR:  inspected_elements,	TYPE: SET [1 : ?] OF inspected_element_select -- EXPLICIT
      -- possibly overriden by
      *** ENTITY: shape_data_quality_inspection_instance_report_item,	TYPE: SET [1 : ?] OF inspected_shape_element_select
          ENTITY: externally_conditioned_data_quality_inspection_instance_report_item,	TYPE: SET [1 : ?] OF inspected_ecdq_element_select


  ENTITY(SELF)	shape_data_quality_inspection_instance_report_item
    REDCR: inspected_elements,	TYPE: SET [1 : ?] OF inspected_shape_element_select -- EXPLICIT
      -- OVERRIDING ENTITY: data_quality_inspection_instance_report_item

    ATTR:  measured_value,	TYPE: measured_value_select -- EXPLICIT


  SUB- ENTITY(4)	instance_report_item_with_extreme_instances
    ATTR:  extreme_instances,	TYPE: LIST [1 : ?] OF extreme_instance -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _shape_data_quality_inspection_instance_report_item : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eSHAPE_DATA_QUALITY_INSPECTION_INSTANCE_REPORT_ITEM.self
    }

    //ATTRIBUTES
    /* override var _inspected_elements: SDAI.SET<sINSPECTED_SHAPE_ELEMENT_SELECT>[1:nil] 	//EXPLICIT REDEFINITION(eDATA_QUALITY_INSPECTION_INSTANCE_REPORT_ITEM) */

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _measured_value: sMEASURED_VALUE_SELECT // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._measured_value.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._measured_value.value.isValueEqualOptionally(to: rhs._measured_value.value, visited: &comppairs)	{
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
      if let comp = self._measured_value.value.isValueEqualOptionally(to: rhs._measured_value.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(MEASURED_VALUE: sMEASURED_VALUE_SELECT) {
      self._measured_value = MEASURED_VALUE
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: sMEASURED_VALUE_SELECT.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( MEASURED_VALUE: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY shape_data_quality_inspection_instance_report_item
    SUBTYPE OF ( data_quality_inspection_instance_report_item );
      SELF\data_quality_inspection_instance_report_item.inspected_elements : SET [1 : ?] OF
                                          inspected_shape_element_select;
      measured_value                  : measured_value_select;
  END_ENTITY; -- shape_data_quality_inspection_instance_report_item (line:28791 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eSHAPE_DATA_QUALITY_INSPECTION_INSTANCE_REPORT_ITEM : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _shape_data_quality_inspection_instance_report_item.self
    }
    public let partialEntity: _shape_data_quality_inspection_instance_report_item

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eDATA_QUALITY_INSPECTION_INSTANCE_REPORT_ITEM: eDATA_QUALITY_INSPECTION_INSTANCE_REPORT_ITEM 	// [2]
    public var super_eSHAPE_DATA_QUALITY_INSPECTION_INSTANCE_REPORT_ITEM: eSHAPE_DATA_QUALITY_INSPECTION_INSTANCE_REPORT_ITEM { return self } 	// [3]

    //MARK: SUBTYPES
    public var sub_eINSTANCE_REPORT_ITEM_WITH_EXTREME_INSTANCES: eINSTANCE_REPORT_ITEM_WITH_EXTREME_INSTANCES? {	// [4]
      return self.complexEntity.entityReference(eINSTANCE_REPORT_ITEM_WITH_EXTREME_INSTANCES.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT REDEF__ attribute
    /// - origin: SELF( ``eSHAPE_DATA_QUALITY_INSPECTION_INSTANCE_REPORT_ITEM`` )
    public var INSPECTED_ELEMENTS: SDAI.SET<sINSPECTED_SHAPE_ELEMENT_SELECT>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( SDAI.SET<sINSPECTED_SHAPE_ELEMENT_SELECT>( super_eDATA_QUALITY_INSPECTION_INSTANCE_REPORT_ITEM
          .partialEntity._inspected_elements ) )
      }
      set(newValue) {
        let partial = super_eDATA_QUALITY_INSPECTION_INSTANCE_REPORT_ITEM.partialEntity
        partial._inspected_elements = SDAI.UNWRAP(
          SDAI.SET<sINSPECTED_ELEMENT_SELECT>(newValue))
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eSHAPE_DATA_QUALITY_INSPECTION_INSTANCE_REPORT_ITEM`` )
    public var MEASURED_VALUE: sMEASURED_VALUE_SELECT {
      get {
        return SDAI.UNWRAP( self.partialEntity._measured_value )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._measured_value = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eINSTANCE_REPORT_ITEM_WITH_EXTREME_INSTANCES`` )
    public var EXTREME_INSTANCES: (SDAI.LIST<eEXTREME_INSTANCE>/*[1:nil]*/ )?  {
      get {
        return sub_eINSTANCE_REPORT_ITEM_WITH_EXTREME_INSTANCES?.partialEntity._extreme_instances
      }
      set(newValue) {
        guard let partial = sub_eINSTANCE_REPORT_ITEM_WITH_EXTREME_INSTANCES?.super_eINSTANCE_REPORT_ITEM_WITH_EXTREME_INSTANCES
          .partialEntity else { return }
        partial._extreme_instances = SDAI.UNWRAP(newValue)
      }
    }

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
      guard let partial = complexEntity?.partialEntityInstance(_shape_data_quality_inspection_instance_report_item.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eDATA_QUALITY_INSPECTION_INSTANCE_REPORT_ITEM.self) else { return nil }
      self.super_eDATA_QUALITY_INSPECTION_INSTANCE_REPORT_ITEM = super2

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "SHAPE_DATA_QUALITY_INSPECTION_INSTANCE_REPORT_ITEM", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eDATA_QUALITY_INSPECTION_INSTANCE_REPORT_ITEM.self)
      entityDef.add(supertype: eSHAPE_DATA_QUALITY_INSPECTION_INSTANCE_REPORT_ITEM.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "INSPECTED_ELEMENTS", keyPath: \eSHAPE_DATA_QUALITY_INSPECTION_INSTANCE_REPORT_ITEM.INSPECTED_ELEMENTS, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "MEASURED_VALUE", keyPath: \eSHAPE_DATA_QUALITY_INSPECTION_INSTANCE_REPORT_ITEM.MEASURED_VALUE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "EXTREME_INSTANCES", keyPath: \eSHAPE_DATA_QUALITY_INSPECTION_INSTANCE_REPORT_ITEM.EXTREME_INSTANCES, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eSHAPE_DATA_QUALITY_INSPECTION_INSTANCE_REPORT_ITEM.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
