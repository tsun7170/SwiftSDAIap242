/* file: maths_variable.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY maths_variable
    SUBTYPE OF ( generic_variable );
      values_space  : maths_space;
      name          : label;
    WHERE
      wr1: expression_is_constant( values_space );
  END_ENTITY; -- maths_variable (line:20345 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	generic_expression
    (no local attributes)

  SUPER- ENTITY(2)	simple_generic_expression
    (no local attributes)

  SUPER- ENTITY(3)	generic_variable
    ATTR:  interpretation,	TYPE: environment -- INVERSE
      FOR syntactic_representation;


  ENTITY(SELF)	maths_variable
    ATTR:  values_space,	TYPE: maths_space -- EXPLICIT

    ATTR:  name,	TYPE: label -- EXPLICIT


  SUB- ENTITY(5)	maths_boolean_variable
    (no local attributes)

  SUB- ENTITY(6)	maths_string_variable
    (no local attributes)

  SUB- ENTITY(7)	maths_integer_variable
    (no local attributes)

  SUB- ENTITY(8)	bound_variational_parameter
    REDCR: parameter_current_value,	TYPE: maths_value -- DERIVED (DYNAMIC)
      := ?
      -- OVERRIDING ENTITY: variational_parameter


  SUB- ENTITY(9)	unbound_variational_parameter
    (no local attributes)

  SUB- ENTITY(10)	variational_parameter
    ATTR:  parameter_description,	TYPE: OPTIONAL text -- EXPLICIT

    ATTR:  parameter_current_value,	TYPE: maths_value -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: bound_variational_parameter,	TYPE: maths_value	(as DERIVED)


  SUB- ENTITY(11)	maths_real_variable
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _maths_variable : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eMATHS_VARIABLE.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _values_space: eMATHS_SPACE // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _name: tLABEL // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._values_space.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._name.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._values_space.value.isValueEqualOptionally(to: rhs._values_space.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._name.value.isValueEqualOptionally(to: rhs._name.value, visited: &comppairs)	{
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
      if let comp = self._values_space.value.isValueEqualOptionally(to: rhs._values_space.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._name.value.isValueEqualOptionally(to: rhs._name.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eMATHS_VARIABLE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = EXPRESSION_IS_CONSTANT(eGENERIC_EXPRESSION(/*eMATHS_SPACE*/SELF.VALUES_SPACE))
      return SDAI.LOGICAL(_TEMP1)
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(VALUES_SPACE: eMATHS_SPACE, NAME: tLABEL) {
      self._values_space = VALUES_SPACE
      self._name = NAME
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: eMATHS_SPACE.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: tLABEL.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( VALUES_SPACE: p0, NAME: p1 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY maths_variable
    SUBTYPE OF ( generic_variable );
      values_space  : maths_space;
      name          : label;
    WHERE
      wr1: expression_is_constant( values_space );
  END_ENTITY; -- maths_variable (line:20345 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eMATHS_VARIABLE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _maths_variable.self
    }
    public let partialEntity: _maths_variable

    //MARK: SUPERTYPES
    public let super_eGENERIC_EXPRESSION: eGENERIC_EXPRESSION 	// [1]
    public let super_eSIMPLE_GENERIC_EXPRESSION: eSIMPLE_GENERIC_EXPRESSION 	// [2]
    public let super_eGENERIC_VARIABLE: eGENERIC_VARIABLE 	// [3]
    public var super_eMATHS_VARIABLE: eMATHS_VARIABLE { return self } 	// [4]

    //MARK: SUBTYPES
    public var sub_eMATHS_BOOLEAN_VARIABLE: eMATHS_BOOLEAN_VARIABLE? {	// [5]
      return self.complexEntity.entityReference(eMATHS_BOOLEAN_VARIABLE.self)
    }

    public var sub_eMATHS_STRING_VARIABLE: eMATHS_STRING_VARIABLE? {	// [6]
      return self.complexEntity.entityReference(eMATHS_STRING_VARIABLE.self)
    }

    public var sub_eMATHS_INTEGER_VARIABLE: eMATHS_INTEGER_VARIABLE? {	// [7]
      return self.complexEntity.entityReference(eMATHS_INTEGER_VARIABLE.self)
    }

    public var sub_eBOUND_VARIATIONAL_PARAMETER: eBOUND_VARIATIONAL_PARAMETER? {	// [8]
      return self.complexEntity.entityReference(eBOUND_VARIATIONAL_PARAMETER.self)
    }

    public var sub_eUNBOUND_VARIATIONAL_PARAMETER: eUNBOUND_VARIATIONAL_PARAMETER? {	// [9]
      return self.complexEntity.entityReference(eUNBOUND_VARIATIONAL_PARAMETER.self)
    }

    public var sub_eVARIATIONAL_PARAMETER: eVARIATIONAL_PARAMETER? {	// [10]
      return self.complexEntity.entityReference(eVARIATIONAL_PARAMETER.self)
    }

    public var sub_eMATHS_REAL_VARIABLE: eMATHS_REAL_VARIABLE? {	// [11]
      return self.complexEntity.entityReference(eMATHS_REAL_VARIABLE.self)
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

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eVARIATIONAL_PARAMETER`` )
    public var PARAMETER_DESCRIPTION: tTEXT?  {
      get {
        return sub_eVARIATIONAL_PARAMETER?.partialEntity._parameter_description
      }
      set(newValue) {
        guard let partial = sub_eVARIATIONAL_PARAMETER?.super_eVARIATIONAL_PARAMETER.partialEntity
          else { return }
        partial._parameter_description = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eMATHS_VARIABLE`` )
    public var VALUES_SPACE: eMATHS_SPACE {
      get {
        return SDAI.UNWRAP( self.partialEntity._values_space )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._values_space = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT(DYNAMIC)__ attribute
    /// - origin: SUB( ``eVARIATIONAL_PARAMETER`` )
    public var PARAMETER_CURRENT_VALUE: sMATHS_VALUE?  {
      get {
        if let resolved = _variational_parameter._parameter_current_value__provider(complex: self.complexEntity) {
          let value = resolved._parameter_current_value__getter(complex: self.complexEntity)
          return value
        }
        else {
          return sub_eVARIATIONAL_PARAMETER?.partialEntity._parameter_current_value
        }
      }
      set(newValue) {
        if let _ = _variational_parameter._parameter_current_value__provider(complex: self.complexEntity) { return }

        guard let partial = sub_eVARIATIONAL_PARAMETER?.super_eVARIATIONAL_PARAMETER.partialEntity
          else { return }
        partial._parameter_current_value = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eMATHS_VARIABLE`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( self.partialEntity._name )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_maths_variable.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eGENERIC_EXPRESSION.self) else { return nil }
      self.super_eGENERIC_EXPRESSION = super1

      guard let super2 = complexEntity?.entityReference(eSIMPLE_GENERIC_EXPRESSION.self) else { return nil }
      self.super_eSIMPLE_GENERIC_EXPRESSION = super2

      guard let super3 = complexEntity?.entityReference(eGENERIC_VARIABLE.self) else { return nil }
      self.super_eGENERIC_VARIABLE = super3

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
      result[prefix2 + " .WHERE_wr1"] = _maths_variable.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "MATHS_VARIABLE", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eGENERIC_EXPRESSION.self)
      entityDef.add(supertype: eSIMPLE_GENERIC_EXPRESSION.self)
      entityDef.add(supertype: eGENERIC_VARIABLE.self)
      entityDef.add(supertype: eMATHS_VARIABLE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "INTERPRETATION", keyPath: \eMATHS_VARIABLE.INTERPRETATION, 
        kind: .inverse, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "PARAMETER_DESCRIPTION", keyPath: \eMATHS_VARIABLE.PARAMETER_DESCRIPTION, 
        kind: .explicitOptional, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "VALUES_SPACE", keyPath: \eMATHS_VARIABLE.VALUES_SPACE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "PARAMETER_CURRENT_VALUE", keyPath: \eMATHS_VARIABLE.PARAMETER_CURRENT_VALUE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eMATHS_VARIABLE.NAME, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
