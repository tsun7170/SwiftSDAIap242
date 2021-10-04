/* file: kinematic_path_defined_by_nodes.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY kinematic_path_defined_by_nodes
    SUBTYPE OF ( kinematic_path );
      SELF\kinematic_path.segments  : LIST [1 : ?] OF path_node;
      placement_start               : placement;
  END_ENTITY; -- kinematic_path_defined_by_nodes (line:18777 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(2)	geometric_representation_item
    ATTR:  dim,	TYPE: dimension_count -- DERIVED
      := dimension_of( SELF )


  SUPER- ENTITY(3)	kinematic_path
    ATTR:  segments,	TYPE: LIST [1 : ?] OF kinematic_path_segment -- EXPLICIT
      -- possibly overriden by
      *** ENTITY: kinematic_path_defined_by_nodes,	TYPE: LIST [1 : ?] OF path_node
          ENTITY: kinematic_path_defined_by_curves,	TYPE: LIST [1 : ?] OF curve_based_path_with_orientation

    ATTR:  t_start,	TYPE: parameter_value -- EXPLICIT

    ATTR:  n_segments,	TYPE: INTEGER -- DERIVED
      := SIZEOF( segments )

    ATTR:  closed_path,	TYPE: LOGICAL -- DERIVED
      := segments[n_segments].transition <> discontinuous


  ENTITY(SELF)	kinematic_path_defined_by_nodes
    REDCR: segments,	TYPE: LIST [1 : ?] OF path_node -- EXPLICIT
      -- OVERRIDING ENTITY: kinematic_path

    ATTR:  placement_start,	TYPE: placement -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _kinematic_path_defined_by_nodes : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eKINEMATIC_PATH_DEFINED_BY_NODES.self
    }

    //ATTRIBUTES
    /* override var _segments: SDAI.LIST<ePATH_NODE>[1:nil] 	//EXPLICIT REDEFINITION(eKINEMATIC_PATH) */

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _placement_start: ePLACEMENT // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._placement_start.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._placement_start.value.isValueEqualOptionally(to: rhs._placement_start.value, visited: &comppairs)	{
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
      if let comp = self._placement_start.value.isValueEqualOptionally(to: rhs._placement_start.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(PLACEMENT_START: ePLACEMENT) {
      self._placement_start = PLACEMENT_START
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: ePLACEMENT.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( PLACEMENT_START: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY kinematic_path_defined_by_nodes
    SUBTYPE OF ( kinematic_path );
      SELF\kinematic_path.segments  : LIST [1 : ?] OF path_node;
      placement_start               : placement;
  END_ENTITY; -- kinematic_path_defined_by_nodes (line:18777 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eKINEMATIC_PATH_DEFINED_BY_NODES : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _kinematic_path_defined_by_nodes.self
    }
    public let partialEntity: _kinematic_path_defined_by_nodes

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_eKINEMATIC_PATH: eKINEMATIC_PATH 	// [3]
    public var super_eKINEMATIC_PATH_DEFINED_BY_NODES: eKINEMATIC_PATH_DEFINED_BY_NODES { return self } 	// [4]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eKINEMATIC_PATH`` )
    public var T_START: tPARAMETER_VALUE {
      get {
        return SDAI.UNWRAP( super_eKINEMATIC_PATH.partialEntity._t_start )
      }
      set(newValue) {
        let partial = super_eKINEMATIC_PATH.partialEntity
        partial._t_start = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eKINEMATIC_PATH`` )
    public var CLOSED_PATH: SDAI.LOGICAL {
      get {
        if let cached = cachedValue(derivedAttributeName:"CLOSED_PATH") {
          return cached.value as! SDAI.LOGICAL
        }
        let origin = super_eKINEMATIC_PATH
        let value = SDAI.LOGICAL( SDAI.LOGICAL(origin.partialEntity._closed_path__getter(SELF: origin)) )
        updateCache(derivedAttributeName:"CLOSED_PATH", value:value)
        return value
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eKINEMATIC_PATH`` )
    public var N_SEGMENTS: SDAI.INTEGER?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"N_SEGMENTS") {
          return cached.value as! SDAI.INTEGER? 
        }
        let origin = super_eKINEMATIC_PATH
        let value = SDAI.INTEGER(origin.partialEntity._n_segments__getter(SELF: origin))
        updateCache(derivedAttributeName:"N_SEGMENTS", value:value)
        return value
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SELF( ``eKINEMATIC_PATH_DEFINED_BY_NODES`` )
    public var SEGMENTS: SDAI.LIST<ePATH_NODE>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( SDAI.LIST<ePATH_NODE>( super_eKINEMATIC_PATH.partialEntity._segments ) )
      }
      set(newValue) {
        let partial = super_eKINEMATIC_PATH.partialEntity
        partial._segments = SDAI.UNWRAP(
          SDAI.LIST<eKINEMATIC_PATH_SEGMENT>(newValue))
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eKINEMATIC_PATH_DEFINED_BY_NODES`` )
    public var PLACEMENT_START: ePLACEMENT {
      get {
        return SDAI.UNWRAP( self.partialEntity._placement_start )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._placement_start = SDAI.UNWRAP(newValue)
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
      guard let partial = complexEntity?.partialEntityInstance(_kinematic_path_defined_by_nodes.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(eKINEMATIC_PATH.self) else { return nil }
      self.super_eKINEMATIC_PATH = super3

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "KINEMATIC_PATH_DEFINED_BY_NODES", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eKINEMATIC_PATH.self)
      entityDef.add(supertype: eKINEMATIC_PATH_DEFINED_BY_NODES.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "T_START", keyPath: \eKINEMATIC_PATH_DEFINED_BY_NODES.T_START, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "CLOSED_PATH", keyPath: \eKINEMATIC_PATH_DEFINED_BY_NODES.CLOSED_PATH, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "N_SEGMENTS", keyPath: \eKINEMATIC_PATH_DEFINED_BY_NODES.N_SEGMENTS, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SEGMENTS", keyPath: \eKINEMATIC_PATH_DEFINED_BY_NODES.SEGMENTS, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "PLACEMENT_START", keyPath: \eKINEMATIC_PATH_DEFINED_BY_NODES.PLACEMENT_START, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eKINEMATIC_PATH_DEFINED_BY_NODES.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \eKINEMATIC_PATH_DEFINED_BY_NODES.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
