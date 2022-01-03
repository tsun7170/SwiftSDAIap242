/* file: area_in_set.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY area_in_set;
      area    : presentation_area;
      in_set  : presentation_set; (* observed by
          presentation_set.areas
          *)
  END_ENTITY; -- area_in_set (line:7403 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  ENTITY(SELF)	area_in_set
    ATTR:  area,	TYPE: presentation_area -- EXPLICIT

    ATTR:  in_set,	TYPE: presentation_set -- EXPLICIT
      -- observed by
        ENTITY(1): presentation_set,	ATTR: areas,	TYPE: SET [1 : ?] OF area_in_set


  SUB- ENTITY(2)	drawing_sheet_revision_usage
    ATTR:  sheet_number,	TYPE: identifier -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _area_in_set : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eAREA_IN_SET.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _area: ePRESENTATION_AREA // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE (OBSERVED)
    public internal(set) var _in_set: ePRESENTATION_SET{ // OBSERVED EXPLICIT ATTRIBUTE
      get {
        return __in_set.copy()
      } // getter
      set {
        let newValue = newValue
        let observer = SDAI.EntityReferenceObserver(referencer: self, observerCode: _in_set__observer.self)
        newValue.configure(with: observer)
        observer.observe(removing: SDAI.UNWRAP(seq:__in_set.entityReferences),
          adding: SDAI.UNWRAP(seq: newValue.entityReferences) )
      } // setter
    }

    /// backing storage for observed attribute
    private var __in_set: ePRESENTATION_SET

    /// attribute observer code
    internal class _in_set__observer: SDAI.EntityReferenceObserver.ObserverCode {
      final override class func observe<RemovingEntities: Sequence, AddingEntities: Sequence>(
        referencer: SDAI.PartialEntity, removing: RemovingEntities, adding: AddingEntities )
        where RemovingEntities.Element: SDAI.EntityReference, AddingEntities.Element: SDAI.EntityReference
      {
        for referencedComplex in removing.map({ $0.complexEntity }) {
          for referencerOwner in referencer.owners {
            //OBSERVING ENTITY: ePRESENTATION_SET
            referencedComplex.partialEntityInstance(_presentation_set.self)?
              ._areas__observeRemovedReference(in: referencerOwner)
          }
        }

        for referencedComplex in adding.map({ $0.complexEntity }) {
          for referencerOwner in referencer.owners {
            //OBSERVING ENTITY: ePRESENTATION_SET
            referencedComplex.partialEntityInstance(_presentation_set.self)?
              ._areas__observeAddedReference(in: referencerOwner)
          }
        }
      }

      final override class func observe(newReferencerOwner referencerOwner: SDAI.ComplexEntity) {
        guard let attrValue = referencerOwner.partialEntityInstance(_area_in_set.self)?._in_set else { return }
        for referencedComplex in attrValue.entityReferences.map({ $0.complexEntity }) {
        //OBSERVING ENTITY: ePRESENTATION_SET
        referencedComplex.partialEntityInstance(_presentation_set.self)?
          ._areas__observeAddedReference(in: referencerOwner)
        }
      }

      final override class func observe(leavingReferencerOwner referencerOwner: SDAI.ComplexEntity) {
        guard let attrValue = referencerOwner.partialEntityInstance(_area_in_set.self)?._in_set else { return }
        for referencedComplex in attrValue.entityReferences.map({ $0.complexEntity }) {
        //OBSERVING ENTITY: ePRESENTATION_SET
        referencedComplex.partialEntityInstance(_presentation_set.self)?
          ._areas__observe(leavingReferencerOwner: referencerOwner)
        }
      }

    }

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sPRESENTATION_SIZE_ASSIGNMENT_SELECT.typeName)) // -> Self
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._area.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._in_set.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._area.value.isValueEqualOptionally(to: rhs._area.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._in_set.value.isValueEqualOptionally(to: rhs._in_set.value, visited: &comppairs)	{
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
      if let comp = self._area.value.isValueEqualOptionally(to: rhs._area.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._in_set.value.isValueEqualOptionally(to: rhs._in_set.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(AREA: ePRESENTATION_AREA, IN_SET: ePRESENTATION_SET) {
      self._area = AREA
      self.__in_set = IN_SET
      super.init(asAbstructSuperclass:())

      self._in_set.configure(with: SDAI.EntityReferenceObserver(referencer: self, observerCode: _in_set__observer.self))
    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: ePRESENTATION_AREA.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: ePRESENTATION_SET.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( AREA: p0, IN_SET: p1 )
    }

    /// broadcasting a new complex entity becoming an owner of the partial entity
    final public override func broadcast(addedToComplex complex: SDAI.ComplexEntity) {
      _in_set__observer.observe(newReferencerOwner: complex)
    }

    /// broadcasting a complex entity withdrawing an owner of the partial entity
    final public override func broadcast(removedFromComplex complex: SDAI.ComplexEntity) {
      _in_set__observer.observe(leavingReferencerOwner: complex)
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY area_in_set;
      area    : presentation_area;
      in_set  : presentation_set; (* observed by
          presentation_set.areas
          *)
  END_ENTITY; -- area_in_set (line:7403 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eAREA_IN_SET : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _area_in_set.self
    }
    public let partialEntity: _area_in_set

    //MARK: SUPERTYPES
    public var super_eAREA_IN_SET: eAREA_IN_SET { return self } 	// [1]

    //MARK: SUBTYPES
    public var sub_eDRAWING_SHEET_REVISION_USAGE: eDRAWING_SHEET_REVISION_USAGE? {	// [2]
      return self.complexEntity.entityReference(eDRAWING_SHEET_REVISION_USAGE.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eDRAWING_SHEET_REVISION_USAGE`` )
    public var SHEET_NUMBER: tIDENTIFIER?  {
      get {
        return sub_eDRAWING_SHEET_REVISION_USAGE?.partialEntity._sheet_number
      }
      set(newValue) {
        guard let partial = sub_eDRAWING_SHEET_REVISION_USAGE?.super_eDRAWING_SHEET_REVISION_USAGE
          .partialEntity else { return }
        partial._sheet_number = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT(OBSERVED)__ attribute
    /// - origin: SELF( ``eAREA_IN_SET`` )
    public var IN_SET: ePRESENTATION_SET {
      get {
        return SDAI.UNWRAP( self.partialEntity._in_set )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._in_set = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eAREA_IN_SET`` )
    public var AREA: ePRESENTATION_AREA {
      get {
        return SDAI.UNWRAP( self.partialEntity._area )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._area = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_area_in_set.self) else { return nil }
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
    public convenience init?(_ partial:_area_in_set) {
      let complex = SDAI.ComplexEntity(entities:[partial])
      self.init(complex: complex)
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "AREA_IN_SET", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eAREA_IN_SET.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "SHEET_NUMBER", keyPath: \eAREA_IN_SET.SHEET_NUMBER, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "IN_SET", keyPath: \eAREA_IN_SET.IN_SET, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "AREA", keyPath: \eAREA_IN_SET.AREA, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
