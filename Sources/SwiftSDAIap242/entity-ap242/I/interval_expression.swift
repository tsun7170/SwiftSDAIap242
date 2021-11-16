/* file: interval_expression.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY interval_expression
    SUBTYPE OF ( boolean_expression, multiple_arity_generic_expression );
    DERIVE
      interval_low   : generic_expression := SELF\multiple_arity_generic_expression.operands[1];
      interval_item  : generic_expression := SELF\multiple_arity_generic_expression.operands[2];
      interval_high  : generic_expression := SELF\multiple_arity_generic_expression.operands[3];
    WHERE
      wr1: ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.EXPRESSION' IN TYPEOF( interval_low ) ) AND 
               ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.EXPRESSION' IN TYPEOF( interval_item ) ) 
               AND ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.EXPRESSION' IN TYPEOF( interval_high ) ) );
      wr2: ( ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.STRING_EXPRESSION' IN TYPEOF( SELF.
               interval_low ) ) AND ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.STRING_EXPRESSION' IN 
               TYPEOF( SELF.interval_high ) ) AND ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'STRING_EXPRESSION'  IN TYPEOF( SELF.interval_item ) ) ) OR ( ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.NUMERIC_EXPRESSION'  IN TYPEOF( SELF.
               interval_low ) ) AND ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.NUMERIC_EXPRESSION' IN
               TYPEOF( SELF.interval_item ) ) AND ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'NUMERIC_EXPRESSION'  IN TYPEOF( SELF.interval_high ) ) ) );
  END_ENTITY; -- interval_expression (line:18407 file:ap242ed2_mim_lf_v1.101.TY.exp)

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
          ENTITY: multiple_arity_boolean_expression,	TYPE: LIST [2 : ?] OF boolean_expression
          ENTITY: basic_sparse_matrix,	TYPE: LIST [3 : 3] OF maths_function
          ENTITY: parallel_composed_function,	TYPE: LIST [2 : ?] OF generic_expression	(as DERIVED)
          ENTITY: function_application,	TYPE: LIST [2 : ?] OF generic_expression	(as DERIVED)


  ENTITY(SELF)	interval_expression
    ATTR:  interval_low,	TYPE: generic_expression -- DERIVED
      := SELF\multiple_arity_generic_expression.operands[1]

    ATTR:  interval_item,	TYPE: generic_expression -- DERIVED
      := SELF\multiple_arity_generic_expression.operands[2]

    ATTR:  interval_high,	TYPE: generic_expression -- DERIVED
      := SELF\multiple_arity_generic_expression.operands[3]


*/


