/* file: representation_reference.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  ENTITY representation_reference;
      id                : identifier;
      context_of_items  : representation_context_reference; (* observed by
          representation_context_reference.representations_in_context
          *)
  END_ENTITY; -- representation_reference (line:27501 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  ENTITY(SELF)	representation_reference
    ATTR:  id,	TYPE: identifier -- EXPLICIT

    ATTR:  context_of_items,	TYPE: representation_context_reference -- EXPLICIT
      -- observed by
        ENTITY(1): representation_context_reference,	ATTR: representations_in_context,	TYPE: SET [1 : ?] OF
          representation_reference


  SUB- ENTITY(2)	shape_representation_reference
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _representation_reference : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eREPRESENTATION_REFERENCE.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _id: tIDENTIFIER // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE (OBSERVED)
    public internal(set) var _context_of_items: eREPRESENTATION_CONTEXT_REFERENCE{ // OBSERVED EXPLICIT ATTRIBUTE
      get {
        return __context_of_items.copy()
      } // getter
      set {
        let newValue = newValue
        let observer = SDAI.EntityReferenceObserver(referencer: self, observerCode: _context_of_items__observer.self)
        newValue.configure(with: observer)
        observer.observe(removing: SDAI.UNWRAP(seq:__context_of_items.entityReferences),
          adding: SDAI.UNWRAP(seq: newValue.entityReferences) )
      } // setter
    }

    /// backing storage for observed attribute
    private var __context_of_items: eREPRESENTATION_CONTEXT_REFERENCE

    /// attribute observer code
    internal class _context_of_items__observer: SDAI.EntityReferenceObserver.ObserverCode {
      final override class func observe<RemovingEntities: Sequence, AddingEntities: Sequence>(
        referencer: SDAI.PartialEntity, removing: RemovingEntities, adding: AddingEntities )
        where RemovingEntities.Element: SDAI.EntityReference, AddingEntities.Element: SDAI.EntityReference
      {
        for referencedComplex in removing.map({ $0.complexEntity }) {
          for referencerOwner in referencer.owners {
            //OBSERVING ENTITY: eREPRESENTATION_CONTEXT_REFERENCE
            referencedComplex.partialEntityInstance(_representation_context_reference.self)?
              ._representations_in_context__observeRemovedReference(in: referencerOwner)
          }
        }

        for referencedComplex in adding.map({ $0.complexEntity }) {
          for referencerOwner in referencer.owners {
            //OBSERVING ENTITY: eREPRESENTATION_CONTEXT_REFERENCE
            referencedComplex.partialEntityInstance(_representation_context_reference.self)?
              ._representations_in_context__observeAddedReference(in: referencerOwner)
          }
        }
      }

      final override class func observe(newReferencerOwner referencerOwner: SDAI.ComplexEntity) {
        guard let attrValue = referencerOwner.partialEntityInstance(_representation_reference.self)?._context_of_items else { return }
        for referencedComplex in attrValue.entityReferences.map({ $0.complexEntity }) {
        //OBSERVING ENTITY: eREPRESENTATION_CONTEXT_REFERENCE
        referencedComplex.partialEntityInstance(_representation_context_reference.self)?
          ._representations_in_context__observeAddedReference(in: referencerOwner)
        }
      }

      final override class func observe(leavingReferencerOwner referencerOwner: SDAI.ComplexEntity) {
        guard let attrValue = referencerOwner.partialEntityInstance(_representation_reference.self)?._context_of_items else { return }
        for referencedComplex in attrValue.entityReferences.map({ $0.complexEntity }) {
        //OBSERVING ENTITY: eREPRESENTATION_CONTEXT_REFERENCE
        referencedComplex.partialEntityInstance(_representation_context_reference.self)?
          ._representations_in_context__observe(leavingReferencerOwner: referencerOwner)
        }
      }

    }

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sREPRESENTATION_OR_REPRESENTATION_REFERENCE.typeName)) // -> Self
      members.insert(SDAI.STRING(sSTYLED_ITEM_TARGET.typeName)) // -> sREPRESENTATION_OR_REPRESENTATION_REFERENCE
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._id.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._context_of_items.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._id.value.isValueEqualOptionally(to: rhs._id.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._context_of_items.value.isValueEqualOptionally(to: rhs._context_of_items.value, visited: &comppairs)	{
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
      if let comp = self._id.value.isValueEqualOptionally(to: rhs._id.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._context_of_items.value.isValueEqualOptionally(to: rhs._context_of_items.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(ID: tIDENTIFIER, CONTEXT_OF_ITEMS: eREPRESENTATION_CONTEXT_REFERENCE) {
      self._id = ID
      self.__context_of_items = CONTEXT_OF_ITEMS
      super.init(asAbstructSuperclass:())

      self._context_of_items.configure(with: SDAI.EntityReferenceObserver(referencer: self, observerCode: _context_of_items__observer.self))
    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: tIDENTIFIER.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: 
        eREPRESENTATION_CONTEXT_REFERENCE.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( ID: p0, CONTEXT_OF_ITEMS: p1 )
    }

    /// broadcasting a new complex entity becoming an owner of the partial entity
    final public override func broadcast(addedToComplex complex: SDAI.ComplexEntity) {
      _context_of_items__observer.observe(newReferencerOwner: complex)
    }

    /// broadcasting a complex entity withdrawing an owner of the partial entity
    final public override func broadcast(removedFromComplex complex: SDAI.ComplexEntity) {
      _context_of_items__observer.observe(leavingReferencerOwner: complex)
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY representation_reference;
      id                : identifier;
      context_of_items  : representation_context_reference; (* observed by
          representation_context_reference.representations_in_context
          *)
  END_ENTITY; -- representation_reference (line:27501 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eREPRESENTATION_REFERENCE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _representation_reference.self
    }
    public let partialEntity: _representation_reference

    //MARK: SUPERTYPES
    public var super_eREPRESENTATION_REFERENCE: eREPRESENTATION_REFERENCE { return self } 	// [1]

    //MARK: SUBTYPES
    public var sub_eSHAPE_REPRESENTATION_REFERENCE: eSHAPE_REPRESENTATION_REFERENCE? {	// [2]
      return self.complexEntity.entityReference(eSHAPE_REPRESENTATION_REFERENCE.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eREPRESENTATION_REFERENCE`` )
    public var ID: tIDENTIFIER {
      get {
        return SDAI.UNWRAP( self.partialEntity._id )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._id = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT(OBSERVED)__ attribute
    /// - origin: SELF( ``eREPRESENTATION_REFERENCE`` )
    public var CONTEXT_OF_ITEMS: eREPRESENTATION_CONTEXT_REFERENCE {
      get {
        return SDAI.UNWRAP( self.partialEntity._context_of_items )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._context_of_items = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_representation_reference.self) else { return nil }
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
    public convenience init?(_ partial:_representation_reference) {
      let complex = SDAI.ComplexEntity(entities:[partial])
      self.init(complex: complex)
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "REPRESENTATION_REFERENCE", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_REFERENCE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "ID", keyPath: \eREPRESENTATION_REFERENCE.ID, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "CONTEXT_OF_ITEMS", keyPath: \eREPRESENTATION_REFERENCE.CONTEXT_OF_ITEMS, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
