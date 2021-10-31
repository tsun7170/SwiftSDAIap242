/* file: cartesian_point.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  ENTITY cartesian_point
    SUPERTYPE OF ( 
        ONEOF ( 
            cylindrical_point, 
            polar_point, 
            spherical_point ) )
    SUBTYPE OF ( point );
      coordinates  : LIST [1 : 3] OF length_measure;
  END_ENTITY; -- cartesian_point (line:8849 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(2)	geometric_representation_item
    ATTR:  dim,	TYPE: dimension_count -- DERIVED
      := dimension_of( SELF )


  SUPER- ENTITY(3)	point
    (no local attributes)

  ENTITY(SELF)	cartesian_point
    ATTR:  coordinates,	TYPE: LIST [1 : 3] OF length_measure -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: spherical_point,	TYPE: LIST [3 : 3] OF length_measure	(as DERIVED)
          ENTITY: cylindrical_point,	TYPE: LIST [3 : 3] OF length_measure	(as DERIVED)
          ENTITY: polar_point,	TYPE: LIST [2 : 2] OF length_measure	(as DERIVED)


  SUB- ENTITY(5)	spherical_point
    ATTR:  r,	TYPE: length_measure -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  theta,	TYPE: plane_angle_measure -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  phi,	TYPE: plane_angle_measure -- EXPLICIT

    REDCR: coordinates,	TYPE: LIST [3 : 3] OF length_measure -- DERIVED (DYNAMIC)
      := [r * SIN( theta ) * COS( phi ), r * SIN( theta ) * SIN( phi ), r * COS( theta )]
      -- OVERRIDING ENTITY: cartesian_point


  SUB- ENTITY(6)	cylindrical_point
    ATTR:  r,	TYPE: length_measure -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  theta,	TYPE: plane_angle_measure -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  z,	TYPE: length_measure -- EXPLICIT

    REDCR: coordinates,	TYPE: LIST [3 : 3] OF length_measure -- DERIVED (DYNAMIC)
      := [r * COS( theta ), r * SIN( theta ), z]
      -- OVERRIDING ENTITY: cartesian_point


  SUB- ENTITY(7)	polar_point
    ATTR:  r,	TYPE: length_measure -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  theta,	TYPE: plane_angle_measure -- EXPLICIT	(AMBIGUOUS/MASKED)

    REDCR: coordinates,	TYPE: LIST [2 : 2] OF length_measure -- DERIVED (DYNAMIC)
      := [r * COS( theta ), r * SIN( theta )]
      -- OVERRIDING ENTITY: cartesian_point


*/


