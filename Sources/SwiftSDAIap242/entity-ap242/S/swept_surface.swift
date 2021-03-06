/* file: swept_surface.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY swept_surface
    SUPERTYPE OF ( 
        ONEOF ( 
            surface_of_linear_extrusion, 
            surface_of_revolution, 
            surface_curve_swept_surface, 
            fixed_reference_swept_surface ) )
    SUBTYPE OF ( surface );
      swept_curve  : curve;
  END_ENTITY; -- swept_surface (line:31483 file:ap242ed2_mim_lf_v1.101.TY.exp)

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

  ENTITY(SELF)	swept_surface
    ATTR:  swept_curve,	TYPE: curve -- EXPLICIT


  SUB- ENTITY(5)	surface_of_revolution
    ATTR:  axis_position,	TYPE: axis1_placement -- EXPLICIT

    ATTR:  axis_line,	TYPE: line -- DERIVED
      := representation_item( '' ) || geometric_representation_item(  ) || curve(  ) || line( axis_position.
        location, representation_item( '' ) || geometric_representation_item(  ) || vector( axis_position.z, 
        1 ) )


  SUB- ENTITY(6)	surface_of_linear_extrusion
    ATTR:  extrusion_axis,	TYPE: vector -- EXPLICIT


  SUB- ENTITY(7)	surface_curve_swept_surface
    ATTR:  directrix,	TYPE: curve -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  reference_surface,	TYPE: surface -- EXPLICIT


  SUB- ENTITY(8)	fixed_reference_swept_surface
    ATTR:  directrix,	TYPE: curve -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  fixed_reference,	TYPE: direction -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _swept_surface : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eSWEPT_SURFACE.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _swept_curve: eCURVE // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sSWEPT_SURFACE_OR_SOLID.typeName)) // -> Self
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._swept_curve.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._swept_curve.value.isValueEqualOptionally(to: rhs._swept_curve.value, visited: &comppairs)	{
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
      if let comp = self._swept_curve.value.isValueEqualOptionally(to: rhs._swept_curve.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(SWEPT_CURVE: eCURVE) {
      self._swept_curve = SWEPT_CURVE
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: eCURVE.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( SWEPT_CURVE: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY swept_surface
    SUPERTYPE OF ( 
        ONEOF ( 
            surface_of_linear_extrusion, 
            surface_of_revolution, 
            surface_curve_swept_surface, 
            fixed_reference_swept_surface ) )
    SUBTYPE OF ( surface );
      swept_curve  : curve;
  END_ENTITY; -- swept_surface (line:31483 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eSWEPT_SURFACE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _swept_surface.self
    }
    public let partialEntity: _swept_surface

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_eSURFACE: eSURFACE 	// [3]
    public var super_eSWEPT_SURFACE: eSWEPT_SURFACE { return self } 	// [4]

    //MARK: SUBTYPES
    public var sub_eSURFACE_OF_REVOLUTION: eSURFACE_OF_REVOLUTION? {	// [5]
      return self.complexEntity.entityReference(eSURFACE_OF_REVOLUTION.self)
    }

    public var sub_eSURFACE_OF_LINEAR_EXTRUSION: eSURFACE_OF_LINEAR_EXTRUSION? {	// [6]
      return self.complexEntity.entityReference(eSURFACE_OF_LINEAR_EXTRUSION.self)
    }

    public var sub_eSURFACE_CURVE_SWEPT_SURFACE: eSURFACE_CURVE_SWEPT_SURFACE? {	// [7]
      return self.complexEntity.entityReference(eSURFACE_CURVE_SWEPT_SURFACE.self)
    }

    public var sub_eFIXED_REFERENCE_SWEPT_SURFACE: eFIXED_REFERENCE_SWEPT_SURFACE? {	// [8]
      return self.complexEntity.entityReference(eFIXED_REFERENCE_SWEPT_SURFACE.self)
    }


    //MARK: ATTRIBUTES
    // DIRECTRIX: (2 AMBIGUOUS REFs)

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eSWEPT_SURFACE`` )
    public var SWEPT_CURVE: eCURVE {
      get {
        return SDAI.UNWRAP( self.partialEntity._swept_curve )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._swept_curve = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eSURFACE_CURVE_SWEPT_SURFACE`` )
    public var REFERENCE_SURFACE: eSURFACE?  {
      get {
        return sub_eSURFACE_CURVE_SWEPT_SURFACE?.partialEntity._reference_surface
      }
      set(newValue) {
        guard let partial = sub_eSURFACE_CURVE_SWEPT_SURFACE?.super_eSURFACE_CURVE_SWEPT_SURFACE
          .partialEntity else { return }
        partial._reference_surface = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eSURFACE_OF_REVOLUTION`` )
    public var AXIS_POSITION: eAXIS1_PLACEMENT?  {
      get {
        return sub_eSURFACE_OF_REVOLUTION?.partialEntity._axis_position
      }
      set(newValue) {
        guard let partial = sub_eSURFACE_OF_REVOLUTION?.super_eSURFACE_OF_REVOLUTION.partialEntity
          else { return }
        partial._axis_position = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUB( ``eSURFACE_OF_REVOLUTION`` )
    public var AXIS_LINE: eLINE?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"AXIS_LINE") {
          return cached.value as! eLINE? 
        }
        guard let origin = sub_eSURFACE_OF_REVOLUTION else { return nil }
        let value = eLINE(origin.partialEntity._axis_line__getter(SELF: origin))
        updateCache(derivedAttributeName:"AXIS_LINE", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eFIXED_REFERENCE_SWEPT_SURFACE`` )
    public var FIXED_REFERENCE: eDIRECTION?  {
      get {
        return sub_eFIXED_REFERENCE_SWEPT_SURFACE?.partialEntity._fixed_reference
      }
      set(newValue) {
        guard let partial = sub_eFIXED_REFERENCE_SWEPT_SURFACE?.super_eFIXED_REFERENCE_SWEPT_SURFACE
          .partialEntity else { return }
        partial._fixed_reference = SDAI.UNWRAP(newValue)
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

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eSURFACE_OF_LINEAR_EXTRUSION`` )
    public var EXTRUSION_AXIS: eVECTOR?  {
      get {
        return sub_eSURFACE_OF_LINEAR_EXTRUSION?.partialEntity._extrusion_axis
      }
      set(newValue) {
        guard let partial = sub_eSURFACE_OF_LINEAR_EXTRUSION?.super_eSURFACE_OF_LINEAR_EXTRUSION
          .partialEntity else { return }
        partial._extrusion_axis = SDAI.UNWRAP(newValue)
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
      guard let partial = complexEntity?.partialEntityInstance(_swept_surface.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(eSURFACE.self) else { return nil }
      self.super_eSURFACE = super3

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "SWEPT_SURFACE", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eSURFACE.self)
      entityDef.add(supertype: eSWEPT_SURFACE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "SWEPT_CURVE", keyPath: \eSWEPT_SURFACE.SWEPT_CURVE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "REFERENCE_SURFACE", keyPath: \eSWEPT_SURFACE.REFERENCE_SURFACE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "AXIS_POSITION", keyPath: \eSWEPT_SURFACE.AXIS_POSITION, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "AXIS_LINE", keyPath: \eSWEPT_SURFACE.AXIS_LINE, 
        kind: .derived, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "FIXED_REFERENCE", keyPath: \eSWEPT_SURFACE.FIXED_REFERENCE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eSWEPT_SURFACE.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "EXTRUSION_AXIS", keyPath: \eSWEPT_SURFACE.EXTRUSION_AXIS, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DIM", keyPath: \eSWEPT_SURFACE.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
