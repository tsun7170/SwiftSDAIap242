/* file: mapped_item.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY mapped_item
    SUBTYPE OF ( representation_item );
      mapping_source  : representation_map; (* observed by
          representation_map.map_usage
          *)
      mapping_target  : representation_item;
    WHERE
      wr1: acyclic_mapped_representation( SELF );
  END_ENTITY; -- mapped_item (line:20089 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  ENTITY(SELF)	mapped_item
    ATTR:  mapping_source,	TYPE: representation_map -- EXPLICIT
      -- observed by
        ENTITY(1): representation_map,	ATTR: map_usage,	TYPE: SET [1 : ?] OF mapped_item
      -- possibly overriden by
          ENTITY: camera_image,	TYPE: camera_usage
          ENTITY: annotation_symbol,	TYPE: symbol_representation_map

    ATTR:  mapping_target,	TYPE: representation_item -- EXPLICIT
      -- possibly overriden by
          ENTITY: annotation_text_character,	TYPE: axis2_placement
          ENTITY: camera_image,	TYPE: planar_box
          ENTITY: annotation_text,	TYPE: axis2_placement
          ENTITY: annotation_symbol,	TYPE: symbol_target


  SUB- ENTITY(3)	annotation_text_character
    ATTR:  alignment,	TYPE: text_alignment -- EXPLICIT

    REDCR: mapping_target,	TYPE: axis2_placement -- EXPLICIT
      -- OVERRIDING ENTITY: mapped_item


  SUB- ENTITY(4)	camera_image_3d_with_scale
    ATTR:  scale,	TYPE: positive_ratio_measure -- DERIVED	(AMBIGUOUS/MASKED)
      := SELF\mapped_item.mapping_target\planar_extent.size_in_x / SELF\mapped_item.mapping_source.
        mapping_origin\camera_model_d3.perspective_of_volume.view_window.size_in_x


  SUB- ENTITY(5)	camera_image_2d_with_scale
    ATTR:  scale,	TYPE: positive_ratio_measure -- DERIVED	(AMBIGUOUS/MASKED)
      := SELF\mapped_item.mapping_target\planar_extent.size_in_x / SELF\mapped_item.mapping_source.
        mapping_origin\camera_model_d2.view_window\planar_extent.size_in_x


  SUB- ENTITY(6)	camera_image
    REDCR: mapping_source,	TYPE: camera_usage -- EXPLICIT
      -- OVERRIDING ENTITY: mapped_item

    REDCR: mapping_target,	TYPE: planar_box -- EXPLICIT
      -- OVERRIDING ENTITY: mapped_item


  SUB- ENTITY(7)	user_defined_curve_font
    (no local attributes)

  SUB- ENTITY(8)	annotation_text
    REDCR: mapping_target,	TYPE: axis2_placement -- EXPLICIT
      -- OVERRIDING ENTITY: mapped_item


  SUB- ENTITY(9)	included_text_block
    (no local attributes)

  SUB- ENTITY(10)	path_area_with_parameters
    (no local attributes)

  SUB- ENTITY(11)	repositioned_neutral_sketch
    ATTR:  map,	TYPE: representation_map -- DERIVED
      := SELF\mapped_item.mapping_source


  SUB- ENTITY(12)	user_defined_terminator_symbol
    (no local attributes)

  SUB- ENTITY(13)	dimension_text_associativity
    (no local attributes)

  SUB- ENTITY(14)	user_defined_marker
    (no local attributes)

  SUB- ENTITY(15)	annotation_symbol
    REDCR: mapping_source,	TYPE: symbol_representation_map -- EXPLICIT
      -- OVERRIDING ENTITY: mapped_item

    REDCR: mapping_target,	TYPE: symbol_target -- EXPLICIT
      -- OVERRIDING ENTITY: mapped_item


*/


