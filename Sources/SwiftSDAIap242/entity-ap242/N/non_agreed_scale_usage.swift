/* file: non_agreed_scale_usage.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY non_agreed_scale_usage
    SUBTYPE OF ( externally_conditioned_data_quality_criterion );
    WHERE
      wr1: validate_ecdq_inspected_elements_type( SELF, [ 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'CARTESIAN_TRANSFORMATION_OPERATOR_3D' ] );
  END_ENTITY; -- non_agreed_scale_usage (line:22130 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(2)	data_quality_criterion
    (no local attributes)

  SUPER- ENTITY(3)	data_quality_measurement_requirement
    (no local attributes)

  SUPER- ENTITY(4)	externally_conditioned_data_quality_criterion
    (no local attributes)

  ENTITY(SELF)	non_agreed_scale_usage
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _non_agreed_scale_usage : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eNON_AGREED_SCALE_USAGE.self
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


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eNON_AGREED_SCALE_USAGE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.BAG<SDAI.STRING>(([
        SDAI.AIE(SDAI.STRING(
        "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CARTESIAN_TRANSFORMATION_OPERATOR_3D"))] 
        as [SDAI.AggregationInitializerElement<SDAI.STRING>]))
      let _TEMP2 = VALIDATE_ECDQ_INSPECTED_ELEMENTS_TYPE(
        EI: eEXTERNALLY_CONDITIONED_DATA_QUALITY_CRITERION(/*eNON_AGREED_SCALE_USAGE*/SELF), 
        TYPE_LIST: _TEMP1)
      return _TEMP2
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
  ENTITY non_agreed_scale_usage
    SUBTYPE OF ( externally_conditioned_data_quality_criterion );
    WHERE
      wr1: validate_ecdq_inspected_elements_type( SELF, [ 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'CARTESIAN_TRANSFORMATION_OPERATOR_3D' ] );
  END_ENTITY; -- non_agreed_scale_usage (line:22130 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eNON_AGREED_SCALE_USAGE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _non_agreed_scale_usage.self
    }
    public let partialEntity: _non_agreed_scale_usage

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eDATA_QUALITY_CRITERION: eDATA_QUALITY_CRITERION 	// [2]
    public let super_eDATA_QUALITY_MEASUREMENT_REQUIREMENT: eDATA_QUALITY_MEASUREMENT_REQUIREMENT 	// [3]
    public let super_eEXTERNALLY_CONDITIONED_DATA_QUALITY_CRITERION: eEXTERNALLY_CONDITIONED_DATA_QUALITY_CRITERION 	// [4]
    public var super_eNON_AGREED_SCALE_USAGE: eNON_AGREED_SCALE_USAGE { return self } 	// [5]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
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
      guard let partial = complexEntity?.partialEntityInstance(_non_agreed_scale_usage.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eDATA_QUALITY_CRITERION.self) else { return nil }
      self.super_eDATA_QUALITY_CRITERION = super2

      guard let super3 = complexEntity?.entityReference(eDATA_QUALITY_MEASUREMENT_REQUIREMENT.self) else { return nil }
      self.super_eDATA_QUALITY_MEASUREMENT_REQUIREMENT = super3

      guard let super4 = complexEntity?.entityReference(eEXTERNALLY_CONDITIONED_DATA_QUALITY_CRITERION.self) else { return nil }
      self.super_eEXTERNALLY_CONDITIONED_DATA_QUALITY_CRITERION = super4

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
      result[prefix2 + " .WHERE_wr1"] = _non_agreed_scale_usage.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "NON_AGREED_SCALE_USAGE", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eDATA_QUALITY_CRITERION.self)
      entityDef.add(supertype: eDATA_QUALITY_MEASUREMENT_REQUIREMENT.self)
      entityDef.add(supertype: eEXTERNALLY_CONDITIONED_DATA_QUALITY_CRITERION.self)
      entityDef.add(supertype: eNON_AGREED_SCALE_USAGE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "NAME", keyPath: \eNON_AGREED_SCALE_USAGE.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
