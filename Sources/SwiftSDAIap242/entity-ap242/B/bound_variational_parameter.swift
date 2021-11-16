/* file: bound_variational_parameter.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY bound_variational_parameter
    SUBTYPE OF ( variational_parameter );
    DERIVE
      SELF\variational_parameter.parameter_current_value : maths_value := ?;
    WHERE
      wr1: ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.BOUND_PARAMETER_ENVIRONMENT' IN TYPEOF( SELF\
               generic_variable.interpretation ) );
  END_ENTITY; -- bound_variational_parameter (line:8621 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT	(AMBIGUOUS/MASKED)


  SUPER- ENTITY(2)	variational_representation_item
    (no local attributes)

  SUPER- ENTITY(3)	generic_expression
    (no local attributes)

  SUPER- ENTITY(4)	simple_generic_expression
    (no local attributes)

  SUPER- ENTITY(5)	generic_variable
    ATTR:  interpretation,	TYPE: environment -- INVERSE
      FOR syntactic_representation;


  SUPER- ENTITY(6)	maths_variable
    ATTR:  values_space,	TYPE: maths_space -- EXPLICIT

    ATTR:  name,	TYPE: label -- EXPLICIT	(AMBIGUOUS/MASKED)


  SUPER- ENTITY(7)	variational_parameter
    ATTR:  parameter_description,	TYPE: OPTIONAL text -- EXPLICIT

    ATTR:  parameter_current_value,	TYPE: maths_value -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
      *** ENTITY: bound_variational_parameter,	TYPE: maths_value	(as DERIVED)


  ENTITY(SELF)	bound_variational_parameter
    REDCR: parameter_current_value,	TYPE: maths_value -- DERIVED (DYNAMIC)
      := ?
      -- OVERRIDING ENTITY: variational_parameter


*/


