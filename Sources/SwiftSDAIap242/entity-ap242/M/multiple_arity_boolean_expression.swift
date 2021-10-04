/* file: multiple_arity_boolean_expression.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY multiple_arity_boolean_expression
    ABSTRACT SUPERTYPE OF ( 
        ONEOF ( 
            and_expression, 
            or_expression ) )
    SUBTYPE OF ( boolean_expression, multiple_arity_generic_expression );
      SELF\multiple_arity_generic_expression.operands : LIST [2 : ?] OF boolean_expression;
  END_ENTITY; -- multiple_arity_boolean_expression (line:21698 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	generic_expression
    (no local attributes)

  SUPER- ENTITY(2)	expression
    (no local attributes)

  SUPER- ENTITY(3)	boolean_expression
    (no local attributes)

  SUPER- ENTITY(4)	multiple_arity_generic_expression
    ATTR:  operands,	TYPE: LIST [2 : ?] OF generic_expression -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: series_composed_function,	TYPE: LIST [2 : ?] OF maths_function
          ENTITY: concat_expression,	TYPE: LIST [2 : ?] OF string_expression
          ENTITY: multiple_arity_numeric_expression,	TYPE: LIST [2 : ?] OF numeric_expression
      *** ENTITY: multiple_arity_boolean_expression,	TYPE: LIST [2 : ?] OF boolean_expression
          ENTITY: basic_sparse_matrix,	TYPE: LIST [3 : 3] OF maths_function
          ENTITY: parallel_composed_function,	TYPE: LIST [2 : ?] OF generic_expression	(as DERIVED)
          ENTITY: function_application,	TYPE: LIST [2 : ?] OF generic_expression	(as DERIVED)


  ENTITY(SELF)	multiple_arity_boolean_expression
    REDCR: operands,	TYPE: LIST [2 : ?] OF boolean_expression -- EXPLICIT
      -- OVERRIDING ENTITY: multiple_arity_generic_expression


  SUB- ENTITY(6)	or_expression
    (no local attributes)

  SUB- ENTITY(7)	and_expression
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _multiple_arity_boolean_expression : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eMULTIPLE_ARITY_BOOLEAN_EXPRESSION.self
    }

    //ATTRIBUTES
    /* override var _operands: SDAI.LIST<eBOOLEAN_EXPRESSION>[2:nil] 	//EXPLICIT REDEFINITION(eMULTIPLE_ARITY_GENERIC_EXPRESSION) */

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
  ENTITY multiple_arity_boolean_expression
    ABSTRACT SUPERTYPE OF ( 
        ONEOF ( 
            and_expression, 
            or_expression ) )
    SUBTYPE OF ( boolean_expression, multiple_arity_generic_expression );
      SELF\multiple_arity_generic_expression.operands : LIST [2 : ?] OF boolean_expression;
  END_ENTITY; -- multiple_arity_boolean_expression (line:21698 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eMULTIPLE_ARITY_BOOLEAN_EXPRESSION : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _multiple_arity_boolean_expression.self
    }
    public let partialEntity: _multiple_arity_boolean_expression

    //MARK: SUPERTYPES
    public let super_eGENERIC_EXPRESSION: eGENERIC_EXPRESSION 	// [1]
    public let super_eEXPRESSION: eEXPRESSION 	// [2]
    public let super_eBOOLEAN_EXPRESSION: eBOOLEAN_EXPRESSION 	// [3]
    public let super_eMULTIPLE_ARITY_GENERIC_EXPRESSION: eMULTIPLE_ARITY_GENERIC_EXPRESSION 	// [4]
    public var super_eMULTIPLE_ARITY_BOOLEAN_EXPRESSION: eMULTIPLE_ARITY_BOOLEAN_EXPRESSION { return self } 	// [5]

    //MARK: SUBTYPES
    public var sub_eOR_EXPRESSION: eOR_EXPRESSION? {	// [6]
      return self.complexEntity.entityReference(eOR_EXPRESSION.self)
    }

    public var sub_eAND_EXPRESSION: eAND_EXPRESSION? {	// [7]
      return self.complexEntity.entityReference(eAND_EXPRESSION.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT REDEF(DYNAMIC)__ attribute
    /// - origin: SELF( ``eMULTIPLE_ARITY_BOOLEAN_EXPRESSION`` )
    public var OPERANDS: SDAI.LIST<eBOOLEAN_EXPRESSION>/*[2:nil]*/  {
      get {
        if let resolved = _multiple_arity_generic_expression._operands__provider(complex: self.complexEntity) {
          let value = SDAI.UNWRAP( SDAI.LIST<eBOOLEAN_EXPRESSION>(resolved._operands__getter(
            complex: self.complexEntity)) )
          return value
        }
        else {
          return SDAI.UNWRAP( SDAI.LIST<eBOOLEAN_EXPRESSION>(super_eMULTIPLE_ARITY_GENERIC_EXPRESSION
            .partialEntity._operands) )
        }
      }
      set(newValue) {
        if let _ = _multiple_arity_generic_expression._operands__provider(complex: self.complexEntity) { return }

        let partial = super_eMULTIPLE_ARITY_GENERIC_EXPRESSION.partialEntity
        partial._operands = SDAI.UNWRAP(
          SDAI.LIST<eGENERIC_EXPRESSION>(newValue))
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_multiple_arity_boolean_expression.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eGENERIC_EXPRESSION.self) else { return nil }
      self.super_eGENERIC_EXPRESSION = super1

      guard let super2 = complexEntity?.entityReference(eEXPRESSION.self) else { return nil }
      self.super_eEXPRESSION = super2

      guard let super3 = complexEntity?.entityReference(eBOOLEAN_EXPRESSION.self) else { return nil }
      self.super_eBOOLEAN_EXPRESSION = super3

      guard let super4 = complexEntity?.entityReference(eMULTIPLE_ARITY_GENERIC_EXPRESSION.self) else { return nil }
      self.super_eMULTIPLE_ARITY_GENERIC_EXPRESSION = super4

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "MULTIPLE_ARITY_BOOLEAN_EXPRESSION", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eGENERIC_EXPRESSION.self)
      entityDef.add(supertype: eEXPRESSION.self)
      entityDef.add(supertype: eBOOLEAN_EXPRESSION.self)
      entityDef.add(supertype: eMULTIPLE_ARITY_GENERIC_EXPRESSION.self)
      entityDef.add(supertype: eMULTIPLE_ARITY_BOOLEAN_EXPRESSION.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "OPERANDS", keyPath: \eMULTIPLE_ARITY_BOOLEAN_EXPRESSION.OPERANDS, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}