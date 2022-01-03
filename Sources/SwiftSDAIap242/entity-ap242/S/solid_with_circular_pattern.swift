/* file: solid_with_circular_pattern.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY solid_with_circular_pattern
    SUPERTYPE OF ( 
        solid_with_incomplete_circular_pattern )
    SUBTYPE OF ( solid_with_shape_element_pattern );
      replicate_count   : positive_integer;
      angular_spacing   : plane_angle_measure;
      radial_alignment  : BOOLEAN;
      reference_point   : point;
  END_ENTITY; -- solid_with_circular_pattern (line:29962 file:ap242ed2_mim_lf_v1.101.TY.exp)

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


  SUPER- ENTITY(6)	solid_with_shape_element_pattern
    ATTR:  replicated_element,	TYPE: modified_solid_with_placed_configuration -- EXPLICIT


  ENTITY(SELF)	solid_with_circular_pattern
    ATTR:  replicate_count,	TYPE: positive_integer -- EXPLICIT

    ATTR:  angular_spacing,	TYPE: plane_angle_measure -- EXPLICIT

    ATTR:  radial_alignment,	TYPE: BOOLEAN -- EXPLICIT

    ATTR:  reference_point,	TYPE: point -- EXPLICIT


  SUB- ENTITY(8)	solid_with_incomplete_circular_pattern
    ATTR:  omitted_instances,	TYPE: SET [1 : ?] OF positive_integer -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _solid_with_circular_pattern : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eSOLID_WITH_CIRCULAR_PATTERN.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _replicate_count: tPOSITIVE_INTEGER // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _angular_spacing: tPLANE_ANGLE_MEASURE // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _radial_alignment: SDAI.BOOLEAN // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _reference_point: ePOINT // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._replicate_count.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._angular_spacing.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._radial_alignment.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._reference_point.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._replicate_count.value.isValueEqualOptionally(to: rhs._replicate_count.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._angular_spacing.value.isValueEqualOptionally(to: rhs._angular_spacing.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._radial_alignment.value.isValueEqualOptionally(to: rhs._radial_alignment.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._reference_point.value.isValueEqualOptionally(to: rhs._reference_point.value, visited: &comppairs)	{
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
      if let comp = self._replicate_count.value.isValueEqualOptionally(to: rhs._replicate_count.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._angular_spacing.value.isValueEqualOptionally(to: rhs._angular_spacing.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._radial_alignment.value.isValueEqualOptionally(to: rhs._radial_alignment.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._reference_point.value.isValueEqualOptionally(to: rhs._reference_point.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(REPLICATE_COUNT: tPOSITIVE_INTEGER, ANGULAR_SPACING: tPLANE_ANGLE_MEASURE, 
                RADIAL_ALIGNMENT: SDAI.BOOLEAN, REFERENCE_POINT: ePOINT) {
      self._replicate_count = REPLICATE_COUNT
      self._angular_spacing = ANGULAR_SPACING
      self._radial_alignment = RADIAL_ALIGNMENT
      self._reference_point = REFERENCE_POINT
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 4
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: tPOSITIVE_INTEGER.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: tPLANE_ANGLE_MEASURE.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p2) = exchangeStructure.recoverRequiredParameter(as: SDAI.BOOLEAN.self, from: parameters[2])
      else { exchangeStructure.add(errorContext: "while recovering parameter #2 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p3) = exchangeStructure.recoverRequiredParameter(as: ePOINT.self, from: parameters[3])
      else { exchangeStructure.add(errorContext: "while recovering parameter #3 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( REPLICATE_COUNT: p0, ANGULAR_SPACING: p1, RADIAL_ALIGNMENT: p2, REFERENCE_POINT: p3 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY solid_with_circular_pattern
    SUPERTYPE OF ( 
        solid_with_incomplete_circular_pattern )
    SUBTYPE OF ( solid_with_shape_element_pattern );
      replicate_count   : positive_integer;
      angular_spacing   : plane_angle_measure;
      radial_alignment  : BOOLEAN;
      reference_point   : point;
  END_ENTITY; -- solid_with_circular_pattern (line:29962 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eSOLID_WITH_CIRCULAR_PATTERN : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _solid_with_circular_pattern.self
    }
    public let partialEntity: _solid_with_circular_pattern

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_eSOLID_MODEL: eSOLID_MODEL 	// [3]
    public let super_eMODIFIED_SOLID: eMODIFIED_SOLID 	// [4]
    public let super_eMODIFIED_SOLID_WITH_PLACED_CONFIGURATION: eMODIFIED_SOLID_WITH_PLACED_CONFIGURATION 	// [5]
    public let super_eSOLID_WITH_SHAPE_ELEMENT_PATTERN: eSOLID_WITH_SHAPE_ELEMENT_PATTERN 	// [6]
    public var super_eSOLID_WITH_CIRCULAR_PATTERN: eSOLID_WITH_CIRCULAR_PATTERN { return self } 	// [7]

    //MARK: SUBTYPES
    public var sub_eSOLID_WITH_INCOMPLETE_CIRCULAR_PATTERN: eSOLID_WITH_INCOMPLETE_CIRCULAR_PATTERN? {	// [8]
      return self.complexEntity.entityReference(eSOLID_WITH_INCOMPLETE_CIRCULAR_PATTERN.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eSOLID_WITH_CIRCULAR_PATTERN`` )
    public var REPLICATE_COUNT: tPOSITIVE_INTEGER {
      get {
        return SDAI.UNWRAP( self.partialEntity._replicate_count )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._replicate_count = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eSOLID_WITH_CIRCULAR_PATTERN`` )
    public var ANGULAR_SPACING: tPLANE_ANGLE_MEASURE {
      get {
        return SDAI.UNWRAP( self.partialEntity._angular_spacing )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._angular_spacing = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eSOLID_WITH_CIRCULAR_PATTERN`` )
    public var RADIAL_ALIGNMENT: SDAI.BOOLEAN {
      get {
        return SDAI.UNWRAP( self.partialEntity._radial_alignment )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._radial_alignment = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eSOLID_WITH_SHAPE_ELEMENT_PATTERN`` )
    public var REPLICATED_ELEMENT: eMODIFIED_SOLID_WITH_PLACED_CONFIGURATION {
      get {
        return SDAI.UNWRAP( super_eSOLID_WITH_SHAPE_ELEMENT_PATTERN.partialEntity._replicated_element )
      }
      set(newValue) {
        let partial = super_eSOLID_WITH_SHAPE_ELEMENT_PATTERN.partialEntity
        partial._replicated_element = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eSOLID_WITH_INCOMPLETE_CIRCULAR_PATTERN`` )
    public var OMITTED_INSTANCES: (SDAI.SET<tPOSITIVE_INTEGER>/*[1:nil]*/ )?  {
      get {
        return sub_eSOLID_WITH_INCOMPLETE_CIRCULAR_PATTERN?.partialEntity._omitted_instances
      }
      set(newValue) {
        guard let partial = sub_eSOLID_WITH_INCOMPLETE_CIRCULAR_PATTERN?.super_eSOLID_WITH_INCOMPLETE_CIRCULAR_PATTERN
          .partialEntity else { return }
        partial._omitted_instances = SDAI.UNWRAP(newValue)
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
    /// - origin: SELF( ``eSOLID_WITH_CIRCULAR_PATTERN`` )
    public var REFERENCE_POINT: ePOINT {
      get {
        return SDAI.UNWRAP( self.partialEntity._reference_point )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._reference_point = SDAI.UNWRAP(newValue)
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
      guard let partial = complexEntity?.partialEntityInstance(_solid_with_circular_pattern.self) else { return nil }
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

      guard let super6 = complexEntity?.entityReference(eSOLID_WITH_SHAPE_ELEMENT_PATTERN.self) else { return nil }
      self.super_eSOLID_WITH_SHAPE_ELEMENT_PATTERN = super6

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "SOLID_WITH_CIRCULAR_PATTERN", type: self, explicitAttributeCount: 4)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eSOLID_MODEL.self)
      entityDef.add(supertype: eMODIFIED_SOLID.self)
      entityDef.add(supertype: eMODIFIED_SOLID_WITH_PLACED_CONFIGURATION.self)
      entityDef.add(supertype: eSOLID_WITH_SHAPE_ELEMENT_PATTERN.self)
      entityDef.add(supertype: eSOLID_WITH_CIRCULAR_PATTERN.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "REPLICATE_COUNT", keyPath: \eSOLID_WITH_CIRCULAR_PATTERN.REPLICATE_COUNT, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ANGULAR_SPACING", keyPath: \eSOLID_WITH_CIRCULAR_PATTERN.ANGULAR_SPACING, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "RADIAL_ALIGNMENT", keyPath: \eSOLID_WITH_CIRCULAR_PATTERN.RADIAL_ALIGNMENT, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "REPLICATED_ELEMENT", keyPath: \eSOLID_WITH_CIRCULAR_PATTERN.REPLICATED_ELEMENT, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "OMITTED_INSTANCES", keyPath: \eSOLID_WITH_CIRCULAR_PATTERN.OMITTED_INSTANCES, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "RATIONALE", keyPath: \eSOLID_WITH_CIRCULAR_PATTERN.RATIONALE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "BASE_SOLID", keyPath: \eSOLID_WITH_CIRCULAR_PATTERN.BASE_SOLID, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "REFERENCE_POINT", keyPath: \eSOLID_WITH_CIRCULAR_PATTERN.REFERENCE_POINT, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "PLACING", keyPath: \eSOLID_WITH_CIRCULAR_PATTERN.PLACING, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eSOLID_WITH_CIRCULAR_PATTERN.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \eSOLID_WITH_CIRCULAR_PATTERN.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
