/* file: a3m_equivalence_criterion_report_item_with_measured_value.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY a3m_equivalence_criterion_report_item_with_measured_value
    SUBTYPE OF ( data_equivalence_inspection_criterion_report_item );
      representative_measured_value  : equivalence_measured_value_select;
      value_type                     : representative_value_type;
    UNIQUE
      ur1 : SELF\data_equivalence_inspection_criterion_report_item.criterion_report, value_type;
  END_ENTITY; -- a3m_equivalence_criterion_report_item_with_measured_value (line:6149 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(2)	data_equivalence_inspection_criterion_report_item
    ATTR:  criterion_report,	TYPE: data_equivalence_inspection_criterion_report -- INVERSE
      FOR statistical_values;


  ENTITY(SELF)	a3m_equivalence_criterion_report_item_with_measured_value
    ATTR:  representative_measured_value,	TYPE: equivalence_measured_value_select -- EXPLICIT

    ATTR:  value_type,	TYPE: representative_value_type -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _a3m_equivalence_criterion_report_item_with_measured_value : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eA3M_EQUIVALENCE_CRITERION_REPORT_ITEM_WITH_MEASURED_VALUE.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _representative_measured_value: sEQUIVALENCE_MEASURED_VALUE_SELECT // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _value_type: nREPRESENTATIVE_VALUE_TYPE // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._representative_measured_value.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._value_type.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._representative_measured_value.value.isValueEqualOptionally(to: rhs._representative_measured_value.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._value_type.value.isValueEqualOptionally(to: rhs._value_type.value, visited: &comppairs)	{
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
      if let comp = self._value_type.value.isValueEqualOptionally(to: rhs._value_type.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //UNIQUENESS RULES
    public static func UNIQUE_ur1(SELF: SDAI.EntityReference) -> AnyHashable? {
      guard let SELF = SELF as? eA3M_EQUIVALENCE_CRITERION_REPORT_ITEM_WITH_MEASURED_VALUE else { return nil }
      //JOINT UNIQUE RULE

      var attributes: Array<AnyHashable> = []

      guard let attr1 = SELF.GROUP_REF(eDATA_EQUIVALENCE_INSPECTION_CRITERION_REPORT_ITEM.self)?.CRITERION_REPORT
        else { return nil }
      attributes.append( AnyHashable(attr1) )
      let attr2 = SELF.VALUE_TYPE
      attributes.append( AnyHashable(attr2) )

      return AnyHashable( attributes )
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(REPRESENTATIVE_MEASURED_VALUE: sEQUIVALENCE_MEASURED_VALUE_SELECT, 
                VALUE_TYPE: nREPRESENTATIVE_VALUE_TYPE) {
      self._representative_measured_value = REPRESENTATIVE_MEASURED_VALUE
      self._value_type = VALUE_TYPE
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: 
        sEQUIVALENCE_MEASURED_VALUE_SELECT.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: nREPRESENTATIVE_VALUE_TYPE.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( REPRESENTATIVE_MEASURED_VALUE: p0, VALUE_TYPE: p1 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY a3m_equivalence_criterion_report_item_with_measured_value
    SUBTYPE OF ( data_equivalence_inspection_criterion_report_item );
      representative_measured_value  : equivalence_measured_value_select;
      value_type                     : representative_value_type;
    UNIQUE
      ur1 : SELF\data_equivalence_inspection_criterion_report_item.criterion_report, value_type;
  END_ENTITY; -- a3m_equivalence_criterion_report_item_with_measured_value (line:6149 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eA3M_EQUIVALENCE_CRITERION_REPORT_ITEM_WITH_MEASURED_VALUE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _a3m_equivalence_criterion_report_item_with_measured_value.self
    }
    public let partialEntity: _a3m_equivalence_criterion_report_item_with_measured_value

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eDATA_EQUIVALENCE_INSPECTION_CRITERION_REPORT_ITEM: eDATA_EQUIVALENCE_INSPECTION_CRITERION_REPORT_ITEM 	// [2]
    public var super_eA3M_EQUIVALENCE_CRITERION_REPORT_ITEM_WITH_MEASURED_VALUE: eA3M_EQUIVALENCE_CRITERION_REPORT_ITEM_WITH_MEASURED_VALUE { return self } 	// [3]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eA3M_EQUIVALENCE_CRITERION_REPORT_ITEM_WITH_MEASURED_VALUE`` )
    public var REPRESENTATIVE_MEASURED_VALUE: sEQUIVALENCE_MEASURED_VALUE_SELECT {
      get {
        return SDAI.UNWRAP( self.partialEntity._representative_measured_value )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._representative_measured_value = SDAI.UNWRAP(newValue)
      }
    }

    /// __INVERSE__ attribute
    /// observing eDATA_EQUIVALENCE_INSPECTION_CRITERION_REPORT .STATISTICAL_VALUES
    /// - origin: SUPER( ``eDATA_EQUIVALENCE_INSPECTION_CRITERION_REPORT_ITEM`` )
    public var CRITERION_REPORT: eDATA_EQUIVALENCE_INSPECTION_CRITERION_REPORT?  {
      get {
        return super_eDATA_EQUIVALENCE_INSPECTION_CRITERION_REPORT_ITEM.partialEntity._criterion_report
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eA3M_EQUIVALENCE_CRITERION_REPORT_ITEM_WITH_MEASURED_VALUE`` )
    public var VALUE_TYPE: nREPRESENTATIVE_VALUE_TYPE {
      get {
        return SDAI.UNWRAP( self.partialEntity._value_type )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._value_type = SDAI.UNWRAP(newValue)
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
      guard let partial = complexEntity?.partialEntityInstance(_a3m_equivalence_criterion_report_item_with_measured_value.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eDATA_EQUIVALENCE_INSPECTION_CRITERION_REPORT_ITEM.self) else { return nil }
      self.super_eDATA_EQUIVALENCE_INSPECTION_CRITERION_REPORT_ITEM = super2

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "A3M_EQUIVALENCE_CRITERION_REPORT_ITEM_WITH_MEASURED_VALUE", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eDATA_EQUIVALENCE_INSPECTION_CRITERION_REPORT_ITEM.self)
      entityDef.add(supertype: eA3M_EQUIVALENCE_CRITERION_REPORT_ITEM_WITH_MEASURED_VALUE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "REPRESENTATIVE_MEASURED_VALUE", keyPath: \eA3M_EQUIVALENCE_CRITERION_REPORT_ITEM_WITH_MEASURED_VALUE.REPRESENTATIVE_MEASURED_VALUE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "CRITERION_REPORT", keyPath: \eA3M_EQUIVALENCE_CRITERION_REPORT_ITEM_WITH_MEASURED_VALUE.CRITERION_REPORT, 
        kind: .inverse, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "VALUE_TYPE", keyPath: \eA3M_EQUIVALENCE_CRITERION_REPORT_ITEM_WITH_MEASURED_VALUE.VALUE_TYPE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eA3M_EQUIVALENCE_CRITERION_REPORT_ITEM_WITH_MEASURED_VALUE.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      //MARK: UNIQUENESS RULE REGISTRATIONS
      entityDef.addUniqunessRule(label:"UNIQUE_ur1", rule: _a3m_equivalence_criterion_report_item_with_measured_value.UNIQUE_ur1)

      return entityDef
    }

  }
}