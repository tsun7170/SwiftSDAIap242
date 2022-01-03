/* file: simplified_counterdrill_hole_definition.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY simplified_counterdrill_hole_definition
    SUBTYPE OF ( counterdrill_hole_definition );
    WHERE
      wr1: ( SIZEOF( SELF\explicit_composite_hole.placement\representation.items ) = 1 );
  END_ENTITY; -- simplified_counterdrill_hole_definition (line:29410 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	characterized_object
    ATTR:  name,	TYPE: label -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: shape_feature_definition_element_relationship,	TYPE: label	(as DERIVED)
          ENTITY: shape_feature_fit_relationship,	TYPE: label	(as DERIVED)
          ENTITY: characterized_representation,	TYPE: label	(as DERIVED)
          ENTITY: shape_feature_definition_relationship,	TYPE: label	(as DERIVED)

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: shape_feature_definition_element_relationship,	TYPE: text	(as DERIVED)
          ENTITY: shape_feature_fit_relationship,	TYPE: text	(as DERIVED)
          ENTITY: characterized_representation,	TYPE: text	(as DERIVED)
          ENTITY: shape_feature_definition_relationship,	TYPE: text	(as DERIVED)


  SUPER- ENTITY(2)	feature_definition
    (no local attributes)

  SUPER- ENTITY(3)	compound_feature
    (no local attributes)

  SUPER- ENTITY(4)	composite_hole
    (no local attributes)

  SUPER- ENTITY(5)	explicit_composite_hole
    ATTR:  placement,	TYPE: shape_representation -- EXPLICIT

    ATTR:  explicit_shape,	TYPE: SET [0 : ?] OF item_identified_representation_usage -- INVERSE
      FOR definition;


  SUPER- ENTITY(6)	counterdrill_hole_definition
    ATTR:  counterbore,	TYPE: explicit_round_hole -- EXPLICIT

    ATTR:  counterdrill_angle,	TYPE: positive_plane_angle_measure_with_unit -- EXPLICIT

    ATTR:  counterdrill_angle_tolerance,	TYPE: tolerance_value -- EXPLICIT

    ATTR:  drilled_hole_depth,	TYPE: OPTIONAL positive_length_measure_with_unit -- EXPLICIT

    ATTR:  drilled_hole_depth_tolerance,	TYPE: OPTIONAL tolerance_value -- EXPLICIT

    ATTR:  drilled_hole_diameter,	TYPE: positive_length_measure_with_unit -- EXPLICIT

    ATTR:  drilled_hole_diameter_tolerance,	TYPE: OPTIONAL tolerance_value_or_limits_and_fits -- EXPLICIT

    ATTR:  through_hole,	TYPE: BOOLEAN -- EXPLICIT


  ENTITY(SELF)	simplified_counterdrill_hole_definition
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _simplified_counterdrill_hole_definition : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eSIMPLIFIED_COUNTERDRILL_HOLE_DEFINITION.self
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
    public static func WHERE_wr1(SELF: eSIMPLIFIED_COUNTERDRILL_HOLE_DEFINITION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.GROUP_REF(eEXPLICIT_COMPOSITE_HOLE.self)
      let _TEMP2 = _TEMP1?.PLACEMENT
      let _TEMP3 = _TEMP2?.GROUP_REF(eREPRESENTATION.self)
      let _TEMP4 = _TEMP3?.ITEMS
      let _TEMP5 = SDAI.SIZEOF(_TEMP4)
      let _TEMP6 = _TEMP5 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      return _TEMP6
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
  ENTITY simplified_counterdrill_hole_definition
    SUBTYPE OF ( counterdrill_hole_definition );
    WHERE
      wr1: ( SIZEOF( SELF\explicit_composite_hole.placement\representation.items ) = 1 );
  END_ENTITY; -- simplified_counterdrill_hole_definition (line:29410 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eSIMPLIFIED_COUNTERDRILL_HOLE_DEFINITION : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _simplified_counterdrill_hole_definition.self
    }
    public let partialEntity: _simplified_counterdrill_hole_definition

    //MARK: SUPERTYPES
    public let super_eCHARACTERIZED_OBJECT: eCHARACTERIZED_OBJECT 	// [1]
    public let super_eFEATURE_DEFINITION: eFEATURE_DEFINITION 	// [2]
    public let super_eCOMPOUND_FEATURE: eCOMPOUND_FEATURE 	// [3]
    public let super_eCOMPOSITE_HOLE: eCOMPOSITE_HOLE 	// [4]
    public let super_eEXPLICIT_COMPOSITE_HOLE: eEXPLICIT_COMPOSITE_HOLE 	// [5]
    public let super_eCOUNTERDRILL_HOLE_DEFINITION: eCOUNTERDRILL_HOLE_DEFINITION 	// [6]
    public var super_eSIMPLIFIED_COUNTERDRILL_HOLE_DEFINITION: eSIMPLIFIED_COUNTERDRILL_HOLE_DEFINITION { return self } 	// [7]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT(DYNAMIC)__ attribute
    /// - origin: SUPER( ``eCHARACTERIZED_OBJECT`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        if let resolved = _characterized_object._description__provider(complex: self.complexEntity) {
          let value = resolved._description__getter(complex: self.complexEntity)
          return value
        }
        else {
          return super_eCHARACTERIZED_OBJECT.partialEntity._description
        }
      }
      set(newValue) {
        if let _ = _characterized_object._description__provider(complex: self.complexEntity) { return }

        let partial = super_eCHARACTERIZED_OBJECT.partialEntity
        partial._description = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eCOUNTERDRILL_HOLE_DEFINITION`` )
    public var COUNTERDRILL_ANGLE_TOLERANCE: eTOLERANCE_VALUE {
      get {
        return SDAI.UNWRAP( super_eCOUNTERDRILL_HOLE_DEFINITION.partialEntity._counterdrill_angle_tolerance )
      }
      set(newValue) {
        let partial = super_eCOUNTERDRILL_HOLE_DEFINITION.partialEntity
        partial._counterdrill_angle_tolerance = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eCOUNTERDRILL_HOLE_DEFINITION`` )
    public var DRILLED_HOLE_DEPTH: ePOSITIVE_LENGTH_MEASURE_WITH_UNIT?  {
      get {
        return super_eCOUNTERDRILL_HOLE_DEFINITION.partialEntity._drilled_hole_depth
      }
      set(newValue) {
        let partial = super_eCOUNTERDRILL_HOLE_DEFINITION.partialEntity
        partial._drilled_hole_depth = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eCOUNTERDRILL_HOLE_DEFINITION`` )
    public var DRILLED_HOLE_DIAMETER_TOLERANCE: sTOLERANCE_VALUE_OR_LIMITS_AND_FITS?  {
      get {
        return super_eCOUNTERDRILL_HOLE_DEFINITION.partialEntity._drilled_hole_diameter_tolerance
      }
      set(newValue) {
        let partial = super_eCOUNTERDRILL_HOLE_DEFINITION.partialEntity
        partial._drilled_hole_diameter_tolerance = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eEXPLICIT_COMPOSITE_HOLE`` )
    public var PLACEMENT: eSHAPE_REPRESENTATION {
      get {
        return SDAI.UNWRAP( super_eEXPLICIT_COMPOSITE_HOLE.partialEntity._placement )
      }
      set(newValue) {
        let partial = super_eEXPLICIT_COMPOSITE_HOLE.partialEntity
        partial._placement = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eCOUNTERDRILL_HOLE_DEFINITION`` )
    public var COUNTERDRILL_ANGLE: ePOSITIVE_PLANE_ANGLE_MEASURE_WITH_UNIT {
      get {
        return SDAI.UNWRAP( super_eCOUNTERDRILL_HOLE_DEFINITION.partialEntity._counterdrill_angle )
      }
      set(newValue) {
        let partial = super_eCOUNTERDRILL_HOLE_DEFINITION.partialEntity
        partial._counterdrill_angle = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eCOUNTERDRILL_HOLE_DEFINITION`` )
    public var THROUGH_HOLE: SDAI.BOOLEAN {
      get {
        return SDAI.UNWRAP( super_eCOUNTERDRILL_HOLE_DEFINITION.partialEntity._through_hole )
      }
      set(newValue) {
        let partial = super_eCOUNTERDRILL_HOLE_DEFINITION.partialEntity
        partial._through_hole = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eCOUNTERDRILL_HOLE_DEFINITION`` )
    public var COUNTERBORE: eEXPLICIT_ROUND_HOLE {
      get {
        return SDAI.UNWRAP( super_eCOUNTERDRILL_HOLE_DEFINITION.partialEntity._counterbore )
      }
      set(newValue) {
        let partial = super_eCOUNTERDRILL_HOLE_DEFINITION.partialEntity
        partial._counterbore = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eCOUNTERDRILL_HOLE_DEFINITION`` )
    public var DRILLED_HOLE_DIAMETER: ePOSITIVE_LENGTH_MEASURE_WITH_UNIT {
      get {
        return SDAI.UNWRAP( super_eCOUNTERDRILL_HOLE_DEFINITION.partialEntity._drilled_hole_diameter )
      }
      set(newValue) {
        let partial = super_eCOUNTERDRILL_HOLE_DEFINITION.partialEntity
        partial._drilled_hole_diameter = SDAI.UNWRAP(newValue)
      }
    }

    /// __INVERSE__ attribute
    /// observing eITEM_IDENTIFIED_REPRESENTATION_USAGE .DEFINITION
    /// - origin: SUPER( ``eEXPLICIT_COMPOSITE_HOLE`` )
    public var EXPLICIT_SHAPE: SDAI.SET<eITEM_IDENTIFIED_REPRESENTATION_USAGE>/*[0:nil]*/  {
      get {
        return SDAI.UNWRAP( super_eEXPLICIT_COMPOSITE_HOLE.partialEntity._explicit_shape )
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eCOUNTERDRILL_HOLE_DEFINITION`` )
    public var DRILLED_HOLE_DEPTH_TOLERANCE: eTOLERANCE_VALUE?  {
      get {
        return super_eCOUNTERDRILL_HOLE_DEFINITION.partialEntity._drilled_hole_depth_tolerance
      }
      set(newValue) {
        let partial = super_eCOUNTERDRILL_HOLE_DEFINITION.partialEntity
        partial._drilled_hole_depth_tolerance = newValue
      }
    }

    /// __EXPLICIT(DYNAMIC)__ attribute
    /// - origin: SUPER( ``eCHARACTERIZED_OBJECT`` )
    public var NAME: tLABEL {
      get {
        if let resolved = _characterized_object._name__provider(complex: self.complexEntity) {
          let value = resolved._name__getter(complex: self.complexEntity)
          return value
        }
        else {
          return SDAI.UNWRAP( super_eCHARACTERIZED_OBJECT.partialEntity._name )
        }
      }
      set(newValue) {
        if let _ = _characterized_object._name__provider(complex: self.complexEntity) { return }

        let partial = super_eCHARACTERIZED_OBJECT.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_simplified_counterdrill_hole_definition.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eCHARACTERIZED_OBJECT.self) else { return nil }
      self.super_eCHARACTERIZED_OBJECT = super1

      guard let super2 = complexEntity?.entityReference(eFEATURE_DEFINITION.self) else { return nil }
      self.super_eFEATURE_DEFINITION = super2

      guard let super3 = complexEntity?.entityReference(eCOMPOUND_FEATURE.self) else { return nil }
      self.super_eCOMPOUND_FEATURE = super3

      guard let super4 = complexEntity?.entityReference(eCOMPOSITE_HOLE.self) else { return nil }
      self.super_eCOMPOSITE_HOLE = super4

      guard let super5 = complexEntity?.entityReference(eEXPLICIT_COMPOSITE_HOLE.self) else { return nil }
      self.super_eEXPLICIT_COMPOSITE_HOLE = super5

      guard let super6 = complexEntity?.entityReference(eCOUNTERDRILL_HOLE_DEFINITION.self) else { return nil }
      self.super_eCOUNTERDRILL_HOLE_DEFINITION = super6

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
      result[prefix2 + " .WHERE_wr1"] = _simplified_counterdrill_hole_definition.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "SIMPLIFIED_COUNTERDRILL_HOLE_DEFINITION", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eCHARACTERIZED_OBJECT.self)
      entityDef.add(supertype: eFEATURE_DEFINITION.self)
      entityDef.add(supertype: eCOMPOUND_FEATURE.self)
      entityDef.add(supertype: eCOMPOSITE_HOLE.self)
      entityDef.add(supertype: eEXPLICIT_COMPOSITE_HOLE.self)
      entityDef.add(supertype: eCOUNTERDRILL_HOLE_DEFINITION.self)
      entityDef.add(supertype: eSIMPLIFIED_COUNTERDRILL_HOLE_DEFINITION.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eSIMPLIFIED_COUNTERDRILL_HOLE_DEFINITION.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "COUNTERDRILL_ANGLE_TOLERANCE", keyPath: \eSIMPLIFIED_COUNTERDRILL_HOLE_DEFINITION.COUNTERDRILL_ANGLE_TOLERANCE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DRILLED_HOLE_DEPTH", keyPath: \eSIMPLIFIED_COUNTERDRILL_HOLE_DEFINITION.DRILLED_HOLE_DEPTH, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DRILLED_HOLE_DIAMETER_TOLERANCE", keyPath: \eSIMPLIFIED_COUNTERDRILL_HOLE_DEFINITION.DRILLED_HOLE_DIAMETER_TOLERANCE, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "PLACEMENT", keyPath: \eSIMPLIFIED_COUNTERDRILL_HOLE_DEFINITION.PLACEMENT, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "COUNTERDRILL_ANGLE", keyPath: \eSIMPLIFIED_COUNTERDRILL_HOLE_DEFINITION.COUNTERDRILL_ANGLE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "THROUGH_HOLE", keyPath: \eSIMPLIFIED_COUNTERDRILL_HOLE_DEFINITION.THROUGH_HOLE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "COUNTERBORE", keyPath: \eSIMPLIFIED_COUNTERDRILL_HOLE_DEFINITION.COUNTERBORE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DRILLED_HOLE_DIAMETER", keyPath: \eSIMPLIFIED_COUNTERDRILL_HOLE_DEFINITION.DRILLED_HOLE_DIAMETER, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "EXPLICIT_SHAPE", keyPath: \eSIMPLIFIED_COUNTERDRILL_HOLE_DEFINITION.EXPLICIT_SHAPE, 
        kind: .inverse, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DRILLED_HOLE_DEPTH_TOLERANCE", keyPath: \eSIMPLIFIED_COUNTERDRILL_HOLE_DEFINITION.DRILLED_HOLE_DEPTH_TOLERANCE, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eSIMPLIFIED_COUNTERDRILL_HOLE_DEFINITION.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
