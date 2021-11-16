/* file: b_spline_basis.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY b_spline_basis
    SUBTYPE OF ( maths_function, generic_literal );
      degree          : nonnegative_integer;
      repeated_knots  : LIST [2 : ?] OF REAL;
    DERIVE
      order      : positive_integer := degree + 1;
      num_basis  : positive_integer := SIZEOF( repeated_knots ) - order;
    WHERE
      wr1: ( num_basis >= order );
      wr2: nondecreasing( repeated_knots );
      wr3: ( repeated_knots[order] < repeated_knots[num_basis + 1] );
  END_ENTITY; -- b_spline_basis (line:7685 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	generic_expression
    (no local attributes)

  SUPER- ENTITY(2)	maths_function
    ATTR:  domain,	TYPE: tuple_space -- DERIVED
      := derive_function_domain( SELF )

    ATTR:  range,	TYPE: tuple_space -- DERIVED
      := derive_function_range( SELF )


  SUPER- ENTITY(3)	simple_generic_expression
    (no local attributes)

  SUPER- ENTITY(4)	generic_literal
    (no local attributes)

  ENTITY(SELF)	b_spline_basis
    ATTR:  degree,	TYPE: nonnegative_integer -- EXPLICIT

    ATTR:  repeated_knots,	TYPE: LIST [2 : ?] OF REAL -- EXPLICIT

    ATTR:  order,	TYPE: positive_integer -- DERIVED
      := degree + 1

    ATTR:  num_basis,	TYPE: positive_integer -- DERIVED
      := SIZEOF( repeated_knots ) - order


*/


