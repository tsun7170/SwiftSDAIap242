/* file: data_quality_inspection_criterion_report.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY data_quality_inspection_criterion_report
    SUBTYPE OF ( data_quality_inspection_report );
      statistical_values  : SET [1 : 2] OF data_quality_inspection_criterion_report_item;
    WHERE
      wr1: ( SIZEOF( QUERY ( i1 <* bag_to_set( USEDIN( SELF\data_quality_inspection_report.inspection_result.
               criterion_inspected, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'DATA_QUALITY_REPORT_REQUEST.CRITERION_OF_REPORT_REQUEST'  ) ) | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SUMMARY_REPORT_REQUEST'  IN TYPEOF( i1 ) ) ) ) 
               > 0 );
      wr2: ( ( SIZEOF( SELF.statistical_values ) = 1 ) OR ( SELF.statistical_values[1].value_type <> SELF.
               statistical_values[2].value_type ) );
  END_ENTITY; -- data_quality_inspection_criterion_report (line:11515 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(2)	data_quality_inspection_report
    ATTR:  inspection_result,	TYPE: data_quality_inspection_result -- EXPLICIT


  ENTITY(SELF)	data_quality_inspection_criterion_report
    ATTR:  statistical_values,	TYPE: SET [1 : 2] OF data_quality_inspection_criterion_report_item -- EXPLICIT


  SUB- ENTITY(4)	shape_data_quality_inspection_criterion_report
    ATTR:  representative_measured_value,	TYPE: measured_value_select -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _data_quality_inspection_criterion_report : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eDATA_QUALITY_INSPECTION_CRITERION_REPORT.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _statistical_values: SDAI.SET<eDATA_QUALITY_INSPECTION_CRITERION_REPORT_ITEM>/*[
      1:2]*/  // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._statistical_values.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._statistical_values.value.isValueEqualOptionally(to: rhs._statistical_values.value, visited: &comppairs)	{
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
      if let comp = self._statistical_values.value.isValueEqualOptionally(to: rhs._statistical_values.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eDATA_QUALITY_INSPECTION_CRITERION_REPORT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.GROUP_REF(eDATA_QUALITY_INSPECTION_REPORT.self)
      let _TEMP2 = _TEMP1?.INSPECTION_RESULT
      let _TEMP3 = _TEMP2?.CRITERION_INSPECTED
      let _TEMP4 = SDAI.USEDIN(T: _TEMP3, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
        .eDATA_QUALITY_REPORT_REQUEST.CRITERION_OF_REPORT_REQUEST)
      let _TEMP5 = BAG_TO_SET(_TEMP4)
      let _TEMP6 = _TEMP5?.QUERY{ I1 in 

          let _TEMP1 = SDAI.TYPEOF(I1, IS: eSUMMARY_REPORT_REQUEST.self)
          return _TEMP1 }
      let _TEMP7 = SDAI.SIZEOF(_TEMP6)
      let _TEMP8 = _TEMP7 > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP8
    }
    public static func WHERE_wr2(SELF: eDATA_QUALITY_INSPECTION_CRITERION_REPORT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.STATISTICAL_VALUES
      let _TEMP2 = SDAI.SIZEOF(_TEMP1)
      let _TEMP3 = _TEMP2 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      let _TEMP4 = SELF.STATISTICAL_VALUES
      let _TEMP5 = _TEMP4[1]
      let _TEMP6 = _TEMP5?.VALUE_TYPE
      let _TEMP7 = SELF.STATISTICAL_VALUES
      let _TEMP8 = _TEMP7[2]
      let _TEMP9 = _TEMP8?.VALUE_TYPE
      let _TEMP10 = _TEMP6 .!=. _TEMP9
      let _TEMP11 = _TEMP3 || _TEMP10
      return _TEMP11
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(STATISTICAL_VALUES: SDAI.SET<eDATA_QUALITY_INSPECTION_CRITERION_REPORT_ITEM>/*[1:2]*/ ) {
      self._statistical_values = STATISTICAL_VALUES
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: SDAI.SET<
        eDATA_QUALITY_INSPECTION_CRITERION_REPORT_ITEM>.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( STATISTICAL_VALUES: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY data_quality_inspection_criterion_report
    SUBTYPE OF ( data_quality_inspection_report );
      statistical_values  : SET [1 : 2] OF data_quality_inspection_criterion_report_item;
    WHERE
      wr1: ( SIZEOF( QUERY ( i1 <* bag_to_set( USEDIN( SELF\data_quality_inspection_report.inspection_result.
               criterion_inspected, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'DATA_QUALITY_REPORT_REQUEST.CRITERION_OF_REPORT_REQUEST'  ) ) | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SUMMARY_REPORT_REQUEST'  IN TYPEOF( i1 ) ) ) ) 
               > 0 );
      wr2: ( ( SIZEOF( SELF.statistical_values ) = 1 ) OR ( SELF.statistical_values[1].value_type <> SELF.
               statistical_values[2].value_type ) );
  END_ENTITY; -- data_quality_inspection_criterion_report (line:11515 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eDATA_QUALITY_INSPECTION_CRITERION_REPORT : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _data_quality_inspection_criterion_report.self
    }
    public let partialEntity: _data_quality_inspection_criterion_report

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eDATA_QUALITY_INSPECTION_REPORT: eDATA_QUALITY_INSPECTION_REPORT 	// [2]
    public var super_eDATA_QUALITY_INSPECTION_CRITERION_REPORT: eDATA_QUALITY_INSPECTION_CRITERION_REPORT { return self } 	// [3]

    //MARK: SUBTYPES
    public var sub_eSHAPE_DATA_QUALITY_INSPECTION_CRITERION_REPORT: eSHAPE_DATA_QUALITY_INSPECTION_CRITERION_REPORT? {	// [4]
      return self.complexEntity.entityReference(eSHAPE_DATA_QUALITY_INSPECTION_CRITERION_REPORT.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eDATA_QUALITY_INSPECTION_CRITERION_REPORT`` )
    public var STATISTICAL_VALUES: SDAI.SET<eDATA_QUALITY_INSPECTION_CRITERION_REPORT_ITEM>/*[1:2]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._statistical_values )
      }
      set(newValue) {
        let partial = self.partialEntity
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
    /// - origin: SUB( ``eSHAPE_DATA_QUALITY_INSPECTION_CRITERION_REPORT`` )
    public var REPRESENTATIVE_MEASURED_VALUE: sMEASURED_VALUE_SELECT?  {
      get {
        return sub_eSHAPE_DATA_QUALITY_INSPECTION_CRITERION_REPORT?.partialEntity
          ._representative_measured_value
      }
      set(newValue) {
        guard let partial = sub_eSHAPE_DATA_QUALITY_INSPECTION_CRITERION_REPORT?.super_eSHAPE_DATA_QUALITY_INSPECTION_CRITERION_REPORT
          .partialEntity else { return }
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
      guard let partial = complexEntity?.partialEntityInstance(_data_quality_inspection_criterion_report.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eDATA_QUALITY_INSPECTION_REPORT.self) else { return nil }
      self.super_eDATA_QUALITY_INSPECTION_REPORT = super2

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
      result[prefix2 + " .WHERE_wr1"] = _data_quality_inspection_criterion_report.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _data_quality_inspection_criterion_report.WHERE_wr2(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "DATA_QUALITY_INSPECTION_CRITERION_REPORT", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eDATA_QUALITY_INSPECTION_REPORT.self)
      entityDef.add(supertype: eDATA_QUALITY_INSPECTION_CRITERION_REPORT.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "STATISTICAL_VALUES", keyPath: \eDATA_QUALITY_INSPECTION_CRITERION_REPORT.STATISTICAL_VALUES, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "INSPECTION_RESULT", keyPath: \eDATA_QUALITY_INSPECTION_CRITERION_REPORT.INSPECTION_RESULT, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "REPRESENTATIVE_MEASURED_VALUE", keyPath: \eDATA_QUALITY_INSPECTION_CRITERION_REPORT.REPRESENTATIVE_MEASURED_VALUE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eDATA_QUALITY_INSPECTION_CRITERION_REPORT.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
