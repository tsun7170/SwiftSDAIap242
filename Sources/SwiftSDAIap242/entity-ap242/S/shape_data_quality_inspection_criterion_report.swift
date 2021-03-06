/* file: shape_data_quality_inspection_criterion_report.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY shape_data_quality_inspection_criterion_report
    SUBTYPE OF ( data_quality_inspection_criterion_report );
      representative_measured_value  : measured_value_select;
  END_ENTITY; -- shape_data_quality_inspection_criterion_report (line:28781 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(2)	data_quality_inspection_report
    ATTR:  inspection_result,	TYPE: data_quality_inspection_result -- EXPLICIT


  SUPER- ENTITY(3)	data_quality_inspection_criterion_report
    ATTR:  statistical_values,	TYPE: SET [1 : 2] OF data_quality_inspection_criterion_report_item -- EXPLICIT


  ENTITY(SELF)	shape_data_quality_inspection_criterion_report
    ATTR:  representative_measured_value,	TYPE: measured_value_select -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _shape_data_quality_inspection_criterion_report : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eSHAPE_DATA_QUALITY_INSPECTION_CRITERION_REPORT.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _representative_measured_value: sMEASURED_VALUE_SELECT // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._representative_measured_value.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._representative_measured_value.value.isValueEqualOptionally(to: rhs._representative_measured_value.value, visited: &comppairs)	{
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
      if let comp = self._representative_measured_value.value.isValueEqualOptionally(to: rhs._representative_measured_value.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(REPRESENTATIVE_MEASURED_VALUE: sMEASURED_VALUE_SELECT) {
      self._representative_measured_value = REPRESENTATIVE_MEASURED_VALUE
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: sMEASURED_VALUE_SELECT.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( REPRESENTATIVE_MEASURED_VALUE: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY shape_data_quality_inspection_criterion_report
    SUBTYPE OF ( data_quality_inspection_criterion_report );
      representative_measured_value  : measured_value_select;
  END_ENTITY; -- shape_data_quality_inspection_criterion_report (line:28781 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eSHAPE_DATA_QUALITY_INSPECTION_CRITERION_REPORT : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _shape_data_quality_inspection_criterion_report.self
    }
    public let partialEntity: _shape_data_quality_inspection_criterion_report

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eDATA_QUALITY_INSPECTION_REPORT: eDATA_QUALITY_INSPECTION_REPORT 	// [2]
    public let super_eDATA_QUALITY_INSPECTION_CRITERION_REPORT: eDATA_QUALITY_INSPECTION_CRITERION_REPORT 	// [3]
    public var super_eSHAPE_DATA_QUALITY_INSPECTION_CRITERION_REPORT: eSHAPE_DATA_QUALITY_INSPECTION_CRITERION_REPORT { return self } 	// [4]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eDATA_QUALITY_INSPECTION_CRITERION_REPORT`` )
    public var STATISTICAL_VALUES: SDAI.SET<eDATA_QUALITY_INSPECTION_CRITERION_REPORT_ITEM>/*[1:2]*/  {
      get {
        return SDAI.UNWRAP( super_eDATA_QUALITY_INSPECTION_CRITERION_REPORT.partialEntity._statistical_values )
      }
      set(newValue) {
        let partial = super_eDATA_QUALITY_INSPECTION_CRITERION_REPORT.partialEntity
        partial._statistical_values = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eDATA_QUALITY_INSPECTION_REPORT`` )
    public var INSPECTION_RESULT: eDATA_QUALITY_INSPECTION_RESULT {
      get {
        return SDAI.UNWRAP( super_eDATA_QUALITY_INSPECTION_REPORT.partialEntity._inspection_result )
      }
      set(newValue) {
        let partial = super_eDATA_QUALITY_INSPECTION_REPORT.partialEntity
        partial._inspection_result = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eSHAPE_DATA_QUALITY_INSPECTION_CRITERION_REPORT`` )
    public var REPRESENTATIVE_MEASURED_VALUE: sMEASURED_VALUE_SELECT {
      get {
        return SDAI.UNWRAP( self.partialEntity._representative_measured_value )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._representative_measured_value = SDAI.UNWRAP(newValue)
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
      guard let partial = complexEntity?.partialEntityInstance(_shape_data_quality_inspection_criterion_report.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eDATA_QUALITY_INSPECTION_REPORT.self) else { return nil }
      self.super_eDATA_QUALITY_INSPECTION_REPORT = super2

      guard let super3 = complexEntity?.entityReference(eDATA_QUALITY_INSPECTION_CRITERION_REPORT.self) else { return nil }
      self.super_eDATA_QUALITY_INSPECTION_CRITERION_REPORT = super3

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "SHAPE_DATA_QUALITY_INSPECTION_CRITERION_REPORT", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eDATA_QUALITY_INSPECTION_REPORT.self)
      entityDef.add(supertype: eDATA_QUALITY_INSPECTION_CRITERION_REPORT.self)
      entityDef.add(supertype: eSHAPE_DATA_QUALITY_INSPECTION_CRITERION_REPORT.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "STATISTICAL_VALUES", keyPath: \eSHAPE_DATA_QUALITY_INSPECTION_CRITERION_REPORT.STATISTICAL_VALUES, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "INSPECTION_RESULT", keyPath: \eSHAPE_DATA_QUALITY_INSPECTION_CRITERION_REPORT.INSPECTION_RESULT, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "REPRESENTATIVE_MEASURED_VALUE", keyPath: \eSHAPE_DATA_QUALITY_INSPECTION_CRITERION_REPORT.REPRESENTATIVE_MEASURED_VALUE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eSHAPE_DATA_QUALITY_INSPECTION_CRITERION_REPORT.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
