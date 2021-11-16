/* file: tessellated_edge.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY tessellated_edge
    SUPERTYPE OF ( 
        ONEOF ( 
            tessellated_connecting_edge, 
            cubic_bezier_tessellated_edge ) )
    SUBTYPE OF ( tessellated_structured_item );
      coordinates     : coordinates_list;
      geometric_link  : OPTIONAL edge_or_curve;
      line_strip      : LIST [2 : ?] OF INTEGER;
  END_ENTITY; -- tessellated_edge (line:32027 file:ap242ed2_mim_lf_v1.101.TY.exp)

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

  ENTITY(SELF)	tessellated_edge
    ATTR:  coordinates,	TYPE: coordinates_list -- EXPLICIT

    ATTR:  geometric_link,	TYPE: OPTIONAL edge_or_curve -- EXPLICIT

    ATTR:  line_strip,	TYPE: LIST [2 : ?] OF INTEGER -- EXPLICIT
      -- possibly overriden by
          ENTITY: cubic_bezier_tessellated_edge,	TYPE: LIST [4 : ?] OF INTEGER


  SUB- ENTITY(6)	tessellated_connecting_edge
    ATTR:  smooth,	TYPE: LOGICAL -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  face1,	TYPE: tessellated_face -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  face2,	TYPE: tessellated_face -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  line_strip_face1,	TYPE: LIST [2 : ?] OF INTEGER -- EXPLICIT

    ATTR:  line_strip_face2,	TYPE: LIST [2 : ?] OF INTEGER -- EXPLICIT


  SUB- ENTITY(7)	cubic_tessellated_connecting_edge
    ATTR:  smooth,	TYPE: LOGICAL -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  face1,	TYPE: cubic_bezier_triangulated_face -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  face2,	TYPE: cubic_bezier_triangulated_face -- EXPLICIT	(AMBIGUOUS/MASKED)


  SUB- ENTITY(8)	cubic_bezier_tessellated_edge
    REDCR: line_strip,	TYPE: LIST [4 : ?] OF INTEGER -- EXPLICIT
      -- OVERRIDING ENTITY: tessellated_edge


*/


