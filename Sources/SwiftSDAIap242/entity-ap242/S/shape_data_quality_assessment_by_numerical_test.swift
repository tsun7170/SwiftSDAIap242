/* file: shape_data_quality_assessment_by_numerical_test.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY shape_data_quality_assessment_by_numerical_test
    SUBTYPE OF ( data_quality_assessment_specification );
      threshold  : shape_data_quality_value_limit_type_select;
  END_ENTITY; -- shape_data_quality_assessment_by_numerical_test (line:28729 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	data_quality_assessment_specification
    ATTR:  description,	TYPE: text -- EXPLICIT


  ENTITY(SELF)	shape_data_quality_assessment_by_numerical_test
    ATTR:  threshold,	TYPE: shape_data_quality_value_limit_type_select -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _shape_data_quality_assessment_by_numerical_test : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eSHAPE_DATA_QUALITY_ASSESSMENT_BY_NUMERICAL_TEST.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _threshold: sSHAPE_DATA_QUALITY_VALUE_LIMIT_TYPE_SELECT // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sSHAPE_DATA_QUALITY_ASSESSMENT_SPECIFICATION_SELECT.typeName)) // -> Self
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._threshold.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._threshold.value.isValueEqualOptionally(to: rhs._threshold.value, visited: &comppairs)	{
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
      if let comp = self._threshold.value.isValueEqualOptionally(to: rhs._threshold.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(THRESHOLD: sSHAPE_DATA_QUALITY_VALUE_LIMIT_TYPE_SELECT) {
      self._threshold = THRESHOLD
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: 
        sSHAPE_DATA_QUALITY_VALUE_LIMIT_TYPE_SELECT.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( THRESHOLD: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY shape_data_quality_assessment_by_numerical_test
    SUBTYPE OF ( data_quality_assessment_specification );
      threshold  : shape_data_quality_value_limit_type_select;
  END_ENTITY; -- shape_data_quality_assessment_by_numerical_test (line:28729 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eSHAPE_DATA_QUALITY_ASSESSMENT_BY_NUMERICAL_TEST : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _shape_data_quality_assessment_by_numerical_test.self
    }
    public let partialEntity: _shape_data_quality_assessment_by_numerical_test

    //MARK: SUPERTYPES
    public let super_eDATA_QUALITY_ASSESSMENT_SPECIFICATION: eDATA_QUALITY_ASSESSMENT_SPECIFICATION 	// [1]
    public var super_eSHAPE_DATA_QUALITY_ASSESSMENT_BY_NUMERICAL_TEST: eSHAPE_DATA_QUALITY_ASSESSMENT_BY_NUMERICAL_TEST { return self } 	// [2]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eDATA_QUALITY_ASSESSMENT_SPECIFICATION`` )
    public var DESCRIPTION: tTEXT {
      get {
        return SDAI.UNWRAP( super_eDATA_QUALITY_ASSESSMENT_SPECIFICATION.partialEntity._description )
      }
      set(newValue) {
        let partial = super_eDATA_QUALITY_ASSESSMENT_SPECIFICATION.partialEntity
        partial._description = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eSHAPE_DATA_QUALITY_ASSESSMENT_BY_NUMERICAL_TEST`` )
    public var THRESHOLD: sSHAPE_DATA_QUALITY_VALUE_LIMIT_TYPE_SELECT {
      get {
        return SDAI.UNWRAP( self.partialEntity._threshold )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._threshold = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_shape_data_quality_assessment_by_numerical_test.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eDATA_QUALITY_ASSESSMENT_SPECIFICATION.self) else { return nil }
      self.super_eDATA_QUALITY_ASSESSMENT_SPECIFICATION = super1

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "SHAPE_DATA_QUALITY_ASSESSMENT_BY_NUMERICAL_TEST", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eDATA_QUALITY_ASSESSMENT_SPECIFICATION.self)
      entityDef.add(supertype: eSHAPE_DATA_QUALITY_ASSESSMENT_BY_NUMERICAL_TEST.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eSHAPE_DATA_QUALITY_ASSESSMENT_BY_NUMERICAL_TEST.DESCRIPTION, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "THRESHOLD", keyPath: \eSHAPE_DATA_QUALITY_ASSESSMENT_BY_NUMERICAL_TEST.THRESHOLD, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
