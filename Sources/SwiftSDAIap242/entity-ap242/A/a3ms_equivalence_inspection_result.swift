/* file: a3ms_equivalence_inspection_result.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY a3ms_equivalence_inspection_result
    SUBTYPE OF ( data_equivalence_inspection_result );
      SELF\data_equivalence_inspection_result.criterion_inspected : a3m_equivalence_criterion_for_shape;
    WHERE
      wr1: a3ms_validate_accuracy_types( SELF, SELF\data_equivalence_inspection_result.criterion_inspected );
      wr2: ( SIZEOF( QUERY ( re <* bag_to_set( USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'DATA_EQUIVALENCE_INSPECTION_REPORT.INSPECTION_RESULT'  ) ) | ( NOT 
               a3ms_validate_element_types( re, SELF\data_equivalence_inspection_result.criterion_inspected ) ) ) ) 
               = 0 );
      wr3: ( SIZEOF( QUERY ( re <* bag_to_set( USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'DATA_EQUIVALENCE_INSPECTION_REPORT.INSPECTION_RESULT'  ) ) | ( NOT 
               a3ms_validate_detected_difference_types( re, SELF\data_equivalence_inspection_result.
               criterion_inspected ) ) ) ) = 0 );
      wr4: ( SIZEOF( QUERY ( re <* bag_to_set( USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'DATA_EQUIVALENCE_INSPECTION_REPORT.INSPECTION_RESULT'  ) ) | ( NOT 
               a3ms_validate_measured_type( re, SELF\data_equivalence_inspection_result.criterion_inspected ) ) ) ) 
               = 0 );
  END_ENTITY; -- a3ms_equivalence_inspection_result (line:6280 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(2)	data_equivalence_inspection_result
    ATTR:  criterion_inspected,	TYPE: data_equivalence_criterion -- EXPLICIT
      -- possibly overriden by
      *** ENTITY: a3ms_equivalence_inspection_result,	TYPE: a3m_equivalence_criterion_for_shape
          ENTITY: a3ma_equivalence_inspection_result,	TYPE: a3m_equivalence_criterion_for_assembly


  ENTITY(SELF)	a3ms_equivalence_inspection_result
    REDCR: criterion_inspected,	TYPE: a3m_equivalence_criterion_for_shape -- EXPLICIT
      -- OVERRIDING ENTITY: data_equivalence_inspection_result


*/


