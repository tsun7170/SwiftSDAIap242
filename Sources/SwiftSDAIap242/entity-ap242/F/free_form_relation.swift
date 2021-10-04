/* file: free_form_relation.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY free_form_relation
    SUBTYPE OF ( free_form_constraint );
    WHERE
      wr1: ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.BOOLEAN_EXPRESSION' IN TYPEOF( SELF\
               free_form_constraint.constraining_expression ) );
      wr2: ( SIZEOF( QUERY ( q <* ( SELF\free_form_constraint.constrained_elements + SELF\
               free_form_constraint.reference_elements ) | ( NOT ( q IN used_variables( SELF\
               free_form_constraint.constraining_expression ) ) ) ) ) = 0 );
  END_ENTITY; -- free_form_relation (line:15951 file:ap242ed2_mim_lf_v1.101.TY.exp)

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


  SUPER- ENTITY(4)	free_form_constraint
    REDCR: constrained_elements,	TYPE: SET [1 : ?] OF variational_parameter -- EXPLICIT
      -- OVERRIDING ENTITY: explicit_constraint

    REDCR: reference_elements,	TYPE: SET [0 : ?] OF variational_parameter -- EXPLICIT
      -- OVERRIDING ENTITY: explicit_constraint

    ATTR:  constraining_expression,	TYPE: expression -- EXPLICIT


  ENTITY(SELF)	free_form_relation
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _free_form_relation : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eFREE_FORM_RELATION.self
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


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eFREE_FORM_RELATION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF.GROUP_REF(eFREE_FORM_CONSTRAINT.self)?.CONSTRAINING_EXPRESSION, 
        IS: eBOOLEAN_EXPRESSION.self)
      return _TEMP1
    }
    public static func WHERE_wr2(SELF: eFREE_FORM_RELATION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.GROUP_REF(eFREE_FORM_CONSTRAINT.self)
      let _TEMP2 = _TEMP1?.CONSTRAINED_ELEMENTS
      let _TEMP3 = SELF.GROUP_REF(eFREE_FORM_CONSTRAINT.self)
      let _TEMP4 = _TEMP3?.REFERENCE_ELEMENTS
      let _TEMP5 = _TEMP2 + _TEMP4
      let _TEMP6 = _TEMP5?.QUERY{ Q in 

          let _TEMP1 = SELF.GROUP_REF(eFREE_FORM_CONSTRAINT.self)
          let _TEMP2 = _TEMP1?.CONSTRAINING_EXPRESSION
          let _TEMP3 = USED_VARIABLES(eGENERIC_EXPRESSION(/*eEXPRESSION*/_TEMP2))
          let _TEMP4 = SDAI.aggregate(_TEMP3, contains: eGENERIC_VARIABLE(/*eVARIATIONAL_PARAMETER*/Q))
          let _TEMP5 =  !_TEMP4
          return _TEMP5 }
      let _TEMP7 = SDAI.SIZEOF(_TEMP6)
      let _TEMP8 = _TEMP7 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP8
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
  ENTITY free_form_relation
    SUBTYPE OF ( free_form_constraint );
    WHERE
      wr1: ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.BOOLEAN_EXPRESSION' IN TYPEOF( SELF\
               free_form_constraint.constraining_expression ) );
      wr2: ( SIZEOF( QUERY ( q <* ( SELF\free_form_constraint.constrained_elements + SELF\
               free_form_constraint.reference_elements ) | ( NOT ( q IN used_variables( SELF\
               free_form_constraint.constraining_expression ) ) ) ) ) = 0 );
  END_ENTITY; -- free_form_relation (line:15951 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eFREE_FORM_RELATION : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _free_form_relation.self
    }
    public let partialEntity: _free_form_relation

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eVARIATIONAL_REPRESENTATION_ITEM: eVARIATIONAL_REPRESENTATION_ITEM 	// [2]
    public let super_eEXPLICIT_CONSTRAINT: eEXPLICIT_CONSTRAINT 	// [3]
    public let super_eFREE_FORM_CONSTRAINT: eFREE_FORM_CONSTRAINT 	// [4]
    public var super_eFREE_FORM_RELATION: eFREE_FORM_RELATION { return self } 	// [5]

    //MARK: SUBTYPES

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
    /// - origin: SUPER( ``eFREE_FORM_CONSTRAINT`` )
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
    /// - origin: SUPER( ``eFREE_FORM_CONSTRAINT`` )
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
    /// - origin: SUPER( ``eFREE_FORM_CONSTRAINT`` )
    public var CONSTRAINING_EXPRESSION: eEXPRESSION {
      get {
        return SDAI.UNWRAP( super_eFREE_FORM_CONSTRAINT.partialEntity._constraining_expression )
      }
      set(newValue) {
        let partial = super_eFREE_FORM_CONSTRAINT.partialEntity
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
      guard let partial = complexEntity?.partialEntityInstance(_free_form_relation.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eVARIATIONAL_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eVARIATIONAL_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(eEXPLICIT_CONSTRAINT.self) else { return nil }
      self.super_eEXPLICIT_CONSTRAINT = super3

      guard let super4 = complexEntity?.entityReference(eFREE_FORM_CONSTRAINT.self) else { return nil }
      self.super_eFREE_FORM_CONSTRAINT = super4

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
      result[prefix2 + " .WHERE_wr1"] = _free_form_relation.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _free_form_relation.WHERE_wr2(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "FREE_FORM_RELATION", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eVARIATIONAL_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eEXPLICIT_CONSTRAINT.self)
      entityDef.add(supertype: eFREE_FORM_CONSTRAINT.self)
      entityDef.add(supertype: eFREE_FORM_RELATION.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eFREE_FORM_RELATION.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "CONSTRAINED_ELEMENTS", keyPath: \eFREE_FORM_RELATION.CONSTRAINED_ELEMENTS, 
        kind: .explicitRedeclaring, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "REFERENCE_ELEMENTS", keyPath: \eFREE_FORM_RELATION.REFERENCE_ELEMENTS, 
        kind: .explicitRedeclaring, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "CONSTRAINING_EXPRESSION", keyPath: \eFREE_FORM_RELATION.CONSTRAINING_EXPRESSION, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eFREE_FORM_RELATION.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
