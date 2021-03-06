/* file: styled_item.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY styled_item
    SUBTYPE OF ( representation_item );
      styles  : SET [0 : ?] OF presentation_style_assignment;
      item    : styled_item_target;
    WHERE
      wr1: ( ( ( SIZEOF( styles ) = 0 ) AND ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'STYLED_TESSELLATED_ITEM_WITH_COLOURS'  IN TYPEOF( SELF ) ) ) OR ( SIZEOF( styles ) = 1 ) OR
               ( ( SIZEOF( styles ) > 1 ) AND ( SIZEOF( QUERY ( pres_style <* styles | ( NOT ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRESENTATION_STYLE_BY_CONTEXT'  IN TYPEOF( 
               pres_style ) ) ) ) ) = 0 ) ) );
      wr2: ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.STYLED_ITEM' IN TYPEOF( item ) ) );
      wr3: ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.MAPPED_ITEM' IN TYPEOF( item ) ) OR ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.GEOMETRIC_REPRESENTATION_ITEM'  IN TYPEOF( 
               item ) ) OR ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'CONTEXT_DEPENDENT_OVER_RIDING_STYLED_ITEM'  IN TYPEOF( SELF ) ) );
  END_ENTITY; -- styled_item (line:30990 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  ENTITY(SELF)	styled_item
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


  SUB- ENTITY(3)	styled_tessellated_item_with_colours
    REDCR: item,	TYPE: tessellated_surface_item -- EXPLICIT
      -- OVERRIDING ENTITY: styled_item

    ATTR:  colour_type,	TYPE: colour_type_enum -- EXPLICIT

    ATTR:  colour_values,	TYPE: LIST [1 : ?] OF LIST [3 : 4] OF unsigned_8_bit_integer -- EXPLICIT

    ATTR:  coloured_coordinate_values,	TYPE: coordinates_list -- DERIVED
      := get_coordinate_values( item )


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


  SUB- ENTITY(20)	annotation_occurrence
    (no local attributes)

  SUB- ENTITY(21)	hidden_element_over_riding_styled_item
    REDCR: style_context,	TYPE: LIST [1 : 1] OF presentation_view -- EXPLICIT
      -- OVERRIDING ENTITY: context_dependent_over_riding_styled_item

    REDCR: item,	TYPE: camera_image -- EXPLICIT
      -- OVERRIDING ENTITY: styled_item

    ATTR:  container,	TYPE: SET [1 : ?] OF presentation_view -- INVERSE
      FOR items;


  SUB- ENTITY(22)	context_dependent_over_riding_styled_item
    ATTR:  style_context,	TYPE: LIST [1 : ?] OF style_context_select -- EXPLICIT
      -- possibly overriden by
          ENTITY: hidden_element_over_riding_styled_item,	TYPE: LIST [1 : 1] OF presentation_view


  SUB- ENTITY(23)	over_riding_styled_item
    ATTR:  over_ridden_style,	TYPE: styled_item -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _styled_item : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eSTYLED_ITEM.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _styles: SDAI.SET<ePRESENTATION_STYLE_ASSIGNMENT>/*[0:nil]*/  // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _item: sSTYLED_ITEM_TARGET // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sMULTI_LANGUAGE_ATTRIBUTE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sDRAUGHTING_MODEL_ITEM_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sINSPECTED_ECDQ_ELEMENT_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sLOCATION_OF_EXTREME_VALUE_SELECT.typeName)) // -> sINSPECTED_ECDQ_ELEMENT_SELECT
      members.insert(SDAI.STRING(sANNOTATION_PLANE_ELEMENT.typeName)) // -> Self
      members.insert(SDAI.STRING(sPICTURE_REPRESENTATION_ITEM_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sINVISIBLE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sATTRIBUTE_LANGUAGE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sINSPECTED_SHAPE_ELEMENT_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sMECHANICAL_DESIGN_GEOMETRIC_PRESENTATION_REPRESENTATION_ITEMS.typeName)) // -> Self
      members.insert(SDAI.STRING(sMECHANICAL_DESIGN_SHADED_PRESENTATION_REPRESENTATION_ITEMS.typeName)) // -> Self
      members.insert(SDAI.STRING(sGROUPABLE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sINSPECTED_ELEMENT_SELECT.typeName)) // -> Self
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._styles.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._item.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._styles.value.isValueEqualOptionally(to: rhs._styles.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._item.value.isValueEqualOptionally(to: rhs._item.value, visited: &comppairs)	{
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
      if let comp = self._styles.value.isValueEqualOptionally(to: rhs._styles.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._item.value.isValueEqualOptionally(to: rhs._item.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eSTYLED_ITEM?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.SIZEOF(SELF.STYLES)
      let _TEMP2 = _TEMP1 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      let _TEMP3 = SDAI.TYPEOF(SELF, IS: eSTYLED_TESSELLATED_ITEM_WITH_COLOURS.self)
      let _TEMP4 = _TEMP2 && _TEMP3
      let _TEMP5 = SDAI.SIZEOF(SELF.STYLES)
      let _TEMP6 = _TEMP5 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      let _TEMP7 = _TEMP4 || _TEMP6
      let _TEMP8 = SDAI.SIZEOF(SELF.STYLES)
      let _TEMP9 = _TEMP8 > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      let _TEMP10 = SELF.STYLES.QUERY{ PRES_STYLE in 

          let _TEMP1 = SDAI.TYPEOF(PRES_STYLE, IS: ePRESENTATION_STYLE_BY_CONTEXT.self)
          let _TEMP2 =  !_TEMP1
          return _TEMP2 }
      let _TEMP11 = SDAI.SIZEOF(_TEMP10)
      let _TEMP12 = _TEMP11 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      let _TEMP13 = _TEMP9 && _TEMP12
      let _TEMP14 = _TEMP7 || _TEMP13
      return _TEMP14
    }
    public static func WHERE_wr2(SELF: eSTYLED_ITEM?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF.ITEM, IS: eSTYLED_ITEM.self)
      let _TEMP2 =  !_TEMP1
      return _TEMP2
    }
    public static func WHERE_wr3(SELF: eSTYLED_ITEM?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF.ITEM, IS: eMAPPED_ITEM.self)
      let _TEMP2 = SDAI.TYPEOF(SELF.ITEM, IS: eGEOMETRIC_REPRESENTATION_ITEM.self)
      let _TEMP3 = _TEMP1 || _TEMP2
      let _TEMP4 = SDAI.TYPEOF(SELF, IS: eCONTEXT_DEPENDENT_OVER_RIDING_STYLED_ITEM.self)
      let _TEMP5 = _TEMP3 || _TEMP4
      return _TEMP5
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(STYLES: SDAI.SET<ePRESENTATION_STYLE_ASSIGNMENT>/*[0:nil]*/ , 
                ITEM: sSTYLED_ITEM_TARGET) {
      self._styles = STYLES
      self._item = ITEM
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: SDAI.SET<
        ePRESENTATION_STYLE_ASSIGNMENT>.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: sSTYLED_ITEM_TARGET.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( STYLES: p0, ITEM: p1 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY styled_item
    SUBTYPE OF ( representation_item );
      styles  : SET [0 : ?] OF presentation_style_assignment;
      item    : styled_item_target;
    WHERE
      wr1: ( ( ( SIZEOF( styles ) = 0 ) AND ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'STYLED_TESSELLATED_ITEM_WITH_COLOURS'  IN TYPEOF( SELF ) ) ) OR ( SIZEOF( styles ) = 1 ) OR
               ( ( SIZEOF( styles ) > 1 ) AND ( SIZEOF( QUERY ( pres_style <* styles | ( NOT ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRESENTATION_STYLE_BY_CONTEXT'  IN TYPEOF( 
               pres_style ) ) ) ) ) = 0 ) ) );
      wr2: ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.STYLED_ITEM' IN TYPEOF( item ) ) );
      wr3: ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.MAPPED_ITEM' IN TYPEOF( item ) ) OR ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.GEOMETRIC_REPRESENTATION_ITEM'  IN TYPEOF( 
               item ) ) OR ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'CONTEXT_DEPENDENT_OVER_RIDING_STYLED_ITEM'  IN TYPEOF( SELF ) ) );
  END_ENTITY; -- styled_item (line:30990 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eSTYLED_ITEM : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _styled_item.self
    }
    public let partialEntity: _styled_item

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public var super_eSTYLED_ITEM: eSTYLED_ITEM { return self } 	// [2]

    //MARK: SUBTYPES
    public var sub_eSTYLED_TESSELLATED_ITEM_WITH_COLOURS: eSTYLED_TESSELLATED_ITEM_WITH_COLOURS? {	// [3]
      return self.complexEntity.entityReference(eSTYLED_TESSELLATED_ITEM_WITH_COLOURS.self)
    }

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

    public var sub_eANNOTATION_OCCURRENCE: eANNOTATION_OCCURRENCE? {	// [20]
      return self.complexEntity.entityReference(eANNOTATION_OCCURRENCE.self)
    }

    public var sub_eHIDDEN_ELEMENT_OVER_RIDING_STYLED_ITEM: eHIDDEN_ELEMENT_OVER_RIDING_STYLED_ITEM? {	// [21]
      return self.complexEntity.entityReference(eHIDDEN_ELEMENT_OVER_RIDING_STYLED_ITEM.self)
    }

    public var sub_eCONTEXT_DEPENDENT_OVER_RIDING_STYLED_ITEM: eCONTEXT_DEPENDENT_OVER_RIDING_STYLED_ITEM? {	// [22]
      return self.complexEntity.entityReference(eCONTEXT_DEPENDENT_OVER_RIDING_STYLED_ITEM.self)
    }

    public var sub_eOVER_RIDING_STYLED_ITEM: eOVER_RIDING_STYLED_ITEM? {	// [23]
      return self.complexEntity.entityReference(eOVER_RIDING_STYLED_ITEM.self)
    }


    //MARK: ATTRIBUTES
    // ROLE: (2 AMBIGUOUS REFs)

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eCONTEXT_DEPENDENT_OVER_RIDING_STYLED_ITEM`` )
    public var STYLE_CONTEXT: (SDAI.LIST<sSTYLE_CONTEXT_SELECT>/*[1:nil]*/ )?  {
      get {
        return sub_eCONTEXT_DEPENDENT_OVER_RIDING_STYLED_ITEM?.partialEntity._style_context
      }
      set(newValue) {
        guard let partial = sub_eCONTEXT_DEPENDENT_OVER_RIDING_STYLED_ITEM?.super_eCONTEXT_DEPENDENT_OVER_RIDING_STYLED_ITEM
          .partialEntity else { return }
        partial._style_context = SDAI.UNWRAP(newValue)
      }
    }

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

    /// __INVERSE__ attribute
    /// observing eREPRESENTATION .ITEMS
    /// - origin: SUB( ``eHIDDEN_ELEMENT_OVER_RIDING_STYLED_ITEM`` )
    public var CONTAINER: (SDAI.SET<ePRESENTATION_VIEW>/*[1:nil]*/ )?  {
      get {
        return sub_eHIDDEN_ELEMENT_OVER_RIDING_STYLED_ITEM?.partialEntity._container
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eOVER_RIDING_STYLED_ITEM`` )
    public var OVER_RIDDEN_STYLE: eSTYLED_ITEM?  {
      get {
        return sub_eOVER_RIDING_STYLED_ITEM?.partialEntity._over_ridden_style
      }
      set(newValue) {
        guard let partial = sub_eOVER_RIDING_STYLED_ITEM?.super_eOVER_RIDING_STYLED_ITEM.partialEntity
          else { return }
        partial._over_ridden_style = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eSTYLED_ITEM`` )
    public var ITEM: sSTYLED_ITEM_TARGET {
      get {
        return SDAI.UNWRAP( self.partialEntity._item )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._item = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eSTYLED_TESSELLATED_ITEM_WITH_COLOURS`` )
    public var COLOUR_TYPE: nCOLOUR_TYPE_ENUM?  {
      get {
        return sub_eSTYLED_TESSELLATED_ITEM_WITH_COLOURS?.partialEntity._colour_type
      }
      set(newValue) {
        guard let partial = sub_eSTYLED_TESSELLATED_ITEM_WITH_COLOURS?.super_eSTYLED_TESSELLATED_ITEM_WITH_COLOURS
          .partialEntity else { return }
        partial._colour_type = SDAI.UNWRAP(newValue)
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

    /// __DERIVE__ attribute
    /// - origin: SUB( ``eSTYLED_TESSELLATED_ITEM_WITH_COLOURS`` )
    public var COLOURED_COORDINATE_VALUES: eCOORDINATES_LIST?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"COLOURED_COORDINATE_VALUES") {
          return cached.value as! eCOORDINATES_LIST? 
        }
        guard let origin = sub_eSTYLED_TESSELLATED_ITEM_WITH_COLOURS else { return nil }
        let value = eCOORDINATES_LIST(origin.partialEntity._coloured_coordinate_values__getter(SELF: origin))
        updateCache(derivedAttributeName:"COLOURED_COORDINATE_VALUES", value:value)
        return value
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
    /// - origin: SELF( ``eSTYLED_ITEM`` )
    public var STYLES: SDAI.SET<ePRESENTATION_STYLE_ASSIGNMENT>/*[0:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._styles )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._styles = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eSTYLED_TESSELLATED_ITEM_WITH_COLOURS`` )
    public var COLOUR_VALUES: (SDAI.LIST<SDAI.LIST<tUNSIGNED_8_BIT_INTEGER>/*[3:4]*/ >/*[1:nil]*/ )?  {
      get {
        return sub_eSTYLED_TESSELLATED_ITEM_WITH_COLOURS?.partialEntity._colour_values
      }
      set(newValue) {
        guard let partial = sub_eSTYLED_TESSELLATED_ITEM_WITH_COLOURS?.super_eSTYLED_TESSELLATED_ITEM_WITH_COLOURS
          .partialEntity else { return }
        partial._colour_values = SDAI.UNWRAP(newValue)
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
      guard let partial = complexEntity?.partialEntityInstance(_styled_item.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

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
      result[prefix2 + " .WHERE_wr1"] = _styled_item.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _styled_item.WHERE_wr2(SELF: instance)
      result[prefix2 + " .WHERE_wr3"] = _styled_item.WHERE_wr3(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "STYLED_ITEM", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eSTYLED_ITEM.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "STYLE_CONTEXT", keyPath: \eSTYLED_ITEM.STYLE_CONTEXT, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ELEMENTS", keyPath: \eSTYLED_ITEM.ELEMENTS, 
        kind: .explicitOptional, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "CONTAINER", keyPath: \eSTYLED_ITEM.CONTAINER, 
        kind: .inverse, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "OVER_RIDDEN_STYLE", keyPath: \eSTYLED_ITEM.OVER_RIDDEN_STYLE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ITEM", keyPath: \eSTYLED_ITEM.ITEM, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "COLOUR_TYPE", keyPath: \eSTYLED_ITEM.COLOUR_TYPE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ANNOTATED_CURVE", keyPath: \eSTYLED_ITEM.ANNOTATED_CURVE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "THE_CALLOUT", keyPath: \eSTYLED_ITEM.THE_CALLOUT, 
        kind: .inverse, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "LINE_SPACING", keyPath: \eSTYLED_ITEM.LINE_SPACING, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "FILL_STYLE_TARGET", keyPath: \eSTYLED_ITEM.FILL_STYLE_TARGET, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "COLOURED_COORDINATE_VALUES", keyPath: \eSTYLED_ITEM.COLOURED_COORDINATE_VALUES, 
        kind: .derived, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "THE_DRAUGHTING_MODEL_ITEM_ASSOCIATION_WITH_PLACEHOLDERS", keyPath: \eSTYLED_ITEM.THE_DRAUGHTING_MODEL_ITEM_ASSOCIATION_WITH_PLACEHOLDERS, 
        kind: .inverse, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "STYLES", keyPath: \eSTYLED_ITEM.STYLES, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "COLOUR_VALUES", keyPath: \eSTYLED_ITEM.COLOUR_VALUES, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eSTYLED_ITEM.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
