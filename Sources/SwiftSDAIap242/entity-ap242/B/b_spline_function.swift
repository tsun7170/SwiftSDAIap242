/* file: b_spline_function.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY b_spline_function
    SUBTYPE OF ( maths_function, unary_generic_expression );
      SELF\unary_generic_expression.operand : maths_function;
      basis                           : LIST [1 : ?] OF b_spline_basis;
    DERIVE
      coef  : maths_function := SELF\unary_generic_expression.operand;
    WHERE
      wr1: function_is_table( coef );
      wr2: ( ( space_dimension( coef.range ) = 1 ) AND ( number_superspace_of( factor1( coef.range ) ) = 
               the_reals ) );
      wr3: ( SIZEOF( basis ) <= SIZEOF( shape_of_array( coef ) ) );
      wr4: compare_basis_and_coef( basis, coef );
  END_ENTITY; -- b_spline_function (line:7750 file:ap242ed2_mim_lf_v1.101.TY.exp)

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
      *** ENTITY: b_spline_function,	TYPE: maths_function
          ENTITY: length_function,	TYPE: string_expression
          ENTITY: partial_derivative_function,	TYPE: maths_function
          ENTITY: odd_function,	TYPE: numeric_expression
          ENTITY: rationalize_function,	TYPE: maths_function
          ENTITY: general_linear_function,	TYPE: maths_function
          ENTITY: unary_numeric_expression,	TYPE: numeric_expression
          ENTITY: definite_integral_function,	TYPE: maths_function


  ENTITY(SELF)	b_spline_function
    REDCR: operand,	TYPE: maths_function -- EXPLICIT
      -- OVERRIDING ENTITY: unary_generic_expression

    ATTR:  basis,	TYPE: LIST [1 : ?] OF b_spline_basis -- EXPLICIT

    ATTR:  coef,	TYPE: maths_function -- DERIVED
      := SELF\unary_generic_expression.operand


*/


//MARK: - Partial Entity
  public final class _b_spline_function : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eB_SPLINE_FUNCTION.self
    }

    //ATTRIBUTES
    /* override var _operand: eMATHS_FUNCTION	//EXPLICIT REDEFINITION(eUNARY_GENERIC_EXPRESSION) */

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _basis: SDAI.LIST<eB_SPLINE_BASIS>/*[1:nil]*/  // PLAIN EXPLICIT ATTRIBUTE

    /// DERIVE ATTRIBUTE
    internal func _coef__getter(SELF: eB_SPLINE_FUNCTION) -> eMATHS_FUNCTION?  {

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
      self._basis.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._basis.value.isValueEqualOptionally(to: rhs._basis.value, visited: &comppairs)	{
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
      if let comp = self._basis.value.isValueEqualOptionally(to: rhs._basis.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eB_SPLINE_FUNCTION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = FUNCTION_IS_TABLE(SELF.COEF)
      return SDAI.LOGICAL(_TEMP1)
    }
    public static func WHERE_wr2(SELF: eB_SPLINE_FUNCTION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.COEF?.RANGE
      let _TEMP2 = SPACE_DIMENSION(_TEMP1)
      let _TEMP3 = _TEMP2 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      let _TEMP4 = SELF.COEF?.RANGE
      let _TEMP5 = FACTOR1(_TEMP4)
      let _TEMP6 = NUMBER_SUPERSPACE_OF(_TEMP5)
      let _TEMP7 = _TEMP6 .==. SDAI.FORCE_OPTIONAL(THE_REALS)
      let _TEMP8 = _TEMP3 && _TEMP7
      return _TEMP8
    }
    public static func WHERE_wr3(SELF: eB_SPLINE_FUNCTION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.SIZEOF(SELF.BASIS)
      let _TEMP2 = SHAPE_OF_ARRAY(SELF.COEF)
      let _TEMP3 = SDAI.SIZEOF(_TEMP2)
      let _TEMP4 = _TEMP1 <= _TEMP3
      return _TEMP4
    }
    public static func WHERE_wr4(SELF: eB_SPLINE_FUNCTION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = COMPARE_BASIS_AND_COEF(
        BASIS: SELF.BASIS, COEF: SELF.COEF)
      return SDAI.LOGICAL(_TEMP1)
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(BASIS: SDAI.LIST<eB_SPLINE_BASIS>/*[1:nil]*/ ) {
      self._basis = BASIS
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: SDAI.LIST<eB_SPLINE_BASIS>.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( BASIS: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY b_spline_function
    SUBTYPE OF ( maths_function, unary_generic_expression );
      SELF\unary_generic_expression.operand : maths_function;
      basis                           : LIST [1 : ?] OF b_spline_basis;
    DERIVE
      coef  : maths_function := SELF\unary_generic_expression.operand;
    WHERE
      wr1: function_is_table( coef );
      wr2: ( ( space_dimension( coef.range ) = 1 ) AND ( number_superspace_of( factor1( coef.range ) ) = 
               the_reals ) );
      wr3: ( SIZEOF( basis ) <= SIZEOF( shape_of_array( coef ) ) );
      wr4: compare_basis_and_coef( basis, coef );
  END_ENTITY; -- b_spline_function (line:7750 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eB_SPLINE_FUNCTION : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _b_spline_function.self
    }
    public let partialEntity: _b_spline_function

    //MARK: SUPERTYPES
    public let super_eGENERIC_EXPRESSION: eGENERIC_EXPRESSION 	// [1]
    public let super_eMATHS_FUNCTION: eMATHS_FUNCTION 	// [2]
    public let super_eUNARY_GENERIC_EXPRESSION: eUNARY_GENERIC_EXPRESSION 	// [3]
    public var super_eB_SPLINE_FUNCTION: eB_SPLINE_FUNCTION { return self } 	// [4]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __DERIVE__ attribute
    /// - origin: SELF( ``eB_SPLINE_FUNCTION`` )
    public var COEF: eMATHS_FUNCTION?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"COEF") {
          return cached.value as! eMATHS_FUNCTION? 
        }
        let origin = self
        let value = origin.partialEntity._coef__getter(SELF: origin)
        updateCache(derivedAttributeName:"COEF", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eB_SPLINE_FUNCTION`` )
    public var BASIS: SDAI.LIST<eB_SPLINE_BASIS>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._basis )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._basis = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SELF( ``eB_SPLINE_FUNCTION`` )
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
      guard let partial = complexEntity?.partialEntityInstance(_b_spline_function.self) else { return nil }
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
      result[prefix2 + " .WHERE_wr1"] = _b_spline_function.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _b_spline_function.WHERE_wr2(SELF: instance)
      result[prefix2 + " .WHERE_wr3"] = _b_spline_function.WHERE_wr3(SELF: instance)
      result[prefix2 + " .WHERE_wr4"] = _b_spline_function.WHERE_wr4(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "B_SPLINE_FUNCTION", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eGENERIC_EXPRESSION.self)
      entityDef.add(supertype: eMATHS_FUNCTION.self)
      entityDef.add(supertype: eUNARY_GENERIC_EXPRESSION.self)
      entityDef.add(supertype: eB_SPLINE_FUNCTION.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "COEF", keyPath: \eB_SPLINE_FUNCTION.COEF, 
        kind: .derived, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "BASIS", keyPath: \eB_SPLINE_FUNCTION.BASIS, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "OPERAND", keyPath: \eB_SPLINE_FUNCTION.OPERAND, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DOMAIN", keyPath: \eB_SPLINE_FUNCTION.DOMAIN, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RANGE", keyPath: \eB_SPLINE_FUNCTION.RANGE, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
