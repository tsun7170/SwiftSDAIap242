/* file: oriented_joint.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  ENTITY oriented_joint
    SUBTYPE OF ( oriented_edge );
      SELF\oriented_edge.edge_element : kinematic_joint;
  END_ENTITY; -- oriented_joint (line:22769 file:ap242ed2_mim_lf_v1.101.TY.exp)

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
      *** ENTITY: oriented_edge,	TYPE: vertex	(as DERIVED)
          ENTITY: kinematic_joint,	TYPE: kinematic_link

    ATTR:  edge_end,	TYPE: vertex -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
      *** ENTITY: oriented_edge,	TYPE: vertex	(as DERIVED)
          ENTITY: kinematic_joint,	TYPE: kinematic_link


  SUPER- ENTITY(4)	oriented_edge
    ATTR:  edge_element,	TYPE: edge -- EXPLICIT
      -- possibly overriden by
      *** ENTITY: oriented_joint,	TYPE: kinematic_joint

    ATTR:  orientation,	TYPE: BOOLEAN -- EXPLICIT

    REDCR: edge_start,	TYPE: vertex -- DERIVED (DYNAMIC)
      := boolean_choose( SELF.orientation, SELF.edge_element.edge_start, SELF.edge_element.edge_end )
      -- OVERRIDING ENTITY: edge

    REDCR: edge_end,	TYPE: vertex -- DERIVED (DYNAMIC)
      := boolean_choose( SELF.orientation, SELF.edge_element.edge_end, SELF.edge_element.edge_start )
      -- OVERRIDING ENTITY: edge


  ENTITY(SELF)	oriented_joint
    REDCR: edge_element,	TYPE: kinematic_joint -- EXPLICIT
      -- OVERRIDING ENTITY: oriented_edge


*/


//MARK: - Partial Entity
  public final class _oriented_joint : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eORIENTED_JOINT.self
    }

    //ATTRIBUTES
    /* override var _edge_element: eKINEMATIC_JOINT	//EXPLICIT REDEFINITION(eORIENTED_EDGE) */

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
  ENTITY oriented_joint
    SUBTYPE OF ( oriented_edge );
      SELF\oriented_edge.edge_element : kinematic_joint;
  END_ENTITY; -- oriented_joint (line:22769 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eORIENTED_JOINT : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _oriented_joint.self
    }
    public let partialEntity: _oriented_joint

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eTOPOLOGICAL_REPRESENTATION_ITEM: eTOPOLOGICAL_REPRESENTATION_ITEM 	// [2]
    public let super_eEDGE: eEDGE 	// [3]
    public let super_eORIENTED_EDGE: eORIENTED_EDGE 	// [4]
    public var super_eORIENTED_JOINT: eORIENTED_JOINT { return self } 	// [5]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT REDEF__ attribute
    /// - origin: SELF( ``eORIENTED_JOINT`` )
    public var EDGE_ELEMENT: eKINEMATIC_JOINT {
      get {
        return SDAI.UNWRAP( eKINEMATIC_JOINT( super_eORIENTED_EDGE.partialEntity._edge_element ) )
      }
      set(newValue) {
        let partial = super_eORIENTED_EDGE.partialEntity
        partial._edge_element = SDAI.UNWRAP(
          eEDGE(newValue))
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eORIENTED_EDGE`` )
    public var ORIENTATION: SDAI.BOOLEAN {
      get {
        return SDAI.UNWRAP( super_eORIENTED_EDGE.partialEntity._orientation )
      }
      set(newValue) {
        let partial = super_eORIENTED_EDGE.partialEntity
        partial._orientation = SDAI.UNWRAP(newValue)
      }
    }

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

    /// __EXPLICIT REDEF(DERIVE)__ attribute
    /// - origin: SUPER( ``eORIENTED_EDGE`` )
    public var EDGE_END: eVERTEX {
      get {
        if let cached = cachedValue(derivedAttributeName:"EDGE_END") {
          return cached.value as! eVERTEX
        }
        let origin = super_eORIENTED_EDGE
        let value = SDAI.UNWRAP( eVERTEX(origin.partialEntity._edge_end__getter(SELF: origin)) )
        updateCache(derivedAttributeName:"EDGE_END", value:value)
        return value
      }
    }

    /// __EXPLICIT REDEF(DERIVE)__ attribute
    /// - origin: SUPER( ``eORIENTED_EDGE`` )
    public var EDGE_START: eVERTEX {
      get {
        if let cached = cachedValue(derivedAttributeName:"EDGE_START") {
          return cached.value as! eVERTEX
        }
        let origin = super_eORIENTED_EDGE
        let value = SDAI.UNWRAP( eVERTEX(origin.partialEntity._edge_start__getter(SELF: origin)) )
        updateCache(derivedAttributeName:"EDGE_START", value:value)
        return value
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
      guard let partial = complexEntity?.partialEntityInstance(_oriented_joint.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eTOPOLOGICAL_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eTOPOLOGICAL_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(eEDGE.self) else { return nil }
      self.super_eEDGE = super3

      guard let super4 = complexEntity?.entityReference(eORIENTED_EDGE.self) else { return nil }
      self.super_eORIENTED_EDGE = super4

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "ORIENTED_JOINT", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eTOPOLOGICAL_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eEDGE.self)
      entityDef.add(supertype: eORIENTED_EDGE.self)
      entityDef.add(supertype: eORIENTED_JOINT.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "EDGE_ELEMENT", keyPath: \eORIENTED_JOINT.EDGE_ELEMENT, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ORIENTATION", keyPath: \eORIENTED_JOINT.ORIENTATION, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "PERMANENT_AGGREGATE_ID", keyPath: \eORIENTED_JOINT.PERMANENT_AGGREGATE_ID, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "EDGE_END", keyPath: \eORIENTED_JOINT.EDGE_END, 
        kind: .derivedRedeclaring, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "EDGE_START", keyPath: \eORIENTED_JOINT.EDGE_START, 
        kind: .derivedRedeclaring, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "PERMANENT_ID", keyPath: \eORIENTED_JOINT.PERMANENT_ID, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eORIENTED_JOINT.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
