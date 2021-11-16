/* file: linear_path.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY linear_path
    SUBTYPE OF ( path_node );
    DERIVE
      SELF\kinematic_path_segment.transition : transition_code := continuous;
  END_ENTITY; -- linear_path (line:19056 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	founded_item
    ATTR:  users,	TYPE: SET [0 : ?] OF founded_item_select -- DERIVED
      := using_items( SELF, [] )


  SUPER- ENTITY(2)	kinematic_path_segment
    ATTR:  t_end,	TYPE: parameter_value -- EXPLICIT

    ATTR:  transition,	TYPE: transition_code -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: point_to_point_path,	TYPE: transition_code	(as DERIVED)
      *** ENTITY: linear_path,	TYPE: transition_code	(as DERIVED)


  SUPER- ENTITY(3)	path_node
    ATTR:  placement_end,	TYPE: placement -- EXPLICIT


  ENTITY(SELF)	linear_path
    REDCR: transition,	TYPE: transition_code -- DERIVED (DYNAMIC)
      := continuous
      -- OVERRIDING ENTITY: kinematic_path_segment


*/


//MARK: - Partial Entity
  public final class _linear_path : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eLINEAR_PATH.self
    }

    //ATTRIBUTES
    /// DERIVE ATTRIBUTE REDEFINITION(origin: eKINEMATIC_PATH_SEGMENT)
    /// - attribute value provider protocol conformance wrapper
    internal func _transition__getter(complex: SDAI.ComplexEntity) -> nTRANSITION_CODE {
      let SELF = complex.entityReference( eLINEAR_PATH.self )!
      return SDAI.UNWRAP( nTRANSITION_CODE(SELF.TRANSITION) )
    }
    /// DERIVE ATTRIBUTE REDEFINITION(origin: eKINEMATIC_PATH_SEGMENT)
    /// - gut of derived attribute logic
    internal func _transition__getter(SELF: eLINEAR_PATH) -> nTRANSITION_CODE {
      let value = CONTINUOUS
      return SDAI.UNWRAP( value )
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
  ENTITY linear_path
    SUBTYPE OF ( path_node );
    DERIVE
      SELF\kinematic_path_segment.transition : transition_code := continuous;
  END_ENTITY; -- linear_path (line:19056 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eLINEAR_PATH : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _linear_path.self
    }
    public let partialEntity: _linear_path

    //MARK: SUPERTYPES
    public let super_eFOUNDED_ITEM: eFOUNDED_ITEM 	// [1]
    public let super_eKINEMATIC_PATH_SEGMENT: eKINEMATIC_PATH_SEGMENT 	// [2]
    public let super_ePATH_NODE: ePATH_NODE 	// [3]
    public var super_eLINEAR_PATH: eLINEAR_PATH { return self } 	// [4]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eFOUNDED_ITEM`` )
    public var USERS: (SDAI.SET<sFOUNDED_ITEM_SELECT>/*[0:nil]*/ )?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"USERS") {
          return cached.value as! (SDAI.SET<sFOUNDED_ITEM_SELECT>/*[0:nil]*/ )? 
        }
        let origin = super_eFOUNDED_ITEM
        let value = SDAI.SET<sFOUNDED_ITEM_SELECT>(origin.partialEntity._users__getter(SELF: origin))
        updateCache(derivedAttributeName:"USERS", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eKINEMATIC_PATH_SEGMENT`` )
    public var T_END: tPARAMETER_VALUE {
      get {
        return SDAI.UNWRAP( super_eKINEMATIC_PATH_SEGMENT.partialEntity._t_end )
      }
      set(newValue) {
        let partial = super_eKINEMATIC_PATH_SEGMENT.partialEntity
        partial._t_end = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT REDEF(DERIVE)__ attribute
    /// - origin: SELF( ``eLINEAR_PATH`` )
    public var TRANSITION: nTRANSITION_CODE {
      get {
        if let cached = cachedValue(derivedAttributeName:"TRANSITION") {
          return cached.value as! nTRANSITION_CODE
        }
        let origin = self
        let value = SDAI.UNWRAP( origin.partialEntity._transition__getter(SELF: origin) )
        updateCache(derivedAttributeName:"TRANSITION", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``ePATH_NODE`` )
    public var PLACEMENT_END: ePLACEMENT {
      get {
        return SDAI.UNWRAP( super_ePATH_NODE.partialEntity._placement_end )
      }
      set(newValue) {
        let partial = super_ePATH_NODE.partialEntity
        partial._placement_end = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_linear_path.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eFOUNDED_ITEM.self) else { return nil }
      self.super_eFOUNDED_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eKINEMATIC_PATH_SEGMENT.self) else { return nil }
      self.super_eKINEMATIC_PATH_SEGMENT = super2

      guard let super3 = complexEntity?.entityReference(ePATH_NODE.self) else { return nil }
      self.super_ePATH_NODE = super3

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "LINEAR_PATH", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eFOUNDED_ITEM.self)
      entityDef.add(supertype: eKINEMATIC_PATH_SEGMENT.self)
      entityDef.add(supertype: ePATH_NODE.self)
      entityDef.add(supertype: eLINEAR_PATH.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "USERS", keyPath: \eLINEAR_PATH.USERS, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "T_END", keyPath: \eLINEAR_PATH.T_END, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "TRANSITION", keyPath: \eLINEAR_PATH.TRANSITION, 
        kind: .derivedRedeclaring, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "PLACEMENT_END", keyPath: \eLINEAR_PATH.PLACEMENT_END, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}

//MARK: - partial Entity Dynamic Attribute Protocol Conformances
extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF._linear_path :
  eKINEMATIC_PATH_SEGMENT__TRANSITION__provider {}
