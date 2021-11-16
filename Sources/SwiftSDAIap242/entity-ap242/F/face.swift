/* file: face.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY face
    SUPERTYPE OF ( 
        ONEOF ( 
            face_surface, 
            subface, 
            oriented_face ) )
    SUBTYPE OF ( topological_representation_item );
      bounds  : SET [1 : ?] OF face_bound;
    WHERE
      wr1: ( NOT mixed_loop_type_set( list_to_set( list_face_loops( SELF ) ) ) );
      wr2: ( SIZEOF( QUERY ( temp <* bounds | ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'FACE_OUTER_BOUND'  IN TYPEOF( temp ) ) ) ) <= 1 );
  END_ENTITY; -- face (line:15094 file:ap242ed2_mim_lf_v1.101.TY.exp)

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


  ENTITY(SELF)	face
    ATTR:  bounds,	TYPE: SET [1 : ?] OF face_bound -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: oriented_face,	TYPE: SET [1 : ?] OF face_bound	(as DERIVED)


  SUB- ENTITY(4)	advanced_face
    (no local attributes)

  SUB- ENTITY(5)	face_surface
    ATTR:  face_geometry,	TYPE: surface -- EXPLICIT

    ATTR:  same_sense,	TYPE: BOOLEAN -- EXPLICIT


  SUB- ENTITY(6)	subface
    ATTR:  parent_face,	TYPE: face -- EXPLICIT


  SUB- ENTITY(7)	oriented_face
    ATTR:  face_element,	TYPE: face -- EXPLICIT

    ATTR:  orientation,	TYPE: BOOLEAN -- EXPLICIT

    REDCR: bounds,	TYPE: SET [1 : ?] OF face_bound -- DERIVED (DYNAMIC)
      := conditional_reverse( SELF.orientation, SELF.face_element.bounds )
      -- OVERRIDING ENTITY: face


*/


