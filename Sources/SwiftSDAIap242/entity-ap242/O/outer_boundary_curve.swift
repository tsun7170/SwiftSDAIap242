/* file: outer_boundary_curve.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY outer_boundary_curve
    SUBTYPE OF ( boundary_curve );
  END_ENTITY; -- outer_boundary_curve (line:22823 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(2)	geometric_representation_item
    ATTR:  dim,	TYPE: dimension_count -- DERIVED
      := dimension_of( SELF )


  SUPER- ENTITY(3)	curve
    (no local attributes)

  SUPER- ENTITY(4)	bounded_curve
    (no local attributes)

  SUPER- ENTITY(5)	composite_curve
    ATTR:  segments,	TYPE: LIST [1 : ?] OF composite_curve_segment -- EXPLICIT
      -- observed by
        ENTITY(1): composite_curve_segment,	ATTR: using_curves,	TYPE: BAG [1 : ?] OF composite_curve

    ATTR:  self_intersect,	TYPE: LOGICAL -- EXPLICIT

    ATTR:  n_segments,	TYPE: INTEGER -- DERIVED
      := SIZEOF( segments )

    ATTR:  closed_curve,	TYPE: LOGICAL -- DERIVED
      := segments[n_segments].transition <> discontinuous


  SUPER- ENTITY(6)	composite_curve_on_surface
    ATTR:  basis_surface,	TYPE: SET [0 : 2] OF surface -- DERIVED
      := get_basis_surface( SELF )


  SUPER- ENTITY(7)	boundary_curve
    (no local attributes)

  ENTITY(SELF)	outer_boundary_curve
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _outer_boundary_curve : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eOUTER_BOUNDARY_CURVE.self
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
  ENTITY outer_boundary_curve
    SUBTYPE OF ( boundary_curve );
  END_ENTITY; -- outer_boundary_curve (line:22823 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eOUTER_BOUNDARY_CURVE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _outer_boundary_curve.self
    }
    public let partialEntity: _outer_boundary_curve

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_eCURVE: eCURVE 	// [3]
    public let super_eBOUNDED_CURVE: eBOUNDED_CURVE 	// [4]
    public let super_eCOMPOSITE_CURVE: eCOMPOSITE_CURVE 	// [5]
    public let super_eCOMPOSITE_CURVE_ON_SURFACE: eCOMPOSITE_CURVE_ON_SURFACE 	// [6]
    public let super_eBOUNDARY_CURVE: eBOUNDARY_CURVE 	// [7]
    public var super_eOUTER_BOUNDARY_CURVE: eOUTER_BOUNDARY_CURVE { return self } 	// [8]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eCOMPOSITE_CURVE`` )
    public var N_SEGMENTS: SDAI.INTEGER?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"N_SEGMENTS") {
          return cached.value as! SDAI.INTEGER? 
        }
        let origin = super_eCOMPOSITE_CURVE
        let value = SDAI.INTEGER(origin.partialEntity._n_segments__getter(SELF: origin))
        updateCache(derivedAttributeName:"N_SEGMENTS", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eCOMPOSITE_CURVE`` )
    public var SELF_INTERSECT: SDAI.LOGICAL {
      get {
        return SDAI.UNWRAP( super_eCOMPOSITE_CURVE.partialEntity._self_intersect )
      }
      set(newValue) {
        let partial = super_eCOMPOSITE_CURVE.partialEntity
        partial._self_intersect = SDAI.LOGICAL(newValue)
      }
    }

    /// __EXPLICIT(OBSERVED)__ attribute
    /// - origin: SUPER( ``eCOMPOSITE_CURVE`` )
    public var SEGMENTS: SDAI.LIST<eCOMPOSITE_CURVE_SEGMENT>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( super_eCOMPOSITE_CURVE.partialEntity._segments )
      }
      set(newValue) {
        let partial = super_eCOMPOSITE_CURVE.partialEntity
        partial._segments = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eCOMPOSITE_CURVE_ON_SURFACE`` )
    public var BASIS_SURFACE: (SDAI.SET<eSURFACE>/*[0:2]*/ )?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"BASIS_SURFACE") {
          return cached.value as! (SDAI.SET<eSURFACE>/*[0:2]*/ )? 
        }
        let origin = super_eCOMPOSITE_CURVE_ON_SURFACE
        let value = SDAI.SET<eSURFACE>(origin.partialEntity._basis_surface__getter(SELF: origin))
        updateCache(derivedAttributeName:"BASIS_SURFACE", value:value)
        return value
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eCOMPOSITE_CURVE`` )
    public var CLOSED_CURVE: SDAI.LOGICAL {
      get {
        if let cached = cachedValue(derivedAttributeName:"CLOSED_CURVE") {
          return cached.value as! SDAI.LOGICAL
        }
        let origin = super_eCOMPOSITE_CURVE
        let value = SDAI.LOGICAL( SDAI.LOGICAL(origin.partialEntity._closed_curve__getter(SELF: origin)) )
        updateCache(derivedAttributeName:"CLOSED_CURVE", value:value)
        return value
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
      guard let partial = complexEntity?.partialEntityInstance(_outer_boundary_curve.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(eCURVE.self) else { return nil }
      self.super_eCURVE = super3

      guard let super4 = complexEntity?.entityReference(eBOUNDED_CURVE.self) else { return nil }
      self.super_eBOUNDED_CURVE = super4

      guard let super5 = complexEntity?.entityReference(eCOMPOSITE_CURVE.self) else { return nil }
      self.super_eCOMPOSITE_CURVE = super5

      guard let super6 = complexEntity?.entityReference(eCOMPOSITE_CURVE_ON_SURFACE.self) else { return nil }
      self.super_eCOMPOSITE_CURVE_ON_SURFACE = super6

      guard let super7 = complexEntity?.entityReference(eBOUNDARY_CURVE.self) else { return nil }
      self.super_eBOUNDARY_CURVE = super7

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "OUTER_BOUNDARY_CURVE", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eCURVE.self)
      entityDef.add(supertype: eBOUNDED_CURVE.self)
      entityDef.add(supertype: eCOMPOSITE_CURVE.self)
      entityDef.add(supertype: eCOMPOSITE_CURVE_ON_SURFACE.self)
      entityDef.add(supertype: eBOUNDARY_CURVE.self)
      entityDef.add(supertype: eOUTER_BOUNDARY_CURVE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "N_SEGMENTS", keyPath: \eOUTER_BOUNDARY_CURVE.N_SEGMENTS, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SELF_INTERSECT", keyPath: \eOUTER_BOUNDARY_CURVE.SELF_INTERSECT, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SEGMENTS", keyPath: \eOUTER_BOUNDARY_CURVE.SEGMENTS, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "BASIS_SURFACE", keyPath: \eOUTER_BOUNDARY_CURVE.BASIS_SURFACE, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "CLOSED_CURVE", keyPath: \eOUTER_BOUNDARY_CURVE.CLOSED_CURVE, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eOUTER_BOUNDARY_CURVE.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \eOUTER_BOUNDARY_CURVE.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
