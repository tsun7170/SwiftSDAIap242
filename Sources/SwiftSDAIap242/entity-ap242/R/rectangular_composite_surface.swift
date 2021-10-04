/* file: rectangular_composite_surface.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY rectangular_composite_surface
    SUBTYPE OF ( bounded_surface );
      segments  : LIST [1 : ?] OF LIST [1 : ?] OF surface_patch; (* observed by
          surface_patch.using_surfaces
          *)
    DERIVE
      n_u  : INTEGER := SIZEOF( segments );
      n_v  : INTEGER := SIZEOF( segments[1] );
    WHERE
      wr1: ( SIZEOF( QUERY ( s <* segments | ( n_v <> SIZEOF( s ) ) ) ) = 0 );
      wr2: constraints_rectangular_composite_surface( SELF );
  END_ENTITY; -- rectangular_composite_surface (line:27054 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(2)	geometric_representation_item
    ATTR:  dim,	TYPE: dimension_count -- DERIVED
      := dimension_of( SELF )


  SUPER- ENTITY(3)	surface
    (no local attributes)

  SUPER- ENTITY(4)	bounded_surface
    (no local attributes)

  ENTITY(SELF)	rectangular_composite_surface
    ATTR:  segments,	TYPE: LIST [1 : ?] OF LIST [1 : ?] OF surface_patch -- EXPLICIT
      -- observed by
        ENTITY(1): surface_patch,	ATTR: using_surfaces,	TYPE: BAG [1 : ?] OF rectangular_composite_surface

    ATTR:  n_u,	TYPE: INTEGER -- DERIVED
      := SIZEOF( segments )

    ATTR:  n_v,	TYPE: INTEGER -- DERIVED
      := SIZEOF( segments[1] )


*/


