/* file: int_literal.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY int_literal
    SUBTYPE OF ( literal_number );
      SELF\literal_number.the_value  : INTEGER;
  END_ENTITY; -- int_literal (line:18207 file:ap242ed2_mim_lf_v1.101.TY.exp)

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


  SUPER- ENTITY(4)	simple_generic_expression
    (no local attributes)

  SUPER- ENTITY(5)	simple_numeric_expression
    (no local attributes)

  SUPER- ENTITY(6)	generic_literal
    (no local attributes)

  SUPER- ENTITY(7)	literal_number
    ATTR:  the_value,	TYPE: NUMBER -- EXPLICIT
      -- possibly overriden by
          ENTITY: real_literal,	TYPE: REAL
      *** ENTITY: int_literal,	TYPE: INTEGER


  ENTITY(SELF)	int_literal
    REDCR: the_value,	TYPE: INTEGER -- EXPLICIT
      -- OVERRIDING ENTITY: literal_number


  SUB- ENTITY(9)	integer_representation_item
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _int_literal : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eINT_LITERAL.self
    }

    //ATTRIBUTES
    /* override var _the_value: SDAI.INTEGER	//EXPLICIT REDEFINITION(eLITERAL_NUMBER) */

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
  ENTITY int_literal
    SUBTYPE OF ( literal_number );
      SELF\literal_number.the_value  : INTEGER;
  END_ENTITY; -- int_literal (line:18207 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eINT_LITERAL : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _int_literal.self
    }
    public let partialEntity: _int_literal

    //MARK: SUPERTYPES
    public let super_eGENERIC_EXPRESSION: eGENERIC_EXPRESSION 	// [1]
    public let super_eEXPRESSION: eEXPRESSION 	// [2]
    public let super_eNUMERIC_EXPRESSION: eNUMERIC_EXPRESSION 	// [3]
    public let super_eSIMPLE_GENERIC_EXPRESSION: eSIMPLE_GENERIC_EXPRESSION 	// [4]
    public let super_eSIMPLE_NUMERIC_EXPRESSION: eSIMPLE_NUMERIC_EXPRESSION 	// [5]
    public let super_eGENERIC_LITERAL: eGENERIC_LITERAL 	// [6]
    public let super_eLITERAL_NUMBER: eLITERAL_NUMBER 	// [7]
    public var super_eINT_LITERAL: eINT_LITERAL { return self } 	// [8]

    //MARK: SUBTYPES
    public var sub_eINTEGER_REPRESENTATION_ITEM: eINTEGER_REPRESENTATION_ITEM? {	// [9]
      return self.complexEntity.entityReference(eINTEGER_REPRESENTATION_ITEM.self)
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
    /// - origin: SELF( ``eINT_LITERAL`` )
    public var THE_VALUE: SDAI.INTEGER {
      get {
        return SDAI.UNWRAP( SDAI.INTEGER( super_eLITERAL_NUMBER.partialEntity._the_value ) )
      }
      set(newValue) {
        let partial = super_eLITERAL_NUMBER.partialEntity
        partial._the_value = SDAI.UNWRAP(
          SDAI.NUMBER(newValue))
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
      guard let partial = complexEntity?.partialEntityInstance(_int_literal.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eGENERIC_EXPRESSION.self) else { return nil }
      self.super_eGENERIC_EXPRESSION = super1

      guard let super2 = complexEntity?.entityReference(eEXPRESSION.self) else { return nil }
      self.super_eEXPRESSION = super2

      guard let super3 = complexEntity?.entityReference(eNUMERIC_EXPRESSION.self) else { return nil }
      self.super_eNUMERIC_EXPRESSION = super3

      guard let super4 = complexEntity?.entityReference(eSIMPLE_GENERIC_EXPRESSION.self) else { return nil }
      self.super_eSIMPLE_GENERIC_EXPRESSION = super4

      guard let super5 = complexEntity?.entityReference(eSIMPLE_NUMERIC_EXPRESSION.self) else { return nil }
      self.super_eSIMPLE_NUMERIC_EXPRESSION = super5

      guard let super6 = complexEntity?.entityReference(eGENERIC_LITERAL.self) else { return nil }
      self.super_eGENERIC_LITERAL = super6

      guard let super7 = complexEntity?.entityReference(eLITERAL_NUMBER.self) else { return nil }
      self.super_eLITERAL_NUMBER = super7

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "INT_LITERAL", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eGENERIC_EXPRESSION.self)
      entityDef.add(supertype: eEXPRESSION.self)
      entityDef.add(supertype: eNUMERIC_EXPRESSION.self)
      entityDef.add(supertype: eSIMPLE_GENERIC_EXPRESSION.self)
      entityDef.add(supertype: eSIMPLE_NUMERIC_EXPRESSION.self)
      entityDef.add(supertype: eGENERIC_LITERAL.self)
      entityDef.add(supertype: eLITERAL_NUMBER.self)
      entityDef.add(supertype: eINT_LITERAL.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "IS_INT", keyPath: \eINT_LITERAL.IS_INT, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "THE_VALUE", keyPath: \eINT_LITERAL.THE_VALUE, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SQL_MAPPABLE", keyPath: \eINT_LITERAL.SQL_MAPPABLE, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
