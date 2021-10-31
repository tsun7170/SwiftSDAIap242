/* file: tagged_text_format.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  ENTITY tagged_text_format
    SUBTYPE OF ( representation_context );
  END_ENTITY; -- tagged_text_format (line:31605 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_context
    ATTR:  context_identifier,	TYPE: identifier -- EXPLICIT

    ATTR:  context_type,	TYPE: text -- EXPLICIT

    ATTR:  representations_in_context,	TYPE: SET [1 : ?] OF representation -- INVERSE
      FOR context_of_items;


  ENTITY(SELF)	tagged_text_format
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _tagged_text_format : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eTAGGED_TEXT_FORMAT.self
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
  ENTITY tagged_text_format
    SUBTYPE OF ( representation_context );
  END_ENTITY; -- tagged_text_format (line:31605 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eTAGGED_TEXT_FORMAT : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _tagged_text_format.self
    }
    public let partialEntity: _tagged_text_format

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_CONTEXT: eREPRESENTATION_CONTEXT 	// [1]
    public var super_eTAGGED_TEXT_FORMAT: eTAGGED_TEXT_FORMAT { return self } 	// [2]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eREPRESENTATION_CONTEXT`` )
    public var CONTEXT_IDENTIFIER: tIDENTIFIER {
      get {
        return SDAI.UNWRAP( super_eREPRESENTATION_CONTEXT.partialEntity._context_identifier )
      }
      set(newValue) {
        let partial = super_eREPRESENTATION_CONTEXT.partialEntity
        partial._context_identifier = SDAI.UNWRAP(newValue)
      }
    }

    /// __INVERSE__ attribute
    /// observing eREPRESENTATION .CONTEXT_OF_ITEMS
    /// - origin: SUPER( ``eREPRESENTATION_CONTEXT`` )
    public var REPRESENTATIONS_IN_CONTEXT: SDAI.SET<eREPRESENTATION>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( super_eREPRESENTATION_CONTEXT.partialEntity._representations_in_context )
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eREPRESENTATION_CONTEXT`` )
    public var CONTEXT_TYPE: tTEXT {
      get {
        return SDAI.UNWRAP( super_eREPRESENTATION_CONTEXT.partialEntity._context_type )
      }
      set(newValue) {
        let partial = super_eREPRESENTATION_CONTEXT.partialEntity
        partial._context_type = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_tagged_text_format.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_CONTEXT.self) else { return nil }
      self.super_eREPRESENTATION_CONTEXT = super1

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "TAGGED_TEXT_FORMAT", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_CONTEXT.self)
      entityDef.add(supertype: eTAGGED_TEXT_FORMAT.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "CONTEXT_IDENTIFIER", keyPath: \eTAGGED_TEXT_FORMAT.CONTEXT_IDENTIFIER, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "REPRESENTATIONS_IN_CONTEXT", keyPath: \eTAGGED_TEXT_FORMAT.REPRESENTATIONS_IN_CONTEXT, 
        kind: .inverse, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "CONTEXT_TYPE", keyPath: \eTAGGED_TEXT_FORMAT.CONTEXT_TYPE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
