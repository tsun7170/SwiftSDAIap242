/* file: face_surface.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY face_surface
    SUBTYPE OF ( face, geometric_representation_item );
      face_geometry  : surface;
      same_sense     : BOOLEAN;
    WHERE
      wr1: ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ORIENTED_SURFACE' IN TYPEOF( 
               face_geometry ) ) );
  END_ENTITY; -- face_surface (line:15140 file:ap242ed2_mim_lf_v1.101.TY.exp)

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


  SUPER- ENTITY(3)	face
    ATTR:  bounds,	TYPE: SET [1 : ?] OF face_bound -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: oriented_face,	TYPE: SET [1 : ?] OF face_bound	(as DERIVED)


  SUPER- ENTITY(4)	geometric_representation_item
    ATTR:  dim,	TYPE: dimension_count -- DERIVED
      := dimension_of( SELF )


  ENTITY(SELF)	face_surface
    ATTR:  face_geometry,	TYPE: surface -- EXPLICIT

    ATTR:  same_sense,	TYPE: BOOLEAN -- EXPLICIT


  SUB- ENTITY(6)	advanced_face
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _face_surface : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eFACE_SURFACE.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _face_geometry: eSURFACE // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _same_sense: SDAI.BOOLEAN // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sGENERALIZED_SURFACE_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sTRIM_CONDITION_SELECT.typeName)) // -> sGENERALIZED_SURFACE_SELECT
      members.insert(SDAI.STRING(sINSPECTED_ECDQ_ELEMENT_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sLOCATION_OF_EXTREME_VALUE_SELECT.typeName)) // -> sINSPECTED_ECDQ_ELEMENT_SELECT
      members.insert(SDAI.STRING(sINSPECTED_SHAPE_ELEMENT_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sSKETCH_BASIS_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sINSPECTED_ELEMENT_SELECT.typeName)) // -> Self
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._face_geometry.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._same_sense.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._face_geometry.value.isValueEqualOptionally(to: rhs._face_geometry.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._same_sense.value.isValueEqualOptionally(to: rhs._same_sense.value, visited: &comppairs)	{
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
      if let comp = self._face_geometry.value.isValueEqualOptionally(to: rhs._face_geometry.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._same_sense.value.isValueEqualOptionally(to: rhs._same_sense.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eFACE_SURFACE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF.FACE_GEOMETRY, IS: eORIENTED_SURFACE.self)
      let _TEMP2 =  !_TEMP1
      return _TEMP2
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(FACE_GEOMETRY: eSURFACE, SAME_SENSE: SDAI.BOOLEAN) {
      self._face_geometry = FACE_GEOMETRY
      self._same_sense = SAME_SENSE
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: eSURFACE.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: SDAI.BOOLEAN.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( FACE_GEOMETRY: p0, SAME_SENSE: p1 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY face_surface
    SUBTYPE OF ( face, geometric_representation_item );
      face_geometry  : surface;
      same_sense     : BOOLEAN;
    WHERE
      wr1: ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ORIENTED_SURFACE' IN TYPEOF( 
               face_geometry ) ) );
  END_ENTITY; -- face_surface (line:15140 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eFACE_SURFACE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _face_surface.self
    }
    public let partialEntity: _face_surface

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eTOPOLOGICAL_REPRESENTATION_ITEM: eTOPOLOGICAL_REPRESENTATION_ITEM 	// [2]
    public let super_eFACE: eFACE 	// [3]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [4]
    public var super_eFACE_SURFACE: eFACE_SURFACE { return self } 	// [5]

    //MARK: SUBTYPES
    public var sub_eADVANCED_FACE: eADVANCED_FACE? {	// [6]
      return self.complexEntity.entityReference(eADVANCED_FACE.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT(DYNAMIC)__ attribute
    /// - origin: SUPER( ``eFACE`` )
    public var BOUNDS: SDAI.SET<eFACE_BOUND>/*[1:nil]*/  {
      get {
        if let resolved = _face._bounds__provider(complex: self.complexEntity) {
          let value = resolved._bounds__getter(complex: self.complexEntity)
          return value
        }
        else {
          return SDAI.UNWRAP( super_eFACE.partialEntity._bounds )
        }
      }
      set(newValue) {
        if let _ = _face._bounds__provider(complex: self.complexEntity) { return }

        let partial = super_eFACE.partialEntity
        partial._bounds = SDAI.UNWRAP(newValue)
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
    /// - origin: SELF( ``eFACE_SURFACE`` )
    public var FACE_GEOMETRY: eSURFACE {
      get {
        return SDAI.UNWRAP( self.partialEntity._face_geometry )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._face_geometry = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eFACE_SURFACE`` )
    public var SAME_SENSE: SDAI.BOOLEAN {
      get {
        return SDAI.UNWRAP( self.partialEntity._same_sense )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._same_sense = SDAI.UNWRAP(newValue)
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
      guard let partial = complexEntity?.partialEntityInstance(_face_surface.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eTOPOLOGICAL_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eTOPOLOGICAL_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(eFACE.self) else { return nil }
      self.super_eFACE = super3

      guard let super4 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super4

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
      result[prefix2 + " .WHERE_wr1"] = _face_surface.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "FACE_SURFACE", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eTOPOLOGICAL_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eFACE.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eFACE_SURFACE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "BOUNDS", keyPath: \eFACE_SURFACE.BOUNDS, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "PERMANENT_AGGREGATE_ID", keyPath: \eFACE_SURFACE.PERMANENT_AGGREGATE_ID, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "FACE_GEOMETRY", keyPath: \eFACE_SURFACE.FACE_GEOMETRY, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "SAME_SENSE", keyPath: \eFACE_SURFACE.SAME_SENSE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "PERMANENT_ID", keyPath: \eFACE_SURFACE.PERMANENT_ID, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eFACE_SURFACE.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \eFACE_SURFACE.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
