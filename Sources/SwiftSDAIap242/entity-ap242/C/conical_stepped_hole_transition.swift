/* file: conical_stepped_hole_transition.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY conical_stepped_hole_transition
    SUBTYPE OF ( geometric_representation_item );
      transition_number  : positive_integer;
      cone_apex_angle    : plane_angle_measure;
      cone_base_radius   : positive_length_measure;
  END_ENTITY; -- conical_stepped_hole_transition (line:10368 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(2)	geometric_representation_item
    ATTR:  dim,	TYPE: dimension_count -- DERIVED
      := dimension_of( SELF )


  ENTITY(SELF)	conical_stepped_hole_transition
    ATTR:  transition_number,	TYPE: positive_integer -- EXPLICIT

    ATTR:  cone_apex_angle,	TYPE: plane_angle_measure -- EXPLICIT

    ATTR:  cone_base_radius,	TYPE: positive_length_measure -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _conical_stepped_hole_transition : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eCONICAL_STEPPED_HOLE_TRANSITION.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _transition_number: tPOSITIVE_INTEGER // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _cone_apex_angle: tPLANE_ANGLE_MEASURE // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _cone_base_radius: tPOSITIVE_LENGTH_MEASURE // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._transition_number.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._cone_apex_angle.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._cone_base_radius.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._transition_number.value.isValueEqualOptionally(to: rhs._transition_number.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._cone_apex_angle.value.isValueEqualOptionally(to: rhs._cone_apex_angle.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._cone_base_radius.value.isValueEqualOptionally(to: rhs._cone_base_radius.value, visited: &comppairs)	{
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
      if let comp = self._transition_number.value.isValueEqualOptionally(to: rhs._transition_number.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._cone_apex_angle.value.isValueEqualOptionally(to: rhs._cone_apex_angle.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._cone_base_radius.value.isValueEqualOptionally(to: rhs._cone_base_radius.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(TRANSITION_NUMBER: tPOSITIVE_INTEGER, CONE_APEX_ANGLE: tPLANE_ANGLE_MEASURE, 
                CONE_BASE_RADIUS: tPOSITIVE_LENGTH_MEASURE) {
      self._transition_number = TRANSITION_NUMBER
      self._cone_apex_angle = CONE_APEX_ANGLE
      self._cone_base_radius = CONE_BASE_RADIUS
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 3
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: tPOSITIVE_INTEGER.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: tPLANE_ANGLE_MEASURE.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p2) = exchangeStructure.recoverRequiredParameter(as: tPOSITIVE_LENGTH_MEASURE.self, from: parameters[2])
      else { exchangeStructure.add(errorContext: "while recovering parameter #2 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( TRANSITION_NUMBER: p0, CONE_APEX_ANGLE: p1, CONE_BASE_RADIUS: p2 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY conical_stepped_hole_transition
    SUBTYPE OF ( geometric_representation_item );
      transition_number  : positive_integer;
      cone_apex_angle    : plane_angle_measure;
      cone_base_radius   : positive_length_measure;
  END_ENTITY; -- conical_stepped_hole_transition (line:10368 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eCONICAL_STEPPED_HOLE_TRANSITION : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _conical_stepped_hole_transition.self
    }
    public let partialEntity: _conical_stepped_hole_transition

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public var super_eCONICAL_STEPPED_HOLE_TRANSITION: eCONICAL_STEPPED_HOLE_TRANSITION { return self } 	// [3]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eCONICAL_STEPPED_HOLE_TRANSITION`` )
    public var TRANSITION_NUMBER: tPOSITIVE_INTEGER {
      get {
        return SDAI.UNWRAP( self.partialEntity._transition_number )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._transition_number = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eCONICAL_STEPPED_HOLE_TRANSITION`` )
    public var CONE_BASE_RADIUS: tPOSITIVE_LENGTH_MEASURE {
      get {
        return SDAI.UNWRAP( self.partialEntity._cone_base_radius )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._cone_base_radius = SDAI.UNWRAP(newValue)
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
    /// - origin: SELF( ``eCONICAL_STEPPED_HOLE_TRANSITION`` )
    public var CONE_APEX_ANGLE: tPLANE_ANGLE_MEASURE {
      get {
        return SDAI.UNWRAP( self.partialEntity._cone_apex_angle )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._cone_apex_angle = SDAI.UNWRAP(newValue)
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
      guard let partial = complexEntity?.partialEntityInstance(_conical_stepped_hole_transition.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super2

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "CONICAL_STEPPED_HOLE_TRANSITION", type: self, explicitAttributeCount: 3)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eCONICAL_STEPPED_HOLE_TRANSITION.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "TRANSITION_NUMBER", keyPath: \eCONICAL_STEPPED_HOLE_TRANSITION.TRANSITION_NUMBER, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "CONE_BASE_RADIUS", keyPath: \eCONICAL_STEPPED_HOLE_TRANSITION.CONE_BASE_RADIUS, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eCONICAL_STEPPED_HOLE_TRANSITION.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "CONE_APEX_ANGLE", keyPath: \eCONICAL_STEPPED_HOLE_TRANSITION.CONE_APEX_ANGLE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \eCONICAL_STEPPED_HOLE_TRANSITION.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
