/* file: planar_pair_value.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY planar_pair_value
    SUBTYPE OF ( pair_value );
      SELF\pair_value.applies_to_pair : planar_pair;
      actual_rotation                 : plane_angle_measure;
      actual_translation_x            : length_measure;
      actual_translation_y            : length_measure;
  END_ENTITY; -- planar_pair_value (line:24570 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(2)	geometric_representation_item
    ATTR:  dim,	TYPE: dimension_count -- DERIVED
      := dimension_of( SELF )


  SUPER- ENTITY(3)	pair_value
    ATTR:  applies_to_pair,	TYPE: kinematic_pair -- EXPLICIT
      -- possibly overriden by
          ENTITY: spherical_pair_value,	TYPE: spherical_pair_select
          ENTITY: revolute_pair_value,	TYPE: revolute_pair
          ENTITY: cylindrical_pair_value,	TYPE: cylindrical_pair
          ENTITY: sliding_surface_pair_value,	TYPE: sliding_surface_pair
          ENTITY: rolling_surface_pair_value,	TYPE: rolling_surface_pair
          ENTITY: universal_pair_value,	TYPE: universal_pair
          ENTITY: low_order_kinematic_pair_value,	TYPE: low_order_kinematic_pair
          ENTITY: prismatic_pair_value,	TYPE: prismatic_pair
          ENTITY: gear_pair_value,	TYPE: gear_pair
          ENTITY: rolling_curve_pair_value,	TYPE: rolling_curve_pair
          ENTITY: sliding_curve_pair_value,	TYPE: sliding_curve_pair
          ENTITY: screw_pair_value,	TYPE: screw_pair
          ENTITY: unconstrained_pair_value,	TYPE: unconstrained_pair
      *** ENTITY: planar_pair_value,	TYPE: planar_pair
          ENTITY: point_on_planar_curve_pair_value,	TYPE: point_on_planar_curve_pair
          ENTITY: point_on_surface_pair_value,	TYPE: point_on_surface_pair
          ENTITY: rack_and_pinion_pair_value,	TYPE: rack_and_pinion_pair


  ENTITY(SELF)	planar_pair_value
    REDCR: applies_to_pair,	TYPE: planar_pair -- EXPLICIT
      -- OVERRIDING ENTITY: pair_value

    ATTR:  actual_rotation,	TYPE: plane_angle_measure -- EXPLICIT

    ATTR:  actual_translation_x,	TYPE: length_measure -- EXPLICIT

    ATTR:  actual_translation_y,	TYPE: length_measure -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _planar_pair_value : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      ePLANAR_PAIR_VALUE.self
    }

    //ATTRIBUTES
    /* override var _applies_to_pair: ePLANAR_PAIR	//EXPLICIT REDEFINITION(ePAIR_VALUE) */

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _actual_rotation: tPLANE_ANGLE_MEASURE // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _actual_translation_x: tLENGTH_MEASURE // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _actual_translation_y: tLENGTH_MEASURE // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._actual_rotation.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._actual_translation_x.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._actual_translation_y.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._actual_rotation.value.isValueEqualOptionally(to: rhs._actual_rotation.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._actual_translation_x.value.isValueEqualOptionally(to: rhs._actual_translation_x.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._actual_translation_y.value.isValueEqualOptionally(to: rhs._actual_translation_y.value, visited: &comppairs)	{
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
      if let comp = self._actual_rotation.value.isValueEqualOptionally(to: rhs._actual_rotation.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._actual_translation_x.value.isValueEqualOptionally(to: rhs._actual_translation_x.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._actual_translation_y.value.isValueEqualOptionally(to: rhs._actual_translation_y.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(ACTUAL_ROTATION: tPLANE_ANGLE_MEASURE, ACTUAL_TRANSLATION_X: tLENGTH_MEASURE, 
                ACTUAL_TRANSLATION_Y: tLENGTH_MEASURE) {
      self._actual_rotation = ACTUAL_ROTATION
      self._actual_translation_x = ACTUAL_TRANSLATION_X
      self._actual_translation_y = ACTUAL_TRANSLATION_Y
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 3
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: tPLANE_ANGLE_MEASURE.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: tLENGTH_MEASURE.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p2) = exchangeStructure.recoverRequiredParameter(as: tLENGTH_MEASURE.self, from: parameters[2])
      else { exchangeStructure.add(errorContext: "while recovering parameter #2 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( ACTUAL_ROTATION: p0, ACTUAL_TRANSLATION_X: p1, ACTUAL_TRANSLATION_Y: p2 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY planar_pair_value
    SUBTYPE OF ( pair_value );
      SELF\pair_value.applies_to_pair : planar_pair;
      actual_rotation                 : plane_angle_measure;
      actual_translation_x            : length_measure;
      actual_translation_y            : length_measure;
  END_ENTITY; -- planar_pair_value (line:24570 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class ePLANAR_PAIR_VALUE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _planar_pair_value.self
    }
    public let partialEntity: _planar_pair_value

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_ePAIR_VALUE: ePAIR_VALUE 	// [3]
    public var super_ePLANAR_PAIR_VALUE: ePLANAR_PAIR_VALUE { return self } 	// [4]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``ePLANAR_PAIR_VALUE`` )
    public var ACTUAL_TRANSLATION_Y: tLENGTH_MEASURE {
      get {
        return SDAI.UNWRAP( self.partialEntity._actual_translation_y )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._actual_translation_y = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``ePLANAR_PAIR_VALUE`` )
    public var ACTUAL_TRANSLATION_X: tLENGTH_MEASURE {
      get {
        return SDAI.UNWRAP( self.partialEntity._actual_translation_x )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._actual_translation_x = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SELF( ``ePLANAR_PAIR_VALUE`` )
    public var APPLIES_TO_PAIR: ePLANAR_PAIR {
      get {
        return SDAI.UNWRAP( ePLANAR_PAIR( super_ePAIR_VALUE.partialEntity._applies_to_pair ) )
      }
      set(newValue) {
        let partial = super_ePAIR_VALUE.partialEntity
        partial._applies_to_pair = SDAI.UNWRAP(
          eKINEMATIC_PAIR(newValue))
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``ePLANAR_PAIR_VALUE`` )
    public var ACTUAL_ROTATION: tPLANE_ANGLE_MEASURE {
      get {
        return SDAI.UNWRAP( self.partialEntity._actual_rotation )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._actual_rotation = SDAI.UNWRAP(newValue)
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
      guard let partial = complexEntity?.partialEntityInstance(_planar_pair_value.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(ePAIR_VALUE.self) else { return nil }
      self.super_ePAIR_VALUE = super3

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "PLANAR_PAIR_VALUE", type: self, explicitAttributeCount: 3)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: ePAIR_VALUE.self)
      entityDef.add(supertype: ePLANAR_PAIR_VALUE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "ACTUAL_TRANSLATION_Y", keyPath: \ePLANAR_PAIR_VALUE.ACTUAL_TRANSLATION_Y, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ACTUAL_TRANSLATION_X", keyPath: \ePLANAR_PAIR_VALUE.ACTUAL_TRANSLATION_X, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "APPLIES_TO_PAIR", keyPath: \ePLANAR_PAIR_VALUE.APPLIES_TO_PAIR, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ACTUAL_ROTATION", keyPath: \ePLANAR_PAIR_VALUE.ACTUAL_ROTATION, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \ePLANAR_PAIR_VALUE.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \ePLANAR_PAIR_VALUE.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
