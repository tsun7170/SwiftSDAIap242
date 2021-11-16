/* file: tessellated_annotation_occurrence.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY tessellated_annotation_occurrence
    SUBTYPE OF ( annotation_occurrence );
      SELF\styled_item.item  : tessellated_geometric_set;
  END_ENTITY; -- tessellated_annotation_occurrence (line:32002 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(2)	styled_item
    ATTR:  styles,	TYPE: SET [0 : ?] OF presentation_style_assignment -- EXPLICIT

    ATTR:  item,	TYPE: styled_item_target -- EXPLICIT
      -- possibly overriden by
      *** ENTITY: tessellated_annotation_occurrence,	TYPE: tessellated_geometric_set
          ENTITY: annotation_placeholder_occurrence,	TYPE: geometric_set
          ENTITY: annotation_symbol_occurrence,	TYPE: annotation_symbol_occurrence_item
          ENTITY: annotation_curve_occurrence,	TYPE: curve_or_curve_set
          ENTITY: styled_tessellated_item_with_colours,	TYPE: tessellated_surface_item
          ENTITY: annotation_text_occurrence,	TYPE: annotation_text_occurrence_item
          ENTITY: hidden_element_over_riding_styled_item,	TYPE: camera_image
          ENTITY: annotation_fill_area_occurrence,	TYPE: annotation_fill_area
          ENTITY: annotation_point_occurrence,	TYPE: point
          ENTITY: annotation_plane,	TYPE: plane_or_planar_box


  SUPER- ENTITY(3)	annotation_occurrence
    (no local attributes)

  ENTITY(SELF)	tessellated_annotation_occurrence
    REDCR: item,	TYPE: tessellated_geometric_set -- EXPLICIT
      -- OVERRIDING ENTITY: styled_item


*/


//MARK: - Partial Entity
  public final class _tessellated_annotation_occurrence : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eTESSELLATED_ANNOTATION_OCCURRENCE.self
    }

    //ATTRIBUTES
    /* override var _item: eTESSELLATED_GEOMETRIC_SET	//EXPLICIT REDEFINITION(eSTYLED_ITEM) */

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sDRAUGHTING_CALLOUT_ELEMENT.typeName)) // -> Self
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
  ENTITY tessellated_annotation_occurrence
    SUBTYPE OF ( annotation_occurrence );
      SELF\styled_item.item  : tessellated_geometric_set;
  END_ENTITY; -- tessellated_annotation_occurrence (line:32002 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eTESSELLATED_ANNOTATION_OCCURRENCE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _tessellated_annotation_occurrence.self
    }
    public let partialEntity: _tessellated_annotation_occurrence

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eSTYLED_ITEM: eSTYLED_ITEM 	// [2]
    public let super_eANNOTATION_OCCURRENCE: eANNOTATION_OCCURRENCE 	// [3]
    public var super_eTESSELLATED_ANNOTATION_OCCURRENCE: eTESSELLATED_ANNOTATION_OCCURRENCE { return self } 	// [4]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT REDEF__ attribute
    /// - origin: SELF( ``eTESSELLATED_ANNOTATION_OCCURRENCE`` )
    public var ITEM: eTESSELLATED_GEOMETRIC_SET {
      get {
        return SDAI.UNWRAP( eTESSELLATED_GEOMETRIC_SET( super_eSTYLED_ITEM.partialEntity._item ) )
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
      guard let partial = complexEntity?.partialEntityInstance(_tessellated_annotation_occurrence.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eSTYLED_ITEM.self) else { return nil }
      self.super_eSTYLED_ITEM = super2

      guard let super3 = complexEntity?.entityReference(eANNOTATION_OCCURRENCE.self) else { return nil }
      self.super_eANNOTATION_OCCURRENCE = super3

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "TESSELLATED_ANNOTATION_OCCURRENCE", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eSTYLED_ITEM.self)
      entityDef.add(supertype: eANNOTATION_OCCURRENCE.self)
      entityDef.add(supertype: eTESSELLATED_ANNOTATION_OCCURRENCE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "ITEM", keyPath: \eTESSELLATED_ANNOTATION_OCCURRENCE.ITEM, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "STYLES", keyPath: \eTESSELLATED_ANNOTATION_OCCURRENCE.STYLES, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eTESSELLATED_ANNOTATION_OCCURRENCE.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
