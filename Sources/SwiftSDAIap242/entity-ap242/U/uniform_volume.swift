/* file: uniform_volume.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY uniform_volume
    SUBTYPE OF ( b_spline_volume );
  END_ENTITY; -- uniform_volume (line:33276 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(2)	geometric_representation_item
    ATTR:  dim,	TYPE: dimension_count -- DERIVED
      := dimension_of( SELF )


  SUPER- ENTITY(3)	volume
    (no local attributes)

  SUPER- ENTITY(4)	b_spline_volume
    ATTR:  u_degree,	TYPE: INTEGER -- EXPLICIT

    ATTR:  v_degree,	TYPE: INTEGER -- EXPLICIT

    ATTR:  w_degree,	TYPE: INTEGER -- EXPLICIT

    ATTR:  control_points_list,	TYPE: LIST [2 : ?] OF LIST [2 : ?] OF LIST [2 : ?] OF cartesian_point -- EXPLICIT

    ATTR:  u_upper,	TYPE: INTEGER -- DERIVED
      := SIZEOF( control_points_list ) - 1

    ATTR:  v_upper,	TYPE: INTEGER -- DERIVED
      := SIZEOF( control_points_list[1] ) - 1

    ATTR:  w_upper,	TYPE: INTEGER -- DERIVED
      := SIZEOF( control_points_list[1][1] ) - 1

    ATTR:  control_points,	TYPE: ARRAY [0 : u_upper] OF ARRAY [0 : v_upper] OF ARRAY [0 : w_upper] OF cartesian_point -- DERIVED
      := make_array_of_array_of_array( control_points_list, 0, u_upper, 0, v_upper, 0, w_upper )


  ENTITY(SELF)	uniform_volume
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _uniform_volume : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eUNIFORM_VOLUME.self
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
  ENTITY uniform_volume
    SUBTYPE OF ( b_spline_volume );
  END_ENTITY; -- uniform_volume (line:33276 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eUNIFORM_VOLUME : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _uniform_volume.self
    }
    public let partialEntity: _uniform_volume

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_eVOLUME: eVOLUME 	// [3]
    public let super_eB_SPLINE_VOLUME: eB_SPLINE_VOLUME 	// [4]
    public var super_eUNIFORM_VOLUME: eUNIFORM_VOLUME { return self } 	// [5]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eB_SPLINE_VOLUME`` )
    public var CONTROL_POINTS_LIST: SDAI.LIST<SDAI.LIST<SDAI.LIST<eCARTESIAN_POINT>/*[2:nil]*/ >/*[2:nil]*/ >
      /*[2:nil]*/  {
      get {
        return SDAI.UNWRAP( super_eB_SPLINE_VOLUME.partialEntity._control_points_list )
      }
      set(newValue) {
        let partial = super_eB_SPLINE_VOLUME.partialEntity
        partial._control_points_list = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eB_SPLINE_VOLUME`` )
    public var V_DEGREE: SDAI.INTEGER {
      get {
        return SDAI.UNWRAP( super_eB_SPLINE_VOLUME.partialEntity._v_degree )
      }
      set(newValue) {
        let partial = super_eB_SPLINE_VOLUME.partialEntity
        partial._v_degree = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eB_SPLINE_VOLUME`` )
    public var V_UPPER: SDAI.INTEGER?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"V_UPPER") {
          return cached.value as! SDAI.INTEGER? 
        }
        let origin = super_eB_SPLINE_VOLUME
        let value = SDAI.INTEGER(origin.partialEntity._v_upper__getter(SELF: origin))
        updateCache(derivedAttributeName:"V_UPPER", value:value)
        return value
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eB_SPLINE_VOLUME`` )
    public var W_UPPER: SDAI.INTEGER?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"W_UPPER") {
          return cached.value as! SDAI.INTEGER? 
        }
        let origin = super_eB_SPLINE_VOLUME
        let value = SDAI.INTEGER(origin.partialEntity._w_upper__getter(SELF: origin))
        updateCache(derivedAttributeName:"W_UPPER", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eB_SPLINE_VOLUME`` )
    public var W_DEGREE: SDAI.INTEGER {
      get {
        return SDAI.UNWRAP( super_eB_SPLINE_VOLUME.partialEntity._w_degree )
      }
      set(newValue) {
        let partial = super_eB_SPLINE_VOLUME.partialEntity
        partial._w_degree = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eB_SPLINE_VOLUME`` )
    public var CONTROL_POINTS: (SDAI.ARRAY<SDAI.ARRAY<SDAI.ARRAY<eCARTESIAN_POINT>/*[0:W_UPPER]*/ >/*[0:
      V_UPPER]*/ >/*[0:U_UPPER]*/ )?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"CONTROL_POINTS") {
          return cached.value as! (SDAI.ARRAY<SDAI.ARRAY<SDAI.ARRAY<eCARTESIAN_POINT>/*[0:W_UPPER]*/ >/*[0:
            V_UPPER]*/ >/*[0:U_UPPER]*/ )? 
        }
        let origin = super_eB_SPLINE_VOLUME
        let value = SDAI.ARRAY<SDAI.ARRAY<SDAI.ARRAY<eCARTESIAN_POINT>>>(
          origin.partialEntity._control_points__getter(SELF: origin))
        updateCache(derivedAttributeName:"CONTROL_POINTS", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eB_SPLINE_VOLUME`` )
    public var U_DEGREE: SDAI.INTEGER {
      get {
        return SDAI.UNWRAP( super_eB_SPLINE_VOLUME.partialEntity._u_degree )
      }
      set(newValue) {
        let partial = super_eB_SPLINE_VOLUME.partialEntity
        partial._u_degree = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eB_SPLINE_VOLUME`` )
    public var U_UPPER: SDAI.INTEGER?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"U_UPPER") {
          return cached.value as! SDAI.INTEGER? 
        }
        let origin = super_eB_SPLINE_VOLUME
        let value = SDAI.INTEGER(origin.partialEntity._u_upper__getter(SELF: origin))
        updateCache(derivedAttributeName:"U_UPPER", value:value)
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
      guard let partial = complexEntity?.partialEntityInstance(_uniform_volume.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(eVOLUME.self) else { return nil }
      self.super_eVOLUME = super3

      guard let super4 = complexEntity?.entityReference(eB_SPLINE_VOLUME.self) else { return nil }
      self.super_eB_SPLINE_VOLUME = super4

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "UNIFORM_VOLUME", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eVOLUME.self)
      entityDef.add(supertype: eB_SPLINE_VOLUME.self)
      entityDef.add(supertype: eUNIFORM_VOLUME.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "CONTROL_POINTS_LIST", keyPath: \eUNIFORM_VOLUME.CONTROL_POINTS_LIST, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "V_DEGREE", keyPath: \eUNIFORM_VOLUME.V_DEGREE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "V_UPPER", keyPath: \eUNIFORM_VOLUME.V_UPPER, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "W_UPPER", keyPath: \eUNIFORM_VOLUME.W_UPPER, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "W_DEGREE", keyPath: \eUNIFORM_VOLUME.W_DEGREE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "CONTROL_POINTS", keyPath: \eUNIFORM_VOLUME.CONTROL_POINTS, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "U_DEGREE", keyPath: \eUNIFORM_VOLUME.U_DEGREE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "U_UPPER", keyPath: \eUNIFORM_VOLUME.U_UPPER, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eUNIFORM_VOLUME.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \eUNIFORM_VOLUME.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}