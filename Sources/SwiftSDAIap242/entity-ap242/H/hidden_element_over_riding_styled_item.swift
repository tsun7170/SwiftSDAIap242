/* file: hidden_element_over_riding_styled_item.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY hidden_element_over_riding_styled_item
    SUBTYPE OF ( context_dependent_over_riding_styled_item );
      SELF\context_dependent_over_riding_styled_item.style_context : LIST [1 : 1] OF presentation_view;
      SELF\styled_item.item           : camera_image;
    INVERSE
      container : SET [1 : ?] OF presentation_view FOR items -- defined in ENTITY: representation;
    WHERE
      wr1: ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CAMERA_MODEL_D3_WITH_HLHSR' IN TYPEOF( SELF.
               item\mapped_item.mapping_source.mapping_origin ) );
  END_ENTITY; -- hidden_element_over_riding_styled_item (line:17435 file:ap242ed2_mim_lf_v1.101.TY.exp)

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
      *** ENTITY: hidden_element_over_riding_styled_item,	TYPE: camera_image
          ENTITY: annotation_fill_area_occurrence,	TYPE: annotation_fill_area
          ENTITY: annotation_point_occurrence,	TYPE: point
          ENTITY: annotation_plane,	TYPE: plane_or_planar_box


  SUPER- ENTITY(3)	over_riding_styled_item
    ATTR:  over_ridden_style,	TYPE: styled_item -- EXPLICIT


  SUPER- ENTITY(4)	context_dependent_over_riding_styled_item
    ATTR:  style_context,	TYPE: LIST [1 : ?] OF style_context_select -- EXPLICIT
      -- possibly overriden by
      *** ENTITY: hidden_element_over_riding_styled_item,	TYPE: LIST [1 : 1] OF presentation_view


  ENTITY(SELF)	hidden_element_over_riding_styled_item
    REDCR: style_context,	TYPE: LIST [1 : 1] OF presentation_view -- EXPLICIT
      -- OVERRIDING ENTITY: context_dependent_over_riding_styled_item

    REDCR: item,	TYPE: camera_image -- EXPLICIT
      -- OVERRIDING ENTITY: styled_item

    ATTR:  container,	TYPE: SET [1 : ?] OF presentation_view -- INVERSE
      FOR items;


*/


