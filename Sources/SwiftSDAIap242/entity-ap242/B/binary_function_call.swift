/* file: binary_function_call.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY binary_function_call
    ABSTRACT SUPERTYPE
    SUBTYPE OF ( binary_numeric_expression );
  END_ENTITY; -- binary_function_call (line:8212 file:ap242ed2_mim_lf_v1.101.TY.exp)

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


  SUPER- ENTITY(4)	binary_generic_expression
    ATTR:  operands,	TYPE: LIST [2 : 2] OF generic_expression -- EXPLICIT
      -- possibly overriden by
      *** ENTITY: binary_numeric_expression,	TYPE: LIST [2 : 2] OF numeric_expression
          ENTITY: xor_expression,	TYPE: LIST [2 : 2] OF boolean_expression
          ENTITY: comparison_expression,	TYPE: LIST [2 : 2] OF expression


  SUPER- ENTITY(5)	binary_numeric_expression
    REDCR: operands,	TYPE: LIST [2 : 2] OF numeric_expression -- EXPLICIT
      -- OVERRIDING ENTITY: binary_generic_expression


  ENTITY(SELF)	binary_function_call
    (no local attributes)

  SUB- ENTITY(7)	atan_function
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _binary_function_call : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eBINARY_FUNCTION_CALL.self
    }

    //ATTRIBUTES
    // (no local attributes)

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
  ENTITY binary_function_call
    ABSTRACT SUPERTYPE
    SUBTYPE OF ( binary_numeric_expression );
  END_ENTITY; -- binary_function_call (line:8212 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eBINARY_FUNCTION_CALL : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _binary_function_call.self
    }
    public let partialEntity: _binary_function_call

    //MARK: SUPERTYPES
    public let super_eGENERIC_EXPRESSION: eGENERIC_EXPRESSION 	// [1]
    public let super_eEXPRESSION: eEXPRESSION 	// [2]
    public let super_eNUMERIC_EXPRESSION: eNUMERIC_EXPRESSION 	// [3]
    public let super_eBINARY_GENERIC_EXPRESSION: eBINARY_GENERIC_EXPRESSION 	// [4]
    public let super_eBINARY_NUMERIC_EXPRESSION: eBINARY_NUMERIC_EXPRESSION 	// [5]
    public var super_eBINARY_FUNCTION_CALL: eBINARY_FUNCTION_CALL { return self } 	// [6]

    //MARK: SUBTYPES
    public var sub_eATAN_FUNCTION: eATAN_FUNCTION? {	// [7]
      return self.complexEntity.entityReference(eATAN_FUNCTION.self)
    }


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

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SUPER( ``eBINARY_NUMERIC_EXPRESSION`` )
    public var OPERANDS: SDAI.LIST<eNUMERIC_EXPRESSION>/*[2:2]*/  {
      get {
        return SDAI.UNWRAP( SDAI.LIST<eNUMERIC_EXPRESSION>( super_eBINARY_GENERIC_EXPRESSION.partialEntity
          ._operands ) )
      }
      set(newValue) {
        let partial = super_eBINARY_GENERIC_EXPRESSION.partialEntity
        partial._operands = SDAI.UNWRAP(
          SDAI.LIST<eGENERIC_EXPRESSION>(newValue))
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


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_binary_function_call.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eGENERIC_EXPRESSION.self) else { return nil }
      self.super_eGENERIC_EXPRESSION = super1

      guard let super2 = complexEntity?.entityReference(eEXPRESSION.self) else { return nil }
      self.super_eEXPRESSION = super2

      guard let super3 = complexEntity?.entityReference(eNUMERIC_EXPRESSION.self) else { return nil }
      self.super_eNUMERIC_EXPRESSION = super3

      guard let super4 = complexEntity?.entityReference(eBINARY_GENERIC_EXPRESSION.self) else { return nil }
      self.super_eBINARY_GENERIC_EXPRESSION = super4

      guard let super5 = complexEntity?.entityReference(eBINARY_NUMERIC_EXPRESSION.self) else { return nil }
      self.super_eBINARY_NUMERIC_EXPRESSION = super5

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "BINARY_FUNCTION_CALL", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eGENERIC_EXPRESSION.self)
      entityDef.add(supertype: eEXPRESSION.self)
      entityDef.add(supertype: eNUMERIC_EXPRESSION.self)
      entityDef.add(supertype: eBINARY_GENERIC_EXPRESSION.self)
      entityDef.add(supertype: eBINARY_NUMERIC_EXPRESSION.self)
      entityDef.add(supertype: eBINARY_FUNCTION_CALL.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "IS_INT", keyPath: \eBINARY_FUNCTION_CALL.IS_INT, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "OPERANDS", keyPath: \eBINARY_FUNCTION_CALL.OPERANDS, 
        kind: .explicitRedeclaring, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "SQL_MAPPABLE", keyPath: \eBINARY_FUNCTION_CALL.SQL_MAPPABLE, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
