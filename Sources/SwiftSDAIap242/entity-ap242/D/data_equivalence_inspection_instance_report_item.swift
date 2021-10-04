/* file: data_equivalence_inspection_instance_report_item.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY data_equivalence_inspection_instance_report_item
    SUBTYPE OF ( representation_item );
      inspected_element  : data_equivalence_inspected_element_pair;
    WHERE
      wr1: ( SIZEOF( QUERY ( q <* bag_to_set( USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'REPRESENTATION.ITEMS'  ) ) | ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'DATA_EQUIVALENCE_CRITERIA_REPRESENTATION'  IN TYPEOF( q ) ) ) ) = 0 );
  END_ENTITY; -- data_equivalence_inspection_instance_report_item (line:11375 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  ENTITY(SELF)	data_equivalence_inspection_instance_report_item
    ATTR:  inspected_element,	TYPE: data_equivalence_inspected_element_pair -- EXPLICIT


  SUB- ENTITY(3)	equivalence_instance_report_item_with_notable_instances
    ATTR:  notable_instances,	TYPE: LIST [1 : ?] OF equivalence_notable_instance -- EXPLICIT


  SUB- ENTITY(4)	a3m_equivalence_inspection_instance_report_item
    ATTR:  measured_value_for_inspected_element,	TYPE: equivalence_measured_value_select -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _data_equivalence_inspection_instance_report_item : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eDATA_EQUIVALENCE_INSPECTION_INSTANCE_REPORT_ITEM.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _inspected_element: eDATA_EQUIVALENCE_INSPECTED_ELEMENT_PAIR // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._inspected_element.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._inspected_element.value.isValueEqualOptionally(to: rhs._inspected_element.value, visited: &comppairs)	{
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
      if let comp = self._inspected_element.value.isValueEqualOptionally(to: rhs._inspected_element.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eDATA_EQUIVALENCE_INSPECTION_INSTANCE_REPORT_ITEM?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.USEDIN(T: SELF, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
        .eREPRESENTATION.ITEMS)
      let _TEMP2 = BAG_TO_SET(_TEMP1)
      let _TEMP3 = _TEMP2?.QUERY{ Q in 

          let _TEMP1 = SDAI.TYPEOF(Q, IS: eDATA_EQUIVALENCE_CRITERIA_REPRESENTATION.self)
          return _TEMP1 }
      let _TEMP4 = SDAI.SIZEOF(_TEMP3)
      let _TEMP5 = _TEMP4 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP5
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(INSPECTED_ELEMENT: eDATA_EQUIVALENCE_INSPECTED_ELEMENT_PAIR) {
      self._inspected_element = INSPECTED_ELEMENT
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: 
        eDATA_EQUIVALENCE_INSPECTED_ELEMENT_PAIR.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( INSPECTED_ELEMENT: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY data_equivalence_inspection_instance_report_item
    SUBTYPE OF ( representation_item );
      inspected_element  : data_equivalence_inspected_element_pair;
    WHERE
      wr1: ( SIZEOF( QUERY ( q <* bag_to_set( USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'REPRESENTATION.ITEMS'  ) ) | ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'DATA_EQUIVALENCE_CRITERIA_REPRESENTATION'  IN TYPEOF( q ) ) ) ) = 0 );
  END_ENTITY; -- data_equivalence_inspection_instance_report_item (line:11375 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eDATA_EQUIVALENCE_INSPECTION_INSTANCE_REPORT_ITEM : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _data_equivalence_inspection_instance_report_item.self
    }
    public let partialEntity: _data_equivalence_inspection_instance_report_item

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public var super_eDATA_EQUIVALENCE_INSPECTION_INSTANCE_REPORT_ITEM: eDATA_EQUIVALENCE_INSPECTION_INSTANCE_REPORT_ITEM { return self } 	// [2]

    //MARK: SUBTYPES
    public var sub_eEQUIVALENCE_INSTANCE_REPORT_ITEM_WITH_NOTABLE_INSTANCES: eEQUIVALENCE_INSTANCE_REPORT_ITEM_WITH_NOTABLE_INSTANCES? {	// [3]
      return self.complexEntity.entityReference(eEQUIVALENCE_INSTANCE_REPORT_ITEM_WITH_NOTABLE_INSTANCES.self)
    }

    public var sub_eA3M_EQUIVALENCE_INSPECTION_INSTANCE_REPORT_ITEM: eA3M_EQUIVALENCE_INSPECTION_INSTANCE_REPORT_ITEM? {	// [4]
      return self.complexEntity.entityReference(eA3M_EQUIVALENCE_INSPECTION_INSTANCE_REPORT_ITEM.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eA3M_EQUIVALENCE_INSPECTION_INSTANCE_REPORT_ITEM`` )
    public var MEASURED_VALUE_FOR_INSPECTED_ELEMENT: sEQUIVALENCE_MEASURED_VALUE_SELECT?  {
      get {
        return sub_eA3M_EQUIVALENCE_INSPECTION_INSTANCE_REPORT_ITEM?.partialEntity
          ._measured_value_for_inspected_element
      }
      set(newValue) {
        guard let partial = sub_eA3M_EQUIVALENCE_INSPECTION_INSTANCE_REPORT_ITEM?.super_eA3M_EQUIVALENCE_INSPECTION_INSTANCE_REPORT_ITEM
          .partialEntity else { return }
        partial._measured_value_for_inspected_element = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eEQUIVALENCE_INSTANCE_REPORT_ITEM_WITH_NOTABLE_INSTANCES`` )
    public var NOTABLE_INSTANCES: (SDAI.LIST<eEQUIVALENCE_NOTABLE_INSTANCE>/*[1:nil]*/ )?  {
      get {
        return sub_eEQUIVALENCE_INSTANCE_REPORT_ITEM_WITH_NOTABLE_INSTANCES?.partialEntity._notable_instances
      }
      set(newValue) {
        guard let partial = sub_eEQUIVALENCE_INSTANCE_REPORT_ITEM_WITH_NOTABLE_INSTANCES?.super_eEQUIVALENCE_INSTANCE_REPORT_ITEM_WITH_NOTABLE_INSTANCES
          .partialEntity else { return }
        partial._notable_instances = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eDATA_EQUIVALENCE_INSPECTION_INSTANCE_REPORT_ITEM`` )
    public var INSPECTED_ELEMENT: eDATA_EQUIVALENCE_INSPECTED_ELEMENT_PAIR {
      get {
        return SDAI.UNWRAP( self.partialEntity._inspected_element )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._inspected_element = SDAI.UNWRAP(newValue)
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
      guard let partial = complexEntity?.partialEntityInstance(_data_equivalence_inspection_instance_report_item.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

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
      result[prefix2 + " .WHERE_wr1"] = _data_equivalence_inspection_instance_report_item.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "DATA_EQUIVALENCE_INSPECTION_INSTANCE_REPORT_ITEM", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eDATA_EQUIVALENCE_INSPECTION_INSTANCE_REPORT_ITEM.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "MEASURED_VALUE_FOR_INSPECTED_ELEMENT", keyPath: \eDATA_EQUIVALENCE_INSPECTION_INSTANCE_REPORT_ITEM.MEASURED_VALUE_FOR_INSPECTED_ELEMENT, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NOTABLE_INSTANCES", keyPath: \eDATA_EQUIVALENCE_INSPECTION_INSTANCE_REPORT_ITEM.NOTABLE_INSTANCES, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "INSPECTED_ELEMENT", keyPath: \eDATA_EQUIVALENCE_INSPECTION_INSTANCE_REPORT_ITEM.INSPECTED_ELEMENT, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eDATA_EQUIVALENCE_INSPECTION_INSTANCE_REPORT_ITEM.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
