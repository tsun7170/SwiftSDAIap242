/* file: product_definition_relationship_kinematics.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY product_definition_relationship_kinematics
    SUBTYPE OF ( property_definition );
      SELF\property_definition.definition : product_definition_relationship;
    UNIQUE
      ur1 : definition;
  END_ENTITY; -- product_definition_relationship_kinematics (line:26196 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	property_definition
    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT

    ATTR:  definition,	TYPE: characterized_definition -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: mating_material,	TYPE: product_definition_usage_relationship
          ENTITY: product_definition_kinematics,	TYPE: product_definition
      *** ENTITY: product_definition_relationship_kinematics,	TYPE: product_definition_relationship
          ENTITY: mated_part_relationship,	TYPE: mated_part_relationship	(as DERIVED)
          ENTITY: single_property_is_definition,	TYPE: product_definition
          ENTITY: assembly_component,	TYPE: assembly_component	(as DERIVED)

    ATTR:  id,	TYPE: identifier -- DERIVED
      := get_id_value( SELF )


  ENTITY(SELF)	product_definition_relationship_kinematics
    REDCR: definition,	TYPE: product_definition_relationship -- EXPLICIT
      -- OVERRIDING ENTITY: property_definition


*/


//MARK: - Partial Entity
  public final class _product_definition_relationship_kinematics : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      ePRODUCT_DEFINITION_RELATIONSHIP_KINEMATICS.self
    }

    //ATTRIBUTES
    /* override var _definition: ePRODUCT_DEFINITION_RELATIONSHIP	//EXPLICIT REDEFINITION(ePROPERTY_DEFINITION) */

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


    //UNIQUENESS RULES
    public static func UNIQUE_ur1(SELF: SDAI.EntityReference) -> AnyHashable? {
      guard let SELF = SELF as? ePRODUCT_DEFINITION_RELATIONSHIP_KINEMATICS else { return nil }
      //SIMPLE UNIQUE RULE

      let attr = SELF.DEFINITION
      return AnyHashable( attr )
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
  ENTITY product_definition_relationship_kinematics
    SUBTYPE OF ( property_definition );
      SELF\property_definition.definition : product_definition_relationship;
    UNIQUE
      ur1 : definition;
  END_ENTITY; -- product_definition_relationship_kinematics (line:26196 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class ePRODUCT_DEFINITION_RELATIONSHIP_KINEMATICS : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _product_definition_relationship_kinematics.self
    }
    public let partialEntity: _product_definition_relationship_kinematics

    //MARK: SUPERTYPES
    public let super_ePROPERTY_DEFINITION: ePROPERTY_DEFINITION 	// [1]
    public var super_ePRODUCT_DEFINITION_RELATIONSHIP_KINEMATICS: ePRODUCT_DEFINITION_RELATIONSHIP_KINEMATICS { return self } 	// [2]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``ePROPERTY_DEFINITION`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        return super_ePROPERTY_DEFINITION.partialEntity._description
      }
      set(newValue) {
        let partial = super_ePROPERTY_DEFINITION.partialEntity
        partial._description = newValue
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``ePROPERTY_DEFINITION`` )
    public var ID: tIDENTIFIER?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"ID") {
          return cached.value as! tIDENTIFIER? 
        }
        let origin = super_ePROPERTY_DEFINITION
        let value = tIDENTIFIER(origin.partialEntity._id__getter(SELF: origin))
        updateCache(derivedAttributeName:"ID", value:value)
        return value
      }
    }

    /// __EXPLICIT REDEF(DYNAMIC)__ attribute
    /// - origin: SELF( ``ePRODUCT_DEFINITION_RELATIONSHIP_KINEMATICS`` )
    public var DEFINITION: ePRODUCT_DEFINITION_RELATIONSHIP {
      get {
        if let resolved = _property_definition._definition__provider(complex: self.complexEntity) {
          let value = SDAI.UNWRAP( ePRODUCT_DEFINITION_RELATIONSHIP(resolved._definition__getter(
            complex: self.complexEntity)) )
          return value
        }
        else {
          return SDAI.UNWRAP( ePRODUCT_DEFINITION_RELATIONSHIP(super_ePROPERTY_DEFINITION.partialEntity
            ._definition) )
        }
      }
      set(newValue) {
        if let _ = _property_definition._definition__provider(complex: self.complexEntity) { return }

        let partial = super_ePROPERTY_DEFINITION.partialEntity
        partial._definition = SDAI.UNWRAP(
          sCHARACTERIZED_DEFINITION(newValue))
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``ePROPERTY_DEFINITION`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( super_ePROPERTY_DEFINITION.partialEntity._name )
      }
      set(newValue) {
        let partial = super_ePROPERTY_DEFINITION.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_product_definition_relationship_kinematics.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(ePROPERTY_DEFINITION.self) else { return nil }
      self.super_ePROPERTY_DEFINITION = super1

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "PRODUCT_DEFINITION_RELATIONSHIP_KINEMATICS", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: ePROPERTY_DEFINITION.self)
      entityDef.add(supertype: ePRODUCT_DEFINITION_RELATIONSHIP_KINEMATICS.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \ePRODUCT_DEFINITION_RELATIONSHIP_KINEMATICS.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ID", keyPath: \ePRODUCT_DEFINITION_RELATIONSHIP_KINEMATICS.ID, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DEFINITION", keyPath: \ePRODUCT_DEFINITION_RELATIONSHIP_KINEMATICS.DEFINITION, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \ePRODUCT_DEFINITION_RELATIONSHIP_KINEMATICS.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      //MARK: UNIQUENESS RULE REGISTRATIONS
      entityDef.addUniqunessRule(label:"UNIQUE_ur1", rule: _product_definition_relationship_kinematics.UNIQUE_ur1)

      return entityDef
    }

  }
}
