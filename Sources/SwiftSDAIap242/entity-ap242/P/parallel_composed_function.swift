/* file: parallel_composed_function.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY parallel_composed_function
    SUBTYPE OF ( maths_function, multiple_arity_generic_expression );
      source_of_domain  : maths_space_or_function;
      prep_functions    : LIST [1 : ?] OF maths_function;
      final_function    : maths_function_select;
    DERIVE
      SELF\multiple_arity_generic_expression.operands : LIST [2 : ?] OF generic_expression := 
                                          convert_to_operands_prcmfn( source_of_domain, prep_functions, 
                                          final_function );
    WHERE
      wr1: no_cyclic_domain_reference( source_of_domain, [SELF] );
      wr2: expression_is_constant( domain_from( source_of_domain ) );
      wr3: parallel_composed_function_domain_check( domain_from( source_of_domain ), prep_functions );
      wr4: parallel_composed_function_composability_check( prep_functions, final_function );
  END_ENTITY; -- parallel_composed_function (line:23447 file:ap242ed2_mim_lf_v1.101.TY.exp)

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


  SUPER- ENTITY(3)	multiple_arity_generic_expression
    ATTR:  operands,	TYPE: LIST [2 : ?] OF generic_expression -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: series_composed_function,	TYPE: LIST [2 : ?] OF maths_function
          ENTITY: concat_expression,	TYPE: LIST [2 : ?] OF string_expression
          ENTITY: multiple_arity_numeric_expression,	TYPE: LIST [2 : ?] OF numeric_expression
          ENTITY: multiple_arity_boolean_expression,	TYPE: LIST [2 : ?] OF boolean_expression
          ENTITY: basic_sparse_matrix,	TYPE: LIST [3 : 3] OF maths_function
      *** ENTITY: parallel_composed_function,	TYPE: LIST [2 : ?] OF generic_expression	(as DERIVED)
          ENTITY: function_application,	TYPE: LIST [2 : ?] OF generic_expression	(as DERIVED)


  ENTITY(SELF)	parallel_composed_function
    ATTR:  source_of_domain,	TYPE: maths_space_or_function -- EXPLICIT

    ATTR:  prep_functions,	TYPE: LIST [1 : ?] OF maths_function -- EXPLICIT

    ATTR:  final_function,	TYPE: maths_function_select -- EXPLICIT

    REDCR: operands,	TYPE: LIST [2 : ?] OF generic_expression -- DERIVED (DYNAMIC)
      := convert_to_operands_prcmfn( source_of_domain, prep_functions, final_function )
      -- OVERRIDING ENTITY: multiple_arity_generic_expression


*/


