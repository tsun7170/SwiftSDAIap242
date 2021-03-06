/* file: loop.swift 	 generated: Mon Jan  3 16:32:52 2022 */

/* This file was generated by the EXPRESS to Swift translator "exp2swift", 
    derived from STEPcode (formerly NIST's SCL).
 exp2swift version: v.1.0.1, derived from stepcode v0.8 as of 2019/11/23 
 WARNING: You probably don't want to edit it since your modifications 
    will be lost if exp2swift is used to regenerate it.
 */

 
import SwiftSDAIcore

extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF {
//MARK: -ENTITY DEFINITION in EXPRESS
/*

  ENTITY loop
    SUPERTYPE OF ( 
        ONEOF ( 
            vertex_loop, 
            edge_loop, 
            poly_loop ) )
    SUBTYPE OF ( topological_representation_item );
  END_ENTITY; -- loop (line:19451 file:ap242ed2_mim_lf_v1.101.TY.exp)

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


  ENTITY(SELF)	loop
    (no local attributes)

  SUB- ENTITY(4)	poly_loop
    ATTR:  polygon,	TYPE: LIST [3 : ?] OF UNIQUE cartesian_point -- EXPLICIT


  SUB- ENTITY(5)	vertex_loop
    ATTR:  loop_vertex,	TYPE: vertex -- EXPLICIT


  SUB- ENTITY(6)	kinematic_loop
    REDCR: edge_list,	TYPE: LIST [1 : ?] OF UNIQUE oriented_joint -- EXPLICIT
      -- OVERRIDING ENTITY: path


  SUB- ENTITY(7)	edge_loop
    ATTR:  ne,	TYPE: INTEGER -- DERIVED
      := SIZEOF( SELF\path.edge_list )


*/


//MARK: - Partial Entity
  public final class _loop : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eLOOP.self
    }

    //ATTRIBUTES
    // (no local attributes)

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sEXTERNAL_IDENTIFICATION_ITEM.typeName)) // -> Self
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
  ENTITY loop
    SUPERTYPE OF ( 
        ONEOF ( 
            vertex_loop, 
            edge_loop, 
            poly_loop ) )
    SUBTYPE OF ( topological_representation_item );
  END_ENTITY; -- loop (line:19451 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eLOOP : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _loop.self
    }
    public let partialEntity: _loop

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eTOPOLOGICAL_REPRESENTATION_ITEM: eTOPOLOGICAL_REPRESENTATION_ITEM 	// [2]
    public var super_eLOOP: eLOOP { return self } 	// [3]

    //MARK: SUBTYPES
    public var sub_ePOLY_LOOP: ePOLY_LOOP? {	// [4]
      return self.complexEntity.entityReference(ePOLY_LOOP.self)
    }

    public var sub_eVERTEX_LOOP: eVERTEX_LOOP? {	// [5]
      return self.complexEntity.entityReference(eVERTEX_LOOP.self)
    }

    public var sub_eKINEMATIC_LOOP: eKINEMATIC_LOOP? {	// [6]
      return self.complexEntity.entityReference(eKINEMATIC_LOOP.self)
    }

    public var sub_eEDGE_LOOP: eEDGE_LOOP? {	// [7]
      return self.complexEntity.entityReference(eEDGE_LOOP.self)
    }


    //MARK: ATTRIBUTES
    /// __DERIVE__ attribute
    /// - origin: SUB( ``eEDGE_LOOP`` )
    public var NE: SDAI.INTEGER?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"NE") {
          return cached.value as! SDAI.INTEGER? 
        }
        guard let origin = sub_eEDGE_LOOP else { return nil }
        let value = SDAI.INTEGER(origin.partialEntity._ne__getter(SELF: origin))
        updateCache(derivedAttributeName:"NE", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eVERTEX_LOOP`` )
    public var LOOP_VERTEX: eVERTEX?  {
      get {
        return sub_eVERTEX_LOOP?.partialEntity._loop_vertex
      }
      set(newValue) {
        guard let partial = sub_eVERTEX_LOOP?.super_eVERTEX_LOOP.partialEntity else { return }
        partial._loop_vertex = SDAI.UNWRAP(newValue)
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

    /// __EXPLICIT REDEF(DYNAMIC)__ attribute
    /// - origin: SUB( ``eKINEMATIC_LOOP`` )
    public var EDGE_LIST: (SDAI.LIST_UNIQUE<eORIENTED_JOINT>/*[1:nil]*/ )?  {
      get {
        if let resolved = _path._edge_list__provider(complex: self.complexEntity) {
          let value = SDAI.LIST_UNIQUE<eORIENTED_JOINT>(resolved._edge_list__getter(
            complex: self.complexEntity))
          return value
        }
        else {
          return SDAI.LIST_UNIQUE<eORIENTED_JOINT>(sub_eKINEMATIC_LOOP?.super_ePATH.partialEntity._edge_list)
        }
      }
      set(newValue) {
        if let _ = _path._edge_list__provider(complex: self.complexEntity) { return }

        guard let partial = sub_eKINEMATIC_LOOP?.super_ePATH.partialEntity else { return }
        partial._edge_list = SDAI.UNWRAP(
          SDAI.LIST_UNIQUE<eORIENTED_EDGE>(newValue))
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

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``ePOLY_LOOP`` )
    public var POLYGON: (SDAI.LIST_UNIQUE<eCARTESIAN_POINT>/*[3:nil]*/ )?  {
      get {
        return sub_ePOLY_LOOP?.partialEntity._polygon
      }
      set(newValue) {
        guard let partial = sub_ePOLY_LOOP?.super_ePOLY_LOOP.partialEntity else { return }
        partial._polygon = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_loop.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eTOPOLOGICAL_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eTOPOLOGICAL_REPRESENTATION_ITEM = super2

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "LOOP", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eTOPOLOGICAL_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eLOOP.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "NE", keyPath: \eLOOP.NE, 
        kind: .derived, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "LOOP_VERTEX", keyPath: \eLOOP.LOOP_VERTEX, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "PERMANENT_AGGREGATE_ID", keyPath: \eLOOP.PERMANENT_AGGREGATE_ID, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "EDGE_LIST", keyPath: \eLOOP.EDGE_LIST, 
        kind: .explicitRedeclaring, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "PERMANENT_ID", keyPath: \eLOOP.PERMANENT_ID, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eLOOP.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "POLYGON", keyPath: \eLOOP.POLYGON, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
