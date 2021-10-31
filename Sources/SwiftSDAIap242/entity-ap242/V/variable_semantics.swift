/* file: variable_semantics.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  ENTITY variable_semantics
    ABSTRACT SUPERTYPE;
  END_ENTITY; -- variable_semantics (line:33425 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  ENTITY(SELF)	variable_semantics
    (no local attributes)

  SUB- ENTITY(2)	instance_attribute_reference
    ATTR:  attribute_name,	TYPE: attribute_identifier -- EXPLICIT

    ATTR:  owning_instance,	TYPE: representation_item -- EXPLICIT


  SUB- ENTITY(3)	unbound_variational_parameter_semantics
    (no local attributes)

  SUB- ENTITY(4)	expression_conversion_based_unit
    ATTR:  associated_variable_environment,	TYPE: environment -- INVERSE
      FOR semantics;


  SUB- ENTITY(5)	bound_variable_semantics
    (no local attributes)

  SUB- ENTITY(6)	free_variable_semantics
    (no local attributes)

  SUB- ENTITY(7)	variable_expression
    ATTR:  property_associated,	TYPE: property_variable_rep_select -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _variable_semantics : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eVARIABLE_SEMANTICS.self
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
  ENTITY variable_semantics
    ABSTRACT SUPERTYPE;
  END_ENTITY; -- variable_semantics (line:33425 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eVARIABLE_SEMANTICS : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _variable_semantics.self
    }
    public let partialEntity: _variable_semantics

    //MARK: SUPERTYPES
    public var super_eVARIABLE_SEMANTICS: eVARIABLE_SEMANTICS { return self } 	// [1]

    //MARK: SUBTYPES
    public var sub_eINSTANCE_ATTRIBUTE_REFERENCE: eINSTANCE_ATTRIBUTE_REFERENCE? {	// [2]
      return self.complexEntity.entityReference(eINSTANCE_ATTRIBUTE_REFERENCE.self)
    }

    public var sub_eUNBOUND_VARIATIONAL_PARAMETER_SEMANTICS: eUNBOUND_VARIATIONAL_PARAMETER_SEMANTICS? {	// [3]
      return self.complexEntity.entityReference(eUNBOUND_VARIATIONAL_PARAMETER_SEMANTICS.self)
    }

    public var sub_eEXPRESSION_CONVERSION_BASED_UNIT: eEXPRESSION_CONVERSION_BASED_UNIT? {	// [4]
      return self.complexEntity.entityReference(eEXPRESSION_CONVERSION_BASED_UNIT.self)
    }

    public var sub_eBOUND_VARIABLE_SEMANTICS: eBOUND_VARIABLE_SEMANTICS? {	// [5]
      return self.complexEntity.entityReference(eBOUND_VARIABLE_SEMANTICS.self)
    }

    public var sub_eFREE_VARIABLE_SEMANTICS: eFREE_VARIABLE_SEMANTICS? {	// [6]
      return self.complexEntity.entityReference(eFREE_VARIABLE_SEMANTICS.self)
    }

    public var sub_eVARIABLE_EXPRESSION: eVARIABLE_EXPRESSION? {	// [7]
      return self.complexEntity.entityReference(eVARIABLE_EXPRESSION.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eINSTANCE_ATTRIBUTE_REFERENCE`` )
    public var ATTRIBUTE_NAME: tATTRIBUTE_IDENTIFIER?  {
      get {
        return sub_eINSTANCE_ATTRIBUTE_REFERENCE?.partialEntity._attribute_name
      }
      set(newValue) {
        guard let partial = sub_eINSTANCE_ATTRIBUTE_REFERENCE?.super_eINSTANCE_ATTRIBUTE_REFERENCE
          .partialEntity else { return }
        partial._attribute_name = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eINSTANCE_ATTRIBUTE_REFERENCE`` )
    public var OWNING_INSTANCE: eREPRESENTATION_ITEM?  {
      get {
        return sub_eINSTANCE_ATTRIBUTE_REFERENCE?.partialEntity._owning_instance
      }
      set(newValue) {
        guard let partial = sub_eINSTANCE_ATTRIBUTE_REFERENCE?.super_eINSTANCE_ATTRIBUTE_REFERENCE
          .partialEntity else { return }
        partial._owning_instance = SDAI.UNWRAP(newValue)
      }
    }

    /// __INVERSE__ attribute
    /// observing eENVIRONMENT .SEMANTICS
    /// - origin: SUB( ``eEXPRESSION_CONVERSION_BASED_UNIT`` )
    public var ASSOCIATED_VARIABLE_ENVIRONMENT: eENVIRONMENT?  {
      get {
        return sub_eEXPRESSION_CONVERSION_BASED_UNIT?.partialEntity._associated_variable_environment
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eVARIABLE_EXPRESSION`` )
    public var PROPERTY_ASSOCIATED: sPROPERTY_VARIABLE_REP_SELECT?  {
      get {
        return sub_eVARIABLE_EXPRESSION?.partialEntity._property_associated
      }
      set(newValue) {
        guard let partial = sub_eVARIABLE_EXPRESSION?.super_eVARIABLE_EXPRESSION.partialEntity
          else { return }
        partial._property_associated = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_variable_semantics.self) else { return nil }
      self.partialEntity = partial

      super.init(complex: complexEntity)
    }

    public required convenience init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let entityRef = generic?.entityReference else { return nil }
      self.init(complex: entityRef.complexEntity)
    }

    public convenience init?<S: SDAISelectType>(_ select: S?) { self.init(possiblyFrom: select) }
    public convenience init?(_ complex: SDAI.ComplexEntity?) { self.init(complex: complex) }

    //SIMPLE ENTITY REFERENCE
    public convenience init?(_ partial:_variable_semantics) {
      let complex = SDAI.ComplexEntity(entities:[partial])
      self.init(complex: complex)
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "VARIABLE_SEMANTICS", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eVARIABLE_SEMANTICS.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "ATTRIBUTE_NAME", keyPath: \eVARIABLE_SEMANTICS.ATTRIBUTE_NAME, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "OWNING_INSTANCE", keyPath: \eVARIABLE_SEMANTICS.OWNING_INSTANCE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ASSOCIATED_VARIABLE_ENVIRONMENT", keyPath: \eVARIABLE_SEMANTICS.ASSOCIATED_VARIABLE_ENVIRONMENT, 
        kind: .inverse, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "PROPERTY_ASSOCIATED", keyPath: \eVARIABLE_SEMANTICS.PROPERTY_ASSOCIATED, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
