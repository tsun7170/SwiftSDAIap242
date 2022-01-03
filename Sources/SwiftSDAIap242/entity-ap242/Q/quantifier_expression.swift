/* file: quantifier_expression.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY quantifier_expression
    ABSTRACT SUPERTYPE
    SUBTYPE OF ( multiple_arity_generic_expression );
      variables  : LIST [1 : ?] OF UNIQUE generic_variable;
    WHERE
      wr1: ( SIZEOF( QUERY ( vrbl <* variables | ( NOT ( vrbl IN SELF\multiple_arity_generic_expression.
               operands ) ) ) ) = 0 );
      wr2: ( SIZEOF( QUERY ( vrbl <* variables | ( NOT ( ( schema_prefix + 'BOUND_VARIABLE_SEMANTICS' ) IN 
               TYPEOF( vrbl.interpretation.semantics ) ) ) ) ) = 0 );
  END_ENTITY; -- quantifier_expression (line:26715 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	generic_expression
    (no local attributes)

  SUPER- ENTITY(2)	multiple_arity_generic_expression
    ATTR:  operands,	TYPE: LIST [2 : ?] OF generic_expression -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: series_composed_function,	TYPE: LIST [2 : ?] OF maths_function
          ENTITY: concat_expression,	TYPE: LIST [2 : ?] OF string_expression
          ENTITY: multiple_arity_numeric_expression,	TYPE: LIST [2 : ?] OF numeric_expression
          ENTITY: multiple_arity_boolean_expression,	TYPE: LIST [2 : ?] OF boolean_expression
          ENTITY: basic_sparse_matrix,	TYPE: LIST [3 : 3] OF maths_function
          ENTITY: parallel_composed_function,	TYPE: LIST [2 : ?] OF generic_expression	(as DERIVED)
          ENTITY: function_application,	TYPE: LIST [2 : ?] OF generic_expression	(as DERIVED)


  ENTITY(SELF)	quantifier_expression
    ATTR:  variables,	TYPE: LIST [1 : ?] OF UNIQUE generic_variable -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: abstracted_expression_function,	TYPE: LIST [1 : ?] OF UNIQUE generic_variable	(as DERIVED)
          ENTITY: definite_integral_expression,	TYPE: LIST [1 : 1] OF UNIQUE generic_variable	(as DERIVED)


  SUB- ENTITY(4)	abstracted_expression_function
    REDCR: variables,	TYPE: LIST [1 : ?] OF UNIQUE generic_variable -- DERIVED (DYNAMIC)
      := remove_first( SELF\multiple_arity_generic_expression.operands )
      -- OVERRIDING ENTITY: quantifier_expression

    ATTR:  expr,	TYPE: generic_expression -- DERIVED
      := SELF\multiple_arity_generic_expression.operands[1]


  SUB- ENTITY(5)	definite_integral_expression
    ATTR:  lower_limit_neg_infinity,	TYPE: BOOLEAN -- EXPLICIT

    ATTR:  upper_limit_pos_infinity,	TYPE: BOOLEAN -- EXPLICIT

    ATTR:  integrand,	TYPE: generic_expression -- DERIVED
      := SELF\multiple_arity_generic_expression.operands[1]

    ATTR:  variable_of_integration,	TYPE: maths_variable -- DERIVED
      := SELF\multiple_arity_generic_expression.operands[2]

    REDCR: variables,	TYPE: LIST [1 : 1] OF UNIQUE generic_variable -- DERIVED (DYNAMIC)
      := [variable_of_integration]
      -- OVERRIDING ENTITY: quantifier_expression


*/


