/* file: camera_model_d3.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY camera_model_d3
    SUBTYPE OF ( camera_model );
      view_reference_system  : axis2_placement_3d;
      perspective_of_volume  : view_volume; (* observed by
          view_volume.camera_usages
          *)
    WHERE
      wr1: ( SELF\geometric_representation_item.dim = 3 );
  END_ENTITY; -- camera_model_d3 (line:8780 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(2)	geometric_representation_item
    ATTR:  dim,	TYPE: dimension_count -- DERIVED
      := dimension_of( SELF )


  SUPER- ENTITY(3)	camera_model
    (no local attributes)

  ENTITY(SELF)	camera_model_d3
    ATTR:  view_reference_system,	TYPE: axis2_placement_3d -- EXPLICIT

    ATTR:  perspective_of_volume,	TYPE: view_volume -- EXPLICIT
      -- observed by
        ENTITY(1): view_volume,	ATTR: camera_usages,	TYPE: SET [1 : ?] OF camera_model_d3


  SUB- ENTITY(5)	camera_model_d3_with_hlhsr
    ATTR:  hidden_line_surface_removal,	TYPE: BOOLEAN -- EXPLICIT


  SUB- ENTITY(6)	camera_model_d3_multi_clipping
    ATTR:  shape_clipping,	TYPE: SET [1 : ?] OF camera_model_d3_multi_clipping_intersection_select -- EXPLICIT


  SUB- ENTITY(7)	camera_model_with_light_sources
    ATTR:  sources,	TYPE: SET [1 : ?] OF light_source -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _camera_model_d3 : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eCAMERA_MODEL_D3.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _view_reference_system: eAXIS2_PLACEMENT_3D // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE (OBSERVED)
    public internal(set) var _perspective_of_volume: eVIEW_VOLUME{ // OBSERVED EXPLICIT ATTRIBUTE
      get {
        return __perspective_of_volume.copy()
      } // getter
      set {
        let newValue = newValue
        let observer = SDAI.EntityReferenceObserver(referencer: self, observerCode: _perspective_of_volume__observer.self)
        newValue.configure(with: observer)
        observer.observe(removing: SDAI.UNWRAP(seq:__perspective_of_volume.entityReferences),
          adding: SDAI.UNWRAP(seq: newValue.entityReferences) )
      } // setter
    }

    /// backing storage for observed attribute
    private var __perspective_of_volume: eVIEW_VOLUME

    /// attribute observer code
    internal class _perspective_of_volume__observer: SDAI.EntityReferenceObserver.ObserverCode {
      final override class func observe<RemovingEntities: Sequence, AddingEntities: Sequence>(
        referencer: SDAI.PartialEntity, removing: RemovingEntities, adding: AddingEntities )
        where RemovingEntities.Element: SDAI.EntityReference, AddingEntities.Element: SDAI.EntityReference
      {
        for referencedComplex in removing.map({ $0.complexEntity }) {
          for referencerOwner in referencer.owners {
            //OBSERVING ENTITY: eVIEW_VOLUME
            referencedComplex.partialEntityInstance(_view_volume.self)?
              ._camera_usages__observeRemovedReference(in: referencerOwner)
          }
        }

        for referencedComplex in adding.map({ $0.complexEntity }) {
          for referencerOwner in referencer.owners {
            //OBSERVING ENTITY: eVIEW_VOLUME
            referencedComplex.partialEntityInstance(_view_volume.self)?
              ._camera_usages__observeAddedReference(in: referencerOwner)
          }
        }
      }

      final override class func observe(newReferencerOwner referencerOwner: SDAI.ComplexEntity) {
        guard let attrValue = referencerOwner.partialEntityInstance(_camera_model_d3.self)?._perspective_of_volume else { return }
        for referencedComplex in attrValue.entityReferences.map({ $0.complexEntity }) {
        //OBSERVING ENTITY: eVIEW_VOLUME
        referencedComplex.partialEntityInstance(_view_volume.self)?
          ._camera_usages__observeAddedReference(in: referencerOwner)
        }
      }

      final override class func observe(leavingReferencerOwner referencerOwner: SDAI.ComplexEntity) {
        guard let attrValue = referencerOwner.partialEntityInstance(_camera_model_d3.self)?._perspective_of_volume else { return }
        for referencedComplex in attrValue.entityReferences.map({ $0.complexEntity }) {
        //OBSERVING ENTITY: eVIEW_VOLUME
        referencedComplex.partialEntityInstance(_view_volume.self)?
          ._camera_usages__observe(leavingReferencerOwner: referencerOwner)
        }
      }

    }

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sMECHANICAL_DESIGN_GEOMETRIC_PRESENTATION_REPRESENTATION_ITEMS.typeName)) // -> Self
      members.insert(SDAI.STRING(sMECHANICAL_DESIGN_SHADED_PRESENTATION_REPRESENTATION_ITEMS.typeName)) // -> Self
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._view_reference_system.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._perspective_of_volume.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._view_reference_system.value.isValueEqualOptionally(to: rhs._view_reference_system.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._perspective_of_volume.value.isValueEqualOptionally(to: rhs._perspective_of_volume.value, visited: &comppairs)	{
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
      if let comp = self._view_reference_system.value.isValueEqualOptionally(to: rhs._view_reference_system.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._perspective_of_volume.value.isValueEqualOptionally(to: rhs._perspective_of_volume.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eCAMERA_MODEL_D3?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.GROUP_REF(eGEOMETRIC_REPRESENTATION_ITEM.self)
      let _TEMP2 = _TEMP1?.DIM
      let _TEMP3 = _TEMP2 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(3))
      return _TEMP3
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(VIEW_REFERENCE_SYSTEM: eAXIS2_PLACEMENT_3D, PERSPECTIVE_OF_VOLUME: eVIEW_VOLUME) {
      self._view_reference_system = VIEW_REFERENCE_SYSTEM
      self.__perspective_of_volume = PERSPECTIVE_OF_VOLUME
      super.init(asAbstructSuperclass:())

      self._perspective_of_volume.configure(with: SDAI.EntityReferenceObserver(referencer: self, observerCode: _perspective_of_volume__observer.self))
    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: eAXIS2_PLACEMENT_3D.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: eVIEW_VOLUME.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( VIEW_REFERENCE_SYSTEM: p0, PERSPECTIVE_OF_VOLUME: p1 )
    }

    /// broadcasting a new complex entity becoming an owner of the partial entity
    final public override func broadcast(addedToComplex complex: SDAI.ComplexEntity) {
      _perspective_of_volume__observer.observe(newReferencerOwner: complex)
    }

    /// broadcasting a complex entity withdrawing an owner of the partial entity
    final public override func broadcast(removedFromComplex complex: SDAI.ComplexEntity) {
      _perspective_of_volume__observer.observe(leavingReferencerOwner: complex)
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY camera_model_d3
    SUBTYPE OF ( camera_model );
      view_reference_system  : axis2_placement_3d;
      perspective_of_volume  : view_volume; (* observed by
          view_volume.camera_usages
          *)
    WHERE
      wr1: ( SELF\geometric_representation_item.dim = 3 );
  END_ENTITY; -- camera_model_d3 (line:8780 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eCAMERA_MODEL_D3 : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _camera_model_d3.self
    }
    public let partialEntity: _camera_model_d3

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_eCAMERA_MODEL: eCAMERA_MODEL 	// [3]
    public var super_eCAMERA_MODEL_D3: eCAMERA_MODEL_D3 { return self } 	// [4]

    //MARK: SUBTYPES
    public var sub_eCAMERA_MODEL_D3_WITH_HLHSR: eCAMERA_MODEL_D3_WITH_HLHSR? {	// [5]
      return self.complexEntity.entityReference(eCAMERA_MODEL_D3_WITH_HLHSR.self)
    }

    public var sub_eCAMERA_MODEL_D3_MULTI_CLIPPING: eCAMERA_MODEL_D3_MULTI_CLIPPING? {	// [6]
      return self.complexEntity.entityReference(eCAMERA_MODEL_D3_MULTI_CLIPPING.self)
    }

    public var sub_eCAMERA_MODEL_WITH_LIGHT_SOURCES: eCAMERA_MODEL_WITH_LIGHT_SOURCES? {	// [7]
      return self.complexEntity.entityReference(eCAMERA_MODEL_WITH_LIGHT_SOURCES.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eCAMERA_MODEL_D3_MULTI_CLIPPING`` )
    public var SHAPE_CLIPPING: (SDAI.SET<sCAMERA_MODEL_D3_MULTI_CLIPPING_INTERSECTION_SELECT>/*[1:nil]*/ )?  {
      get {
        return sub_eCAMERA_MODEL_D3_MULTI_CLIPPING?.partialEntity._shape_clipping
      }
      set(newValue) {
        guard let partial = sub_eCAMERA_MODEL_D3_MULTI_CLIPPING?.super_eCAMERA_MODEL_D3_MULTI_CLIPPING
          .partialEntity else { return }
        partial._shape_clipping = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eCAMERA_MODEL_WITH_LIGHT_SOURCES`` )
    public var SOURCES: (SDAI.SET<eLIGHT_SOURCE>/*[1:nil]*/ )?  {
      get {
        return sub_eCAMERA_MODEL_WITH_LIGHT_SOURCES?.partialEntity._sources
      }
      set(newValue) {
        guard let partial = sub_eCAMERA_MODEL_WITH_LIGHT_SOURCES?.super_eCAMERA_MODEL_WITH_LIGHT_SOURCES
          .partialEntity else { return }
        partial._sources = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eCAMERA_MODEL_D3_WITH_HLHSR`` )
    public var HIDDEN_LINE_SURFACE_REMOVAL: SDAI.BOOLEAN?  {
      get {
        return sub_eCAMERA_MODEL_D3_WITH_HLHSR?.partialEntity._hidden_line_surface_removal
      }
      set(newValue) {
        guard let partial = sub_eCAMERA_MODEL_D3_WITH_HLHSR?.super_eCAMERA_MODEL_D3_WITH_HLHSR.partialEntity
          else { return }
        partial._hidden_line_surface_removal = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eCAMERA_MODEL_D3`` )
    public var VIEW_REFERENCE_SYSTEM: eAXIS2_PLACEMENT_3D {
      get {
        return SDAI.UNWRAP( self.partialEntity._view_reference_system )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._view_reference_system = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT(OBSERVED)__ attribute
    /// - origin: SELF( ``eCAMERA_MODEL_D3`` )
    public var PERSPECTIVE_OF_VOLUME: eVIEW_VOLUME {
      get {
        return SDAI.UNWRAP( self.partialEntity._perspective_of_volume )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._perspective_of_volume = SDAI.UNWRAP(newValue)
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

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eGEOMETRIC_REPRESENTATION_ITEM`` )
    public var DIM: tDIMENSION_COUNT?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"DIM") {
          return cached.value as! tDIMENSION_COUNT? 
        }
        let origin = super_eGEOMETRIC_REPRESENTATION_ITEM
        let value = tDIMENSION_COUNT(origin.partialEntity._dim__getter(SELF: origin))
        updateCache(derivedAttributeName:"DIM", value:value)
        return value
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_camera_model_d3.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(eCAMERA_MODEL.self) else { return nil }
      self.super_eCAMERA_MODEL = super3

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
      result[prefix2 + " .WHERE_wr1"] = _camera_model_d3.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "CAMERA_MODEL_D3", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eCAMERA_MODEL.self)
      entityDef.add(supertype: eCAMERA_MODEL_D3.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "SHAPE_CLIPPING", keyPath: \eCAMERA_MODEL_D3.SHAPE_CLIPPING, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "SOURCES", keyPath: \eCAMERA_MODEL_D3.SOURCES, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "HIDDEN_LINE_SURFACE_REMOVAL", keyPath: \eCAMERA_MODEL_D3.HIDDEN_LINE_SURFACE_REMOVAL, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "VIEW_REFERENCE_SYSTEM", keyPath: \eCAMERA_MODEL_D3.VIEW_REFERENCE_SYSTEM, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "PERSPECTIVE_OF_VOLUME", keyPath: \eCAMERA_MODEL_D3.PERSPECTIVE_OF_VOLUME, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eCAMERA_MODEL_D3.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \eCAMERA_MODEL_D3.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
