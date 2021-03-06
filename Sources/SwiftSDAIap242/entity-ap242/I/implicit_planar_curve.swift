/* file: implicit_planar_curve.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY implicit_planar_curve
    ABSTRACT SUPERTYPE OF ( 
        ONEOF ( 
            implicit_intersection_curve, 
            implicit_projected_curve, 
            implicit_model_intersection_curve, 
            implicit_silhouette_curve ) )
    SUBTYPE OF ( curve, auxiliary_geometric_representation_item );
      using_sketch             : positioned_sketch;
      computed_representation  : curve;
    DERIVE
      curve_plane  : plane := get_plane_of_implicit_geometry( using_sketch );
    WHERE
      wr1: ( SIZEOF( TYPEOF( computed_representation ) * [ 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'IMPLICIT_PLANAR_CURVE' , 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CURVE_REPLICA'] ) 
               = 0 );
  END_ENTITY; -- implicit_planar_curve (line:17864 file:ap242ed2_mim_lf_v1.101.TY.exp)

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

  SUPER- ENTITY(4)	variational_representation_item
    (no local attributes)

  SUPER- ENTITY(5)	auxiliary_geometric_representation_item
    (no local attributes)

  ENTITY(SELF)	implicit_planar_curve
    ATTR:  using_sketch,	TYPE: positioned_sketch -- EXPLICIT

    ATTR:  computed_representation,	TYPE: curve -- EXPLICIT

    ATTR:  curve_plane,	TYPE: plane -- DERIVED
      := get_plane_of_implicit_geometry( using_sketch )


  SUB- ENTITY(7)	implicit_intersection_curve
    ATTR:  external_surface,	TYPE: surface -- EXPLICIT


  SUB- ENTITY(8)	implicit_projected_curve
    ATTR:  external_curve,	TYPE: curve -- EXPLICIT

    ATTR:  projection_direction,	TYPE: direction -- EXPLICIT


  SUB- ENTITY(9)	implicit_model_intersection_curve
    ATTR:  intersected_model,	TYPE: surface_or_solid_model -- EXPLICIT


  SUB- ENTITY(10)	implicit_silhouette_curve
    ATTR:  silhouetted_model,	TYPE: surface_or_solid_model -- EXPLICIT

    ATTR:  view_direction,	TYPE: direction -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _implicit_planar_curve : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eIMPLICIT_PLANAR_CURVE.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _using_sketch: ePOSITIONED_SKETCH // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _computed_representation: eCURVE // PLAIN EXPLICIT ATTRIBUTE

    /// DERIVE ATTRIBUTE
    internal func _curve_plane__getter(SELF: eIMPLICIT_PLANAR_CURVE) -> ePLANE?  {

      let _TEMP1 = GET_PLANE_OF_IMPLICIT_GEOMETRY(SELF.USING_SKETCH)
      return _TEMP1
    }

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._using_sketch.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._computed_representation.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._using_sketch.value.isValueEqualOptionally(to: rhs._using_sketch.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._computed_representation.value.isValueEqualOptionally(to: rhs._computed_representation.value, visited: &comppairs)	{
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
      if let comp = self._using_sketch.value.isValueEqualOptionally(to: rhs._using_sketch.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._computed_representation.value.isValueEqualOptionally(to: rhs._computed_representation.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eIMPLICIT_PLANAR_CURVE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF.COMPUTED_REPRESENTATION)
      let _TEMP2 = ([SDAI.AIE(SDAI.STRING(
        "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.IMPLICIT_PLANAR_CURVE")), 
        SDAI.AIE(SDAI.STRING("AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CURVE_REPLICA"))] 
        as [SDAI.AggregationInitializerElement<SDAI.STRING>])
      let _TEMP3 = SDAI.FORCE_OPTIONAL(_TEMP1) * SDAI.FORCE_OPTIONAL(_TEMP2)
      let _TEMP4 = SDAI.SIZEOF(_TEMP3)
      let _TEMP5 = _TEMP4 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP5
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(USING_SKETCH: ePOSITIONED_SKETCH, COMPUTED_REPRESENTATION: eCURVE) {
      self._using_sketch = USING_SKETCH
      self._computed_representation = COMPUTED_REPRESENTATION
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: ePOSITIONED_SKETCH.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: eCURVE.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( USING_SKETCH: p0, COMPUTED_REPRESENTATION: p1 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY implicit_planar_curve
    ABSTRACT SUPERTYPE OF ( 
        ONEOF ( 
            implicit_intersection_curve, 
            implicit_projected_curve, 
            implicit_model_intersection_curve, 
            implicit_silhouette_curve ) )
    SUBTYPE OF ( curve, auxiliary_geometric_representation_item );
      using_sketch             : positioned_sketch;
      computed_representation  : curve;
    DERIVE
      curve_plane  : plane := get_plane_of_implicit_geometry( using_sketch );
    WHERE
      wr1: ( SIZEOF( TYPEOF( computed_representation ) * [ 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'IMPLICIT_PLANAR_CURVE' , 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CURVE_REPLICA'] ) 
               = 0 );
  END_ENTITY; -- implicit_planar_curve (line:17864 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eIMPLICIT_PLANAR_CURVE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _implicit_planar_curve.self
    }
    public let partialEntity: _implicit_planar_curve

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_eCURVE: eCURVE 	// [3]
    public let super_eVARIATIONAL_REPRESENTATION_ITEM: eVARIATIONAL_REPRESENTATION_ITEM 	// [4]
    public let super_eAUXILIARY_GEOMETRIC_REPRESENTATION_ITEM: eAUXILIARY_GEOMETRIC_REPRESENTATION_ITEM 	// [5]
    public var super_eIMPLICIT_PLANAR_CURVE: eIMPLICIT_PLANAR_CURVE { return self } 	// [6]

    //MARK: SUBTYPES
    public var sub_eIMPLICIT_INTERSECTION_CURVE: eIMPLICIT_INTERSECTION_CURVE? {	// [7]
      return self.complexEntity.entityReference(eIMPLICIT_INTERSECTION_CURVE.self)
    }

    public var sub_eIMPLICIT_PROJECTED_CURVE: eIMPLICIT_PROJECTED_CURVE? {	// [8]
      return self.complexEntity.entityReference(eIMPLICIT_PROJECTED_CURVE.self)
    }

    public var sub_eIMPLICIT_MODEL_INTERSECTION_CURVE: eIMPLICIT_MODEL_INTERSECTION_CURVE? {	// [9]
      return self.complexEntity.entityReference(eIMPLICIT_MODEL_INTERSECTION_CURVE.self)
    }

    public var sub_eIMPLICIT_SILHOUETTE_CURVE: eIMPLICIT_SILHOUETTE_CURVE? {	// [10]
      return self.complexEntity.entityReference(eIMPLICIT_SILHOUETTE_CURVE.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eIMPLICIT_SILHOUETTE_CURVE`` )
    public var SILHOUETTED_MODEL: sSURFACE_OR_SOLID_MODEL?  {
      get {
        return sub_eIMPLICIT_SILHOUETTE_CURVE?.partialEntity._silhouetted_model
      }
      set(newValue) {
        guard let partial = sub_eIMPLICIT_SILHOUETTE_CURVE?.super_eIMPLICIT_SILHOUETTE_CURVE.partialEntity
          else { return }
        partial._silhouetted_model = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eIMPLICIT_PLANAR_CURVE`` )
    public var USING_SKETCH: ePOSITIONED_SKETCH {
      get {
        return SDAI.UNWRAP( self.partialEntity._using_sketch )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._using_sketch = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eIMPLICIT_INTERSECTION_CURVE`` )
    public var EXTERNAL_SURFACE: eSURFACE?  {
      get {
        return sub_eIMPLICIT_INTERSECTION_CURVE?.partialEntity._external_surface
      }
      set(newValue) {
        guard let partial = sub_eIMPLICIT_INTERSECTION_CURVE?.super_eIMPLICIT_INTERSECTION_CURVE
          .partialEntity else { return }
        partial._external_surface = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SELF( ``eIMPLICIT_PLANAR_CURVE`` )
    public var CURVE_PLANE: ePLANE?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"CURVE_PLANE") {
          return cached.value as! ePLANE? 
        }
        let origin = self
        let value = origin.partialEntity._curve_plane__getter(SELF: origin)
        updateCache(derivedAttributeName:"CURVE_PLANE", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eIMPLICIT_PLANAR_CURVE`` )
    public var COMPUTED_REPRESENTATION: eCURVE {
      get {
        return SDAI.UNWRAP( self.partialEntity._computed_representation )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._computed_representation = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eIMPLICIT_PROJECTED_CURVE`` )
    public var EXTERNAL_CURVE: eCURVE?  {
      get {
        return sub_eIMPLICIT_PROJECTED_CURVE?.partialEntity._external_curve
      }
      set(newValue) {
        guard let partial = sub_eIMPLICIT_PROJECTED_CURVE?.super_eIMPLICIT_PROJECTED_CURVE.partialEntity
          else { return }
        partial._external_curve = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eIMPLICIT_PROJECTED_CURVE`` )
    public var PROJECTION_DIRECTION: eDIRECTION?  {
      get {
        return sub_eIMPLICIT_PROJECTED_CURVE?.partialEntity._projection_direction
      }
      set(newValue) {
        guard let partial = sub_eIMPLICIT_PROJECTED_CURVE?.super_eIMPLICIT_PROJECTED_CURVE.partialEntity
          else { return }
        partial._projection_direction = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eIMPLICIT_MODEL_INTERSECTION_CURVE`` )
    public var INTERSECTED_MODEL: sSURFACE_OR_SOLID_MODEL?  {
      get {
        return sub_eIMPLICIT_MODEL_INTERSECTION_CURVE?.partialEntity._intersected_model
      }
      set(newValue) {
        guard let partial = sub_eIMPLICIT_MODEL_INTERSECTION_CURVE?.super_eIMPLICIT_MODEL_INTERSECTION_CURVE
          .partialEntity else { return }
        partial._intersected_model = SDAI.UNWRAP(newValue)
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
    /// - origin: SUB( ``eIMPLICIT_SILHOUETTE_CURVE`` )
    public var VIEW_DIRECTION: eDIRECTION?  {
      get {
        return sub_eIMPLICIT_SILHOUETTE_CURVE?.partialEntity._view_direction
      }
      set(newValue) {
        guard let partial = sub_eIMPLICIT_SILHOUETTE_CURVE?.super_eIMPLICIT_SILHOUETTE_CURVE.partialEntity
          else { return }
        partial._view_direction = SDAI.UNWRAP(newValue)
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
      guard let partial = complexEntity?.partialEntityInstance(_implicit_planar_curve.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(eCURVE.self) else { return nil }
      self.super_eCURVE = super3

      guard let super4 = complexEntity?.entityReference(eVARIATIONAL_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eVARIATIONAL_REPRESENTATION_ITEM = super4

      guard let super5 = complexEntity?.entityReference(eAUXILIARY_GEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eAUXILIARY_GEOMETRIC_REPRESENTATION_ITEM = super5

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
      result[prefix2 + " .WHERE_wr1"] = _implicit_planar_curve.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "IMPLICIT_PLANAR_CURVE", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eCURVE.self)
      entityDef.add(supertype: eVARIATIONAL_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eAUXILIARY_GEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eIMPLICIT_PLANAR_CURVE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "SILHOUETTED_MODEL", keyPath: \eIMPLICIT_PLANAR_CURVE.SILHOUETTED_MODEL, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "USING_SKETCH", keyPath: \eIMPLICIT_PLANAR_CURVE.USING_SKETCH, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "EXTERNAL_SURFACE", keyPath: \eIMPLICIT_PLANAR_CURVE.EXTERNAL_SURFACE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "CURVE_PLANE", keyPath: \eIMPLICIT_PLANAR_CURVE.CURVE_PLANE, 
        kind: .derived, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "COMPUTED_REPRESENTATION", keyPath: \eIMPLICIT_PLANAR_CURVE.COMPUTED_REPRESENTATION, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "EXTERNAL_CURVE", keyPath: \eIMPLICIT_PLANAR_CURVE.EXTERNAL_CURVE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "PROJECTION_DIRECTION", keyPath: \eIMPLICIT_PLANAR_CURVE.PROJECTION_DIRECTION, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "INTERSECTED_MODEL", keyPath: \eIMPLICIT_PLANAR_CURVE.INTERSECTED_MODEL, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eIMPLICIT_PLANAR_CURVE.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "VIEW_DIRECTION", keyPath: \eIMPLICIT_PLANAR_CURVE.VIEW_DIRECTION, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DIM", keyPath: \eIMPLICIT_PLANAR_CURVE.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
