/* file: path.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY path
    SUPERTYPE OF ( 
        ONEOF ( 
            open_path, 
            edge_loop, 
            oriented_path ) )
    SUBTYPE OF ( topological_representation_item );
      edge_list  : LIST [1 : ?] OF UNIQUE oriented_edge;
    WHERE
      wr1: path_head_to_tail( SELF );
  END_ENTITY; -- path (line:23724 file:ap242ed2_mim_lf_v1.101.TY.exp)

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


  ENTITY(SELF)	path
    ATTR:  edge_list,	TYPE: LIST [1 : ?] OF UNIQUE oriented_edge -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: kinematic_loop,	TYPE: LIST [1 : ?] OF UNIQUE oriented_joint
          ENTITY: oriented_path,	TYPE: LIST [1 : ?] OF UNIQUE oriented_edge	(as DERIVED)


  SUB- ENTITY(4)	open_path
    ATTR:  ne,	TYPE: INTEGER -- DERIVED	(AMBIGUOUS/MASKED)
      := SIZEOF( SELF\path.edge_list )


  SUB- ENTITY(5)	kinematic_loop
    REDCR: edge_list,	TYPE: LIST [1 : ?] OF UNIQUE oriented_joint -- EXPLICIT
      -- OVERRIDING ENTITY: path


  SUB- ENTITY(6)	edge_loop
    ATTR:  ne,	TYPE: INTEGER -- DERIVED	(AMBIGUOUS/MASKED)
      := SIZEOF( SELF\path.edge_list )


  SUB- ENTITY(7)	oriented_path
    ATTR:  path_element,	TYPE: path -- EXPLICIT

    ATTR:  orientation,	TYPE: BOOLEAN -- EXPLICIT

    REDCR: edge_list,	TYPE: LIST [1 : ?] OF UNIQUE oriented_edge -- DERIVED (DYNAMIC)
      := conditional_reverse( SELF.orientation, SELF.path_element.edge_list )
      -- OVERRIDING ENTITY: path


*/


