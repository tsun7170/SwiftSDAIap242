/* file: substring_expression.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY substring_expression
    SUBTYPE OF ( string_expression, multiple_arity_generic_expression );
    DERIVE
      operand  : generic_expression := SELF\multiple_arity_generic_expression.operands[1];
      index1   : generic_expression := SELF\multiple_arity_generic_expression.operands[2];
      index2   : generic_expression := SELF\multiple_arity_generic_expression.operands[3];
    WHERE
      wr1: ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.STRING_EXPRESSION' IN TYPEOF( operand ) ) AND
               ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.NUMERIC_EXPRESSION' IN TYPEOF( index1 ) ) 
               AND ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.NUMERIC_EXPRESSION' IN TYPEOF( index2 ) ) );
      wr2: ( SIZEOF( SELF\multiple_arity_generic_expression.operands ) = 3 );
      wr3: is_int_expr( index1 );
      wr4: is_int_expr( index2 );
  END_ENTITY; -- substring_expression (line:31047 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	generic_expression
    (no local attributes)

  SUPER- ENTITY(2)	expression
    (no local attributes)

  SUPER- ENTITY(3)	string_expression
    (no local attributes)

  SUPER- ENTITY(4)	multiple_arity_generic_expression
    ATTR:  operands,	TYPE: LIST [2 : ?] OF generic_expression -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: series_composed_function,	TYPE: LIST [2 : ?] OF maths_function
          ENTITY: concat_expression,	TYPE: LIST [2 : ?] OF string_expression
          ENTITY: multiple_arity_numeric_expression,	TYPE: LIST [2 : ?] OF numeric_expression
          ENTITY: multiple_arity_boolean_expression,	TYPE: LIST [2 : ?] OF boolean_expression
          ENTITY: basic_sparse_matrix,	TYPE: LIST [3 : 3] OF maths_function
          ENTITY: parallel_composed_function,	TYPE: LIST [2 : ?] OF generic_expression	(as DERIVED)
          ENTITY: function_application,	TYPE: LIST [2 : ?] OF generic_expression	(as DERIVED)


  ENTITY(SELF)	substring_expression
    ATTR:  operand,	TYPE: generic_expression -- DERIVED
      := SELF\multiple_arity_generic_expression.operands[1]

    ATTR:  index1,	TYPE: generic_expression -- DERIVED
      := SELF\multiple_arity_generic_expression.operands[2]

    ATTR:  index2,	TYPE: generic_expression -- DERIVED
      := SELF\multiple_arity_generic_expression.operands[3]


*/


