/* file: character_glyph_font_usage.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY character_glyph_font_usage;
      character  : generic_character_glyph_symbol;
      font       : text_font; (* observed by
          text_font.glyphs
          *)
  END_ENTITY; -- character_glyph_font_usage (line:9174 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  ENTITY(SELF)	character_glyph_font_usage
    ATTR:  character,	TYPE: generic_character_glyph_symbol -- EXPLICIT

    ATTR:  font,	TYPE: text_font -- EXPLICIT
      -- observed by
        ENTITY(1): text_font,	ATTR: glyphs,	TYPE: SET [1 : ?] OF character_glyph_font_usage


*/


//MARK: - Partial Entity
  public final class _character_glyph_font_usage : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eCHARACTER_GLYPH_FONT_USAGE.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _character: eGENERIC_CHARACTER_GLYPH_SYMBOL // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE (OBSERVED)
    public internal(set) var _font: eTEXT_FONT{ // OBSERVED EXPLICIT ATTRIBUTE
      get {
        return __font.copy()
      } // getter
      set {
        let newValue = newValue
        let observer = SDAI.EntityReferenceObserver(referencer: self, observerCode: _font__observer.self)
        newValue.configure(with: observer)
        observer.observe(removing: SDAI.UNWRAP(seq:__font.entityReferences),
          adding: SDAI.UNWRAP(seq: newValue.entityReferences) )
      } // setter
    }

    /// backing storage for observed attribute
    private var __font: eTEXT_FONT

    /// attribute observer code
    internal class _font__observer: SDAI.EntityReferenceObserver.ObserverCode {
      final override class func observe<RemovingEntities: Sequence, AddingEntities: Sequence>(
        referencer: SDAI.PartialEntity, removing: RemovingEntities, adding: AddingEntities )
        where RemovingEntities.Element: SDAI.EntityReference, AddingEntities.Element: SDAI.EntityReference
      {
        for referencedComplex in removing.map({ $0.complexEntity }) {
          for referencerOwner in referencer.owners {
            //OBSERVING ENTITY: eTEXT_FONT
            referencedComplex.partialEntityInstance(_text_font.self)?
              ._glyphs__observeRemovedReference(in: referencerOwner)
          }
        }

        for referencedComplex in adding.map({ $0.complexEntity }) {
          for referencerOwner in referencer.owners {
            //OBSERVING ENTITY: eTEXT_FONT
            referencedComplex.partialEntityInstance(_text_font.self)?
              ._glyphs__observeAddedReference(in: referencerOwner)
          }
        }
      }

      final override class func observe(newReferencerOwner referencerOwner: SDAI.ComplexEntity) {
        guard let attrValue = referencerOwner.partialEntityInstance(_character_glyph_font_usage.self)?._font else { return }
        for referencedComplex in attrValue.entityReferences.map({ $0.complexEntity }) {
        //OBSERVING ENTITY: eTEXT_FONT
        referencedComplex.partialEntityInstance(_text_font.self)?
          ._glyphs__observeAddedReference(in: referencerOwner)
        }
      }

      final override class func observe(leavingReferencerOwner referencerOwner: SDAI.ComplexEntity) {
        guard let attrValue = referencerOwner.partialEntityInstance(_character_glyph_font_usage.self)?._font else { return }
        for referencedComplex in attrValue.entityReferences.map({ $0.complexEntity }) {
        //OBSERVING ENTITY: eTEXT_FONT
        referencedComplex.partialEntityInstance(_text_font.self)?
          ._glyphs__observe(leavingReferencerOwner: referencerOwner)
        }
      }

    }

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._character.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._font.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._character.value.isValueEqualOptionally(to: rhs._character.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._font.value.isValueEqualOptionally(to: rhs._font.value, visited: &comppairs)	{
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
      if let comp = self._character.value.isValueEqualOptionally(to: rhs._character.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._font.value.isValueEqualOptionally(to: rhs._font.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(CHARACTER: eGENERIC_CHARACTER_GLYPH_SYMBOL, FONT: eTEXT_FONT) {
      self._character = CHARACTER
      self.__font = FONT
      super.init(asAbstructSuperclass:())

      self._font.configure(with: SDAI.EntityReferenceObserver(referencer: self, observerCode: _font__observer.self))
    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: 
        eGENERIC_CHARACTER_GLYPH_SYMBOL.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: eTEXT_FONT.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( CHARACTER: p0, FONT: p1 )
    }

    /// broadcasting a new complex entity becoming an owner of the partial entity
    final public override func broadcast(addedToComplex complex: SDAI.ComplexEntity) {
      _font__observer.observe(newReferencerOwner: complex)
    }

    /// broadcasting a complex entity withdrawing an owner of the partial entity
    final public override func broadcast(removedFromComplex complex: SDAI.ComplexEntity) {
      _font__observer.observe(leavingReferencerOwner: complex)
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY character_glyph_font_usage;
      character  : generic_character_glyph_symbol;
      font       : text_font; (* observed by
          text_font.glyphs
          *)
  END_ENTITY; -- character_glyph_font_usage (line:9174 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eCHARACTER_GLYPH_FONT_USAGE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _character_glyph_font_usage.self
    }
    public let partialEntity: _character_glyph_font_usage

    //MARK: SUPERTYPES
    public var super_eCHARACTER_GLYPH_FONT_USAGE: eCHARACTER_GLYPH_FONT_USAGE { return self } 	// [1]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eCHARACTER_GLYPH_FONT_USAGE`` )
    public var CHARACTER: eGENERIC_CHARACTER_GLYPH_SYMBOL {
      get {
        return SDAI.UNWRAP( self.partialEntity._character )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._character = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT(OBSERVED)__ attribute
    /// - origin: SELF( ``eCHARACTER_GLYPH_FONT_USAGE`` )
    public var FONT: eTEXT_FONT {
      get {
        return SDAI.UNWRAP( self.partialEntity._font )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._font = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_character_glyph_font_usage.self) else { return nil }
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
    public convenience init?(_ partial:_character_glyph_font_usage) {
      let complex = SDAI.ComplexEntity(entities:[partial])
      self.init(complex: complex)
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "CHARACTER_GLYPH_FONT_USAGE", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eCHARACTER_GLYPH_FONT_USAGE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "CHARACTER", keyPath: \eCHARACTER_GLYPH_FONT_USAGE.CHARACTER, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "FONT", keyPath: \eCHARACTER_GLYPH_FONT_USAGE.FONT, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
