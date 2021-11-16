/* file: leader_terminator.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY leader_terminator
    SUBTYPE OF ( terminator_symbol );
    WHERE
      wr1: ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.LEADER_CURVE' IN TYPEOF( SELF\terminator_symbol
               .annotated_curve ) );
  END_ENTITY; -- leader_terminator (line:18919 file:ap242ed2_mim_lf_v1.101.TY.exp)

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


  SUPER- ENTITY(5)	terminator_symbol
    ATTR:  annotated_curve,	TYPE: annotation_curve_occurrence -- EXPLICIT


  ENTITY(SELF)	leader_terminator
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _leader_terminator : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eLEADER_TERMINATOR.self
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
    public static func WHERE_wr1(SELF: eLEADER_TERMINATOR?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF.GROUP_REF(eTERMINATOR_SYMBOL.self)?.ANNOTATED_CURVE, 
        IS: eLEADER_CURVE.self)
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
  ENTITY leader_terminator
    SUBTYPE OF ( terminator_symbol );
    WHERE
      wr1: ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.LEADER_CURVE' IN TYPEOF( SELF\terminator_symbol
               .annotated_curve ) );
  END_ENTITY; -- leader_terminator (line:18919 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eLEADER_TERMINATOR : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _leader_terminator.self
    }
    public let partialEntity: _leader_terminator

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eSTYLED_ITEM: eSTYLED_ITEM 	// [2]
    public let super_eANNOTATION_OCCURRENCE: eANNOTATION_OCCURRENCE 	// [3]
    public let super_eANNOTATION_SYMBOL_OCCURRENCE: eANNOTATION_SYMBOL_OCCURRENCE 	// [4]
    public let super_eTERMINATOR_SYMBOL: eTERMINATOR_SYMBOL 	// [5]
    public var super_eLEADER_TERMINATOR: eLEADER_TERMINATOR { return self } 	// [6]

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
    /// - origin: SUPER( ``eTERMINATOR_SYMBOL`` )
    public var ANNOTATED_CURVE: eANNOTATION_CURVE_OCCURRENCE {
      get {
        return SDAI.UNWRAP( super_eTERMINATOR_SYMBOL.partialEntity._annotated_curve )
      }
      set(newValue) {
        let partial = super_eTERMINATOR_SYMBOL.partialEntity
        partial._annotated_curve = SDAI.UNWRAP(newValue)
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
      guard let partial = complexEntity?.partialEntityInstance(_leader_terminator.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eSTYLED_ITEM.self) else { return nil }
      self.super_eSTYLED_ITEM = super2

      guard let super3 = complexEntity?.entityReference(eANNOTATION_OCCURRENCE.self) else { return nil }
      self.super_eANNOTATION_OCCURRENCE = super3

      guard let super4 = complexEntity?.entityReference(eANNOTATION_SYMBOL_OCCURRENCE.self) else { return nil }
      self.super_eANNOTATION_SYMBOL_OCCURRENCE = super4

      guard let super5 = complexEntity?.entityReference(eTERMINATOR_SYMBOL.self) else { return nil }
      self.super_eTERMINATOR_SYMBOL = super5

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
      result[prefix2 + " .WHERE_wr1"] = _leader_terminator.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "LEADER_TERMINATOR", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eSTYLED_ITEM.self)
      entityDef.add(supertype: eANNOTATION_OCCURRENCE.self)
      entityDef.add(supertype: eANNOTATION_SYMBOL_OCCURRENCE.self)
      entityDef.add(supertype: eTERMINATOR_SYMBOL.self)
      entityDef.add(supertype: eLEADER_TERMINATOR.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "ITEM", keyPath: \eLEADER_TERMINATOR.ITEM, 
        kind: .explicitRedeclaring, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ANNOTATED_CURVE", keyPath: \eLEADER_TERMINATOR.ANNOTATED_CURVE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "STYLES", keyPath: \eLEADER_TERMINATOR.STYLES, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eLEADER_TERMINATOR.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
