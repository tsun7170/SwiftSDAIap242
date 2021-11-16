/* file: bezier_curve.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY bezier_curve
    SUBTYPE OF ( b_spline_curve );
  END_ENTITY; -- bezier_curve (line:8171 file:ap242ed2_mim_lf_v1.101.TY.exp)

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

  SUPER- ENTITY(5)	b_spline_curve
    ATTR:  degree,	TYPE: INTEGER -- EXPLICIT

    ATTR:  control_points_list,	TYPE: LIST [2 : ?] OF cartesian_point -- EXPLICIT

    ATTR:  curve_form,	TYPE: b_spline_curve_form -- EXPLICIT

    ATTR:  closed_curve,	TYPE: LOGICAL -- EXPLICIT

    ATTR:  self_intersect,	TYPE: LOGICAL -- EXPLICIT

    ATTR:  upper_index_on_control_points,	TYPE: INTEGER -- DERIVED
      := SIZEOF( control_points_list ) - 1

    ATTR:  control_points,	TYPE: ARRAY [0 : upper_index_on_control_points] OF cartesian_point -- DERIVED
      := list_to_array( control_points_list, 0, upper_index_on_control_points )


  ENTITY(SELF)	bezier_curve
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _bezier_curve : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eBEZIER_CURVE.self
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
  ENTITY bezier_curve
    SUBTYPE OF ( b_spline_curve );
  END_ENTITY; -- bezier_curve (line:8171 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eBEZIER_CURVE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _bezier_curve.self
    }
    public let partialEntity: _bezier_curve

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_eCURVE: eCURVE 	// [3]
    public let super_eBOUNDED_CURVE: eBOUNDED_CURVE 	// [4]
    public let super_eB_SPLINE_CURVE: eB_SPLINE_CURVE 	// [5]
    public var super_eBEZIER_CURVE: eBEZIER_CURVE { return self } 	// [6]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eB_SPLINE_CURVE`` )
    public var CURVE_FORM: nB_SPLINE_CURVE_FORM {
      get {
        return SDAI.UNWRAP( super_eB_SPLINE_CURVE.partialEntity._curve_form )
      }
      set(newValue) {
        let partial = super_eB_SPLINE_CURVE.partialEntity
        partial._curve_form = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eB_SPLINE_CURVE`` )
    public var CONTROL_POINTS_LIST: SDAI.LIST<eCARTESIAN_POINT>/*[2:nil]*/  {
      get {
        return SDAI.UNWRAP( super_eB_SPLINE_CURVE.partialEntity._control_points_list )
      }
      set(newValue) {
        let partial = super_eB_SPLINE_CURVE.partialEntity
        partial._control_points_list = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eB_SPLINE_CURVE`` )
    public var DEGREE: SDAI.INTEGER {
      get {
        return SDAI.UNWRAP( super_eB_SPLINE_CURVE.partialEntity._degree )
      }
      set(newValue) {
        let partial = super_eB_SPLINE_CURVE.partialEntity
        partial._degree = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eB_SPLINE_CURVE`` )
    public var UPPER_INDEX_ON_CONTROL_POINTS: SDAI.INTEGER?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"UPPER_INDEX_ON_CONTROL_POINTS") {
          return cached.value as! SDAI.INTEGER? 
        }
        let origin = super_eB_SPLINE_CURVE
        let value = SDAI.INTEGER(origin.partialEntity._upper_index_on_control_points__getter(SELF: origin))
        updateCache(derivedAttributeName:"UPPER_INDEX_ON_CONTROL_POINTS", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eB_SPLINE_CURVE`` )
    public var SELF_INTERSECT: SDAI.LOGICAL {
      get {
        return SDAI.UNWRAP( super_eB_SPLINE_CURVE.partialEntity._self_intersect )
      }
      set(newValue) {
        let partial = super_eB_SPLINE_CURVE.partialEntity
        partial._self_intersect = SDAI.LOGICAL(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eB_SPLINE_CURVE`` )
    public var CONTROL_POINTS: (SDAI.ARRAY<eCARTESIAN_POINT>/*[0:UPPER_INDEX_ON_CONTROL_POINTS]*/ )?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"CONTROL_POINTS") {
          return cached.value as! (SDAI.ARRAY<eCARTESIAN_POINT>/*[0:UPPER_INDEX_ON_CONTROL_POINTS]*/ )? 
        }
        let origin = super_eB_SPLINE_CURVE
        let value = SDAI.ARRAY<eCARTESIAN_POINT>(origin.partialEntity._control_points__getter(SELF: origin))
        updateCache(derivedAttributeName:"CONTROL_POINTS", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eB_SPLINE_CURVE`` )
    public var CLOSED_CURVE: SDAI.LOGICAL {
      get {
        return SDAI.UNWRAP( super_eB_SPLINE_CURVE.partialEntity._closed_curve )
      }
      set(newValue) {
        let partial = super_eB_SPLINE_CURVE.partialEntity
        partial._closed_curve = SDAI.LOGICAL(newValue)
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
      guard let partial = complexEntity?.partialEntityInstance(_bezier_curve.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(eCURVE.self) else { return nil }
      self.super_eCURVE = super3

      guard let super4 = complexEntity?.entityReference(eBOUNDED_CURVE.self) else { return nil }
      self.super_eBOUNDED_CURVE = super4

      guard let super5 = complexEntity?.entityReference(eB_SPLINE_CURVE.self) else { return nil }
      self.super_eB_SPLINE_CURVE = super5

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "BEZIER_CURVE", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eCURVE.self)
      entityDef.add(supertype: eBOUNDED_CURVE.self)
      entityDef.add(supertype: eB_SPLINE_CURVE.self)
      entityDef.add(supertype: eBEZIER_CURVE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "CURVE_FORM", keyPath: \eBEZIER_CURVE.CURVE_FORM, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "CONTROL_POINTS_LIST", keyPath: \eBEZIER_CURVE.CONTROL_POINTS_LIST, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DEGREE", keyPath: \eBEZIER_CURVE.DEGREE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "UPPER_INDEX_ON_CONTROL_POINTS", keyPath: \eBEZIER_CURVE.UPPER_INDEX_ON_CONTROL_POINTS, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SELF_INTERSECT", keyPath: \eBEZIER_CURVE.SELF_INTERSECT, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "CONTROL_POINTS", keyPath: \eBEZIER_CURVE.CONTROL_POINTS, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "CLOSED_CURVE", keyPath: \eBEZIER_CURVE.CLOSED_CURVE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eBEZIER_CURVE.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \eBEZIER_CURVE.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
