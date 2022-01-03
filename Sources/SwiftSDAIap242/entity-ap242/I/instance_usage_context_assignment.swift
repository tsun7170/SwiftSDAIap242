/* file: instance_usage_context_assignment.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY instance_usage_context_assignment
    SUBTYPE OF ( product_definition_context );
      items  : SET [1 : ?] OF instance_usage_context_select;
  END_ENTITY; -- instance_usage_context_assignment (line:18210 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	application_context_element
    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  frame_of_reference,	TYPE: application_context -- EXPLICIT
      -- observed by
        ENTITY(1): application_context,	ATTR: context_elements,	TYPE: SET [1 : ?] OF
          application_context_element


  SUPER- ENTITY(2)	product_definition_context
    ATTR:  life_cycle_stage,	TYPE: label -- EXPLICIT


  ENTITY(SELF)	instance_usage_context_assignment
    ATTR:  items,	TYPE: SET [1 : ?] OF instance_usage_context_select -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _instance_usage_context_assignment : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eINSTANCE_USAGE_CONTEXT_ASSIGNMENT.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _items: SDAI.SET<sINSTANCE_USAGE_CONTEXT_SELECT>/*[1:nil]*/  // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._items.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._items.value.isValueEqualOptionally(to: rhs._items.value, visited: &comppairs)	{
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
      if let comp = self._items.value.isValueEqualOptionally(to: rhs._items.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(ITEMS: SDAI.SET<sINSTANCE_USAGE_CONTEXT_SELECT>/*[1:nil]*/ ) {
      self._items = ITEMS
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: SDAI.SET<
        sINSTANCE_USAGE_CONTEXT_SELECT>.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( ITEMS: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY instance_usage_context_assignment
    SUBTYPE OF ( product_definition_context );
      items  : SET [1 : ?] OF instance_usage_context_select;
  END_ENTITY; -- instance_usage_context_assignment (line:18210 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eINSTANCE_USAGE_CONTEXT_ASSIGNMENT : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _instance_usage_context_assignment.self
    }
    public let partialEntity: _instance_usage_context_assignment

    //MARK: SUPERTYPES
    public let super_eAPPLICATION_CONTEXT_ELEMENT: eAPPLICATION_CONTEXT_ELEMENT 	// [1]
    public let super_ePRODUCT_DEFINITION_CONTEXT: ePRODUCT_DEFINITION_CONTEXT 	// [2]
    public var super_eINSTANCE_USAGE_CONTEXT_ASSIGNMENT: eINSTANCE_USAGE_CONTEXT_ASSIGNMENT { return self } 	// [3]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eINSTANCE_USAGE_CONTEXT_ASSIGNMENT`` )
    public var ITEMS: SDAI.SET<sINSTANCE_USAGE_CONTEXT_SELECT>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._items )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._items = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``ePRODUCT_DEFINITION_CONTEXT`` )
    public var LIFE_CYCLE_STAGE: tLABEL {
      get {
        return SDAI.UNWRAP( super_ePRODUCT_DEFINITION_CONTEXT.partialEntity._life_cycle_stage )
      }
      set(newValue) {
        let partial = super_ePRODUCT_DEFINITION_CONTEXT.partialEntity
        partial._life_cycle_stage = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT(OBSERVED)__ attribute
    /// - origin: SUPER( ``eAPPLICATION_CONTEXT_ELEMENT`` )
    public var FRAME_OF_REFERENCE: eAPPLICATION_CONTEXT {
      get {
        return SDAI.UNWRAP( super_eAPPLICATION_CONTEXT_ELEMENT.partialEntity._frame_of_reference )
      }
      set(newValue) {
        let partial = super_eAPPLICATION_CONTEXT_ELEMENT.partialEntity
        partial._frame_of_reference = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eAPPLICATION_CONTEXT_ELEMENT`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( super_eAPPLICATION_CONTEXT_ELEMENT.partialEntity._name )
      }
      set(newValue) {
        let partial = super_eAPPLICATION_CONTEXT_ELEMENT.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_instance_usage_context_assignment.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eAPPLICATION_CONTEXT_ELEMENT.self) else { return nil }
      self.super_eAPPLICATION_CONTEXT_ELEMENT = super1

      guard let super2 = complexEntity?.entityReference(ePRODUCT_DEFINITION_CONTEXT.self) else { return nil }
      self.super_ePRODUCT_DEFINITION_CONTEXT = super2

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "INSTANCE_USAGE_CONTEXT_ASSIGNMENT", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eAPPLICATION_CONTEXT_ELEMENT.self)
      entityDef.add(supertype: ePRODUCT_DEFINITION_CONTEXT.self)
      entityDef.add(supertype: eINSTANCE_USAGE_CONTEXT_ASSIGNMENT.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "ITEMS", keyPath: \eINSTANCE_USAGE_CONTEXT_ASSIGNMENT.ITEMS, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "LIFE_CYCLE_STAGE", keyPath: \eINSTANCE_USAGE_CONTEXT_ASSIGNMENT.LIFE_CYCLE_STAGE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "FRAME_OF_REFERENCE", keyPath: \eINSTANCE_USAGE_CONTEXT_ASSIGNMENT.FRAME_OF_REFERENCE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eINSTANCE_USAGE_CONTEXT_ASSIGNMENT.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
