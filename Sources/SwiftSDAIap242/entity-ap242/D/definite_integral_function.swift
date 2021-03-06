/* file: definite_integral_function.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY definite_integral_function
    SUBTYPE OF ( maths_function, unary_generic_expression );
      SELF\unary_generic_expression.operand : maths_function;
      variable_of_integration         : input_selector;
      lower_limit_neg_infinity        : BOOLEAN;
      upper_limit_pos_infinity        : BOOLEAN;
    DERIVE
      integrand  : maths_function := SELF\unary_generic_expression.operand;
    WHERE
      wr1: space_is_continuum( integrand.range );
      wr2: definite_integral_check( integrand.domain, variable_of_integration, lower_limit_neg_infinity, 
               upper_limit_pos_infinity );
  END_ENTITY; -- definite_integral_function (line:11863 file:ap242ed2_mim_lf_v1.101.TY.exp)

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


  SUPER- ENTITY(3)	unary_generic_expression
    ATTR:  operand,	TYPE: generic_expression -- EXPLICIT
      -- possibly overriden by
          ENTITY: linearized_table_function,	TYPE: maths_function
          ENTITY: restriction_function,	TYPE: maths_space
          ENTITY: repackaging_function,	TYPE: maths_function
          ENTITY: not_expression,	TYPE: boolean_expression
          ENTITY: value_function,	TYPE: string_expression
          ENTITY: reindexed_array_function,	TYPE: maths_function
          ENTITY: homogeneous_linear_function,	TYPE: maths_function
          ENTITY: b_spline_function,	TYPE: maths_function
          ENTITY: length_function,	TYPE: string_expression
          ENTITY: partial_derivative_function,	TYPE: maths_function
          ENTITY: odd_function,	TYPE: numeric_expression
          ENTITY: rationalize_function,	TYPE: maths_function
          ENTITY: general_linear_function,	TYPE: maths_function
          ENTITY: unary_numeric_expression,	TYPE: numeric_expression
      *** ENTITY: definite_integral_function,	TYPE: maths_function


  ENTITY(SELF)	definite_integral_function
    REDCR: operand,	TYPE: maths_function -- EXPLICIT
      -- OVERRIDING ENTITY: unary_generic_expression

    ATTR:  variable_of_integration,	TYPE: input_selector -- EXPLICIT

    ATTR:  lower_limit_neg_infinity,	TYPE: BOOLEAN -- EXPLICIT

    ATTR:  upper_limit_pos_infinity,	TYPE: BOOLEAN -- EXPLICIT

    ATTR:  integrand,	TYPE: maths_function -- DERIVED
      := SELF\unary_generic_expression.operand


*/


