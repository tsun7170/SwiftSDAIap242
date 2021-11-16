/* file: data_quality_inspection_result.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY data_quality_inspection_result
    SUBTYPE OF ( representation_item );
      criterion_inspected  : data_quality_criterion;
    WHERE
      wr1: ( SIZEOF( QUERY ( q <* bag_to_set( USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'REPRESENTATION.ITEMS'  ) ) | ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'DATA_QUALITY_CRITERIA_REPRESENTATION'  IN TYPEOF( q ) ) ) ) = 0 );
  END_ENTITY; -- data_quality_inspection_result (line:11574 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  ENTITY(SELF)	data_quality_inspection_result
    ATTR:  criterion_inspected,	TYPE: data_quality_criterion -- EXPLICIT
      -- possibly overriden by
          ENTITY: shape_data_quality_inspection_result,	TYPE: shape_data_quality_criterion


  SUB- ENTITY(3)	shape_data_quality_inspection_result
    REDCR: criterion_inspected,	TYPE: shape_data_quality_criterion -- EXPLICIT
      -- OVERRIDING ENTITY: data_quality_inspection_result


  SUB- ENTITY(4)	data_quality_inspection_result_with_judgement
    ATTR:  judgement,	TYPE: BOOLEAN -- EXPLICIT


  SUB- ENTITY(5)	externally_conditioned_data_quality_inspection_result
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _data_quality_inspection_result : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eDATA_QUALITY_INSPECTION_RESULT.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _criterion_inspected: eDATA_QUALITY_CRITERION // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._criterion_inspected.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._criterion_inspected.value.isValueEqualOptionally(to: rhs._criterion_inspected.value, visited: &comppairs)	{
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
      if let comp = self._criterion_inspected.value.isValueEqualOptionally(to: rhs._criterion_inspected.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eDATA_QUALITY_INSPECTION_RESULT?) -> SDAI.LOGICAL {
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
    public init(CRITERION_INSPECTED: eDATA_QUALITY_CRITERION) {
      self._criterion_inspected = CRITERION_INSPECTED
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: eDATA_QUALITY_CRITERION.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( CRITERION_INSPECTED: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY data_quality_inspection_result
    SUBTYPE OF ( representation_item );
      criterion_inspected  : data_quality_criterion;
    WHERE
      wr1: ( SIZEOF( QUERY ( q <* bag_to_set( USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'REPRESENTATION.ITEMS'  ) ) | ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'DATA_QUALITY_CRITERIA_REPRESENTATION'  IN TYPEOF( q ) ) ) ) = 0 );
  END_ENTITY; -- data_quality_inspection_result (line:11574 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eDATA_QUALITY_INSPECTION_RESULT : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _data_quality_inspection_result.self
    }
    public let partialEntity: _data_quality_inspection_result

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public var super_eDATA_QUALITY_INSPECTION_RESULT: eDATA_QUALITY_INSPECTION_RESULT { return self } 	// [2]

    //MARK: SUBTYPES
    public var sub_eSHAPE_DATA_QUALITY_INSPECTION_RESULT: eSHAPE_DATA_QUALITY_INSPECTION_RESULT? {	// [3]
      return self.complexEntity.entityReference(eSHAPE_DATA_QUALITY_INSPECTION_RESULT.self)
    }

    public var sub_eDATA_QUALITY_INSPECTION_RESULT_WITH_JUDGEMENT: eDATA_QUALITY_INSPECTION_RESULT_WITH_JUDGEMENT? {	// [4]
      return self.complexEntity.entityReference(eDATA_QUALITY_INSPECTION_RESULT_WITH_JUDGEMENT.self)
    }

    public var sub_eEXTERNALLY_CONDITIONED_DATA_QUALITY_INSPECTION_RESULT: eEXTERNALLY_CONDITIONED_DATA_QUALITY_INSPECTION_RESULT? {	// [5]
      return self.complexEntity.entityReference(eEXTERNALLY_CONDITIONED_DATA_QUALITY_INSPECTION_RESULT.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eDATA_QUALITY_INSPECTION_RESULT`` )
    public var CRITERION_INSPECTED: eDATA_QUALITY_CRITERION {
      get {
        return SDAI.UNWRAP( self.partialEntity._criterion_inspected )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._criterion_inspected = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eDATA_QUALITY_INSPECTION_RESULT_WITH_JUDGEMENT`` )
    public var JUDGEMENT: SDAI.BOOLEAN?  {
      get {
        return sub_eDATA_QUALITY_INSPECTION_RESULT_WITH_JUDGEMENT?.partialEntity._judgement
      }
      set(newValue) {
        guard let partial = sub_eDATA_QUALITY_INSPECTION_RESULT_WITH_JUDGEMENT?.super_eDATA_QUALITY_INSPECTION_RESULT_WITH_JUDGEMENT
          .partialEntity else { return }
        partial._judgement = SDAI.UNWRAP(newValue)
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
      guard let partial = complexEntity?.partialEntityInstance(_data_quality_inspection_result.self) else { return nil }
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
      result[prefix2 + " .WHERE_wr1"] = _data_quality_inspection_result.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "DATA_QUALITY_INSPECTION_RESULT", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eDATA_QUALITY_INSPECTION_RESULT.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "CRITERION_INSPECTED", keyPath: \eDATA_QUALITY_INSPECTION_RESULT.CRITERION_INSPECTED, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "JUDGEMENT", keyPath: \eDATA_QUALITY_INSPECTION_RESULT.JUDGEMENT, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eDATA_QUALITY_INSPECTION_RESULT.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
