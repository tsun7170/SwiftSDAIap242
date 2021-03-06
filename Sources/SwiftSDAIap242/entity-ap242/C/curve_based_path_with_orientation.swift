/* file: curve_based_path_with_orientation.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY curve_based_path_with_orientation
    SUBTYPE OF ( kinematic_path_segment );
      position_curve     : bounded_curve;
      orientation_curve  : bounded_curve;
    WHERE
      wr1: ( TYPEOF( position_curve ) = TYPEOF( orientation_curve ) );
  END_ENTITY; -- curve_based_path_with_orientation (line:11031 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	founded_item
    ATTR:  users,	TYPE: SET [0 : ?] OF founded_item_select -- DERIVED
      := using_items( SELF, [] )


  SUPER- ENTITY(2)	kinematic_path_segment
    ATTR:  t_end,	TYPE: parameter_value -- EXPLICIT

    ATTR:  transition,	TYPE: transition_code -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: point_to_point_path,	TYPE: transition_code	(as DERIVED)
          ENTITY: linear_path,	TYPE: transition_code	(as DERIVED)


  ENTITY(SELF)	curve_based_path_with_orientation
    ATTR:  position_curve,	TYPE: bounded_curve -- EXPLICIT

    ATTR:  orientation_curve,	TYPE: bounded_curve -- EXPLICIT


  SUB- ENTITY(4)	curve_based_path_with_orientation_and_parameters
    ATTR:  parameters,	TYPE: path_parameter_representation -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _curve_based_path_with_orientation : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eCURVE_BASED_PATH_WITH_ORIENTATION.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _position_curve: eBOUNDED_CURVE // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _orientation_curve: eBOUNDED_CURVE // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._position_curve.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._orientation_curve.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._position_curve.value.isValueEqualOptionally(to: rhs._position_curve.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._orientation_curve.value.isValueEqualOptionally(to: rhs._orientation_curve.value, visited: &comppairs)	{
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
      if let comp = self._position_curve.value.isValueEqualOptionally(to: rhs._position_curve.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._orientation_curve.value.isValueEqualOptionally(to: rhs._orientation_curve.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eCURVE_BASED_PATH_WITH_ORIENTATION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF.POSITION_CURVE)
      let _TEMP2 = SDAI.TYPEOF(SELF.ORIENTATION_CURVE)
      let _TEMP3 = SDAI.FORCE_OPTIONAL(_TEMP1) .==. SDAI.FORCE_OPTIONAL(_TEMP2)
      return _TEMP3
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(POSITION_CURVE: eBOUNDED_CURVE, ORIENTATION_CURVE: eBOUNDED_CURVE) {
      self._position_curve = POSITION_CURVE
      self._orientation_curve = ORIENTATION_CURVE
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: eBOUNDED_CURVE.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: eBOUNDED_CURVE.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( POSITION_CURVE: p0, ORIENTATION_CURVE: p1 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY curve_based_path_with_orientation
    SUBTYPE OF ( kinematic_path_segment );
      position_curve     : bounded_curve;
      orientation_curve  : bounded_curve;
    WHERE
      wr1: ( TYPEOF( position_curve ) = TYPEOF( orientation_curve ) );
  END_ENTITY; -- curve_based_path_with_orientation (line:11031 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eCURVE_BASED_PATH_WITH_ORIENTATION : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _curve_based_path_with_orientation.self
    }
    public let partialEntity: _curve_based_path_with_orientation

    //MARK: SUPERTYPES
    public let super_eFOUNDED_ITEM: eFOUNDED_ITEM 	// [1]
    public let super_eKINEMATIC_PATH_SEGMENT: eKINEMATIC_PATH_SEGMENT 	// [2]
    public var super_eCURVE_BASED_PATH_WITH_ORIENTATION: eCURVE_BASED_PATH_WITH_ORIENTATION { return self } 	// [3]

    //MARK: SUBTYPES
    public var sub_eCURVE_BASED_PATH_WITH_ORIENTATION_AND_PARAMETERS: eCURVE_BASED_PATH_WITH_ORIENTATION_AND_PARAMETERS? {	// [4]
      return self.complexEntity.entityReference(eCURVE_BASED_PATH_WITH_ORIENTATION_AND_PARAMETERS.self)
    }


    //MARK: ATTRIBUTES
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
    /// - origin: SUB( ``eCURVE_BASED_PATH_WITH_ORIENTATION_AND_PARAMETERS`` )
    public var PARAMETERS: ePATH_PARAMETER_REPRESENTATION?  {
      get {
        return sub_eCURVE_BASED_PATH_WITH_ORIENTATION_AND_PARAMETERS?.partialEntity._parameters
      }
      set(newValue) {
        guard let partial = sub_eCURVE_BASED_PATH_WITH_ORIENTATION_AND_PARAMETERS?.super_eCURVE_BASED_PATH_WITH_ORIENTATION_AND_PARAMETERS
          .partialEntity else { return }
        partial._parameters = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eKINEMATIC_PATH_SEGMENT`` )
    public var T_END: tPARAMETER_VALUE {
      get {
        return SDAI.UNWRAP( super_eKINEMATIC_PATH_SEGMENT.partialEntity._t_end )
      }
      set(newValue) {
        let partial = super_eKINEMATIC_PATH_SEGMENT.partialEntity
        partial._t_end = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT(DYNAMIC)__ attribute
    /// - origin: SUPER( ``eKINEMATIC_PATH_SEGMENT`` )
    public var TRANSITION: nTRANSITION_CODE {
      get {
        if let resolved = _kinematic_path_segment._transition__provider(complex: self.complexEntity) {
          let value = resolved._transition__getter(complex: self.complexEntity)
          return value
        }
        else {
          return SDAI.UNWRAP( super_eKINEMATIC_PATH_SEGMENT.partialEntity._transition )
        }
      }
      set(newValue) {
        if let _ = _kinematic_path_segment._transition__provider(complex: self.complexEntity) { return }

        let partial = super_eKINEMATIC_PATH_SEGMENT.partialEntity
        partial._transition = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eCURVE_BASED_PATH_WITH_ORIENTATION`` )
    public var ORIENTATION_CURVE: eBOUNDED_CURVE {
      get {
        return SDAI.UNWRAP( self.partialEntity._orientation_curve )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._orientation_curve = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eCURVE_BASED_PATH_WITH_ORIENTATION`` )
    public var POSITION_CURVE: eBOUNDED_CURVE {
      get {
        return SDAI.UNWRAP( self.partialEntity._position_curve )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._position_curve = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_curve_based_path_with_orientation.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eFOUNDED_ITEM.self) else { return nil }
      self.super_eFOUNDED_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eKINEMATIC_PATH_SEGMENT.self) else { return nil }
      self.super_eKINEMATIC_PATH_SEGMENT = super2

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
      result[prefix2 + " .WHERE_wr1"] = _curve_based_path_with_orientation.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "CURVE_BASED_PATH_WITH_ORIENTATION", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eFOUNDED_ITEM.self)
      entityDef.add(supertype: eKINEMATIC_PATH_SEGMENT.self)
      entityDef.add(supertype: eCURVE_BASED_PATH_WITH_ORIENTATION.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "USERS", keyPath: \eCURVE_BASED_PATH_WITH_ORIENTATION.USERS, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "PARAMETERS", keyPath: \eCURVE_BASED_PATH_WITH_ORIENTATION.PARAMETERS, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "T_END", keyPath: \eCURVE_BASED_PATH_WITH_ORIENTATION.T_END, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "TRANSITION", keyPath: \eCURVE_BASED_PATH_WITH_ORIENTATION.TRANSITION, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ORIENTATION_CURVE", keyPath: \eCURVE_BASED_PATH_WITH_ORIENTATION.ORIENTATION_CURVE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "POSITION_CURVE", keyPath: \eCURVE_BASED_PATH_WITH_ORIENTATION.POSITION_CURVE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
