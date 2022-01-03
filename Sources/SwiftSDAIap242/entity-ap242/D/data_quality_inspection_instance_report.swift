/* file: data_quality_inspection_instance_report.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY data_quality_inspection_instance_report
    SUBTYPE OF ( data_quality_inspection_report );
      inspected_instances  : LIST [1 : ?] OF data_quality_inspection_instance_report_item;
    WHERE
      wr1: ( SIZEOF( QUERY ( i1 <* bag_to_set( USEDIN( SELF\data_quality_inspection_report.inspection_result.
               criterion_inspected, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'DATA_QUALITY_REPORT_REQUEST.CRITERION_OF_REPORT_REQUEST'  ) ) | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DETAILED_REPORT_REQUEST'  IN TYPEOF( i1 ) ) ) ) 
               > 0 );
  END_ENTITY; -- data_quality_inspection_instance_report (line:11541 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(2)	data_quality_inspection_report
    ATTR:  inspection_result,	TYPE: data_quality_inspection_result -- EXPLICIT


  ENTITY(SELF)	data_quality_inspection_instance_report
    ATTR:  inspected_instances,	TYPE: LIST [1 : ?] OF data_quality_inspection_instance_report_item -- EXPLICIT
      -- possibly overriden by
          ENTITY: shape_data_quality_inspection_instance_report,	TYPE: LIST [1 : ?] OF shape_data_quality_inspection_instance_report_item


  SUB- ENTITY(4)	shape_data_quality_inspection_instance_report
    REDCR: inspected_instances,	TYPE: LIST [1 : ?] OF shape_data_quality_inspection_instance_report_item -- EXPLICIT
      -- OVERRIDING ENTITY: data_quality_inspection_instance_report


*/


//MARK: - Partial Entity
  public final class _data_quality_inspection_instance_report : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eDATA_QUALITY_INSPECTION_INSTANCE_REPORT.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _inspected_instances: SDAI.LIST<eDATA_QUALITY_INSPECTION_INSTANCE_REPORT_ITEM>
      /*[1:nil]*/  // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._inspected_instances.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._inspected_instances.value.isValueEqualOptionally(to: rhs._inspected_instances.value, visited: &comppairs)	{
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
      if let comp = self._inspected_instances.value.isValueEqualOptionally(to: rhs._inspected_instances.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eDATA_QUALITY_INSPECTION_INSTANCE_REPORT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.GROUP_REF(eDATA_QUALITY_INSPECTION_REPORT.self)
      let _TEMP2 = _TEMP1?.INSPECTION_RESULT
      let _TEMP3 = _TEMP2?.CRITERION_INSPECTED
      let _TEMP4 = SDAI.USEDIN(T: _TEMP3, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
        .eDATA_QUALITY_REPORT_REQUEST.CRITERION_OF_REPORT_REQUEST)
      let _TEMP5 = BAG_TO_SET(_TEMP4)
      let _TEMP6 = _TEMP5?.QUERY{ I1 in 

          let _TEMP1 = SDAI.TYPEOF(I1, IS: eDETAILED_REPORT_REQUEST.self)
          return _TEMP1 }
      let _TEMP7 = SDAI.SIZEOF(_TEMP6)
      let _TEMP8 = _TEMP7 > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP8
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(INSPECTED_INSTANCES: SDAI.LIST<eDATA_QUALITY_INSPECTION_INSTANCE_REPORT_ITEM>/*[1:nil]*/ ) {
      self._inspected_instances = INSPECTED_INSTANCES
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: SDAI.LIST<
        eDATA_QUALITY_INSPECTION_INSTANCE_REPORT_ITEM>.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( INSPECTED_INSTANCES: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY data_quality_inspection_instance_report
    SUBTYPE OF ( data_quality_inspection_report );
      inspected_instances  : LIST [1 : ?] OF data_quality_inspection_instance_report_item;
    WHERE
      wr1: ( SIZEOF( QUERY ( i1 <* bag_to_set( USEDIN( SELF\data_quality_inspection_report.inspection_result.
               criterion_inspected, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'DATA_QUALITY_REPORT_REQUEST.CRITERION_OF_REPORT_REQUEST'  ) ) | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DETAILED_REPORT_REQUEST'  IN TYPEOF( i1 ) ) ) ) 
               > 0 );
  END_ENTITY; -- data_quality_inspection_instance_report (line:11541 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eDATA_QUALITY_INSPECTION_INSTANCE_REPORT : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _data_quality_inspection_instance_report.self
    }
    public let partialEntity: _data_quality_inspection_instance_report

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eDATA_QUALITY_INSPECTION_REPORT: eDATA_QUALITY_INSPECTION_REPORT 	// [2]
    public var super_eDATA_QUALITY_INSPECTION_INSTANCE_REPORT: eDATA_QUALITY_INSPECTION_INSTANCE_REPORT { return self } 	// [3]

    //MARK: SUBTYPES
    public var sub_eSHAPE_DATA_QUALITY_INSPECTION_INSTANCE_REPORT: eSHAPE_DATA_QUALITY_INSPECTION_INSTANCE_REPORT? {	// [4]
      return self.complexEntity.entityReference(eSHAPE_DATA_QUALITY_INSPECTION_INSTANCE_REPORT.self)
    }


    //MARK: ATTRIBUTES
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
    /// - origin: SELF( ``eDATA_QUALITY_INSPECTION_INSTANCE_REPORT`` )
    public var INSPECTED_INSTANCES: SDAI.LIST<eDATA_QUALITY_INSPECTION_INSTANCE_REPORT_ITEM>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._inspected_instances )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._inspected_instances = SDAI.UNWRAP(newValue)
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
      guard let partial = complexEntity?.partialEntityInstance(_data_quality_inspection_instance_report.self) else { return nil }
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
      result[prefix2 + " .WHERE_wr1"] = _data_quality_inspection_instance_report.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "DATA_QUALITY_INSPECTION_INSTANCE_REPORT", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eDATA_QUALITY_INSPECTION_REPORT.self)
      entityDef.add(supertype: eDATA_QUALITY_INSPECTION_INSTANCE_REPORT.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "INSPECTION_RESULT", keyPath: \eDATA_QUALITY_INSPECTION_INSTANCE_REPORT.INSPECTION_RESULT, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "INSPECTED_INSTANCES", keyPath: \eDATA_QUALITY_INSPECTION_INSTANCE_REPORT.INSPECTED_INSTANCES, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eDATA_QUALITY_INSPECTION_INSTANCE_REPORT.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
