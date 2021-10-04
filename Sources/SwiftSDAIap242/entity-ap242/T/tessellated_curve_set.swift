/* file: tessellated_curve_set.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY tessellated_curve_set
    SUBTYPE OF ( tessellated_item );
      coordinates  : coordinates_list;
      line_strips  : LIST [1 : ?] OF LIST [2 : ?] OF INTEGER;
  END_ENTITY; -- tessellated_curve_set (line:32007 file:ap242ed2_mim_lf_v1.101.TY.exp)

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

  ENTITY(SELF)	tessellated_curve_set
    ATTR:  coordinates,	TYPE: coordinates_list -- EXPLICIT

    ATTR:  line_strips,	TYPE: LIST [1 : ?] OF LIST [2 : ?] OF INTEGER -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _tessellated_curve_set : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eTESSELLATED_CURVE_SET.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _coordinates: eCOORDINATES_LIST // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _line_strips: SDAI.LIST<SDAI.LIST<SDAI.INTEGER>/*[2:nil]*/ >/*[1:nil]*/  // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._coordinates.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._line_strips.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._coordinates.value.isValueEqualOptionally(to: rhs._coordinates.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._line_strips.value.isValueEqualOptionally(to: rhs._line_strips.value, visited: &comppairs)	{
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
      if let comp = self._line_strips.value.isValueEqualOptionally(to: rhs._line_strips.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(COORDINATES: eCOORDINATES_LIST, LINE_STRIPS: SDAI.LIST<SDAI.LIST<SDAI.INTEGER>/*[2:nil]*/ >
                /*[1:nil]*/ ) {
      self._coordinates = COORDINATES
      self._line_strips = LINE_STRIPS
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: eCOORDINATES_LIST.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: SDAI.LIST<SDAI.LIST<SDAI.INTEGER>>.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( COORDINATES: p0, LINE_STRIPS: p1 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY tessellated_curve_set
    SUBTYPE OF ( tessellated_item );
      coordinates  : coordinates_list;
      line_strips  : LIST [1 : ?] OF LIST [2 : ?] OF INTEGER;
  END_ENTITY; -- tessellated_curve_set (line:32007 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eTESSELLATED_CURVE_SET : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _tessellated_curve_set.self
    }
    public let partialEntity: _tessellated_curve_set

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_eTESSELLATED_ITEM: eTESSELLATED_ITEM 	// [3]
    public var super_eTESSELLATED_CURVE_SET: eTESSELLATED_CURVE_SET { return self } 	// [4]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eTESSELLATED_CURVE_SET`` )
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
    /// - origin: SELF( ``eTESSELLATED_CURVE_SET`` )
    public var LINE_STRIPS: SDAI.LIST<SDAI.LIST<SDAI.INTEGER>/*[2:nil]*/ >/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._line_strips )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._line_strips = SDAI.UNWRAP(newValue)
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
      guard let partial = complexEntity?.partialEntityInstance(_tessellated_curve_set.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(eTESSELLATED_ITEM.self) else { return nil }
      self.super_eTESSELLATED_ITEM = super3

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "TESSELLATED_CURVE_SET", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eTESSELLATED_ITEM.self)
      entityDef.add(supertype: eTESSELLATED_CURVE_SET.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "COORDINATES", keyPath: \eTESSELLATED_CURVE_SET.COORDINATES, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eTESSELLATED_CURVE_SET.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "LINE_STRIPS", keyPath: \eTESSELLATED_CURVE_SET.LINE_STRIPS, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \eTESSELLATED_CURVE_SET.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