//MARK: - Partial Entity
  public final class _mapped_item : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eMAPPED_ITEM.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE (OBSERVED)
    public internal(set) var _mapping_source: eREPRESENTATION_MAP{ // OBSERVED EXPLICIT ATTRIBUTE
      get {
        return __mapping_source.copy()
      } // getter
      set {
        let newValue = newValue
        let observer = SDAI.EntityReferenceObserver(referencer: self, observerCode: _mapping_source__observer.self)
        newValue.configure(with: observer)
        observer.observe(removing: SDAI.UNWRAP(seq:__mapping_source.entityReferences),
          adding: SDAI.UNWRAP(seq: newValue.entityReferences) )
      } // setter
    }

    /// backing storage for observed attribute
    private var __mapping_source: eREPRESENTATION_MAP

    /// attribute observer code
    internal class _mapping_source__observer: SDAI.EntityReferenceObserver.ObserverCode {
      final override class func observe<RemovingEntities: Sequence, AddingEntities: Sequence>(
        referencer: SDAI.PartialEntity, removing: RemovingEntities, adding: AddingEntities )
        where RemovingEntities.Element: SDAI.EntityReference, AddingEntities.Element: SDAI.EntityReference
      {
        for referencedComplex in removing.map({ $0.complexEntity }) {
          for referencerOwner in referencer.owners {
            //OBSERVING ENTITY: eREPRESENTATION_MAP
            referencedComplex.partialEntityInstance(_representation_map.self)?
              ._map_usage__observeRemovedReference(in: referencerOwner)
          }
        }

        for referencedComplex in adding.map({ $0.complexEntity }) {
          for referencerOwner in referencer.owners {
            //OBSERVING ENTITY: eREPRESENTATION_MAP
            referencedComplex.partialEntityInstance(_representation_map.self)?
              ._map_usage__observeAddedReference(in: referencerOwner)
          }
        }
      }

      final override class func observe(newReferencerOwner referencerOwner: SDAI.ComplexEntity) {
        guard let attrValue = referencerOwner.partialEntityInstance(_mapped_item.self)?._mapping_source else { return }
        for referencedComplex in attrValue.entityReferences.map({ $0.complexEntity }) {
        //OBSERVING ENTITY: eREPRESENTATION_MAP
        referencedComplex.partialEntityInstance(_representation_map.self)?
          ._map_usage__observeAddedReference(in: referencerOwner)
        }
      }

      final override class func observe(leavingReferencerOwner referencerOwner: SDAI.ComplexEntity) {
        guard let attrValue = referencerOwner.partialEntityInstance(_mapped_item.self)?._mapping_source else { return }
        for referencedComplex in attrValue.entityReferences.map({ $0.complexEntity }) {
        //OBSERVING ENTITY: eREPRESENTATION_MAP
        referencedComplex.partialEntityInstance(_representation_map.self)?
          ._map_usage__observe(leavingReferencerOwner: referencerOwner)
        }
      }

    }

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _mapping_target: eREPRESENTATION_ITEM // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sMULTI_LANGUAGE_ATTRIBUTE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sDRAUGHTING_MODEL_ITEM_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sCSG_2D_SHAPE_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sMECHANICAL_DESIGN_GEOMETRIC_PRESENTATION_AREA_ITEMS.typeName)) // -> Self
      members.insert(SDAI.STRING(sMECHANICAL_DESIGN_SHADED_PRESENTATION_AREA_ITEMS.typeName)) // -> Self
      members.insert(SDAI.STRING(sSTYLED_ITEM_TARGET.typeName)) // -> Self
      members.insert(SDAI.STRING(sCHAINED_REPRESENTATION_LINK.typeName)) // -> Self
      members.insert(SDAI.STRING(sATTRIBUTE_LANGUAGE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sPOINT_PLACEMENT_SHAPE_REPRESENTATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sMECHANICAL_DESIGN_GEOMETRIC_PRESENTATION_REPRESENTATION_ITEMS.typeName)) // -> Self
      members.insert(SDAI.STRING(sMECHANICAL_DESIGN_SHADED_PRESENTATION_REPRESENTATION_ITEMS.typeName)) // -> Self
      members.insert(SDAI.STRING(sGROUPABLE_ITEM.typeName)) // -> Self
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._mapping_source.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._mapping_target.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._mapping_source.value.isValueEqualOptionally(to: rhs._mapping_source.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._mapping_target.value.isValueEqualOptionally(to: rhs._mapping_target.value, visited: &comppairs)	{
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
      if let comp = self._mapping_source.value.isValueEqualOptionally(to: rhs._mapping_source.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._mapping_target.value.isValueEqualOptionally(to: rhs._mapping_target.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eMAPPED_ITEM?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = ACYCLIC_MAPPED_REPRESENTATION(SELF)
      return SDAI.LOGICAL(_TEMP1)
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(MAPPING_SOURCE: eREPRESENTATION_MAP, MAPPING_TARGET: eREPRESENTATION_ITEM) {
      self.__mapping_source = MAPPING_SOURCE
      self._mapping_target = MAPPING_TARGET
      super.init(asAbstructSuperclass:())

      self._mapping_source.configure(with: SDAI.EntityReferenceObserver(referencer: self, observerCode: _mapping_source__observer.self))
    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: eREPRESENTATION_MAP.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: eREPRESENTATION_ITEM.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( MAPPING_SOURCE: p0, MAPPING_TARGET: p1 )
    }

    /// broadcasting a new complex entity becoming an owner of the partial entity
    final public override func broadcast(addedToComplex complex: SDAI.ComplexEntity) {
      _mapping_source__observer.observe(newReferencerOwner: complex)
    }

    /// broadcasting a complex entity withdrawing an owner of the partial entity
    final public override func broadcast(removedFromComplex complex: SDAI.ComplexEntity) {
      _mapping_source__observer.observe(leavingReferencerOwner: complex)
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY mapped_item
    SUBTYPE OF ( representation_item );
      mapping_source  : representation_map; (* observed by
          representation_map.map_usage
          *)
      mapping_target  : representation_item;
    WHERE
      wr1: acyclic_mapped_representation( SELF );
  END_ENTITY; -- mapped_item (line:20089 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eMAPPED_ITEM : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _mapped_item.self
    }
    public let partialEntity: _mapped_item

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public var super_eMAPPED_ITEM: eMAPPED_ITEM { return self } 	// [2]

    //MARK: SUBTYPES
    public var sub_eANNOTATION_TEXT_CHARACTER: eANNOTATION_TEXT_CHARACTER? {	// [3]
      return self.complexEntity.entityReference(eANNOTATION_TEXT_CHARACTER.self)
    }

    public var sub_eCAMERA_IMAGE_3D_WITH_SCALE: eCAMERA_IMAGE_3D_WITH_SCALE? {	// [4]
      return self.complexEntity.entityReference(eCAMERA_IMAGE_3D_WITH_SCALE.self)
    }

    public var sub_eCAMERA_IMAGE_2D_WITH_SCALE: eCAMERA_IMAGE_2D_WITH_SCALE? {	// [5]
      return self.complexEntity.entityReference(eCAMERA_IMAGE_2D_WITH_SCALE.self)
    }

    public var sub_eCAMERA_IMAGE: eCAMERA_IMAGE? {	// [6]
      return self.complexEntity.entityReference(eCAMERA_IMAGE.self)
    }

    public var sub_eUSER_DEFINED_CURVE_FONT: eUSER_DEFINED_CURVE_FONT? {	// [7]
      return self.complexEntity.entityReference(eUSER_DEFINED_CURVE_FONT.self)
    }

    public var sub_eANNOTATION_TEXT: eANNOTATION_TEXT? {	// [8]
      return self.complexEntity.entityReference(eANNOTATION_TEXT.self)
    }

    public var sub_eINCLUDED_TEXT_BLOCK: eINCLUDED_TEXT_BLOCK? {	// [9]
      return self.complexEntity.entityReference(eINCLUDED_TEXT_BLOCK.self)
    }

    public var sub_ePATH_AREA_WITH_PARAMETERS: ePATH_AREA_WITH_PARAMETERS? {	// [10]
      return self.complexEntity.entityReference(ePATH_AREA_WITH_PARAMETERS.self)
    }

    public var sub_eREPOSITIONED_NEUTRAL_SKETCH: eREPOSITIONED_NEUTRAL_SKETCH? {	// [11]
      return self.complexEntity.entityReference(eREPOSITIONED_NEUTRAL_SKETCH.self)
    }

    public var sub_eUSER_DEFINED_TERMINATOR_SYMBOL: eUSER_DEFINED_TERMINATOR_SYMBOL? {	// [12]
      return self.complexEntity.entityReference(eUSER_DEFINED_TERMINATOR_SYMBOL.self)
    }

    public var sub_eDIMENSION_TEXT_ASSOCIATIVITY: eDIMENSION_TEXT_ASSOCIATIVITY? {	// [13]
      return self.complexEntity.entityReference(eDIMENSION_TEXT_ASSOCIATIVITY.self)
    }

    public var sub_eUSER_DEFINED_MARKER: eUSER_DEFINED_MARKER? {	// [14]
      return self.complexEntity.entityReference(eUSER_DEFINED_MARKER.self)
    }

    public var sub_eANNOTATION_SYMBOL: eANNOTATION_SYMBOL? {	// [15]
      return self.complexEntity.entityReference(eANNOTATION_SYMBOL.self)
    }


    //MARK: ATTRIBUTES
    // SCALE: (2 AMBIGUOUS REFs)

    /// __DERIVE__ attribute
    /// - origin: SUB( ``eREPOSITIONED_NEUTRAL_SKETCH`` )
    public var MAP: eREPRESENTATION_MAP?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"MAP") {
          return cached.value as! eREPRESENTATION_MAP? 
        }
        guard let origin = sub_eREPOSITIONED_NEUTRAL_SKETCH else { return nil }
        let value = eREPRESENTATION_MAP(origin.partialEntity._map__getter(SELF: origin))
        updateCache(derivedAttributeName:"MAP", value:value)
        return value
      }
    }

    /// __EXPLICIT(OBSERVED)__ attribute
    /// - origin: SELF( ``eMAPPED_ITEM`` )
    public var MAPPING_SOURCE: eREPRESENTATION_MAP {
      get {
        return SDAI.UNWRAP( self.partialEntity._mapping_source )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._mapping_source = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eMAPPED_ITEM`` )
    public var MAPPING_TARGET: eREPRESENTATION_ITEM {
      get {
        return SDAI.UNWRAP( self.partialEntity._mapping_target )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._mapping_target = SDAI.UNWRAP(newValue)
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

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eANNOTATION_TEXT_CHARACTER`` )
    public var ALIGNMENT: tTEXT_ALIGNMENT?  {
      get {
        return sub_eANNOTATION_TEXT_CHARACTER?.partialEntity._alignment
      }
      set(newValue) {
        guard let partial = sub_eANNOTATION_TEXT_CHARACTER?.super_eANNOTATION_TEXT_CHARACTER.partialEntity
          else { return }
        partial._alignment = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_mapped_item.self) else { return nil }
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
      result[prefix2 + " .WHERE_wr1"] = _mapped_item.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "MAPPED_ITEM", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eMAPPED_ITEM.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "MAP", keyPath: \eMAPPED_ITEM.MAP, 
        kind: .derived, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "MAPPING_SOURCE", keyPath: \eMAPPED_ITEM.MAPPING_SOURCE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "MAPPING_TARGET", keyPath: \eMAPPED_ITEM.MAPPING_TARGET, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eMAPPED_ITEM.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ALIGNMENT", keyPath: \eMAPPED_ITEM.ALIGNMENT, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
