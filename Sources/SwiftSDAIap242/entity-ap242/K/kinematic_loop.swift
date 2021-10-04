/* file: kinematic_loop.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY kinematic_loop
    SUBTYPE OF ( edge_loop );
      SELF\path.edge_list  : LIST [1 : ?] OF UNIQUE oriented_joint;
  END_ENTITY; -- kinematic_loop (line:18733 file:ap242ed2_mim_lf_v1.101.TY.exp)

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


  SUPER- ENTITY(3)	loop
    (no local attributes)

  SUPER- ENTITY(4)	path
    ATTR:  edge_list,	TYPE: LIST [1 : ?] OF UNIQUE oriented_edge -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
      *** ENTITY: kinematic_loop,	TYPE: LIST [1 : ?] OF UNIQUE oriented_joint
          ENTITY: oriented_path,	TYPE: LIST [1 : ?] OF UNIQUE oriented_edge	(as DERIVED)


  SUPER- ENTITY(5)	edge_loop
    ATTR:  ne,	TYPE: INTEGER -- DERIVED
      := SIZEOF( SELF\path.edge_list )


  ENTITY(SELF)	kinematic_loop
    REDCR: edge_list,	TYPE: LIST [1 : ?] OF UNIQUE oriented_joint -- EXPLICIT
      -- OVERRIDING ENTITY: path


*/


//MARK: - Partial Entity
  public final class _kinematic_loop : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eKINEMATIC_LOOP.self
    }

    //ATTRIBUTES
    /* override var _edge_list: SDAI.LIST_UNIQUE<eORIENTED_JOINT>[1:nil] 	//EXPLICIT REDEFINITION(ePATH) */

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
  ENTITY kinematic_loop
    SUBTYPE OF ( edge_loop );
      SELF\path.edge_list  : LIST [1 : ?] OF UNIQUE oriented_joint;
  END_ENTITY; -- kinematic_loop (line:18733 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eKINEMATIC_LOOP : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _kinematic_loop.self
    }
    public let partialEntity: _kinematic_loop

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eTOPOLOGICAL_REPRESENTATION_ITEM: eTOPOLOGICAL_REPRESENTATION_ITEM 	// [2]
    public let super_eLOOP: eLOOP 	// [3]
    public let super_ePATH: ePATH 	// [4]
    public let super_eEDGE_LOOP: eEDGE_LOOP 	// [5]
    public var super_eKINEMATIC_LOOP: eKINEMATIC_LOOP { return self } 	// [6]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eEDGE_LOOP`` )
    public var NE: SDAI.INTEGER?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"NE") {
          return cached.value as! SDAI.INTEGER? 
        }
        let origin = super_eEDGE_LOOP
        let value = SDAI.INTEGER(origin.partialEntity._ne__getter(SELF: origin))
        updateCache(derivedAttributeName:"NE", value:value)
        return value
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
    /// - origin: SELF( ``eKINEMATIC_LOOP`` )
    public var EDGE_LIST: SDAI.LIST_UNIQUE<eORIENTED_JOINT>/*[1:nil]*/  {
      get {
        if let resolved = _path._edge_list__provider(complex: self.complexEntity) {
          let value = SDAI.UNWRAP( SDAI.LIST_UNIQUE<eORIENTED_JOINT>(resolved._edge_list__getter(
            complex: self.complexEntity)) )
          return value
        }
        else {
          return SDAI.UNWRAP( SDAI.LIST_UNIQUE<eORIENTED_JOINT>(super_ePATH.partialEntity._edge_list) )
        }
      }
      set(newValue) {
        if let _ = _path._edge_list__provider(complex: self.complexEntity) { return }

        let partial = super_ePATH.partialEntity
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


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_kinematic_loop.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eTOPOLOGICAL_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eTOPOLOGICAL_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(eLOOP.self) else { return nil }
      self.super_eLOOP = super3

      guard let super4 = complexEntity?.entityReference(ePATH.self) else { return nil }
      self.super_ePATH = super4

      guard let super5 = complexEntity?.entityReference(eEDGE_LOOP.self) else { return nil }
      self.super_eEDGE_LOOP = super5

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "KINEMATIC_LOOP", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eTOPOLOGICAL_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eLOOP.self)
      entityDef.add(supertype: ePATH.self)
      entityDef.add(supertype: eEDGE_LOOP.self)
      entityDef.add(supertype: eKINEMATIC_LOOP.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "NE", keyPath: \eKINEMATIC_LOOP.NE, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "PERMANENT_AGGREGATE_ID", keyPath: \eKINEMATIC_LOOP.PERMANENT_AGGREGATE_ID, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "EDGE_LIST", keyPath: \eKINEMATIC_LOOP.EDGE_LIST, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "PERMANENT_ID", keyPath: \eKINEMATIC_LOOP.PERMANENT_ID, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eKINEMATIC_LOOP.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
