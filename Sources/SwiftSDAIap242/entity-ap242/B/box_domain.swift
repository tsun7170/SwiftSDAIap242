/* file: box_domain.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY box_domain
    SUBTYPE OF ( founded_item );
      corner   : cartesian_point;
      xlength  : positive_length_measure;
      ylength  : positive_length_measure;
      zlength  : positive_length_measure;
    WHERE
      wr1: ( SIZEOF( QUERY ( item <* USEDIN( SELF, '' ) | ( NOT ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.BOXED_HALF_SPACE'  IN TYPEOF( item ) ) ) ) ) 
               = 0 );
  END_ENTITY; -- box_domain (line:8670 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	founded_item
    ATTR:  users,	TYPE: SET [0 : ?] OF founded_item_select -- DERIVED
      := using_items( SELF, [] )


  ENTITY(SELF)	box_domain
    ATTR:  corner,	TYPE: cartesian_point -- EXPLICIT

    ATTR:  xlength,	TYPE: positive_length_measure -- EXPLICIT

    ATTR:  ylength,	TYPE: positive_length_measure -- EXPLICIT

    ATTR:  zlength,	TYPE: positive_length_measure -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _box_domain : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eBOX_DOMAIN.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _corner: eCARTESIAN_POINT // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _xlength: tPOSITIVE_LENGTH_MEASURE // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _ylength: tPOSITIVE_LENGTH_MEASURE // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _zlength: tPOSITIVE_LENGTH_MEASURE // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._corner.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._xlength.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._ylength.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._zlength.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._corner.value.isValueEqualOptionally(to: rhs._corner.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._xlength.value.isValueEqualOptionally(to: rhs._xlength.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._ylength.value.isValueEqualOptionally(to: rhs._ylength.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._zlength.value.isValueEqualOptionally(to: rhs._zlength.value, visited: &comppairs)	{
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
      if let comp = self._corner.value.isValueEqualOptionally(to: rhs._corner.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._xlength.value.isValueEqualOptionally(to: rhs._xlength.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._ylength.value.isValueEqualOptionally(to: rhs._ylength.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._zlength.value.isValueEqualOptionally(to: rhs._zlength.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eBOX_DOMAIN?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.USEDIN(T: SELF)
      let _TEMP2 = _TEMP1.QUERY{ ITEM in 

          let _TEMP1 = SDAI.TYPEOF(ITEM, IS: eBOXED_HALF_SPACE.self)
          let _TEMP2 =  !_TEMP1
          return _TEMP2 }
      let _TEMP3 = SDAI.SIZEOF(_TEMP2)
      let _TEMP4 = _TEMP3 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP4
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(CORNER: eCARTESIAN_POINT, XLENGTH: tPOSITIVE_LENGTH_MEASURE, 
                YLENGTH: tPOSITIVE_LENGTH_MEASURE, ZLENGTH: tPOSITIVE_LENGTH_MEASURE) {
      self._corner = CORNER
      self._xlength = XLENGTH
      self._ylength = YLENGTH
      self._zlength = ZLENGTH
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 4
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: eCARTESIAN_POINT.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: tPOSITIVE_LENGTH_MEASURE.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p2) = exchangeStructure.recoverRequiredParameter(as: tPOSITIVE_LENGTH_MEASURE.self, from: parameters[2])
      else { exchangeStructure.add(errorContext: "while recovering parameter #2 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p3) = exchangeStructure.recoverRequiredParameter(as: tPOSITIVE_LENGTH_MEASURE.self, from: parameters[3])
      else { exchangeStructure.add(errorContext: "while recovering parameter #3 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( CORNER: p0, XLENGTH: p1, YLENGTH: p2, ZLENGTH: p3 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY box_domain
    SUBTYPE OF ( founded_item );
      corner   : cartesian_point;
      xlength  : positive_length_measure;
      ylength  : positive_length_measure;
      zlength  : positive_length_measure;
    WHERE
      wr1: ( SIZEOF( QUERY ( item <* USEDIN( SELF, '' ) | ( NOT ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.BOXED_HALF_SPACE'  IN TYPEOF( item ) ) ) ) ) 
               = 0 );
  END_ENTITY; -- box_domain (line:8670 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eBOX_DOMAIN : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _box_domain.self
    }
    public let partialEntity: _box_domain

    //MARK: SUPERTYPES
    public let super_eFOUNDED_ITEM: eFOUNDED_ITEM 	// [1]
    public var super_eBOX_DOMAIN: eBOX_DOMAIN { return self } 	// [2]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eBOX_DOMAIN`` )
    public var ZLENGTH: tPOSITIVE_LENGTH_MEASURE {
      get {
        return SDAI.UNWRAP( self.partialEntity._zlength )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._zlength = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eFOUNDED_ITEM`` )
    public var USERS: (SDAI.SET<sFOUNDED_ITEM_SELECT>/*[0:nil]*/ )?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"USERS") {
          return cached.value as! (SDAI.SET<sFOUNDED_ITEM_SELECT>/*[0:nil]*/ )? 
        }
        let origin = super_eFOUNDED_ITEM
        let value = SDAI.SET<sFOUNDED_ITEM_SELECT>(origin.partialEntity._users__getter(SELF: origin))
        updateCache(derivedAttributeName:"USERS", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eBOX_DOMAIN`` )
    public var CORNER: eCARTESIAN_POINT {
      get {
        return SDAI.UNWRAP( self.partialEntity._corner )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._corner = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eBOX_DOMAIN`` )
    public var YLENGTH: tPOSITIVE_LENGTH_MEASURE {
      get {
        return SDAI.UNWRAP( self.partialEntity._ylength )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._ylength = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eBOX_DOMAIN`` )
    public var XLENGTH: tPOSITIVE_LENGTH_MEASURE {
      get {
        return SDAI.UNWRAP( self.partialEntity._xlength )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._xlength = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_box_domain.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eFOUNDED_ITEM.self) else { return nil }
      self.super_eFOUNDED_ITEM = super1

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
      result[prefix2 + " .WHERE_wr1"] = _box_domain.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "BOX_DOMAIN", type: self, explicitAttributeCount: 4)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eFOUNDED_ITEM.self)
      entityDef.add(supertype: eBOX_DOMAIN.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "ZLENGTH", keyPath: \eBOX_DOMAIN.ZLENGTH, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "USERS", keyPath: \eBOX_DOMAIN.USERS, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "CORNER", keyPath: \eBOX_DOMAIN.CORNER, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "YLENGTH", keyPath: \eBOX_DOMAIN.YLENGTH, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "XLENGTH", keyPath: \eBOX_DOMAIN.XLENGTH, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
