/* file: partial_derivative_function.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY partial_derivative_function
    SUBTYPE OF ( maths_function, unary_generic_expression );
      SELF\unary_generic_expression.operand : maths_function;
      d_variables                     : LIST [1 : ?] OF input_selector;
      extension                       : extension_options;
    DERIVE
      derivand  : maths_function := SELF\unary_generic_expression.operand;
    WHERE
      wr1: space_is_continuum( derivand.range );
      wr2: partial_derivative_check( derivand.domain, d_variables );
  END_ENTITY; -- partial_derivative_function (line:23599 file:ap242ed2_mim_lf_v1.101.TY.exp)

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
      *** ENTITY: partial_derivative_function,	TYPE: maths_function
          ENTITY: odd_function,	TYPE: numeric_expression
          ENTITY: rationalize_function,	TYPE: maths_function
          ENTITY: general_linear_function,	TYPE: maths_function
          ENTITY: unary_numeric_expression,	TYPE: numeric_expression
          ENTITY: definite_integral_function,	TYPE: maths_function


  ENTITY(SELF)	partial_derivative_function
    REDCR: operand,	TYPE: maths_function -- EXPLICIT
      -- OVERRIDING ENTITY: unary_generic_expression

    ATTR:  d_variables,	TYPE: LIST [1 : ?] OF input_selector -- EXPLICIT

    ATTR:  extension,	TYPE: extension_options -- EXPLICIT

    ATTR:  derivand,	TYPE: maths_function -- DERIVED
      := SELF\unary_generic_expression.operand


*/


//MARK: - Partial Entity
  public final class _partial_derivative_function : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      ePARTIAL_DERIVATIVE_FUNCTION.self
    }

    //ATTRIBUTES
    /* override var _operand: eMATHS_FUNCTION	//EXPLICIT REDEFINITION(eUNARY_GENERIC_EXPRESSION) */

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _d_variables: SDAI.LIST<tINPUT_SELECTOR>/*[1:nil]*/  // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _extension: nEXTENSION_OPTIONS // PLAIN EXPLICIT ATTRIBUTE

    /// DERIVE ATTRIBUTE
    internal func _derivand__getter(SELF: ePARTIAL_DERIVATIVE_FUNCTION) -> eMATHS_FUNCTION?  {

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
      self._d_variables.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._extension.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._d_variables.value.isValueEqualOptionally(to: rhs._d_variables.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._extension.value.isValueEqualOptionally(to: rhs._extension.value, visited: &comppairs)	{
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
      if let comp = self._d_variables.value.isValueEqualOptionally(to: rhs._d_variables.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._extension.value.isValueEqualOptionally(to: rhs._extension.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: ePARTIAL_DERIVATIVE_FUNCTION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.DERIVAND?.RANGE
      let _TEMP2 = SPACE_IS_CONTINUUM(eMATHS_SPACE(/*sTUPLE_SPACE*/_TEMP1))
      return SDAI.LOGICAL(/*SDAI.BOOLEAN*/_TEMP2)
    }
    public static func WHERE_wr2(SELF: ePARTIAL_DERIVATIVE_FUNCTION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.DERIVAND?.DOMAIN
      let _TEMP2 = PARTIAL_DERIVATIVE_CHECK(
        DOMAIN: _TEMP1, D_VARS: SELF.D_VARIABLES)
      return SDAI.LOGICAL(/*SDAI.BOOLEAN*/_TEMP2)
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(D_VARIABLES: SDAI.LIST<tINPUT_SELECTOR>/*[1:nil]*/ , EXTENSION: nEXTENSION_OPTIONS) {
      self._d_variables = D_VARIABLES
      self._extension = EXTENSION
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: SDAI.LIST<tINPUT_SELECTOR>.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: nEXTENSION_OPTIONS.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( D_VARIABLES: p0, EXTENSION: p1 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY partial_derivative_function
    SUBTYPE OF ( maths_function, unary_generic_expression );
      SELF\unary_generic_expression.operand : maths_function;
      d_variables                     : LIST [1 : ?] OF input_selector;
      extension                       : extension_options;
    DERIVE
      derivand  : maths_function := SELF\unary_generic_expression.operand;
    WHERE
      wr1: space_is_continuum( derivand.range );
      wr2: partial_derivative_check( derivand.domain, d_variables );
  END_ENTITY; -- partial_derivative_function (line:23599 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class ePARTIAL_DERIVATIVE_FUNCTION : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _partial_derivative_function.self
    }
    public let partialEntity: _partial_derivative_function

    //MARK: SUPERTYPES
    public let super_eGENERIC_EXPRESSION: eGENERIC_EXPRESSION 	// [1]
    public let super_eMATHS_FUNCTION: eMATHS_FUNCTION 	// [2]
    public let super_eUNARY_GENERIC_EXPRESSION: eUNARY_GENERIC_EXPRESSION 	// [3]
    public var super_ePARTIAL_DERIVATIVE_FUNCTION: ePARTIAL_DERIVATIVE_FUNCTION { return self } 	// [4]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``ePARTIAL_DERIVATIVE_FUNCTION`` )
    public var EXTENSION: nEXTENSION_OPTIONS {
      get {
        return SDAI.UNWRAP( self.partialEntity._extension )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._extension = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SELF( ``ePARTIAL_DERIVATIVE_FUNCTION`` )
    public var DERIVAND: eMATHS_FUNCTION?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"DERIVAND") {
          return cached.value as! eMATHS_FUNCTION? 
        }
        let origin = self
        let value = origin.partialEntity._derivand__getter(SELF: origin)
        updateCache(derivedAttributeName:"DERIVAND", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``ePARTIAL_DERIVATIVE_FUNCTION`` )
    public var D_VARIABLES: SDAI.LIST<tINPUT_SELECTOR>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._d_variables )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._d_variables = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SELF( ``ePARTIAL_DERIVATIVE_FUNCTION`` )
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
      guard let partial = complexEntity?.partialEntityInstance(_partial_derivative_function.self) else { return nil }
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
      result[prefix2 + " .WHERE_wr1"] = _partial_derivative_function.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _partial_derivative_function.WHERE_wr2(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "PARTIAL_DERIVATIVE_FUNCTION", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eGENERIC_EXPRESSION.self)
      entityDef.add(supertype: eMATHS_FUNCTION.self)
      entityDef.add(supertype: eUNARY_GENERIC_EXPRESSION.self)
      entityDef.add(supertype: ePARTIAL_DERIVATIVE_FUNCTION.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "EXTENSION", keyPath: \ePARTIAL_DERIVATIVE_FUNCTION.EXTENSION, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DERIVAND", keyPath: \ePARTIAL_DERIVATIVE_FUNCTION.DERIVAND, 
        kind: .derived, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "D_VARIABLES", keyPath: \ePARTIAL_DERIVATIVE_FUNCTION.D_VARIABLES, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "OPERAND", keyPath: \ePARTIAL_DERIVATIVE_FUNCTION.OPERAND, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DOMAIN", keyPath: \ePARTIAL_DERIVATIVE_FUNCTION.DOMAIN, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RANGE", keyPath: \ePARTIAL_DERIVATIVE_FUNCTION.RANGE, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}