//MARK: - Partial Entity
  public final class _hidden_element_over_riding_styled_item : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eHIDDEN_ELEMENT_OVER_RIDING_STYLED_ITEM.self
    }

    //ATTRIBUTES
    /* override var _style_context: SDAI.LIST<ePRESENTATION_VIEW>[1:1] 	//EXPLICIT REDEFINITION(eCONTEXT_DEPENDENT_OVER_RIDING_STYLED_ITEM) */

    /* override var _item: eCAMERA_IMAGE	//EXPLICIT REDEFINITION(eSTYLED_ITEM) */

    /// INVERSE AGGREGATE ATTRIBUTE
    /// observing _representation ._items
    internal var _container: SDAI.SET<ePRESENTATION_VIEW> {
      return __container.map{ $0.reference }
    }
    private var __container = SDAI.SET<SDAI.UnownedWrap<ePRESENTATION_VIEW>>(
      bound1: SDAI.UNWRAP(SDAI.INTEGER(1)), bound2: (nil as SDAI.INTEGER?), 
      SDAI.EMPLY_AGGREGATE) // unowned backing store
    /// INVERSE AGGREGATE ATTR SUPPORT(ADDER)
    internal func _container__observeAddedReference(in complex: SDAI.ComplexEntity) {
      guard let newSource = complex.entityReference(ePRESENTATION_VIEW.self) else { return }
      self.__container.add(member: SDAI.UnownedWrap(newSource) )
    }
    /// INVERSE AGGREGATE ATTR SUPPORT(REMOVER)
    internal func _container__observeRemovedReference(in complex: SDAI.ComplexEntity) {
      guard let oldSource = complex.entityReference(ePRESENTATION_VIEW.self) else { return }
      let success = self.__container.remove(member: SDAI.UnownedWrap(oldSource) )
      assert(success, "failed to remove inverse attribute element")
    }
    /// INVERSE AGGREGATE ATTR SUPPORT(LEAVING REFERENCE OWNER)
    internal func _container__observe(leavingReferencerOwner complex: SDAI.ComplexEntity) {
      guard let oldSource = complex.entityReference(ePRESENTATION_VIEW.self) else { return }
      let success = self.__container.removeAll(member: SDAI.UnownedWrap(oldSource) )
      assert(success, "failed to remove inverse attribute elements")
    }

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
    public static func WHERE_wr1(SELF: eHIDDEN_ELEMENT_OVER_RIDING_STYLED_ITEM?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF.ITEM.GROUP_REF(eMAPPED_ITEM.self)?.MAPPING_SOURCE.MAPPING_ORIGIN, 
        IS: eCAMERA_MODEL_D3_WITH_HLHSR.self)
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
  ENTITY hidden_element_over_riding_styled_item
    SUBTYPE OF ( context_dependent_over_riding_styled_item );
      SELF\context_dependent_over_riding_styled_item.style_context : LIST [1 : 1] OF presentation_view;
      SELF\styled_item.item           : camera_image;
    INVERSE
      container : SET [1 : ?] OF presentation_view FOR items -- defined in ENTITY: representation;
    WHERE
      wr1: ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CAMERA_MODEL_D3_WITH_HLHSR' IN TYPEOF( SELF.
               item\mapped_item.mapping_source.mapping_origin ) );
  END_ENTITY; -- hidden_element_over_riding_styled_item (line:17435 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eHIDDEN_ELEMENT_OVER_RIDING_STYLED_ITEM : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _hidden_element_over_riding_styled_item.self
    }
    public let partialEntity: _hidden_element_over_riding_styled_item

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eSTYLED_ITEM: eSTYLED_ITEM 	// [2]
    public let super_eOVER_RIDING_STYLED_ITEM: eOVER_RIDING_STYLED_ITEM 	// [3]
    public let super_eCONTEXT_DEPENDENT_OVER_RIDING_STYLED_ITEM: eCONTEXT_DEPENDENT_OVER_RIDING_STYLED_ITEM 	// [4]
    public var super_eHIDDEN_ELEMENT_OVER_RIDING_STYLED_ITEM: eHIDDEN_ELEMENT_OVER_RIDING_STYLED_ITEM { return self } 	// [5]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT REDEF__ attribute
    /// - origin: SELF( ``eHIDDEN_ELEMENT_OVER_RIDING_STYLED_ITEM`` )
    public var STYLE_CONTEXT: SDAI.LIST<ePRESENTATION_VIEW>/*[1:1]*/  {
      get {
        return SDAI.UNWRAP( SDAI.LIST<ePRESENTATION_VIEW>( super_eCONTEXT_DEPENDENT_OVER_RIDING_STYLED_ITEM
          .partialEntity._style_context ) )
      }
      set(newValue) {
        let partial = super_eCONTEXT_DEPENDENT_OVER_RIDING_STYLED_ITEM.partialEntity
        partial._style_context = SDAI.UNWRAP(
          SDAI.LIST<sSTYLE_CONTEXT_SELECT>(newValue))
      }
    }

    /// __INVERSE__ attribute
    /// observing eREPRESENTATION .ITEMS
    /// - origin: SELF( ``eHIDDEN_ELEMENT_OVER_RIDING_STYLED_ITEM`` )
    public var CONTAINER: SDAI.SET<ePRESENTATION_VIEW>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._container )
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eOVER_RIDING_STYLED_ITEM`` )
    public var OVER_RIDDEN_STYLE: eSTYLED_ITEM {
      get {
        return SDAI.UNWRAP( super_eOVER_RIDING_STYLED_ITEM.partialEntity._over_ridden_style )
      }
      set(newValue) {
        let partial = super_eOVER_RIDING_STYLED_ITEM.partialEntity
        partial._over_ridden_style = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SELF( ``eHIDDEN_ELEMENT_OVER_RIDING_STYLED_ITEM`` )
    public var ITEM: eCAMERA_IMAGE {
      get {
        return SDAI.UNWRAP( eCAMERA_IMAGE( super_eSTYLED_ITEM.partialEntity._item ) )
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
      guard let partial = complexEntity?.partialEntityInstance(_hidden_element_over_riding_styled_item.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eSTYLED_ITEM.self) else { return nil }
      self.super_eSTYLED_ITEM = super2

      guard let super3 = complexEntity?.entityReference(eOVER_RIDING_STYLED_ITEM.self) else { return nil }
      self.super_eOVER_RIDING_STYLED_ITEM = super3

      guard let super4 = complexEntity?.entityReference(eCONTEXT_DEPENDENT_OVER_RIDING_STYLED_ITEM.self) else { return nil }
      self.super_eCONTEXT_DEPENDENT_OVER_RIDING_STYLED_ITEM = super4

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
      result[prefix2 + " .WHERE_wr1"] = _hidden_element_over_riding_styled_item.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "HIDDEN_ELEMENT_OVER_RIDING_STYLED_ITEM", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eSTYLED_ITEM.self)
      entityDef.add(supertype: eOVER_RIDING_STYLED_ITEM.self)
      entityDef.add(supertype: eCONTEXT_DEPENDENT_OVER_RIDING_STYLED_ITEM.self)
      entityDef.add(supertype: eHIDDEN_ELEMENT_OVER_RIDING_STYLED_ITEM.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "STYLE_CONTEXT", keyPath: \eHIDDEN_ELEMENT_OVER_RIDING_STYLED_ITEM.STYLE_CONTEXT, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "CONTAINER", keyPath: \eHIDDEN_ELEMENT_OVER_RIDING_STYLED_ITEM.CONTAINER, 
        kind: .inverse, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "OVER_RIDDEN_STYLE", keyPath: \eHIDDEN_ELEMENT_OVER_RIDING_STYLED_ITEM.OVER_RIDDEN_STYLE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ITEM", keyPath: \eHIDDEN_ELEMENT_OVER_RIDING_STYLED_ITEM.ITEM, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "STYLES", keyPath: \eHIDDEN_ELEMENT_OVER_RIDING_STYLED_ITEM.STYLES, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eHIDDEN_ELEMENT_OVER_RIDING_STYLED_ITEM.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
