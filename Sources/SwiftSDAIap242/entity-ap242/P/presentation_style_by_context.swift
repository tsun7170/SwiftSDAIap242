/* file: presentation_style_by_context.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY presentation_style_by_context
    SUBTYPE OF ( presentation_style_assignment );
      style_context  : style_context_select;
  END_ENTITY; -- presentation_style_by_context (line:25759 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	founded_item
    ATTR:  users,	TYPE: SET [0 : ?] OF founded_item_select -- DERIVED
      := using_items( SELF, [] )


  SUPER- ENTITY(2)	presentation_style_assignment
    ATTR:  styles,	TYPE: SET [1 : ?] OF presentation_style_select -- EXPLICIT


  ENTITY(SELF)	presentation_style_by_context
    ATTR:  style_context,	TYPE: style_context_select -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _presentation_style_by_context : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      ePRESENTATION_STYLE_BY_CONTEXT.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _style_context: sSTYLE_CONTEXT_SELECT // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._style_context.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._style_context.value.isValueEqualOptionally(to: rhs._style_context.value, visited: &comppairs)	{
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
      if let comp = self._style_context.value.isValueEqualOptionally(to: rhs._style_context.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(STYLE_CONTEXT: sSTYLE_CONTEXT_SELECT) {
      self._style_context = STYLE_CONTEXT
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: sSTYLE_CONTEXT_SELECT.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( STYLE_CONTEXT: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY presentation_style_by_context
    SUBTYPE OF ( presentation_style_assignment );
      style_context  : style_context_select;
  END_ENTITY; -- presentation_style_by_context (line:25759 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class ePRESENTATION_STYLE_BY_CONTEXT : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _presentation_style_by_context.self
    }
    public let partialEntity: _presentation_style_by_context

    //MARK: SUPERTYPES
    public let super_eFOUNDED_ITEM: eFOUNDED_ITEM 	// [1]
    public let super_ePRESENTATION_STYLE_ASSIGNMENT: ePRESENTATION_STYLE_ASSIGNMENT 	// [2]
    public var super_ePRESENTATION_STYLE_BY_CONTEXT: ePRESENTATION_STYLE_BY_CONTEXT { return self } 	// [3]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``ePRESENTATION_STYLE_BY_CONTEXT`` )
    public var STYLE_CONTEXT: sSTYLE_CONTEXT_SELECT {
      get {
        return SDAI.UNWRAP( self.partialEntity._style_context )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._style_context = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eFOUNDED_ITEM`` )
    public var USERS: (SDAI.SET<sFOUNDED_ITEM_SELECT>/*[0:nil]*/ )?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"USERS") {
          return cached.value as! (SDAI.SET<sFOUNDED_ITEM_SELECT>/*[0:nil]*/ )? 
        }
        let origin = super_eFOUNDED_ITEM
        let value = SDAI.SET<sFOUNDED_ITEM_SELECT>(origin.partialEntity._users__getter(SELF: origin))
        updateCache(derivedAttributeName:"USERS", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``ePRESENTATION_STYLE_ASSIGNMENT`` )
    public var STYLES: SDAI.SET<sPRESENTATION_STYLE_SELECT>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( super_ePRESENTATION_STYLE_ASSIGNMENT.partialEntity._styles )
      }
      set(newValue) {
        let partial = super_ePRESENTATION_STYLE_ASSIGNMENT.partialEntity
        partial._styles = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_presentation_style_by_context.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eFOUNDED_ITEM.self) else { return nil }
      self.super_eFOUNDED_ITEM = super1

      guard let super2 = complexEntity?.entityReference(ePRESENTATION_STYLE_ASSIGNMENT.self) else { return nil }
      self.super_ePRESENTATION_STYLE_ASSIGNMENT = super2

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "PRESENTATION_STYLE_BY_CONTEXT", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eFOUNDED_ITEM.self)
      entityDef.add(supertype: ePRESENTATION_STYLE_ASSIGNMENT.self)
      entityDef.add(supertype: ePRESENTATION_STYLE_BY_CONTEXT.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "STYLE_CONTEXT", keyPath: \ePRESENTATION_STYLE_BY_CONTEXT.STYLE_CONTEXT, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "USERS", keyPath: \ePRESENTATION_STYLE_BY_CONTEXT.USERS, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "STYLES", keyPath: \ePRESENTATION_STYLE_BY_CONTEXT.STYLES, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
