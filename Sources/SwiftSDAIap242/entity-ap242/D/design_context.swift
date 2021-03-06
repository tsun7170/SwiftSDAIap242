/* file: design_context.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY design_context
    SUBTYPE OF ( product_definition_context );
    WHERE
      wr1: ( SELF.life_cycle_stage = 'design' );
  END_ENTITY; -- design_context (line:11989 file:ap242ed2_mim_lf_v1.101.TY.exp)

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


  ENTITY(SELF)	design_context
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _design_context : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eDESIGN_CONTEXT.self
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
    public static func WHERE_wr1(SELF: eDESIGN_CONTEXT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.LIFE_CYCLE_STAGE
      let _TEMP2 = SDAI.FORCE_OPTIONAL(_TEMP1) .==. SDAI.FORCE_OPTIONAL(SDAI.STRING("design"))
      return _TEMP2
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
  ENTITY design_context
    SUBTYPE OF ( product_definition_context );
    WHERE
      wr1: ( SELF.life_cycle_stage = 'design' );
  END_ENTITY; -- design_context (line:11989 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eDESIGN_CONTEXT : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _design_context.self
    }
    public let partialEntity: _design_context

    //MARK: SUPERTYPES
    public let super_eAPPLICATION_CONTEXT_ELEMENT: eAPPLICATION_CONTEXT_ELEMENT 	// [1]
    public let super_ePRODUCT_DEFINITION_CONTEXT: ePRODUCT_DEFINITION_CONTEXT 	// [2]
    public var super_eDESIGN_CONTEXT: eDESIGN_CONTEXT { return self } 	// [3]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
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
      guard let partial = complexEntity?.partialEntityInstance(_design_context.self) else { return nil }
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


    //MARK: WHERE RULE VALIDATION (ENTITY)
    public override class func validateWhereRules(instance:SDAI.EntityReference?, prefix:SDAI.WhereLabel) -> [SDAI.WhereLabel:SDAI.LOGICAL] {
      guard let instance = instance as? Self else { return [:] }

      let prefix2 = prefix + " \(instance)"

      var result = super.validateWhereRules(instance:instance, prefix:prefix2)
      result[prefix2 + " .WHERE_wr1"] = _design_context.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "DESIGN_CONTEXT", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eAPPLICATION_CONTEXT_ELEMENT.self)
      entityDef.add(supertype: ePRODUCT_DEFINITION_CONTEXT.self)
      entityDef.add(supertype: eDESIGN_CONTEXT.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "LIFE_CYCLE_STAGE", keyPath: \eDESIGN_CONTEXT.LIFE_CYCLE_STAGE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "FRAME_OF_REFERENCE", keyPath: \eDESIGN_CONTEXT.FRAME_OF_REFERENCE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eDESIGN_CONTEXT.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
