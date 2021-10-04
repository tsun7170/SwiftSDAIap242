/* file: data_equivalence_inspection_criterion_report_item.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY data_equivalence_inspection_criterion_report_item
    ABSTRACT SUPERTYPE OF ( 
        ONEOF ( 
            criterion_report_item_with_number_of_instances, 
            criterion_report_item_with_value ) 
        ANDOR
        ONEOF ( 
            a3m_equivalence_criterion_report_item_with_measured_value, 
            criterion_report_item_with_number_of_instances, 
            criterion_report_item_with_value ) )
    SUBTYPE OF ( representation_item );
    INVERSE
      criterion_report : data_equivalence_inspection_criterion_report FOR statistical_values -- defined in ENTITY: data_equivalence_inspection_criterion_report;
    WHERE
      wr1: ( SIZEOF( QUERY ( q <* bag_to_set( USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'REPRESENTATION.ITEMS'  ) ) | ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'DATA_EQUIVALENCE_CRITERIA_REPRESENTATION'  IN TYPEOF( q ) ) ) ) = 0 );
  END_ENTITY; -- data_equivalence_inspection_criterion_report_item (line:11354 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  ENTITY(SELF)	data_equivalence_inspection_criterion_report_item
    ATTR:  criterion_report,	TYPE: data_equivalence_inspection_criterion_report -- INVERSE
      FOR statistical_values;


  SUB- ENTITY(3)	criterion_report_item_with_number_of_instances
    ATTR:  statistical_value,	TYPE: count_measure -- EXPLICIT

    ATTR:  value_type,	TYPE: summary_report_style_type -- EXPLICIT	(AMBIGUOUS/MASKED)


  SUB- ENTITY(4)	criterion_report_item_with_value
    ATTR:  report_value,	TYPE: measure_with_unit -- EXPLICIT

    ATTR:  value_type,	TYPE: label -- EXPLICIT	(AMBIGUOUS/MASKED)


  SUB- ENTITY(5)	a3m_equivalence_criterion_report_item_with_measured_value
    ATTR:  representative_measured_value,	TYPE: equivalence_measured_value_select -- EXPLICIT

    ATTR:  value_type,	TYPE: representative_value_type -- EXPLICIT	(AMBIGUOUS/MASKED)


*/


