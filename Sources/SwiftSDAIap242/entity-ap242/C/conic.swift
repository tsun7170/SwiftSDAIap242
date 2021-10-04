/* file: conic.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY conic
    SUPERTYPE OF ( 
        ONEOF ( 
            circle, 
            ellipse, 
            hyperbola, 
            parabola ) )
    SUBTYPE OF ( curve );
      position  : axis2_placement;
  END_ENTITY; -- conic (line:10348 file:ap242ed2_mim_lf_v1.101.TY.exp)

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

  ENTITY(SELF)	conic
    ATTR:  position,	TYPE: axis2_placement -- EXPLICIT


  SUB- ENTITY(5)	hyperbola
    ATTR:  semi_axis,	TYPE: positive_length_measure -- EXPLICIT

    ATTR:  semi_imag_axis,	TYPE: positive_length_measure -- EXPLICIT


  SUB- ENTITY(6)	ellipse
    ATTR:  semi_axis_1,	TYPE: positive_length_measure -- EXPLICIT

    ATTR:  semi_axis_2,	TYPE: positive_length_measure -- EXPLICIT


  SUB- ENTITY(7)	circle
    ATTR:  radius,	TYPE: positive_length_measure -- EXPLICIT


  SUB- ENTITY(8)	parabola
    ATTR:  focal_dist,	TYPE: length_measure -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _conic : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eCONIC.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _position: sAXIS2_PLACEMENT // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sPLANAR_CURVE_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sSKETCH_BASIS_SELECT.typeName)) // -> sPLANAR_CURVE_SELECT
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._position.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._position.value.isValueEqualOptionally(to: rhs._position.value, visited: &comppairs)	{
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
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(POSITION: sAXIS2_PLACEMENT) {
      self._position = POSITION
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: sAXIS2_PLACEMENT.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( POSITION: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY conic
    SUPERTYPE OF ( 
        ONEOF ( 
            circle, 
            ellipse, 
            hyperbola, 
            parabola ) )
    SUBTYPE OF ( curve );
      position  : axis2_placement;
  END_ENTITY; -- conic (line:10348 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eCONIC : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _conic.self
    }
    public let partialEntity: _conic

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_eCURVE: eCURVE 	// [3]
    public var super_eCONIC: eCONIC { return self } 	// [4]

    //MARK: SUBTYPES
    public var sub_eHYPERBOLA: eHYPERBOLA? {	// [5]
      return self.complexEntity.entityReference(eHYPERBOLA.self)
    }

    public var sub_eELLIPSE: eELLIPSE? {	// [6]
      return self.complexEntity.entityReference(eELLIPSE.self)
    }

    public var sub_eCIRCLE: eCIRCLE? {	// [7]
      return self.complexEntity.entityReference(eCIRCLE.self)
    }

    public var sub_ePARABOLA: ePARABOLA? {	// [8]
      return self.complexEntity.entityReference(ePARABOLA.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eCIRCLE`` )
    public var RADIUS: tPOSITIVE_LENGTH_MEASURE?  {
      get {
        return sub_eCIRCLE?.partialEntity._radius
      }
      set(newValue) {
        guard let partial = sub_eCIRCLE?.super_eCIRCLE.partialEntity else { return }
        partial._radius = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eHYPERBOLA`` )
    public var SEMI_IMAG_AXIS: tPOSITIVE_LENGTH_MEASURE?  {
      get {
        return sub_eHYPERBOLA?.partialEntity._semi_imag_axis
      }
      set(newValue) {
        guard let partial = sub_eHYPERBOLA?.super_eHYPERBOLA.partialEntity else { return }
        partial._semi_imag_axis = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eCONIC`` )
    public var POSITION: sAXIS2_PLACEMENT {
      get {
        return SDAI.UNWRAP( self.partialEntity._position )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._position = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eELLIPSE`` )
    public var SEMI_AXIS_1: tPOSITIVE_LENGTH_MEASURE?  {
      get {
        return sub_eELLIPSE?.partialEntity._semi_axis_1
      }
      set(newValue) {
        guard let partial = sub_eELLIPSE?.super_eELLIPSE.partialEntity else { return }
        partial._semi_axis_1 = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eELLIPSE`` )
    public var SEMI_AXIS_2: tPOSITIVE_LENGTH_MEASURE?  {
      get {
        return sub_eELLIPSE?.partialEntity._semi_axis_2
      }
      set(newValue) {
        guard let partial = sub_eELLIPSE?.super_eELLIPSE.partialEntity else { return }
        partial._semi_axis_2 = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eHYPERBOLA`` )
    public var SEMI_AXIS: tPOSITIVE_LENGTH_MEASURE?  {
      get {
        return sub_eHYPERBOLA?.partialEntity._semi_axis
      }
      set(newValue) {
        guard let partial = sub_eHYPERBOLA?.super_eHYPERBOLA.partialEntity else { return }
        partial._semi_axis = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``ePARABOLA`` )
    public var FOCAL_DIST: tLENGTH_MEASURE?  {
      get {
        return sub_ePARABOLA?.partialEntity._focal_dist
      }
      set(newValue) {
        guard let partial = sub_ePARABOLA?.super_ePARABOLA.partialEntity else { return }
        partial._focal_dist = SDAI.UNWRAP(newValue)
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
      guard let partial = complexEntity?.partialEntityInstance(_conic.self) else { return nil }
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


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "CONIC", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eCURVE.self)
      entityDef.add(supertype: eCONIC.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "RADIUS", keyPath: \eCONIC.RADIUS, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SEMI_IMAG_AXIS", keyPath: \eCONIC.SEMI_IMAG_AXIS, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "POSITION", keyPath: \eCONIC.POSITION, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "SEMI_AXIS_1", keyPath: \eCONIC.SEMI_AXIS_1, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SEMI_AXIS_2", keyPath: \eCONIC.SEMI_AXIS_2, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SEMI_AXIS", keyPath: \eCONIC.SEMI_AXIS, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "FOCAL_DIST", keyPath: \eCONIC.FOCAL_DIST, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eCONIC.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \eCONIC.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
