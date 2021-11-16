/* file: subedge.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY subedge
    SUBTYPE OF ( edge );
      parent_edge  : edge;
  END_ENTITY; -- subedge (line:31035 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(2)	topological_representation_item
    ATTR:  permanent_id,	TYPE: identifier -- DERIVED
      := get_id_value( SELF )

    ATTR:  permanent_aggregate_id,	TYPE: identifier -- DERIVED
      := get_aggregate_id_value( SELF )


  SUPER- ENTITY(3)	edge
    ATTR:  edge_start,	TYPE: vertex -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: oriented_edge,	TYPE: vertex	(as DERIVED)
          ENTITY: kinematic_joint,	TYPE: kinematic_link

    ATTR:  edge_end,	TYPE: vertex -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: oriented_edge,	TYPE: vertex	(as DERIVED)
          ENTITY: kinematic_joint,	TYPE: kinematic_link


  ENTITY(SELF)	subedge
    ATTR:  parent_edge,	TYPE: edge -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _subedge : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eSUBEDGE.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _parent_edge: eEDGE // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sLOCATION_OF_EXTREME_VALUE_SELECT.typeName)) // -> Self
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._parent_edge.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._parent_edge.value.isValueEqualOptionally(to: rhs._parent_edge.value, visited: &comppairs)	{
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
      if let comp = self._parent_edge.value.isValueEqualOptionally(to: rhs._parent_edge.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(PARENT_EDGE: eEDGE) {
      self._parent_edge = PARENT_EDGE
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: eEDGE.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( PARENT_EDGE: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY subedge
    SUBTYPE OF ( edge );
      parent_edge  : edge;
  END_ENTITY; -- subedge (line:31035 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eSUBEDGE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _subedge.self
    }
    public let partialEntity: _subedge

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eTOPOLOGICAL_REPRESENTATION_ITEM: eTOPOLOGICAL_REPRESENTATION_ITEM 	// [2]
    public let super_eEDGE: eEDGE 	// [3]
    public var super_eSUBEDGE: eSUBEDGE { return self } 	// [4]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eTOPOLOGICAL_REPRESENTATION_ITEM`` )
    public var PERMANENT_AGGREGATE_ID: tIDENTIFIER?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"PERMANENT_AGGREGATE_ID") {
          return cached.value as! tIDENTIFIER? 
        }
        let origin = super_eTOPOLOGICAL_REPRESENTATION_ITEM
        let value = tIDENTIFIER(origin.partialEntity._permanent_aggregate_id__getter(SELF: origin))
        updateCache(derivedAttributeName:"PERMANENT_AGGREGATE_ID", value:value)
        return value
      }
    }

    /// __EXPLICIT(DYNAMIC)__ attribute
    /// - origin: SUPER( ``eEDGE`` )
    public var EDGE_END: eVERTEX {
      get {
        if let resolved = _edge._edge_end__provider(complex: self.complexEntity) {
          let value = resolved._edge_end__getter(complex: self.complexEntity)
          return value
        }
        else {
          return SDAI.UNWRAP( super_eEDGE.partialEntity._edge_end )
        }
      }
      set(newValue) {
        if let _ = _edge._edge_end__provider(complex: self.complexEntity) { return }

        let partial = super_eEDGE.partialEntity
        partial._edge_end = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT(DYNAMIC)__ attribute
    /// - origin: SUPER( ``eEDGE`` )
    public var EDGE_START: eVERTEX {
      get {
        if let resolved = _edge._edge_start__provider(complex: self.complexEntity) {
          let value = resolved._edge_start__getter(complex: self.complexEntity)
          return value
        }
        else {
          return SDAI.UNWRAP( super_eEDGE.partialEntity._edge_start )
        }
      }
      set(newValue) {
        if let _ = _edge._edge_start__provider(complex: self.complexEntity) { return }

        let partial = super_eEDGE.partialEntity
        partial._edge_start = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eSUBEDGE`` )
    public var PARENT_EDGE: eEDGE {
      get {
        return SDAI.UNWRAP( self.partialEntity._parent_edge )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._parent_edge = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eTOPOLOGICAL_REPRESENTATION_ITEM`` )
    public var PERMANENT_ID: tIDENTIFIER?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"PERMANENT_ID") {
          return cached.value as! tIDENTIFIER? 
        }
        let origin = super_eTOPOLOGICAL_REPRESENTATION_ITEM
        let value = tIDENTIFIER(origin.partialEntity._permanent_id__getter(SELF: origin))
        updateCache(derivedAttributeName:"PERMANENT_ID", value:value)
        return value
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
      guard let partial = complexEntity?.partialEntityInstance(_subedge.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eTOPOLOGICAL_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eTOPOLOGICAL_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(eEDGE.self) else { return nil }
      self.super_eEDGE = super3

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "SUBEDGE", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eTOPOLOGICAL_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eEDGE.self)
      entityDef.add(supertype: eSUBEDGE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "PERMANENT_AGGREGATE_ID", keyPath: \eSUBEDGE.PERMANENT_AGGREGATE_ID, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "EDGE_END", keyPath: \eSUBEDGE.EDGE_END, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "EDGE_START", keyPath: \eSUBEDGE.EDGE_START, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "PARENT_EDGE", keyPath: \eSUBEDGE.PARENT_EDGE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "PERMANENT_ID", keyPath: \eSUBEDGE.PERMANENT_ID, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eSUBEDGE.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
