/* file: free_form_constraint.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  ENTITY free_form_constraint
    ABSTRACT SUPERTYPE OF ( 
        ONEOF ( 
            free_form_assignment, 
            free_form_relation ) )
    SUBTYPE OF ( explicit_constraint );
      SELF\explicit_constraint.constrained_elements : SET [1 : ?] OF variational_parameter;
      SELF\explicit_constraint.reference_elements : SET [0 : ?] OF variational_parameter;
      constraining_expression         : expression;
  END_ENTITY; -- free_form_constraint (line:15943 file:ap242ed2_mim_lf_v1.101.TY.exp)

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
      *** ENTITY: free_form_constraint,	TYPE: SET [1 : ?] OF variational_parameter
          ENTITY: surface_smoothness_geometric_constraint,	TYPE: SET [1 : 1] OF surface_patch_set
          ENTITY: fixed_element_geometric_constraint,	TYPE: SET [1 : ?] OF geometric_constraint_element
          ENTITY: angle_geometric_constraint,	TYPE: SET [1 : ?] OF linear_geometry_constraint_element
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
      *** ENTITY: free_form_constraint,	TYPE: SET [0 : ?] OF variational_parameter
          ENTITY: angle_geometric_constraint,	TYPE: SET [0 : 1] OF linear_geometry_constraint_element
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


  ENTITY(SELF)	free_form_constraint
    REDCR: constrained_elements,	TYPE: SET [1 : ?] OF variational_parameter -- EXPLICIT
      -- OVERRIDING ENTITY: explicit_constraint

    REDCR: reference_elements,	TYPE: SET [0 : ?] OF variational_parameter -- EXPLICIT
      -- OVERRIDING ENTITY: explicit_constraint

    ATTR:  constraining_expression,	TYPE: expression -- EXPLICIT


  SUB- ENTITY(5)	free_form_relation
    (no local attributes)

  SUB- ENTITY(6)	free_form_assignment
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _free_form_constraint : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eFREE_FORM_CONSTRAINT.self
    }

    //ATTRIBUTES
    /* override var _constrained_elements: SDAI.SET<eVARIATIONAL_PARAMETER>[1:nil] 	//EXPLICIT REDEFINITION(eEXPLICIT_CONSTRAINT) */

    /* override var _reference_elements: SDAI.SET<eVARIATIONAL_PARAMETER>[0:nil] 	//EXPLICIT REDEFINITION(eEXPLICIT_CONSTRAINT) */

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _constraining_expression: eEXPRESSION // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._constraining_expression.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._constraining_expression.value.isValueEqualOptionally(to: rhs._constraining_expression.value, visited: &comppairs)	{
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
      if let comp = self._constraining_expression.value.isValueEqualOptionally(to: rhs._constraining_expression.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(CONSTRAINING_EXPRESSION: eEXPRESSION) {
      self._constraining_expression = CONSTRAINING_EXPRESSION
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: eEXPRESSION.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( CONSTRAINING_EXPRESSION: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY free_form_constraint
    ABSTRACT SUPERTYPE OF ( 
        ONEOF ( 
            free_form_assignment, 
            free_form_relation ) )
    SUBTYPE OF ( explicit_constraint );
      SELF\explicit_constraint.constrained_elements : SET [1 : ?] OF variational_parameter;
      SELF\explicit_constraint.reference_elements : SET [0 : ?] OF variational_parameter;
      constraining_expression         : expression;
  END_ENTITY; -- free_form_constraint (line:15943 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eFREE_FORM_CONSTRAINT : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _free_form_constraint.self
    }
    public let partialEntity: _free_form_constraint

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eVARIATIONAL_REPRESENTATION_ITEM: eVARIATIONAL_REPRESENTATION_ITEM 	// [2]
    public let super_eEXPLICIT_CONSTRAINT: eEXPLICIT_CONSTRAINT 	// [3]
    public var super_eFREE_FORM_CONSTRAINT: eFREE_FORM_CONSTRAINT { return self } 	// [4]

    //MARK: SUBTYPES
    public var sub_eFREE_FORM_RELATION: eFREE_FORM_RELATION? {	// [5]
      return self.complexEntity.entityReference(eFREE_FORM_RELATION.self)
    }

    public var sub_eFREE_FORM_ASSIGNMENT: eFREE_FORM_ASSIGNMENT? {	// [6]
      return self.complexEntity.entityReference(eFREE_FORM_ASSIGNMENT.self)
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
    /// - origin: SELF( ``eFREE_FORM_CONSTRAINT`` )
    public var CONSTRAINED_ELEMENTS: SDAI.SET<eVARIATIONAL_PARAMETER>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( SDAI.SET<eVARIATIONAL_PARAMETER>( super_eEXPLICIT_CONSTRAINT.partialEntity
          ._constrained_elements ) )
      }
      set(newValue) {
        let partial = super_eEXPLICIT_CONSTRAINT.partialEntity
        partial._constrained_elements = SDAI.UNWRAP(
          SDAI.SET<eREPRESENTATION_ITEM>(newValue))
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SELF( ``eFREE_FORM_CONSTRAINT`` )
    public var REFERENCE_ELEMENTS: SDAI.SET<eVARIATIONAL_PARAMETER>/*[0:nil]*/  {
      get {
        return SDAI.UNWRAP( SDAI.SET<eVARIATIONAL_PARAMETER>( super_eEXPLICIT_CONSTRAINT.partialEntity
          ._reference_elements ) )
      }
      set(newValue) {
        let partial = super_eEXPLICIT_CONSTRAINT.partialEntity
        partial._reference_elements = SDAI.UNWRAP(
          SDAI.SET<eREPRESENTATION_ITEM>(newValue))
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eFREE_FORM_CONSTRAINT`` )
    public var CONSTRAINING_EXPRESSION: eEXPRESSION {
      get {
        return SDAI.UNWRAP( self.partialEntity._constraining_expression )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._constraining_expression = SDAI.UNWRAP(newValue)
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


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_free_form_constraint.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eVARIATIONAL_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eVARIATIONAL_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(eEXPLICIT_CONSTRAINT.self) else { return nil }
      self.super_eEXPLICIT_CONSTRAINT = super3

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "FREE_FORM_CONSTRAINT", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eVARIATIONAL_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eEXPLICIT_CONSTRAINT.self)
      entityDef.add(supertype: eFREE_FORM_CONSTRAINT.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eFREE_FORM_CONSTRAINT.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "CONSTRAINED_ELEMENTS", keyPath: \eFREE_FORM_CONSTRAINT.CONSTRAINED_ELEMENTS, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "REFERENCE_ELEMENTS", keyPath: \eFREE_FORM_CONSTRAINT.REFERENCE_ELEMENTS, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "CONSTRAINING_EXPRESSION", keyPath: \eFREE_FORM_CONSTRAINT.CONSTRAINING_EXPRESSION, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eFREE_FORM_CONSTRAINT.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
