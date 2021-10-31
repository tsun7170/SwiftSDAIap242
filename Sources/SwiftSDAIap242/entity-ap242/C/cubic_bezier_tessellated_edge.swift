/* file: cubic_bezier_tessellated_edge.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  ENTITY cubic_bezier_tessellated_edge
    SUBTYPE OF ( tessellated_edge );
      SELF\tessellated_edge.line_strip : LIST [4 : ?] OF INTEGER;
  END_ENTITY; -- cubic_bezier_tessellated_edge (line:10956 file:ap242ed2_mim_lf_v1.101.TY.exp)

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

  SUPER- ENTITY(5)	tessellated_edge
    ATTR:  coordinates,	TYPE: coordinates_list -- EXPLICIT

    ATTR:  geometric_link,	TYPE: OPTIONAL edge_or_curve -- EXPLICIT

    ATTR:  line_strip,	TYPE: LIST [2 : ?] OF INTEGER -- EXPLICIT
      -- possibly overriden by
      *** ENTITY: cubic_bezier_tessellated_edge,	TYPE: LIST [4 : ?] OF INTEGER


  ENTITY(SELF)	cubic_bezier_tessellated_edge
    REDCR: line_strip,	TYPE: LIST [4 : ?] OF INTEGER -- EXPLICIT
      -- OVERRIDING ENTITY: tessellated_edge


  SUB- ENTITY(7)	cubic_tessellated_connecting_edge
    ATTR:  smooth,	TYPE: LOGICAL -- EXPLICIT

    ATTR:  face1,	TYPE: cubic_bezier_triangulated_face -- EXPLICIT

    ATTR:  face2,	TYPE: cubic_bezier_triangulated_face -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _cubic_bezier_tessellated_edge : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eCUBIC_BEZIER_TESSELLATED_EDGE.self
    }

    //ATTRIBUTES
    /* override var _line_strip: SDAI.LIST<SDAI.INTEGER>[4:nil] 	//EXPLICIT REDEFINITION(eTESSELLATED_EDGE) */

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
  ENTITY cubic_bezier_tessellated_edge
    SUBTYPE OF ( tessellated_edge );
      SELF\tessellated_edge.line_strip : LIST [4 : ?] OF INTEGER;
  END_ENTITY; -- cubic_bezier_tessellated_edge (line:10956 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eCUBIC_BEZIER_TESSELLATED_EDGE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _cubic_bezier_tessellated_edge.self
    }
    public let partialEntity: _cubic_bezier_tessellated_edge

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_eTESSELLATED_ITEM: eTESSELLATED_ITEM 	// [3]
    public let super_eTESSELLATED_STRUCTURED_ITEM: eTESSELLATED_STRUCTURED_ITEM 	// [4]
    public let super_eTESSELLATED_EDGE: eTESSELLATED_EDGE 	// [5]
    public var super_eCUBIC_BEZIER_TESSELLATED_EDGE: eCUBIC_BEZIER_TESSELLATED_EDGE { return self } 	// [6]

    //MARK: SUBTYPES
    public var sub_eCUBIC_TESSELLATED_CONNECTING_EDGE: eCUBIC_TESSELLATED_CONNECTING_EDGE? {	// [7]
      return self.complexEntity.entityReference(eCUBIC_TESSELLATED_CONNECTING_EDGE.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eCUBIC_TESSELLATED_CONNECTING_EDGE`` )
    public var FACE1: eCUBIC_BEZIER_TRIANGULATED_FACE?  {
      get {
        return sub_eCUBIC_TESSELLATED_CONNECTING_EDGE?.partialEntity._face1
      }
      set(newValue) {
        guard let partial = sub_eCUBIC_TESSELLATED_CONNECTING_EDGE?.super_eCUBIC_TESSELLATED_CONNECTING_EDGE
          .partialEntity else { return }
        partial._face1 = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eCUBIC_TESSELLATED_CONNECTING_EDGE`` )
    public var FACE2: eCUBIC_BEZIER_TRIANGULATED_FACE?  {
      get {
        return sub_eCUBIC_TESSELLATED_CONNECTING_EDGE?.partialEntity._face2
      }
      set(newValue) {
        guard let partial = sub_eCUBIC_TESSELLATED_CONNECTING_EDGE?.super_eCUBIC_TESSELLATED_CONNECTING_EDGE
          .partialEntity else { return }
        partial._face2 = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eTESSELLATED_EDGE`` )
    public var GEOMETRIC_LINK: sEDGE_OR_CURVE?  {
      get {
        return super_eTESSELLATED_EDGE.partialEntity._geometric_link
      }
      set(newValue) {
        let partial = super_eTESSELLATED_EDGE.partialEntity
        partial._geometric_link = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eTESSELLATED_EDGE`` )
    public var COORDINATES: eCOORDINATES_LIST {
      get {
        return SDAI.UNWRAP( super_eTESSELLATED_EDGE.partialEntity._coordinates )
      }
      set(newValue) {
        let partial = super_eTESSELLATED_EDGE.partialEntity
        partial._coordinates = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SELF( ``eCUBIC_BEZIER_TESSELLATED_EDGE`` )
    public var LINE_STRIP: SDAI.LIST<SDAI.INTEGER>/*[4:nil]*/  {
      get {
        return SDAI.UNWRAP( SDAI.LIST<SDAI.INTEGER>( super_eTESSELLATED_EDGE.partialEntity._line_strip ) )
      }
      set(newValue) {
        let partial = super_eTESSELLATED_EDGE.partialEntity
        partial._line_strip = SDAI.UNWRAP(
          SDAI.LIST<SDAI.INTEGER>(newValue))
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
    /// - origin: SUB( ``eCUBIC_TESSELLATED_CONNECTING_EDGE`` )
    public var SMOOTH: SDAI.LOGICAL {
      get {
        return SDAI.LOGICAL( sub_eCUBIC_TESSELLATED_CONNECTING_EDGE?.partialEntity._smooth )
      }
      set(newValue) {
        guard let partial = sub_eCUBIC_TESSELLATED_CONNECTING_EDGE?.super_eCUBIC_TESSELLATED_CONNECTING_EDGE
          .partialEntity else { return }
        partial._smooth = SDAI.LOGICAL(newValue)
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
      guard let partial = complexEntity?.partialEntityInstance(_cubic_bezier_tessellated_edge.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(eTESSELLATED_ITEM.self) else { return nil }
      self.super_eTESSELLATED_ITEM = super3

      guard let super4 = complexEntity?.entityReference(eTESSELLATED_STRUCTURED_ITEM.self) else { return nil }
      self.super_eTESSELLATED_STRUCTURED_ITEM = super4

      guard let super5 = complexEntity?.entityReference(eTESSELLATED_EDGE.self) else { return nil }
      self.super_eTESSELLATED_EDGE = super5

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "CUBIC_BEZIER_TESSELLATED_EDGE", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eTESSELLATED_ITEM.self)
      entityDef.add(supertype: eTESSELLATED_STRUCTURED_ITEM.self)
      entityDef.add(supertype: eTESSELLATED_EDGE.self)
      entityDef.add(supertype: eCUBIC_BEZIER_TESSELLATED_EDGE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "FACE1", keyPath: \eCUBIC_BEZIER_TESSELLATED_EDGE.FACE1, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "FACE2", keyPath: \eCUBIC_BEZIER_TESSELLATED_EDGE.FACE2, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "GEOMETRIC_LINK", keyPath: \eCUBIC_BEZIER_TESSELLATED_EDGE.GEOMETRIC_LINK, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "COORDINATES", keyPath: \eCUBIC_BEZIER_TESSELLATED_EDGE.COORDINATES, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "LINE_STRIP", keyPath: \eCUBIC_BEZIER_TESSELLATED_EDGE.LINE_STRIP, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eCUBIC_BEZIER_TESSELLATED_EDGE.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SMOOTH", keyPath: \eCUBIC_BEZIER_TESSELLATED_EDGE.SMOOTH, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \eCUBIC_BEZIER_TESSELLATED_EDGE.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
