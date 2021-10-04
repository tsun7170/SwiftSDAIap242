/* file: b_spline_curve_knot_locator.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY b_spline_curve_knot_locator
    SUBTYPE OF ( founded_item );
      basis_curve  : b_spline_curve;
      knot_index   : INTEGER;
    WHERE
      wr1: ( SIZEOF( using_representations( SELF.basis_curve ) * 
               relating_shape_representations_of_extreme_values( SELF ) ) > 0 );
  END_ENTITY; -- b_spline_curve_knot_locator (line:7706 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	founded_item
    ATTR:  users,	TYPE: SET [0 : ?] OF founded_item_select -- DERIVED
      := using_items( SELF, [] )


  ENTITY(SELF)	b_spline_curve_knot_locator
    ATTR:  basis_curve,	TYPE: b_spline_curve -- EXPLICIT

    ATTR:  knot_index,	TYPE: INTEGER -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _b_spline_curve_knot_locator : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eB_SPLINE_CURVE_KNOT_LOCATOR.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _basis_curve: eB_SPLINE_CURVE // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _knot_index: SDAI.INTEGER // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sLOCATION_OF_EXTREME_VALUE_SELECT.typeName)) // -> Self
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._basis_curve.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._knot_index.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._basis_curve.value.isValueEqualOptionally(to: rhs._basis_curve.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._knot_index.value.isValueEqualOptionally(to: rhs._knot_index.value, visited: &comppairs)	{
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
      if let comp = self._basis_curve.value.isValueEqualOptionally(to: rhs._basis_curve.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._knot_index.value.isValueEqualOptionally(to: rhs._knot_index.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eB_SPLINE_CURVE_KNOT_LOCATOR?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.BASIS_CURVE
      let _TEMP2 = USING_REPRESENTATIONS(sFOUNDED_ITEM_SELECT(/*eB_SPLINE_CURVE*/_TEMP1))
      let _TEMP3 = RELATING_SHAPE_REPRESENTATIONS_OF_EXTREME_VALUES(sLOCATION_OF_EXTREME_VALUE_SELECT(/*
        eB_SPLINE_CURVE_KNOT_LOCATOR*/SELF))
      let _TEMP4 = SDAI.SET<SDAI.GENERIC_ENTITY>(/*SDAI.SET<eREPRESENTATION>*/_TEMP2) * SDAI.SET<
        SDAI.GENERIC_ENTITY>(/*SDAI.SET<eSHAPE_REPRESENTATION>*/_TEMP3)
      let _TEMP5 = SDAI.SIZEOF(_TEMP4)
      let _TEMP6 = _TEMP5 > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP6
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(BASIS_CURVE: eB_SPLINE_CURVE, KNOT_INDEX: SDAI.INTEGER) {
      self._basis_curve = BASIS_CURVE
      self._knot_index = KNOT_INDEX
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: eB_SPLINE_CURVE.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: SDAI.INTEGER.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( BASIS_CURVE: p0, KNOT_INDEX: p1 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY b_spline_curve_knot_locator
    SUBTYPE OF ( founded_item );
      basis_curve  : b_spline_curve;
      knot_index   : INTEGER;
    WHERE
      wr1: ( SIZEOF( using_representations( SELF.basis_curve ) * 
               relating_shape_representations_of_extreme_values( SELF ) ) > 0 );
  END_ENTITY; -- b_spline_curve_knot_locator (line:7706 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eB_SPLINE_CURVE_KNOT_LOCATOR : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _b_spline_curve_knot_locator.self
    }
    public let partialEntity: _b_spline_curve_knot_locator

    //MARK: SUPERTYPES
    public let super_eFOUNDED_ITEM: eFOUNDED_ITEM 	// [1]
    public var super_eB_SPLINE_CURVE_KNOT_LOCATOR: eB_SPLINE_CURVE_KNOT_LOCATOR { return self } 	// [2]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eB_SPLINE_CURVE_KNOT_LOCATOR`` )
    public var BASIS_CURVE: eB_SPLINE_CURVE {
      get {
        return SDAI.UNWRAP( self.partialEntity._basis_curve )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._basis_curve = SDAI.UNWRAP(newValue)
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
    /// - origin: SELF( ``eB_SPLINE_CURVE_KNOT_LOCATOR`` )
    public var KNOT_INDEX: SDAI.INTEGER {
      get {
        return SDAI.UNWRAP( self.partialEntity._knot_index )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._knot_index = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_b_spline_curve_knot_locator.self) else { return nil }
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
      result[prefix2 + " .WHERE_wr1"] = _b_spline_curve_knot_locator.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "B_SPLINE_CURVE_KNOT_LOCATOR", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eFOUNDED_ITEM.self)
      entityDef.add(supertype: eB_SPLINE_CURVE_KNOT_LOCATOR.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "BASIS_CURVE", keyPath: \eB_SPLINE_CURVE_KNOT_LOCATOR.BASIS_CURVE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "USERS", keyPath: \eB_SPLINE_CURVE_KNOT_LOCATOR.USERS, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "KNOT_INDEX", keyPath: \eB_SPLINE_CURVE_KNOT_LOCATOR.KNOT_INDEX, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
