/* file: numeric_variable.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY numeric_variable
    SUPERTYPE OF ( 
        ONEOF ( 
            int_numeric_variable, 
            real_numeric_variable ) )
    SUBTYPE OF ( simple_numeric_expression, variable );
    WHERE
      wr1: ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.INT_NUMERIC_VARIABLE' IN TYPEOF( SELF ) ) OR 
               ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.REAL_NUMERIC_VARIABLE' IN TYPEOF( SELF ) ) );
  END_ENTITY; -- numeric_variable (line:22489 file:ap242ed2_mim_lf_v1.101.TY.exp)

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

  SUPER- ENTITY(6)	generic_variable
    ATTR:  interpretation,	TYPE: environment -- INVERSE
      FOR syntactic_representation;


  SUPER- ENTITY(7)	variable
    (no local attributes)

  ENTITY(SELF)	numeric_variable
    (no local attributes)

  SUB- ENTITY(9)	maths_real_variable
    (no local attributes)

  SUB- ENTITY(10)	real_numeric_variable
    (no local attributes)

  SUB- ENTITY(11)	maths_integer_variable
    (no local attributes)

  SUB- ENTITY(12)	int_numeric_variable
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _numeric_variable : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eNUMERIC_VARIABLE.self
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


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eNUMERIC_VARIABLE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF, IS: eINT_NUMERIC_VARIABLE.self)
      let _TEMP2 = SDAI.TYPEOF(SELF, IS: eREAL_NUMERIC_VARIABLE.self)
      let _TEMP3 = _TEMP1 || _TEMP2
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
  ENTITY numeric_variable
    SUPERTYPE OF ( 
        ONEOF ( 
            int_numeric_variable, 
            real_numeric_variable ) )
    SUBTYPE OF ( simple_numeric_expression, variable );
    WHERE
      wr1: ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.INT_NUMERIC_VARIABLE' IN TYPEOF( SELF ) ) OR 
               ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.REAL_NUMERIC_VARIABLE' IN TYPEOF( SELF ) ) );
  END_ENTITY; -- numeric_variable (line:22489 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eNUMERIC_VARIABLE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _numeric_variable.self
    }
    public let partialEntity: _numeric_variable

    //MARK: SUPERTYPES
    public let super_eGENERIC_EXPRESSION: eGENERIC_EXPRESSION 	// [1]
    public let super_eEXPRESSION: eEXPRESSION 	// [2]
    public let super_eNUMERIC_EXPRESSION: eNUMERIC_EXPRESSION 	// [3]
    public let super_eSIMPLE_GENERIC_EXPRESSION: eSIMPLE_GENERIC_EXPRESSION 	// [4]
    public let super_eSIMPLE_NUMERIC_EXPRESSION: eSIMPLE_NUMERIC_EXPRESSION 	// [5]
    public let super_eGENERIC_VARIABLE: eGENERIC_VARIABLE 	// [6]
    public let super_eVARIABLE: eVARIABLE 	// [7]
    public var super_eNUMERIC_VARIABLE: eNUMERIC_VARIABLE { return self } 	// [8]

    //MARK: SUBTYPES
    public var sub_eMATHS_REAL_VARIABLE: eMATHS_REAL_VARIABLE? {	// [9]
      return self.complexEntity.entityReference(eMATHS_REAL_VARIABLE.self)
    }

    public var sub_eREAL_NUMERIC_VARIABLE: eREAL_NUMERIC_VARIABLE? {	// [10]
      return self.complexEntity.entityReference(eREAL_NUMERIC_VARIABLE.self)
    }

    public var sub_eMATHS_INTEGER_VARIABLE: eMATHS_INTEGER_VARIABLE? {	// [11]
      return self.complexEntity.entityReference(eMATHS_INTEGER_VARIABLE.self)
    }

    public var sub_eINT_NUMERIC_VARIABLE: eINT_NUMERIC_VARIABLE? {	// [12]
      return self.complexEntity.entityReference(eINT_NUMERIC_VARIABLE.self)
    }


    //MARK: ATTRIBUTES
    /// __INVERSE__ attribute
    /// observing eENVIRONMENT .SYNTACTIC_REPRESENTATION
    /// - origin: SUPER( ``eGENERIC_VARIABLE`` )
    public var INTERPRETATION: eENVIRONMENT?  {
      get {
        return super_eGENERIC_VARIABLE.partialEntity._interpretation
      }
    }

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


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_numeric_variable.self) else { return nil }
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

      guard let super6 = complexEntity?.entityReference(eGENERIC_VARIABLE.self) else { return nil }
      self.super_eGENERIC_VARIABLE = super6

      guard let super7 = complexEntity?.entityReference(eVARIABLE.self) else { return nil }
      self.super_eVARIABLE = super7

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
      result[prefix2 + " .WHERE_wr1"] = _numeric_variable.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "NUMERIC_VARIABLE", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eGENERIC_EXPRESSION.self)
      entityDef.add(supertype: eEXPRESSION.self)
      entityDef.add(supertype: eNUMERIC_EXPRESSION.self)
      entityDef.add(supertype: eSIMPLE_GENERIC_EXPRESSION.self)
      entityDef.add(supertype: eSIMPLE_NUMERIC_EXPRESSION.self)
      entityDef.add(supertype: eGENERIC_VARIABLE.self)
      entityDef.add(supertype: eVARIABLE.self)
      entityDef.add(supertype: eNUMERIC_VARIABLE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "INTERPRETATION", keyPath: \eNUMERIC_VARIABLE.INTERPRETATION, 
        kind: .inverse, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "IS_INT", keyPath: \eNUMERIC_VARIABLE.IS_INT, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SQL_MAPPABLE", keyPath: \eNUMERIC_VARIABLE.SQL_MAPPABLE, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
