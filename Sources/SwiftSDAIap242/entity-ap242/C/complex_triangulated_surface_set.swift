/* file: complex_triangulated_surface_set.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY complex_triangulated_surface_set
    SUBTYPE OF ( tessellated_surface_set );
      pnindex          : LIST [0 : ?] OF INTEGER;
      triangle_strips  : LIST [0 : ?] OF LIST [3 : ?] OF INTEGER;
      triangle_fans    : LIST [0 : ?] OF LIST [3 : ?] OF INTEGER;
    WHERE
      wr1: ( ( SIZEOF( pnindex ) = 0 ) OR ( SIZEOF( pnindex ) = SELF\tessellated_surface_set.pnmax ) );
      wr2: ( NOT ( ( SIZEOF( pnindex ) = 0 ) AND ( SELF\tessellated_surface_set.pnmax <> coordinates.npoints ) ) );
      wr3: ( NOT ( ( SIZEOF( triangle_strips ) = 0 ) AND ( SIZEOF( triangle_fans ) = 0 ) ) );
  END_ENTITY; -- complex_triangulated_surface_set (line:9850 file:ap242ed2_mim_lf_v1.101.TY.exp)

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

  SUPER- ENTITY(4)	tessellated_surface_set
    ATTR:  coordinates,	TYPE: coordinates_list -- EXPLICIT

    ATTR:  pnmax,	TYPE: INTEGER -- EXPLICIT

    ATTR:  normals,	TYPE: LIST [0 : ?] OF LIST [3 : 3] OF REAL -- EXPLICIT


  ENTITY(SELF)	complex_triangulated_surface_set
    ATTR:  pnindex,	TYPE: LIST [0 : ?] OF INTEGER -- EXPLICIT

    ATTR:  triangle_strips,	TYPE: LIST [0 : ?] OF LIST [3 : ?] OF INTEGER -- EXPLICIT

    ATTR:  triangle_fans,	TYPE: LIST [0 : ?] OF LIST [3 : ?] OF INTEGER -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _complex_triangulated_surface_set : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eCOMPLEX_TRIANGULATED_SURFACE_SET.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _pnindex: SDAI.LIST<SDAI.INTEGER>/*[0:nil]*/  // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _triangle_strips: SDAI.LIST<SDAI.LIST<SDAI.INTEGER>/*[3:nil]*/ >/*[0:nil]*/  // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _triangle_fans: SDAI.LIST<SDAI.LIST<SDAI.INTEGER>/*[3:nil]*/ >/*[0:nil]*/  // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._pnindex.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._triangle_strips.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._triangle_fans.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._pnindex.value.isValueEqualOptionally(to: rhs._pnindex.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._triangle_strips.value.isValueEqualOptionally(to: rhs._triangle_strips.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._triangle_fans.value.isValueEqualOptionally(to: rhs._triangle_fans.value, visited: &comppairs)	{
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
      if let comp = self._pnindex.value.isValueEqualOptionally(to: rhs._pnindex.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._triangle_strips.value.isValueEqualOptionally(to: rhs._triangle_strips.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._triangle_fans.value.isValueEqualOptionally(to: rhs._triangle_fans.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eCOMPLEX_TRIANGULATED_SURFACE_SET?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.SIZEOF(SELF.PNINDEX)
      let _TEMP2 = _TEMP1 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      let _TEMP3 = SDAI.SIZEOF(SELF.PNINDEX)
      let _TEMP4 = SELF.GROUP_REF(eTESSELLATED_SURFACE_SET.self)
      let _TEMP5 = _TEMP4?.PNMAX
      let _TEMP6 = _TEMP3 .==. _TEMP5
      let _TEMP7 = _TEMP2 || _TEMP6
      return _TEMP7
    }
    public static func WHERE_wr2(SELF: eCOMPLEX_TRIANGULATED_SURFACE_SET?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.SIZEOF(SELF.PNINDEX)
      let _TEMP2 = _TEMP1 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      let _TEMP3 = SELF.GROUP_REF(eTESSELLATED_SURFACE_SET.self)
      let _TEMP4 = _TEMP3?.PNMAX
      let _TEMP5 = SELF.COORDINATES.NPOINTS
      let _TEMP6 = _TEMP4 .!=. SDAI.FORCE_OPTIONAL(_TEMP5)
      let _TEMP7 = _TEMP2 && _TEMP6
      let _TEMP8 =  !_TEMP7
      return _TEMP8
    }
    public static func WHERE_wr3(SELF: eCOMPLEX_TRIANGULATED_SURFACE_SET?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.SIZEOF(SELF.TRIANGLE_STRIPS)
      let _TEMP2 = _TEMP1 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      let _TEMP3 = SDAI.SIZEOF(SELF.TRIANGLE_FANS)
      let _TEMP4 = _TEMP3 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      let _TEMP5 = _TEMP2 && _TEMP4
      let _TEMP6 =  !_TEMP5
      return _TEMP6
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(PNINDEX: SDAI.LIST<SDAI.INTEGER>/*[0:nil]*/ , TRIANGLE_STRIPS: SDAI.LIST<SDAI.LIST<SDAI.INTEGER>
                /*[3:nil]*/ >/*[0:nil]*/ , TRIANGLE_FANS: SDAI.LIST<SDAI.LIST<SDAI.INTEGER>/*[3:nil]*/ >/*[0:
                nil]*/ ) {
      self._pnindex = PNINDEX
      self._triangle_strips = TRIANGLE_STRIPS
      self._triangle_fans = TRIANGLE_FANS
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 3
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: SDAI.LIST<SDAI.INTEGER>.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: SDAI.LIST<SDAI.LIST<SDAI.INTEGER>>.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p2) = exchangeStructure.recoverRequiredParameter(as: SDAI.LIST<SDAI.LIST<SDAI.INTEGER>>.self, from: parameters[2])
      else { exchangeStructure.add(errorContext: "while recovering parameter #2 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( PNINDEX: p0, TRIANGLE_STRIPS: p1, TRIANGLE_FANS: p2 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY complex_triangulated_surface_set
    SUBTYPE OF ( tessellated_surface_set );
      pnindex          : LIST [0 : ?] OF INTEGER;
      triangle_strips  : LIST [0 : ?] OF LIST [3 : ?] OF INTEGER;
      triangle_fans    : LIST [0 : ?] OF LIST [3 : ?] OF INTEGER;
    WHERE
      wr1: ( ( SIZEOF( pnindex ) = 0 ) OR ( SIZEOF( pnindex ) = SELF\tessellated_surface_set.pnmax ) );
      wr2: ( NOT ( ( SIZEOF( pnindex ) = 0 ) AND ( SELF\tessellated_surface_set.pnmax <> coordinates.npoints ) ) );
      wr3: ( NOT ( ( SIZEOF( triangle_strips ) = 0 ) AND ( SIZEOF( triangle_fans ) = 0 ) ) );
  END_ENTITY; -- complex_triangulated_surface_set (line:9850 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eCOMPLEX_TRIANGULATED_SURFACE_SET : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _complex_triangulated_surface_set.self
    }
    public let partialEntity: _complex_triangulated_surface_set

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_eTESSELLATED_ITEM: eTESSELLATED_ITEM 	// [3]
    public let super_eTESSELLATED_SURFACE_SET: eTESSELLATED_SURFACE_SET 	// [4]
    public var super_eCOMPLEX_TRIANGULATED_SURFACE_SET: eCOMPLEX_TRIANGULATED_SURFACE_SET { return self } 	// [5]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eTESSELLATED_SURFACE_SET`` )
    public var NORMALS: SDAI.LIST<SDAI.LIST<SDAI.REAL>/*[3:3]*/ >/*[0:nil]*/  {
      get {
        return SDAI.UNWRAP( super_eTESSELLATED_SURFACE_SET.partialEntity._normals )
      }
      set(newValue) {
        let partial = super_eTESSELLATED_SURFACE_SET.partialEntity
        partial._normals = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eTESSELLATED_SURFACE_SET`` )
    public var COORDINATES: eCOORDINATES_LIST {
      get {
        return SDAI.UNWRAP( super_eTESSELLATED_SURFACE_SET.partialEntity._coordinates )
      }
      set(newValue) {
        let partial = super_eTESSELLATED_SURFACE_SET.partialEntity
        partial._coordinates = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eCOMPLEX_TRIANGULATED_SURFACE_SET`` )
    public var TRIANGLE_STRIPS: SDAI.LIST<SDAI.LIST<SDAI.INTEGER>/*[3:nil]*/ >/*[0:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._triangle_strips )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._triangle_strips = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eCOMPLEX_TRIANGULATED_SURFACE_SET`` )
    public var PNINDEX: SDAI.LIST<SDAI.INTEGER>/*[0:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._pnindex )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._pnindex = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eTESSELLATED_SURFACE_SET`` )
    public var PNMAX: SDAI.INTEGER {
      get {
        return SDAI.UNWRAP( super_eTESSELLATED_SURFACE_SET.partialEntity._pnmax )
      }
      set(newValue) {
        let partial = super_eTESSELLATED_SURFACE_SET.partialEntity
        partial._pnmax = SDAI.UNWRAP(newValue)
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
    /// - origin: SELF( ``eCOMPLEX_TRIANGULATED_SURFACE_SET`` )
    public var TRIANGLE_FANS: SDAI.LIST<SDAI.LIST<SDAI.INTEGER>/*[3:nil]*/ >/*[0:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._triangle_fans )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._triangle_fans = SDAI.UNWRAP(newValue)
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
      guard let partial = complexEntity?.partialEntityInstance(_complex_triangulated_surface_set.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(eTESSELLATED_ITEM.self) else { return nil }
      self.super_eTESSELLATED_ITEM = super3

      guard let super4 = complexEntity?.entityReference(eTESSELLATED_SURFACE_SET.self) else { return nil }
      self.super_eTESSELLATED_SURFACE_SET = super4

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
      result[prefix2 + " .WHERE_wr1"] = _complex_triangulated_surface_set.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _complex_triangulated_surface_set.WHERE_wr2(SELF: instance)
      result[prefix2 + " .WHERE_wr3"] = _complex_triangulated_surface_set.WHERE_wr3(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "COMPLEX_TRIANGULATED_SURFACE_SET", type: self, explicitAttributeCount: 3)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eTESSELLATED_ITEM.self)
      entityDef.add(supertype: eTESSELLATED_SURFACE_SET.self)
      entityDef.add(supertype: eCOMPLEX_TRIANGULATED_SURFACE_SET.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "NORMALS", keyPath: \eCOMPLEX_TRIANGULATED_SURFACE_SET.NORMALS, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "COORDINATES", keyPath: \eCOMPLEX_TRIANGULATED_SURFACE_SET.COORDINATES, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "TRIANGLE_STRIPS", keyPath: \eCOMPLEX_TRIANGULATED_SURFACE_SET.TRIANGLE_STRIPS, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "PNINDEX", keyPath: \eCOMPLEX_TRIANGULATED_SURFACE_SET.PNINDEX, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "PNMAX", keyPath: \eCOMPLEX_TRIANGULATED_SURFACE_SET.PNMAX, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eCOMPLEX_TRIANGULATED_SURFACE_SET.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "TRIANGLE_FANS", keyPath: \eCOMPLEX_TRIANGULATED_SURFACE_SET.TRIANGLE_FANS, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \eCOMPLEX_TRIANGULATED_SURFACE_SET.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