//MARK: - Partial Entity
  public final class _a3ms_equivalence_inspection_result : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eA3MS_EQUIVALENCE_INSPECTION_RESULT.self
    }

    //ATTRIBUTES
    /* override var _criterion_inspected: eA3M_EQUIVALENCE_CRITERION_FOR_SHAPE	//EXPLICIT REDEFINITION(eDATA_EQUIVALENCE_INSPECTION_RESULT) */

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
    public static func WHERE_wr1(SELF: eA3MS_EQUIVALENCE_INSPECTION_RESULT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.GROUP_REF(eDATA_EQUIVALENCE_INSPECTION_RESULT.self)
      let _TEMP2 = _TEMP1?.CRITERION_INSPECTED
      let _TEMP3 = A3MS_VALIDATE_ACCURACY_TYPES(
        EI: sACCURACY_ASSOCIATED_TARGET_SELECT(/*eA3MS_EQUIVALENCE_INSPECTION_RESULT*/SELF), 
        CR: eA3M_EQUIVALENCE_CRITERION_FOR_SHAPE(/*eDATA_EQUIVALENCE_CRITERION*/_TEMP2))
      return _TEMP3
    }
    public static func WHERE_wr2(SELF: eA3MS_EQUIVALENCE_INSPECTION_RESULT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.USEDIN(T: SELF, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
        .eDATA_EQUIVALENCE_INSPECTION_REPORT.INSPECTION_RESULT)
      let _TEMP2 = BAG_TO_SET(_TEMP1)
      let _TEMP3 = _TEMP2?.QUERY{ RE in 

          let _TEMP1 = SELF.GROUP_REF(eDATA_EQUIVALENCE_INSPECTION_RESULT.self)
          let _TEMP2 = _TEMP1?.CRITERION_INSPECTED
          let _TEMP3 = A3MS_VALIDATE_ELEMENT_TYPES(
            EI: eDATA_EQUIVALENCE_INSPECTION_REPORT(fromGeneric: /*gINTYPE*/RE), 
            CR: eA3M_EQUIVALENCE_CRITERION_FOR_SHAPE(/*eDATA_EQUIVALENCE_CRITERION*/_TEMP2))
          let _TEMP4 =  !_TEMP3
          return _TEMP4 }
      let _TEMP4 = SDAI.SIZEOF(_TEMP3)
      let _TEMP5 = _TEMP4 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP5
    }
    public static func WHERE_wr3(SELF: eA3MS_EQUIVALENCE_INSPECTION_RESULT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.USEDIN(T: SELF, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
        .eDATA_EQUIVALENCE_INSPECTION_REPORT.INSPECTION_RESULT)
      let _TEMP2 = BAG_TO_SET(_TEMP1)
      let _TEMP3 = _TEMP2?.QUERY{ RE in 

          let _TEMP1 = SELF.GROUP_REF(eDATA_EQUIVALENCE_INSPECTION_RESULT.self)
          let _TEMP2 = _TEMP1?.CRITERION_INSPECTED
          let _TEMP3 = A3MS_VALIDATE_DETECTED_DIFFERENCE_TYPES(
            EI: eDATA_EQUIVALENCE_INSPECTION_REPORT(fromGeneric: /*gINTYPE*/RE), 
            CR: eA3M_EQUIVALENCE_CRITERION_FOR_SHAPE(/*eDATA_EQUIVALENCE_CRITERION*/_TEMP2))
          let _TEMP4 =  !_TEMP3
          return _TEMP4 }
      let _TEMP4 = SDAI.SIZEOF(_TEMP3)
      let _TEMP5 = _TEMP4 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP5
    }
    public static func WHERE_wr4(SELF: eA3MS_EQUIVALENCE_INSPECTION_RESULT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.USEDIN(T: SELF, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
        .eDATA_EQUIVALENCE_INSPECTION_REPORT.INSPECTION_RESULT)
      let _TEMP2 = BAG_TO_SET(_TEMP1)
      let _TEMP3 = _TEMP2?.QUERY{ RE in 

          let _TEMP1 = SELF.GROUP_REF(eDATA_EQUIVALENCE_INSPECTION_RESULT.self)
          let _TEMP2 = _TEMP1?.CRITERION_INSPECTED
          let _TEMP3 = A3MS_VALIDATE_MEASURED_TYPE(
            EI: eDATA_EQUIVALENCE_INSPECTION_REPORT(fromGeneric: /*gINTYPE*/RE), 
            CR: eA3M_EQUIVALENCE_CRITERION_FOR_SHAPE(/*eDATA_EQUIVALENCE_CRITERION*/_TEMP2))
          let _TEMP4 =  !_TEMP3
          return _TEMP4 }
      let _TEMP4 = SDAI.SIZEOF(_TEMP3)
      let _TEMP5 = _TEMP4 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP5
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
  ENTITY a3ms_equivalence_inspection_result
    SUBTYPE OF ( data_equivalence_inspection_result );
      SELF\data_equivalence_inspection_result.criterion_inspected : a3m_equivalence_criterion_for_shape;
    WHERE
      wr1: a3ms_validate_accuracy_types( SELF, SELF\data_equivalence_inspection_result.criterion_inspected );
      wr2: ( SIZEOF( QUERY ( re <* bag_to_set( USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'DATA_EQUIVALENCE_INSPECTION_REPORT.INSPECTION_RESULT'  ) ) | ( NOT 
               a3ms_validate_element_types( re, SELF\data_equivalence_inspection_result.criterion_inspected ) ) ) ) 
               = 0 );
      wr3: ( SIZEOF( QUERY ( re <* bag_to_set( USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'DATA_EQUIVALENCE_INSPECTION_REPORT.INSPECTION_RESULT'  ) ) | ( NOT 
               a3ms_validate_detected_difference_types( re, SELF\data_equivalence_inspection_result.
               criterion_inspected ) ) ) ) = 0 );
      wr4: ( SIZEOF( QUERY ( re <* bag_to_set( USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'DATA_EQUIVALENCE_INSPECTION_REPORT.INSPECTION_RESULT'  ) ) | ( NOT 
               a3ms_validate_measured_type( re, SELF\data_equivalence_inspection_result.criterion_inspected ) ) ) ) 
               = 0 );
  END_ENTITY; -- a3ms_equivalence_inspection_result (line:6280 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eA3MS_EQUIVALENCE_INSPECTION_RESULT : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _a3ms_equivalence_inspection_result.self
    }
    public let partialEntity: _a3ms_equivalence_inspection_result

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eDATA_EQUIVALENCE_INSPECTION_RESULT: eDATA_EQUIVALENCE_INSPECTION_RESULT 	// [2]
    public var super_eA3MS_EQUIVALENCE_INSPECTION_RESULT: eA3MS_EQUIVALENCE_INSPECTION_RESULT { return self } 	// [3]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT REDEF__ attribute
    /// - origin: SELF( ``eA3MS_EQUIVALENCE_INSPECTION_RESULT`` )
    public var CRITERION_INSPECTED: eA3M_EQUIVALENCE_CRITERION_FOR_SHAPE {
      get {
        return SDAI.UNWRAP( eA3M_EQUIVALENCE_CRITERION_FOR_SHAPE( super_eDATA_EQUIVALENCE_INSPECTION_RESULT
          .partialEntity._criterion_inspected ) )
      }
      set(newValue) {
        let partial = super_eDATA_EQUIVALENCE_INSPECTION_RESULT.partialEntity
        partial._criterion_inspected = SDAI.UNWRAP(
          eDATA_EQUIVALENCE_CRITERION(newValue))
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
      guard let partial = complexEntity?.partialEntityInstance(_a3ms_equivalence_inspection_result.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eDATA_EQUIVALENCE_INSPECTION_RESULT.self) else { return nil }
      self.super_eDATA_EQUIVALENCE_INSPECTION_RESULT = super2

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
      result[prefix2 + " .WHERE_wr1"] = _a3ms_equivalence_inspection_result.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _a3ms_equivalence_inspection_result.WHERE_wr2(SELF: instance)
      result[prefix2 + " .WHERE_wr3"] = _a3ms_equivalence_inspection_result.WHERE_wr3(SELF: instance)
      result[prefix2 + " .WHERE_wr4"] = _a3ms_equivalence_inspection_result.WHERE_wr4(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "A3MS_EQUIVALENCE_INSPECTION_RESULT", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eDATA_EQUIVALENCE_INSPECTION_RESULT.self)
      entityDef.add(supertype: eA3MS_EQUIVALENCE_INSPECTION_RESULT.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "CRITERION_INSPECTED", keyPath: \eA3MS_EQUIVALENCE_INSPECTION_RESULT.CRITERION_INSPECTED, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eA3MS_EQUIVALENCE_INSPECTION_RESULT.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
