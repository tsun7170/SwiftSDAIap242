/* file: shape_summary_request_with_representative_value.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  ENTITY shape_summary_request_with_representative_value
    SUBTYPE OF ( summary_report_request );
  END_ENTITY; -- shape_summary_request_with_representative_value (line:28951 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	data_quality_report_request
    ATTR:  description,	TYPE: text -- EXPLICIT

    ATTR:  criterion_of_report_request,	TYPE: data_quality_criterion -- EXPLICIT


  SUPER- ENTITY(2)	summary_report_request
    ATTR:  summary_report_request_type,	TYPE: summary_report_type -- EXPLICIT


  ENTITY(SELF)	shape_summary_request_with_representative_value
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _shape_summary_request_with_representative_value : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eSHAPE_SUMMARY_REQUEST_WITH_REPRESENTATIVE_VALUE.self
    }

    //ATTRIBUTES
    // (no local attributes)

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
  ENTITY shape_summary_request_with_representative_value
    SUBTYPE OF ( summary_report_request );
  END_ENTITY; -- shape_summary_request_with_representative_value (line:28951 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eSHAPE_SUMMARY_REQUEST_WITH_REPRESENTATIVE_VALUE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _shape_summary_request_with_representative_value.self
    }
    public let partialEntity: _shape_summary_request_with_representative_value

    //MARK: SUPERTYPES
    public let super_eDATA_QUALITY_REPORT_REQUEST: eDATA_QUALITY_REPORT_REQUEST 	// [1]
    public let super_eSUMMARY_REPORT_REQUEST: eSUMMARY_REPORT_REQUEST 	// [2]
    public var super_eSHAPE_SUMMARY_REQUEST_WITH_REPRESENTATIVE_VALUE: eSHAPE_SUMMARY_REQUEST_WITH_REPRESENTATIVE_VALUE { return self } 	// [3]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eDATA_QUALITY_REPORT_REQUEST`` )
    public var DESCRIPTION: tTEXT {
      get {
        return SDAI.UNWRAP( super_eDATA_QUALITY_REPORT_REQUEST.partialEntity._description )
      }
      set(newValue) {
        let partial = super_eDATA_QUALITY_REPORT_REQUEST.partialEntity
        partial._description = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eSUMMARY_REPORT_REQUEST`` )
    public var SUMMARY_REPORT_REQUEST_TYPE: nSUMMARY_REPORT_TYPE {
      get {
        return SDAI.UNWRAP( super_eSUMMARY_REPORT_REQUEST.partialEntity._summary_report_request_type )
      }
      set(newValue) {
        let partial = super_eSUMMARY_REPORT_REQUEST.partialEntity
        partial._summary_report_request_type = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eDATA_QUALITY_REPORT_REQUEST`` )
    public var CRITERION_OF_REPORT_REQUEST: eDATA_QUALITY_CRITERION {
      get {
        return SDAI.UNWRAP( super_eDATA_QUALITY_REPORT_REQUEST.partialEntity._criterion_of_report_request )
      }
      set(newValue) {
        let partial = super_eDATA_QUALITY_REPORT_REQUEST.partialEntity
        partial._criterion_of_report_request = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_shape_summary_request_with_representative_value.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eDATA_QUALITY_REPORT_REQUEST.self) else { return nil }
      self.super_eDATA_QUALITY_REPORT_REQUEST = super1

      guard let super2 = complexEntity?.entityReference(eSUMMARY_REPORT_REQUEST.self) else { return nil }
      self.super_eSUMMARY_REPORT_REQUEST = super2

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "SHAPE_SUMMARY_REQUEST_WITH_REPRESENTATIVE_VALUE", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eDATA_QUALITY_REPORT_REQUEST.self)
      entityDef.add(supertype: eSUMMARY_REPORT_REQUEST.self)
      entityDef.add(supertype: eSHAPE_SUMMARY_REQUEST_WITH_REPRESENTATIVE_VALUE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eSHAPE_SUMMARY_REQUEST_WITH_REPRESENTATIVE_VALUE.DESCRIPTION, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SUMMARY_REPORT_REQUEST_TYPE", keyPath: \eSHAPE_SUMMARY_REQUEST_WITH_REPRESENTATIVE_VALUE.SUMMARY_REPORT_REQUEST_TYPE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "CRITERION_OF_REPORT_REQUEST", keyPath: \eSHAPE_SUMMARY_REQUEST_WITH_REPRESENTATIVE_VALUE.CRITERION_OF_REPORT_REQUEST, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