//MARK: - Partial Entity
  public final class _b_spline_basis : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eB_SPLINE_BASIS.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _degree: tNONNEGATIVE_INTEGER // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _repeated_knots: SDAI.LIST<SDAI.REAL>/*[2:nil]*/  // PLAIN EXPLICIT ATTRIBUTE

    /// DERIVE ATTRIBUTE
    internal func _order__getter(SELF: eB_SPLINE_BASIS) -> tPOSITIVE_INTEGER?  {

      let _TEMP1 = SDAI.FORCE_OPTIONAL(SELF.DEGREE) + SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      return tPOSITIVE_INTEGER(/*SDAI.INTEGER*/_TEMP1)
    }

    /// DERIVE ATTRIBUTE
    internal func _num_basis__getter(SELF: eB_SPLINE_BASIS) -> tPOSITIVE_INTEGER?  {

      let _TEMP1 = SDAI.SIZEOF(SELF.REPEATED_KNOTS)
      let _TEMP2 = _TEMP1 - SELF.ORDER
      return tPOSITIVE_INTEGER(/*SDAI.INTEGER*/_TEMP2)
    }

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._degree.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._repeated_knots.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._degree.value.isValueEqualOptionally(to: rhs._degree.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._repeated_knots.value.isValueEqualOptionally(to: rhs._repeated_knots.value, visited: &comppairs)	{
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
      if let comp = self._degree.value.isValueEqualOptionally(to: rhs._degree.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._repeated_knots.value.isValueEqualOptionally(to: rhs._repeated_knots.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eB_SPLINE_BASIS?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.NUM_BASIS >= SELF.ORDER
      return _TEMP1
    }
    public static func WHERE_wr2(SELF: eB_SPLINE_BASIS?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = NONDECREASING(SDAI.LIST<SDAI.REAL>(/*SDAI.LIST<SDAI.REAL>[2:nil] */SELF.REPEATED_KNOTS))
      return SDAI.LOGICAL(_TEMP1)
    }
    public static func WHERE_wr3(SELF: eB_SPLINE_BASIS?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.REPEATED_KNOTS[SELF.ORDER]
      let _TEMP2 = SELF.NUM_BASIS + SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      let _TEMP3 = SELF.REPEATED_KNOTS[_TEMP2]
      let _TEMP4 = _TEMP1 < _TEMP3
      return _TEMP4
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(DEGREE: tNONNEGATIVE_INTEGER, REPEATED_KNOTS: SDAI.LIST<SDAI.REAL>/*[2:nil]*/ ) {
      self._degree = DEGREE
      self._repeated_knots = REPEATED_KNOTS
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: tNONNEGATIVE_INTEGER.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: SDAI.LIST<SDAI.REAL>.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( DEGREE: p0, REPEATED_KNOTS: p1 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY b_spline_basis
    SUBTYPE OF ( maths_function, generic_literal );
      degree          : nonnegative_integer;
      repeated_knots  : LIST [2 : ?] OF REAL;
    DERIVE
      order      : positive_integer := degree + 1;
      num_basis  : positive_integer := SIZEOF( repeated_knots ) - order;
    WHERE
      wr1: ( num_basis >= order );
      wr2: nondecreasing( repeated_knots );
      wr3: ( repeated_knots[order] < repeated_knots[num_basis + 1] );
  END_ENTITY; -- b_spline_basis (line:7685 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eB_SPLINE_BASIS : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _b_spline_basis.self
    }
    public let partialEntity: _b_spline_basis

    //MARK: SUPERTYPES
    public let super_eGENERIC_EXPRESSION: eGENERIC_EXPRESSION 	// [1]
    public let super_eMATHS_FUNCTION: eMATHS_FUNCTION 	// [2]
    public let super_eSIMPLE_GENERIC_EXPRESSION: eSIMPLE_GENERIC_EXPRESSION 	// [3]
    public let super_eGENERIC_LITERAL: eGENERIC_LITERAL 	// [4]
    public var super_eB_SPLINE_BASIS: eB_SPLINE_BASIS { return self } 	// [5]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eB_SPLINE_BASIS`` )
    public var REPEATED_KNOTS: SDAI.LIST<SDAI.REAL>/*[2:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._repeated_knots )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._repeated_knots = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eB_SPLINE_BASIS`` )
    public var DEGREE: tNONNEGATIVE_INTEGER {
      get {
        return SDAI.UNWRAP( self.partialEntity._degree )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._degree = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SELF( ``eB_SPLINE_BASIS`` )
    public var ORDER: tPOSITIVE_INTEGER?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"ORDER") {
          return cached.value as! tPOSITIVE_INTEGER? 
        }
        let origin = self
        let value = origin.partialEntity._order__getter(SELF: origin)
        updateCache(derivedAttributeName:"ORDER", value:value)
        return value
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SELF( ``eB_SPLINE_BASIS`` )
    public var NUM_BASIS: tPOSITIVE_INTEGER?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"NUM_BASIS") {
          return cached.value as! tPOSITIVE_INTEGER? 
        }
        let origin = self
        let value = origin.partialEntity._num_basis__getter(SELF: origin)
        updateCache(derivedAttributeName:"NUM_BASIS", value:value)
        return value
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eMATHS_FUNCTION`` )
    public var DOMAIN: sTUPLE_SPACE?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"DOMAIN") {
          return cached.value as! sTUPLE_SPACE? 
        }
        let origin = super_eMATHS_FUNCTION
        let value = sTUPLE_SPACE(origin.partialEntity._domain__getter(SELF: origin))
        updateCache(derivedAttributeName:"DOMAIN", value:value)
        return value
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eMATHS_FUNCTION`` )
    public var RANGE: sTUPLE_SPACE?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"RANGE") {
          return cached.value as! sTUPLE_SPACE? 
        }
        let origin = super_eMATHS_FUNCTION
        let value = sTUPLE_SPACE(origin.partialEntity._range__getter(SELF: origin))
        updateCache(derivedAttributeName:"RANGE", value:value)
        return value
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_b_spline_basis.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eGENERIC_EXPRESSION.self) else { return nil }
      self.super_eGENERIC_EXPRESSION = super1

      guard let super2 = complexEntity?.entityReference(eMATHS_FUNCTION.self) else { return nil }
      self.super_eMATHS_FUNCTION = super2

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
      result[prefix2 + " .WHERE_wr1"] = _b_spline_basis.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _b_spline_basis.WHERE_wr2(SELF: instance)
      result[prefix2 + " .WHERE_wr3"] = _b_spline_basis.WHERE_wr3(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "B_SPLINE_BASIS", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eGENERIC_EXPRESSION.self)
      entityDef.add(supertype: eMATHS_FUNCTION.self)
      entityDef.add(supertype: eSIMPLE_GENERIC_EXPRESSION.self)
      entityDef.add(supertype: eGENERIC_LITERAL.self)
      entityDef.add(supertype: eB_SPLINE_BASIS.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "REPEATED_KNOTS", keyPath: \eB_SPLINE_BASIS.REPEATED_KNOTS, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DEGREE", keyPath: \eB_SPLINE_BASIS.DEGREE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ORDER", keyPath: \eB_SPLINE_BASIS.ORDER, 
        kind: .derived, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NUM_BASIS", keyPath: \eB_SPLINE_BASIS.NUM_BASIS, 
        kind: .derived, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DOMAIN", keyPath: \eB_SPLINE_BASIS.DOMAIN, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RANGE", keyPath: \eB_SPLINE_BASIS.RANGE, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
