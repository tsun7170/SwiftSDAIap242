/* file: point_on_face_surface.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY point_on_face_surface
    SUBTYPE OF ( point_on_surface );
      basis_face_surface  : face_surface;
    DERIVE
      SELF\point_on_surface.basis_surface : surface := SELF.basis_face_surface.face_geometry;
    WHERE
      wr1: ( SIZEOF( using_representations( SELF.basis_face_surface ) * 
               relating_shape_representations_of_extreme_values( SELF ) ) > 0 );
  END_ENTITY; -- point_on_face_surface (line:25234 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(2)	geometric_representation_item
    ATTR:  dim,	TYPE: dimension_count -- DERIVED
      := dimension_of( SELF )


  SUPER- ENTITY(3)	point
    (no local attributes)

  SUPER- ENTITY(4)	point_on_surface
    ATTR:  basis_surface,	TYPE: surface -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
      *** ENTITY: point_on_face_surface,	TYPE: surface	(as DERIVED)

    ATTR:  point_parameter_u,	TYPE: parameter_value -- EXPLICIT

    ATTR:  point_parameter_v,	TYPE: parameter_value -- EXPLICIT


  ENTITY(SELF)	point_on_face_surface
    ATTR:  basis_face_surface,	TYPE: face_surface -- EXPLICIT

    REDCR: basis_surface,	TYPE: surface -- DERIVED (DYNAMIC)
      := SELF.basis_face_surface.face_geometry
      -- OVERRIDING ENTITY: point_on_surface


*/


