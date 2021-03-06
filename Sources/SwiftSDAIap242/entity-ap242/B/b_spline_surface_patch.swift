/* file: b_spline_surface_patch.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY b_spline_surface_patch
    SUBTYPE OF ( founded_item );
      basis_surface       : b_spline_surface;
      u_start_knot_index  : INTEGER;
      v_start_knot_index  : INTEGER;
    WHERE
      wr1: ( SIZEOF( using_representations( SELF.basis_surface ) * 
               relating_shape_representations_of_extreme_values( SELF ) ) > 0 );
  END_ENTITY; -- b_spline_surface_patch (line:7796 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	founded_item
    ATTR:  users,	TYPE: SET [0 : ?] OF founded_item_select -- DERIVED
      := using_items( SELF, [] )


  ENTITY(SELF)	b_spline_surface_patch
    ATTR:  basis_surface,	TYPE: b_spline_surface -- EXPLICIT

    ATTR:  u_start_knot_index,	TYPE: INTEGER -- EXPLICIT

    ATTR:  v_start_knot_index,	TYPE: INTEGER -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _b_spline_surface_patch : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eB_SPLINE_SURFACE_PATCH.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _basis_surface: eB_SPLINE_SURFACE // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _u_start_knot_index: SDAI.INTEGER // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _v_start_knot_index: SDAI.INTEGER // PLAIN EXPLICIT ATTRIBUTE

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
      self._basis_surface.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._u_start_knot_index.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._v_start_knot_index.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._basis_surface.value.isValueEqualOptionally(to: rhs._basis_surface.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._u_start_knot_index.value.isValueEqualOptionally(to: rhs._u_start_knot_index.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._v_start_knot_index.value.isValueEqualOptionally(to: rhs._v_start_knot_index.value, visited: &comppairs)	{
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
      if let comp = self._basis_surface.value.isValueEqualOptionally(to: rhs._basis_surface.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._u_start_knot_index.value.isValueEqualOptionally(to: rhs._u_start_knot_index.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._v_start_knot_index.value.isValueEqualOptionally(to: rhs._v_start_knot_index.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eB_SPLINE_SURFACE_PATCH?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.BASIS_SURFACE
      let _TEMP2 = USING_REPRESENTATIONS(sFOUNDED_ITEM_SELECT(/*eB_SPLINE_SURFACE*/_TEMP1))
      let _TEMP3 = RELATING_SHAPE_REPRESENTATIONS_OF_EXTREME_VALUES(sLOCATION_OF_EXTREME_VALUE_SELECT(/*
        eB_SPLINE_SURFACE_PATCH*/SELF))
      let _TEMP4 = SDAI.SET<SDAI.GENERIC_ENTITY>(/*SDAI.SET<eREPRESENTATION>*/_TEMP2) * SDAI.SET<
        SDAI.GENERIC_ENTITY>(/*SDAI.SET<eSHAPE_REPRESENTATION>*/_TEMP3)
      let _TEMP5 = SDAI.SIZEOF(_TEMP4)
      let _TEMP6 = _TEMP5 > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP6
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(BASIS_SURFACE: eB_SPLINE_SURFACE, U_START_KNOT_INDEX: SDAI.INTEGER, 
                V_START_KNOT_INDEX: SDAI.INTEGER) {
      self._basis_surface = BASIS_SURFACE
      self._u_start_knot_index = U_START_KNOT_INDEX
      self._v_start_knot_index = V_START_KNOT_INDEX
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 3
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: eB_SPLINE_SURFACE.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: SDAI.INTEGER.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p2) = exchangeStructure.recoverRequiredParameter(as: SDAI.INTEGER.self, from: parameters[2])
      else { exchangeStructure.add(errorContext: "while recovering parameter #2 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( BASIS_SURFACE: p0, U_START_KNOT_INDEX: p1, V_START_KNOT_INDEX: p2 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY b_spline_surface_patch
    SUBTYPE OF ( founded_item );
      basis_surface       : b_spline_surface;
      u_start_knot_index  : INTEGER;
      v_start_knot_index  : INTEGER;
    WHERE
      wr1: ( SIZEOF( using_representations( SELF.basis_surface ) * 
               relating_shape_representations_of_extreme_values( SELF ) ) > 0 );
  END_ENTITY; -- b_spline_surface_patch (line:7796 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eB_SPLINE_SURFACE_PATCH : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _b_spline_surface_patch.self
    }
    public let partialEntity: _b_spline_surface_patch

    //MARK: SUPERTYPES
    public let super_eFOUNDED_ITEM: eFOUNDED_ITEM 	// [1]
    public var super_eB_SPLINE_SURFACE_PATCH: eB_SPLINE_SURFACE_PATCH { return self } 	// [2]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eFOUNDED_ITEM`` )
    public var USERS: (SDAI.SET<sFOUNDED_ITEM_SELECT>/*[0:nil]*/ )?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"USERS") {
          return cached.value as! (SDAI.SET<sFOUNDED_ITEM_SELECT>/*[0:nil]*/ )? 
        }
        let origin = super_eFOUNDED_ITEM
        let value = SDAI.SET<sFOUNDED_ITEM_SELECT>(origin.partialEntity._users__getter(SELF: origin))
        updateCache(derivedAttributeName:"USERS", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eB_SPLINE_SURFACE_PATCH`` )
    public var V_START_KNOT_INDEX: SDAI.INTEGER {
      get {
        return SDAI.UNWRAP( self.partialEntity._v_start_knot_index )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._v_start_knot_index = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eB_SPLINE_SURFACE_PATCH`` )
    public var BASIS_SURFACE: eB_SPLINE_SURFACE {
      get {
        return SDAI.UNWRAP( self.partialEntity._basis_surface )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._basis_surface = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eB_SPLINE_SURFACE_PATCH`` )
    public var U_START_KNOT_INDEX: SDAI.INTEGER {
      get {
        return SDAI.UNWRAP( self.partialEntity._u_start_knot_index )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._u_start_knot_index = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_b_spline_surface_patch.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eFOUNDED_ITEM.self) else { return nil }
      self.super_eFOUNDED_ITEM = super1

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
      result[prefix2 + " .WHERE_wr1"] = _b_spline_surface_patch.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "B_SPLINE_SURFACE_PATCH", type: self, explicitAttributeCount: 3)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eFOUNDED_ITEM.self)
      entityDef.add(supertype: eB_SPLINE_SURFACE_PATCH.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "USERS", keyPath: \eB_SPLINE_SURFACE_PATCH.USERS, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "V_START_KNOT_INDEX", keyPath: \eB_SPLINE_SURFACE_PATCH.V_START_KNOT_INDEX, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "BASIS_SURFACE", keyPath: \eB_SPLINE_SURFACE_PATCH.BASIS_SURFACE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "U_START_KNOT_INDEX", keyPath: \eB_SPLINE_SURFACE_PATCH.U_START_KNOT_INDEX, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