//MARK: - Partial Entity
  public final class _rectangular_composite_surface : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eRECTANGULAR_COMPOSITE_SURFACE.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE (OBSERVED)
    public internal(set) var _segments: SDAI.LIST<SDAI.LIST<eSURFACE_PATCH>/*[1:nil]*/ >/*[1:nil]*/ { // OBSERVED EXPLICIT ATTRIBUTE
      get {
        return __segments.copy()
      } // getter
      set {
        var newValue = newValue
        let observer = SDAI.EntityReferenceObserver(referencer: self, observerCode: _segments__observer.self)
        newValue.configure(with: observer)
        observer.observe(removing: SDAI.UNWRAP(seq:__segments.entityReferences),
          adding: SDAI.UNWRAP(seq: newValue.entityReferences) )
      } // setter
    }

    /// backing storage for observed attribute
    private var __segments: SDAI.LIST<SDAI.LIST<eSURFACE_PATCH>/*[1:nil]*/ >/*[1:nil]*/ 

    /// attribute observer code
    internal class _segments__observer: SDAI.EntityReferenceObserver.ObserverCode {
      final override class func observe<RemovingEntities: Sequence, AddingEntities: Sequence>(
        referencer: SDAI.PartialEntity, removing: RemovingEntities, adding: AddingEntities )
        where RemovingEntities.Element: SDAI.EntityReference, AddingEntities.Element: SDAI.EntityReference
      {
        for referencedComplex in removing.map({ $0.complexEntity }) {
          for referencerOwner in referencer.owners {
            //OBSERVING ENTITY: eSURFACE_PATCH
            referencedComplex.partialEntityInstance(_surface_patch.self)?
              ._using_surfaces__observeRemovedReference(in: referencerOwner)
          }
        }

        for referencedComplex in adding.map({ $0.complexEntity }) {
          for referencerOwner in referencer.owners {
            //OBSERVING ENTITY: eSURFACE_PATCH
            referencedComplex.partialEntityInstance(_surface_patch.self)?
              ._using_surfaces__observeAddedReference(in: referencerOwner)
          }
        }
      }

      final override class func observe(newReferencerOwner referencerOwner: SDAI.ComplexEntity) {
        guard let attrValue = referencerOwner.partialEntityInstance(_rectangular_composite_surface.self)?._segments else { return }
        for referencedComplex in attrValue.entityReferences.map({ $0.complexEntity }) {
        //OBSERVING ENTITY: eSURFACE_PATCH
        referencedComplex.partialEntityInstance(_surface_patch.self)?
          ._using_surfaces__observeAddedReference(in: referencerOwner)
        }
      }

      final override class func observe(leavingReferencerOwner referencerOwner: SDAI.ComplexEntity) {
        guard let attrValue = referencerOwner.partialEntityInstance(_rectangular_composite_surface.self)?._segments else { return }
        for referencedComplex in attrValue.entityReferences.map({ $0.complexEntity }) {
        //OBSERVING ENTITY: eSURFACE_PATCH
        referencedComplex.partialEntityInstance(_surface_patch.self)?
          ._using_surfaces__observe(leavingReferencerOwner: referencerOwner)
        }
      }

    }

    /// DERIVE ATTRIBUTE
    internal func _n_u__getter(SELF: eRECTANGULAR_COMPOSITE_SURFACE) -> SDAI.INTEGER?  {

      let _TEMP1 = SDAI.SIZEOF(SELF.SEGMENTS)
      return _TEMP1
    }

    /// DERIVE ATTRIBUTE
    internal func _n_v__getter(SELF: eRECTANGULAR_COMPOSITE_SURFACE) -> SDAI.INTEGER?  {

      let _TEMP1 = SELF.SEGMENTS[1]
      let _TEMP2 = SDAI.SIZEOF(_TEMP1)
      return _TEMP2
    }

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sB_SPLINE_OR_RECTANGULAR_COMPOSITE_SURFACE_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sINSPECTED_ECDQ_ELEMENT_SELECT.typeName)) // -> sB_SPLINE_OR_RECTANGULAR_COMPOSITE_SURFACE_SELECT
      members.insert(SDAI.STRING(sLOCATION_OF_EXTREME_VALUE_SELECT.typeName)) // -> sINSPECTED_ECDQ_ELEMENT_SELECT
      members.insert(SDAI.STRING(sINSPECTED_SHAPE_ELEMENT_SELECT.typeName)) // -> sB_SPLINE_OR_RECTANGULAR_COMPOSITE_SURFACE_SELECT
      members.insert(SDAI.STRING(sINSPECTED_ELEMENT_SELECT.typeName)) // -> sB_SPLINE_OR_RECTANGULAR_COMPOSITE_SURFACE_SELECT
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._segments.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._segments.value.isValueEqualOptionally(to: rhs._segments.value, visited: &comppairs)	{
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
      if let comp = self._segments.value.isValueEqualOptionally(to: rhs._segments.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eRECTANGULAR_COMPOSITE_SURFACE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.SEGMENTS.QUERY{ S in 

          let _TEMP1 = SDAI.SIZEOF(S)
          let _TEMP2 = SELF.N_V .!=. _TEMP1
          return _TEMP2 }
      let _TEMP2 = SDAI.SIZEOF(_TEMP1)
      let _TEMP3 = _TEMP2 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP3
    }
    public static func WHERE_wr2(SELF: eRECTANGULAR_COMPOSITE_SURFACE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = CONSTRAINTS_RECTANGULAR_COMPOSITE_SURFACE(SELF)
      return SDAI.LOGICAL(/*SDAI.BOOLEAN*/_TEMP1)
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(SEGMENTS: SDAI.LIST<SDAI.LIST<eSURFACE_PATCH>/*[1:nil]*/ >/*[1:nil]*/ ) {
      self.__segments = SEGMENTS
      super.init(asAbstructSuperclass:())

      self._segments.configure(with: SDAI.EntityReferenceObserver(referencer: self, observerCode: _segments__observer.self))
    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: SDAI.LIST<SDAI.LIST<
        eSURFACE_PATCH>>.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( SEGMENTS: p0 )
    }

    /// broadcasting a new complex entity becoming an owner of the partial entity
    final public override func broadcast(addedToComplex complex: SDAI.ComplexEntity) {
      _segments__observer.observe(newReferencerOwner: complex)
    }

    /// broadcasting a complex entity withdrawing an owner of the partial entity
    final public override func broadcast(removedFromComplex complex: SDAI.ComplexEntity) {
      _segments__observer.observe(leavingReferencerOwner: complex)
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY rectangular_composite_surface
    SUBTYPE OF ( bounded_surface );
      segments  : LIST [1 : ?] OF LIST [1 : ?] OF surface_patch; (* observed by
          surface_patch.using_surfaces
          *)
    DERIVE
      n_u  : INTEGER := SIZEOF( segments );
      n_v  : INTEGER := SIZEOF( segments[1] );
    WHERE
      wr1: ( SIZEOF( QUERY ( s <* segments | ( n_v <> SIZEOF( s ) ) ) ) = 0 );
      wr2: constraints_rectangular_composite_surface( SELF );
  END_ENTITY; -- rectangular_composite_surface (line:27054 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eRECTANGULAR_COMPOSITE_SURFACE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _rectangular_composite_surface.self
    }
    public let partialEntity: _rectangular_composite_surface

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_eSURFACE: eSURFACE 	// [3]
    public let super_eBOUNDED_SURFACE: eBOUNDED_SURFACE 	// [4]
    public var super_eRECTANGULAR_COMPOSITE_SURFACE: eRECTANGULAR_COMPOSITE_SURFACE { return self } 	// [5]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __DERIVE__ attribute
    /// - origin: SELF( ``eRECTANGULAR_COMPOSITE_SURFACE`` )
    public var N_U: SDAI.INTEGER?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"N_U") {
          return cached.value as! SDAI.INTEGER? 
        }
        let origin = self
        let value = origin.partialEntity._n_u__getter(SELF: origin)
        updateCache(derivedAttributeName:"N_U", value:value)
        return value
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SELF( ``eRECTANGULAR_COMPOSITE_SURFACE`` )
    public var N_V: SDAI.INTEGER?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"N_V") {
          return cached.value as! SDAI.INTEGER? 
        }
        let origin = self
        let value = origin.partialEntity._n_v__getter(SELF: origin)
        updateCache(derivedAttributeName:"N_V", value:value)
        return value
      }
    }

    /// __EXPLICIT(OBSERVED)__ attribute
    /// - origin: SELF( ``eRECTANGULAR_COMPOSITE_SURFACE`` )
    public var SEGMENTS: SDAI.LIST<SDAI.LIST<eSURFACE_PATCH>/*[1:nil]*/ >/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._segments )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._segments = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eREPRESENTATION_ITEM`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( super_eREPRESENTATION_ITEM.partialEntity._name )
      }
      set(newValue) {
        let partial = super_eREPRESENTATION_ITEM.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eGEOMETRIC_REPRESENTATION_ITEM`` )
    public var DIM: tDIMENSION_COUNT?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"DIM") {
          return cached.value as! tDIMENSION_COUNT? 
        }
        let origin = super_eGEOMETRIC_REPRESENTATION_ITEM
        let value = tDIMENSION_COUNT(origin.partialEntity._dim__getter(SELF: origin))
        updateCache(derivedAttributeName:"DIM", value:value)
        return value
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_rectangular_composite_surface.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(eSURFACE.self) else { return nil }
      self.super_eSURFACE = super3

      guard let super4 = complexEntity?.entityReference(eBOUNDED_SURFACE.self) else { return nil }
      self.super_eBOUNDED_SURFACE = super4

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
      result[prefix2 + " .WHERE_wr1"] = _rectangular_composite_surface.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _rectangular_composite_surface.WHERE_wr2(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "RECTANGULAR_COMPOSITE_SURFACE", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eSURFACE.self)
      entityDef.add(supertype: eBOUNDED_SURFACE.self)
      entityDef.add(supertype: eRECTANGULAR_COMPOSITE_SURFACE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "N_U", keyPath: \eRECTANGULAR_COMPOSITE_SURFACE.N_U, 
        kind: .derived, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "N_V", keyPath: \eRECTANGULAR_COMPOSITE_SURFACE.N_V, 
        kind: .derived, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SEGMENTS", keyPath: \eRECTANGULAR_COMPOSITE_SURFACE.SEGMENTS, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eRECTANGULAR_COMPOSITE_SURFACE.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \eRECTANGULAR_COMPOSITE_SURFACE.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}