//MARK: - Partial Entity
  public final class _quantifier_expression : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eQUANTIFIER_EXPRESSION.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    /// - see the corresponding attribute accesser in the entity reference definition for the attribute value dynamic lookup logic
    public internal(set) var _variables: (SDAI.LIST_UNIQUE<eGENERIC_VARIABLE>/*[1:nil]*/ )?  // PLAIN EXPLICIT ATTRIBUTE

    internal static func _variables__provider(complex: SDAI.ComplexEntity) -> eQUANTIFIER_EXPRESSION__VARIABLES__provider? {
      let resolved = complex.resolvePartialEntityInstance(from: [_abstracted_expression_function.typeIdentity, 
        _definite_integral_expression.typeIdentity])
      return resolved as? eQUANTIFIER_EXPRESSION__VARIABLES__provider
    }

    //PARTIAL COMPLEX ENTITY SUPPORT
    final public override class func fixupPartialComplexEntityAttributes(partialComplex: SDAI.ComplexEntity, baseComplex: SDAI.ComplexEntity) {
      guard let pe = partialComplex.partialEntityInstance(_quantifier_expression.self) else { return }

      if pe._variables == nil, self._variables__provider(complex: partialComplex) == nil, 
        let base__variables__provider = self._variables__provider(complex: baseComplex) {
        pe._variables = base__variables__provider._variables__getter(complex: baseComplex)
      }
    }
    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._variables?.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._variables?.value.isValueEqualOptionally(to: rhs._variables?.value, visited: &comppairs)	{
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
      if let comp = self._variables?.value.isValueEqualOptionally(to: rhs._variables?.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eQUANTIFIER_EXPRESSION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.VARIABLES.QUERY{ VRBL in 

          let _TEMP1 = SELF.GROUP_REF(eMULTIPLE_ARITY_GENERIC_EXPRESSION.self)
          let _TEMP2 = _TEMP1?.OPERANDS
          let _TEMP3 = SDAI.aggregate(_TEMP2, contains: eGENERIC_EXPRESSION(/*eGENERIC_VARIABLE*/VRBL))
          let _TEMP4 =  !_TEMP3
          return _TEMP4 }
      let _TEMP2 = SDAI.SIZEOF(_TEMP1)
      let _TEMP3 = _TEMP2 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP3
    }
    public static func WHERE_wr2(SELF: eQUANTIFIER_EXPRESSION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.VARIABLES.QUERY{ VRBL in 

          let _TEMP1 = SDAI.FORCE_OPTIONAL(SCHEMA_PREFIX) + SDAI.FORCE_OPTIONAL(SDAI.STRING(
            "BOUND_VARIABLE_SEMANTICS"))
          let _TEMP2 = VRBL.INTERPRETATION
          let _TEMP3 = _TEMP2?.SEMANTICS
          let _TEMP4 = SDAI.TYPEOF(_TEMP3)
          let _TEMP5 = SDAI.aggregate(_TEMP4, contains: _TEMP1)
          let _TEMP6 =  !_TEMP5
          return _TEMP6 }
      let _TEMP2 = SDAI.SIZEOF(_TEMP1)
      let _TEMP3 = _TEMP2 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP3
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(VARIABLES: (SDAI.LIST_UNIQUE<eGENERIC_VARIABLE>/*[1:nil]*/ )? ) {
      self._variables = VARIABLES
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverOmittableParameter(as: SDAI.LIST_UNIQUE<
        eGENERIC_VARIABLE>.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( VARIABLES: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY quantifier_expression
    ABSTRACT SUPERTYPE
    SUBTYPE OF ( multiple_arity_generic_expression );
      variables  : LIST [1 : ?] OF UNIQUE generic_variable;
    WHERE
      wr1: ( SIZEOF( QUERY ( vrbl <* variables | ( NOT ( vrbl IN SELF\multiple_arity_generic_expression.
               operands ) ) ) ) = 0 );
      wr2: ( SIZEOF( QUERY ( vrbl <* variables | ( NOT ( ( schema_prefix + 'BOUND_VARIABLE_SEMANTICS' ) IN 
               TYPEOF( vrbl.interpretation.semantics ) ) ) ) ) = 0 );
  END_ENTITY; -- quantifier_expression (line:26715 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eQUANTIFIER_EXPRESSION : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _quantifier_expression.self
    }
    public let partialEntity: _quantifier_expression

    //MARK: SUPERTYPES
    public let super_eGENERIC_EXPRESSION: eGENERIC_EXPRESSION 	// [1]
    public let super_eMULTIPLE_ARITY_GENERIC_EXPRESSION: eMULTIPLE_ARITY_GENERIC_EXPRESSION 	// [2]
    public var super_eQUANTIFIER_EXPRESSION: eQUANTIFIER_EXPRESSION { return self } 	// [3]

    //MARK: SUBTYPES
    public var sub_eABSTRACTED_EXPRESSION_FUNCTION: eABSTRACTED_EXPRESSION_FUNCTION? {	// [4]
      return self.complexEntity.entityReference(eABSTRACTED_EXPRESSION_FUNCTION.self)
    }

    public var sub_eDEFINITE_INTEGRAL_EXPRESSION: eDEFINITE_INTEGRAL_EXPRESSION? {	// [5]
      return self.complexEntity.entityReference(eDEFINITE_INTEGRAL_EXPRESSION.self)
    }


    //MARK: ATTRIBUTES
    /// __DERIVE__ attribute
    /// - origin: SUB( ``eABSTRACTED_EXPRESSION_FUNCTION`` )
    public var EXPR: eGENERIC_EXPRESSION?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"EXPR") {
          return cached.value as! eGENERIC_EXPRESSION? 
        }
        guard let origin = sub_eABSTRACTED_EXPRESSION_FUNCTION else { return nil }
        let value = eGENERIC_EXPRESSION(origin.partialEntity._expr__getter(SELF: origin))
        updateCache(derivedAttributeName:"EXPR", value:value)
        return value
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUB( ``eDEFINITE_INTEGRAL_EXPRESSION`` )
    public var VARIABLE_OF_INTEGRATION: eMATHS_VARIABLE?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"VARIABLE_OF_INTEGRATION") {
          return cached.value as! eMATHS_VARIABLE? 
        }
        guard let origin = sub_eDEFINITE_INTEGRAL_EXPRESSION else { return nil }
        let value = eMATHS_VARIABLE(origin.partialEntity._variable_of_integration__getter(SELF: origin))
        updateCache(derivedAttributeName:"VARIABLE_OF_INTEGRATION", value:value)
        return value
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUB( ``eDEFINITE_INTEGRAL_EXPRESSION`` )
    public var INTEGRAND: eGENERIC_EXPRESSION?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"INTEGRAND") {
          return cached.value as! eGENERIC_EXPRESSION? 
        }
        guard let origin = sub_eDEFINITE_INTEGRAL_EXPRESSION else { return nil }
        let value = eGENERIC_EXPRESSION(origin.partialEntity._integrand__getter(SELF: origin))
        updateCache(derivedAttributeName:"INTEGRAND", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eDEFINITE_INTEGRAL_EXPRESSION`` )
    public var UPPER_LIMIT_POS_INFINITY: SDAI.BOOLEAN?  {
      get {
        return sub_eDEFINITE_INTEGRAL_EXPRESSION?.partialEntity._upper_limit_pos_infinity
      }
      set(newValue) {
        guard let partial = sub_eDEFINITE_INTEGRAL_EXPRESSION?.super_eDEFINITE_INTEGRAL_EXPRESSION
          .partialEntity else { return }
        partial._upper_limit_pos_infinity = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT(DYNAMIC)__ attribute
    /// - origin: SUPER( ``eMULTIPLE_ARITY_GENERIC_EXPRESSION`` )
    public var OPERANDS: SDAI.LIST<eGENERIC_EXPRESSION>/*[2:nil]*/  {
      get {
        if let resolved = _multiple_arity_generic_expression._operands__provider(complex: self.complexEntity) {
          let value = resolved._operands__getter(complex: self.complexEntity)
          return value
        }
        else {
          return SDAI.UNWRAP( super_eMULTIPLE_ARITY_GENERIC_EXPRESSION.partialEntity._operands )
        }
      }
      set(newValue) {
        if let _ = _multiple_arity_generic_expression._operands__provider(complex: self.complexEntity) { return }

        let partial = super_eMULTIPLE_ARITY_GENERIC_EXPRESSION.partialEntity
        partial._operands = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT(DYNAMIC)__ attribute
    /// - origin: SELF( ``eQUANTIFIER_EXPRESSION`` )
    public var VARIABLES: SDAI.LIST_UNIQUE<eGENERIC_VARIABLE>/*[1:nil]*/  {
      get {
        if let resolved = _quantifier_expression._variables__provider(complex: self.complexEntity) {
          let value = resolved._variables__getter(complex: self.complexEntity)
          return value
        }
        else {
          return SDAI.UNWRAP( self.partialEntity._variables )
        }
      }
      set(newValue) {
        if let _ = _quantifier_expression._variables__provider(complex: self.complexEntity) { return }

        let partial = self.partialEntity
        partial._variables = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eDEFINITE_INTEGRAL_EXPRESSION`` )
    public var LOWER_LIMIT_NEG_INFINITY: SDAI.BOOLEAN?  {
      get {
        return sub_eDEFINITE_INTEGRAL_EXPRESSION?.partialEntity._lower_limit_neg_infinity
      }
      set(newValue) {
        guard let partial = sub_eDEFINITE_INTEGRAL_EXPRESSION?.super_eDEFINITE_INTEGRAL_EXPRESSION
          .partialEntity else { return }
        partial._lower_limit_neg_infinity = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_quantifier_expression.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eGENERIC_EXPRESSION.self) else { return nil }
      self.super_eGENERIC_EXPRESSION = super1

      guard let super2 = complexEntity?.entityReference(eMULTIPLE_ARITY_GENERIC_EXPRESSION.self) else { return nil }
      self.super_eMULTIPLE_ARITY_GENERIC_EXPRESSION = super2

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
      result[prefix2 + " .WHERE_wr1"] = _quantifier_expression.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _quantifier_expression.WHERE_wr2(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "QUANTIFIER_EXPRESSION", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eGENERIC_EXPRESSION.self)
      entityDef.add(supertype: eMULTIPLE_ARITY_GENERIC_EXPRESSION.self)
      entityDef.add(supertype: eQUANTIFIER_EXPRESSION.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "EXPR", keyPath: \eQUANTIFIER_EXPRESSION.EXPR, 
        kind: .derived, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "VARIABLE_OF_INTEGRATION", keyPath: \eQUANTIFIER_EXPRESSION.VARIABLE_OF_INTEGRATION, 
        kind: .derived, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "INTEGRAND", keyPath: \eQUANTIFIER_EXPRESSION.INTEGRAND, 
        kind: .derived, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "UPPER_LIMIT_POS_INFINITY", keyPath: \eQUANTIFIER_EXPRESSION.UPPER_LIMIT_POS_INFINITY, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "OPERANDS", keyPath: \eQUANTIFIER_EXPRESSION.OPERANDS, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "VARIABLES", keyPath: \eQUANTIFIER_EXPRESSION.VARIABLES, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "LOWER_LIMIT_NEG_INFINITY", keyPath: \eQUANTIFIER_EXPRESSION.LOWER_LIMIT_NEG_INFINITY, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}

//MARK: - Entity Dynamic Attribute Protocols
internal protocol eQUANTIFIER_EXPRESSION__VARIABLES__provider {
  func _variables__getter(complex: SDAI.ComplexEntity) -> SDAI.LIST_UNIQUE<
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eGENERIC_VARIABLE>/*[1:nil]*/ 
}