//MARK: - Partial Entity
  public final class _interval_expression : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eINTERVAL_EXPRESSION.self
    }

    //ATTRIBUTES
    /// DERIVE ATTRIBUTE
    internal func _interval_low__getter(SELF: eINTERVAL_EXPRESSION) -> eGENERIC_EXPRESSION?  {

      let _TEMP1 = SELF.GROUP_REF(eMULTIPLE_ARITY_GENERIC_EXPRESSION.self)
      let _TEMP2 = _TEMP1?.OPERANDS
      let _TEMP3 = _TEMP2?[1]
      return _TEMP3
    }

    /// DERIVE ATTRIBUTE
    internal func _interval_item__getter(SELF: eINTERVAL_EXPRESSION) -> eGENERIC_EXPRESSION?  {

      let _TEMP1 = SELF.GROUP_REF(eMULTIPLE_ARITY_GENERIC_EXPRESSION.self)
      let _TEMP2 = _TEMP1?.OPERANDS
      let _TEMP3 = _TEMP2?[2]
      return _TEMP3
    }

    /// DERIVE ATTRIBUTE
    internal func _interval_high__getter(SELF: eINTERVAL_EXPRESSION) -> eGENERIC_EXPRESSION?  {

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
    public static func WHERE_wr1(SELF: eINTERVAL_EXPRESSION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF.INTERVAL_LOW, IS: eEXPRESSION.self)
      let _TEMP2 = SDAI.TYPEOF(SELF.INTERVAL_ITEM, IS: eEXPRESSION.self)
      let _TEMP3 = _TEMP1 && _TEMP2
      let _TEMP4 = SDAI.TYPEOF(SELF.INTERVAL_HIGH, IS: eEXPRESSION.self)
      let _TEMP5 = _TEMP3 && _TEMP4
      return _TEMP5
    }
    public static func WHERE_wr2(SELF: eINTERVAL_EXPRESSION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF.INTERVAL_LOW, IS: eSTRING_EXPRESSION.self)
      let _TEMP2 = SDAI.TYPEOF(SELF.INTERVAL_HIGH, IS: eSTRING_EXPRESSION.self)
      let _TEMP3 = _TEMP1 && _TEMP2
      let _TEMP4 = SDAI.TYPEOF(SELF.INTERVAL_ITEM, IS: eSTRING_EXPRESSION.self)
      let _TEMP5 = _TEMP3 && _TEMP4
      let _TEMP6 = SDAI.TYPEOF(SELF.INTERVAL_LOW, IS: eNUMERIC_EXPRESSION.self)
      let _TEMP7 = SDAI.TYPEOF(SELF.INTERVAL_ITEM, IS: eNUMERIC_EXPRESSION.self)
      let _TEMP8 = _TEMP6 && _TEMP7
      let _TEMP9 = SDAI.TYPEOF(SELF.INTERVAL_HIGH, IS: eNUMERIC_EXPRESSION.self)
      let _TEMP10 = _TEMP8 && _TEMP9
      let _TEMP11 = _TEMP5 || _TEMP10
      return _TEMP11
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
  ENTITY interval_expression
    SUBTYPE OF ( boolean_expression, multiple_arity_generic_expression );
    DERIVE
      interval_low   : generic_expression := SELF\multiple_arity_generic_expression.operands[1];
      interval_item  : generic_expression := SELF\multiple_arity_generic_expression.operands[2];
      interval_high  : generic_expression := SELF\multiple_arity_generic_expression.operands[3];
    WHERE
      wr1: ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.EXPRESSION' IN TYPEOF( interval_low ) ) AND 
               ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.EXPRESSION' IN TYPEOF( interval_item ) ) 
               AND ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.EXPRESSION' IN TYPEOF( interval_high ) ) );
      wr2: ( ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.STRING_EXPRESSION' IN TYPEOF( SELF.
               interval_low ) ) AND ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.STRING_EXPRESSION' IN 
               TYPEOF( SELF.interval_high ) ) AND ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'STRING_EXPRESSION'  IN TYPEOF( SELF.interval_item ) ) ) OR ( ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.NUMERIC_EXPRESSION'  IN TYPEOF( SELF.
               interval_low ) ) AND ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.NUMERIC_EXPRESSION' IN
               TYPEOF( SELF.interval_item ) ) AND ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'NUMERIC_EXPRESSION'  IN TYPEOF( SELF.interval_high ) ) ) );
  END_ENTITY; -- interval_expression (line:18407 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eINTERVAL_EXPRESSION : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _interval_expression.self
    }
    public let partialEntity: _interval_expression

    //MARK: SUPERTYPES
    public let super_eGENERIC_EXPRESSION: eGENERIC_EXPRESSION 	// [1]
    public let super_eEXPRESSION: eEXPRESSION 	// [2]
    public let super_eBOOLEAN_EXPRESSION: eBOOLEAN_EXPRESSION 	// [3]
    public let super_eMULTIPLE_ARITY_GENERIC_EXPRESSION: eMULTIPLE_ARITY_GENERIC_EXPRESSION 	// [4]
    public var super_eINTERVAL_EXPRESSION: eINTERVAL_EXPRESSION { return self } 	// [5]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __DERIVE__ attribute
    /// - origin: SELF( ``eINTERVAL_EXPRESSION`` )
    public var INTERVAL_HIGH: eGENERIC_EXPRESSION?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"INTERVAL_HIGH") {
          return cached.value as! eGENERIC_EXPRESSION? 
        }
        let origin = self
        let value = origin.partialEntity._interval_high__getter(SELF: origin)
        updateCache(derivedAttributeName:"INTERVAL_HIGH", value:value)
        return value
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SELF( ``eINTERVAL_EXPRESSION`` )
    public var INTERVAL_LOW: eGENERIC_EXPRESSION?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"INTERVAL_LOW") {
          return cached.value as! eGENERIC_EXPRESSION? 
        }
        let origin = self
        let value = origin.partialEntity._interval_low__getter(SELF: origin)
        updateCache(derivedAttributeName:"INTERVAL_LOW", value:value)
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
    /// - origin: SELF( ``eINTERVAL_EXPRESSION`` )
    public var INTERVAL_ITEM: eGENERIC_EXPRESSION?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"INTERVAL_ITEM") {
          return cached.value as! eGENERIC_EXPRESSION? 
        }
        let origin = self
        let value = origin.partialEntity._interval_item__getter(SELF: origin)
        updateCache(derivedAttributeName:"INTERVAL_ITEM", value:value)
        return value
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_interval_expression.self) else { return nil }
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


    //MARK: WHERE RULE VALIDATION (ENTITY)
    public override class func validateWhereRules(instance:SDAI.EntityReference?, prefix:SDAI.WhereLabel) -> [SDAI.WhereLabel:SDAI.LOGICAL] {
      guard let instance = instance as? Self else { return [:] }

      let prefix2 = prefix + " \(instance)"

      var result = super.validateWhereRules(instance:instance, prefix:prefix2)
      result[prefix2 + " .WHERE_wr1"] = _interval_expression.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _interval_expression.WHERE_wr2(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "INTERVAL_EXPRESSION", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eGENERIC_EXPRESSION.self)
      entityDef.add(supertype: eEXPRESSION.self)
      entityDef.add(supertype: eBOOLEAN_EXPRESSION.self)
      entityDef.add(supertype: eMULTIPLE_ARITY_GENERIC_EXPRESSION.self)
      entityDef.add(supertype: eINTERVAL_EXPRESSION.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "INTERVAL_HIGH", keyPath: \eINTERVAL_EXPRESSION.INTERVAL_HIGH, 
        kind: .derived, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "INTERVAL_LOW", keyPath: \eINTERVAL_EXPRESSION.INTERVAL_LOW, 
        kind: .derived, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "OPERANDS", keyPath: \eINTERVAL_EXPRESSION.OPERANDS, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "INTERVAL_ITEM", keyPath: \eINTERVAL_EXPRESSION.INTERVAL_ITEM, 
        kind: .derived, source: .thisEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