//MARK: - Partial Entity
  public final class _path : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      ePATH.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    /// - see the corresponding attribute accesser in the entity reference definition for the attribute value dynamic lookup logic
    public internal(set) var _edge_list: (SDAI.LIST_UNIQUE<eORIENTED_EDGE>/*[1:nil]*/ )?  // PLAIN EXPLICIT ATTRIBUTE

    internal static func _edge_list__provider(complex: SDAI.ComplexEntity) -> ePATH__EDGE_LIST__provider? {
      let resolved = complex.resolvePartialEntityInstance(from: [_oriented_path.typeIdentity])
      return resolved as? ePATH__EDGE_LIST__provider
    }

    //PARTIAL COMPLEX ENTITY SUPPORT
    final public override class func fixupPartialComplexEntityAttributes(partialComplex: SDAI.ComplexEntity, baseComplex: SDAI.ComplexEntity) {
      guard let pe = partialComplex.partialEntityInstance(_path.self) else { return }

      if pe._edge_list == nil, self._edge_list__provider(complex: partialComplex) == nil, 
        let base__edge_list__provider = self._edge_list__provider(complex: baseComplex) {
        pe._edge_list = base__edge_list__provider._edge_list__getter(complex: baseComplex)
      }
    }
    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sPATH_OR_COMPOSITE_CURVE.typeName)) // -> Self
      members.insert(SDAI.STRING(sCONNECTED_EDGE_WITH_LENGTH_SET_ITEMS.typeName)) // -> Self
      members.insert(SDAI.STRING(sREVERSIBLE_TOPOLOGY_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sREVERSIBLE_TOPOLOGY.typeName)) // -> sREVERSIBLE_TOPOLOGY_ITEM
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._edge_list?.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._edge_list?.value.isValueEqualOptionally(to: rhs._edge_list?.value, visited: &comppairs)	{
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
      if let comp = self._edge_list?.value.isValueEqualOptionally(to: rhs._edge_list?.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: ePATH?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = PATH_HEAD_TO_TAIL(SELF)
      return _TEMP1
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(EDGE_LIST: (SDAI.LIST_UNIQUE<eORIENTED_EDGE>/*[1:nil]*/ )? ) {
      self._edge_list = EDGE_LIST
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverOmittableParameter(as: SDAI.LIST_UNIQUE<
        eORIENTED_EDGE>.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( EDGE_LIST: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY path
    SUPERTYPE OF ( 
        ONEOF ( 
            open_path, 
            edge_loop, 
            oriented_path ) )
    SUBTYPE OF ( topological_representation_item );
      edge_list  : LIST [1 : ?] OF UNIQUE oriented_edge;
    WHERE
      wr1: path_head_to_tail( SELF );
  END_ENTITY; -- path (line:23724 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class ePATH : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _path.self
    }
    public let partialEntity: _path

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eTOPOLOGICAL_REPRESENTATION_ITEM: eTOPOLOGICAL_REPRESENTATION_ITEM 	// [2]
    public var super_ePATH: ePATH { return self } 	// [3]

    //MARK: SUBTYPES
    public var sub_eOPEN_PATH: eOPEN_PATH? {	// [4]
      return self.complexEntity.entityReference(eOPEN_PATH.self)
    }

    public var sub_eKINEMATIC_LOOP: eKINEMATIC_LOOP? {	// [5]
      return self.complexEntity.entityReference(eKINEMATIC_LOOP.self)
    }

    public var sub_eEDGE_LOOP: eEDGE_LOOP? {	// [6]
      return self.complexEntity.entityReference(eEDGE_LOOP.self)
    }

    public var sub_eORIENTED_PATH: eORIENTED_PATH? {	// [7]
      return self.complexEntity.entityReference(eORIENTED_PATH.self)
    }


    //MARK: ATTRIBUTES
    // NE: (2 AMBIGUOUS REFs)

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eORIENTED_PATH`` )
    public var ORIENTATION: SDAI.BOOLEAN?  {
      get {
        return sub_eORIENTED_PATH?.partialEntity._orientation
      }
      set(newValue) {
        guard let partial = sub_eORIENTED_PATH?.super_eORIENTED_PATH.partialEntity else { return }
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

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eORIENTED_PATH`` )
    public var PATH_ELEMENT: ePATH?  {
      get {
        return sub_eORIENTED_PATH?.partialEntity._path_element
      }
      set(newValue) {
        guard let partial = sub_eORIENTED_PATH?.super_eORIENTED_PATH.partialEntity else { return }
        partial._path_element = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT(DYNAMIC)__ attribute
    /// - origin: SELF( ``ePATH`` )
    public var EDGE_LIST: SDAI.LIST_UNIQUE<eORIENTED_EDGE>/*[1:nil]*/  {
      get {
        if let resolved = _path._edge_list__provider(complex: self.complexEntity) {
          let value = resolved._edge_list__getter(complex: self.complexEntity)
          return value
        }
        else {
          return SDAI.UNWRAP( self.partialEntity._edge_list )
        }
      }
      set(newValue) {
        if let _ = _path._edge_list__provider(complex: self.complexEntity) { return }

        let partial = self.partialEntity
        partial._edge_list = SDAI.UNWRAP(newValue)
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
      guard let partial = complexEntity?.partialEntityInstance(_path.self) else { return nil }
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


    //MARK: WHERE RULE VALIDATION (ENTITY)
    public override class func validateWhereRules(instance:SDAI.EntityReference?, prefix:SDAI.WhereLabel) -> [SDAI.WhereLabel:SDAI.LOGICAL] {
      guard let instance = instance as? Self else { return [:] }

      let prefix2 = prefix + " \(instance)"

      var result = super.validateWhereRules(instance:instance, prefix:prefix2)
      result[prefix2 + " .WHERE_wr1"] = _path.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "PATH", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eTOPOLOGICAL_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: ePATH.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "ORIENTATION", keyPath: \ePATH.ORIENTATION, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "PERMANENT_AGGREGATE_ID", keyPath: \ePATH.PERMANENT_AGGREGATE_ID, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "PATH_ELEMENT", keyPath: \ePATH.PATH_ELEMENT, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "EDGE_LIST", keyPath: \ePATH.EDGE_LIST, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "PERMANENT_ID", keyPath: \ePATH.PERMANENT_ID, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \ePATH.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}

//MARK: - Entity Dynamic Attribute Protocols
internal protocol ePATH__EDGE_LIST__provider {
  func _edge_list__getter(complex: SDAI.ComplexEntity) -> SDAI.LIST_UNIQUE<
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eORIENTED_EDGE>/*[1:nil]*/ 
}
