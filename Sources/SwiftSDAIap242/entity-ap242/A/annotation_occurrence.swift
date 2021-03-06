/* file: annotation_occurrence.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY annotation_occurrence
    SUPERTYPE OF ( 
        ONEOF ( 
            annotation_point_occurrence, 
            annotation_curve_occurrence, 
            annotation_fill_area_occurrence, 
            annotation_text_occurrence, 
            annotation_symbol_occurrence ) 
        ANDOR
        ONEOF ( 
            annotation_curve_occurrence, 
            annotation_fill_area_occurrence, 
            annotation_plane, 
            annotation_symbol_occurrence, 
            annotation_text_occurrence ) )
    SUBTYPE OF ( styled_item );
    WHERE
      wr1: ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.GEOMETRIC_REPRESENTATION_ITEM' IN TYPEOF( SELF ) );
      wr2: ( SIZEOF( QUERY ( reps <* using_representations( SELF ) | ( NOT ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ANNOTATION_REPRESENTATION_SELECT'  IN 
               TYPEOF( reps ) ) ) ) ) = 0 );
  END_ENTITY; -- annotation_occurrence (line:6905 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(2)	styled_item
    ATTR:  styles,	TYPE: SET [0 : ?] OF presentation_style_assignment -- EXPLICIT

    ATTR:  item,	TYPE: styled_item_target -- EXPLICIT
      -- possibly overriden by
          ENTITY: tessellated_annotation_occurrence,	TYPE: tessellated_geometric_set
          ENTITY: annotation_placeholder_occurrence,	TYPE: geometric_set
          ENTITY: annotation_symbol_occurrence,	TYPE: annotation_symbol_occurrence_item
          ENTITY: annotation_curve_occurrence,	TYPE: curve_or_curve_set
          ENTITY: styled_tessellated_item_with_colours,	TYPE: tessellated_surface_item
          ENTITY: annotation_text_occurrence,	TYPE: annotation_text_occurrence_item
          ENTITY: hidden_element_over_riding_styled_item,	TYPE: camera_image
          ENTITY: annotation_fill_area_occurrence,	TYPE: annotation_fill_area
          ENTITY: annotation_point_occurrence,	TYPE: point
          ENTITY: annotation_plane,	TYPE: plane_or_planar_box


  ENTITY(SELF)	annotation_occurrence
    (no local attributes)

  SUB- ENTITY(4)	tessellated_annotation_occurrence
    REDCR: item,	TYPE: tessellated_geometric_set -- EXPLICIT
      -- OVERRIDING ENTITY: styled_item


  SUB- ENTITY(5)	annotation_placeholder_occurrence
    REDCR: item,	TYPE: geometric_set -- EXPLICIT
      -- OVERRIDING ENTITY: styled_item

    ATTR:  role,	TYPE: annotation_placeholder_occurrence_role -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  line_spacing,	TYPE: positive_length_measure -- EXPLICIT

    ATTR:  the_callout,	TYPE: draughting_callout -- INVERSE
      FOR contents;

    ATTR:  the_draughting_model_item_association_with_placeholders,	TYPE: SET [0 : 1] OF draughting_model_item_association_with_placeholder -- INVERSE
      FOR annotation_placeholder;


  SUB- ENTITY(6)	draughting_annotation_occurrence
    (no local attributes)

  SUB- ENTITY(7)	annotation_subfigure_occurrence
    (no local attributes)

  SUB- ENTITY(8)	dimension_curve_terminator
    ATTR:  role,	TYPE: dimension_extent_usage -- EXPLICIT	(AMBIGUOUS/MASKED)


  SUB- ENTITY(9)	leader_terminator
    (no local attributes)

  SUB- ENTITY(10)	terminator_symbol
    ATTR:  annotated_curve,	TYPE: annotation_curve_occurrence -- EXPLICIT


  SUB- ENTITY(11)	annotation_symbol_occurrence
    REDCR: item,	TYPE: annotation_symbol_occurrence_item -- EXPLICIT
      -- OVERRIDING ENTITY: styled_item


  SUB- ENTITY(12)	projection_curve
    (no local attributes)

  SUB- ENTITY(13)	leader_curve
    (no local attributes)

  SUB- ENTITY(14)	dimension_curve
    (no local attributes)

  SUB- ENTITY(15)	annotation_curve_occurrence
    REDCR: item,	TYPE: curve_or_curve_set -- EXPLICIT
      -- OVERRIDING ENTITY: styled_item


  SUB- ENTITY(16)	annotation_point_occurrence
    REDCR: item,	TYPE: point -- EXPLICIT
      -- OVERRIDING ENTITY: styled_item


  SUB- ENTITY(17)	annotation_fill_area_occurrence
    ATTR:  fill_style_target,	TYPE: point -- EXPLICIT

    REDCR: item,	TYPE: annotation_fill_area -- EXPLICIT
      -- OVERRIDING ENTITY: styled_item


  SUB- ENTITY(18)	annotation_text_occurrence
    REDCR: item,	TYPE: annotation_text_occurrence_item -- EXPLICIT
      -- OVERRIDING ENTITY: styled_item


  SUB- ENTITY(19)	annotation_plane
    ATTR:  elements,	TYPE: OPTIONAL SET [1 : ?] OF annotation_plane_element -- EXPLICIT

    REDCR: item,	TYPE: plane_or_planar_box -- EXPLICIT
      -- OVERRIDING ENTITY: styled_item


*/


