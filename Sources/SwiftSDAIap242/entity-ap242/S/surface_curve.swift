/* file: surface_curve.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY surface_curve
    SUPERTYPE OF ( 
        ONEOF ( 
            intersection_curve, 
            seam_curve ) 
        ANDOR
        bounded_surface_curve )
    SUBTYPE OF ( curve );
      curve_3d               : curve;
      associated_geometry    : LIST [1 : 2] OF pcurve_or_surface;
      master_representation  : preferred_surface_curve_representation;
    DERIVE
      basis_surface  : SET [1 : 2] OF surface := get_basis_surface( SELF );
    WHERE
      wr1: ( curve_3d.dim = 3 );
      wr2: ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PCURVE' IN TYPEOF( associated_geometry[1] ) ) 
               OR ( master_representation <> pcurve_s1 ) );
      wr3: ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PCURVE' IN TYPEOF( associated_geometry[2] ) ) 
               OR ( master_representation <> pcurve_s2 ) );
      wr4: ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PCURVE' IN TYPEOF( curve_3d ) ) );
  END_ENTITY; -- surface_curve (line:31094 file:ap242ed2_mim_lf_v1.101.TY.exp)

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

  ENTITY(SELF)	surface_curve
    ATTR:  curve_3d,	TYPE: curve -- EXPLICIT

    ATTR:  associated_geometry,	TYPE: LIST [1 : 2] OF pcurve_or_surface -- EXPLICIT

    ATTR:  master_representation,	TYPE: preferred_surface_curve_representation -- EXPLICIT

    ATTR:  basis_surface,	TYPE: SET [1 : 2] OF surface -- DERIVED
      := get_basis_surface( SELF )


  SUB- ENTITY(5)	bounded_surface_curve
    (no local attributes)

  SUB- ENTITY(6)	seam_curve
    (no local attributes)

  SUB- ENTITY(7)	intersection_curve
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _surface_curve : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eSURFACE_CURVE.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _curve_3d: eCURVE // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _associated_geometry: SDAI.LIST<sPCURVE_OR_SURFACE>/*[1:2]*/  // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _master_representation: nPREFERRED_SURFACE_CURVE_REPRESENTATION // PLAIN EXPLICIT ATTRIBUTE

    /// DERIVE ATTRIBUTE
    internal func _basis_surface__getter(SELF: eSURFACE_CURVE) -> (SDAI.SET<eSURFACE>/*[1:2]*/ )?  {

      let _TEMP1 = GET_BASIS_SURFACE(sCURVE_ON_SURFACE(/*eSURFACE_CURVE*/SELF))
      return SDAI.SET<eSURFACE>(bound1: SDAI.UNWRAP(SDAI.INTEGER(1)), bound2: SDAI.INTEGER(2), 
        /*SDAI.SET<eSURFACE>[0:2] */_TEMP1)
    }

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sCURVE_ON_SURFACE.typeName)) // -> Self
      members.insert(SDAI.STRING(sPLANAR_CURVE_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sSKETCH_BASIS_SELECT.typeName)) // -> sPLANAR_CURVE_SELECT
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._curve_3d.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._associated_geometry.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._master_representation.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._curve_3d.value.isValueEqualOptionally(to: rhs._curve_3d.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._associated_geometry.value.isValueEqualOptionally(to: rhs._associated_geometry.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._master_representation.value.isValueEqualOptionally(to: rhs._master_representation.value, visited: &comppairs)	{
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
      if let comp = self._curve_3d.value.isValueEqualOptionally(to: rhs._curve_3d.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._associated_geometry.value.isValueEqualOptionally(to: rhs._associated_geometry.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._master_representation.value.isValueEqualOptionally(to: rhs._master_representation.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eSURFACE_CURVE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.CURVE_3D.DIM
      let _TEMP2 = _TEMP1 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(3))
      return _TEMP2
    }
    public static func WHERE_wr2(SELF: eSURFACE_CURVE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF.ASSOCIATED_GEOMETRY[1], IS: ePCURVE.self)
      let _TEMP2 = SDAI.FORCE_OPTIONAL(SELF.MASTER_REPRESENTATION) .!=. SDAI.FORCE_OPTIONAL(PCURVE_S1)
      let _TEMP3 = _TEMP1 || _TEMP2
      return _TEMP3
    }
    public static func WHERE_wr3(SELF: eSURFACE_CURVE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF.ASSOCIATED_GEOMETRY[2], IS: ePCURVE.self)
      let _TEMP2 = SDAI.FORCE_OPTIONAL(SELF.MASTER_REPRESENTATION) .!=. SDAI.FORCE_OPTIONAL(PCURVE_S2)
      let _TEMP3 = _TEMP1 || _TEMP2
      return _TEMP3
    }
    public static func WHERE_wr4(SELF: eSURFACE_CURVE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF.CURVE_3D, IS: ePCURVE.self)
      let _TEMP2 =  !_TEMP1
      return _TEMP2
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(CURVE_3D: eCURVE, ASSOCIATED_GEOMETRY: SDAI.LIST<sPCURVE_OR_SURFACE>/*[1:2]*/ , 
                MASTER_REPRESENTATION: nPREFERRED_SURFACE_CURVE_REPRESENTATION) {
      self._curve_3d = CURVE_3D
      self._associated_geometry = ASSOCIATED_GEOMETRY
      self._master_representation = MASTER_REPRESENTATION
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 3
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: eCURVE.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: SDAI.LIST<
        sPCURVE_OR_SURFACE>.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p2) = exchangeStructure.recoverRequiredParameter(as: 
        nPREFERRED_SURFACE_CURVE_REPRESENTATION.self, from: parameters[2])
      else { exchangeStructure.add(errorContext: "while recovering parameter #2 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( CURVE_3D: p0, ASSOCIATED_GEOMETRY: p1, MASTER_REPRESENTATION: p2 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY surface_curve
    SUPERTYPE OF ( 
        ONEOF ( 
            intersection_curve, 
            seam_curve ) 
        ANDOR
        bounded_surface_curve )
    SUBTYPE OF ( curve );
      curve_3d               : curve;
      associated_geometry    : LIST [1 : 2] OF pcurve_or_surface;
      master_representation  : preferred_surface_curve_representation;
    DERIVE
      basis_surface  : SET [1 : 2] OF surface := get_basis_surface( SELF );
    WHERE
      wr1: ( curve_3d.dim = 3 );
      wr2: ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PCURVE' IN TYPEOF( associated_geometry[1] ) ) 
               OR ( master_representation <> pcurve_s1 ) );
      wr3: ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PCURVE' IN TYPEOF( associated_geometry[2] ) ) 
               OR ( master_representation <> pcurve_s2 ) );
      wr4: ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PCURVE' IN TYPEOF( curve_3d ) ) );
  END_ENTITY; -- surface_curve (line:31094 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eSURFACE_CURVE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _surface_curve.self
    }
    public let partialEntity: _surface_curve

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_eCURVE: eCURVE 	// [3]
    public var super_eSURFACE_CURVE: eSURFACE_CURVE { return self } 	// [4]

    //MARK: SUBTYPES
    public var sub_eBOUNDED_SURFACE_CURVE: eBOUNDED_SURFACE_CURVE? {	// [5]
      return self.complexEntity.entityReference(eBOUNDED_SURFACE_CURVE.self)
    }

    public var sub_eSEAM_CURVE: eSEAM_CURVE? {	// [6]
      return self.complexEntity.entityReference(eSEAM_CURVE.self)
    }

    public var sub_eINTERSECTION_CURVE: eINTERSECTION_CURVE? {	// [7]
      return self.complexEntity.entityReference(eINTERSECTION_CURVE.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eSURFACE_CURVE`` )
    public var ASSOCIATED_GEOMETRY: SDAI.LIST<sPCURVE_OR_SURFACE>/*[1:2]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._associated_geometry )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._associated_geometry = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eSURFACE_CURVE`` )
    public var MASTER_REPRESENTATION: nPREFERRED_SURFACE_CURVE_REPRESENTATION {
      get {
        return SDAI.UNWRAP( self.partialEntity._master_representation )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._master_representation = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eSURFACE_CURVE`` )
    public var CURVE_3D: eCURVE {
      get {
        return SDAI.UNWRAP( self.partialEntity._curve_3d )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._curve_3d = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SELF( ``eSURFACE_CURVE`` )
    public var BASIS_SURFACE: (SDAI.SET<eSURFACE>/*[1:2]*/ )?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"BASIS_SURFACE") {
          return cached.value as! (SDAI.SET<eSURFACE>/*[1:2]*/ )? 
        }
        let origin = self
        let value = origin.partialEntity._basis_surface__getter(SELF: origin)
        updateCache(derivedAttributeName:"BASIS_SURFACE", value:value)
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
      guard let partial = complexEntity?.partialEntityInstance(_surface_curve.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(eCURVE.self) else { return nil }
      self.super_eCURVE = super3

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
      result[prefix2 + " .WHERE_wr1"] = _surface_curve.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _surface_curve.WHERE_wr2(SELF: instance)
      result[prefix2 + " .WHERE_wr3"] = _surface_curve.WHERE_wr3(SELF: instance)
      result[prefix2 + " .WHERE_wr4"] = _surface_curve.WHERE_wr4(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "SURFACE_CURVE", type: self, explicitAttributeCount: 3)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eCURVE.self)
      entityDef.add(supertype: eSURFACE_CURVE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "ASSOCIATED_GEOMETRY", keyPath: \eSURFACE_CURVE.ASSOCIATED_GEOMETRY, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "MASTER_REPRESENTATION", keyPath: \eSURFACE_CURVE.MASTER_REPRESENTATION, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "CURVE_3D", keyPath: \eSURFACE_CURVE.CURVE_3D, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "BASIS_SURFACE", keyPath: \eSURFACE_CURVE.BASIS_SURFACE, 
        kind: .derived, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eSURFACE_CURVE.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \eSURFACE_CURVE.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}