/* file: repackaging_function.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY repackaging_function
    SUBTYPE OF ( maths_function, unary_generic_expression );
      SELF\unary_generic_expression.operand : maths_function;
      input_repack                    : repackage_options;
      output_repack                   : repackage_options;
      selected_output                 : nonnegative_integer;
    WHERE
      wr1: ( ( input_repack <> ro_wrap_as_tuple ) OR ( ( space_dimension( operand.domain ) = 1 ) AND ( ( 
               schema_prefix + 'TUPLE_SPACE' ) IN TYPEOF( factor1( operand.domain ) ) ) ) );
      wr2: ( ( output_repack <> ro_unwrap_tuple ) OR ( ( space_dimension( operand.range ) = 1 ) AND ( ( 
               schema_prefix + 'TUPLE_SPACE' ) IN TYPEOF( factor1( operand.range ) ) ) ) );
      wr3: ( selected_output <= space_dimension( repackage( operand.range, output_repack ) ) );
  END_ENTITY; -- repackaging_function (line:27365 file:ap242ed2_mim_lf_v1.101.TY.exp)

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
      *** ENTITY: repackaging_function,	TYPE: maths_function
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
          ENTITY: definite_integral_function,	TYPE: maths_function


  ENTITY(SELF)	repackaging_function
    REDCR: operand,	TYPE: maths_function -- EXPLICIT
      -- OVERRIDING ENTITY: unary_generic_expression

    ATTR:  input_repack,	TYPE: repackage_options -- EXPLICIT

    ATTR:  output_repack,	TYPE: repackage_options -- EXPLICIT

    ATTR:  selected_output,	TYPE: nonnegative_integer -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _repackaging_function : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eREPACKAGING_FUNCTION.self
    }

    //ATTRIBUTES
    /* override var _operand: eMATHS_FUNCTION	//EXPLICIT REDEFINITION(eUNARY_GENERIC_EXPRESSION) */

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _input_repack: nREPACKAGE_OPTIONS // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _output_repack: nREPACKAGE_OPTIONS // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _selected_output: tNONNEGATIVE_INTEGER // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._input_repack.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._output_repack.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._selected_output.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._input_repack.value.isValueEqualOptionally(to: rhs._input_repack.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._output_repack.value.isValueEqualOptionally(to: rhs._output_repack.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._selected_output.value.isValueEqualOptionally(to: rhs._selected_output.value, visited: &comppairs)	{
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
      if let comp = self._input_repack.value.isValueEqualOptionally(to: rhs._input_repack.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._output_repack.value.isValueEqualOptionally(to: rhs._output_repack.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._selected_output.value.isValueEqualOptionally(to: rhs._selected_output.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eREPACKAGING_FUNCTION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.FORCE_OPTIONAL(SELF.INPUT_REPACK) .!=. SDAI.FORCE_OPTIONAL(RO_WRAP_AS_TUPLE)
      let _TEMP2 = SELF.OPERAND.DOMAIN
      let _TEMP3 = SPACE_DIMENSION(_TEMP2)
      let _TEMP4 = _TEMP3 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      let _TEMP5 = SDAI.FORCE_OPTIONAL(SCHEMA_PREFIX) + SDAI.FORCE_OPTIONAL(SDAI.STRING("TUPLE_SPACE"))
      let _TEMP6 = SELF.OPERAND.DOMAIN
      let _TEMP7 = FACTOR1(_TEMP6)
      let _TEMP8 = SDAI.TYPEOF(_TEMP7)
      let _TEMP9 = SDAI.aggregate(_TEMP8, contains: _TEMP5)
      let _TEMP10 = _TEMP4 && _TEMP9
      let _TEMP11 = _TEMP1 || _TEMP10
      return _TEMP11
    }
    public static func WHERE_wr2(SELF: eREPACKAGING_FUNCTION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.FORCE_OPTIONAL(SELF.OUTPUT_REPACK) .!=. SDAI.FORCE_OPTIONAL(RO_UNWRAP_TUPLE)
      let _TEMP2 = SELF.OPERAND.RANGE
      let _TEMP3 = SPACE_DIMENSION(_TEMP2)
      let _TEMP4 = _TEMP3 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      let _TEMP5 = SDAI.FORCE_OPTIONAL(SCHEMA_PREFIX) + SDAI.FORCE_OPTIONAL(SDAI.STRING("TUPLE_SPACE"))
      let _TEMP6 = SELF.OPERAND.RANGE
      let _TEMP7 = FACTOR1(_TEMP6)
      let _TEMP8 = SDAI.TYPEOF(_TEMP7)
      let _TEMP9 = SDAI.aggregate(_TEMP8, contains: _TEMP5)
      let _TEMP10 = _TEMP4 && _TEMP9
      let _TEMP11 = _TEMP1 || _TEMP10
      return _TEMP11
    }
    public static func WHERE_wr3(SELF: eREPACKAGING_FUNCTION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.OPERAND.RANGE
      let _TEMP2 = REPACKAGE(TSPACE: _TEMP1, 
                             REPCKG: SELF.OUTPUT_REPACK)
      let _TEMP3 = SPACE_DIMENSION(_TEMP2)
      let _TEMP4 = SDAI.FORCE_OPTIONAL(SELF.SELECTED_OUTPUT) <= _TEMP3
      return _TEMP4
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(INPUT_REPACK: nREPACKAGE_OPTIONS, OUTPUT_REPACK: nREPACKAGE_OPTIONS, 
                SELECTED_OUTPUT: tNONNEGATIVE_INTEGER) {
      self._input_repack = INPUT_REPACK
      self._output_repack = OUTPUT_REPACK
      self._selected_output = SELECTED_OUTPUT
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 3
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: nREPACKAGE_OPTIONS.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: nREPACKAGE_OPTIONS.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p2) = exchangeStructure.recoverRequiredParameter(as: tNONNEGATIVE_INTEGER.self, from: parameters[2])
      else { exchangeStructure.add(errorContext: "while recovering parameter #2 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( INPUT_REPACK: p0, OUTPUT_REPACK: p1, SELECTED_OUTPUT: p2 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY repackaging_function
    SUBTYPE OF ( maths_function, unary_generic_expression );
      SELF\unary_generic_expression.operand : maths_function;
      input_repack                    : repackage_options;
      output_repack                   : repackage_options;
      selected_output                 : nonnegative_integer;
    WHERE
      wr1: ( ( input_repack <> ro_wrap_as_tuple ) OR ( ( space_dimension( operand.domain ) = 1 ) AND ( ( 
               schema_prefix + 'TUPLE_SPACE' ) IN TYPEOF( factor1( operand.domain ) ) ) ) );
      wr2: ( ( output_repack <> ro_unwrap_tuple ) OR ( ( space_dimension( operand.range ) = 1 ) AND ( ( 
               schema_prefix + 'TUPLE_SPACE' ) IN TYPEOF( factor1( operand.range ) ) ) ) );
      wr3: ( selected_output <= space_dimension( repackage( operand.range, output_repack ) ) );
  END_ENTITY; -- repackaging_function (line:27365 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eREPACKAGING_FUNCTION : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _repackaging_function.self
    }
    public let partialEntity: _repackaging_function

    //MARK: SUPERTYPES
    public let super_eGENERIC_EXPRESSION: eGENERIC_EXPRESSION 	// [1]
    public let super_eMATHS_FUNCTION: eMATHS_FUNCTION 	// [2]
    public let super_eUNARY_GENERIC_EXPRESSION: eUNARY_GENERIC_EXPRESSION 	// [3]
    public var super_eREPACKAGING_FUNCTION: eREPACKAGING_FUNCTION { return self } 	// [4]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eREPACKAGING_FUNCTION`` )
    public var INPUT_REPACK: nREPACKAGE_OPTIONS {
      get {
        return SDAI.UNWRAP( self.partialEntity._input_repack )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._input_repack = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SELF( ``eREPACKAGING_FUNCTION`` )
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
    /// - origin: SELF( ``eREPACKAGING_FUNCTION`` )
    public var SELECTED_OUTPUT: tNONNEGATIVE_INTEGER {
      get {
        return SDAI.UNWRAP( self.partialEntity._selected_output )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._selected_output = SDAI.UNWRAP(newValue)
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

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eREPACKAGING_FUNCTION`` )
    public var OUTPUT_REPACK: nREPACKAGE_OPTIONS {
      get {
        return SDAI.UNWRAP( self.partialEntity._output_repack )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._output_repack = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_repackaging_function.self) else { return nil }
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
      result[prefix2 + " .WHERE_wr1"] = _repackaging_function.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _repackaging_function.WHERE_wr2(SELF: instance)
      result[prefix2 + " .WHERE_wr3"] = _repackaging_function.WHERE_wr3(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "REPACKAGING_FUNCTION", type: self, explicitAttributeCount: 3)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eGENERIC_EXPRESSION.self)
      entityDef.add(supertype: eMATHS_FUNCTION.self)
      entityDef.add(supertype: eUNARY_GENERIC_EXPRESSION.self)
      entityDef.add(supertype: eREPACKAGING_FUNCTION.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "INPUT_REPACK", keyPath: \eREPACKAGING_FUNCTION.INPUT_REPACK, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "OPERAND", keyPath: \eREPACKAGING_FUNCTION.OPERAND, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "SELECTED_OUTPUT", keyPath: \eREPACKAGING_FUNCTION.SELECTED_OUTPUT, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DOMAIN", keyPath: \eREPACKAGING_FUNCTION.DOMAIN, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RANGE", keyPath: \eREPACKAGING_FUNCTION.RANGE, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "OUTPUT_REPACK", keyPath: \eREPACKAGING_FUNCTION.OUTPUT_REPACK, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
