/* file: text_font_in_family.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY text_font_in_family;
      font    : text_font;
      family  : text_font_family; (* observed by
          text_font_family.fonts
          *)
  END_ENTITY; -- text_font_in_family (line:32146 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  ENTITY(SELF)	text_font_in_family
    ATTR:  font,	TYPE: text_font -- EXPLICIT

    ATTR:  family,	TYPE: text_font_family -- EXPLICIT
      -- observed by
        ENTITY(1): text_font_family,	ATTR: fonts,	TYPE: SET [1 : ?] OF text_font_in_family


*/


//MARK: - Partial Entity
  public final class _text_font_in_family : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eTEXT_FONT_IN_FAMILY.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _font: eTEXT_FONT // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE (OBSERVED)
    public internal(set) var _family: eTEXT_FONT_FAMILY{ // OBSERVED EXPLICIT ATTRIBUTE
      get {
        return __family.copy()
      } // getter
      set {
        let newValue = newValue
        let observer = SDAI.EntityReferenceObserver(referencer: self, observerCode: _family__observer.self)
        newValue.configure(with: observer)
        observer.observe(removing: SDAI.UNWRAP(seq:__family.entityReferences),
          adding: SDAI.UNWRAP(seq: newValue.entityReferences) )
      } // setter
    }

    /// backing storage for observed attribute
    private var __family: eTEXT_FONT_FAMILY

    /// attribute observer code
    internal class _family__observer: SDAI.EntityReferenceObserver.ObserverCode {
      final override class func observe<RemovingEntities: Sequence, AddingEntities: Sequence>(
        referencer: SDAI.PartialEntity, removing: RemovingEntities, adding: AddingEntities )
        where RemovingEntities.Element: SDAI.EntityReference, AddingEntities.Element: SDAI.EntityReference
      {
        for referencedComplex in removing.map({ $0.complexEntity }) {
          for referencerOwner in referencer.owners {
            //OBSERVING ENTITY: eTEXT_FONT_FAMILY
            referencedComplex.partialEntityInstance(_text_font_family.self)?
              ._fonts__observeRemovedReference(in: referencerOwner)
          }
        }

        for referencedComplex in adding.map({ $0.complexEntity }) {
          for referencerOwner in referencer.owners {
            //OBSERVING ENTITY: eTEXT_FONT_FAMILY
            referencedComplex.partialEntityInstance(_text_font_family.self)?
              ._fonts__observeAddedReference(in: referencerOwner)
          }
        }
      }

      final override class func observe(newReferencerOwner referencerOwner: SDAI.ComplexEntity) {
        guard let attrValue = referencerOwner.partialEntityInstance(_text_font_in_family.self)?._family else { return }
        for referencedComplex in attrValue.entityReferences.map({ $0.complexEntity }) {
        //OBSERVING ENTITY: eTEXT_FONT_FAMILY
        referencedComplex.partialEntityInstance(_text_font_family.self)?
          ._fonts__observeAddedReference(in: referencerOwner)
        }
      }

      final override class func observe(leavingReferencerOwner referencerOwner: SDAI.ComplexEntity) {
        guard let attrValue = referencerOwner.partialEntityInstance(_text_font_in_family.self)?._family else { return }
        for referencedComplex in attrValue.entityReferences.map({ $0.complexEntity }) {
        //OBSERVING ENTITY: eTEXT_FONT_FAMILY
        referencedComplex.partialEntityInstance(_text_font_family.self)?
          ._fonts__observe(leavingReferencerOwner: referencerOwner)
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
      self._font.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._family.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._font.value.isValueEqualOptionally(to: rhs._font.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._family.value.isValueEqualOptionally(to: rhs._family.value, visited: &comppairs)	{
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
      if let comp = self._font.value.isValueEqualOptionally(to: rhs._font.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._family.value.isValueEqualOptionally(to: rhs._family.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(FONT: eTEXT_FONT, FAMILY: eTEXT_FONT_FAMILY) {
      self._font = FONT
      self.__family = FAMILY
      super.init(asAbstructSuperclass:())

      self._family.configure(with: SDAI.EntityReferenceObserver(referencer: self, observerCode: _family__observer.self))
    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: eTEXT_FONT.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: eTEXT_FONT_FAMILY.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( FONT: p0, FAMILY: p1 )
    }

    /// broadcasting a new complex entity becoming an owner of the partial entity
    final public override func broadcast(addedToComplex complex: SDAI.ComplexEntity) {
      _family__observer.observe(newReferencerOwner: complex)
    }

    /// broadcasting a complex entity withdrawing an owner of the partial entity
    final public override func broadcast(removedFromComplex complex: SDAI.ComplexEntity) {
      _family__observer.observe(leavingReferencerOwner: complex)
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY text_font_in_family;
      font    : text_font;
      family  : text_font_family; (* observed by
          text_font_family.fonts
          *)
  END_ENTITY; -- text_font_in_family (line:32146 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eTEXT_FONT_IN_FAMILY : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _text_font_in_family.self
    }
    public let partialEntity: _text_font_in_family

    //MARK: SUPERTYPES
    public var super_eTEXT_FONT_IN_FAMILY: eTEXT_FONT_IN_FAMILY { return self } 	// [1]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT(OBSERVED)__ attribute
    /// - origin: SELF( ``eTEXT_FONT_IN_FAMILY`` )
    public var FAMILY: eTEXT_FONT_FAMILY {
      get {
        return SDAI.UNWRAP( self.partialEntity._family )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._family = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eTEXT_FONT_IN_FAMILY`` )
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
      guard let partial = complexEntity?.partialEntityInstance(_text_font_in_family.self) else { return nil }
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
    public convenience init?(_ partial:_text_font_in_family) {
      let complex = SDAI.ComplexEntity(entities:[partial])
      self.init(complex: complex)
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "TEXT_FONT_IN_FAMILY", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eTEXT_FONT_IN_FAMILY.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "FAMILY", keyPath: \eTEXT_FONT_IN_FAMILY.FAMILY, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "FONT", keyPath: \eTEXT_FONT_IN_FAMILY.FONT, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}