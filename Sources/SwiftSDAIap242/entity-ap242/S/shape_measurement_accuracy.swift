/* file: shape_measurement_accuracy.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY shape_measurement_accuracy;
      description  : text;
      range        : shape_data_quality_value_limit_type_select;
  END_ENTITY; -- shape_measurement_accuracy (line:28939 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  ENTITY(SELF)	shape_measurement_accuracy
    ATTR:  description,	TYPE: text -- EXPLICIT

    ATTR:  range,	TYPE: shape_data_quality_value_limit_type_select -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _shape_measurement_accuracy : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eSHAPE_MEASUREMENT_ACCURACY.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _description: tTEXT // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _range: sSHAPE_DATA_QUALITY_VALUE_LIMIT_TYPE_SELECT // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._description.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._range.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._description.value.isValueEqualOptionally(to: rhs._description.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._range.value.isValueEqualOptionally(to: rhs._range.value, visited: &comppairs)	{
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
      if let comp = self._description.value.isValueEqualOptionally(to: rhs._description.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._range.value.isValueEqualOptionally(to: rhs._range.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(DESCRIPTION: tTEXT, RANGE: sSHAPE_DATA_QUALITY_VALUE_LIMIT_TYPE_SELECT) {
      self._description = DESCRIPTION
      self._range = RANGE
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: tTEXT.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: 
        sSHAPE_DATA_QUALITY_VALUE_LIMIT_TYPE_SELECT.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( DESCRIPTION: p0, RANGE: p1 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY shape_measurement_accuracy;
      description  : text;
      range        : shape_data_quality_value_limit_type_select;
  END_ENTITY; -- shape_measurement_accuracy (line:28939 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eSHAPE_MEASUREMENT_ACCURACY : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _shape_measurement_accuracy.self
    }
    public let partialEntity: _shape_measurement_accuracy

    //MARK: SUPERTYPES
    public var super_eSHAPE_MEASUREMENT_ACCURACY: eSHAPE_MEASUREMENT_ACCURACY { return self } 	// [1]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eSHAPE_MEASUREMENT_ACCURACY`` )
    public var DESCRIPTION: tTEXT {
      get {
        return SDAI.UNWRAP( self.partialEntity._description )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._description = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eSHAPE_MEASUREMENT_ACCURACY`` )
    public var RANGE: sSHAPE_DATA_QUALITY_VALUE_LIMIT_TYPE_SELECT {
      get {
        return SDAI.UNWRAP( self.partialEntity._range )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._range = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_shape_measurement_accuracy.self) else { return nil }
      self.partialEntity = partial

      super.init(complex: complexEntity)
    }

    public required convenience init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let entityRef = generic?.entityReference else { return nil }
      self.init(complex: entityRef.complexEntity)
    }

    public convenience init?<S: SDAISelectType>(_ select: S?) { self.init(possiblyFrom: select) }
    public convenience init?(_ complex: SDAI.ComplexEntity?) { self.init(complex: complex) }

    //SIMPLE ENTITY REFERENCE
    public convenience init?(_ partial:_shape_measurement_accuracy) {
      let complex = SDAI.ComplexEntity(entities:[partial])
      self.init(complex: complex)
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "SHAPE_MEASUREMENT_ACCURACY", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eSHAPE_MEASUREMENT_ACCURACY.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eSHAPE_MEASUREMENT_ACCURACY.DESCRIPTION, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "RANGE", keyPath: \eSHAPE_MEASUREMENT_ACCURACY.RANGE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