//MARK: - Partial Entity
  public final class _cartesian_point : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eCARTESIAN_POINT.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    /// - see the corresponding attribute accesser in the entity reference definition for the attribute value dynamic lookup logic
    public internal(set) var _coordinates: (SDAI.LIST<tLENGTH_MEASURE>/*[1:3]*/ )?  // PLAIN EXPLICIT ATTRIBUTE

    internal static func _coordinates__provider(complex: SDAI.ComplexEntity) -> eCARTESIAN_POINT__COORDINATES__provider? {
      let resolved = complex.resolvePartialEntityInstance(from: [_spherical_point.typeIdentity, 
        _cylindrical_point.typeIdentity, _polar_point.typeIdentity])
      return resolved as? eCARTESIAN_POINT__COORDINATES__provider
    }

    //PARTIAL COMPLEX ENTITY SUPPORT
    final public override class func fixupPartialComplexEntityAttributes(partialComplex: SDAI.ComplexEntity, baseComplex: SDAI.ComplexEntity) {
      guard let pe = partialComplex.partialEntityInstance(_cartesian_point.self) else { return }

      if pe._coordinates == nil, self._coordinates__provider(complex: partialComplex) == nil, 
        let base__coordinates__provider = self._coordinates__provider(complex: baseComplex) {
        pe._coordinates = base__coordinates__provider._coordinates__getter(complex: baseComplex)
      }
    }
    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sTRIMMING_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sEQUIVALENCE_DETECTED_DIFFERENCE_SELECT.typeName)) // -> Self
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._coordinates?.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._coordinates?.value.isValueEqualOptionally(to: rhs._coordinates?.value, visited: &comppairs)	{
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
      if let comp = self._coordinates?.value.isValueEqualOptionally(to: rhs._coordinates?.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(COORDINATES: (SDAI.LIST<tLENGTH_MEASURE>/*[1:3]*/ )? ) {
      self._coordinates = COORDINATES
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverOmittableParameter(as: SDAI.LIST<tLENGTH_MEASURE>.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( COORDINATES: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY cartesian_point
    SUPERTYPE OF ( 
        ONEOF ( 
            cylindrical_point, 
            polar_point, 
            spherical_point ) )
    SUBTYPE OF ( point );
      coordinates  : LIST [1 : 3] OF length_measure;
  END_ENTITY; -- cartesian_point (line:8849 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eCARTESIAN_POINT : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _cartesian_point.self
    }
    public let partialEntity: _cartesian_point

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_ePOINT: ePOINT 	// [3]
    public var super_eCARTESIAN_POINT: eCARTESIAN_POINT { return self } 	// [4]

    //MARK: SUBTYPES
    public var sub_eSPHERICAL_POINT: eSPHERICAL_POINT? {	// [5]
      return self.complexEntity.entityReference(eSPHERICAL_POINT.self)
    }

    public var sub_eCYLINDRICAL_POINT: eCYLINDRICAL_POINT? {	// [6]
      return self.complexEntity.entityReference(eCYLINDRICAL_POINT.self)
    }

    public var sub_ePOLAR_POINT: ePOLAR_POINT? {	// [7]
      return self.complexEntity.entityReference(ePOLAR_POINT.self)
    }


    //MARK: ATTRIBUTES
    // R: (3 AMBIGUOUS REFs)

    // THETA: (3 AMBIGUOUS REFs)

    /// __EXPLICIT(DYNAMIC)__ attribute
    /// - origin: SELF( ``eCARTESIAN_POINT`` )
    public var COORDINATES: SDAI.LIST<tLENGTH_MEASURE>/*[1:3]*/  {
      get {
        if let resolved = _cartesian_point._coordinates__provider(complex: self.complexEntity) {
          let value = resolved._coordinates__getter(complex: self.complexEntity)
          return value
        }
        else {
          return SDAI.UNWRAP( self.partialEntity._coordinates )
        }
      }
      set(newValue) {
        if let _ = _cartesian_point._coordinates__provider(complex: self.complexEntity) { return }

        let partial = self.partialEntity
        partial._coordinates = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eCYLINDRICAL_POINT`` )
    public var Z: tLENGTH_MEASURE?  {
      get {
        return sub_eCYLINDRICAL_POINT?.partialEntity._z
      }
      set(newValue) {
        guard let partial = sub_eCYLINDRICAL_POINT?.super_eCYLINDRICAL_POINT.partialEntity else { return }
        partial._z = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eSPHERICAL_POINT`` )
    public var PHI: tPLANE_ANGLE_MEASURE?  {
      get {
        return sub_eSPHERICAL_POINT?.partialEntity._phi
      }
      set(newValue) {
        guard let partial = sub_eSPHERICAL_POINT?.super_eSPHERICAL_POINT.partialEntity else { return }
        partial._phi = SDAI.UNWRAP(newValue)
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
      guard let partial = complexEntity?.partialEntityInstance(_cartesian_point.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(ePOINT.self) else { return nil }
      self.super_ePOINT = super3

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "CARTESIAN_POINT", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: ePOINT.self)
      entityDef.add(supertype: eCARTESIAN_POINT.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "COORDINATES", keyPath: \eCARTESIAN_POINT.COORDINATES, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "Z", keyPath: \eCARTESIAN_POINT.Z, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "PHI", keyPath: \eCARTESIAN_POINT.PHI, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eCARTESIAN_POINT.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \eCARTESIAN_POINT.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}

//MARK: - Entity Dynamic Attribute Protocols
internal protocol eCARTESIAN_POINT__COORDINATES__provider {
  func _coordinates__getter(complex: SDAI.ComplexEntity) -> SDAI.LIST<
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.tLENGTH_MEASURE>/*[1:3]*/ 
}
