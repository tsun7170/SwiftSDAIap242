/* file: mechanical_context.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY mechanical_context
    SUBTYPE OF ( product_context );
    WHERE
      wr1: ( SELF.discipline_type = 'mechanical' );
  END_ENTITY; -- mechanical_context (line:20411 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	application_context_element
    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  frame_of_reference,	TYPE: application_context -- EXPLICIT
      -- observed by
        ENTITY(1): application_context,	ATTR: context_elements,	TYPE: SET [1 : ?] OF
          application_context_element


  SUPER- ENTITY(2)	product_context
    ATTR:  discipline_type,	TYPE: label -- EXPLICIT


  ENTITY(SELF)	mechanical_context
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _mechanical_context : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eMECHANICAL_CONTEXT.self
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
    public static func WHERE_wr1(SELF: eMECHANICAL_CONTEXT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.DISCIPLINE_TYPE
      let _TEMP2 = SDAI.FORCE_OPTIONAL(_TEMP1) .==. SDAI.FORCE_OPTIONAL(SDAI.STRING("mechanical"))
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
  ENTITY mechanical_context
    SUBTYPE OF ( product_context );
    WHERE
      wr1: ( SELF.discipline_type = 'mechanical' );
  END_ENTITY; -- mechanical_context (line:20411 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eMECHANICAL_CONTEXT : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _mechanical_context.self
    }
    public let partialEntity: _mechanical_context

    //MARK: SUPERTYPES
    public let super_eAPPLICATION_CONTEXT_ELEMENT: eAPPLICATION_CONTEXT_ELEMENT 	// [1]
    public let super_ePRODUCT_CONTEXT: ePRODUCT_CONTEXT 	// [2]
    public var super_eMECHANICAL_CONTEXT: eMECHANICAL_CONTEXT { return self } 	// [3]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``ePRODUCT_CONTEXT`` )
    public var DISCIPLINE_TYPE: tLABEL {
      get {
        return SDAI.UNWRAP( super_ePRODUCT_CONTEXT.partialEntity._discipline_type )
      }
      set(newValue) {
        let partial = super_ePRODUCT_CONTEXT.partialEntity
        partial._discipline_type = SDAI.UNWRAP(newValue)
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
      guard let partial = complexEntity?.partialEntityInstance(_mechanical_context.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eAPPLICATION_CONTEXT_ELEMENT.self) else { return nil }
      self.super_eAPPLICATION_CONTEXT_ELEMENT = super1

      guard let super2 = complexEntity?.entityReference(ePRODUCT_CONTEXT.self) else { return nil }
      self.super_ePRODUCT_CONTEXT = super2

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
      result[prefix2 + " .WHERE_wr1"] = _mechanical_context.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "MECHANICAL_CONTEXT", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eAPPLICATION_CONTEXT_ELEMENT.self)
      entityDef.add(supertype: ePRODUCT_CONTEXT.self)
      entityDef.add(supertype: eMECHANICAL_CONTEXT.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DISCIPLINE_TYPE", keyPath: \eMECHANICAL_CONTEXT.DISCIPLINE_TYPE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "FRAME_OF_REFERENCE", keyPath: \eMECHANICAL_CONTEXT.FRAME_OF_REFERENCE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eMECHANICAL_CONTEXT.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
