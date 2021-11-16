/* file: fixed_reference_swept_surface.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY fixed_reference_swept_surface
    SUBTYPE OF ( swept_surface );
      directrix        : curve;
      fixed_reference  : direction;
  END_ENTITY; -- fixed_reference_swept_surface (line:15700 file:ap242ed2_mim_lf_v1.101.TY.exp)

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

  SUPER- ENTITY(4)	swept_surface
    ATTR:  swept_curve,	TYPE: curve -- EXPLICIT


  ENTITY(SELF)	fixed_reference_swept_surface
    ATTR:  directrix,	TYPE: curve -- EXPLICIT

    ATTR:  fixed_reference,	TYPE: direction -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _fixed_reference_swept_surface : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eFIXED_REFERENCE_SWEPT_SURFACE.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _directrix: eCURVE // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _fixed_reference: eDIRECTION // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._directrix.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._fixed_reference.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._directrix.value.isValueEqualOptionally(to: rhs._directrix.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._fixed_reference.value.isValueEqualOptionally(to: rhs._fixed_reference.value, visited: &comppairs)	{
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
      if let comp = self._directrix.value.isValueEqualOptionally(to: rhs._directrix.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._fixed_reference.value.isValueEqualOptionally(to: rhs._fixed_reference.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(DIRECTRIX: eCURVE, FIXED_REFERENCE: eDIRECTION) {
      self._directrix = DIRECTRIX
      self._fixed_reference = FIXED_REFERENCE
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: eCURVE.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: eDIRECTION.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( DIRECTRIX: p0, FIXED_REFERENCE: p1 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY fixed_reference_swept_surface
    SUBTYPE OF ( swept_surface );
      directrix        : curve;
      fixed_reference  : direction;
  END_ENTITY; -- fixed_reference_swept_surface (line:15700 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eFIXED_REFERENCE_SWEPT_SURFACE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _fixed_reference_swept_surface.self
    }
    public let partialEntity: _fixed_reference_swept_surface

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_eSURFACE: eSURFACE 	// [3]
    public let super_eSWEPT_SURFACE: eSWEPT_SURFACE 	// [4]
    public var super_eFIXED_REFERENCE_SWEPT_SURFACE: eFIXED_REFERENCE_SWEPT_SURFACE { return self } 	// [5]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eSWEPT_SURFACE`` )
    public var SWEPT_CURVE: eCURVE {
      get {
        return SDAI.UNWRAP( super_eSWEPT_SURFACE.partialEntity._swept_curve )
      }
      set(newValue) {
        let partial = super_eSWEPT_SURFACE.partialEntity
        partial._swept_curve = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eFIXED_REFERENCE_SWEPT_SURFACE`` )
    public var DIRECTRIX: eCURVE {
      get {
        return SDAI.UNWRAP( self.partialEntity._directrix )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._directrix = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eFIXED_REFERENCE_SWEPT_SURFACE`` )
    public var FIXED_REFERENCE: eDIRECTION {
      get {
        return SDAI.UNWRAP( self.partialEntity._fixed_reference )
      }
      set(newValue) {
        let partial = self.partialEntity
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
      guard let partial = complexEntity?.partialEntityInstance(_fixed_reference_swept_surface.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(eSURFACE.self) else { return nil }
      self.super_eSURFACE = super3

      guard let super4 = complexEntity?.entityReference(eSWEPT_SURFACE.self) else { return nil }
      self.super_eSWEPT_SURFACE = super4

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "FIXED_REFERENCE_SWEPT_SURFACE", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eSURFACE.self)
      entityDef.add(supertype: eSWEPT_SURFACE.self)
      entityDef.add(supertype: eFIXED_REFERENCE_SWEPT_SURFACE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "SWEPT_CURVE", keyPath: \eFIXED_REFERENCE_SWEPT_SURFACE.SWEPT_CURVE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DIRECTRIX", keyPath: \eFIXED_REFERENCE_SWEPT_SURFACE.DIRECTRIX, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "FIXED_REFERENCE", keyPath: \eFIXED_REFERENCE_SWEPT_SURFACE.FIXED_REFERENCE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eFIXED_REFERENCE_SWEPT_SURFACE.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \eFIXED_REFERENCE_SWEPT_SURFACE.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
