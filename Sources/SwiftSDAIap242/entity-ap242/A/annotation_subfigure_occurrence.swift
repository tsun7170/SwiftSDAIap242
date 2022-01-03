/* file: annotation_subfigure_occurrence.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY annotation_subfigure_occurrence
    SUBTYPE OF ( annotation_symbol_occurrence );
    WHERE
      wr1: ( SIZEOF( QUERY ( sty <* SELF.styles | ( NOT ( SIZEOF( sty.styles ) = 1 ) ) ) ) = 0 );
      wr2: ( SIZEOF( QUERY ( sty <* SELF.styles | ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'NULL_STYLE'  IN TYPEOF( sty.styles[1] ) ) ) ) ) = 0 );
      wr3: ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ANNOTATION_SYMBOL' IN TYPEOF( SELF.item ) );
      wr4: ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DRAUGHTING_SUBFIGURE_REPRESENTATION' IN 
               TYPEOF( SELF.item\mapped_item.mapping_source.mapped_representation ) );
  END_ENTITY; -- annotation_subfigure_occurrence (line:6976 file:ap242ed2_mim_lf_v1.101.TY.exp)

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
      *** ENTITY: annotation_symbol_occurrence,	TYPE: annotation_symbol_occurrence_item
          ENTITY: annotation_curve_occurrence,	TYPE: curve_or_curve_set
          ENTITY: styled_tessellated_item_with_colours,	TYPE: tessellated_surface_item
          ENTITY: annotation_text_occurrence,	TYPE: annotation_text_occurrence_item
          ENTITY: hidden_element_over_riding_styled_item,	TYPE: camera_image
          ENTITY: annotation_fill_area_occurrence,	TYPE: annotation_fill_area
          ENTITY: annotation_point_occurrence,	TYPE: point
          ENTITY: annotation_plane,	TYPE: plane_or_planar_box


  SUPER- ENTITY(3)	annotation_occurrence
    (no local attributes)

  SUPER- ENTITY(4)	annotation_symbol_occurrence
    REDCR: item,	TYPE: annotation_symbol_occurrence_item -- EXPLICIT
      -- OVERRIDING ENTITY: styled_item


  ENTITY(SELF)	annotation_subfigure_occurrence
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _annotation_subfigure_occurrence : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eANNOTATION_SUBFIGURE_OCCURRENCE.self
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
    public static func WHERE_wr1(SELF: eANNOTATION_SUBFIGURE_OCCURRENCE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.STYLES
      let _TEMP2 = _TEMP1.QUERY{ STY in 

          let _TEMP1 = STY.STYLES
          let _TEMP2 = SDAI.SIZEOF(_TEMP1)
          let _TEMP3 = _TEMP2 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
          let _TEMP4 =  !_TEMP3
          return _TEMP4 }
      let _TEMP3 = SDAI.SIZEOF(_TEMP2)
      let _TEMP4 = _TEMP3 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP4
    }
    public static func WHERE_wr2(SELF: eANNOTATION_SUBFIGURE_OCCURRENCE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.STYLES
      let _TEMP2 = _TEMP1.QUERY{ STY in 

          let _TEMP1 = SDAI.TYPEOF(STY.STYLES[1], IS: nNULL_STYLE.self)
          let _TEMP2 =  !_TEMP1
          return _TEMP2 }
      let _TEMP3 = SDAI.SIZEOF(_TEMP2)
      let _TEMP4 = _TEMP3 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP4
    }
    public static func WHERE_wr3(SELF: eANNOTATION_SUBFIGURE_OCCURRENCE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF.ITEM, IS: eANNOTATION_SYMBOL.self)
      return _TEMP1
    }
    public static func WHERE_wr4(SELF: eANNOTATION_SUBFIGURE_OCCURRENCE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF.ITEM.GROUP_REF(eMAPPED_ITEM.self)?.MAPPING_SOURCE.MAPPED_REPRESENTATION, 
        IS: eDRAUGHTING_SUBFIGURE_REPRESENTATION.self)
      return _TEMP1
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
  ENTITY annotation_subfigure_occurrence
    SUBTYPE OF ( annotation_symbol_occurrence );
    WHERE
      wr1: ( SIZEOF( QUERY ( sty <* SELF.styles | ( NOT ( SIZEOF( sty.styles ) = 1 ) ) ) ) = 0 );
      wr2: ( SIZEOF( QUERY ( sty <* SELF.styles | ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'NULL_STYLE'  IN TYPEOF( sty.styles[1] ) ) ) ) ) = 0 );
      wr3: ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ANNOTATION_SYMBOL' IN TYPEOF( SELF.item ) );
      wr4: ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DRAUGHTING_SUBFIGURE_REPRESENTATION' IN 
               TYPEOF( SELF.item\mapped_item.mapping_source.mapped_representation ) );
  END_ENTITY; -- annotation_subfigure_occurrence (line:6976 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eANNOTATION_SUBFIGURE_OCCURRENCE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _annotation_subfigure_occurrence.self
    }
    public let partialEntity: _annotation_subfigure_occurrence

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eSTYLED_ITEM: eSTYLED_ITEM 	// [2]
    public let super_eANNOTATION_OCCURRENCE: eANNOTATION_OCCURRENCE 	// [3]
    public let super_eANNOTATION_SYMBOL_OCCURRENCE: eANNOTATION_SYMBOL_OCCURRENCE 	// [4]
    public var super_eANNOTATION_SUBFIGURE_OCCURRENCE: eANNOTATION_SUBFIGURE_OCCURRENCE { return self } 	// [5]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT REDEF__ attribute
    /// - origin: SUPER( ``eANNOTATION_SYMBOL_OCCURRENCE`` )
    public var ITEM: sANNOTATION_SYMBOL_OCCURRENCE_ITEM {
      get {
        return SDAI.UNWRAP( sANNOTATION_SYMBOL_OCCURRENCE_ITEM( super_eSTYLED_ITEM.partialEntity._item ) )
      }
      set(newValue) {
        let partial = super_eSTYLED_ITEM.partialEntity
        partial._item = SDAI.UNWRAP(
          sSTYLED_ITEM_TARGET(newValue))
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
      guard let partial = complexEntity?.partialEntityInstance(_annotation_subfigure_occurrence.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eSTYLED_ITEM.self) else { return nil }
      self.super_eSTYLED_ITEM = super2

      guard let super3 = complexEntity?.entityReference(eANNOTATION_OCCURRENCE.self) else { return nil }
      self.super_eANNOTATION_OCCURRENCE = super3

      guard let super4 = complexEntity?.entityReference(eANNOTATION_SYMBOL_OCCURRENCE.self) else { return nil }
      self.super_eANNOTATION_SYMBOL_OCCURRENCE = super4

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
      result[prefix2 + " .WHERE_wr1"] = _annotation_subfigure_occurrence.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _annotation_subfigure_occurrence.WHERE_wr2(SELF: instance)
      result[prefix2 + " .WHERE_wr3"] = _annotation_subfigure_occurrence.WHERE_wr3(SELF: instance)
      result[prefix2 + " .WHERE_wr4"] = _annotation_subfigure_occurrence.WHERE_wr4(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "ANNOTATION_SUBFIGURE_OCCURRENCE", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eSTYLED_ITEM.self)
      entityDef.add(supertype: eANNOTATION_OCCURRENCE.self)
      entityDef.add(supertype: eANNOTATION_SYMBOL_OCCURRENCE.self)
      entityDef.add(supertype: eANNOTATION_SUBFIGURE_OCCURRENCE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "ITEM", keyPath: \eANNOTATION_SUBFIGURE_OCCURRENCE.ITEM, 
        kind: .explicitRedeclaring, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "STYLES", keyPath: \eANNOTATION_SUBFIGURE_OCCURRENCE.STYLES, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eANNOTATION_SUBFIGURE_OCCURRENCE.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