//MARK: - Partial Entity
  public final class _parallel_composed_function : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      ePARALLEL_COMPOSED_FUNCTION.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _source_of_domain: sMATHS_SPACE_OR_FUNCTION // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _prep_functions: SDAI.LIST<eMATHS_FUNCTION>/*[1:nil]*/  // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _final_function: sMATHS_FUNCTION_SELECT // PLAIN EXPLICIT ATTRIBUTE

    /// DERIVE ATTRIBUTE REDEFINITION(origin: eMULTIPLE_ARITY_GENERIC_EXPRESSION)
    /// - attribute value provider protocol conformance wrapper
    internal func _operands__getter(complex: SDAI.ComplexEntity) -> SDAI.LIST<eGENERIC_EXPRESSION>/*[2:nil]*/  {
      let SELF = complex.entityReference( ePARALLEL_COMPOSED_FUNCTION.self )!
      return SDAI.UNWRAP( SDAI.LIST<eGENERIC_EXPRESSION>(SELF.OPERANDS) )
    }
    /// DERIVE ATTRIBUTE REDEFINITION(origin: eMULTIPLE_ARITY_GENERIC_EXPRESSION)
    /// - gut of derived attribute logic
    internal func _operands__getter(SELF: ePARALLEL_COMPOSED_FUNCTION) -> SDAI.LIST<eGENERIC_EXPRESSION>/*[2:
      nil]*/  {

      let _TEMP1 = CONVERT_TO_OPERANDS_PRCMFN(
        SRCDOM: SELF.SOURCE_OF_DOMAIN, 
        PREPFUN: SDAI.LIST<eMATHS_FUNCTION>(/*SDAI.LIST<eMATHS_FUNCTION>[1:nil] */SELF.PREP_FUNCTIONS), 
        FINFUN: SELF.FINAL_FUNCTION)
      let value = _TEMP1
      return SDAI.UNWRAP( value )
    }

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._source_of_domain.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._prep_functions.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._final_function.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._source_of_domain.value.isValueEqualOptionally(to: rhs._source_of_domain.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._prep_functions.value.isValueEqualOptionally(to: rhs._prep_functions.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._final_function.value.isValueEqualOptionally(to: rhs._final_function.value, visited: &comppairs)	{
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
      if let comp = self._source_of_domain.value.isValueEqualOptionally(to: rhs._source_of_domain.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._prep_functions.value.isValueEqualOptionally(to: rhs._prep_functions.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._final_function.value.isValueEqualOptionally(to: rhs._final_function.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: ePARALLEL_COMPOSED_FUNCTION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.SET<eMATHS_FUNCTION>(([
        SDAI.AIE(eMATHS_FUNCTION(/*ePARALLEL_COMPOSED_FUNCTION*/SELF))] 
        as [SDAI.AggregationInitializerElement<eMATHS_FUNCTION>]))
      let _TEMP2 = NO_CYCLIC_DOMAIN_REFERENCE(
        REF: SELF.SOURCE_OF_DOMAIN, 
        USED: _TEMP1)
      return SDAI.LOGICAL(_TEMP2)
    }
    public static func WHERE_wr2(SELF: ePARALLEL_COMPOSED_FUNCTION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = DOMAIN_FROM(SELF.SOURCE_OF_DOMAIN)
      let _TEMP2 = EXPRESSION_IS_CONSTANT(eGENERIC_EXPRESSION(/*sTUPLE_SPACE*/_TEMP1))
      return SDAI.LOGICAL(_TEMP2)
    }
    public static func WHERE_wr3(SELF: ePARALLEL_COMPOSED_FUNCTION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = DOMAIN_FROM(SELF.SOURCE_OF_DOMAIN)
      let _TEMP2 = PARALLEL_COMPOSED_FUNCTION_DOMAIN_CHECK(
        COMDOM: _TEMP1, FUNCS: SDAI.LIST<eMATHS_FUNCTION>(/*SDAI.LIST<eMATHS_FUNCTION>[1:nil] */SELF.PREP_FUNCTIONS))
      return SDAI.LOGICAL(_TEMP2)
    }
    public static func WHERE_wr4(SELF: ePARALLEL_COMPOSED_FUNCTION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = PARALLEL_COMPOSED_FUNCTION_COMPOSABILITY_CHECK(
        FUNCS: SDAI.LIST<eMATHS_FUNCTION>(/*SDAI.LIST<eMATHS_FUNCTION>[1:nil] */SELF.PREP_FUNCTIONS), 
        FINAL: SELF.FINAL_FUNCTION)
      return SDAI.LOGICAL(_TEMP1)
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(SOURCE_OF_DOMAIN: sMATHS_SPACE_OR_FUNCTION, PREP_FUNCTIONS: SDAI.LIST<eMATHS_FUNCTION>/*[1:
                nil]*/ , FINAL_FUNCTION: sMATHS_FUNCTION_SELECT) {
      self._source_of_domain = SOURCE_OF_DOMAIN
      self._prep_functions = PREP_FUNCTIONS
      self._final_function = FINAL_FUNCTION
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 3
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: sMATHS_SPACE_OR_FUNCTION.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: SDAI.LIST<eMATHS_FUNCTION>.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p2) = exchangeStructure.recoverRequiredParameter(as: sMATHS_FUNCTION_SELECT.self, from: parameters[2])
      else { exchangeStructure.add(errorContext: "while recovering parameter #2 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( SOURCE_OF_DOMAIN: p0, PREP_FUNCTIONS: p1, FINAL_FUNCTION: p2 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY parallel_composed_function
    SUBTYPE OF ( maths_function, multiple_arity_generic_expression );
      source_of_domain  : maths_space_or_function;
      prep_functions    : LIST [1 : ?] OF maths_function;
      final_function    : maths_function_select;
    DERIVE
      SELF\multiple_arity_generic_expression.operands : LIST [2 : ?] OF generic_expression := 
                                          convert_to_operands_prcmfn( source_of_domain, prep_functions, 
                                          final_function );
    WHERE
      wr1: no_cyclic_domain_reference( source_of_domain, [SELF] );
      wr2: expression_is_constant( domain_from( source_of_domain ) );
      wr3: parallel_composed_function_domain_check( domain_from( source_of_domain ), prep_functions );
      wr4: parallel_composed_function_composability_check( prep_functions, final_function );
  END_ENTITY; -- parallel_composed_function (line:23447 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class ePARALLEL_COMPOSED_FUNCTION : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _parallel_composed_function.self
    }
    public let partialEntity: _parallel_composed_function

    //MARK: SUPERTYPES
    public let super_eGENERIC_EXPRESSION: eGENERIC_EXPRESSION 	// [1]
    public let super_eMATHS_FUNCTION: eMATHS_FUNCTION 	// [2]
    public let super_eMULTIPLE_ARITY_GENERIC_EXPRESSION: eMULTIPLE_ARITY_GENERIC_EXPRESSION 	// [3]
    public var super_ePARALLEL_COMPOSED_FUNCTION: ePARALLEL_COMPOSED_FUNCTION { return self } 	// [4]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``ePARALLEL_COMPOSED_FUNCTION`` )
    public var FINAL_FUNCTION: sMATHS_FUNCTION_SELECT {
      get {
        return SDAI.UNWRAP( self.partialEntity._final_function )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._final_function = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``ePARALLEL_COMPOSED_FUNCTION`` )
    public var SOURCE_OF_DOMAIN: sMATHS_SPACE_OR_FUNCTION {
      get {
        return SDAI.UNWRAP( self.partialEntity._source_of_domain )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._source_of_domain = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT REDEF(DERIVE)__ attribute
    /// - origin: SELF( ``ePARALLEL_COMPOSED_FUNCTION`` )
    public var OPERANDS: SDAI.LIST<eGENERIC_EXPRESSION>/*[2:nil]*/  {
      get {
        if let cached = cachedValue(derivedAttributeName:"OPERANDS") {
          return cached.value as! SDAI.LIST<eGENERIC_EXPRESSION>/*[2:nil]*/ 
        }
        let origin = self
        let value = SDAI.UNWRAP( origin.partialEntity._operands__getter(SELF: origin) )
        updateCache(derivedAttributeName:"OPERANDS", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``ePARALLEL_COMPOSED_FUNCTION`` )
    public var PREP_FUNCTIONS: SDAI.LIST<eMATHS_FUNCTION>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._prep_functions )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._prep_functions = SDAI.UNWRAP(newValue)
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
      guard let partial = complexEntity?.partialEntityInstance(_parallel_composed_function.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eGENERIC_EXPRESSION.self) else { return nil }
      self.super_eGENERIC_EXPRESSION = super1

      guard let super2 = complexEntity?.entityReference(eMATHS_FUNCTION.self) else { return nil }
      self.super_eMATHS_FUNCTION = super2

      guard let super3 = complexEntity?.entityReference(eMULTIPLE_ARITY_GENERIC_EXPRESSION.self) else { return nil }
      self.super_eMULTIPLE_ARITY_GENERIC_EXPRESSION = super3

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
      result[prefix2 + " .WHERE_wr1"] = _parallel_composed_function.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _parallel_composed_function.WHERE_wr2(SELF: instance)
      result[prefix2 + " .WHERE_wr3"] = _parallel_composed_function.WHERE_wr3(SELF: instance)
      result[prefix2 + " .WHERE_wr4"] = _parallel_composed_function.WHERE_wr4(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "PARALLEL_COMPOSED_FUNCTION", type: self, explicitAttributeCount: 3)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eGENERIC_EXPRESSION.self)
      entityDef.add(supertype: eMATHS_FUNCTION.self)
      entityDef.add(supertype: eMULTIPLE_ARITY_GENERIC_EXPRESSION.self)
      entityDef.add(supertype: ePARALLEL_COMPOSED_FUNCTION.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "FINAL_FUNCTION", keyPath: \ePARALLEL_COMPOSED_FUNCTION.FINAL_FUNCTION, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "SOURCE_OF_DOMAIN", keyPath: \ePARALLEL_COMPOSED_FUNCTION.SOURCE_OF_DOMAIN, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "OPERANDS", keyPath: \ePARALLEL_COMPOSED_FUNCTION.OPERANDS, 
        kind: .derivedRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "PREP_FUNCTIONS", keyPath: \ePARALLEL_COMPOSED_FUNCTION.PREP_FUNCTIONS, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DOMAIN", keyPath: \ePARALLEL_COMPOSED_FUNCTION.DOMAIN, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RANGE", keyPath: \ePARALLEL_COMPOSED_FUNCTION.RANGE, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}

//MARK: - partial Entity Dynamic Attribute Protocol Conformances
extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF._parallel_composed_function :
  eMULTIPLE_ARITY_GENERIC_EXPRESSION__OPERANDS__provider {}
