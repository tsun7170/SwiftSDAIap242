/* file: gps_filtration_specification.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY gps_filtration_specification;
      base_target  : gps_filtration_specification_target;
      filter_data  : LIST [1 : ?] OF gps_filter; (* observed by
          gps_filter.owner
          *)
  END_ENTITY; -- gps_filtration_specification (line:17337 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  ENTITY(SELF)	gps_filtration_specification
    ATTR:  base_target,	TYPE: gps_filtration_specification_target -- EXPLICIT

    ATTR:  filter_data,	TYPE: LIST [1 : ?] OF gps_filter -- EXPLICIT
      -- observed by
        ENTITY(1): gps_filter,	ATTR: owner,	TYPE: gps_filtration_specification


*/


//MARK: - Partial Entity
  public final class _gps_filtration_specification : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eGPS_FILTRATION_SPECIFICATION.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _base_target: sGPS_FILTRATION_SPECIFICATION_TARGET // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE (OBSERVED)
    public internal(set) var _filter_data: SDAI.LIST<eGPS_FILTER>/*[1:nil]*/ { // OBSERVED EXPLICIT ATTRIBUTE
      get {
        return __filter_data.copy()
      } // getter
      set {
        var newValue = newValue
        let observer = SDAI.EntityReferenceObserver(referencer: self, observerCode: _filter_data__observer.self)
        newValue.configure(with: observer)
        observer.observe(removing: SDAI.UNWRAP(seq:__filter_data.entityReferences),
          adding: SDAI.UNWRAP(seq: newValue.entityReferences) )
      } // setter
    }

    /// backing storage for observed attribute
    private var __filter_data: SDAI.LIST<eGPS_FILTER>/*[1:nil]*/ 

    /// attribute observer code
    internal class _filter_data__observer: SDAI.EntityReferenceObserver.ObserverCode {
      final override class func observe<RemovingEntities: Sequence, AddingEntities: Sequence>(
        referencer: SDAI.PartialEntity, removing: RemovingEntities, adding: AddingEntities )
        where RemovingEntities.Element: SDAI.EntityReference, AddingEntities.Element: SDAI.EntityReference
      {
        for referencedComplex in removing.map({ $0.complexEntity }) {
          for referencerOwner in referencer.owners {
            //OBSERVING ENTITY: eGPS_FILTER
            referencedComplex.partialEntityInstance(_gps_filter.self)?
              ._owner__observeRemovedReference(in: referencerOwner)
          }
        }

        for referencedComplex in adding.map({ $0.complexEntity }) {
          for referencerOwner in referencer.owners {
            //OBSERVING ENTITY: eGPS_FILTER
            referencedComplex.partialEntityInstance(_gps_filter.self)?
              ._owner__observeAddedReference(in: referencerOwner)
          }
        }
      }

      final override class func observe(newReferencerOwner referencerOwner: SDAI.ComplexEntity) {
        guard let attrValue = referencerOwner.partialEntityInstance(_gps_filtration_specification.self)?._filter_data else { return }
        for referencedComplex in attrValue.entityReferences.map({ $0.complexEntity }) {
        //OBSERVING ENTITY: eGPS_FILTER
        referencedComplex.partialEntityInstance(_gps_filter.self)?
          ._owner__observeAddedReference(in: referencerOwner)
        }
      }

      final override class func observe(leavingReferencerOwner referencerOwner: SDAI.ComplexEntity) {
        guard let attrValue = referencerOwner.partialEntityInstance(_gps_filtration_specification.self)?._filter_data else { return }
        for referencedComplex in attrValue.entityReferences.map({ $0.complexEntity }) {
        //OBSERVING ENTITY: eGPS_FILTER
        referencedComplex.partialEntityInstance(_gps_filter.self)?
          ._owner__observe(leavingReferencerOwner: referencerOwner)
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
      self._base_target.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._filter_data.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._base_target.value.isValueEqualOptionally(to: rhs._base_target.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._filter_data.value.isValueEqualOptionally(to: rhs._filter_data.value, visited: &comppairs)	{
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
      if let comp = self._base_target.value.isValueEqualOptionally(to: rhs._base_target.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._filter_data.value.isValueEqualOptionally(to: rhs._filter_data.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(BASE_TARGET: sGPS_FILTRATION_SPECIFICATION_TARGET, FILTER_DATA: SDAI.LIST<eGPS_FILTER>/*[1:
                nil]*/ ) {
      self._base_target = BASE_TARGET
      self.__filter_data = FILTER_DATA
      super.init(asAbstructSuperclass:())

      self._filter_data.configure(with: SDAI.EntityReferenceObserver(referencer: self, observerCode: _filter_data__observer.self))
    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: 
        sGPS_FILTRATION_SPECIFICATION_TARGET.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: SDAI.LIST<eGPS_FILTER>.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( BASE_TARGET: p0, FILTER_DATA: p1 )
    }

    /// broadcasting a new complex entity becoming an owner of the partial entity
    final public override func broadcast(addedToComplex complex: SDAI.ComplexEntity) {
      _filter_data__observer.observe(newReferencerOwner: complex)
    }

    /// broadcasting a complex entity withdrawing an owner of the partial entity
    final public override func broadcast(removedFromComplex complex: SDAI.ComplexEntity) {
      _filter_data__observer.observe(leavingReferencerOwner: complex)
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY gps_filtration_specification;
      base_target  : gps_filtration_specification_target;
      filter_data  : LIST [1 : ?] OF gps_filter; (* observed by
          gps_filter.owner
          *)
  END_ENTITY; -- gps_filtration_specification (line:17337 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eGPS_FILTRATION_SPECIFICATION : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _gps_filtration_specification.self
    }
    public let partialEntity: _gps_filtration_specification

    //MARK: SUPERTYPES
    public var super_eGPS_FILTRATION_SPECIFICATION: eGPS_FILTRATION_SPECIFICATION { return self } 	// [1]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT(OBSERVED)__ attribute
    /// - origin: SELF( ``eGPS_FILTRATION_SPECIFICATION`` )
    public var FILTER_DATA: SDAI.LIST<eGPS_FILTER>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._filter_data )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._filter_data = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eGPS_FILTRATION_SPECIFICATION`` )
    public var BASE_TARGET: sGPS_FILTRATION_SPECIFICATION_TARGET {
      get {
        return SDAI.UNWRAP( self.partialEntity._base_target )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._base_target = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_gps_filtration_specification.self) else { return nil }
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
    public convenience init?(_ partial:_gps_filtration_specification) {
      let complex = SDAI.ComplexEntity(entities:[partial])
      self.init(complex: complex)
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "GPS_FILTRATION_SPECIFICATION", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eGPS_FILTRATION_SPECIFICATION.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "FILTER_DATA", keyPath: \eGPS_FILTRATION_SPECIFICATION.FILTER_DATA, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "BASE_TARGET", keyPath: \eGPS_FILTRATION_SPECIFICATION.BASE_TARGET, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
