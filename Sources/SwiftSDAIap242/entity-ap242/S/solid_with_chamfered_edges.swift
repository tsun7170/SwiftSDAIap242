/* file: solid_with_chamfered_edges.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY solid_with_chamfered_edges
    ABSTRACT SUPERTYPE OF ( 
        ONEOF ( 
            solid_with_single_offset_chamfer, 
            solid_with_double_offset_chamfer, 
            solid_with_angle_based_chamfer ) )
    SUBTYPE OF ( edge_blended_solid );
  END_ENTITY; -- solid_with_chamfered_edges (line:29955 file:ap242ed2_mim_lf_v1.101.TY.exp)

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


  SUPER- ENTITY(5)	edge_blended_solid
    ATTR:  blended_edges,	TYPE: LIST [1 : ?] OF UNIQUE edge_curve -- EXPLICIT


  ENTITY(SELF)	solid_with_chamfered_edges
    (no local attributes)

  SUB- ENTITY(7)	solid_with_single_offset_chamfer
    ATTR:  offset_distance,	TYPE: positive_length_measure -- EXPLICIT	(AMBIGUOUS/MASKED)


  SUB- ENTITY(8)	solid_with_double_offset_chamfer
    ATTR:  left_offset_distance,	TYPE: positive_length_measure -- EXPLICIT

    ATTR:  right_offset_distance,	TYPE: positive_length_measure -- EXPLICIT


  SUB- ENTITY(9)	solid_with_angle_based_chamfer
    ATTR:  offset_distance,	TYPE: positive_length_measure -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  left_offset,	TYPE: BOOLEAN -- EXPLICIT

    ATTR:  offset_angle,	TYPE: positive_plane_angle_measure -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _solid_with_chamfered_edges : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eSOLID_WITH_CHAMFERED_EDGES.self
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
  ENTITY solid_with_chamfered_edges
    ABSTRACT SUPERTYPE OF ( 
        ONEOF ( 
            solid_with_single_offset_chamfer, 
            solid_with_double_offset_chamfer, 
            solid_with_angle_based_chamfer ) )
    SUBTYPE OF ( edge_blended_solid );
  END_ENTITY; -- solid_with_chamfered_edges (line:29955 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eSOLID_WITH_CHAMFERED_EDGES : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _solid_with_chamfered_edges.self
    }
    public let partialEntity: _solid_with_chamfered_edges

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_eSOLID_MODEL: eSOLID_MODEL 	// [3]
    public let super_eMODIFIED_SOLID: eMODIFIED_SOLID 	// [4]
    public let super_eEDGE_BLENDED_SOLID: eEDGE_BLENDED_SOLID 	// [5]
    public var super_eSOLID_WITH_CHAMFERED_EDGES: eSOLID_WITH_CHAMFERED_EDGES { return self } 	// [6]

    //MARK: SUBTYPES
    public var sub_eSOLID_WITH_SINGLE_OFFSET_CHAMFER: eSOLID_WITH_SINGLE_OFFSET_CHAMFER? {	// [7]
      return self.complexEntity.entityReference(eSOLID_WITH_SINGLE_OFFSET_CHAMFER.self)
    }

    public var sub_eSOLID_WITH_DOUBLE_OFFSET_CHAMFER: eSOLID_WITH_DOUBLE_OFFSET_CHAMFER? {	// [8]
      return self.complexEntity.entityReference(eSOLID_WITH_DOUBLE_OFFSET_CHAMFER.self)
    }

    public var sub_eSOLID_WITH_ANGLE_BASED_CHAMFER: eSOLID_WITH_ANGLE_BASED_CHAMFER? {	// [9]
      return self.complexEntity.entityReference(eSOLID_WITH_ANGLE_BASED_CHAMFER.self)
    }


    //MARK: ATTRIBUTES
    // OFFSET_DISTANCE: (2 AMBIGUOUS REFs)

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eSOLID_WITH_ANGLE_BASED_CHAMFER`` )
    public var LEFT_OFFSET: SDAI.BOOLEAN?  {
      get {
        return sub_eSOLID_WITH_ANGLE_BASED_CHAMFER?.partialEntity._left_offset
      }
      set(newValue) {
        guard let partial = sub_eSOLID_WITH_ANGLE_BASED_CHAMFER?.super_eSOLID_WITH_ANGLE_BASED_CHAMFER
          .partialEntity else { return }
        partial._left_offset = SDAI.UNWRAP(newValue)
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
    /// - origin: SUB( ``eSOLID_WITH_DOUBLE_OFFSET_CHAMFER`` )
    public var RIGHT_OFFSET_DISTANCE: tPOSITIVE_LENGTH_MEASURE?  {
      get {
        return sub_eSOLID_WITH_DOUBLE_OFFSET_CHAMFER?.partialEntity._right_offset_distance
      }
      set(newValue) {
        guard let partial = sub_eSOLID_WITH_DOUBLE_OFFSET_CHAMFER?.super_eSOLID_WITH_DOUBLE_OFFSET_CHAMFER
          .partialEntity else { return }
        partial._right_offset_distance = SDAI.UNWRAP(newValue)
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
    /// - origin: SUB( ``eSOLID_WITH_ANGLE_BASED_CHAMFER`` )
    public var OFFSET_ANGLE: tPOSITIVE_PLANE_ANGLE_MEASURE?  {
      get {
        return sub_eSOLID_WITH_ANGLE_BASED_CHAMFER?.partialEntity._offset_angle
      }
      set(newValue) {
        guard let partial = sub_eSOLID_WITH_ANGLE_BASED_CHAMFER?.super_eSOLID_WITH_ANGLE_BASED_CHAMFER
          .partialEntity else { return }
        partial._offset_angle = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eSOLID_WITH_DOUBLE_OFFSET_CHAMFER`` )
    public var LEFT_OFFSET_DISTANCE: tPOSITIVE_LENGTH_MEASURE?  {
      get {
        return sub_eSOLID_WITH_DOUBLE_OFFSET_CHAMFER?.partialEntity._left_offset_distance
      }
      set(newValue) {
        guard let partial = sub_eSOLID_WITH_DOUBLE_OFFSET_CHAMFER?.super_eSOLID_WITH_DOUBLE_OFFSET_CHAMFER
          .partialEntity else { return }
        partial._left_offset_distance = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eEDGE_BLENDED_SOLID`` )
    public var BLENDED_EDGES: SDAI.LIST_UNIQUE<eEDGE_CURVE>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( super_eEDGE_BLENDED_SOLID.partialEntity._blended_edges )
      }
      set(newValue) {
        let partial = super_eEDGE_BLENDED_SOLID.partialEntity
        partial._blended_edges = SDAI.UNWRAP(newValue)
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
      guard let partial = complexEntity?.partialEntityInstance(_solid_with_chamfered_edges.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(eSOLID_MODEL.self) else { return nil }
      self.super_eSOLID_MODEL = super3

      guard let super4 = complexEntity?.entityReference(eMODIFIED_SOLID.self) else { return nil }
      self.super_eMODIFIED_SOLID = super4

      guard let super5 = complexEntity?.entityReference(eEDGE_BLENDED_SOLID.self) else { return nil }
      self.super_eEDGE_BLENDED_SOLID = super5

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "SOLID_WITH_CHAMFERED_EDGES", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eSOLID_MODEL.self)
      entityDef.add(supertype: eMODIFIED_SOLID.self)
      entityDef.add(supertype: eEDGE_BLENDED_SOLID.self)
      entityDef.add(supertype: eSOLID_WITH_CHAMFERED_EDGES.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "LEFT_OFFSET", keyPath: \eSOLID_WITH_CHAMFERED_EDGES.LEFT_OFFSET, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "RATIONALE", keyPath: \eSOLID_WITH_CHAMFERED_EDGES.RATIONALE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "RIGHT_OFFSET_DISTANCE", keyPath: \eSOLID_WITH_CHAMFERED_EDGES.RIGHT_OFFSET_DISTANCE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "BASE_SOLID", keyPath: \eSOLID_WITH_CHAMFERED_EDGES.BASE_SOLID, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "OFFSET_ANGLE", keyPath: \eSOLID_WITH_CHAMFERED_EDGES.OFFSET_ANGLE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "LEFT_OFFSET_DISTANCE", keyPath: \eSOLID_WITH_CHAMFERED_EDGES.LEFT_OFFSET_DISTANCE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "BLENDED_EDGES", keyPath: \eSOLID_WITH_CHAMFERED_EDGES.BLENDED_EDGES, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eSOLID_WITH_CHAMFERED_EDGES.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \eSOLID_WITH_CHAMFERED_EDGES.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
