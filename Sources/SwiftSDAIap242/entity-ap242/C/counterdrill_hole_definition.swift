/* file: counterdrill_hole_definition.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY counterdrill_hole_definition
    SUBTYPE OF ( explicit_composite_hole );
      counterbore                     : explicit_round_hole;
      counterdrill_angle              : positive_plane_angle_measure_with_unit;
      counterdrill_angle_tolerance    : tolerance_value;
      drilled_hole_depth              : OPTIONAL positive_length_measure_with_unit;
      drilled_hole_depth_tolerance    : OPTIONAL tolerance_value;
      drilled_hole_diameter           : positive_length_measure_with_unit;
      drilled_hole_diameter_tolerance : OPTIONAL tolerance_value_or_limits_and_fits;
      through_hole                    : BOOLEAN;
    WHERE
      wr1: ( through_hole XOR EXISTS( drilled_hole_depth ) );
      wr2: ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PLANE_ANGLE_MEASURE_WITH_UNIT' IN TYPEOF( 
               counterdrill_angle_tolerance\tolerance_value.lower_bound ) );
      wr3: ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PLANE_ANGLE_MEASURE_WITH_UNIT' IN TYPEOF( 
               counterdrill_angle_tolerance\tolerance_value.upper_bound ) );
      wr4: ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.LENGTH_MEASURE_WITH_UNIT' IN TYPEOF( 
               drilled_hole_depth_tolerance\tolerance_value.lower_bound ) );
      wr5: ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.LENGTH_MEASURE_WITH_UNIT' IN TYPEOF( 
               drilled_hole_depth_tolerance\tolerance_value.upper_bound ) );
      wr6: ( ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.TOLERANCE_VALUE' IN TYPEOF( 
               drilled_hole_diameter_tolerance ) ) ) OR ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'LENGTH_MEASURE_WITH_UNIT'  IN TYPEOF( drilled_hole_diameter_tolerance\tolerance_value.
               lower_bound ) ) );
      wr7: ( ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.TOLERANCE_VALUE' IN TYPEOF( 
               drilled_hole_diameter_tolerance ) ) ) OR ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'LENGTH_MEASURE_WITH_UNIT'  IN TYPEOF( drilled_hole_diameter_tolerance\tolerance_value.
               upper_bound ) ) );
  END_ENTITY; -- counterdrill_hole_definition (line:10737 file:ap242ed2_mim_lf_v1.101.TY.exp)

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

  SUPER- ENTITY(3)	compound_feature
    (no local attributes)

  SUPER- ENTITY(4)	composite_hole
    (no local attributes)

  SUPER- ENTITY(5)	explicit_composite_hole
    ATTR:  placement,	TYPE: shape_representation -- EXPLICIT

    ATTR:  explicit_shape,	TYPE: SET [0 : ?] OF item_identified_representation_usage -- INVERSE
      FOR definition;


  ENTITY(SELF)	counterdrill_hole_definition
    ATTR:  counterbore,	TYPE: explicit_round_hole -- EXPLICIT

    ATTR:  counterdrill_angle,	TYPE: positive_plane_angle_measure_with_unit -- EXPLICIT

    ATTR:  counterdrill_angle_tolerance,	TYPE: tolerance_value -- EXPLICIT

    ATTR:  drilled_hole_depth,	TYPE: OPTIONAL positive_length_measure_with_unit -- EXPLICIT

    ATTR:  drilled_hole_depth_tolerance,	TYPE: OPTIONAL tolerance_value -- EXPLICIT

    ATTR:  drilled_hole_diameter,	TYPE: positive_length_measure_with_unit -- EXPLICIT

    ATTR:  drilled_hole_diameter_tolerance,	TYPE: OPTIONAL tolerance_value_or_limits_and_fits -- EXPLICIT

    ATTR:  through_hole,	TYPE: BOOLEAN -- EXPLICIT


  SUB- ENTITY(7)	simplified_counterdrill_hole_definition
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _counterdrill_hole_definition : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eCOUNTERDRILL_HOLE_DEFINITION.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _counterbore: eEXPLICIT_ROUND_HOLE // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _counterdrill_angle: ePOSITIVE_PLANE_ANGLE_MEASURE_WITH_UNIT // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _counterdrill_angle_tolerance: eTOLERANCE_VALUE // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _drilled_hole_depth: ePOSITIVE_LENGTH_MEASURE_WITH_UNIT?  // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _drilled_hole_depth_tolerance: eTOLERANCE_VALUE?  // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _drilled_hole_diameter: ePOSITIVE_LENGTH_MEASURE_WITH_UNIT // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _drilled_hole_diameter_tolerance: sTOLERANCE_VALUE_OR_LIMITS_AND_FITS?  // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _through_hole: SDAI.BOOLEAN // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._counterbore.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._counterdrill_angle.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._counterdrill_angle_tolerance.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._drilled_hole_depth?.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._drilled_hole_depth_tolerance?.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._drilled_hole_diameter.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._drilled_hole_diameter_tolerance?.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._through_hole.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._counterbore.value.isValueEqualOptionally(to: rhs._counterbore.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._counterdrill_angle.value.isValueEqualOptionally(to: rhs._counterdrill_angle.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._counterdrill_angle_tolerance.value.isValueEqualOptionally(to: rhs._counterdrill_angle_tolerance.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._drilled_hole_depth?.value.isValueEqualOptionally(to: rhs._drilled_hole_depth?.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._drilled_hole_depth_tolerance?.value.isValueEqualOptionally(to: rhs._drilled_hole_depth_tolerance?.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._drilled_hole_diameter.value.isValueEqualOptionally(to: rhs._drilled_hole_diameter.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._drilled_hole_diameter_tolerance?.value.isValueEqualOptionally(to: rhs._drilled_hole_diameter_tolerance?.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._through_hole.value.isValueEqualOptionally(to: rhs._through_hole.value, visited: &comppairs)	{
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
      if let comp = self._counterbore.value.isValueEqualOptionally(to: rhs._counterbore.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._counterdrill_angle.value.isValueEqualOptionally(to: rhs._counterdrill_angle.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._counterdrill_angle_tolerance.value.isValueEqualOptionally(to: rhs._counterdrill_angle_tolerance.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._drilled_hole_depth?.value.isValueEqualOptionally(to: rhs._drilled_hole_depth?.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._drilled_hole_depth_tolerance?.value.isValueEqualOptionally(to: rhs._drilled_hole_depth_tolerance?.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._drilled_hole_diameter.value.isValueEqualOptionally(to: rhs._drilled_hole_diameter.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._drilled_hole_diameter_tolerance?.value.isValueEqualOptionally(to: rhs._drilled_hole_diameter_tolerance?.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._through_hole.value.isValueEqualOptionally(to: rhs._through_hole.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eCOUNTERDRILL_HOLE_DEFINITION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.EXISTS(SELF.DRILLED_HOLE_DEPTH)
      let _TEMP2 = SELF.THROUGH_HOLE .!=. _TEMP1
      return _TEMP2
    }
    public static func WHERE_wr2(SELF: eCOUNTERDRILL_HOLE_DEFINITION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF.COUNTERDRILL_ANGLE_TOLERANCE.GROUP_REF(eTOLERANCE_VALUE.self)?.LOWER_BOUND, 
        IS: ePLANE_ANGLE_MEASURE_WITH_UNIT.self)
      return _TEMP1
    }
    public static func WHERE_wr3(SELF: eCOUNTERDRILL_HOLE_DEFINITION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF.COUNTERDRILL_ANGLE_TOLERANCE.GROUP_REF(eTOLERANCE_VALUE.self)?.UPPER_BOUND, 
        IS: ePLANE_ANGLE_MEASURE_WITH_UNIT.self)
      return _TEMP1
    }
    public static func WHERE_wr4(SELF: eCOUNTERDRILL_HOLE_DEFINITION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF.DRILLED_HOLE_DEPTH_TOLERANCE?.GROUP_REF(eTOLERANCE_VALUE.self)?.LOWER_BOUND, 
        IS: eLENGTH_MEASURE_WITH_UNIT.self)
      return _TEMP1
    }
    public static func WHERE_wr5(SELF: eCOUNTERDRILL_HOLE_DEFINITION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF.DRILLED_HOLE_DEPTH_TOLERANCE?.GROUP_REF(eTOLERANCE_VALUE.self)?.UPPER_BOUND, 
        IS: eLENGTH_MEASURE_WITH_UNIT.self)
      return _TEMP1
    }
    public static func WHERE_wr6(SELF: eCOUNTERDRILL_HOLE_DEFINITION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF.DRILLED_HOLE_DIAMETER_TOLERANCE, IS: eTOLERANCE_VALUE.self)
      let _TEMP2 =  !_TEMP1
      let _TEMP3 = SDAI.TYPEOF(SELF.DRILLED_HOLE_DIAMETER_TOLERANCE?.GROUP_REF(eTOLERANCE_VALUE.self)?.LOWER_BOUND, 
        IS: eLENGTH_MEASURE_WITH_UNIT.self)
      let _TEMP4 = _TEMP2 || _TEMP3
      return _TEMP4
    }
    public static func WHERE_wr7(SELF: eCOUNTERDRILL_HOLE_DEFINITION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF.DRILLED_HOLE_DIAMETER_TOLERANCE, IS: eTOLERANCE_VALUE.self)
      let _TEMP2 =  !_TEMP1
      let _TEMP3 = SDAI.TYPEOF(SELF.DRILLED_HOLE_DIAMETER_TOLERANCE?.GROUP_REF(eTOLERANCE_VALUE.self)?.UPPER_BOUND, 
        IS: eLENGTH_MEASURE_WITH_UNIT.self)
      let _TEMP4 = _TEMP2 || _TEMP3
      return _TEMP4
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(COUNTERBORE: eEXPLICIT_ROUND_HOLE, COUNTERDRILL_ANGLE: 
                ePOSITIVE_PLANE_ANGLE_MEASURE_WITH_UNIT, COUNTERDRILL_ANGLE_TOLERANCE: eTOLERANCE_VALUE, 
                DRILLED_HOLE_DEPTH: ePOSITIVE_LENGTH_MEASURE_WITH_UNIT? , 
                DRILLED_HOLE_DEPTH_TOLERANCE: eTOLERANCE_VALUE? , DRILLED_HOLE_DIAMETER: 
                ePOSITIVE_LENGTH_MEASURE_WITH_UNIT, DRILLED_HOLE_DIAMETER_TOLERANCE: 
                sTOLERANCE_VALUE_OR_LIMITS_AND_FITS? , THROUGH_HOLE: SDAI.BOOLEAN) {
      self._counterbore = COUNTERBORE
      self._counterdrill_angle = COUNTERDRILL_ANGLE
      self._counterdrill_angle_tolerance = COUNTERDRILL_ANGLE_TOLERANCE
      self._drilled_hole_depth = DRILLED_HOLE_DEPTH
      self._drilled_hole_depth_tolerance = DRILLED_HOLE_DEPTH_TOLERANCE
      self._drilled_hole_diameter = DRILLED_HOLE_DIAMETER
      self._drilled_hole_diameter_tolerance = DRILLED_HOLE_DIAMETER_TOLERANCE
      self._through_hole = THROUGH_HOLE
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 8
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: eEXPLICIT_ROUND_HOLE.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: 
        ePOSITIVE_PLANE_ANGLE_MEASURE_WITH_UNIT.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p2) = exchangeStructure.recoverRequiredParameter(as: eTOLERANCE_VALUE.self, from: parameters[2])
      else { exchangeStructure.add(errorContext: "while recovering parameter #2 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p3) = exchangeStructure.recoverOptionalParameter(as: 
        ePOSITIVE_LENGTH_MEASURE_WITH_UNIT.self, from: parameters[3])
      else { exchangeStructure.add(errorContext: "while recovering parameter #3 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p4) = exchangeStructure.recoverOptionalParameter(as: eTOLERANCE_VALUE.self, from: parameters[4])
      else { exchangeStructure.add(errorContext: "while recovering parameter #4 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p5) = exchangeStructure.recoverRequiredParameter(as: 
        ePOSITIVE_LENGTH_MEASURE_WITH_UNIT.self, from: parameters[5])
      else { exchangeStructure.add(errorContext: "while recovering parameter #5 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p6) = exchangeStructure.recoverOptionalParameter(as: 
        sTOLERANCE_VALUE_OR_LIMITS_AND_FITS.self, from: parameters[6])
      else { exchangeStructure.add(errorContext: "while recovering parameter #6 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p7) = exchangeStructure.recoverRequiredParameter(as: SDAI.BOOLEAN.self, from: parameters[7])
      else { exchangeStructure.add(errorContext: "while recovering parameter #7 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( COUNTERBORE: p0, COUNTERDRILL_ANGLE: p1, COUNTERDRILL_ANGLE_TOLERANCE: p2, DRILLED_HOLE_DEPTH: p3, DRILLED_HOLE_DEPTH_TOLERANCE: p4, DRILLED_HOLE_DIAMETER: p5, DRILLED_HOLE_DIAMETER_TOLERANCE: p6, THROUGH_HOLE: p7 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY counterdrill_hole_definition
    SUBTYPE OF ( explicit_composite_hole );
      counterbore                     : explicit_round_hole;
      counterdrill_angle              : positive_plane_angle_measure_with_unit;
      counterdrill_angle_tolerance    : tolerance_value;
      drilled_hole_depth              : OPTIONAL positive_length_measure_with_unit;
      drilled_hole_depth_tolerance    : OPTIONAL tolerance_value;
      drilled_hole_diameter           : positive_length_measure_with_unit;
      drilled_hole_diameter_tolerance : OPTIONAL tolerance_value_or_limits_and_fits;
      through_hole                    : BOOLEAN;
    WHERE
      wr1: ( through_hole XOR EXISTS( drilled_hole_depth ) );
      wr2: ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PLANE_ANGLE_MEASURE_WITH_UNIT' IN TYPEOF( 
               counterdrill_angle_tolerance\tolerance_value.lower_bound ) );
      wr3: ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PLANE_ANGLE_MEASURE_WITH_UNIT' IN TYPEOF( 
               counterdrill_angle_tolerance\tolerance_value.upper_bound ) );
      wr4: ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.LENGTH_MEASURE_WITH_UNIT' IN TYPEOF( 
               drilled_hole_depth_tolerance\tolerance_value.lower_bound ) );
      wr5: ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.LENGTH_MEASURE_WITH_UNIT' IN TYPEOF( 
               drilled_hole_depth_tolerance\tolerance_value.upper_bound ) );
      wr6: ( ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.TOLERANCE_VALUE' IN TYPEOF( 
               drilled_hole_diameter_tolerance ) ) ) OR ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'LENGTH_MEASURE_WITH_UNIT'  IN TYPEOF( drilled_hole_diameter_tolerance\tolerance_value.
               lower_bound ) ) );
      wr7: ( ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.TOLERANCE_VALUE' IN TYPEOF( 
               drilled_hole_diameter_tolerance ) ) ) OR ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'LENGTH_MEASURE_WITH_UNIT'  IN TYPEOF( drilled_hole_diameter_tolerance\tolerance_value.
               upper_bound ) ) );
  END_ENTITY; -- counterdrill_hole_definition (line:10737 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eCOUNTERDRILL_HOLE_DEFINITION : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _counterdrill_hole_definition.self
    }
    public let partialEntity: _counterdrill_hole_definition

    //MARK: SUPERTYPES
    public let super_eCHARACTERIZED_OBJECT: eCHARACTERIZED_OBJECT 	// [1]
    public let super_eFEATURE_DEFINITION: eFEATURE_DEFINITION 	// [2]
    public let super_eCOMPOUND_FEATURE: eCOMPOUND_FEATURE 	// [3]
    public let super_eCOMPOSITE_HOLE: eCOMPOSITE_HOLE 	// [4]
    public let super_eEXPLICIT_COMPOSITE_HOLE: eEXPLICIT_COMPOSITE_HOLE 	// [5]
    public var super_eCOUNTERDRILL_HOLE_DEFINITION: eCOUNTERDRILL_HOLE_DEFINITION { return self } 	// [6]

    //MARK: SUBTYPES
    public var sub_eSIMPLIFIED_COUNTERDRILL_HOLE_DEFINITION: eSIMPLIFIED_COUNTERDRILL_HOLE_DEFINITION? {	// [7]
      return self.complexEntity.entityReference(eSIMPLIFIED_COUNTERDRILL_HOLE_DEFINITION.self)
    }


    //MARK: ATTRIBUTES
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
    /// - origin: SELF( ``eCOUNTERDRILL_HOLE_DEFINITION`` )
    public var COUNTERDRILL_ANGLE_TOLERANCE: eTOLERANCE_VALUE {
      get {
        return SDAI.UNWRAP( self.partialEntity._counterdrill_angle_tolerance )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._counterdrill_angle_tolerance = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eCOUNTERDRILL_HOLE_DEFINITION`` )
    public var DRILLED_HOLE_DEPTH: ePOSITIVE_LENGTH_MEASURE_WITH_UNIT?  {
      get {
        return self.partialEntity._drilled_hole_depth
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._drilled_hole_depth = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eCOUNTERDRILL_HOLE_DEFINITION`` )
    public var DRILLED_HOLE_DIAMETER_TOLERANCE: sTOLERANCE_VALUE_OR_LIMITS_AND_FITS?  {
      get {
        return self.partialEntity._drilled_hole_diameter_tolerance
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._drilled_hole_diameter_tolerance = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eEXPLICIT_COMPOSITE_HOLE`` )
    public var PLACEMENT: eSHAPE_REPRESENTATION {
      get {
        return SDAI.UNWRAP( super_eEXPLICIT_COMPOSITE_HOLE.partialEntity._placement )
      }
      set(newValue) {
        let partial = super_eEXPLICIT_COMPOSITE_HOLE.partialEntity
        partial._placement = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eCOUNTERDRILL_HOLE_DEFINITION`` )
    public var COUNTERDRILL_ANGLE: ePOSITIVE_PLANE_ANGLE_MEASURE_WITH_UNIT {
      get {
        return SDAI.UNWRAP( self.partialEntity._counterdrill_angle )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._counterdrill_angle = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eCOUNTERDRILL_HOLE_DEFINITION`` )
    public var THROUGH_HOLE: SDAI.BOOLEAN {
      get {
        return SDAI.UNWRAP( self.partialEntity._through_hole )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._through_hole = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eCOUNTERDRILL_HOLE_DEFINITION`` )
    public var COUNTERBORE: eEXPLICIT_ROUND_HOLE {
      get {
        return SDAI.UNWRAP( self.partialEntity._counterbore )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._counterbore = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eCOUNTERDRILL_HOLE_DEFINITION`` )
    public var DRILLED_HOLE_DIAMETER: ePOSITIVE_LENGTH_MEASURE_WITH_UNIT {
      get {
        return SDAI.UNWRAP( self.partialEntity._drilled_hole_diameter )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._drilled_hole_diameter = SDAI.UNWRAP(newValue)
      }
    }

    /// __INVERSE__ attribute
    /// observing eITEM_IDENTIFIED_REPRESENTATION_USAGE .DEFINITION
    /// - origin: SUPER( ``eEXPLICIT_COMPOSITE_HOLE`` )
    public var EXPLICIT_SHAPE: SDAI.SET<eITEM_IDENTIFIED_REPRESENTATION_USAGE>/*[0:nil]*/  {
      get {
        return SDAI.UNWRAP( super_eEXPLICIT_COMPOSITE_HOLE.partialEntity._explicit_shape )
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eCOUNTERDRILL_HOLE_DEFINITION`` )
    public var DRILLED_HOLE_DEPTH_TOLERANCE: eTOLERANCE_VALUE?  {
      get {
        return self.partialEntity._drilled_hole_depth_tolerance
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._drilled_hole_depth_tolerance = newValue
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


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_counterdrill_hole_definition.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eCHARACTERIZED_OBJECT.self) else { return nil }
      self.super_eCHARACTERIZED_OBJECT = super1

      guard let super2 = complexEntity?.entityReference(eFEATURE_DEFINITION.self) else { return nil }
      self.super_eFEATURE_DEFINITION = super2

      guard let super3 = complexEntity?.entityReference(eCOMPOUND_FEATURE.self) else { return nil }
      self.super_eCOMPOUND_FEATURE = super3

      guard let super4 = complexEntity?.entityReference(eCOMPOSITE_HOLE.self) else { return nil }
      self.super_eCOMPOSITE_HOLE = super4

      guard let super5 = complexEntity?.entityReference(eEXPLICIT_COMPOSITE_HOLE.self) else { return nil }
      self.super_eEXPLICIT_COMPOSITE_HOLE = super5

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
      result[prefix2 + " .WHERE_wr1"] = _counterdrill_hole_definition.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _counterdrill_hole_definition.WHERE_wr2(SELF: instance)
      result[prefix2 + " .WHERE_wr3"] = _counterdrill_hole_definition.WHERE_wr3(SELF: instance)
      result[prefix2 + " .WHERE_wr4"] = _counterdrill_hole_definition.WHERE_wr4(SELF: instance)
      result[prefix2 + " .WHERE_wr5"] = _counterdrill_hole_definition.WHERE_wr5(SELF: instance)
      result[prefix2 + " .WHERE_wr6"] = _counterdrill_hole_definition.WHERE_wr6(SELF: instance)
      result[prefix2 + " .WHERE_wr7"] = _counterdrill_hole_definition.WHERE_wr7(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "COUNTERDRILL_HOLE_DEFINITION", type: self, explicitAttributeCount: 8)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eCHARACTERIZED_OBJECT.self)
      entityDef.add(supertype: eFEATURE_DEFINITION.self)
      entityDef.add(supertype: eCOMPOUND_FEATURE.self)
      entityDef.add(supertype: eCOMPOSITE_HOLE.self)
      entityDef.add(supertype: eEXPLICIT_COMPOSITE_HOLE.self)
      entityDef.add(supertype: eCOUNTERDRILL_HOLE_DEFINITION.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eCOUNTERDRILL_HOLE_DEFINITION.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "COUNTERDRILL_ANGLE_TOLERANCE", keyPath: \eCOUNTERDRILL_HOLE_DEFINITION.COUNTERDRILL_ANGLE_TOLERANCE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DRILLED_HOLE_DEPTH", keyPath: \eCOUNTERDRILL_HOLE_DEFINITION.DRILLED_HOLE_DEPTH, 
        kind: .explicitOptional, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DRILLED_HOLE_DIAMETER_TOLERANCE", keyPath: \eCOUNTERDRILL_HOLE_DEFINITION.DRILLED_HOLE_DIAMETER_TOLERANCE, 
        kind: .explicitOptional, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "PLACEMENT", keyPath: \eCOUNTERDRILL_HOLE_DEFINITION.PLACEMENT, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "COUNTERDRILL_ANGLE", keyPath: \eCOUNTERDRILL_HOLE_DEFINITION.COUNTERDRILL_ANGLE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "THROUGH_HOLE", keyPath: \eCOUNTERDRILL_HOLE_DEFINITION.THROUGH_HOLE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "COUNTERBORE", keyPath: \eCOUNTERDRILL_HOLE_DEFINITION.COUNTERBORE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DRILLED_HOLE_DIAMETER", keyPath: \eCOUNTERDRILL_HOLE_DEFINITION.DRILLED_HOLE_DIAMETER, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "EXPLICIT_SHAPE", keyPath: \eCOUNTERDRILL_HOLE_DEFINITION.EXPLICIT_SHAPE, 
        kind: .inverse, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DRILLED_HOLE_DEPTH_TOLERANCE", keyPath: \eCOUNTERDRILL_HOLE_DEFINITION.DRILLED_HOLE_DEPTH_TOLERANCE, 
        kind: .explicitOptional, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eCOUNTERDRILL_HOLE_DEFINITION.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}