//MARK: - Partial Entity
  public final class _annotation_occurrence : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eANNOTATION_OCCURRENCE.self
    }

    //ATTRIBUTES
    // (no local attributes)

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sDRAUGHTING_SUBFIGURE_REPRESENTATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sDRAUGHTING_MODEL_ITEM_ASSOCIATION_SELECT.typeName)) // -> Self
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
    public static func WHERE_wr1(SELF: eANNOTATION_OCCURRENCE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF, IS: eGEOMETRIC_REPRESENTATION_ITEM.self)
      return _TEMP1
    }
    public static func WHERE_wr2(SELF: eANNOTATION_OCCURRENCE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = USING_REPRESENTATIONS(sFOUNDED_ITEM_SELECT(/*eANNOTATION_OCCURRENCE*/SELF))
      let _TEMP2 = _TEMP1?.QUERY{ REPS in 

          let _TEMP1 = SDAI.TYPEOF(REPS, IS: sANNOTATION_REPRESENTATION_SELECT.self)
          let _TEMP2 =  !_TEMP1
          return _TEMP2 }
      let _TEMP3 = SDAI.SIZEOF(_TEMP2)
      let _TEMP4 = _TEMP3 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP4
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
  ENTITY annotation_occurrence
    SUPERTYPE OF ( 
        ONEOF ( 
            annotation_point_occurrence, 
            annotation_curve_occurrence, 
            annotation_fill_area_occurrence, 
            annotation_text_occurrence, 
            annotation_symbol_occurrence ) 
        ANDOR
        ONEOF ( 
            annotation_curve_occurrence, 
            annotation_fill_area_occurrence, 
            annotation_plane, 
            annotation_symbol_occurrence, 
            annotation_text_occurrence ) )
    SUBTYPE OF ( styled_item );
    WHERE
      wr1: ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.GEOMETRIC_REPRESENTATION_ITEM' IN TYPEOF( SELF ) );
      wr2: ( SIZEOF( QUERY ( reps <* using_representations( SELF ) | ( NOT ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ANNOTATION_REPRESENTATION_SELECT'  IN 
               TYPEOF( reps ) ) ) ) ) = 0 );
  END_ENTITY; -- annotation_occurrence (line:6905 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eANNOTATION_OCCURRENCE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _annotation_occurrence.self
    }
    public let partialEntity: _annotation_occurrence

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eSTYLED_ITEM: eSTYLED_ITEM 	// [2]
    public var super_eANNOTATION_OCCURRENCE: eANNOTATION_OCCURRENCE { return self } 	// [3]

    //MARK: SUBTYPES
    public var sub_eTESSELLATED_ANNOTATION_OCCURRENCE: eTESSELLATED_ANNOTATION_OCCURRENCE? {	// [4]
      return self.complexEntity.entityReference(eTESSELLATED_ANNOTATION_OCCURRENCE.self)
    }

    public var sub_eANNOTATION_PLACEHOLDER_OCCURRENCE: eANNOTATION_PLACEHOLDER_OCCURRENCE? {	// [5]
      return self.complexEntity.entityReference(eANNOTATION_PLACEHOLDER_OCCURRENCE.self)
    }

    public var sub_eDRAUGHTING_ANNOTATION_OCCURRENCE: eDRAUGHTING_ANNOTATION_OCCURRENCE? {	// [6]
      return self.complexEntity.entityReference(eDRAUGHTING_ANNOTATION_OCCURRENCE.self)
    }

    public var sub_eANNOTATION_SUBFIGURE_OCCURRENCE: eANNOTATION_SUBFIGURE_OCCURRENCE? {	// [7]
      return self.complexEntity.entityReference(eANNOTATION_SUBFIGURE_OCCURRENCE.self)
    }

    public var sub_eDIMENSION_CURVE_TERMINATOR: eDIMENSION_CURVE_TERMINATOR? {	// [8]
      return self.complexEntity.entityReference(eDIMENSION_CURVE_TERMINATOR.self)
    }

    public var sub_eLEADER_TERMINATOR: eLEADER_TERMINATOR? {	// [9]
      return self.complexEntity.entityReference(eLEADER_TERMINATOR.self)
    }

    public var sub_eTERMINATOR_SYMBOL: eTERMINATOR_SYMBOL? {	// [10]
      return self.complexEntity.entityReference(eTERMINATOR_SYMBOL.self)
    }

    public var sub_eANNOTATION_SYMBOL_OCCURRENCE: eANNOTATION_SYMBOL_OCCURRENCE? {	// [11]
      return self.complexEntity.entityReference(eANNOTATION_SYMBOL_OCCURRENCE.self)
    }

    public var sub_ePROJECTION_CURVE: ePROJECTION_CURVE? {	// [12]
      return self.complexEntity.entityReference(ePROJECTION_CURVE.self)
    }

    public var sub_eLEADER_CURVE: eLEADER_CURVE? {	// [13]
      return self.complexEntity.entityReference(eLEADER_CURVE.self)
    }

    public var sub_eDIMENSION_CURVE: eDIMENSION_CURVE? {	// [14]
      return self.complexEntity.entityReference(eDIMENSION_CURVE.self)
    }

    public var sub_eANNOTATION_CURVE_OCCURRENCE: eANNOTATION_CURVE_OCCURRENCE? {	// [15]
      return self.complexEntity.entityReference(eANNOTATION_CURVE_OCCURRENCE.self)
    }

    public var sub_eANNOTATION_POINT_OCCURRENCE: eANNOTATION_POINT_OCCURRENCE? {	// [16]
      return self.complexEntity.entityReference(eANNOTATION_POINT_OCCURRENCE.self)
    }

    public var sub_eANNOTATION_FILL_AREA_OCCURRENCE: eANNOTATION_FILL_AREA_OCCURRENCE? {	// [17]
      return self.complexEntity.entityReference(eANNOTATION_FILL_AREA_OCCURRENCE.self)
    }

    public var sub_eANNOTATION_TEXT_OCCURRENCE: eANNOTATION_TEXT_OCCURRENCE? {	// [18]
      return self.complexEntity.entityReference(eANNOTATION_TEXT_OCCURRENCE.self)
    }

    public var sub_eANNOTATION_PLANE: eANNOTATION_PLANE? {	// [19]
      return self.complexEntity.entityReference(eANNOTATION_PLANE.self)
    }


    //MARK: ATTRIBUTES
    // ROLE: (2 AMBIGUOUS REFs)

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eANNOTATION_PLANE`` )
    public var ELEMENTS: (SDAI.SET<sANNOTATION_PLANE_ELEMENT>/*[1:nil]*/ )?  {
      get {
        return sub_eANNOTATION_PLANE?.partialEntity._elements
      }
      set(newValue) {
        guard let partial = sub_eANNOTATION_PLANE?.super_eANNOTATION_PLANE.partialEntity else { return }
        partial._elements = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eSTYLED_ITEM`` )
    public var ITEM: sSTYLED_ITEM_TARGET {
      get {
        return SDAI.UNWRAP( super_eSTYLED_ITEM.partialEntity._item )
      }
      set(newValue) {
        let partial = super_eSTYLED_ITEM.partialEntity
        partial._item = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eTERMINATOR_SYMBOL`` )
    public var ANNOTATED_CURVE: eANNOTATION_CURVE_OCCURRENCE?  {
      get {
        return sub_eTERMINATOR_SYMBOL?.partialEntity._annotated_curve
      }
      set(newValue) {
        guard let partial = sub_eTERMINATOR_SYMBOL?.super_eTERMINATOR_SYMBOL.partialEntity else { return }
        partial._annotated_curve = SDAI.UNWRAP(newValue)
      }
    }

    /// __INVERSE__ attribute
    /// observing eDRAUGHTING_CALLOUT .CONTENTS
    /// - origin: SUB( ``eANNOTATION_PLACEHOLDER_OCCURRENCE`` )
    public var THE_CALLOUT: eDRAUGHTING_CALLOUT?  {
      get {
        return sub_eANNOTATION_PLACEHOLDER_OCCURRENCE?.partialEntity._the_callout
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eANNOTATION_PLACEHOLDER_OCCURRENCE`` )
    public var LINE_SPACING: tPOSITIVE_LENGTH_MEASURE?  {
      get {
        return sub_eANNOTATION_PLACEHOLDER_OCCURRENCE?.partialEntity._line_spacing
      }
      set(newValue) {
        guard let partial = sub_eANNOTATION_PLACEHOLDER_OCCURRENCE?.super_eANNOTATION_PLACEHOLDER_OCCURRENCE
          .partialEntity else { return }
        partial._line_spacing = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eANNOTATION_FILL_AREA_OCCURRENCE`` )
    public var FILL_STYLE_TARGET: ePOINT?  {
      get {
        return sub_eANNOTATION_FILL_AREA_OCCURRENCE?.partialEntity._fill_style_target
      }
      set(newValue) {
        guard let partial = sub_eANNOTATION_FILL_AREA_OCCURRENCE?.super_eANNOTATION_FILL_AREA_OCCURRENCE
          .partialEntity else { return }
        partial._fill_style_target = SDAI.UNWRAP(newValue)
      }
    }

    /// __INVERSE__ attribute
    /// observing eDRAUGHTING_MODEL_ITEM_ASSOCIATION_WITH_PLACEHOLDER .ANNOTATION_PLACEHOLDER
    /// - origin: SUB( ``eANNOTATION_PLACEHOLDER_OCCURRENCE`` )
    public var THE_DRAUGHTING_MODEL_ITEM_ASSOCIATION_WITH_PLACEHOLDERS: (SDAI.SET<
      eDRAUGHTING_MODEL_ITEM_ASSOCIATION_WITH_PLACEHOLDER>/*[0:1]*/ )?  {
      get {
        return sub_eANNOTATION_PLACEHOLDER_OCCURRENCE?.partialEntity
          ._the_draughting_model_item_association_with_placeholders
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eSTYLED_ITEM`` )
    public var STYLES: SDAI.SET<ePRESENTATION_STYLE_ASSIGNMENT>/*[0:nil]*/  {
      get {
        return SDAI.UNWRAP( super_eSTYLED_ITEM.partialEntity._styles )
      }
      set(newValue) {
        let partial = super_eSTYLED_ITEM.partialEntity
        partial._styles = SDAI.UNWRAP(newValue)
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
      guard let partial = complexEntity?.partialEntityInstance(_annotation_occurrence.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eSTYLED_ITEM.self) else { return nil }
      self.super_eSTYLED_ITEM = super2

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
      result[prefix2 + " .WHERE_wr1"] = _annotation_occurrence.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _annotation_occurrence.WHERE_wr2(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "ANNOTATION_OCCURRENCE", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eSTYLED_ITEM.self)
      entityDef.add(supertype: eANNOTATION_OCCURRENCE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "ELEMENTS", keyPath: \eANNOTATION_OCCURRENCE.ELEMENTS, 
        kind: .explicitOptional, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ITEM", keyPath: \eANNOTATION_OCCURRENCE.ITEM, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ANNOTATED_CURVE", keyPath: \eANNOTATION_OCCURRENCE.ANNOTATED_CURVE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "THE_CALLOUT", keyPath: \eANNOTATION_OCCURRENCE.THE_CALLOUT, 
        kind: .inverse, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "LINE_SPACING", keyPath: \eANNOTATION_OCCURRENCE.LINE_SPACING, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "FILL_STYLE_TARGET", keyPath: \eANNOTATION_OCCURRENCE.FILL_STYLE_TARGET, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "THE_DRAUGHTING_MODEL_ITEM_ASSOCIATION_WITH_PLACEHOLDERS", keyPath: \eANNOTATION_OCCURRENCE.THE_DRAUGHTING_MODEL_ITEM_ASSOCIATION_WITH_PLACEHOLDERS, 
        kind: .inverse, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "STYLES", keyPath: \eANNOTATION_OCCURRENCE.STYLES, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eANNOTATION_OCCURRENCE.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
