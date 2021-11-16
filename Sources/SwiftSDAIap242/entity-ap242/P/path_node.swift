/* file: path_node.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY path_node
    ABSTRACT SUPERTYPE OF ( 
        ONEOF ( 
            point_to_point_path, 
            circular_path, 
            linear_path, 
            curve_based_path ) )
    SUBTYPE OF ( kinematic_path_segment );
      placement_end  : placement;
  END_ENTITY; -- path_node (line:23916 file:ap242ed2_mim_lf_v1.101.TY.exp)

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
          ENTITY: linear_path,	TYPE: transition_code	(as DERIVED)


  ENTITY(SELF)	path_node
    ATTR:  placement_end,	TYPE: placement -- EXPLICIT


  SUB- ENTITY(4)	point_to_point_path
    REDCR: transition,	TYPE: transition_code -- DERIVED (DYNAMIC)
      := discontinuous
      -- OVERRIDING ENTITY: kinematic_path_segment


  SUB- ENTITY(5)	circular_path
    ATTR:  via_point,	TYPE: cartesian_point -- EXPLICIT


  SUB- ENTITY(6)	linear_path
    REDCR: transition,	TYPE: transition_code -- DERIVED (DYNAMIC)
      := continuous
      -- OVERRIDING ENTITY: kinematic_path_segment


  SUB- ENTITY(7)	curve_based_path
    ATTR:  path_curve,	TYPE: curve -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _path_node : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      ePATH_NODE.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _placement_end: ePLACEMENT // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._placement_end.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._placement_end.value.isValueEqualOptionally(to: rhs._placement_end.value, visited: &comppairs)	{
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
      if let comp = self._placement_end.value.isValueEqualOptionally(to: rhs._placement_end.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(PLACEMENT_END: ePLACEMENT) {
      self._placement_end = PLACEMENT_END
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: ePLACEMENT.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( PLACEMENT_END: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY path_node
    ABSTRACT SUPERTYPE OF ( 
        ONEOF ( 
            point_to_point_path, 
            circular_path, 
            linear_path, 
            curve_based_path ) )
    SUBTYPE OF ( kinematic_path_segment );
      placement_end  : placement;
  END_ENTITY; -- path_node (line:23916 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class ePATH_NODE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _path_node.self
    }
    public let partialEntity: _path_node

    //MARK: SUPERTYPES
    public let super_eFOUNDED_ITEM: eFOUNDED_ITEM 	// [1]
    public let super_eKINEMATIC_PATH_SEGMENT: eKINEMATIC_PATH_SEGMENT 	// [2]
    public var super_ePATH_NODE: ePATH_NODE { return self } 	// [3]

    //MARK: SUBTYPES
    public var sub_ePOINT_TO_POINT_PATH: ePOINT_TO_POINT_PATH? {	// [4]
      return self.complexEntity.entityReference(ePOINT_TO_POINT_PATH.self)
    }

    public var sub_eCIRCULAR_PATH: eCIRCULAR_PATH? {	// [5]
      return self.complexEntity.entityReference(eCIRCULAR_PATH.self)
    }

    public var sub_eLINEAR_PATH: eLINEAR_PATH? {	// [6]
      return self.complexEntity.entityReference(eLINEAR_PATH.self)
    }

    public var sub_eCURVE_BASED_PATH: eCURVE_BASED_PATH? {	// [7]
      return self.complexEntity.entityReference(eCURVE_BASED_PATH.self)
    }


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

    /// __EXPLICIT(DYNAMIC)__ attribute
    /// - origin: SUPER( ``eKINEMATIC_PATH_SEGMENT`` )
    public var TRANSITION: nTRANSITION_CODE {
      get {
        if let resolved = _kinematic_path_segment._transition__provider(complex: self.complexEntity) {
          let value = resolved._transition__getter(complex: self.complexEntity)
          return value
        }
        else {
          return SDAI.UNWRAP( super_eKINEMATIC_PATH_SEGMENT.partialEntity._transition )
        }
      }
      set(newValue) {
        if let _ = _kinematic_path_segment._transition__provider(complex: self.complexEntity) { return }

        let partial = super_eKINEMATIC_PATH_SEGMENT.partialEntity
        partial._transition = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eCIRCULAR_PATH`` )
    public var VIA_POINT: eCARTESIAN_POINT?  {
      get {
        return sub_eCIRCULAR_PATH?.partialEntity._via_point
      }
      set(newValue) {
        guard let partial = sub_eCIRCULAR_PATH?.super_eCIRCULAR_PATH.partialEntity else { return }
        partial._via_point = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eCURVE_BASED_PATH`` )
    public var PATH_CURVE: eCURVE?  {
      get {
        return sub_eCURVE_BASED_PATH?.partialEntity._path_curve
      }
      set(newValue) {
        guard let partial = sub_eCURVE_BASED_PATH?.super_eCURVE_BASED_PATH.partialEntity else { return }
        partial._path_curve = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``ePATH_NODE`` )
    public var PLACEMENT_END: ePLACEMENT {
      get {
        return SDAI.UNWRAP( self.partialEntity._placement_end )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._placement_end = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_path_node.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eFOUNDED_ITEM.self) else { return nil }
      self.super_eFOUNDED_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eKINEMATIC_PATH_SEGMENT.self) else { return nil }
      self.super_eKINEMATIC_PATH_SEGMENT = super2

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "PATH_NODE", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eFOUNDED_ITEM.self)
      entityDef.add(supertype: eKINEMATIC_PATH_SEGMENT.self)
      entityDef.add(supertype: ePATH_NODE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "USERS", keyPath: \ePATH_NODE.USERS, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "T_END", keyPath: \ePATH_NODE.T_END, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "TRANSITION", keyPath: \ePATH_NODE.TRANSITION, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "VIA_POINT", keyPath: \ePATH_NODE.VIA_POINT, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "PATH_CURVE", keyPath: \ePATH_NODE.PATH_CURVE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "PLACEMENT_END", keyPath: \ePATH_NODE.PLACEMENT_END, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
