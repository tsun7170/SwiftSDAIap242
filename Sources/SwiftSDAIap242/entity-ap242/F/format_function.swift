/* file: format_function.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY format_function
    SUBTYPE OF ( string_expression, binary_generic_expression );
    DERIVE
      value_to_format  : generic_expression := SELF\binary_generic_expression.operands[1];
      format_string    : generic_expression := SELF\binary_generic_expression.operands[2];
    WHERE
      wr1: ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.NUMERIC_EXPRESSION' IN TYPEOF( 
               value_to_format ) ) AND ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.STRING_EXPRESSION' 
               IN TYPEOF( format_string ) ) );
  END_ENTITY; -- format_function (line:15853 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	generic_expression
    (no local attributes)

  SUPER- ENTITY(2)	expression
    (no local attributes)

  SUPER- ENTITY(3)	string_expression
    (no local attributes)

  SUPER- ENTITY(4)	binary_generic_expression
    ATTR:  operands,	TYPE: LIST [2 : 2] OF generic_expression -- EXPLICIT
      -- possibly overriden by
          ENTITY: binary_numeric_expression,	TYPE: LIST [2 : 2] OF numeric_expression
          ENTITY: xor_expression,	TYPE: LIST [2 : 2] OF boolean_expression
          ENTITY: comparison_expression,	TYPE: LIST [2 : 2] OF expression


  ENTITY(SELF)	format_function
    ATTR:  value_to_format,	TYPE: generic_expression -- DERIVED
      := SELF\binary_generic_expression.operands[1]

    ATTR:  format_string,	TYPE: generic_expression -- DERIVED
      := SELF\binary_generic_expression.operands[2]


*/


//MARK: - Partial Entity
  public final class _format_function : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eFORMAT_FUNCTION.self
    }

    //ATTRIBUTES
    /// DERIVE ATTRIBUTE
    internal func _value_to_format__getter(SELF: eFORMAT_FUNCTION) -> eGENERIC_EXPRESSION?  {

      let _TEMP1 = SELF.GROUP_REF(eBINARY_GENERIC_EXPRESSION.self)
      let _TEMP2 = _TEMP1?.OPERANDS
      let _TEMP3 = _TEMP2?[1]
      return _TEMP3
    }

    /// DERIVE ATTRIBUTE
    internal func _format_string__getter(SELF: eFORMAT_FUNCTION) -> eGENERIC_EXPRESSION?  {

      let _TEMP1 = SELF.GROUP_REF(eBINARY_GENERIC_EXPRESSION.self)
      let _TEMP2 = _TEMP1?.OPERANDS
      let _TEMP3 = _TEMP2?[2]
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
    public static func WHERE_wr1(SELF: eFORMAT_FUNCTION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF.VALUE_TO_FORMAT, IS: eNUMERIC_EXPRESSION.self)
      let _TEMP2 = SDAI.TYPEOF(SELF.FORMAT_STRING, IS: eSTRING_EXPRESSION.self)
      let _TEMP3 = _TEMP1 && _TEMP2
      return _TEMP3
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
  ENTITY format_function
    SUBTYPE OF ( string_expression, binary_generic_expression );
    DERIVE
      value_to_format  : generic_expression := SELF\binary_generic_expression.operands[1];
      format_string    : generic_expression := SELF\binary_generic_expression.operands[2];
    WHERE
      wr1: ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.NUMERIC_EXPRESSION' IN TYPEOF( 
               value_to_format ) ) AND ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.STRING_EXPRESSION' 
               IN TYPEOF( format_string ) ) );
  END_ENTITY; -- format_function (line:15853 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eFORMAT_FUNCTION : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _format_function.self
    }
    public let partialEntity: _format_function

    //MARK: SUPERTYPES
    public let super_eGENERIC_EXPRESSION: eGENERIC_EXPRESSION 	// [1]
    public let super_eEXPRESSION: eEXPRESSION 	// [2]
    public let super_eSTRING_EXPRESSION: eSTRING_EXPRESSION 	// [3]
    public let super_eBINARY_GENERIC_EXPRESSION: eBINARY_GENERIC_EXPRESSION 	// [4]
    public var super_eFORMAT_FUNCTION: eFORMAT_FUNCTION { return self } 	// [5]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __DERIVE__ attribute
    /// - origin: SELF( ``eFORMAT_FUNCTION`` )
    public var FORMAT_STRING: eGENERIC_EXPRESSION?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"FORMAT_STRING") {
          return cached.value as! eGENERIC_EXPRESSION? 
        }
        let origin = self
        let value = origin.partialEntity._format_string__getter(SELF: origin)
        updateCache(derivedAttributeName:"FORMAT_STRING", value:value)
        return value
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SELF( ``eFORMAT_FUNCTION`` )
    public var VALUE_TO_FORMAT: eGENERIC_EXPRESSION?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"VALUE_TO_FORMAT") {
          return cached.value as! eGENERIC_EXPRESSION? 
        }
        let origin = self
        let value = origin.partialEntity._value_to_format__getter(SELF: origin)
        updateCache(derivedAttributeName:"VALUE_TO_FORMAT", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eBINARY_GENERIC_EXPRESSION`` )
    public var OPERANDS: SDAI.LIST<eGENERIC_EXPRESSION>/*[2:2]*/  {
      get {
        return SDAI.UNWRAP( super_eBINARY_GENERIC_EXPRESSION.partialEntity._operands )
      }
      set(newValue) {
        let partial = super_eBINARY_GENERIC_EXPRESSION.partialEntity
        partial._operands = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_format_function.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eGENERIC_EXPRESSION.self) else { return nil }
      self.super_eGENERIC_EXPRESSION = super1

      guard let super2 = complexEntity?.entityReference(eEXPRESSION.self) else { return nil }
      self.super_eEXPRESSION = super2

      guard let super3 = complexEntity?.entityReference(eSTRING_EXPRESSION.self) else { return nil }
      self.super_eSTRING_EXPRESSION = super3

      guard let super4 = complexEntity?.entityReference(eBINARY_GENERIC_EXPRESSION.self) else { return nil }
      self.super_eBINARY_GENERIC_EXPRESSION = super4

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
      result[prefix2 + " .WHERE_wr1"] = _format_function.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "FORMAT_FUNCTION", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eGENERIC_EXPRESSION.self)
      entityDef.add(supertype: eEXPRESSION.self)
      entityDef.add(supertype: eSTRING_EXPRESSION.self)
      entityDef.add(supertype: eBINARY_GENERIC_EXPRESSION.self)
      entityDef.add(supertype: eFORMAT_FUNCTION.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "FORMAT_STRING", keyPath: \eFORMAT_FUNCTION.FORMAT_STRING, 
        kind: .derived, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "VALUE_TO_FORMAT", keyPath: \eFORMAT_FUNCTION.VALUE_TO_FORMAT, 
        kind: .derived, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "OPERANDS", keyPath: \eFORMAT_FUNCTION.OPERANDS, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}