/* file: user_defined_marker.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY user_defined_marker
    SUBTYPE OF ( mapped_item, pre_defined_marker );
  END_ENTITY; -- user_defined_marker (line:33368 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT	(AMBIGUOUS/MASKED)


  SUPER- ENTITY(2)	mapped_item
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


  SUPER- ENTITY(3)	pre_defined_item
    ATTR:  name,	TYPE: label -- EXPLICIT	(AMBIGUOUS/MASKED)


  SUPER- ENTITY(4)	pre_defined_marker
    (no local attributes)

  ENTITY(SELF)	user_defined_marker
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _user_defined_marker : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eUSER_DEFINED_MARKER.self
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
  ENTITY user_defined_marker
    SUBTYPE OF ( mapped_item, pre_defined_marker );
  END_ENTITY; -- user_defined_marker (line:33368 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eUSER_DEFINED_MARKER : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _user_defined_marker.self
    }
    public let partialEntity: _user_defined_marker

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eMAPPED_ITEM: eMAPPED_ITEM 	// [2]
    public let super_ePRE_DEFINED_ITEM: ePRE_DEFINED_ITEM 	// [3]
    public let super_ePRE_DEFINED_MARKER: ePRE_DEFINED_MARKER 	// [4]
    public var super_eUSER_DEFINED_MARKER: eUSER_DEFINED_MARKER { return self } 	// [5]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    // NAME: (2 AMBIGUOUS REFs)

    /// __EXPLICIT(OBSERVED)__ attribute
    /// - origin: SUPER( ``eMAPPED_ITEM`` )
    public var MAPPING_SOURCE: eREPRESENTATION_MAP {
      get {
        return SDAI.UNWRAP( super_eMAPPED_ITEM.partialEntity._mapping_source )
      }
      set(newValue) {
        let partial = super_eMAPPED_ITEM.partialEntity
        partial._mapping_source = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eMAPPED_ITEM`` )
    public var MAPPING_TARGET: eREPRESENTATION_ITEM {
      get {
        return SDAI.UNWRAP( super_eMAPPED_ITEM.partialEntity._mapping_target )
      }
      set(newValue) {
        let partial = super_eMAPPED_ITEM.partialEntity
        partial._mapping_target = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_user_defined_marker.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eMAPPED_ITEM.self) else { return nil }
      self.super_eMAPPED_ITEM = super2

      guard let super3 = complexEntity?.entityReference(ePRE_DEFINED_ITEM.self) else { return nil }
      self.super_ePRE_DEFINED_ITEM = super3

      guard let super4 = complexEntity?.entityReference(ePRE_DEFINED_MARKER.self) else { return nil }
      self.super_ePRE_DEFINED_MARKER = super4

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "USER_DEFINED_MARKER", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eMAPPED_ITEM.self)
      entityDef.add(supertype: ePRE_DEFINED_ITEM.self)
      entityDef.add(supertype: ePRE_DEFINED_MARKER.self)
      entityDef.add(supertype: eUSER_DEFINED_MARKER.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "MAPPING_SOURCE", keyPath: \eUSER_DEFINED_MARKER.MAPPING_SOURCE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "MAPPING_TARGET", keyPath: \eUSER_DEFINED_MARKER.MAPPING_TARGET, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
