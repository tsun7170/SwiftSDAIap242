/* file: pmi_requirement_item_association.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY pmi_requirement_item_association
    SUBTYPE OF ( item_identified_representation_usage );
      requirement  : characterized_object;
  END_ENTITY; -- pmi_requirement_item_association (line:24673 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	item_identified_representation_usage
    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT

    ATTR:  definition,	TYPE: item_identified_representation_usage_definition -- EXPLICIT
      -- observed by
        ENTITY(1): explicit_composite_hole,	ATTR: explicit_shape,	TYPE: SET [0 : ?] OF
          item_identified_representation_usage
      -- possibly overriden by
          ENTITY: draughting_model_item_association,	TYPE: draughting_model_item_definition
          ENTITY: geometric_item_specific_usage,	TYPE: geometric_item_specific_usage_select

    ATTR:  used_representation,	TYPE: representation -- EXPLICIT
      -- possibly overriden by
          ENTITY: draughting_model_item_association,	TYPE: annotation_representation_select
          ENTITY: geometric_item_specific_usage,	TYPE: shape_model

    ATTR:  identified_item,	TYPE: item_identified_representation_usage_select -- EXPLICIT
      -- possibly overriden by
          ENTITY: draughting_model_item_association,	TYPE: draughting_model_item_association_select
          ENTITY: draughting_model_item_association_with_placeholder,	TYPE: draughting_callout
          ENTITY: geometric_item_specific_usage,	TYPE: geometric_model_item


  ENTITY(SELF)	pmi_requirement_item_association
    ATTR:  requirement,	TYPE: characterized_object -- EXPLICIT
      -- possibly overriden by
          ENTITY: mechanical_design_requirement_item_association,	TYPE: requirement_assignment


  SUB- ENTITY(3)	mechanical_design_requirement_item_association
    REDCR: requirement,	TYPE: requirement_assignment -- EXPLICIT
      -- OVERRIDING ENTITY: pmi_requirement_item_association


*/


//MARK: - Partial Entity
  public final class _pmi_requirement_item_association : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      ePMI_REQUIREMENT_ITEM_ASSOCIATION.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _requirement: eCHARACTERIZED_OBJECT // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._requirement.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._requirement.value.isValueEqualOptionally(to: rhs._requirement.value, visited: &comppairs)	{
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
      if let comp = self._requirement.value.isValueEqualOptionally(to: rhs._requirement.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(REQUIREMENT: eCHARACTERIZED_OBJECT) {
      self._requirement = REQUIREMENT
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: eCHARACTERIZED_OBJECT.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( REQUIREMENT: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY pmi_requirement_item_association
    SUBTYPE OF ( item_identified_representation_usage );
      requirement  : characterized_object;
  END_ENTITY; -- pmi_requirement_item_association (line:24673 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class ePMI_REQUIREMENT_ITEM_ASSOCIATION : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _pmi_requirement_item_association.self
    }
    public let partialEntity: _pmi_requirement_item_association

    //MARK: SUPERTYPES
    public let super_eITEM_IDENTIFIED_REPRESENTATION_USAGE: eITEM_IDENTIFIED_REPRESENTATION_USAGE 	// [1]
    public var super_ePMI_REQUIREMENT_ITEM_ASSOCIATION: ePMI_REQUIREMENT_ITEM_ASSOCIATION { return self } 	// [2]

    //MARK: SUBTYPES
    public var sub_eMECHANICAL_DESIGN_REQUIREMENT_ITEM_ASSOCIATION: eMECHANICAL_DESIGN_REQUIREMENT_ITEM_ASSOCIATION? {	// [3]
      return self.complexEntity.entityReference(eMECHANICAL_DESIGN_REQUIREMENT_ITEM_ASSOCIATION.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eITEM_IDENTIFIED_REPRESENTATION_USAGE`` )
    public var IDENTIFIED_ITEM: sITEM_IDENTIFIED_REPRESENTATION_USAGE_SELECT {
      get {
        return SDAI.UNWRAP( super_eITEM_IDENTIFIED_REPRESENTATION_USAGE.partialEntity._identified_item )
      }
      set(newValue) {
        let partial = super_eITEM_IDENTIFIED_REPRESENTATION_USAGE.partialEntity
        partial._identified_item = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eITEM_IDENTIFIED_REPRESENTATION_USAGE`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        return super_eITEM_IDENTIFIED_REPRESENTATION_USAGE.partialEntity._description
      }
      set(newValue) {
        let partial = super_eITEM_IDENTIFIED_REPRESENTATION_USAGE.partialEntity
        partial._description = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``ePMI_REQUIREMENT_ITEM_ASSOCIATION`` )
    public var REQUIREMENT: eCHARACTERIZED_OBJECT {
      get {
        return SDAI.UNWRAP( self.partialEntity._requirement )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._requirement = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eITEM_IDENTIFIED_REPRESENTATION_USAGE`` )
    public var USED_REPRESENTATION: eREPRESENTATION {
      get {
        return SDAI.UNWRAP( super_eITEM_IDENTIFIED_REPRESENTATION_USAGE.partialEntity._used_representation )
      }
      set(newValue) {
        let partial = super_eITEM_IDENTIFIED_REPRESENTATION_USAGE.partialEntity
        partial._used_representation = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT(OBSERVED)__ attribute
    /// - origin: SUPER( ``eITEM_IDENTIFIED_REPRESENTATION_USAGE`` )
    public var DEFINITION: sITEM_IDENTIFIED_REPRESENTATION_USAGE_DEFINITION {
      get {
        return SDAI.UNWRAP( super_eITEM_IDENTIFIED_REPRESENTATION_USAGE.partialEntity._definition )
      }
      set(newValue) {
        let partial = super_eITEM_IDENTIFIED_REPRESENTATION_USAGE.partialEntity
        partial._definition = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eITEM_IDENTIFIED_REPRESENTATION_USAGE`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( super_eITEM_IDENTIFIED_REPRESENTATION_USAGE.partialEntity._name )
      }
      set(newValue) {
        let partial = super_eITEM_IDENTIFIED_REPRESENTATION_USAGE.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_pmi_requirement_item_association.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eITEM_IDENTIFIED_REPRESENTATION_USAGE.self) else { return nil }
      self.super_eITEM_IDENTIFIED_REPRESENTATION_USAGE = super1

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "PMI_REQUIREMENT_ITEM_ASSOCIATION", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eITEM_IDENTIFIED_REPRESENTATION_USAGE.self)
      entityDef.add(supertype: ePMI_REQUIREMENT_ITEM_ASSOCIATION.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "IDENTIFIED_ITEM", keyPath: \ePMI_REQUIREMENT_ITEM_ASSOCIATION.IDENTIFIED_ITEM, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \ePMI_REQUIREMENT_ITEM_ASSOCIATION.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "REQUIREMENT", keyPath: \ePMI_REQUIREMENT_ITEM_ASSOCIATION.REQUIREMENT, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "USED_REPRESENTATION", keyPath: \ePMI_REQUIREMENT_ITEM_ASSOCIATION.USED_REPRESENTATION, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DEFINITION", keyPath: \ePMI_REQUIREMENT_ITEM_ASSOCIATION.DEFINITION, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \ePMI_REQUIREMENT_ITEM_ASSOCIATION.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