//MARK: - Partial Entity
  public final class _bound_variational_parameter : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eBOUND_VARIATIONAL_PARAMETER.self
    }

    //ATTRIBUTES
    /// DERIVE ATTRIBUTE REDEFINITION(origin: eVARIATIONAL_PARAMETER)
    /// - attribute value provider protocol conformance wrapper
    internal func _parameter_current_value__getter(complex: SDAI.ComplexEntity) -> sMATHS_VALUE {
      let SELF = complex.entityReference( eBOUND_VARIATIONAL_PARAMETER.self )!
      return SDAI.UNWRAP( sMATHS_VALUE(SELF.PARAMETER_CURRENT_VALUE) )
    }
    /// DERIVE ATTRIBUTE REDEFINITION(origin: eVARIATIONAL_PARAMETER)
    /// - gut of derived attribute logic
    internal func _parameter_current_value__getter(SELF: eBOUND_VARIATIONAL_PARAMETER) -> sMATHS_VALUE {
      let value = (nil as sMATHS_VALUE?)
      return SDAI.UNWRAP( value )
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
    public static func WHERE_wr1(SELF: eBOUND_VARIATIONAL_PARAMETER?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF.GROUP_REF(eGENERIC_VARIABLE.self)?.INTERPRETATION, 
        IS: eBOUND_PARAMETER_ENVIRONMENT.self)
      return _TEMP1
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
  ENTITY bound_variational_parameter
    SUBTYPE OF ( variational_parameter );
    DERIVE
      SELF\variational_parameter.parameter_current_value : maths_value := ?;
    WHERE
      wr1: ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.BOUND_PARAMETER_ENVIRONMENT' IN TYPEOF( SELF\
               generic_variable.interpretation ) );
  END_ENTITY; -- bound_variational_parameter (line:8621 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eBOUND_VARIATIONAL_PARAMETER : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _bound_variational_parameter.self
    }
    public let partialEntity: _bound_variational_parameter

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eVARIATIONAL_REPRESENTATION_ITEM: eVARIATIONAL_REPRESENTATION_ITEM 	// [2]
    public let super_eGENERIC_EXPRESSION: eGENERIC_EXPRESSION 	// [3]
    public let super_eSIMPLE_GENERIC_EXPRESSION: eSIMPLE_GENERIC_EXPRESSION 	// [4]
    public let super_eGENERIC_VARIABLE: eGENERIC_VARIABLE 	// [5]
    public let super_eMATHS_VARIABLE: eMATHS_VARIABLE 	// [6]
    public let super_eVARIATIONAL_PARAMETER: eVARIATIONAL_PARAMETER 	// [7]
    public var super_eBOUND_VARIATIONAL_PARAMETER: eBOUND_VARIATIONAL_PARAMETER { return self } 	// [8]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    // NAME: (2 AMBIGUOUS REFs)

    /// __INVERSE__ attribute
    /// observing eENVIRONMENT .SYNTACTIC_REPRESENTATION
    /// - origin: SUPER( ``eGENERIC_VARIABLE`` )
    public var INTERPRETATION: eENVIRONMENT?  {
      get {
        return super_eGENERIC_VARIABLE.partialEntity._interpretation
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eVARIATIONAL_PARAMETER`` )
    public var PARAMETER_DESCRIPTION: tTEXT?  {
      get {
        return super_eVARIATIONAL_PARAMETER.partialEntity._parameter_description
      }
      set(newValue) {
        let partial = super_eVARIATIONAL_PARAMETER.partialEntity
        partial._parameter_description = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eMATHS_VARIABLE`` )
    public var VALUES_SPACE: eMATHS_SPACE {
      get {
        return SDAI.UNWRAP( super_eMATHS_VARIABLE.partialEntity._values_space )
      }
      set(newValue) {
        let partial = super_eMATHS_VARIABLE.partialEntity
        partial._values_space = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT REDEF(DERIVE)__ attribute
    /// - origin: SELF( ``eBOUND_VARIATIONAL_PARAMETER`` )
    public var PARAMETER_CURRENT_VALUE: sMATHS_VALUE {
      get {
        if let cached = cachedValue(derivedAttributeName:"PARAMETER_CURRENT_VALUE") {
          return cached.value as! sMATHS_VALUE
        }
        let origin = self
        let value = SDAI.UNWRAP( origin.partialEntity._parameter_current_value__getter(SELF: origin) )
        updateCache(derivedAttributeName:"PARAMETER_CURRENT_VALUE", value:value)
        return value
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_bound_variational_parameter.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eVARIATIONAL_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eVARIATIONAL_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(eGENERIC_EXPRESSION.self) else { return nil }
      self.super_eGENERIC_EXPRESSION = super3

      guard let super4 = complexEntity?.entityReference(eSIMPLE_GENERIC_EXPRESSION.self) else { return nil }
      self.super_eSIMPLE_GENERIC_EXPRESSION = super4

      guard let super5 = complexEntity?.entityReference(eGENERIC_VARIABLE.self) else { return nil }
      self.super_eGENERIC_VARIABLE = super5

      guard let super6 = complexEntity?.entityReference(eMATHS_VARIABLE.self) else { return nil }
      self.super_eMATHS_VARIABLE = super6

      guard let super7 = complexEntity?.entityReference(eVARIATIONAL_PARAMETER.self) else { return nil }
      self.super_eVARIATIONAL_PARAMETER = super7

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
      result[prefix2 + " .WHERE_wr1"] = _bound_variational_parameter.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "BOUND_VARIATIONAL_PARAMETER", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eVARIATIONAL_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGENERIC_EXPRESSION.self)
      entityDef.add(supertype: eSIMPLE_GENERIC_EXPRESSION.self)
      entityDef.add(supertype: eGENERIC_VARIABLE.self)
      entityDef.add(supertype: eMATHS_VARIABLE.self)
      entityDef.add(supertype: eVARIATIONAL_PARAMETER.self)
      entityDef.add(supertype: eBOUND_VARIATIONAL_PARAMETER.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "INTERPRETATION", keyPath: \eBOUND_VARIATIONAL_PARAMETER.INTERPRETATION, 
        kind: .inverse, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "PARAMETER_DESCRIPTION", keyPath: \eBOUND_VARIATIONAL_PARAMETER.PARAMETER_DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "VALUES_SPACE", keyPath: \eBOUND_VARIATIONAL_PARAMETER.VALUES_SPACE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "PARAMETER_CURRENT_VALUE", keyPath: \eBOUND_VARIATIONAL_PARAMETER.PARAMETER_CURRENT_VALUE, 
        kind: .derivedRedeclaring, source: .thisEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}

//MARK: - partial Entity Dynamic Attribute Protocol Conformances
extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF._bound_variational_parameter :
  eVARIATIONAL_PARAMETER__PARAMETER_CURRENT_VALUE__provider {}
