/* file: cartesian_complex_number_region.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY cartesian_complex_number_region
    SUBTYPE OF ( maths_space, generic_literal );
      real_constraint  : real_interval;
      imag_constraint  : real_interval;
    WHERE
      wr1: ( min_exists( real_constraint ) OR max_exists( real_constraint ) OR min_exists( imag_constraint ) 
               OR max_exists( imag_constraint ) );
  END_ENTITY; -- cartesian_complex_number_region (line:8855 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	generic_expression
    (no local attributes)

  SUPER- ENTITY(2)	maths_space
    (no local attributes)

  SUPER- ENTITY(3)	simple_generic_expression
    (no local attributes)

  SUPER- ENTITY(4)	generic_literal
    (no local attributes)

  ENTITY(SELF)	cartesian_complex_number_region
    ATTR:  real_constraint,	TYPE: real_interval -- EXPLICIT

    ATTR:  imag_constraint,	TYPE: real_interval -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _cartesian_complex_number_region : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eCARTESIAN_COMPLEX_NUMBER_REGION.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _real_constraint: sREAL_INTERVAL // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _imag_constraint: sREAL_INTERVAL // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._real_constraint.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._imag_constraint.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._real_constraint.value.isValueEqualOptionally(to: rhs._real_constraint.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._imag_constraint.value.isValueEqualOptionally(to: rhs._imag_constraint.value, visited: &comppairs)	{
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
      if let comp = self._real_constraint.value.isValueEqualOptionally(to: rhs._real_constraint.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._imag_constraint.value.isValueEqualOptionally(to: rhs._imag_constraint.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eCARTESIAN_COMPLEX_NUMBER_REGION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = MIN_EXISTS(eMATHS_SPACE(/*sREAL_INTERVAL*/SELF.REAL_CONSTRAINT))
      let _TEMP2 = MAX_EXISTS(eMATHS_SPACE(/*sREAL_INTERVAL*/SELF.REAL_CONSTRAINT))
      let _TEMP3 = _TEMP1 || _TEMP2
      let _TEMP4 = MIN_EXISTS(eMATHS_SPACE(/*sREAL_INTERVAL*/SELF.IMAG_CONSTRAINT))
      let _TEMP5 = _TEMP3 || _TEMP4
      let _TEMP6 = MAX_EXISTS(eMATHS_SPACE(/*sREAL_INTERVAL*/SELF.IMAG_CONSTRAINT))
      let _TEMP7 = _TEMP5 || _TEMP6
      return _TEMP7
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(REAL_CONSTRAINT: sREAL_INTERVAL, IMAG_CONSTRAINT: sREAL_INTERVAL) {
      self._real_constraint = REAL_CONSTRAINT
      self._imag_constraint = IMAG_CONSTRAINT
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: sREAL_INTERVAL.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: sREAL_INTERVAL.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( REAL_CONSTRAINT: p0, IMAG_CONSTRAINT: p1 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY cartesian_complex_number_region
    SUBTYPE OF ( maths_space, generic_literal );
      real_constraint  : real_interval;
      imag_constraint  : real_interval;
    WHERE
      wr1: ( min_exists( real_constraint ) OR max_exists( real_constraint ) OR min_exists( imag_constraint ) 
               OR max_exists( imag_constraint ) );
  END_ENTITY; -- cartesian_complex_number_region (line:8855 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eCARTESIAN_COMPLEX_NUMBER_REGION : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _cartesian_complex_number_region.self
    }
    public let partialEntity: _cartesian_complex_number_region

    //MARK: SUPERTYPES
    public let super_eGENERIC_EXPRESSION: eGENERIC_EXPRESSION 	// [1]
    public let super_eMATHS_SPACE: eMATHS_SPACE 	// [2]
    public let super_eSIMPLE_GENERIC_EXPRESSION: eSIMPLE_GENERIC_EXPRESSION 	// [3]
    public let super_eGENERIC_LITERAL: eGENERIC_LITERAL 	// [4]
    public var super_eCARTESIAN_COMPLEX_NUMBER_REGION: eCARTESIAN_COMPLEX_NUMBER_REGION { return self } 	// [5]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eCARTESIAN_COMPLEX_NUMBER_REGION`` )
    public var IMAG_CONSTRAINT: sREAL_INTERVAL {
      get {
        return SDAI.UNWRAP( self.partialEntity._imag_constraint )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._imag_constraint = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eCARTESIAN_COMPLEX_NUMBER_REGION`` )
    public var REAL_CONSTRAINT: sREAL_INTERVAL {
      get {
        return SDAI.UNWRAP( self.partialEntity._real_constraint )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._real_constraint = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_cartesian_complex_number_region.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eGENERIC_EXPRESSION.self) else { return nil }
      self.super_eGENERIC_EXPRESSION = super1

      guard let super2 = complexEntity?.entityReference(eMATHS_SPACE.self) else { return nil }
      self.super_eMATHS_SPACE = super2

      guard let super3 = complexEntity?.entityReference(eSIMPLE_GENERIC_EXPRESSION.self) else { return nil }
      self.super_eSIMPLE_GENERIC_EXPRESSION = super3

      guard let super4 = complexEntity?.entityReference(eGENERIC_LITERAL.self) else { return nil }
      self.super_eGENERIC_LITERAL = super4

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
      result[prefix2 + " .WHERE_wr1"] = _cartesian_complex_number_region.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "CARTESIAN_COMPLEX_NUMBER_REGION", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eGENERIC_EXPRESSION.self)
      entityDef.add(supertype: eMATHS_SPACE.self)
      entityDef.add(supertype: eSIMPLE_GENERIC_EXPRESSION.self)
      entityDef.add(supertype: eGENERIC_LITERAL.self)
      entityDef.add(supertype: eCARTESIAN_COMPLEX_NUMBER_REGION.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "IMAG_CONSTRAINT", keyPath: \eCARTESIAN_COMPLEX_NUMBER_REGION.IMAG_CONSTRAINT, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "REAL_CONSTRAINT", keyPath: \eCARTESIAN_COMPLEX_NUMBER_REGION.REAL_CONSTRAINT, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
