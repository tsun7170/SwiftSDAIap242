/* file: length_function.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY length_function
    SUBTYPE OF ( numeric_expression, unary_generic_expression );
      SELF\unary_generic_expression.operand : string_expression;
  END_ENTITY; -- length_function (line:18926 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	generic_expression
    (no local attributes)

  SUPER- ENTITY(2)	expression
    (no local attributes)

  SUPER- ENTITY(3)	numeric_expression
    ATTR:  is_int,	TYPE: BOOLEAN -- DERIVED
      := is_int_expr( SELF )

    ATTR:  sql_mappable,	TYPE: BOOLEAN -- DERIVED
      := is_sql_mappable( SELF )


  SUPER- ENTITY(4)	unary_generic_expression
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
      *** ENTITY: length_function,	TYPE: string_expression
          ENTITY: partial_derivative_function,	TYPE: maths_function
          ENTITY: odd_function,	TYPE: numeric_expression
          ENTITY: rationalize_function,	TYPE: maths_function
          ENTITY: general_linear_function,	TYPE: maths_function
          ENTITY: unary_numeric_expression,	TYPE: numeric_expression
          ENTITY: definite_integral_function,	TYPE: maths_function


  ENTITY(SELF)	length_function
    REDCR: operand,	TYPE: string_expression -- EXPLICIT
      -- OVERRIDING ENTITY: unary_generic_expression


*/


//MARK: - Partial Entity
  public final class _length_function : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eLENGTH_FUNCTION.self
    }

    //ATTRIBUTES
    /* override var _operand: eSTRING_EXPRESSION	//EXPLICIT REDEFINITION(eUNARY_GENERIC_EXPRESSION) */

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
  ENTITY length_function
    SUBTYPE OF ( numeric_expression, unary_generic_expression );
      SELF\unary_generic_expression.operand : string_expression;
  END_ENTITY; -- length_function (line:18926 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eLENGTH_FUNCTION : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _length_function.self
    }
    public let partialEntity: _length_function

    //MARK: SUPERTYPES
    public let super_eGENERIC_EXPRESSION: eGENERIC_EXPRESSION 	// [1]
    public let super_eEXPRESSION: eEXPRESSION 	// [2]
    public let super_eNUMERIC_EXPRESSION: eNUMERIC_EXPRESSION 	// [3]
    public let super_eUNARY_GENERIC_EXPRESSION: eUNARY_GENERIC_EXPRESSION 	// [4]
    public var super_eLENGTH_FUNCTION: eLENGTH_FUNCTION { return self } 	// [5]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eNUMERIC_EXPRESSION`` )
    public var IS_INT: SDAI.BOOLEAN?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"IS_INT") {
          return cached.value as! SDAI.BOOLEAN? 
        }
        let origin = super_eNUMERIC_EXPRESSION
        let value = SDAI.BOOLEAN(origin.partialEntity._is_int__getter(SELF: origin))
        updateCache(derivedAttributeName:"IS_INT", value:value)
        return value
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eNUMERIC_EXPRESSION`` )
    public var SQL_MAPPABLE: SDAI.BOOLEAN?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"SQL_MAPPABLE") {
          return cached.value as! SDAI.BOOLEAN? 
        }
        let origin = super_eNUMERIC_EXPRESSION
        let value = SDAI.BOOLEAN(origin.partialEntity._sql_mappable__getter(SELF: origin))
        updateCache(derivedAttributeName:"SQL_MAPPABLE", value:value)
        return value
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SELF( ``eLENGTH_FUNCTION`` )
    public var OPERAND: eSTRING_EXPRESSION {
      get {
        return SDAI.UNWRAP( eSTRING_EXPRESSION( super_eUNARY_GENERIC_EXPRESSION.partialEntity._operand ) )
      }
      set(newValue) {
        let partial = super_eUNARY_GENERIC_EXPRESSION.partialEntity
        partial._operand = SDAI.UNWRAP(
          eGENERIC_EXPRESSION(newValue))
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_length_function.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eGENERIC_EXPRESSION.self) else { return nil }
      self.super_eGENERIC_EXPRESSION = super1

      guard let super2 = complexEntity?.entityReference(eEXPRESSION.self) else { return nil }
      self.super_eEXPRESSION = super2

      guard let super3 = complexEntity?.entityReference(eNUMERIC_EXPRESSION.self) else { return nil }
      self.super_eNUMERIC_EXPRESSION = super3

      guard let super4 = complexEntity?.entityReference(eUNARY_GENERIC_EXPRESSION.self) else { return nil }
      self.super_eUNARY_GENERIC_EXPRESSION = super4

      super.init(complex: complexEntity)
    }

    public required convenience init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let entityRef = generic?.entityReference else { return nil }
      self.init(complex: entityRef.complexEntity)
    }

    public convenience init?<S: SDAISelectType>(_ select: S?) { self.init(possiblyFrom: select) }
    public convenience init?(_ complex: SDAI.ComplexEntity?) { self.init(complex: complex) }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "LENGTH_FUNCTION", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eGENERIC_EXPRESSION.self)
      entityDef.add(supertype: eEXPRESSION.self)
      entityDef.add(supertype: eNUMERIC_EXPRESSION.self)
      entityDef.add(supertype: eUNARY_GENERIC_EXPRESSION.self)
      entityDef.add(supertype: eLENGTH_FUNCTION.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "IS_INT", keyPath: \eLENGTH_FUNCTION.IS_INT, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SQL_MAPPABLE", keyPath: \eLENGTH_FUNCTION.SQL_MAPPABLE, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "OPERAND", keyPath: \eLENGTH_FUNCTION.OPERAND, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
