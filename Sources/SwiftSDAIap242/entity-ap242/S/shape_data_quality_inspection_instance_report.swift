/* file: shape_data_quality_inspection_instance_report.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY shape_data_quality_inspection_instance_report
    SUBTYPE OF ( data_quality_inspection_instance_report );
      SELF\data_quality_inspection_instance_report.inspected_instances : LIST [1 : ?] OF
                                          shape_data_quality_inspection_instance_report_item;
  END_ENTITY; -- shape_data_quality_inspection_instance_report (line:28785 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(2)	data_quality_inspection_report
    ATTR:  inspection_result,	TYPE: data_quality_inspection_result -- EXPLICIT


  SUPER- ENTITY(3)	data_quality_inspection_instance_report
    ATTR:  inspected_instances,	TYPE: LIST [1 : ?] OF data_quality_inspection_instance_report_item -- EXPLICIT
      -- possibly overriden by
      *** ENTITY: shape_data_quality_inspection_instance_report,	TYPE: LIST [1 : ?] OF shape_data_quality_inspection_instance_report_item


  ENTITY(SELF)	shape_data_quality_inspection_instance_report
    REDCR: inspected_instances,	TYPE: LIST [1 : ?] OF shape_data_quality_inspection_instance_report_item -- EXPLICIT
      -- OVERRIDING ENTITY: data_quality_inspection_instance_report


*/


//MARK: - Partial Entity
  public final class _shape_data_quality_inspection_instance_report : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eSHAPE_DATA_QUALITY_INSPECTION_INSTANCE_REPORT.self
    }

    //ATTRIBUTES
    /* override var _inspected_instances: SDAI.LIST<eSHAPE_DATA_QUALITY_INSPECTION_INSTANCE_REPORT_ITEM>[1:
      nil] 	//EXPLICIT REDEFINITION(eDATA_QUALITY_INSPECTION_INSTANCE_REPORT) */

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
  ENTITY shape_data_quality_inspection_instance_report
    SUBTYPE OF ( data_quality_inspection_instance_report );
      SELF\data_quality_inspection_instance_report.inspected_instances : LIST [1 : ?] OF
                                          shape_data_quality_inspection_instance_report_item;
  END_ENTITY; -- shape_data_quality_inspection_instance_report (line:28785 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eSHAPE_DATA_QUALITY_INSPECTION_INSTANCE_REPORT : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _shape_data_quality_inspection_instance_report.self
    }
    public let partialEntity: _shape_data_quality_inspection_instance_report

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eDATA_QUALITY_INSPECTION_REPORT: eDATA_QUALITY_INSPECTION_REPORT 	// [2]
    public let super_eDATA_QUALITY_INSPECTION_INSTANCE_REPORT: eDATA_QUALITY_INSPECTION_INSTANCE_REPORT 	// [3]
    public var super_eSHAPE_DATA_QUALITY_INSPECTION_INSTANCE_REPORT: eSHAPE_DATA_QUALITY_INSPECTION_INSTANCE_REPORT { return self } 	// [4]

    //MARK: SUBTYPES

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

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SELF( ``eSHAPE_DATA_QUALITY_INSPECTION_INSTANCE_REPORT`` )
    public var INSPECTED_INSTANCES: SDAI.LIST<eSHAPE_DATA_QUALITY_INSPECTION_INSTANCE_REPORT_ITEM>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( SDAI.LIST<eSHAPE_DATA_QUALITY_INSPECTION_INSTANCE_REPORT_ITEM>( super_eDATA_QUALITY_INSPECTION_INSTANCE_REPORT
          .partialEntity._inspected_instances ) )
      }
      set(newValue) {
        let partial = super_eDATA_QUALITY_INSPECTION_INSTANCE_REPORT.partialEntity
        partial._inspected_instances = SDAI.UNWRAP(
          SDAI.LIST<eDATA_QUALITY_INSPECTION_INSTANCE_REPORT_ITEM>(newValue))
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
      guard let partial = complexEntity?.partialEntityInstance(_shape_data_quality_inspection_instance_report.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eDATA_QUALITY_INSPECTION_REPORT.self) else { return nil }
      self.super_eDATA_QUALITY_INSPECTION_REPORT = super2

      guard let super3 = complexEntity?.entityReference(eDATA_QUALITY_INSPECTION_INSTANCE_REPORT.self) else { return nil }
      self.super_eDATA_QUALITY_INSPECTION_INSTANCE_REPORT = super3

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "SHAPE_DATA_QUALITY_INSPECTION_INSTANCE_REPORT", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eDATA_QUALITY_INSPECTION_REPORT.self)
      entityDef.add(supertype: eDATA_QUALITY_INSPECTION_INSTANCE_REPORT.self)
      entityDef.add(supertype: eSHAPE_DATA_QUALITY_INSPECTION_INSTANCE_REPORT.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "INSPECTION_RESULT", keyPath: \eSHAPE_DATA_QUALITY_INSPECTION_INSTANCE_REPORT.INSPECTION_RESULT, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "INSPECTED_INSTANCES", keyPath: \eSHAPE_DATA_QUALITY_INSPECTION_INSTANCE_REPORT.INSPECTED_INSTANCES, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eSHAPE_DATA_QUALITY_INSPECTION_INSTANCE_REPORT.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