//MARK: - Partial Entity
  public final class _face : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eFACE.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    /// - see the corresponding attribute accesser in the entity reference definition for the attribute value dynamic lookup logic
    public internal(set) var _bounds: (SDAI.SET<eFACE_BOUND>/*[1:nil]*/ )?  // PLAIN EXPLICIT ATTRIBUTE

    internal static func _bounds__provider(complex: SDAI.ComplexEntity) -> eFACE__BOUNDS__provider? {
      let resolved = complex.resolvePartialEntityInstance(from: [_oriented_face.typeIdentity])
      return resolved as? eFACE__BOUNDS__provider
    }

    //PARTIAL COMPLEX ENTITY SUPPORT
    final public override class func fixupPartialComplexEntityAttributes(partialComplex: SDAI.ComplexEntity, baseComplex: SDAI.ComplexEntity) {
      guard let pe = partialComplex.partialEntityInstance(_face.self) else { return }

      if pe._bounds == nil, self._bounds__provider(complex: partialComplex) == nil, 
        let base__bounds__provider = self._bounds__provider(complex: baseComplex) {
        pe._bounds = base__bounds__provider._bounds__getter(complex: baseComplex)
      }
    }
    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sFACE_OR_SURFACE.typeName)) // -> Self
      members.insert(SDAI.STRING(sREVERSIBLE_TOPOLOGY_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sREVERSIBLE_TOPOLOGY.typeName)) // -> sREVERSIBLE_TOPOLOGY_ITEM
      members.insert(SDAI.STRING(sEQUIVALENCE_DETECTED_DIFFERENCE_SELECT.typeName)) // -> Self
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._bounds?.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._bounds?.value.isValueEqualOptionally(to: rhs._bounds?.value, visited: &comppairs)	{
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
      if let comp = self._bounds?.value.isValueEqualOptionally(to: rhs._bounds?.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eFACE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = LIST_FACE_LOOPS(SELF)
      let _TEMP2 = LIST_TO_SET(_TEMP1)
      let _TEMP3 = MIXED_LOOP_TYPE_SET(SDAI.SET<eLOOP>(bound1: SDAI.UNWRAP(SDAI.INTEGER(0)), bound2: (nil as 
        SDAI.INTEGER?), generic: /*SDAI.SET<gT>*/_TEMP2))
      let _TEMP4 =  !_TEMP3
      return _TEMP4
    }
    public static func WHERE_wr2(SELF: eFACE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.BOUNDS.QUERY{ TEMP in 

          let _TEMP1 = SDAI.TYPEOF(TEMP, IS: eFACE_OUTER_BOUND.self)
          return _TEMP1 }
      let _TEMP2 = SDAI.SIZEOF(_TEMP1)
      let _TEMP3 = _TEMP2 <= SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      return _TEMP3
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(BOUNDS: (SDAI.SET<eFACE_BOUND>/*[1:nil]*/ )? ) {
      self._bounds = BOUNDS
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverOmittableParameter(as: SDAI.SET<eFACE_BOUND>.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( BOUNDS: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY face
    SUPERTYPE OF ( 
        ONEOF ( 
            face_surface, 
            subface, 
            oriented_face ) )
    SUBTYPE OF ( topological_representation_item );
      bounds  : SET [1 : ?] OF face_bound;
    WHERE
      wr1: ( NOT mixed_loop_type_set( list_to_set( list_face_loops( SELF ) ) ) );
      wr2: ( SIZEOF( QUERY ( temp <* bounds | ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'FACE_OUTER_BOUND'  IN TYPEOF( temp ) ) ) ) <= 1 );
  END_ENTITY; -- face (line:15094 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eFACE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _face.self
    }
    public let partialEntity: _face

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eTOPOLOGICAL_REPRESENTATION_ITEM: eTOPOLOGICAL_REPRESENTATION_ITEM 	// [2]
    public var super_eFACE: eFACE { return self } 	// [3]

    //MARK: SUBTYPES
    public var sub_eADVANCED_FACE: eADVANCED_FACE? {	// [4]
      return self.complexEntity.entityReference(eADVANCED_FACE.self)
    }

    public var sub_eFACE_SURFACE: eFACE_SURFACE? {	// [5]
      return self.complexEntity.entityReference(eFACE_SURFACE.self)
    }

    public var sub_eSUBFACE: eSUBFACE? {	// [6]
      return self.complexEntity.entityReference(eSUBFACE.self)
    }

    public var sub_eORIENTED_FACE: eORIENTED_FACE? {	// [7]
      return self.complexEntity.entityReference(eORIENTED_FACE.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT(DYNAMIC)__ attribute
    /// - origin: SELF( ``eFACE`` )
    public var BOUNDS: SDAI.SET<eFACE_BOUND>/*[1:nil]*/  {
      get {
        if let resolved = _face._bounds__provider(complex: self.complexEntity) {
          let value = resolved._bounds__getter(complex: self.complexEntity)
          return value
        }
        else {
          return SDAI.UNWRAP( self.partialEntity._bounds )
        }
      }
      set(newValue) {
        if let _ = _face._bounds__provider(complex: self.complexEntity) { return }

        let partial = self.partialEntity
        partial._bounds = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eORIENTED_FACE`` )
    public var ORIENTATION: SDAI.BOOLEAN?  {
      get {
        return sub_eORIENTED_FACE?.partialEntity._orientation
      }
      set(newValue) {
        guard let partial = sub_eORIENTED_FACE?.super_eORIENTED_FACE.partialEntity else { return }
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
    /// - origin: SUB( ``eSUBFACE`` )
    public var PARENT_FACE: eFACE?  {
      get {
        return sub_eSUBFACE?.partialEntity._parent_face
      }
      set(newValue) {
        guard let partial = sub_eSUBFACE?.super_eSUBFACE.partialEntity else { return }
        partial._parent_face = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eFACE_SURFACE`` )
    public var FACE_GEOMETRY: eSURFACE?  {
      get {
        return sub_eFACE_SURFACE?.partialEntity._face_geometry
      }
      set(newValue) {
        guard let partial = sub_eFACE_SURFACE?.super_eFACE_SURFACE.partialEntity else { return }
        partial._face_geometry = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eORIENTED_FACE`` )
    public var FACE_ELEMENT: eFACE?  {
      get {
        return sub_eORIENTED_FACE?.partialEntity._face_element
      }
      set(newValue) {
        guard let partial = sub_eORIENTED_FACE?.super_eORIENTED_FACE.partialEntity else { return }
        partial._face_element = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eFACE_SURFACE`` )
    public var SAME_SENSE: SDAI.BOOLEAN?  {
      get {
        return sub_eFACE_SURFACE?.partialEntity._same_sense
      }
      set(newValue) {
        guard let partial = sub_eFACE_SURFACE?.super_eFACE_SURFACE.partialEntity else { return }
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


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_face.self) else { return nil }
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
      result[prefix2 + " .WHERE_wr1"] = _face.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _face.WHERE_wr2(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "FACE", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eTOPOLOGICAL_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eFACE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "BOUNDS", keyPath: \eFACE.BOUNDS, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ORIENTATION", keyPath: \eFACE.ORIENTATION, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "PERMANENT_AGGREGATE_ID", keyPath: \eFACE.PERMANENT_AGGREGATE_ID, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "PARENT_FACE", keyPath: \eFACE.PARENT_FACE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "FACE_GEOMETRY", keyPath: \eFACE.FACE_GEOMETRY, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "FACE_ELEMENT", keyPath: \eFACE.FACE_ELEMENT, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "SAME_SENSE", keyPath: \eFACE.SAME_SENSE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "PERMANENT_ID", keyPath: \eFACE.PERMANENT_ID, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eFACE.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}

//MARK: - Entity Dynamic Attribute Protocols
internal protocol eFACE__BOUNDS__provider {
  func _bounds__getter(complex: SDAI.ComplexEntity) -> SDAI.SET<
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eFACE_BOUND>/*[1:nil]*/ 
}
