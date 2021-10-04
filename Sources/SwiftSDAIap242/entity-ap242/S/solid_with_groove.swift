/* file: solid_with_groove.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY solid_with_groove
    SUBTYPE OF ( solid_with_depression );
      groove_radius        : positive_length_measure;
      groove_width         : positive_length_measure;
      draft_angle          : plane_angle_measure;
      floor_fillet_radius  : non_negative_length_measure;
      external_groove      : BOOLEAN;
    WHERE
      wr1: ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SOLID_WITH_THROUGH_DEPRESSION' IN 
               TYPEOF( SELF ) ) );
  END_ENTITY; -- solid_with_groove (line:30044 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(2)	geometric_representation_item
    ATTR:  dim,	TYPE: dimension_count -- DERIVED
      := dimension_of( SELF )


  SUPER- ENTITY(3)	solid_model
    (no local attributes)

  SUPER- ENTITY(4)	modified_solid
    ATTR:  rationale,	TYPE: text -- EXPLICIT

    ATTR:  base_solid,	TYPE: base_solid_select -- EXPLICIT


  SUPER- ENTITY(5)	modified_solid_with_placed_configuration
    ATTR:  placing,	TYPE: axis2_placement_3d -- EXPLICIT


  SUPER- ENTITY(6)	solid_with_depression
    ATTR:  depth,	TYPE: positive_length_measure -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: solid_with_stepped_round_hole,	TYPE: positive_length_measure	(as DERIVED)


  ENTITY(SELF)	solid_with_groove
    ATTR:  groove_radius,	TYPE: positive_length_measure -- EXPLICIT

    ATTR:  groove_width,	TYPE: positive_length_measure -- EXPLICIT

    ATTR:  draft_angle,	TYPE: plane_angle_measure -- EXPLICIT

    ATTR:  floor_fillet_radius,	TYPE: non_negative_length_measure -- EXPLICIT

    ATTR:  external_groove,	TYPE: BOOLEAN -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _solid_with_groove : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eSOLID_WITH_GROOVE.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _groove_radius: tPOSITIVE_LENGTH_MEASURE // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _groove_width: tPOSITIVE_LENGTH_MEASURE // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _draft_angle: tPLANE_ANGLE_MEASURE // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _floor_fillet_radius: tNON_NEGATIVE_LENGTH_MEASURE // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _external_groove: SDAI.BOOLEAN // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._groove_radius.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._groove_width.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._draft_angle.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._floor_fillet_radius.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._external_groove.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._groove_radius.value.isValueEqualOptionally(to: rhs._groove_radius.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._groove_width.value.isValueEqualOptionally(to: rhs._groove_width.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._draft_angle.value.isValueEqualOptionally(to: rhs._draft_angle.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._floor_fillet_radius.value.isValueEqualOptionally(to: rhs._floor_fillet_radius.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._external_groove.value.isValueEqualOptionally(to: rhs._external_groove.value, visited: &comppairs)	{
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
      if let comp = self._groove_radius.value.isValueEqualOptionally(to: rhs._groove_radius.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._groove_width.value.isValueEqualOptionally(to: rhs._groove_width.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._draft_angle.value.isValueEqualOptionally(to: rhs._draft_angle.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._floor_fillet_radius.value.isValueEqualOptionally(to: rhs._floor_fillet_radius.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._external_groove.value.isValueEqualOptionally(to: rhs._external_groove.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eSOLID_WITH_GROOVE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF, IS: eSOLID_WITH_THROUGH_DEPRESSION.self)
      let _TEMP2 =  !_TEMP1
      return _TEMP2
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(GROOVE_RADIUS: tPOSITIVE_LENGTH_MEASURE, GROOVE_WIDTH: tPOSITIVE_LENGTH_MEASURE, 
                DRAFT_ANGLE: tPLANE_ANGLE_MEASURE, FLOOR_FILLET_RADIUS: tNON_NEGATIVE_LENGTH_MEASURE, 
                EXTERNAL_GROOVE: SDAI.BOOLEAN) {
      self._groove_radius = GROOVE_RADIUS
      self._groove_width = GROOVE_WIDTH
      self._draft_angle = DRAFT_ANGLE
      self._floor_fillet_radius = FLOOR_FILLET_RADIUS
      self._external_groove = EXTERNAL_GROOVE
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 5
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: tPOSITIVE_LENGTH_MEASURE.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: tPOSITIVE_LENGTH_MEASURE.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p2) = exchangeStructure.recoverRequiredParameter(as: tPLANE_ANGLE_MEASURE.self, from: parameters[2])
      else { exchangeStructure.add(errorContext: "while recovering parameter #2 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p3) = exchangeStructure.recoverRequiredParameter(as: 
        tNON_NEGATIVE_LENGTH_MEASURE.self, from: parameters[3])
      else { exchangeStructure.add(errorContext: "while recovering parameter #3 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p4) = exchangeStructure.recoverRequiredParameter(as: SDAI.BOOLEAN.self, from: parameters[4])
      else { exchangeStructure.add(errorContext: "while recovering parameter #4 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( GROOVE_RADIUS: p0, GROOVE_WIDTH: p1, DRAFT_ANGLE: p2, FLOOR_FILLET_RADIUS: p3, EXTERNAL_GROOVE: p4 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY solid_with_groove
    SUBTYPE OF ( solid_with_depression );
      groove_radius        : positive_length_measure;
      groove_width         : positive_length_measure;
      draft_angle          : plane_angle_measure;
      floor_fillet_radius  : non_negative_length_measure;
      external_groove      : BOOLEAN;
    WHERE
      wr1: ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SOLID_WITH_THROUGH_DEPRESSION' IN 
               TYPEOF( SELF ) ) );
  END_ENTITY; -- solid_with_groove (line:30044 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eSOLID_WITH_GROOVE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _solid_with_groove.self
    }
    public let partialEntity: _solid_with_groove

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_eSOLID_MODEL: eSOLID_MODEL 	// [3]
    public let super_eMODIFIED_SOLID: eMODIFIED_SOLID 	// [4]
    public let super_eMODIFIED_SOLID_WITH_PLACED_CONFIGURATION: eMODIFIED_SOLID_WITH_PLACED_CONFIGURATION 	// [5]
    public let super_eSOLID_WITH_DEPRESSION: eSOLID_WITH_DEPRESSION 	// [6]
    public var super_eSOLID_WITH_GROOVE: eSOLID_WITH_GROOVE { return self } 	// [7]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eSOLID_WITH_GROOVE`` )
    public var EXTERNAL_GROOVE: SDAI.BOOLEAN {
      get {
        return SDAI.UNWRAP( self.partialEntity._external_groove )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._external_groove = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eMODIFIED_SOLID`` )
    public var RATIONALE: tTEXT {
      get {
        return SDAI.UNWRAP( super_eMODIFIED_SOLID.partialEntity._rationale )
      }
      set(newValue) {
        let partial = super_eMODIFIED_SOLID.partialEntity
        partial._rationale = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eSOLID_WITH_GROOVE`` )
    public var GROOVE_WIDTH: tPOSITIVE_LENGTH_MEASURE {
      get {
        return SDAI.UNWRAP( self.partialEntity._groove_width )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._groove_width = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eMODIFIED_SOLID`` )
    public var BASE_SOLID: sBASE_SOLID_SELECT {
      get {
        return SDAI.UNWRAP( super_eMODIFIED_SOLID.partialEntity._base_solid )
      }
      set(newValue) {
        let partial = super_eMODIFIED_SOLID.partialEntity
        partial._base_solid = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eSOLID_WITH_GROOVE`` )
    public var GROOVE_RADIUS: tPOSITIVE_LENGTH_MEASURE {
      get {
        return SDAI.UNWRAP( self.partialEntity._groove_radius )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._groove_radius = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eSOLID_WITH_GROOVE`` )
    public var DRAFT_ANGLE: tPLANE_ANGLE_MEASURE {
      get {
        return SDAI.UNWRAP( self.partialEntity._draft_angle )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._draft_angle = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eMODIFIED_SOLID_WITH_PLACED_CONFIGURATION`` )
    public var PLACING: eAXIS2_PLACEMENT_3D {
      get {
        return SDAI.UNWRAP( super_eMODIFIED_SOLID_WITH_PLACED_CONFIGURATION.partialEntity._placing )
      }
      set(newValue) {
        let partial = super_eMODIFIED_SOLID_WITH_PLACED_CONFIGURATION.partialEntity
        partial._placing = SDAI.UNWRAP(newValue)
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

    /// __EXPLICIT(DYNAMIC)__ attribute
    /// - origin: SUPER( ``eSOLID_WITH_DEPRESSION`` )
    public var DEPTH: tPOSITIVE_LENGTH_MEASURE {
      get {
        if let resolved = _solid_with_depression._depth__provider(complex: self.complexEntity) {
          let value = resolved._depth__getter(complex: self.complexEntity)
          return value
        }
        else {
          return SDAI.UNWRAP( super_eSOLID_WITH_DEPRESSION.partialEntity._depth )
        }
      }
      set(newValue) {
        if let _ = _solid_with_depression._depth__provider(complex: self.complexEntity) { return }

        let partial = super_eSOLID_WITH_DEPRESSION.partialEntity
        partial._depth = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eSOLID_WITH_GROOVE`` )
    public var FLOOR_FILLET_RADIUS: tNON_NEGATIVE_LENGTH_MEASURE {
      get {
        return SDAI.UNWRAP( self.partialEntity._floor_fillet_radius )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._floor_fillet_radius = SDAI.UNWRAP(newValue)
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
      guard let partial = complexEntity?.partialEntityInstance(_solid_with_groove.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(eSOLID_MODEL.self) else { return nil }
      self.super_eSOLID_MODEL = super3

      guard let super4 = complexEntity?.entityReference(eMODIFIED_SOLID.self) else { return nil }
      self.super_eMODIFIED_SOLID = super4

      guard let super5 = complexEntity?.entityReference(eMODIFIED_SOLID_WITH_PLACED_CONFIGURATION.self) else { return nil }
      self.super_eMODIFIED_SOLID_WITH_PLACED_CONFIGURATION = super5

      guard let super6 = complexEntity?.entityReference(eSOLID_WITH_DEPRESSION.self) else { return nil }
      self.super_eSOLID_WITH_DEPRESSION = super6

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
      result[prefix2 + " .WHERE_wr1"] = _solid_with_groove.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "SOLID_WITH_GROOVE", type: self, explicitAttributeCount: 5)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eSOLID_MODEL.self)
      entityDef.add(supertype: eMODIFIED_SOLID.self)
      entityDef.add(supertype: eMODIFIED_SOLID_WITH_PLACED_CONFIGURATION.self)
      entityDef.add(supertype: eSOLID_WITH_DEPRESSION.self)
      entityDef.add(supertype: eSOLID_WITH_GROOVE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "EXTERNAL_GROOVE", keyPath: \eSOLID_WITH_GROOVE.EXTERNAL_GROOVE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "RATIONALE", keyPath: \eSOLID_WITH_GROOVE.RATIONALE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "GROOVE_WIDTH", keyPath: \eSOLID_WITH_GROOVE.GROOVE_WIDTH, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "BASE_SOLID", keyPath: \eSOLID_WITH_GROOVE.BASE_SOLID, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "GROOVE_RADIUS", keyPath: \eSOLID_WITH_GROOVE.GROOVE_RADIUS, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DRAFT_ANGLE", keyPath: \eSOLID_WITH_GROOVE.DRAFT_ANGLE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "PLACING", keyPath: \eSOLID_WITH_GROOVE.PLACING, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eSOLID_WITH_GROOVE.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DEPTH", keyPath: \eSOLID_WITH_GROOVE.DEPTH, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "FLOOR_FILLET_RADIUS", keyPath: \eSOLID_WITH_GROOVE.FLOOR_FILLET_RADIUS, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \eSOLID_WITH_GROOVE.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}