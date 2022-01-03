/* file: material_property_representation.swift 	 generated: Mon Jan  3 16:32:52 2022 */

/* This file was generated by the EXPRESS to Swift translator "exp2swift", 
    derived from STEPcode (formerly NIST's SCL).
 exp2swift version: v.1.0.1, derived from stepcode v0.8 as of 2019/11/23 
 WARNING: You probably don't want to edit it since your modifications 
    will be lost if exp2swift is used to regenerate it.
 */

 
import SwiftSDAIcore

extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF {
//MARK: -ENTITY DEFINITION in EXPRESS
/*

  ENTITY material_property_representation
    SUBTYPE OF ( property_definition_representation );
      dependent_environment  : data_environment;
  END_ENTITY; -- material_property_representation (line:20273 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	property_definition_representation
    ATTR:  definition,	TYPE: represented_definition -- EXPLICIT
      -- possibly overriden by
          ENTITY: shape_definition_representation,	TYPE: property_definition
          ENTITY: kinematic_property_definition_representation,	TYPE: product_definition_kinematics	(OBSERVED)

    ATTR:  used_representation,	TYPE: representation -- EXPLICIT
      -- possibly overriden by
          ENTITY: shape_definition_representation,	TYPE: shape_representation
          ENTITY: kinematic_property_topology_representation,	TYPE: kinematic_topology_representation_select
          ENTITY: kinematic_property_mechanism_representation,	TYPE: mechanism_representation

    ATTR:  description,	TYPE: text -- DERIVED
      := get_description_value( SELF )

    ATTR:  name,	TYPE: label -- DERIVED
      := get_name_value( SELF )


  ENTITY(SELF)	material_property_representation
    ATTR:  dependent_environment,	TYPE: data_environment -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _material_property_representation : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eMATERIAL_PROPERTY_REPRESENTATION.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _dependent_environment: eDATA_ENVIRONMENT // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sCHARACTERIZED_MATERIAL_PROPERTY.typeName)) // -> Self
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._dependent_environment.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._dependent_environment.value.isValueEqualOptionally(to: rhs._dependent_environment.value, visited: &comppairs)	{
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
      if let comp = self._dependent_environment.value.isValueEqualOptionally(to: rhs._dependent_environment.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(DEPENDENT_ENVIRONMENT: eDATA_ENVIRONMENT) {
      self._dependent_environment = DEPENDENT_ENVIRONMENT
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: eDATA_ENVIRONMENT.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( DEPENDENT_ENVIRONMENT: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY material_property_representation
    SUBTYPE OF ( property_definition_representation );
      dependent_environment  : data_environment;
  END_ENTITY; -- material_property_representation (line:20273 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eMATERIAL_PROPERTY_REPRESENTATION : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _material_property_representation.self
    }
    public let partialEntity: _material_property_representation

    //MARK: SUPERTYPES
    public let super_ePROPERTY_DEFINITION_REPRESENTATION: ePROPERTY_DEFINITION_REPRESENTATION 	// [1]
    public var super_eMATERIAL_PROPERTY_REPRESENTATION: eMATERIAL_PROPERTY_REPRESENTATION { return self } 	// [2]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __DERIVE__ attribute
    /// - origin: SUPER( ``ePROPERTY_DEFINITION_REPRESENTATION`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"DESCRIPTION") {
          return cached.value as! tTEXT? 
        }
        let origin = super_ePROPERTY_DEFINITION_REPRESENTATION
        let value = tTEXT(origin.partialEntity._description__getter(SELF: origin))
        updateCache(derivedAttributeName:"DESCRIPTION", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eMATERIAL_PROPERTY_REPRESENTATION`` )
    public var DEPENDENT_ENVIRONMENT: eDATA_ENVIRONMENT {
      get {
        return SDAI.UNWRAP( self.partialEntity._dependent_environment )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._dependent_environment = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``ePROPERTY_DEFINITION_REPRESENTATION`` )
    public var USED_REPRESENTATION: eREPRESENTATION {
      get {
        return SDAI.UNWRAP( super_ePROPERTY_DEFINITION_REPRESENTATION.partialEntity._used_representation )
      }
      set(newValue) {
        let partial = super_ePROPERTY_DEFINITION_REPRESENTATION.partialEntity
        partial._used_representation = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``ePROPERTY_DEFINITION_REPRESENTATION`` )
    public var DEFINITION: sREPRESENTED_DEFINITION {
      get {
        return SDAI.UNWRAP( super_ePROPERTY_DEFINITION_REPRESENTATION.partialEntity._definition )
      }
      set(newValue) {
        let partial = super_ePROPERTY_DEFINITION_REPRESENTATION.partialEntity
        partial._definition = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``ePROPERTY_DEFINITION_REPRESENTATION`` )
    public var NAME: tLABEL?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"NAME") {
          return cached.value as! tLABEL? 
        }
        let origin = super_ePROPERTY_DEFINITION_REPRESENTATION
        let value = tLABEL(origin.partialEntity._name__getter(SELF: origin))
        updateCache(derivedAttributeName:"NAME", value:value)
        return value
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_material_property_representation.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(ePROPERTY_DEFINITION_REPRESENTATION.self) else { return nil }
      self.super_ePROPERTY_DEFINITION_REPRESENTATION = super1

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "MATERIAL_PROPERTY_REPRESENTATION", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: ePROPERTY_DEFINITION_REPRESENTATION.self)
      entityDef.add(supertype: eMATERIAL_PROPERTY_REPRESENTATION.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eMATERIAL_PROPERTY_REPRESENTATION.DESCRIPTION, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DEPENDENT_ENVIRONMENT", keyPath: \eMATERIAL_PROPERTY_REPRESENTATION.DEPENDENT_ENVIRONMENT, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "USED_REPRESENTATION", keyPath: \eMATERIAL_PROPERTY_REPRESENTATION.USED_REPRESENTATION, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DEFINITION", keyPath: \eMATERIAL_PROPERTY_REPRESENTATION.DEFINITION, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eMATERIAL_PROPERTY_REPRESENTATION.NAME, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
