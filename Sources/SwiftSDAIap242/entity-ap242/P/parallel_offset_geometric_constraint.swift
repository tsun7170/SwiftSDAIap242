/* file: parallel_offset_geometric_constraint.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY parallel_offset_geometric_constraint
    SUBTYPE OF ( explicit_geometric_constraint );
      SELF\explicit_constraint.constrained_elements : SET [1 : ?] OF curve_or_surface_constraint_element;
      SELF\explicit_constraint.reference_elements : SET [0 : 1] OF curve_or_surface_constraint_element;
      offset_type                     : parallel_offset_type;
    WHERE
      wr1: ( NOT ( ( ( offset_type = curve_2d_offset ) OR ( offset_type = curve_3d_offset ) ) AND ( SIZEOF( 
               QUERY ( q <* ( SELF\explicit_constraint.constrained_elements + SELF\explicit_constraint.
               reference_elements ) | ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SURFACE' IN TYPEOF( 
               q ) ) ) ) > 0 ) ) );
      wr2: ( NOT ( ( offset_type = surface_offset ) AND ( SIZEOF( QUERY ( q <* ( SELF\explicit_constraint.
               constrained_elements + SELF\explicit_constraint.reference_elements ) | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CURVE'  IN TYPEOF( q ) ) ) ) > 0 ) ) );
  END_ENTITY; -- parallel_offset_geometric_constraint (line:23476 file:ap242ed2_mim_lf_v1.101.TY.exp)

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
          ENTITY: angle_geometric_constraint,	TYPE: SET [1 : ?] OF linear_geometry_constraint_element
          ENTITY: perpendicular_geometric_constraint,	TYPE: SET [1 : ?] OF linear_geometry_constraint_element
      *** ENTITY: parallel_offset_geometric_constraint,	TYPE: SET [1 : ?] OF curve_or_surface_constraint_element
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
          ENTITY: angle_geometric_constraint,	TYPE: SET [0 : 1] OF linear_geometry_constraint_element
          ENTITY: perpendicular_geometric_constraint,	TYPE: SET [0 : 2] OF linear_geometry_constraint_element
      *** ENTITY: parallel_offset_geometric_constraint,	TYPE: SET [0 : 1] OF curve_or_surface_constraint_element
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


  ENTITY(SELF)	parallel_offset_geometric_constraint
    REDCR: constrained_elements,	TYPE: SET [1 : ?] OF curve_or_surface_constraint_element -- EXPLICIT
      -- OVERRIDING ENTITY: explicit_constraint

    REDCR: reference_elements,	TYPE: SET [0 : 1] OF curve_or_surface_constraint_element -- EXPLICIT
      -- OVERRIDING ENTITY: explicit_constraint

    ATTR:  offset_type,	TYPE: parallel_offset_type -- EXPLICIT


  SUB- ENTITY(8)	pogc_with_dimension
    ATTR:  offset_value,	TYPE: positive_length_measure -- EXPLICIT

    ATTR:  offset_direction_constrained,	TYPE: BOOLEAN -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _parallel_offset_geometric_constraint : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      ePARALLEL_OFFSET_GEOMETRIC_CONSTRAINT.self
    }

    //ATTRIBUTES
    /* override var _constrained_elements: SDAI.SET<sCURVE_OR_SURFACE_CONSTRAINT_ELEMENT>[1:nil] 	//EXPLICIT REDEFINITION(eEXPLICIT_CONSTRAINT) */

    /* override var _reference_elements: SDAI.SET<sCURVE_OR_SURFACE_CONSTRAINT_ELEMENT>[0:1] 	//EXPLICIT REDEFINITION(eEXPLICIT_CONSTRAINT) */

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _offset_type: nPARALLEL_OFFSET_TYPE // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._offset_type.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._offset_type.value.isValueEqualOptionally(to: rhs._offset_type.value, visited: &comppairs)	{
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
      if let comp = self._offset_type.value.isValueEqualOptionally(to: rhs._offset_type.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: ePARALLEL_OFFSET_GEOMETRIC_CONSTRAINT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.FORCE_OPTIONAL(SELF.OFFSET_TYPE) .==. SDAI.FORCE_OPTIONAL(CURVE_2D_OFFSET)
      let _TEMP2 = SDAI.FORCE_OPTIONAL(SELF.OFFSET_TYPE) .==. SDAI.FORCE_OPTIONAL(CURVE_3D_OFFSET)
      let _TEMP3 = _TEMP1 || _TEMP2
      let _TEMP4 = SELF.GROUP_REF(eEXPLICIT_CONSTRAINT.self)
      let _TEMP5 = _TEMP4?.CONSTRAINED_ELEMENTS
      let _TEMP6 = SELF.GROUP_REF(eEXPLICIT_CONSTRAINT.self)
      let _TEMP7 = _TEMP6?.REFERENCE_ELEMENTS
      let _TEMP8 = _TEMP5 + _TEMP7
      let _TEMP9 = _TEMP8?.QUERY{ Q in 

          let _TEMP1 = SDAI.TYPEOF(Q, IS: eSURFACE.self)
          return _TEMP1 }
      let _TEMP10 = SDAI.SIZEOF(_TEMP9)
      let _TEMP11 = _TEMP10 > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      let _TEMP12 = _TEMP3 && _TEMP11
      let _TEMP13 =  !_TEMP12
      return _TEMP13
    }
    public static func WHERE_wr2(SELF: ePARALLEL_OFFSET_GEOMETRIC_CONSTRAINT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.FORCE_OPTIONAL(SELF.OFFSET_TYPE) .==. SDAI.FORCE_OPTIONAL(SURFACE_OFFSET)
      let _TEMP2 = SELF.GROUP_REF(eEXPLICIT_CONSTRAINT.self)
      let _TEMP3 = _TEMP2?.CONSTRAINED_ELEMENTS
      let _TEMP4 = SELF.GROUP_REF(eEXPLICIT_CONSTRAINT.self)
      let _TEMP5 = _TEMP4?.REFERENCE_ELEMENTS
      let _TEMP6 = _TEMP3 + _TEMP5
      let _TEMP7 = _TEMP6?.QUERY{ Q in 

          let _TEMP1 = SDAI.TYPEOF(Q, IS: eCURVE.self)
          return _TEMP1 }
      let _TEMP8 = SDAI.SIZEOF(_TEMP7)
      let _TEMP9 = _TEMP8 > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      let _TEMP10 = _TEMP1 && _TEMP9
      let _TEMP11 =  !_TEMP10
      return _TEMP11
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(OFFSET_TYPE: nPARALLEL_OFFSET_TYPE) {
      self._offset_type = OFFSET_TYPE
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: nPARALLEL_OFFSET_TYPE.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( OFFSET_TYPE: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY parallel_offset_geometric_constraint
    SUBTYPE OF ( explicit_geometric_constraint );
      SELF\explicit_constraint.constrained_elements : SET [1 : ?] OF curve_or_surface_constraint_element;
      SELF\explicit_constraint.reference_elements : SET [0 : 1] OF curve_or_surface_constraint_element;
      offset_type                     : parallel_offset_type;
    WHERE
      wr1: ( NOT ( ( ( offset_type = curve_2d_offset ) OR ( offset_type = curve_3d_offset ) ) AND ( SIZEOF( 
               QUERY ( q <* ( SELF\explicit_constraint.constrained_elements + SELF\explicit_constraint.
               reference_elements ) | ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SURFACE' IN TYPEOF( 
               q ) ) ) ) > 0 ) ) );
      wr2: ( NOT ( ( offset_type = surface_offset ) AND ( SIZEOF( QUERY ( q <* ( SELF\explicit_constraint.
               constrained_elements + SELF\explicit_constraint.reference_elements ) | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CURVE'  IN TYPEOF( q ) ) ) ) > 0 ) ) );
  END_ENTITY; -- parallel_offset_geometric_constraint (line:23476 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class ePARALLEL_OFFSET_GEOMETRIC_CONSTRAINT : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _parallel_offset_geometric_constraint.self
    }
    public let partialEntity: _parallel_offset_geometric_constraint

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eVARIATIONAL_REPRESENTATION_ITEM: eVARIATIONAL_REPRESENTATION_ITEM 	// [2]
    public let super_eEXPLICIT_CONSTRAINT: eEXPLICIT_CONSTRAINT 	// [3]
    public let super_eDEFINED_CONSTRAINT: eDEFINED_CONSTRAINT 	// [4]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [5]
    public let super_eEXPLICIT_GEOMETRIC_CONSTRAINT: eEXPLICIT_GEOMETRIC_CONSTRAINT 	// [6]
    public var super_ePARALLEL_OFFSET_GEOMETRIC_CONSTRAINT: ePARALLEL_OFFSET_GEOMETRIC_CONSTRAINT { return self } 	// [7]

    //MARK: SUBTYPES
    public var sub_ePOGC_WITH_DIMENSION: ePOGC_WITH_DIMENSION? {	// [8]
      return self.complexEntity.entityReference(ePOGC_WITH_DIMENSION.self)
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
    /// - origin: SELF( ``ePARALLEL_OFFSET_GEOMETRIC_CONSTRAINT`` )
    public var CONSTRAINED_ELEMENTS: SDAI.SET<sCURVE_OR_SURFACE_CONSTRAINT_ELEMENT>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( SDAI.SET<sCURVE_OR_SURFACE_CONSTRAINT_ELEMENT>( super_eEXPLICIT_CONSTRAINT
          .partialEntity._constrained_elements ) )
      }
      set(newValue) {
        let partial = super_eEXPLICIT_CONSTRAINT.partialEntity
        partial._constrained_elements = SDAI.UNWRAP(
          SDAI.SET<eREPRESENTATION_ITEM>(newValue))
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``ePOGC_WITH_DIMENSION`` )
    public var OFFSET_DIRECTION_CONSTRAINED: SDAI.BOOLEAN?  {
      get {
        return sub_ePOGC_WITH_DIMENSION?.partialEntity._offset_direction_constrained
      }
      set(newValue) {
        guard let partial = sub_ePOGC_WITH_DIMENSION?.super_ePOGC_WITH_DIMENSION.partialEntity
          else { return }
        partial._offset_direction_constrained = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SELF( ``ePARALLEL_OFFSET_GEOMETRIC_CONSTRAINT`` )
    public var REFERENCE_ELEMENTS: SDAI.SET<sCURVE_OR_SURFACE_CONSTRAINT_ELEMENT>/*[0:1]*/  {
      get {
        return SDAI.UNWRAP( SDAI.SET<sCURVE_OR_SURFACE_CONSTRAINT_ELEMENT>( super_eEXPLICIT_CONSTRAINT
          .partialEntity._reference_elements ) )
      }
      set(newValue) {
        let partial = super_eEXPLICIT_CONSTRAINT.partialEntity
        partial._reference_elements = SDAI.UNWRAP(
          SDAI.SET<eREPRESENTATION_ITEM>(newValue))
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``ePARALLEL_OFFSET_GEOMETRIC_CONSTRAINT`` )
    public var OFFSET_TYPE: nPARALLEL_OFFSET_TYPE {
      get {
        return SDAI.UNWRAP( self.partialEntity._offset_type )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._offset_type = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``ePOGC_WITH_DIMENSION`` )
    public var OFFSET_VALUE: tPOSITIVE_LENGTH_MEASURE?  {
      get {
        return sub_ePOGC_WITH_DIMENSION?.partialEntity._offset_value
      }
      set(newValue) {
        guard let partial = sub_ePOGC_WITH_DIMENSION?.super_ePOGC_WITH_DIMENSION.partialEntity
          else { return }
        partial._offset_value = SDAI.UNWRAP(newValue)
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
      guard let partial = complexEntity?.partialEntityInstance(_parallel_offset_geometric_constraint.self) else { return nil }
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
      result[prefix2 + " .WHERE_wr1"] = _parallel_offset_geometric_constraint.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _parallel_offset_geometric_constraint.WHERE_wr2(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "PARALLEL_OFFSET_GEOMETRIC_CONSTRAINT", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eVARIATIONAL_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eEXPLICIT_CONSTRAINT.self)
      entityDef.add(supertype: eDEFINED_CONSTRAINT.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eEXPLICIT_GEOMETRIC_CONSTRAINT.self)
      entityDef.add(supertype: ePARALLEL_OFFSET_GEOMETRIC_CONSTRAINT.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \ePARALLEL_OFFSET_GEOMETRIC_CONSTRAINT.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "CONSTRAINED_ELEMENTS", keyPath: \ePARALLEL_OFFSET_GEOMETRIC_CONSTRAINT.CONSTRAINED_ELEMENTS, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "OFFSET_DIRECTION_CONSTRAINED", keyPath: \ePARALLEL_OFFSET_GEOMETRIC_CONSTRAINT.OFFSET_DIRECTION_CONSTRAINED, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "REFERENCE_ELEMENTS", keyPath: \ePARALLEL_OFFSET_GEOMETRIC_CONSTRAINT.REFERENCE_ELEMENTS, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "OFFSET_TYPE", keyPath: \ePARALLEL_OFFSET_GEOMETRIC_CONSTRAINT.OFFSET_TYPE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "OFFSET_VALUE", keyPath: \ePARALLEL_OFFSET_GEOMETRIC_CONSTRAINT.OFFSET_VALUE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \ePARALLEL_OFFSET_GEOMETRIC_CONSTRAINT.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \ePARALLEL_OFFSET_GEOMETRIC_CONSTRAINT.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