//MARK: - Partial Entity
  public final class _point_on_face_surface : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      ePOINT_ON_FACE_SURFACE.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _basis_face_surface: eFACE_SURFACE // PLAIN EXPLICIT ATTRIBUTE

    /// DERIVE ATTRIBUTE REDEFINITION(origin: ePOINT_ON_SURFACE)
    /// - attribute value provider protocol conformance wrapper
    internal func _basis_surface__getter(complex: SDAI.ComplexEntity) -> eSURFACE {
      let SELF = complex.entityReference( ePOINT_ON_FACE_SURFACE.self )!
      return SDAI.UNWRAP( eSURFACE(SELF.BASIS_SURFACE) )
    }
    /// DERIVE ATTRIBUTE REDEFINITION(origin: ePOINT_ON_SURFACE)
    /// - gut of derived attribute logic
    internal func _basis_surface__getter(SELF: ePOINT_ON_FACE_SURFACE) -> eSURFACE {

      let _TEMP1 = SELF.BASIS_FACE_SURFACE
      let _TEMP2 = _TEMP1.FACE_GEOMETRY
      let value = _TEMP2
      return SDAI.UNWRAP( value )
    }

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sLOCATION_OF_EXTREME_VALUE_SELECT.typeName)) // -> Self
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._basis_face_surface.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._basis_face_surface.value.isValueEqualOptionally(to: rhs._basis_face_surface.value, visited: &comppairs)	{
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
      if let comp = self._basis_face_surface.value.isValueEqualOptionally(to: rhs._basis_face_surface.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: ePOINT_ON_FACE_SURFACE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.BASIS_FACE_SURFACE
      let _TEMP2 = USING_REPRESENTATIONS(sFOUNDED_ITEM_SELECT(/*eFACE_SURFACE*/_TEMP1))
      let _TEMP3 = RELATING_SHAPE_REPRESENTATIONS_OF_EXTREME_VALUES(sLOCATION_OF_EXTREME_VALUE_SELECT(/*
        ePOINT_ON_FACE_SURFACE*/SELF))
      let _TEMP4 = SDAI.SET<SDAI.GENERIC_ENTITY>(/*SDAI.SET<eREPRESENTATION>*/_TEMP2) * SDAI.SET<
        SDAI.GENERIC_ENTITY>(/*SDAI.SET<eSHAPE_REPRESENTATION>*/_TEMP3)
      let _TEMP5 = SDAI.SIZEOF(_TEMP4)
      let _TEMP6 = _TEMP5 > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP6
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(BASIS_FACE_SURFACE: eFACE_SURFACE) {
      self._basis_face_surface = BASIS_FACE_SURFACE
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: eFACE_SURFACE.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( BASIS_FACE_SURFACE: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY point_on_face_surface
    SUBTYPE OF ( point_on_surface );
      basis_face_surface  : face_surface;
    DERIVE
      SELF\point_on_surface.basis_surface : surface := SELF.basis_face_surface.face_geometry;
    WHERE
      wr1: ( SIZEOF( using_representations( SELF.basis_face_surface ) * 
               relating_shape_representations_of_extreme_values( SELF ) ) > 0 );
  END_ENTITY; -- point_on_face_surface (line:25234 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class ePOINT_ON_FACE_SURFACE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _point_on_face_surface.self
    }
    public let partialEntity: _point_on_face_surface

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_ePOINT: ePOINT 	// [3]
    public let super_ePOINT_ON_SURFACE: ePOINT_ON_SURFACE 	// [4]
    public var super_ePOINT_ON_FACE_SURFACE: ePOINT_ON_FACE_SURFACE { return self } 	// [5]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT REDEF(DERIVE)__ attribute
    /// - origin: SELF( ``ePOINT_ON_FACE_SURFACE`` )
    public var BASIS_SURFACE: eSURFACE {
      get {
        if let cached = cachedValue(derivedAttributeName:"BASIS_SURFACE") {
          return cached.value as! eSURFACE
        }
        let origin = self
        let value = SDAI.UNWRAP( origin.partialEntity._basis_surface__getter(SELF: origin) )
        updateCache(derivedAttributeName:"BASIS_SURFACE", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``ePOINT_ON_SURFACE`` )
    public var POINT_PARAMETER_U: tPARAMETER_VALUE {
      get {
        return SDAI.UNWRAP( super_ePOINT_ON_SURFACE.partialEntity._point_parameter_u )
      }
      set(newValue) {
        let partial = super_ePOINT_ON_SURFACE.partialEntity
        partial._point_parameter_u = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``ePOINT_ON_SURFACE`` )
    public var POINT_PARAMETER_V: tPARAMETER_VALUE {
      get {
        return SDAI.UNWRAP( super_ePOINT_ON_SURFACE.partialEntity._point_parameter_v )
      }
      set(newValue) {
        let partial = super_ePOINT_ON_SURFACE.partialEntity
        partial._point_parameter_v = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``ePOINT_ON_FACE_SURFACE`` )
    public var BASIS_FACE_SURFACE: eFACE_SURFACE {
      get {
        return SDAI.UNWRAP( self.partialEntity._basis_face_surface )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._basis_face_surface = SDAI.UNWRAP(newValue)
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
      guard let partial = complexEntity?.partialEntityInstance(_point_on_face_surface.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(ePOINT.self) else { return nil }
      self.super_ePOINT = super3

      guard let super4 = complexEntity?.entityReference(ePOINT_ON_SURFACE.self) else { return nil }
      self.super_ePOINT_ON_SURFACE = super4

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
      result[prefix2 + " .WHERE_wr1"] = _point_on_face_surface.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "POINT_ON_FACE_SURFACE", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: ePOINT.self)
      entityDef.add(supertype: ePOINT_ON_SURFACE.self)
      entityDef.add(supertype: ePOINT_ON_FACE_SURFACE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "BASIS_SURFACE", keyPath: \ePOINT_ON_FACE_SURFACE.BASIS_SURFACE, 
        kind: .derivedRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "POINT_PARAMETER_U", keyPath: \ePOINT_ON_FACE_SURFACE.POINT_PARAMETER_U, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "POINT_PARAMETER_V", keyPath: \ePOINT_ON_FACE_SURFACE.POINT_PARAMETER_V, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "BASIS_FACE_SURFACE", keyPath: \ePOINT_ON_FACE_SURFACE.BASIS_FACE_SURFACE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \ePOINT_ON_FACE_SURFACE.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \ePOINT_ON_FACE_SURFACE.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}

//MARK: - partial Entity Dynamic Attribute Protocol Conformances
extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF._point_on_face_surface :
  ePOINT_ON_SURFACE__BASIS_SURFACE__provider {}
