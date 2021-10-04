/* file: spotface_definition.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY spotface_definition
    SUBTYPE OF ( explicit_round_hole );
      spotface_radius            : positive_length_measure_with_unit;
      spotface_radius_tolerance  : OPTIONAL tolerance_value;
    WHERE
      wr1: ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.LENGTH_MEASURE_WITH_UNIT' IN TYPEOF( 
               spotface_radius_tolerance\tolerance_value.lower_bound ) );
      wr2: ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.LENGTH_MEASURE_WITH_UNIT' IN TYPEOF( 
               spotface_radius_tolerance\tolerance_value.upper_bound ) );
  END_ENTITY; -- spotface_definition (line:30416 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	characterized_object
    ATTR:  name,	TYPE: label -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: shape_feature_definition_element_relationship,	TYPE: label	(as DERIVED)
          ENTITY: shape_feature_fit_relationship,	TYPE: label	(as DERIVED)
          ENTITY: characterized_representation,	TYPE: label	(as DERIVED)
          ENTITY: shape_feature_definition_relationship,	TYPE: label	(as DERIVED)

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: shape_feature_definition_element_relationship,	TYPE: text	(as DERIVED)
          ENTITY: shape_feature_fit_relationship,	TYPE: text	(as DERIVED)
          ENTITY: characterized_representation,	TYPE: text	(as DERIVED)
          ENTITY: shape_feature_definition_relationship,	TYPE: text	(as DERIVED)


  SUPER- ENTITY(2)	feature_definition
    (no local attributes)

  SUPER- ENTITY(3)	round_hole
    (no local attributes)

  SUPER- ENTITY(4)	explicit_round_hole
    ATTR:  depth,	TYPE: positive_length_measure_with_unit -- EXPLICIT

    ATTR:  depth_tolerance,	TYPE: OPTIONAL tolerance_value -- EXPLICIT

    ATTR:  diameter,	TYPE: positive_length_measure_with_unit -- EXPLICIT

    ATTR:  diameter_tolerance,	TYPE: OPTIONAL tolerance_value_or_limits_and_fits -- EXPLICIT

    ATTR:  placement,	TYPE: shape_representation -- EXPLICIT


  ENTITY(SELF)	spotface_definition
    ATTR:  spotface_radius,	TYPE: positive_length_measure_with_unit -- EXPLICIT

    ATTR:  spotface_radius_tolerance,	TYPE: OPTIONAL tolerance_value -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _spotface_definition : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eSPOTFACE_DEFINITION.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _spotface_radius: ePOSITIVE_LENGTH_MEASURE_WITH_UNIT // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _spotface_radius_tolerance: eTOLERANCE_VALUE?  // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._spotface_radius.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._spotface_radius_tolerance?.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._spotface_radius.value.isValueEqualOptionally(to: rhs._spotface_radius.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._spotface_radius_tolerance?.value.isValueEqualOptionally(to: rhs._spotface_radius_tolerance?.value, visited: &comppairs)	{
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
      if let comp = self._spotface_radius.value.isValueEqualOptionally(to: rhs._spotface_radius.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._spotface_radius_tolerance?.value.isValueEqualOptionally(to: rhs._spotface_radius_tolerance?.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eSPOTFACE_DEFINITION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF.SPOTFACE_RADIUS_TOLERANCE?.GROUP_REF(eTOLERANCE_VALUE.self)?.LOWER_BOUND, 
        IS: eLENGTH_MEASURE_WITH_UNIT.self)
      return _TEMP1
    }
    public static func WHERE_wr2(SELF: eSPOTFACE_DEFINITION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF.SPOTFACE_RADIUS_TOLERANCE?.GROUP_REF(eTOLERANCE_VALUE.self)?.UPPER_BOUND, 
        IS: eLENGTH_MEASURE_WITH_UNIT.self)
      return _TEMP1
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(SPOTFACE_RADIUS: ePOSITIVE_LENGTH_MEASURE_WITH_UNIT, SPOTFACE_RADIUS_TOLERANCE: 
                eTOLERANCE_VALUE? ) {
      self._spotface_radius = SPOTFACE_RADIUS
      self._spotface_radius_tolerance = SPOTFACE_RADIUS_TOLERANCE
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: 
        ePOSITIVE_LENGTH_MEASURE_WITH_UNIT.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverOptionalParameter(as: eTOLERANCE_VALUE.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( SPOTFACE_RADIUS: p0, SPOTFACE_RADIUS_TOLERANCE: p1 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY spotface_definition
    SUBTYPE OF ( explicit_round_hole );
      spotface_radius            : positive_length_measure_with_unit;
      spotface_radius_tolerance  : OPTIONAL tolerance_value;
    WHERE
      wr1: ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.LENGTH_MEASURE_WITH_UNIT' IN TYPEOF( 
               spotface_radius_tolerance\tolerance_value.lower_bound ) );
      wr2: ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.LENGTH_MEASURE_WITH_UNIT' IN TYPEOF( 
               spotface_radius_tolerance\tolerance_value.upper_bound ) );
  END_ENTITY; -- spotface_definition (line:30416 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eSPOTFACE_DEFINITION : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _spotface_definition.self
    }
    public let partialEntity: _spotface_definition

    //MARK: SUPERTYPES
    public let super_eCHARACTERIZED_OBJECT: eCHARACTERIZED_OBJECT 	// [1]
    public let super_eFEATURE_DEFINITION: eFEATURE_DEFINITION 	// [2]
    public let super_eROUND_HOLE: eROUND_HOLE 	// [3]
    public let super_eEXPLICIT_ROUND_HOLE: eEXPLICIT_ROUND_HOLE 	// [4]
    public var super_eSPOTFACE_DEFINITION: eSPOTFACE_DEFINITION { return self } 	// [5]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eEXPLICIT_ROUND_HOLE`` )
    public var DIAMETER_TOLERANCE: sTOLERANCE_VALUE_OR_LIMITS_AND_FITS?  {
      get {
        return super_eEXPLICIT_ROUND_HOLE.partialEntity._diameter_tolerance
      }
      set(newValue) {
        let partial = super_eEXPLICIT_ROUND_HOLE.partialEntity
        partial._diameter_tolerance = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eEXPLICIT_ROUND_HOLE`` )
    public var DEPTH_TOLERANCE: eTOLERANCE_VALUE?  {
      get {
        return super_eEXPLICIT_ROUND_HOLE.partialEntity._depth_tolerance
      }
      set(newValue) {
        let partial = super_eEXPLICIT_ROUND_HOLE.partialEntity
        partial._depth_tolerance = newValue
      }
    }

    /// __EXPLICIT(DYNAMIC)__ attribute
    /// - origin: SUPER( ``eCHARACTERIZED_OBJECT`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        if let resolved = _characterized_object._description__provider(complex: self.complexEntity) {
          let value = resolved._description__getter(complex: self.complexEntity)
          return value
        }
        else {
          return super_eCHARACTERIZED_OBJECT.partialEntity._description
        }
      }
      set(newValue) {
        if let _ = _characterized_object._description__provider(complex: self.complexEntity) { return }

        let partial = super_eCHARACTERIZED_OBJECT.partialEntity
        partial._description = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eEXPLICIT_ROUND_HOLE`` )
    public var PLACEMENT: eSHAPE_REPRESENTATION {
      get {
        return SDAI.UNWRAP( super_eEXPLICIT_ROUND_HOLE.partialEntity._placement )
      }
      set(newValue) {
        let partial = super_eEXPLICIT_ROUND_HOLE.partialEntity
        partial._placement = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eEXPLICIT_ROUND_HOLE`` )
    public var DIAMETER: ePOSITIVE_LENGTH_MEASURE_WITH_UNIT {
      get {
        return SDAI.UNWRAP( super_eEXPLICIT_ROUND_HOLE.partialEntity._diameter )
      }
      set(newValue) {
        let partial = super_eEXPLICIT_ROUND_HOLE.partialEntity
        partial._diameter = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eSPOTFACE_DEFINITION`` )
    public var SPOTFACE_RADIUS: ePOSITIVE_LENGTH_MEASURE_WITH_UNIT {
      get {
        return SDAI.UNWRAP( self.partialEntity._spotface_radius )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._spotface_radius = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eSPOTFACE_DEFINITION`` )
    public var SPOTFACE_RADIUS_TOLERANCE: eTOLERANCE_VALUE?  {
      get {
        return self.partialEntity._spotface_radius_tolerance
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._spotface_radius_tolerance = newValue
      }
    }

    /// __EXPLICIT(DYNAMIC)__ attribute
    /// - origin: SUPER( ``eCHARACTERIZED_OBJECT`` )
    public var NAME: tLABEL {
      get {
        if let resolved = _characterized_object._name__provider(complex: self.complexEntity) {
          let value = resolved._name__getter(complex: self.complexEntity)
          return value
        }
        else {
          return SDAI.UNWRAP( super_eCHARACTERIZED_OBJECT.partialEntity._name )
        }
      }
      set(newValue) {
        if let _ = _characterized_object._name__provider(complex: self.complexEntity) { return }

        let partial = super_eCHARACTERIZED_OBJECT.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eEXPLICIT_ROUND_HOLE`` )
    public var DEPTH: ePOSITIVE_LENGTH_MEASURE_WITH_UNIT {
      get {
        return SDAI.UNWRAP( super_eEXPLICIT_ROUND_HOLE.partialEntity._depth )
      }
      set(newValue) {
        let partial = super_eEXPLICIT_ROUND_HOLE.partialEntity
        partial._depth = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_spotface_definition.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eCHARACTERIZED_OBJECT.self) else { return nil }
      self.super_eCHARACTERIZED_OBJECT = super1

      guard let super2 = complexEntity?.entityReference(eFEATURE_DEFINITION.self) else { return nil }
      self.super_eFEATURE_DEFINITION = super2

      guard let super3 = complexEntity?.entityReference(eROUND_HOLE.self) else { return nil }
      self.super_eROUND_HOLE = super3

      guard let super4 = complexEntity?.entityReference(eEXPLICIT_ROUND_HOLE.self) else { return nil }
      self.super_eEXPLICIT_ROUND_HOLE = super4

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
      result[prefix2 + " .WHERE_wr1"] = _spotface_definition.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _spotface_definition.WHERE_wr2(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "SPOTFACE_DEFINITION", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eCHARACTERIZED_OBJECT.self)
      entityDef.add(supertype: eFEATURE_DEFINITION.self)
      entityDef.add(supertype: eROUND_HOLE.self)
      entityDef.add(supertype: eEXPLICIT_ROUND_HOLE.self)
      entityDef.add(supertype: eSPOTFACE_DEFINITION.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DIAMETER_TOLERANCE", keyPath: \eSPOTFACE_DEFINITION.DIAMETER_TOLERANCE, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DEPTH_TOLERANCE", keyPath: \eSPOTFACE_DEFINITION.DEPTH_TOLERANCE, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eSPOTFACE_DEFINITION.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "PLACEMENT", keyPath: \eSPOTFACE_DEFINITION.PLACEMENT, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DIAMETER", keyPath: \eSPOTFACE_DEFINITION.DIAMETER, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "SPOTFACE_RADIUS", keyPath: \eSPOTFACE_DEFINITION.SPOTFACE_RADIUS, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "SPOTFACE_RADIUS_TOLERANCE", keyPath: \eSPOTFACE_DEFINITION.SPOTFACE_RADIUS_TOLERANCE, 
        kind: .explicitOptional, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eSPOTFACE_DEFINITION.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DEPTH", keyPath: \eSPOTFACE_DEFINITION.DEPTH, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
