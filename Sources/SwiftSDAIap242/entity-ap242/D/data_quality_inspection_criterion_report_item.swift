/* file: data_quality_inspection_criterion_report_item.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY data_quality_inspection_criterion_report_item
    SUBTYPE OF ( representation_item );
      statistical_value  : INTEGER;
      value_type         : statistical_value_type;
    WHERE
      wr1: ( SIZEOF( QUERY ( q <* bag_to_set( USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'REPRESENTATION.ITEMS'  ) ) | ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'DATA_QUALITY_CRITERIA_REPRESENTATION'  IN TYPEOF( q ) ) ) ) = 0 );
  END_ENTITY; -- data_quality_inspection_criterion_report_item (line:11528 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  ENTITY(SELF)	data_quality_inspection_criterion_report_item
    ATTR:  statistical_value,	TYPE: INTEGER -- EXPLICIT

    ATTR:  value_type,	TYPE: statistical_value_type -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _data_quality_inspection_criterion_report_item : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eDATA_QUALITY_INSPECTION_CRITERION_REPORT_ITEM.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _statistical_value: SDAI.INTEGER // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _value_type: nSTATISTICAL_VALUE_TYPE // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._statistical_value.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._value_type.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._statistical_value.value.isValueEqualOptionally(to: rhs._statistical_value.value, visited: &comppairs)	{
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
      if let comp = self._statistical_value.value.isValueEqualOptionally(to: rhs._statistical_value.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._value_type.value.isValueEqualOptionally(to: rhs._value_type.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eDATA_QUALITY_INSPECTION_CRITERION_REPORT_ITEM?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.USEDIN(T: SELF, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
        .eREPRESENTATION.ITEMS)
      let _TEMP2 = BAG_TO_SET(_TEMP1)
      let _TEMP3 = _TEMP2?.QUERY{ Q in 

          let _TEMP1 = SDAI.TYPEOF(Q, IS: eDATA_QUALITY_CRITERIA_REPRESENTATION.self)
          return _TEMP1 }
      let _TEMP4 = SDAI.SIZEOF(_TEMP3)
      let _TEMP5 = _TEMP4 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP5
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(STATISTICAL_VALUE: SDAI.INTEGER, VALUE_TYPE: nSTATISTICAL_VALUE_TYPE) {
      self._statistical_value = STATISTICAL_VALUE
      self._value_type = VALUE_TYPE
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: SDAI.INTEGER.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: nSTATISTICAL_VALUE_TYPE.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( STATISTICAL_VALUE: p0, VALUE_TYPE: p1 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY data_quality_inspection_criterion_report_item
    SUBTYPE OF ( representation_item );
      statistical_value  : INTEGER;
      value_type         : statistical_value_type;
    WHERE
      wr1: ( SIZEOF( QUERY ( q <* bag_to_set( USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'REPRESENTATION.ITEMS'  ) ) | ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'DATA_QUALITY_CRITERIA_REPRESENTATION'  IN TYPEOF( q ) ) ) ) = 0 );
  END_ENTITY; -- data_quality_inspection_criterion_report_item (line:11528 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eDATA_QUALITY_INSPECTION_CRITERION_REPORT_ITEM : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _data_quality_inspection_criterion_report_item.self
    }
    public let partialEntity: _data_quality_inspection_criterion_report_item

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public var super_eDATA_QUALITY_INSPECTION_CRITERION_REPORT_ITEM: eDATA_QUALITY_INSPECTION_CRITERION_REPORT_ITEM { return self } 	// [2]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eDATA_QUALITY_INSPECTION_CRITERION_REPORT_ITEM`` )
    public var STATISTICAL_VALUE: SDAI.INTEGER {
      get {
        return SDAI.UNWRAP( self.partialEntity._statistical_value )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._statistical_value = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eDATA_QUALITY_INSPECTION_CRITERION_REPORT_ITEM`` )
    public var VALUE_TYPE: nSTATISTICAL_VALUE_TYPE {
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
      guard let partial = complexEntity?.partialEntityInstance(_data_quality_inspection_criterion_report_item.self) else { return nil }
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
      result[prefix2 + " .WHERE_wr1"] = _data_quality_inspection_criterion_report_item.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "DATA_QUALITY_INSPECTION_CRITERION_REPORT_ITEM", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eDATA_QUALITY_INSPECTION_CRITERION_REPORT_ITEM.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "STATISTICAL_VALUE", keyPath: \eDATA_QUALITY_INSPECTION_CRITERION_REPORT_ITEM.STATISTICAL_VALUE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "VALUE_TYPE", keyPath: \eDATA_QUALITY_INSPECTION_CRITERION_REPORT_ITEM.VALUE_TYPE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eDATA_QUALITY_INSPECTION_CRITERION_REPORT_ITEM.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