//MARK: - Partial Entity
  public final class _definite_integral_function : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eDEFINITE_INTEGRAL_FUNCTION.self
    }

    //ATTRIBUTES
    /* override var _operand: eMATHS_FUNCTION	//EXPLICIT REDEFINITION(eUNARY_GENERIC_EXPRESSION) */

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _variable_of_integration: tINPUT_SELECTOR // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _lower_limit_neg_infinity: SDAI.BOOLEAN // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _upper_limit_pos_infinity: SDAI.BOOLEAN // PLAIN EXPLICIT ATTRIBUTE

    /// DERIVE ATTRIBUTE
    internal func _integrand__getter(SELF: eDEFINITE_INTEGRAL_FUNCTION) -> eMATHS_FUNCTION?  {

      let _TEMP1 = SELF.GROUP_REF(eUNARY_GENERIC_EXPRESSION.self)
      let _TEMP2 = _TEMP1?.OPERAND
      return eMATHS_FUNCTION(/*eGENERIC_EXPRESSION*/_TEMP2)
    }

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._variable_of_integration.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._lower_limit_neg_infinity.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._upper_limit_pos_infinity.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._variable_of_integration.value.isValueEqualOptionally(to: rhs._variable_of_integration.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._lower_limit_neg_infinity.value.isValueEqualOptionally(to: rhs._lower_limit_neg_infinity.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._upper_limit_pos_infinity.value.isValueEqualOptionally(to: rhs._upper_limit_pos_infinity.value, visited: &comppairs)	{
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
      if let comp = self._variable_of_integration.value.isValueEqualOptionally(to: rhs._variable_of_integration.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._lower_limit_neg_infinity.value.isValueEqualOptionally(to: rhs._lower_limit_neg_infinity.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._upper_limit_pos_infinity.value.isValueEqualOptionally(to: rhs._upper_limit_pos_infinity.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eDEFINITE_INTEGRAL_FUNCTION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.INTEGRAND?.RANGE
      let _TEMP2 = SPACE_IS_CONTINUUM(eMATHS_SPACE(/*sTUPLE_SPACE*/_TEMP1))
      return SDAI.LOGICAL(_TEMP2)
    }
    public static func WHERE_wr2(SELF: eDEFINITE_INTEGRAL_FUNCTION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.INTEGRAND?.DOMAIN
      let _TEMP2 = DEFINITE_INTEGRAL_CHECK(
        DOMAIN: _TEMP1, VRBLINT: SELF.VARIABLE_OF_INTEGRATION, 
        LOWERINF: SELF.LOWER_LIMIT_NEG_INFINITY, 
        UPPERINF: SELF.UPPER_LIMIT_POS_INFINITY)
      return SDAI.LOGICAL(_TEMP2)
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(VARIABLE_OF_INTEGRATION: tINPUT_SELECTOR, LOWER_LIMIT_NEG_INFINITY: SDAI.BOOLEAN, 
                UPPER_LIMIT_POS_INFINITY: SDAI.BOOLEAN) {
      self._variable_of_integration = VARIABLE_OF_INTEGRATION
      self._lower_limit_neg_infinity = LOWER_LIMIT_NEG_INFINITY
      self._upper_limit_pos_infinity = UPPER_LIMIT_POS_INFINITY
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 3
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: tINPUT_SELECTOR.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: SDAI.BOOLEAN.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p2) = exchangeStructure.recoverRequiredParameter(as: SDAI.BOOLEAN.self, from: parameters[2])
      else { exchangeStructure.add(errorContext: "while recovering parameter #2 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( VARIABLE_OF_INTEGRATION: p0, LOWER_LIMIT_NEG_INFINITY: p1, UPPER_LIMIT_POS_INFINITY: p2 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY definite_integral_function
    SUBTYPE OF ( maths_function, unary_generic_expression );
      SELF\unary_generic_expression.operand : maths_function;
      variable_of_integration         : input_selector;
      lower_limit_neg_infinity        : BOOLEAN;
      upper_limit_pos_infinity        : BOOLEAN;
    DERIVE
      integrand  : maths_function := SELF\unary_generic_expression.operand;
    WHERE
      wr1: space_is_continuum( integrand.range );
      wr2: definite_integral_check( integrand.domain, variable_of_integration, lower_limit_neg_infinity, 
               upper_limit_pos_infinity );
  END_ENTITY; -- definite_integral_function (line:11863 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eDEFINITE_INTEGRAL_FUNCTION : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _definite_integral_function.self
    }
    public let partialEntity: _definite_integral_function

    //MARK: SUPERTYPES
    public let super_eGENERIC_EXPRESSION: eGENERIC_EXPRESSION 	// [1]
    public let super_eMATHS_FUNCTION: eMATHS_FUNCTION 	// [2]
    public let super_eUNARY_GENERIC_EXPRESSION: eUNARY_GENERIC_EXPRESSION 	// [3]
    public var super_eDEFINITE_INTEGRAL_FUNCTION: eDEFINITE_INTEGRAL_FUNCTION { return self } 	// [4]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eDEFINITE_INTEGRAL_FUNCTION`` )
    public var VARIABLE_OF_INTEGRATION: tINPUT_SELECTOR {
      get {
        return SDAI.UNWRAP( self.partialEntity._variable_of_integration )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._variable_of_integration = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SELF( ``eDEFINITE_INTEGRAL_FUNCTION`` )
    public var INTEGRAND: eMATHS_FUNCTION?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"INTEGRAND") {
          return cached.value as! eMATHS_FUNCTION? 
        }
        let origin = self
        let value = origin.partialEntity._integrand__getter(SELF: origin)
        updateCache(derivedAttributeName:"INTEGRAND", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eDEFINITE_INTEGRAL_FUNCTION`` )
    public var UPPER_LIMIT_POS_INFINITY: SDAI.BOOLEAN {
      get {
        return SDAI.UNWRAP( self.partialEntity._upper_limit_pos_infinity )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._upper_limit_pos_infinity = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SELF( ``eDEFINITE_INTEGRAL_FUNCTION`` )
    public var OPERAND: eMATHS_FUNCTION {
      get {
        return SDAI.UNWRAP( eMATHS_FUNCTION( super_eUNARY_GENERIC_EXPRESSION.partialEntity._operand ) )
      }
      set(newValue) {
        let partial = super_eUNARY_GENERIC_EXPRESSION.partialEntity
        partial._operand = SDAI.UNWRAP(
          eGENERIC_EXPRESSION(newValue))
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eDEFINITE_INTEGRAL_FUNCTION`` )
    public var LOWER_LIMIT_NEG_INFINITY: SDAI.BOOLEAN {
      get {
        return SDAI.UNWRAP( self.partialEntity._lower_limit_neg_infinity )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._lower_limit_neg_infinity = SDAI.UNWRAP(newValue)
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
      guard let partial = complexEntity?.partialEntityInstance(_definite_integral_function.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eGENERIC_EXPRESSION.self) else { return nil }
      self.super_eGENERIC_EXPRESSION = super1

      guard let super2 = complexEntity?.entityReference(eMATHS_FUNCTION.self) else { return nil }
      self.super_eMATHS_FUNCTION = super2

      guard let super3 = complexEntity?.entityReference(eUNARY_GENERIC_EXPRESSION.self) else { return nil }
      self.super_eUNARY_GENERIC_EXPRESSION = super3

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
      result[prefix2 + " .WHERE_wr1"] = _definite_integral_function.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _definite_integral_function.WHERE_wr2(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "DEFINITE_INTEGRAL_FUNCTION", type: self, explicitAttributeCount: 3)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eGENERIC_EXPRESSION.self)
      entityDef.add(supertype: eMATHS_FUNCTION.self)
      entityDef.add(supertype: eUNARY_GENERIC_EXPRESSION.self)
      entityDef.add(supertype: eDEFINITE_INTEGRAL_FUNCTION.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "VARIABLE_OF_INTEGRATION", keyPath: \eDEFINITE_INTEGRAL_FUNCTION.VARIABLE_OF_INTEGRATION, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "INTEGRAND", keyPath: \eDEFINITE_INTEGRAL_FUNCTION.INTEGRAND, 
        kind: .derived, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "UPPER_LIMIT_POS_INFINITY", keyPath: \eDEFINITE_INTEGRAL_FUNCTION.UPPER_LIMIT_POS_INFINITY, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "OPERAND", keyPath: \eDEFINITE_INTEGRAL_FUNCTION.OPERAND, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "LOWER_LIMIT_NEG_INFINITY", keyPath: \eDEFINITE_INTEGRAL_FUNCTION.LOWER_LIMIT_NEG_INFINITY, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DOMAIN", keyPath: \eDEFINITE_INTEGRAL_FUNCTION.DOMAIN, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RANGE", keyPath: \eDEFINITE_INTEGRAL_FUNCTION.RANGE, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