//MARK: - Partial Entity
  public final class _tessellated_edge : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eTESSELLATED_EDGE.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _coordinates: eCOORDINATES_LIST // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _geometric_link: sEDGE_OR_CURVE?  // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _line_strip: SDAI.LIST<SDAI.INTEGER>/*[2:nil]*/  // PLAIN EXPLICIT ATTRIBUTE

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
      self._geometric_link?.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._line_strip.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._coordinates.value.isValueEqualOptionally(to: rhs._coordinates.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._geometric_link?.value.isValueEqualOptionally(to: rhs._geometric_link?.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._line_strip.value.isValueEqualOptionally(to: rhs._line_strip.value, visited: &comppairs)	{
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
      if let comp = self._geometric_link?.value.isValueEqualOptionally(to: rhs._geometric_link?.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._line_strip.value.isValueEqualOptionally(to: rhs._line_strip.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(COORDINATES: eCOORDINATES_LIST, GEOMETRIC_LINK: sEDGE_OR_CURVE? , 
                LINE_STRIP: SDAI.LIST<SDAI.INTEGER>/*[2:nil]*/ ) {
      self._coordinates = COORDINATES
      self._geometric_link = GEOMETRIC_LINK
      self._line_strip = LINE_STRIP
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 3
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: eCOORDINATES_LIST.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverOptionalParameter(as: sEDGE_OR_CURVE.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p2) = exchangeStructure.recoverRequiredParameter(as: SDAI.LIST<SDAI.INTEGER>.self, from: parameters[2])
      else { exchangeStructure.add(errorContext: "while recovering parameter #2 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( COORDINATES: p0, GEOMETRIC_LINK: p1, LINE_STRIP: p2 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY tessellated_edge
    SUPERTYPE OF ( 
        ONEOF ( 
            tessellated_connecting_edge, 
            cubic_bezier_tessellated_edge ) )
    SUBTYPE OF ( tessellated_structured_item );
      coordinates     : coordinates_list;
      geometric_link  : OPTIONAL edge_or_curve;
      line_strip      : LIST [2 : ?] OF INTEGER;
  END_ENTITY; -- tessellated_edge (line:32027 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eTESSELLATED_EDGE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _tessellated_edge.self
    }
    public let partialEntity: _tessellated_edge

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_eTESSELLATED_ITEM: eTESSELLATED_ITEM 	// [3]
    public let super_eTESSELLATED_STRUCTURED_ITEM: eTESSELLATED_STRUCTURED_ITEM 	// [4]
    public var super_eTESSELLATED_EDGE: eTESSELLATED_EDGE { return self } 	// [5]

    //MARK: SUBTYPES
    public var sub_eTESSELLATED_CONNECTING_EDGE: eTESSELLATED_CONNECTING_EDGE? {	// [6]
      return self.complexEntity.entityReference(eTESSELLATED_CONNECTING_EDGE.self)
    }

    public var sub_eCUBIC_TESSELLATED_CONNECTING_EDGE: eCUBIC_TESSELLATED_CONNECTING_EDGE? {	// [7]
      return self.complexEntity.entityReference(eCUBIC_TESSELLATED_CONNECTING_EDGE.self)
    }

    public var sub_eCUBIC_BEZIER_TESSELLATED_EDGE: eCUBIC_BEZIER_TESSELLATED_EDGE? {	// [8]
      return self.complexEntity.entityReference(eCUBIC_BEZIER_TESSELLATED_EDGE.self)
    }


    //MARK: ATTRIBUTES
    // FACE1: (2 AMBIGUOUS REFs)

    // FACE2: (2 AMBIGUOUS REFs)

    // SMOOTH: (2 AMBIGUOUS REFs)

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eTESSELLATED_EDGE`` )
    public var GEOMETRIC_LINK: sEDGE_OR_CURVE?  {
      get {
        return self.partialEntity._geometric_link
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._geometric_link = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eTESSELLATED_EDGE`` )
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
    /// - origin: SELF( ``eTESSELLATED_EDGE`` )
    public var LINE_STRIP: SDAI.LIST<SDAI.INTEGER>/*[2:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._line_strip )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._line_strip = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eTESSELLATED_CONNECTING_EDGE`` )
    public var LINE_STRIP_FACE2: (SDAI.LIST<SDAI.INTEGER>/*[2:nil]*/ )?  {
      get {
        return sub_eTESSELLATED_CONNECTING_EDGE?.partialEntity._line_strip_face2
      }
      set(newValue) {
        guard let partial = sub_eTESSELLATED_CONNECTING_EDGE?.super_eTESSELLATED_CONNECTING_EDGE
          .partialEntity else { return }
        partial._line_strip_face2 = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eTESSELLATED_CONNECTING_EDGE`` )
    public var LINE_STRIP_FACE1: (SDAI.LIST<SDAI.INTEGER>/*[2:nil]*/ )?  {
      get {
        return sub_eTESSELLATED_CONNECTING_EDGE?.partialEntity._line_strip_face1
      }
      set(newValue) {
        guard let partial = sub_eTESSELLATED_CONNECTING_EDGE?.super_eTESSELLATED_CONNECTING_EDGE
          .partialEntity else { return }
        partial._line_strip_face1 = SDAI.UNWRAP(newValue)
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
      guard let partial = complexEntity?.partialEntityInstance(_tessellated_edge.self) else { return nil }
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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "TESSELLATED_EDGE", type: self, explicitAttributeCount: 3)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eTESSELLATED_ITEM.self)
      entityDef.add(supertype: eTESSELLATED_STRUCTURED_ITEM.self)
      entityDef.add(supertype: eTESSELLATED_EDGE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "GEOMETRIC_LINK", keyPath: \eTESSELLATED_EDGE.GEOMETRIC_LINK, 
        kind: .explicitOptional, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "COORDINATES", keyPath: \eTESSELLATED_EDGE.COORDINATES, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "LINE_STRIP", keyPath: \eTESSELLATED_EDGE.LINE_STRIP, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "LINE_STRIP_FACE2", keyPath: \eTESSELLATED_EDGE.LINE_STRIP_FACE2, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "LINE_STRIP_FACE1", keyPath: \eTESSELLATED_EDGE.LINE_STRIP_FACE1, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eTESSELLATED_EDGE.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \eTESSELLATED_EDGE.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
