/* file: tessellated_surface_set.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  ENTITY tessellated_surface_set
    ABSTRACT SUPERTYPE OF ( 
        ONEOF ( 
            triangulated_surface_set, 
            complex_triangulated_surface_set ) )
    SUBTYPE OF ( tessellated_item );
      coordinates  : coordinates_list;
      pnmax        : INTEGER;
      normals      : LIST [0 : ?] OF LIST [3 : 3] OF REAL;
    WHERE
      wr1: ( ( SIZEOF( normals ) = 0 ) OR ( SIZEOF( normals ) = 1 ) OR ( SIZEOF( normals ) = pnmax ) );
  END_ENTITY; -- tessellated_surface_set (line:32089 file:ap242ed2_mim_lf_v1.101.TY.exp)

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

  ENTITY(SELF)	tessellated_surface_set
    ATTR:  coordinates,	TYPE: coordinates_list -- EXPLICIT

    ATTR:  pnmax,	TYPE: INTEGER -- EXPLICIT

    ATTR:  normals,	TYPE: LIST [0 : ?] OF LIST [3 : 3] OF REAL -- EXPLICIT


  SUB- ENTITY(5)	complex_triangulated_surface_set
    ATTR:  pnindex,	TYPE: LIST [0 : ?] OF INTEGER -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  triangle_strips,	TYPE: LIST [0 : ?] OF LIST [3 : ?] OF INTEGER -- EXPLICIT

    ATTR:  triangle_fans,	TYPE: LIST [0 : ?] OF LIST [3 : ?] OF INTEGER -- EXPLICIT


  SUB- ENTITY(6)	triangulated_surface_set
    ATTR:  pnindex,	TYPE: LIST [0 : ?] OF INTEGER -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  triangles,	TYPE: LIST [1 : ?] OF LIST [3 : 3] OF INTEGER -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _tessellated_surface_set : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eTESSELLATED_SURFACE_SET.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _coordinates: eCOORDINATES_LIST // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _pnmax: SDAI.INTEGER // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _normals: SDAI.LIST<SDAI.LIST<SDAI.REAL>/*[3:3]*/ >/*[0:nil]*/  // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sTESSELLATED_SURFACE_ITEM.typeName)) // -> Self
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._coordinates.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._pnmax.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._normals.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._coordinates.value.isValueEqualOptionally(to: rhs._coordinates.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._pnmax.value.isValueEqualOptionally(to: rhs._pnmax.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._normals.value.isValueEqualOptionally(to: rhs._normals.value, visited: &comppairs)	{
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
      if let comp = self._pnmax.value.isValueEqualOptionally(to: rhs._pnmax.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._normals.value.isValueEqualOptionally(to: rhs._normals.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eTESSELLATED_SURFACE_SET?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.SIZEOF(SELF.NORMALS)
      let _TEMP2 = _TEMP1 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      let _TEMP3 = SDAI.SIZEOF(SELF.NORMALS)
      let _TEMP4 = _TEMP3 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      let _TEMP5 = _TEMP2 || _TEMP4
      let _TEMP6 = SDAI.SIZEOF(SELF.NORMALS)
      let _TEMP7 = _TEMP6 .==. SDAI.FORCE_OPTIONAL(SELF.PNMAX)
      let _TEMP8 = _TEMP5 || _TEMP7
      return _TEMP8
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(COORDINATES: eCOORDINATES_LIST, PNMAX: SDAI.INTEGER, NORMALS: SDAI.LIST<SDAI.LIST<SDAI.REAL>
                /*[3:3]*/ >/*[0:nil]*/ ) {
      self._coordinates = COORDINATES
      self._pnmax = PNMAX
      self._normals = NORMALS
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 3
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: eCOORDINATES_LIST.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: SDAI.INTEGER.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p2) = exchangeStructure.recoverRequiredParameter(as: SDAI.LIST<SDAI.LIST<SDAI.REAL>>.self, from: parameters[2])
      else { exchangeStructure.add(errorContext: "while recovering parameter #2 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( COORDINATES: p0, PNMAX: p1, NORMALS: p2 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY tessellated_surface_set
    ABSTRACT SUPERTYPE OF ( 
        ONEOF ( 
            triangulated_surface_set, 
            complex_triangulated_surface_set ) )
    SUBTYPE OF ( tessellated_item );
      coordinates  : coordinates_list;
      pnmax        : INTEGER;
      normals      : LIST [0 : ?] OF LIST [3 : 3] OF REAL;
    WHERE
      wr1: ( ( SIZEOF( normals ) = 0 ) OR ( SIZEOF( normals ) = 1 ) OR ( SIZEOF( normals ) = pnmax ) );
  END_ENTITY; -- tessellated_surface_set (line:32089 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eTESSELLATED_SURFACE_SET : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _tessellated_surface_set.self
    }
    public let partialEntity: _tessellated_surface_set

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_eTESSELLATED_ITEM: eTESSELLATED_ITEM 	// [3]
    public var super_eTESSELLATED_SURFACE_SET: eTESSELLATED_SURFACE_SET { return self } 	// [4]

    //MARK: SUBTYPES
    public var sub_eCOMPLEX_TRIANGULATED_SURFACE_SET: eCOMPLEX_TRIANGULATED_SURFACE_SET? {	// [5]
      return self.complexEntity.entityReference(eCOMPLEX_TRIANGULATED_SURFACE_SET.self)
    }

    public var sub_eTRIANGULATED_SURFACE_SET: eTRIANGULATED_SURFACE_SET? {	// [6]
      return self.complexEntity.entityReference(eTRIANGULATED_SURFACE_SET.self)
    }


    //MARK: ATTRIBUTES
    // PNINDEX: (2 AMBIGUOUS REFs)

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eTESSELLATED_SURFACE_SET`` )
    public var NORMALS: SDAI.LIST<SDAI.LIST<SDAI.REAL>/*[3:3]*/ >/*[0:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._normals )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._normals = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eTESSELLATED_SURFACE_SET`` )
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
    /// - origin: SUB( ``eCOMPLEX_TRIANGULATED_SURFACE_SET`` )
    public var TRIANGLE_STRIPS: (SDAI.LIST<SDAI.LIST<SDAI.INTEGER>/*[3:nil]*/ >/*[0:nil]*/ )?  {
      get {
        return sub_eCOMPLEX_TRIANGULATED_SURFACE_SET?.partialEntity._triangle_strips
      }
      set(newValue) {
        guard let partial = sub_eCOMPLEX_TRIANGULATED_SURFACE_SET?.super_eCOMPLEX_TRIANGULATED_SURFACE_SET
          .partialEntity else { return }
        partial._triangle_strips = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eTRIANGULATED_SURFACE_SET`` )
    public var TRIANGLES: (SDAI.LIST<SDAI.LIST<SDAI.INTEGER>/*[3:3]*/ >/*[1:nil]*/ )?  {
      get {
        return sub_eTRIANGULATED_SURFACE_SET?.partialEntity._triangles
      }
      set(newValue) {
        guard let partial = sub_eTRIANGULATED_SURFACE_SET?.super_eTRIANGULATED_SURFACE_SET.partialEntity
          else { return }
        partial._triangles = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eTESSELLATED_SURFACE_SET`` )
    public var PNMAX: SDAI.INTEGER {
      get {
        return SDAI.UNWRAP( self.partialEntity._pnmax )
      }
      set(newValue) {
        let partial = self.partialEntity
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
    /// - origin: SUB( ``eCOMPLEX_TRIANGULATED_SURFACE_SET`` )
    public var TRIANGLE_FANS: (SDAI.LIST<SDAI.LIST<SDAI.INTEGER>/*[3:nil]*/ >/*[0:nil]*/ )?  {
      get {
        return sub_eCOMPLEX_TRIANGULATED_SURFACE_SET?.partialEntity._triangle_fans
      }
      set(newValue) {
        guard let partial = sub_eCOMPLEX_TRIANGULATED_SURFACE_SET?.super_eCOMPLEX_TRIANGULATED_SURFACE_SET
          .partialEntity else { return }
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
      guard let partial = complexEntity?.partialEntityInstance(_tessellated_surface_set.self) else { return nil }
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


    //MARK: WHERE RULE VALIDATION (ENTITY)
    public override class func validateWhereRules(instance:SDAI.EntityReference?, prefix:SDAI.WhereLabel) -> [SDAI.WhereLabel:SDAI.LOGICAL] {
      guard let instance = instance as? Self else { return [:] }

      let prefix2 = prefix + " \(instance)"

      var result = super.validateWhereRules(instance:instance, prefix:prefix2)
      result[prefix2 + " .WHERE_wr1"] = _tessellated_surface_set.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "TESSELLATED_SURFACE_SET", type: self, explicitAttributeCount: 3)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eTESSELLATED_ITEM.self)
      entityDef.add(supertype: eTESSELLATED_SURFACE_SET.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "NORMALS", keyPath: \eTESSELLATED_SURFACE_SET.NORMALS, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "COORDINATES", keyPath: \eTESSELLATED_SURFACE_SET.COORDINATES, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "TRIANGLE_STRIPS", keyPath: \eTESSELLATED_SURFACE_SET.TRIANGLE_STRIPS, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "TRIANGLES", keyPath: \eTESSELLATED_SURFACE_SET.TRIANGLES, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "PNMAX", keyPath: \eTESSELLATED_SURFACE_SET.PNMAX, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eTESSELLATED_SURFACE_SET.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "TRIANGLE_FANS", keyPath: \eTESSELLATED_SURFACE_SET.TRIANGLE_FANS, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \eTESSELLATED_SURFACE_SET.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
