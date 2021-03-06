/* file: elliptic_area.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY elliptic_area
    SUBTYPE OF ( primitive_2d );
      position     : axis2_placement_2d;
      semi_axis_1  : positive_length_measure;
      semi_axis_2  : positive_length_measure;
  END_ENTITY; -- elliptic_area (line:13870 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(2)	geometric_representation_item
    ATTR:  dim,	TYPE: dimension_count -- DERIVED
      := dimension_of( SELF )


  SUPER- ENTITY(3)	primitive_2d
    (no local attributes)

  ENTITY(SELF)	elliptic_area
    ATTR:  position,	TYPE: axis2_placement_2d -- EXPLICIT

    ATTR:  semi_axis_1,	TYPE: positive_length_measure -- EXPLICIT

    ATTR:  semi_axis_2,	TYPE: positive_length_measure -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _elliptic_area : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eELLIPTIC_AREA.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _position: eAXIS2_PLACEMENT_2D // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _semi_axis_1: tPOSITIVE_LENGTH_MEASURE // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _semi_axis_2: tPOSITIVE_LENGTH_MEASURE // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sBOUNDED_PRIMITIVE_2D.typeName)) // -> Self
      members.insert(SDAI.STRING(sCSG_SELECT_2D.typeName)) // -> sBOUNDED_PRIMITIVE_2D
      members.insert(SDAI.STRING(sCSG_PRIMITIVE.typeName)) // -> sBOUNDED_PRIMITIVE_2D
      members.insert(SDAI.STRING(sCSG_SELECT.typeName)) // -> sCSG_PRIMITIVE
      members.insert(SDAI.STRING(sBASE_SOLID_SELECT.typeName)) // -> sCSG_PRIMITIVE
      members.insert(SDAI.STRING(sBOOLEAN_OPERAND.typeName)) // -> sCSG_PRIMITIVE
      members.insert(SDAI.STRING(sBOOLEAN_OPERAND_2D.typeName)) // -> sBOUNDED_PRIMITIVE_2D
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._position.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._semi_axis_1.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._semi_axis_2.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._position.value.isValueEqualOptionally(to: rhs._position.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._semi_axis_1.value.isValueEqualOptionally(to: rhs._semi_axis_1.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._semi_axis_2.value.isValueEqualOptionally(to: rhs._semi_axis_2.value, visited: &comppairs)	{
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
      if let comp = self._position.value.isValueEqualOptionally(to: rhs._position.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._semi_axis_1.value.isValueEqualOptionally(to: rhs._semi_axis_1.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._semi_axis_2.value.isValueEqualOptionally(to: rhs._semi_axis_2.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(POSITION: eAXIS2_PLACEMENT_2D, SEMI_AXIS_1: tPOSITIVE_LENGTH_MEASURE, 
                SEMI_AXIS_2: tPOSITIVE_LENGTH_MEASURE) {
      self._position = POSITION
      self._semi_axis_1 = SEMI_AXIS_1
      self._semi_axis_2 = SEMI_AXIS_2
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 3
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: eAXIS2_PLACEMENT_2D.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: tPOSITIVE_LENGTH_MEASURE.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p2) = exchangeStructure.recoverRequiredParameter(as: tPOSITIVE_LENGTH_MEASURE.self, from: parameters[2])
      else { exchangeStructure.add(errorContext: "while recovering parameter #2 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( POSITION: p0, SEMI_AXIS_1: p1, SEMI_AXIS_2: p2 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY elliptic_area
    SUBTYPE OF ( primitive_2d );
      position     : axis2_placement_2d;
      semi_axis_1  : positive_length_measure;
      semi_axis_2  : positive_length_measure;
  END_ENTITY; -- elliptic_area (line:13870 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eELLIPTIC_AREA : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _elliptic_area.self
    }
    public let partialEntity: _elliptic_area

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_ePRIMITIVE_2D: ePRIMITIVE_2D 	// [3]
    public var super_eELLIPTIC_AREA: eELLIPTIC_AREA { return self } 	// [4]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eELLIPTIC_AREA`` )
    public var POSITION: eAXIS2_PLACEMENT_2D {
      get {
        return SDAI.UNWRAP( self.partialEntity._position )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._position = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eELLIPTIC_AREA`` )
    public var SEMI_AXIS_1: tPOSITIVE_LENGTH_MEASURE {
      get {
        return SDAI.UNWRAP( self.partialEntity._semi_axis_1 )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._semi_axis_1 = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eELLIPTIC_AREA`` )
    public var SEMI_AXIS_2: tPOSITIVE_LENGTH_MEASURE {
      get {
        return SDAI.UNWRAP( self.partialEntity._semi_axis_2 )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._semi_axis_2 = SDAI.UNWRAP(newValue)
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
      guard let partial = complexEntity?.partialEntityInstance(_elliptic_area.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(ePRIMITIVE_2D.self) else { return nil }
      self.super_ePRIMITIVE_2D = super3

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "ELLIPTIC_AREA", type: self, explicitAttributeCount: 3)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: ePRIMITIVE_2D.self)
      entityDef.add(supertype: eELLIPTIC_AREA.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "POSITION", keyPath: \eELLIPTIC_AREA.POSITION, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "SEMI_AXIS_1", keyPath: \eELLIPTIC_AREA.SEMI_AXIS_1, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SEMI_AXIS_2", keyPath: \eELLIPTIC_AREA.SEMI_AXIS_2, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eELLIPTIC_AREA.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \eELLIPTIC_AREA.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
