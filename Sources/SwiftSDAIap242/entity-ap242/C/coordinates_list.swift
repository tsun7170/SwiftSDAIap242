/* file: coordinates_list.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY coordinates_list
    SUBTYPE OF ( tessellated_item );
      npoints          : INTEGER;
      position_coords  : LIST [1 : ?] OF LIST [3 : 3] OF REAL;
    WHERE
      wr1: ( npoints = SIZEOF( position_coords ) );
      wr2: ( SIZEOF( [ 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.REPOSITIONED_TESSELLATED_ITEM'] * 
               TYPEOF( SELF ) ) = 0 );
  END_ENTITY; -- coordinates_list (line:10700 file:ap242ed2_mim_lf_v1.101.TY.exp)

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

  ENTITY(SELF)	coordinates_list
    ATTR:  npoints,	TYPE: INTEGER -- EXPLICIT

    ATTR:  position_coords,	TYPE: LIST [1 : ?] OF LIST [3 : 3] OF REAL -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _coordinates_list : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eCOORDINATES_LIST.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _npoints: SDAI.INTEGER // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _position_coords: SDAI.LIST<SDAI.LIST<SDAI.REAL>/*[3:3]*/ >/*[1:nil]*/  // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._npoints.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._position_coords.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._npoints.value.isValueEqualOptionally(to: rhs._npoints.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._position_coords.value.isValueEqualOptionally(to: rhs._position_coords.value, visited: &comppairs)	{
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
      if let comp = self._npoints.value.isValueEqualOptionally(to: rhs._npoints.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._position_coords.value.isValueEqualOptionally(to: rhs._position_coords.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eCOORDINATES_LIST?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.SIZEOF(SELF.POSITION_COORDS)
      let _TEMP2 = SDAI.FORCE_OPTIONAL(SELF.NPOINTS) .==. _TEMP1
      return _TEMP2
    }
    public static func WHERE_wr2(SELF: eCOORDINATES_LIST?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = ([SDAI.AIE(SDAI.STRING(
        "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.REPOSITIONED_TESSELLATED_ITEM"))] 
        as [SDAI.AggregationInitializerElement<SDAI.STRING>])
      let _TEMP2 = SDAI.TYPEOF(SELF)
      let _TEMP3 = SDAI.FORCE_OPTIONAL(_TEMP1) * SDAI.FORCE_OPTIONAL(_TEMP2)
      let _TEMP4 = SDAI.SIZEOF(_TEMP3)
      let _TEMP5 = _TEMP4 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP5
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(NPOINTS: SDAI.INTEGER, POSITION_COORDS: SDAI.LIST<SDAI.LIST<SDAI.REAL>/*[3:3]*/ >/*[1:nil]*/ ) {
      self._npoints = NPOINTS
      self._position_coords = POSITION_COORDS
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: SDAI.INTEGER.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: SDAI.LIST<SDAI.LIST<SDAI.REAL>>.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( NPOINTS: p0, POSITION_COORDS: p1 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY coordinates_list
    SUBTYPE OF ( tessellated_item );
      npoints          : INTEGER;
      position_coords  : LIST [1 : ?] OF LIST [3 : 3] OF REAL;
    WHERE
      wr1: ( npoints = SIZEOF( position_coords ) );
      wr2: ( SIZEOF( [ 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.REPOSITIONED_TESSELLATED_ITEM'] * 
               TYPEOF( SELF ) ) = 0 );
  END_ENTITY; -- coordinates_list (line:10700 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eCOORDINATES_LIST : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _coordinates_list.self
    }
    public let partialEntity: _coordinates_list

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_eTESSELLATED_ITEM: eTESSELLATED_ITEM 	// [3]
    public var super_eCOORDINATES_LIST: eCOORDINATES_LIST { return self } 	// [4]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eCOORDINATES_LIST`` )
    public var NPOINTS: SDAI.INTEGER {
      get {
        return SDAI.UNWRAP( self.partialEntity._npoints )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._npoints = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eCOORDINATES_LIST`` )
    public var POSITION_COORDS: SDAI.LIST<SDAI.LIST<SDAI.REAL>/*[3:3]*/ >/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._position_coords )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._position_coords = SDAI.UNWRAP(newValue)
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
      guard let partial = complexEntity?.partialEntityInstance(_coordinates_list.self) else { return nil }
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
      result[prefix2 + " .WHERE_wr1"] = _coordinates_list.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _coordinates_list.WHERE_wr2(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "COORDINATES_LIST", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eTESSELLATED_ITEM.self)
      entityDef.add(supertype: eCOORDINATES_LIST.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "NPOINTS", keyPath: \eCOORDINATES_LIST.NPOINTS, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "POSITION_COORDS", keyPath: \eCOORDINATES_LIST.POSITION_COORDS, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eCOORDINATES_LIST.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \eCOORDINATES_LIST.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
