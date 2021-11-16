/* file: agc_with_dimension.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY agc_with_dimension
    SUBTYPE OF ( angle_geometric_constraint );
      angle_value  : plane_angle_measure;
  END_ENTITY; -- agc_with_dimension (line:6752 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(2)	variational_representation_item
    (no local attributes)

  SUPER- ENTITY(3)	explicit_constraint
    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT

    ATTR:  constrained_elements,	TYPE: SET [1 : ?] OF representation_item -- EXPLICIT
      -- possibly overriden by
          ENTITY: symmetry_geometric_constraint,	TYPE: SET [2 : 2] OF geometric_representation_item
          ENTITY: swept_point_curve_geometric_constraint,	TYPE: SET [1 : ?] OF curve
          ENTITY: coaxial_geometric_constraint,	TYPE: SET [1 : ?] OF axial_geometry_constraint_element
          ENTITY: curve_smoothness_geometric_constraint,	TYPE: SET [1 : 1] OF curve_segment_set
          ENTITY: incidence_geometric_constraint,	TYPE: SET [1 : ?] OF geometric_constraint_element
          ENTITY: curve_length_geometric_constraint,	TYPE: SET [1 : ?] OF bounded_curve
          ENTITY: equal_parameter_constraint,	TYPE: SET [1 : ?] OF variational_parameter
          ENTITY: free_form_constraint,	TYPE: SET [1 : ?] OF variational_parameter
          ENTITY: surface_smoothness_geometric_constraint,	TYPE: SET [1 : 1] OF surface_patch_set
          ENTITY: fixed_element_geometric_constraint,	TYPE: SET [1 : ?] OF geometric_constraint_element
      *** ENTITY: angle_geometric_constraint,	TYPE: SET [1 : ?] OF linear_geometry_constraint_element
          ENTITY: perpendicular_geometric_constraint,	TYPE: SET [1 : ?] OF linear_geometry_constraint_element
          ENTITY: parallel_offset_geometric_constraint,	TYPE: SET [1 : ?] OF curve_or_surface_constraint_element
          ENTITY: surface_distance_geometric_constraint,	TYPE: SET [1 : 2] OF surface
          ENTITY: parallel_geometric_constraint,	TYPE: SET [1 : ?] OF linear_geometry_constraint_element
          ENTITY: point_distance_geometric_constraint,	TYPE: SET [1 : ?] OF point
          ENTITY: radius_geometric_constraint,	TYPE: SET [1 : ?] OF radial_geometry_constraint_element
          ENTITY: skew_line_distance_geometric_constraint,	TYPE: SET [1 : 2] OF line
          ENTITY: explicit_geometric_constraint,	TYPE: SET [1 : ?] OF geometric_representation_item
          ENTITY: curve_distance_geometric_constraint,	TYPE: SET [1 : 2] OF curve
          ENTITY: swept_curve_surface_geometric_constraint,	TYPE: SET [1 : ?] OF surface
          ENTITY: tangent_geometric_constraint,	TYPE: SET [1 : ?] OF curve_or_surface_constraint_element

    ATTR:  reference_elements,	TYPE: SET [0 : ?] OF representation_item -- EXPLICIT
      -- possibly overriden by
          ENTITY: swept_point_curve_geometric_constraint,	TYPE: SET [1 : 1] OF swept_face_solid
          ENTITY: coaxial_geometric_constraint,	TYPE: SET [0 : 1] OF axial_geometry_constraint_element
          ENTITY: incidence_geometric_constraint,	TYPE: SET [0 : ?] OF geometric_constraint_element
          ENTITY: equal_parameter_constraint,	TYPE: SET [0 : 1] OF variational_parameter
          ENTITY: free_form_constraint,	TYPE: SET [0 : ?] OF variational_parameter
      *** ENTITY: angle_geometric_constraint,	TYPE: SET [0 : 1] OF linear_geometry_constraint_element
          ENTITY: perpendicular_geometric_constraint,	TYPE: SET [0 : 2] OF linear_geometry_constraint_element
          ENTITY: parallel_offset_geometric_constraint,	TYPE: SET [0 : 1] OF curve_or_surface_constraint_element
          ENTITY: surface_distance_geometric_constraint,	TYPE: SET [0 : 4] OF point_curve_or_surface_constraint_element
          ENTITY: parallel_geometric_constraint,	TYPE: SET [0 : 1] OF linear_geometry_constraint_element
          ENTITY: point_distance_geometric_constraint,	TYPE: SET [0 : 4] OF point_curve_or_surface_constraint_element
          ENTITY: skew_line_distance_geometric_constraint,	TYPE: SET [0 : 1] OF line
          ENTITY: explicit_geometric_constraint,	TYPE: SET [0 : ?] OF geometric_representation_item
          ENTITY: curve_distance_geometric_constraint,	TYPE: SET [0 : 4] OF point_curve_or_surface_constraint_element
          ENTITY: swept_curve_surface_geometric_constraint,	TYPE: SET [1 : 1] OF swept_surface_or_solid
          ENTITY: tangent_geometric_constraint,	TYPE: SET [0 : ?] OF curve_or_surface_constraint_element


  SUPER- ENTITY(4)	defined_constraint
    (no local attributes)

  SUPER- ENTITY(5)	geometric_representation_item
    ATTR:  dim,	TYPE: dimension_count -- DERIVED
      := dimension_of( SELF )


  SUPER- ENTITY(6)	explicit_geometric_constraint
    REDCR: constrained_elements,	TYPE: SET [1 : ?] OF geometric_representation_item -- EXPLICIT
      -- OVERRIDING ENTITY: explicit_constraint

    REDCR: reference_elements,	TYPE: SET [0 : ?] OF geometric_representation_item -- EXPLICIT
      -- OVERRIDING ENTITY: explicit_constraint


  SUPER- ENTITY(7)	angle_geometric_constraint
    REDCR: constrained_elements,	TYPE: SET [1 : ?] OF linear_geometry_constraint_element -- EXPLICIT
      -- OVERRIDING ENTITY: explicit_constraint

    REDCR: reference_elements,	TYPE: SET [0 : 1] OF linear_geometry_constraint_element -- EXPLICIT
      -- OVERRIDING ENTITY: explicit_constraint


  ENTITY(SELF)	agc_with_dimension
    ATTR:  angle_value,	TYPE: plane_angle_measure -- EXPLICIT


  SUB- ENTITY(9)	angle_assembly_constraint_with_dimension
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _agc_with_dimension : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eAGC_WITH_DIMENSION.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _angle_value: tPLANE_ANGLE_MEASURE // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._angle_value.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._angle_value.value.isValueEqualOptionally(to: rhs._angle_value.value, visited: &comppairs)	{
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
      if let comp = self._angle_value.value.isValueEqualOptionally(to: rhs._angle_value.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(ANGLE_VALUE: tPLANE_ANGLE_MEASURE) {
      self._angle_value = ANGLE_VALUE
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: tPLANE_ANGLE_MEASURE.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( ANGLE_VALUE: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY agc_with_dimension
    SUBTYPE OF ( angle_geometric_constraint );
      angle_value  : plane_angle_measure;
  END_ENTITY; -- agc_with_dimension (line:6752 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eAGC_WITH_DIMENSION : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _agc_with_dimension.self
    }
    public let partialEntity: _agc_with_dimension

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eVARIATIONAL_REPRESENTATION_ITEM: eVARIATIONAL_REPRESENTATION_ITEM 	// [2]
    public let super_eEXPLICIT_CONSTRAINT: eEXPLICIT_CONSTRAINT 	// [3]
    public let super_eDEFINED_CONSTRAINT: eDEFINED_CONSTRAINT 	// [4]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [5]
    public let super_eEXPLICIT_GEOMETRIC_CONSTRAINT: eEXPLICIT_GEOMETRIC_CONSTRAINT 	// [6]
    public let super_eANGLE_GEOMETRIC_CONSTRAINT: eANGLE_GEOMETRIC_CONSTRAINT 	// [7]
    public var super_eAGC_WITH_DIMENSION: eAGC_WITH_DIMENSION { return self } 	// [8]

    //MARK: SUBTYPES
    public var sub_eANGLE_ASSEMBLY_CONSTRAINT_WITH_DIMENSION: eANGLE_ASSEMBLY_CONSTRAINT_WITH_DIMENSION? {	// [9]
      return self.complexEntity.entityReference(eANGLE_ASSEMBLY_CONSTRAINT_WITH_DIMENSION.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eEXPLICIT_CONSTRAINT`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        return super_eEXPLICIT_CONSTRAINT.partialEntity._description
      }
      set(newValue) {
        let partial = super_eEXPLICIT_CONSTRAINT.partialEntity
        partial._description = newValue
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SUPER( ``eANGLE_GEOMETRIC_CONSTRAINT`` )
    public var CONSTRAINED_ELEMENTS: SDAI.SET<sLINEAR_GEOMETRY_CONSTRAINT_ELEMENT>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( SDAI.SET<sLINEAR_GEOMETRY_CONSTRAINT_ELEMENT>( super_eEXPLICIT_CONSTRAINT
          .partialEntity._constrained_elements ) )
      }
      set(newValue) {
        let partial = super_eEXPLICIT_CONSTRAINT.partialEntity
        partial._constrained_elements = SDAI.UNWRAP(
          SDAI.SET<eREPRESENTATION_ITEM>(newValue))
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SUPER( ``eANGLE_GEOMETRIC_CONSTRAINT`` )
    public var REFERENCE_ELEMENTS: SDAI.SET<sLINEAR_GEOMETRY_CONSTRAINT_ELEMENT>/*[0:1]*/  {
      get {
        return SDAI.UNWRAP( SDAI.SET<sLINEAR_GEOMETRY_CONSTRAINT_ELEMENT>( super_eEXPLICIT_CONSTRAINT
          .partialEntity._reference_elements ) )
      }
      set(newValue) {
        let partial = super_eEXPLICIT_CONSTRAINT.partialEntity
        partial._reference_elements = SDAI.UNWRAP(
          SDAI.SET<eREPRESENTATION_ITEM>(newValue))
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eAGC_WITH_DIMENSION`` )
    public var ANGLE_VALUE: tPLANE_ANGLE_MEASURE {
      get {
        return SDAI.UNWRAP( self.partialEntity._angle_value )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._angle_value = SDAI.UNWRAP(newValue)
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
      guard let partial = complexEntity?.partialEntityInstance(_agc_with_dimension.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eVARIATIONAL_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eVARIATIONAL_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(eEXPLICIT_CONSTRAINT.self) else { return nil }
      self.super_eEXPLICIT_CONSTRAINT = super3

      guard let super4 = complexEntity?.entityReference(eDEFINED_CONSTRAINT.self) else { return nil }
      self.super_eDEFINED_CONSTRAINT = super4

      guard let super5 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super5

      guard let super6 = complexEntity?.entityReference(eEXPLICIT_GEOMETRIC_CONSTRAINT.self) else { return nil }
      self.super_eEXPLICIT_GEOMETRIC_CONSTRAINT = super6

      guard let super7 = complexEntity?.entityReference(eANGLE_GEOMETRIC_CONSTRAINT.self) else { return nil }
      self.super_eANGLE_GEOMETRIC_CONSTRAINT = super7

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "AGC_WITH_DIMENSION", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eVARIATIONAL_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eEXPLICIT_CONSTRAINT.self)
      entityDef.add(supertype: eDEFINED_CONSTRAINT.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eEXPLICIT_GEOMETRIC_CONSTRAINT.self)
      entityDef.add(supertype: eANGLE_GEOMETRIC_CONSTRAINT.self)
      entityDef.add(supertype: eAGC_WITH_DIMENSION.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eAGC_WITH_DIMENSION.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "CONSTRAINED_ELEMENTS", keyPath: \eAGC_WITH_DIMENSION.CONSTRAINED_ELEMENTS, 
        kind: .explicitRedeclaring, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "REFERENCE_ELEMENTS", keyPath: \eAGC_WITH_DIMENSION.REFERENCE_ELEMENTS, 
        kind: .explicitRedeclaring, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ANGLE_VALUE", keyPath: \eAGC_WITH_DIMENSION.ANGLE_VALUE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eAGC_WITH_DIMENSION.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \eAGC_WITH_DIMENSION.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
