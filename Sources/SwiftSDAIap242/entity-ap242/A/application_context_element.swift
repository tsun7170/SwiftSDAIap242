/* file: application_context_element.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY application_context_element
    SUPERTYPE OF ( 
        ONEOF ( 
            product_concept_context, 
            product_context, 
            product_definition_context ) );
      name                : label;
      frame_of_reference  : application_context; (* observed by
          application_context.context_elements
          *)
  END_ENTITY; -- application_context_element (line:7034 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  ENTITY(SELF)	application_context_element
    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  frame_of_reference,	TYPE: application_context -- EXPLICIT
      -- observed by
        ENTITY(1): application_context,	ATTR: context_elements,	TYPE: SET [1 : ?] OF
          application_context_element


  SUB- ENTITY(2)	product_concept_context
    ATTR:  market_segment_type,	TYPE: label -- EXPLICIT


  SUB- ENTITY(3)	mechanical_context
    (no local attributes)

  SUB- ENTITY(4)	product_context
    ATTR:  discipline_type,	TYPE: label -- EXPLICIT


  SUB- ENTITY(5)	instance_usage_context_assignment
    ATTR:  items,	TYPE: SET [1 : ?] OF instance_usage_context_select -- EXPLICIT


  SUB- ENTITY(6)	design_context
    (no local attributes)

  SUB- ENTITY(7)	product_definition_context
    ATTR:  life_cycle_stage,	TYPE: label -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _application_context_element : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eAPPLICATION_CONTEXT_ELEMENT.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _name: tLABEL // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE (OBSERVED)
    public internal(set) var _frame_of_reference: eAPPLICATION_CONTEXT{ // OBSERVED EXPLICIT ATTRIBUTE
      get {
        return __frame_of_reference.copy()
      } // getter
      set {
        let newValue = newValue
        let observer = SDAI.EntityReferenceObserver(referencer: self, observerCode: _frame_of_reference__observer.self)
        newValue.configure(with: observer)
        observer.observe(removing: SDAI.UNWRAP(seq:__frame_of_reference.entityReferences),
          adding: SDAI.UNWRAP(seq: newValue.entityReferences) )
      } // setter
    }

    /// backing storage for observed attribute
    private var __frame_of_reference: eAPPLICATION_CONTEXT

    /// attribute observer code
    internal class _frame_of_reference__observer: SDAI.EntityReferenceObserver.ObserverCode {
      final override class func observe<RemovingEntities: Sequence, AddingEntities: Sequence>(
        referencer: SDAI.PartialEntity, removing: RemovingEntities, adding: AddingEntities )
        where RemovingEntities.Element: SDAI.EntityReference, AddingEntities.Element: SDAI.EntityReference
      {
        for referencedComplex in removing.map({ $0.complexEntity }) {
          for referencerOwner in referencer.owners {
            //OBSERVING ENTITY: eAPPLICATION_CONTEXT
            referencedComplex.partialEntityInstance(_application_context.self)?
              ._context_elements__observeRemovedReference(in: referencerOwner)
          }
        }

        for referencedComplex in adding.map({ $0.complexEntity }) {
          for referencerOwner in referencer.owners {
            //OBSERVING ENTITY: eAPPLICATION_CONTEXT
            referencedComplex.partialEntityInstance(_application_context.self)?
              ._context_elements__observeAddedReference(in: referencerOwner)
          }
        }
      }

      final override class func observe(newReferencerOwner referencerOwner: SDAI.ComplexEntity) {
        guard let attrValue = referencerOwner.partialEntityInstance(_application_context_element.self)?._frame_of_reference else { return }
        for referencedComplex in attrValue.entityReferences.map({ $0.complexEntity }) {
        //OBSERVING ENTITY: eAPPLICATION_CONTEXT
        referencedComplex.partialEntityInstance(_application_context.self)?
          ._context_elements__observeAddedReference(in: referencerOwner)
        }
      }

      final override class func observe(leavingReferencerOwner referencerOwner: SDAI.ComplexEntity) {
        guard let attrValue = referencerOwner.partialEntityInstance(_application_context_element.self)?._frame_of_reference else { return }
        for referencedComplex in attrValue.entityReferences.map({ $0.complexEntity }) {
        //OBSERVING ENTITY: eAPPLICATION_CONTEXT
        referencedComplex.partialEntityInstance(_application_context.self)?
          ._context_elements__observe(leavingReferencerOwner: referencerOwner)
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
      self._name.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._frame_of_reference.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._name.value.isValueEqualOptionally(to: rhs._name.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._frame_of_reference.value.isValueEqualOptionally(to: rhs._frame_of_reference.value, visited: &comppairs)	{
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
      if let comp = self._name.value.isValueEqualOptionally(to: rhs._name.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._frame_of_reference.value.isValueEqualOptionally(to: rhs._frame_of_reference.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(NAME: tLABEL, FRAME_OF_REFERENCE: eAPPLICATION_CONTEXT) {
      self._name = NAME
      self.__frame_of_reference = FRAME_OF_REFERENCE
      super.init(asAbstructSuperclass:())

      self._frame_of_reference.configure(with: SDAI.EntityReferenceObserver(referencer: self, observerCode: _frame_of_reference__observer.self))
    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: tLABEL.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: eAPPLICATION_CONTEXT.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( NAME: p0, FRAME_OF_REFERENCE: p1 )
    }

    /// broadcasting a new complex entity becoming an owner of the partial entity
    final public override func broadcast(addedToComplex complex: SDAI.ComplexEntity) {
      _frame_of_reference__observer.observe(newReferencerOwner: complex)
    }

    /// broadcasting a complex entity withdrawing an owner of the partial entity
    final public override func broadcast(removedFromComplex complex: SDAI.ComplexEntity) {
      _frame_of_reference__observer.observe(leavingReferencerOwner: complex)
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY application_context_element
    SUPERTYPE OF ( 
        ONEOF ( 
            product_concept_context, 
            product_context, 
            product_definition_context ) );
      name                : label;
      frame_of_reference  : application_context; (* observed by
          application_context.context_elements
          *)
  END_ENTITY; -- application_context_element (line:7034 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eAPPLICATION_CONTEXT_ELEMENT : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _application_context_element.self
    }
    public let partialEntity: _application_context_element

    //MARK: SUPERTYPES
    public var super_eAPPLICATION_CONTEXT_ELEMENT: eAPPLICATION_CONTEXT_ELEMENT { return self } 	// [1]

    //MARK: SUBTYPES
    public var sub_ePRODUCT_CONCEPT_CONTEXT: ePRODUCT_CONCEPT_CONTEXT? {	// [2]
      return self.complexEntity.entityReference(ePRODUCT_CONCEPT_CONTEXT.self)
    }

    public var sub_eMECHANICAL_CONTEXT: eMECHANICAL_CONTEXT? {	// [3]
      return self.complexEntity.entityReference(eMECHANICAL_CONTEXT.self)
    }

    public var sub_ePRODUCT_CONTEXT: ePRODUCT_CONTEXT? {	// [4]
      return self.complexEntity.entityReference(ePRODUCT_CONTEXT.self)
    }

    public var sub_eINSTANCE_USAGE_CONTEXT_ASSIGNMENT: eINSTANCE_USAGE_CONTEXT_ASSIGNMENT? {	// [5]
      return self.complexEntity.entityReference(eINSTANCE_USAGE_CONTEXT_ASSIGNMENT.self)
    }

    public var sub_eDESIGN_CONTEXT: eDESIGN_CONTEXT? {	// [6]
      return self.complexEntity.entityReference(eDESIGN_CONTEXT.self)
    }

    public var sub_ePRODUCT_DEFINITION_CONTEXT: ePRODUCT_DEFINITION_CONTEXT? {	// [7]
      return self.complexEntity.entityReference(ePRODUCT_DEFINITION_CONTEXT.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``ePRODUCT_CONTEXT`` )
    public var DISCIPLINE_TYPE: tLABEL?  {
      get {
        return sub_ePRODUCT_CONTEXT?.partialEntity._discipline_type
      }
      set(newValue) {
        guard let partial = sub_ePRODUCT_CONTEXT?.super_ePRODUCT_CONTEXT.partialEntity else { return }
        partial._discipline_type = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eINSTANCE_USAGE_CONTEXT_ASSIGNMENT`` )
    public var ITEMS: (SDAI.SET<sINSTANCE_USAGE_CONTEXT_SELECT>/*[1:nil]*/ )?  {
      get {
        return sub_eINSTANCE_USAGE_CONTEXT_ASSIGNMENT?.partialEntity._items
      }
      set(newValue) {
        guard let partial = sub_eINSTANCE_USAGE_CONTEXT_ASSIGNMENT?.super_eINSTANCE_USAGE_CONTEXT_ASSIGNMENT
          .partialEntity else { return }
        partial._items = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``ePRODUCT_CONCEPT_CONTEXT`` )
    public var MARKET_SEGMENT_TYPE: tLABEL?  {
      get {
        return sub_ePRODUCT_CONCEPT_CONTEXT?.partialEntity._market_segment_type
      }
      set(newValue) {
        guard let partial = sub_ePRODUCT_CONCEPT_CONTEXT?.super_ePRODUCT_CONCEPT_CONTEXT.partialEntity
          else { return }
        partial._market_segment_type = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``ePRODUCT_DEFINITION_CONTEXT`` )
    public var LIFE_CYCLE_STAGE: tLABEL?  {
      get {
        return sub_ePRODUCT_DEFINITION_CONTEXT?.partialEntity._life_cycle_stage
      }
      set(newValue) {
        guard let partial = sub_ePRODUCT_DEFINITION_CONTEXT?.super_ePRODUCT_DEFINITION_CONTEXT.partialEntity
          else { return }
        partial._life_cycle_stage = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT(OBSERVED)__ attribute
    /// - origin: SELF( ``eAPPLICATION_CONTEXT_ELEMENT`` )
    public var FRAME_OF_REFERENCE: eAPPLICATION_CONTEXT {
      get {
        return SDAI.UNWRAP( self.partialEntity._frame_of_reference )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._frame_of_reference = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eAPPLICATION_CONTEXT_ELEMENT`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( self.partialEntity._name )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_application_context_element.self) else { return nil }
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
    public convenience init?(_ partial:_application_context_element) {
      let complex = SDAI.ComplexEntity(entities:[partial])
      self.init(complex: complex)
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "APPLICATION_CONTEXT_ELEMENT", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eAPPLICATION_CONTEXT_ELEMENT.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DISCIPLINE_TYPE", keyPath: \eAPPLICATION_CONTEXT_ELEMENT.DISCIPLINE_TYPE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ITEMS", keyPath: \eAPPLICATION_CONTEXT_ELEMENT.ITEMS, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "MARKET_SEGMENT_TYPE", keyPath: \eAPPLICATION_CONTEXT_ELEMENT.MARKET_SEGMENT_TYPE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "LIFE_CYCLE_STAGE", keyPath: \eAPPLICATION_CONTEXT_ELEMENT.LIFE_CYCLE_STAGE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "FRAME_OF_REFERENCE", keyPath: \eAPPLICATION_CONTEXT_ELEMENT.FRAME_OF_REFERENCE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eAPPLICATION_CONTEXT_ELEMENT.NAME, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
