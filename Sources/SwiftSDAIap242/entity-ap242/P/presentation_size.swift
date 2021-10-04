/* file: presentation_size.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY presentation_size;
      unit  : presentation_size_assignment_select; (* observed by
          picture_representation.size
          *)
      size  : planar_box;
    UNIQUE
      ur1 : unit;
    WHERE
      wr1: ( ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRESENTATION_REPRESENTATION' IN TYPEOF( 
               unit ) ) AND item_in_context( size, unit\representation.context_of_items ) ) OR ( ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.AREA_IN_SET'  IN TYPEOF( unit ) ) AND ( 
               SIZEOF( QUERY ( ais <* unit\area_in_set.in_set.areas | ( NOT item_in_context( size, ais.area\
               representation.context_of_items ) ) ) ) = 0 ) ) );
  END_ENTITY; -- presentation_size (line:25697 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  ENTITY(SELF)	presentation_size
    ATTR:  unit,	TYPE: presentation_size_assignment_select -- EXPLICIT
      -- observed by
        ENTITY(1): picture_representation,	ATTR: size,	TYPE: presentation_size

    ATTR:  size,	TYPE: planar_box -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _presentation_size : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      ePRESENTATION_SIZE.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE (OBSERVED)
    public internal(set) var _unit: sPRESENTATION_SIZE_ASSIGNMENT_SELECT{ // OBSERVED EXPLICIT ATTRIBUTE
      get {
        return __unit.copy()
      } // getter
      set {
        var newValue = newValue
        let observer = SDAI.EntityReferenceObserver(referencer: self, observerCode: _unit__observer.self)
        newValue.configure(with: observer)
        observer.observe(removing: SDAI.UNWRAP(seq:__unit.entityReferences),
          adding: SDAI.UNWRAP(seq: newValue.entityReferences) )
      } // setter
    }

    /// backing storage for observed attribute
    private var __unit: sPRESENTATION_SIZE_ASSIGNMENT_SELECT

    /// attribute observer code
    internal class _unit__observer: SDAI.EntityReferenceObserver.ObserverCode {
      final override class func observe<RemovingEntities: Sequence, AddingEntities: Sequence>(
        referencer: SDAI.PartialEntity, removing: RemovingEntities, adding: AddingEntities )
        where RemovingEntities.Element: SDAI.EntityReference, AddingEntities.Element: SDAI.EntityReference
      {
        for referencedComplex in removing.map({ $0.complexEntity }) {
          for referencerOwner in referencer.owners {
            //OBSERVING ENTITY: ePICTURE_REPRESENTATION
            referencedComplex.partialEntityInstance(_picture_representation.self)?
              ._size__observeRemovedReference(in: referencerOwner)
          }
        }

        for referencedComplex in adding.map({ $0.complexEntity }) {
          for referencerOwner in referencer.owners {
            //OBSERVING ENTITY: ePICTURE_REPRESENTATION
            referencedComplex.partialEntityInstance(_picture_representation.self)?
              ._size__observeAddedReference(in: referencerOwner)
          }
        }
      }

      final override class func observe(newReferencerOwner referencerOwner: SDAI.ComplexEntity) {
        guard let attrValue = referencerOwner.partialEntityInstance(_presentation_size.self)?._unit else { return }
        for referencedComplex in attrValue.entityReferences.map({ $0.complexEntity }) {
        //OBSERVING ENTITY: ePICTURE_REPRESENTATION
        referencedComplex.partialEntityInstance(_picture_representation.self)?
          ._size__observeAddedReference(in: referencerOwner)
        }
      }

      final override class func observe(leavingReferencerOwner referencerOwner: SDAI.ComplexEntity) {
        guard let attrValue = referencerOwner.partialEntityInstance(_presentation_size.self)?._unit else { return }
        for referencedComplex in attrValue.entityReferences.map({ $0.complexEntity }) {
        //OBSERVING ENTITY: ePICTURE_REPRESENTATION
        referencedComplex.partialEntityInstance(_picture_representation.self)?
          ._size__observe(leavingReferencerOwner: referencerOwner)
        }
      }

    }

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _size: ePLANAR_BOX // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._unit.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._size.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._unit.value.isValueEqualOptionally(to: rhs._unit.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._size.value.isValueEqualOptionally(to: rhs._size.value, visited: &comppairs)	{
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
      if let comp = self._unit.value.isValueEqualOptionally(to: rhs._unit.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._size.value.isValueEqualOptionally(to: rhs._size.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: ePRESENTATION_SIZE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF.UNIT, IS: ePRESENTATION_REPRESENTATION.self)
      let _TEMP2 = SELF.UNIT.GROUP_REF(eREPRESENTATION.self)
      let _TEMP3 = _TEMP2?.CONTEXT_OF_ITEMS
      let _TEMP4 = ITEM_IN_CONTEXT(ITEM: eREPRESENTATION_ITEM(/*ePLANAR_BOX*/SELF.SIZE), 
                                   CNTXT: _TEMP3)
      let _TEMP5 = _TEMP1 && _TEMP4
      let _TEMP6 = SDAI.TYPEOF(SELF.UNIT, IS: eAREA_IN_SET.self)
      let _TEMP7 = SELF.UNIT.GROUP_REF(eAREA_IN_SET.self)
      let _TEMP8 = _TEMP7?.IN_SET
      let _TEMP9 = _TEMP8?.AREAS
      let _TEMP10 = _TEMP9?.QUERY{ AIS in 

          let _TEMP1 = AIS.AREA
          let _TEMP2 = _TEMP1.GROUP_REF(eREPRESENTATION.self)
          let _TEMP3 = _TEMP2?.CONTEXT_OF_ITEMS
          let _TEMP4 = ITEM_IN_CONTEXT(
            ITEM: eREPRESENTATION_ITEM(/*ePLANAR_BOX*/SELF.SIZE), 
            CNTXT: _TEMP3)
          let _TEMP5 =  !_TEMP4
          return _TEMP5 }
      let _TEMP11 = SDAI.SIZEOF(_TEMP10)
      let _TEMP12 = _TEMP11 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      let _TEMP13 = _TEMP6 && _TEMP12
      let _TEMP14 = _TEMP5 || _TEMP13
      return _TEMP14
    }

    //UNIQUENESS RULES
    public static func UNIQUE_ur1(SELF: SDAI.EntityReference) -> AnyHashable? {
      guard let SELF = SELF as? ePRESENTATION_SIZE else { return nil }
      //SIMPLE UNIQUE RULE

      let attr = SELF.UNIT
      return AnyHashable( attr )
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(UNIT: sPRESENTATION_SIZE_ASSIGNMENT_SELECT, SIZE: ePLANAR_BOX) {
      self.__unit = UNIT
      self._size = SIZE
      super.init(asAbstructSuperclass:())

      self._unit.configure(with: SDAI.EntityReferenceObserver(referencer: self, observerCode: _unit__observer.self))
    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: 
        sPRESENTATION_SIZE_ASSIGNMENT_SELECT.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: ePLANAR_BOX.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( UNIT: p0, SIZE: p1 )
    }

    /// broadcasting a new complex entity becoming an owner of the partial entity
    final public override func broadcast(addedToComplex complex: SDAI.ComplexEntity) {
      _unit__observer.observe(newReferencerOwner: complex)
    }

    /// broadcasting a complex entity withdrawing an owner of the partial entity
    final public override func broadcast(removedFromComplex complex: SDAI.ComplexEntity) {
      _unit__observer.observe(leavingReferencerOwner: complex)
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY presentation_size;
      unit  : presentation_size_assignment_select; (* observed by
          picture_representation.size
          *)
      size  : planar_box;
    UNIQUE
      ur1 : unit;
    WHERE
      wr1: ( ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRESENTATION_REPRESENTATION' IN TYPEOF( 
               unit ) ) AND item_in_context( size, unit\representation.context_of_items ) ) OR ( ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.AREA_IN_SET'  IN TYPEOF( unit ) ) AND ( 
               SIZEOF( QUERY ( ais <* unit\area_in_set.in_set.areas | ( NOT item_in_context( size, ais.area\
               representation.context_of_items ) ) ) ) = 0 ) ) );
  END_ENTITY; -- presentation_size (line:25697 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class ePRESENTATION_SIZE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _presentation_size.self
    }
    public let partialEntity: _presentation_size

    //MARK: SUPERTYPES
    public var super_ePRESENTATION_SIZE: ePRESENTATION_SIZE { return self } 	// [1]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``ePRESENTATION_SIZE`` )
    public var SIZE: ePLANAR_BOX {
      get {
        return SDAI.UNWRAP( self.partialEntity._size )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._size = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT(OBSERVED)__ attribute
    /// - origin: SELF( ``ePRESENTATION_SIZE`` )
    public var UNIT: sPRESENTATION_SIZE_ASSIGNMENT_SELECT {
      get {
        return SDAI.UNWRAP( self.partialEntity._unit )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._unit = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_presentation_size.self) else { return nil }
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
    public convenience init?(_ partial:_presentation_size) {
      let complex = SDAI.ComplexEntity(entities:[partial])
      self.init(complex: complex)
    }


    //MARK: WHERE RULE VALIDATION (ENTITY)
    public override class func validateWhereRules(instance:SDAI.EntityReference?, prefix:SDAI.WhereLabel) -> [SDAI.WhereLabel:SDAI.LOGICAL] {
      guard let instance = instance as? Self else { return [:] }

      let prefix2 = prefix + " \(instance)"

      var result = super.validateWhereRules(instance:instance, prefix:prefix2)
      result[prefix2 + " .WHERE_wr1"] = _presentation_size.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "PRESENTATION_SIZE", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: ePRESENTATION_SIZE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "SIZE", keyPath: \ePRESENTATION_SIZE.SIZE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "UNIT", keyPath: \ePRESENTATION_SIZE.UNIT, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)

      //MARK: UNIQUENESS RULE REGISTRATIONS
      entityDef.addUniqunessRule(label:"UNIQUE_ur1", rule: _presentation_size.UNIQUE_ur1)

      return entityDef
    }

  }
}