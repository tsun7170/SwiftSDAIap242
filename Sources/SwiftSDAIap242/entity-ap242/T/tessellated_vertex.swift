/* file: tessellated_vertex.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY tessellated_vertex
    SUBTYPE OF ( tessellated_structured_item );
      coordinates       : coordinates_list;
      topological_link  : OPTIONAL vertex_point;
      point_index       : INTEGER;
  END_ENTITY; -- tessellated_vertex (line:32114 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(2)	geometric_representation_item
    ATTR:  dim,	TYPE: dimension_count -- DERIVED
      := dimension_of( SELF )


  SUPER- ENTITY(3)	tessellated_item
    (no local attributes)

  SUPER- ENTITY(4)	tessellated_structured_item
    (no local attributes)

  ENTITY(SELF)	tessellated_vertex
    ATTR:  coordinates,	TYPE: coordinates_list -- EXPLICIT

    ATTR:  topological_link,	TYPE: OPTIONAL vertex_point -- EXPLICIT

    ATTR:  point_index,	TYPE: INTEGER -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _tessellated_vertex : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eTESSELLATED_VERTEX.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _coordinates: eCOORDINATES_LIST // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _topological_link: eVERTEX_POINT?  // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _point_index: SDAI.INTEGER // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sTESSELLATED_EDGE_OR_VERTEX.typeName)) // -> Self
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._coordinates.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._topological_link?.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._point_index.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._coordinates.value.isValueEqualOptionally(to: rhs._coordinates.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._topological_link?.value.isValueEqualOptionally(to: rhs._topological_link?.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._point_index.value.isValueEqualOptionally(to: rhs._point_index.value, visited: &comppairs)	{
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
      if let comp = self._coordinates.value.isValueEqualOptionally(to: rhs._coordinates.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._topological_link?.value.isValueEqualOptionally(to: rhs._topological_link?.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._point_index.value.isValueEqualOptionally(to: rhs._point_index.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(COORDINATES: eCOORDINATES_LIST, TOPOLOGICAL_LINK: eVERTEX_POINT? , 
                POINT_INDEX: SDAI.INTEGER) {
      self._coordinates = COORDINATES
      self._topological_link = TOPOLOGICAL_LINK
      self._point_index = POINT_INDEX
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 3
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: eCOORDINATES_LIST.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverOptionalParameter(as: eVERTEX_POINT.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p2) = exchangeStructure.recoverRequiredParameter(as: SDAI.INTEGER.self, from: parameters[2])
      else { exchangeStructure.add(errorContext: "while recovering parameter #2 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( COORDINATES: p0, TOPOLOGICAL_LINK: p1, POINT_INDEX: p2 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY tessellated_vertex
    SUBTYPE OF ( tessellated_structured_item );
      coordinates       : coordinates_list;
      topological_link  : OPTIONAL vertex_point;
      point_index       : INTEGER;
  END_ENTITY; -- tessellated_vertex (line:32114 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eTESSELLATED_VERTEX : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _tessellated_vertex.self
    }
    public let partialEntity: _tessellated_vertex

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_eTESSELLATED_ITEM: eTESSELLATED_ITEM 	// [3]
    public let super_eTESSELLATED_STRUCTURED_ITEM: eTESSELLATED_STRUCTURED_ITEM 	// [4]
    public var super_eTESSELLATED_VERTEX: eTESSELLATED_VERTEX { return self } 	// [5]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eTESSELLATED_VERTEX`` )
    public var TOPOLOGICAL_LINK: eVERTEX_POINT?  {
      get {
        return self.partialEntity._topological_link
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._topological_link = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eTESSELLATED_VERTEX`` )
    public var COORDINATES: eCOORDINATES_LIST {
      get {
        return SDAI.UNWRAP( self.partialEntity._coordinates )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._coordinates = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eTESSELLATED_VERTEX`` )
    public var POINT_INDEX: SDAI.INTEGER {
      get {
        return SDAI.UNWRAP( self.partialEntity._point_index )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._point_index = SDAI.UNWRAP(newValue)
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
      guard let partial = complexEntity?.partialEntityInstance(_tessellated_vertex.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(eTESSELLATED_ITEM.self) else { return nil }
      self.super_eTESSELLATED_ITEM = super3

      guard let super4 = complexEntity?.entityReference(eTESSELLATED_STRUCTURED_ITEM.self) else { return nil }
      self.super_eTESSELLATED_STRUCTURED_ITEM = super4

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "TESSELLATED_VERTEX", type: self, explicitAttributeCount: 3)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eTESSELLATED_ITEM.self)
      entityDef.add(supertype: eTESSELLATED_STRUCTURED_ITEM.self)
      entityDef.add(supertype: eTESSELLATED_VERTEX.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "TOPOLOGICAL_LINK", keyPath: \eTESSELLATED_VERTEX.TOPOLOGICAL_LINK, 
        kind: .explicitOptional, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "COORDINATES", keyPath: \eTESSELLATED_VERTEX.COORDINATES, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "POINT_INDEX", keyPath: \eTESSELLATED_VERTEX.POINT_INDEX, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eTESSELLATED_VERTEX.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \eTESSELLATED_VERTEX.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