//MARK: - Partial Entity
  public final class _substring_expression : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eSUBSTRING_EXPRESSION.self
    }

    //ATTRIBUTES
    /// DERIVE ATTRIBUTE
    internal func _operand__getter(SELF: eSUBSTRING_EXPRESSION) -> eGENERIC_EXPRESSION?  {

      let _TEMP1 = SELF.GROUP_REF(eMULTIPLE_ARITY_GENERIC_EXPRESSION.self)
      let _TEMP2 = _TEMP1?.OPERANDS
      let _TEMP3 = _TEMP2?[1]
      return _TEMP3
    }

    /// DERIVE ATTRIBUTE
    internal func _index1__getter(SELF: eSUBSTRING_EXPRESSION) -> eGENERIC_EXPRESSION?  {

      let _TEMP1 = SELF.GROUP_REF(eMULTIPLE_ARITY_GENERIC_EXPRESSION.self)
      let _TEMP2 = _TEMP1?.OPERANDS
      let _TEMP3 = _TEMP2?[2]
      return _TEMP3
    }

    /// DERIVE ATTRIBUTE
    internal func _index2__getter(SELF: eSUBSTRING_EXPRESSION) -> eGENERIC_EXPRESSION?  {

      let _TEMP1 = SELF.GROUP_REF(eMULTIPLE_ARITY_GENERIC_EXPRESSION.self)
      let _TEMP2 = _TEMP1?.OPERANDS
      let _TEMP3 = _TEMP2?[3]
      return _TEMP3
    }

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


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eSUBSTRING_EXPRESSION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF.OPERAND, IS: eSTRING_EXPRESSION.self)
      let _TEMP2 = SDAI.TYPEOF(SELF.INDEX1, IS: eNUMERIC_EXPRESSION.self)
      let _TEMP3 = _TEMP1 && _TEMP2
      let _TEMP4 = SDAI.TYPEOF(SELF.INDEX2, IS: eNUMERIC_EXPRESSION.self)
      let _TEMP5 = _TEMP3 && _TEMP4
      return _TEMP5
    }
    public static func WHERE_wr2(SELF: eSUBSTRING_EXPRESSION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.GROUP_REF(eMULTIPLE_ARITY_GENERIC_EXPRESSION.self)
      let _TEMP2 = _TEMP1?.OPERANDS
      let _TEMP3 = SDAI.SIZEOF(_TEMP2)
      let _TEMP4 = _TEMP3 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(3))
      return _TEMP4
    }
    public static func WHERE_wr3(SELF: eSUBSTRING_EXPRESSION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = IS_INT_EXPR(eNUMERIC_EXPRESSION(/*eGENERIC_EXPRESSION*/SELF.INDEX1))
      return SDAI.LOGICAL(/*SDAI.BOOLEAN*/_TEMP1)
    }
    public static func WHERE_wr4(SELF: eSUBSTRING_EXPRESSION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = IS_INT_EXPR(eNUMERIC_EXPRESSION(/*eGENERIC_EXPRESSION*/SELF.INDEX2))
      return SDAI.LOGICAL(/*SDAI.BOOLEAN*/_TEMP1)
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
  ENTITY substring_expression
    SUBTYPE OF ( string_expression, multiple_arity_generic_expression );
    DERIVE
      operand  : generic_expression := SELF\multiple_arity_generic_expression.operands[1];
      index1   : generic_expression := SELF\multiple_arity_generic_expression.operands[2];
      index2   : generic_expression := SELF\multiple_arity_generic_expression.operands[3];
    WHERE
      wr1: ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.STRING_EXPRESSION' IN TYPEOF( operand ) ) AND
               ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.NUMERIC_EXPRESSION' IN TYPEOF( index1 ) ) 
               AND ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.NUMERIC_EXPRESSION' IN TYPEOF( index2 ) ) );
      wr2: ( SIZEOF( SELF\multiple_arity_generic_expression.operands ) = 3 );
      wr3: is_int_expr( index1 );
      wr4: is_int_expr( index2 );
  END_ENTITY; -- substring_expression (line:31047 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eSUBSTRING_EXPRESSION : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _substring_expression.self
    }
    public let partialEntity: _substring_expression

    //MARK: SUPERTYPES
    public let super_eGENERIC_EXPRESSION: eGENERIC_EXPRESSION 	// [1]
    public let super_eEXPRESSION: eEXPRESSION 	// [2]
    public let super_eSTRING_EXPRESSION: eSTRING_EXPRESSION 	// [3]
    public let super_eMULTIPLE_ARITY_GENERIC_EXPRESSION: eMULTIPLE_ARITY_GENERIC_EXPRESSION 	// [4]
    public var super_eSUBSTRING_EXPRESSION: eSUBSTRING_EXPRESSION { return self } 	// [5]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __DERIVE__ attribute
    /// - origin: SELF( ``eSUBSTRING_EXPRESSION`` )
    public var INDEX2: eGENERIC_EXPRESSION?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"INDEX2") {
          return cached.value as! eGENERIC_EXPRESSION? 
        }
        let origin = self
        let value = origin.partialEntity._index2__getter(SELF: origin)
        updateCache(derivedAttributeName:"INDEX2", value:value)
        return value
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SELF( ``eSUBSTRING_EXPRESSION`` )
    public var INDEX1: eGENERIC_EXPRESSION?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"INDEX1") {
          return cached.value as! eGENERIC_EXPRESSION? 
        }
        let origin = self
        let value = origin.partialEntity._index1__getter(SELF: origin)
        updateCache(derivedAttributeName:"INDEX1", value:value)
        return value
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

    /// __DERIVE__ attribute
    /// - origin: SELF( ``eSUBSTRING_EXPRESSION`` )
    public var OPERAND: eGENERIC_EXPRESSION?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"OPERAND") {
          return cached.value as! eGENERIC_EXPRESSION? 
        }
        let origin = self
        let value = origin.partialEntity._operand__getter(SELF: origin)
        updateCache(derivedAttributeName:"OPERAND", value:value)
        return value
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_substring_expression.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eGENERIC_EXPRESSION.self) else { return nil }
      self.super_eGENERIC_EXPRESSION = super1

      guard let super2 = complexEntity?.entityReference(eEXPRESSION.self) else { return nil }
      self.super_eEXPRESSION = super2

      guard let super3 = complexEntity?.entityReference(eSTRING_EXPRESSION.self) else { return nil }
      self.super_eSTRING_EXPRESSION = super3

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


    //MARK: WHERE RULE VALIDATION (ENTITY)
    public override class func validateWhereRules(instance:SDAI.EntityReference?, prefix:SDAI.WhereLabel) -> [SDAI.WhereLabel:SDAI.LOGICAL] {
      guard let instance = instance as? Self else { return [:] }

      let prefix2 = prefix + " \(instance)"

      var result = super.validateWhereRules(instance:instance, prefix:prefix2)
      result[prefix2 + " .WHERE_wr1"] = _substring_expression.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _substring_expression.WHERE_wr2(SELF: instance)
      result[prefix2 + " .WHERE_wr3"] = _substring_expression.WHERE_wr3(SELF: instance)
      result[prefix2 + " .WHERE_wr4"] = _substring_expression.WHERE_wr4(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "SUBSTRING_EXPRESSION", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eGENERIC_EXPRESSION.self)
      entityDef.add(supertype: eEXPRESSION.self)
      entityDef.add(supertype: eSTRING_EXPRESSION.self)
      entityDef.add(supertype: eMULTIPLE_ARITY_GENERIC_EXPRESSION.self)
      entityDef.add(supertype: eSUBSTRING_EXPRESSION.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "INDEX2", keyPath: \eSUBSTRING_EXPRESSION.INDEX2, 
        kind: .derived, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "INDEX1", keyPath: \eSUBSTRING_EXPRESSION.INDEX1, 
        kind: .derived, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "OPERANDS", keyPath: \eSUBSTRING_EXPRESSION.OPERANDS, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "OPERAND", keyPath: \eSUBSTRING_EXPRESSION.OPERAND, 
        kind: .derived, source: .thisEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}