//MARK: - Partial Entity
  public final class _data_equivalence_inspection_criterion_report_item : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eDATA_EQUIVALENCE_INSPECTION_CRITERION_REPORT_ITEM.self
    }

    //ATTRIBUTES
    /// INVERSE SIMPLE ATTRIBUTE
    /// observing _data_equivalence_inspection_criterion_report ._statistical_values
    internal private(set) weak var _criterion_report: eDATA_EQUIVALENCE_INSPECTION_CRITERION_REPORT?
    /// INVERSE SIMPLE ATTR SUPPORT(ADDER)
    internal func _criterion_report__observeAddedReference(in complex: SDAI.ComplexEntity) {
      guard let newSource = complex.entityReference(eDATA_EQUIVALENCE_INSPECTION_CRITERION_REPORT.self) else { return }
      self._criterion_report = newSource
    }
    /// INVERSE SIMPLE ATTR SUPPORT(REMOVER)
    internal func _criterion_report__observeRemovedReference(in complex: SDAI.ComplexEntity) {
      guard let _ = complex.entityReference(eDATA_EQUIVALENCE_INSPECTION_CRITERION_REPORT.self) else { return }
      self._criterion_report = nil
    }
    /// INVERSE SIMPLE ATTR SUPPORT(LEAVING REFERENCE OWNER)
    internal func _criterion_report__observe(leavingReferencerOwner complex: SDAI.ComplexEntity) {
      guard let _ = complex.entityReference(eDATA_EQUIVALENCE_INSPECTION_CRITERION_REPORT.self) else { return }
      self._criterion_report = nil
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
    public static func WHERE_wr1(SELF: eDATA_EQUIVALENCE_INSPECTION_CRITERION_REPORT_ITEM?) -> SDAI.LOGICAL {
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
  ENTITY data_equivalence_inspection_criterion_report_item
    ABSTRACT SUPERTYPE OF ( 
        ONEOF ( 
            criterion_report_item_with_number_of_instances, 
            criterion_report_item_with_value ) 
        ANDOR
        ONEOF ( 
            a3m_equivalence_criterion_report_item_with_measured_value, 
            criterion_report_item_with_number_of_instances, 
            criterion_report_item_with_value ) )
    SUBTYPE OF ( representation_item );
    INVERSE
      criterion_report : data_equivalence_inspection_criterion_report FOR statistical_values -- defined in ENTITY: data_equivalence_inspection_criterion_report;
    WHERE
      wr1: ( SIZEOF( QUERY ( q <* bag_to_set( USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'REPRESENTATION.ITEMS'  ) ) | ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'DATA_EQUIVALENCE_CRITERIA_REPRESENTATION'  IN TYPEOF( q ) ) ) ) = 0 );
  END_ENTITY; -- data_equivalence_inspection_criterion_report_item (line:11354 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eDATA_EQUIVALENCE_INSPECTION_CRITERION_REPORT_ITEM : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _data_equivalence_inspection_criterion_report_item.self
    }
    public let partialEntity: _data_equivalence_inspection_criterion_report_item

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public var super_eDATA_EQUIVALENCE_INSPECTION_CRITERION_REPORT_ITEM: eDATA_EQUIVALENCE_INSPECTION_CRITERION_REPORT_ITEM { return self } 	// [2]

    //MARK: SUBTYPES
    public var sub_eCRITERION_REPORT_ITEM_WITH_NUMBER_OF_INSTANCES: eCRITERION_REPORT_ITEM_WITH_NUMBER_OF_INSTANCES? {	// [3]
      return self.complexEntity.entityReference(eCRITERION_REPORT_ITEM_WITH_NUMBER_OF_INSTANCES.self)
    }

    public var sub_eCRITERION_REPORT_ITEM_WITH_VALUE: eCRITERION_REPORT_ITEM_WITH_VALUE? {	// [4]
      return self.complexEntity.entityReference(eCRITERION_REPORT_ITEM_WITH_VALUE.self)
    }

    public var sub_eA3M_EQUIVALENCE_CRITERION_REPORT_ITEM_WITH_MEASURED_VALUE: eA3M_EQUIVALENCE_CRITERION_REPORT_ITEM_WITH_MEASURED_VALUE? {	// [5]
      return self.complexEntity.entityReference(eA3M_EQUIVALENCE_CRITERION_REPORT_ITEM_WITH_MEASURED_VALUE.self)
    }


    //MARK: ATTRIBUTES
    // VALUE_TYPE: (3 AMBIGUOUS REFs)

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eA3M_EQUIVALENCE_CRITERION_REPORT_ITEM_WITH_MEASURED_VALUE`` )
    public var REPRESENTATIVE_MEASURED_VALUE: sEQUIVALENCE_MEASURED_VALUE_SELECT?  {
      get {
        return sub_eA3M_EQUIVALENCE_CRITERION_REPORT_ITEM_WITH_MEASURED_VALUE?.partialEntity
          ._representative_measured_value
      }
      set(newValue) {
        guard let partial = sub_eA3M_EQUIVALENCE_CRITERION_REPORT_ITEM_WITH_MEASURED_VALUE?.super_eA3M_EQUIVALENCE_CRITERION_REPORT_ITEM_WITH_MEASURED_VALUE
          .partialEntity else { return }
        partial._representative_measured_value = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eCRITERION_REPORT_ITEM_WITH_VALUE`` )
    public var REPORT_VALUE: eMEASURE_WITH_UNIT?  {
      get {
        return sub_eCRITERION_REPORT_ITEM_WITH_VALUE?.partialEntity._report_value
      }
      set(newValue) {
        guard let partial = sub_eCRITERION_REPORT_ITEM_WITH_VALUE?.super_eCRITERION_REPORT_ITEM_WITH_VALUE
          .partialEntity else { return }
        partial._report_value = SDAI.UNWRAP(newValue)
      }
    }

    /// __INVERSE__ attribute
    /// observing eDATA_EQUIVALENCE_INSPECTION_CRITERION_REPORT .STATISTICAL_VALUES
    /// - origin: SELF( ``eDATA_EQUIVALENCE_INSPECTION_CRITERION_REPORT_ITEM`` )
    public var CRITERION_REPORT: eDATA_EQUIVALENCE_INSPECTION_CRITERION_REPORT?  {
      get {
        return self.partialEntity._criterion_report
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eCRITERION_REPORT_ITEM_WITH_NUMBER_OF_INSTANCES`` )
    public var STATISTICAL_VALUE: tCOUNT_MEASURE?  {
      get {
        return sub_eCRITERION_REPORT_ITEM_WITH_NUMBER_OF_INSTANCES?.partialEntity._statistical_value
      }
      set(newValue) {
        guard let partial = sub_eCRITERION_REPORT_ITEM_WITH_NUMBER_OF_INSTANCES?.super_eCRITERION_REPORT_ITEM_WITH_NUMBER_OF_INSTANCES
          .partialEntity else { return }
        partial._statistical_value = SDAI.UNWRAP(newValue)
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
      guard let partial = complexEntity?.partialEntityInstance(_data_equivalence_inspection_criterion_report_item.self) else { return nil }
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
      result[prefix2 + " .WHERE_wr1"] = _data_equivalence_inspection_criterion_report_item.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "DATA_EQUIVALENCE_INSPECTION_CRITERION_REPORT_ITEM", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eDATA_EQUIVALENCE_INSPECTION_CRITERION_REPORT_ITEM.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "REPRESENTATIVE_MEASURED_VALUE", keyPath: \eDATA_EQUIVALENCE_INSPECTION_CRITERION_REPORT_ITEM.REPRESENTATIVE_MEASURED_VALUE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "REPORT_VALUE", keyPath: \eDATA_EQUIVALENCE_INSPECTION_CRITERION_REPORT_ITEM.REPORT_VALUE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "CRITERION_REPORT", keyPath: \eDATA_EQUIVALENCE_INSPECTION_CRITERION_REPORT_ITEM.CRITERION_REPORT, 
        kind: .inverse, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "STATISTICAL_VALUE", keyPath: \eDATA_EQUIVALENCE_INSPECTION_CRITERION_REPORT_ITEM.STATISTICAL_VALUE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eDATA_EQUIVALENCE_INSPECTION_CRITERION_REPORT_ITEM.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
