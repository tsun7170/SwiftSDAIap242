/* file: geometric_tolerance_with_defined_area_unit.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY geometric_tolerance_with_defined_area_unit
    SUBTYPE OF ( geometric_tolerance_with_defined_unit );
      area_type         : area_unit_type;
      second_unit_size  : OPTIONAL length_or_plane_angle_measure_with_unit_select;
    WHERE
      wr1: ( NOT ( EXISTS( second_unit_size ) XOR ( area_type IN [area_unit_type.rectangular, area_unit_type.
               cylindrical, area_unit_type.spherical] ) ) );
      wr2: ( ( NOT ( area_type = area_unit_type.cylindrical ) ) OR ( ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.LENGTH_MEASURE_WITH_UNIT'  IN TYPEOF( 
               unit_size ) ) AND ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'PLANE_ANGLE_MEASURE_WITH_UNIT'  IN TYPEOF( second_unit_size ) ) ) );
      wr3: ( ( NOT ( area_type = area_unit_type.rectangular ) ) OR ( ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.LENGTH_MEASURE_WITH_UNIT'  IN TYPEOF( 
               unit_size ) ) AND ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.LENGTH_MEASURE_WITH_UNIT' 
               IN TYPEOF( second_unit_size ) ) ) );
      wr4: ( ( NOT ( area_type = area_unit_type.spherical ) ) OR ( ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PLANE_ANGLE_MEASURE_WITH_UNIT'  IN TYPEOF( 
               unit_size ) ) AND ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'PLANE_ANGLE_MEASURE_WITH_UNIT'  IN TYPEOF( second_unit_size ) ) ) );
      wr5: ( ( NOT ( area_type = area_unit_type.spherical ) ) OR ( SIZEOF( QUERY ( tz <* USEDIN( SELF, 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.TOLERANCE_ZONE.DEFINING_TOLERANCE'  ) | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ORIENTED_TOLERANCE_ZONE'  IN TYPEOF( tz ) ) ) ) 
               <> 0 ) );
  END_ENTITY; -- geometric_tolerance_with_defined_area_unit (line:16995 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	geometric_tolerance
    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT

    ATTR:  magnitude,	TYPE: OPTIONAL length_measure_with_unit -- EXPLICIT

    ATTR:  toleranced_shape_aspect,	TYPE: geometric_tolerance_target -- EXPLICIT

    ATTR:  controlling_shape,	TYPE: product_definition_shape -- DERIVED
      := sts_get_product_definition_shape( toleranced_shape_aspect )

    ATTR:  id,	TYPE: identifier -- DERIVED
      := get_id_value( SELF )

    ATTR:  auxiliary_classification,	TYPE: SET [0 : ?] OF geometric_tolerance_auxiliary_classification -- INVERSE
      FOR described_item;

    ATTR:  tolerance_relationship,	TYPE: SET [0 : ?] OF geometric_tolerance_relationship -- INVERSE
      FOR relating_geometric_tolerance;


  SUPER- ENTITY(2)	geometric_tolerance_with_defined_unit
    ATTR:  unit_size,	TYPE: length_or_plane_angle_measure_with_unit_select -- EXPLICIT


  ENTITY(SELF)	geometric_tolerance_with_defined_area_unit
    ATTR:  area_type,	TYPE: area_unit_type -- EXPLICIT

    ATTR:  second_unit_size,	TYPE: OPTIONAL length_or_plane_angle_measure_with_unit_select -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _geometric_tolerance_with_defined_area_unit : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eGEOMETRIC_TOLERANCE_WITH_DEFINED_AREA_UNIT.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _area_type: nAREA_UNIT_TYPE // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _second_unit_size: sLENGTH_OR_PLANE_ANGLE_MEASURE_WITH_UNIT_SELECT?  // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sDRAUGHTING_MODEL_ITEM_DEFINITION.typeName)) // -> Self
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._area_type.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._second_unit_size?.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._area_type.value.isValueEqualOptionally(to: rhs._area_type.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._second_unit_size?.value.isValueEqualOptionally(to: rhs._second_unit_size?.value, visited: &comppairs)	{
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
      if let comp = self._area_type.value.isValueEqualOptionally(to: rhs._area_type.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._second_unit_size?.value.isValueEqualOptionally(to: rhs._second_unit_size?.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eGEOMETRIC_TOLERANCE_WITH_DEFINED_AREA_UNIT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.EXISTS(SELF.SECOND_UNIT_SIZE)
      let _TEMP2 = nAREA_UNIT_TYPE.RECTANGULAR
      let _TEMP3 = nAREA_UNIT_TYPE.CYLINDRICAL
      let _TEMP4 = nAREA_UNIT_TYPE.SPHERICAL
      let _TEMP5 = ([SDAI.AIE(_TEMP2), 
        SDAI.AIE(_TEMP3), SDAI.AIE(_TEMP4)] as [SDAI.AggregationInitializerElement<nAREA_UNIT_TYPE>])
      let _TEMP6 = SDAI.aggregate(_TEMP5, contains: SELF.AREA_TYPE)
      let _TEMP7 = _TEMP1 .!=. _TEMP6
      let _TEMP8 =  !_TEMP7
      return _TEMP8
    }
    public static func WHERE_wr2(SELF: eGEOMETRIC_TOLERANCE_WITH_DEFINED_AREA_UNIT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = nAREA_UNIT_TYPE.CYLINDRICAL
      let _TEMP2 = SDAI.FORCE_OPTIONAL(SELF.AREA_TYPE) .==. SDAI.FORCE_OPTIONAL(_TEMP1)
      let _TEMP3 =  !_TEMP2
      let _TEMP4 = SDAI.TYPEOF(SELF.UNIT_SIZE, IS: eLENGTH_MEASURE_WITH_UNIT.self)
      let _TEMP5 = SDAI.TYPEOF(SELF.SECOND_UNIT_SIZE, IS: ePLANE_ANGLE_MEASURE_WITH_UNIT.self)
      let _TEMP6 = _TEMP4 && _TEMP5
      let _TEMP7 = _TEMP3 || _TEMP6
      return _TEMP7
    }
    public static func WHERE_wr3(SELF: eGEOMETRIC_TOLERANCE_WITH_DEFINED_AREA_UNIT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = nAREA_UNIT_TYPE.RECTANGULAR
      let _TEMP2 = SDAI.FORCE_OPTIONAL(SELF.AREA_TYPE) .==. SDAI.FORCE_OPTIONAL(_TEMP1)
      let _TEMP3 =  !_TEMP2
      let _TEMP4 = SDAI.TYPEOF(SELF.UNIT_SIZE, IS: eLENGTH_MEASURE_WITH_UNIT.self)
      let _TEMP5 = SDAI.TYPEOF(SELF.SECOND_UNIT_SIZE, IS: eLENGTH_MEASURE_WITH_UNIT.self)
      let _TEMP6 = _TEMP4 && _TEMP5
      let _TEMP7 = _TEMP3 || _TEMP6
      return _TEMP7
    }
    public static func WHERE_wr4(SELF: eGEOMETRIC_TOLERANCE_WITH_DEFINED_AREA_UNIT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = nAREA_UNIT_TYPE.SPHERICAL
      let _TEMP2 = SDAI.FORCE_OPTIONAL(SELF.AREA_TYPE) .==. SDAI.FORCE_OPTIONAL(_TEMP1)
      let _TEMP3 =  !_TEMP2
      let _TEMP4 = SDAI.TYPEOF(SELF.UNIT_SIZE, IS: ePLANE_ANGLE_MEASURE_WITH_UNIT.self)
      let _TEMP5 = SDAI.TYPEOF(SELF.SECOND_UNIT_SIZE, IS: ePLANE_ANGLE_MEASURE_WITH_UNIT.self)
      let _TEMP6 = _TEMP4 && _TEMP5
      let _TEMP7 = _TEMP3 || _TEMP6
      return _TEMP7
    }
    public static func WHERE_wr5(SELF: eGEOMETRIC_TOLERANCE_WITH_DEFINED_AREA_UNIT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = nAREA_UNIT_TYPE.SPHERICAL
      let _TEMP2 = SDAI.FORCE_OPTIONAL(SELF.AREA_TYPE) .==. SDAI.FORCE_OPTIONAL(_TEMP1)
      let _TEMP3 =  !_TEMP2
      let _TEMP4 = SDAI.USEDIN(T: SELF, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
        .eTOLERANCE_ZONE.DEFINING_TOLERANCE)
      let _TEMP5 = _TEMP4.QUERY{ TZ in 

          let _TEMP1 = SDAI.TYPEOF(TZ, IS: eORIENTED_TOLERANCE_ZONE.self)
          return _TEMP1 }
      let _TEMP6 = SDAI.SIZEOF(_TEMP5)
      let _TEMP7 = _TEMP6 .!=. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      let _TEMP8 = _TEMP3 || _TEMP7
      return _TEMP8
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(AREA_TYPE: nAREA_UNIT_TYPE, SECOND_UNIT_SIZE: sLENGTH_OR_PLANE_ANGLE_MEASURE_WITH_UNIT_SELECT? ) {
      self._area_type = AREA_TYPE
      self._second_unit_size = SECOND_UNIT_SIZE
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: nAREA_UNIT_TYPE.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverOptionalParameter(as: 
        sLENGTH_OR_PLANE_ANGLE_MEASURE_WITH_UNIT_SELECT.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( AREA_TYPE: p0, SECOND_UNIT_SIZE: p1 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY geometric_tolerance_with_defined_area_unit
    SUBTYPE OF ( geometric_tolerance_with_defined_unit );
      area_type         : area_unit_type;
      second_unit_size  : OPTIONAL length_or_plane_angle_measure_with_unit_select;
    WHERE
      wr1: ( NOT ( EXISTS( second_unit_size ) XOR ( area_type IN [area_unit_type.rectangular, area_unit_type.
               cylindrical, area_unit_type.spherical] ) ) );
      wr2: ( ( NOT ( area_type = area_unit_type.cylindrical ) ) OR ( ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.LENGTH_MEASURE_WITH_UNIT'  IN TYPEOF( 
               unit_size ) ) AND ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'PLANE_ANGLE_MEASURE_WITH_UNIT'  IN TYPEOF( second_unit_size ) ) ) );
      wr3: ( ( NOT ( area_type = area_unit_type.rectangular ) ) OR ( ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.LENGTH_MEASURE_WITH_UNIT'  IN TYPEOF( 
               unit_size ) ) AND ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.LENGTH_MEASURE_WITH_UNIT' 
               IN TYPEOF( second_unit_size ) ) ) );
      wr4: ( ( NOT ( area_type = area_unit_type.spherical ) ) OR ( ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PLANE_ANGLE_MEASURE_WITH_UNIT'  IN TYPEOF( 
               unit_size ) ) AND ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'PLANE_ANGLE_MEASURE_WITH_UNIT'  IN TYPEOF( second_unit_size ) ) ) );
      wr5: ( ( NOT ( area_type = area_unit_type.spherical ) ) OR ( SIZEOF( QUERY ( tz <* USEDIN( SELF, 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.TOLERANCE_ZONE.DEFINING_TOLERANCE'  ) | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ORIENTED_TOLERANCE_ZONE'  IN TYPEOF( tz ) ) ) ) 
               <> 0 ) );
  END_ENTITY; -- geometric_tolerance_with_defined_area_unit (line:16995 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eGEOMETRIC_TOLERANCE_WITH_DEFINED_AREA_UNIT : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _geometric_tolerance_with_defined_area_unit.self
    }
    public let partialEntity: _geometric_tolerance_with_defined_area_unit

    //MARK: SUPERTYPES
    public let super_eGEOMETRIC_TOLERANCE: eGEOMETRIC_TOLERANCE 	// [1]
    public let super_eGEOMETRIC_TOLERANCE_WITH_DEFINED_UNIT: eGEOMETRIC_TOLERANCE_WITH_DEFINED_UNIT 	// [2]
    public var super_eGEOMETRIC_TOLERANCE_WITH_DEFINED_AREA_UNIT: eGEOMETRIC_TOLERANCE_WITH_DEFINED_AREA_UNIT { return self } 	// [3]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eGEOMETRIC_TOLERANCE`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        return super_eGEOMETRIC_TOLERANCE.partialEntity._description
      }
      set(newValue) {
        let partial = super_eGEOMETRIC_TOLERANCE.partialEntity
        partial._description = newValue
      }
    }

    /// __INVERSE__ attribute
    /// observing eGEOMETRIC_TOLERANCE_RELATIONSHIP .RELATING_GEOMETRIC_TOLERANCE
    /// - origin: SUPER( ``eGEOMETRIC_TOLERANCE`` )
    public var TOLERANCE_RELATIONSHIP: SDAI.SET<eGEOMETRIC_TOLERANCE_RELATIONSHIP>/*[0:nil]*/  {
      get {
        return SDAI.UNWRAP( super_eGEOMETRIC_TOLERANCE.partialEntity._tolerance_relationship )
      }
    }

    /// __INVERSE__ attribute
    /// observing eGEOMETRIC_TOLERANCE_AUXILIARY_CLASSIFICATION .DESCRIBED_ITEM
    /// - origin: SUPER( ``eGEOMETRIC_TOLERANCE`` )
    public var AUXILIARY_CLASSIFICATION: SDAI.SET<eGEOMETRIC_TOLERANCE_AUXILIARY_CLASSIFICATION>/*[0:nil]*/  {
      get {
        return SDAI.UNWRAP( super_eGEOMETRIC_TOLERANCE.partialEntity._auxiliary_classification )
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eGEOMETRIC_TOLERANCE_WITH_DEFINED_UNIT`` )
    public var UNIT_SIZE: sLENGTH_OR_PLANE_ANGLE_MEASURE_WITH_UNIT_SELECT {
      get {
        return SDAI.UNWRAP( super_eGEOMETRIC_TOLERANCE_WITH_DEFINED_UNIT.partialEntity._unit_size )
      }
      set(newValue) {
        let partial = super_eGEOMETRIC_TOLERANCE_WITH_DEFINED_UNIT.partialEntity
        partial._unit_size = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eGEOMETRIC_TOLERANCE`` )
    public var MAGNITUDE: eLENGTH_MEASURE_WITH_UNIT?  {
      get {
        return super_eGEOMETRIC_TOLERANCE.partialEntity._magnitude
      }
      set(newValue) {
        let partial = super_eGEOMETRIC_TOLERANCE.partialEntity
        partial._magnitude = newValue
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eGEOMETRIC_TOLERANCE`` )
    public var ID: tIDENTIFIER?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"ID") {
          return cached.value as! tIDENTIFIER? 
        }
        let origin = super_eGEOMETRIC_TOLERANCE
        let value = tIDENTIFIER(origin.partialEntity._id__getter(SELF: origin))
        updateCache(derivedAttributeName:"ID", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eGEOMETRIC_TOLERANCE_WITH_DEFINED_AREA_UNIT`` )
    public var AREA_TYPE: nAREA_UNIT_TYPE {
      get {
        return SDAI.UNWRAP( self.partialEntity._area_type )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._area_type = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eGEOMETRIC_TOLERANCE`` )
    public var CONTROLLING_SHAPE: ePRODUCT_DEFINITION_SHAPE?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"CONTROLLING_SHAPE") {
          return cached.value as! ePRODUCT_DEFINITION_SHAPE? 
        }
        let origin = super_eGEOMETRIC_TOLERANCE
        let value = ePRODUCT_DEFINITION_SHAPE(origin.partialEntity._controlling_shape__getter(SELF: origin))
        updateCache(derivedAttributeName:"CONTROLLING_SHAPE", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eGEOMETRIC_TOLERANCE_WITH_DEFINED_AREA_UNIT`` )
    public var SECOND_UNIT_SIZE: sLENGTH_OR_PLANE_ANGLE_MEASURE_WITH_UNIT_SELECT?  {
      get {
        return self.partialEntity._second_unit_size
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._second_unit_size = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eGEOMETRIC_TOLERANCE`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( super_eGEOMETRIC_TOLERANCE.partialEntity._name )
      }
      set(newValue) {
        let partial = super_eGEOMETRIC_TOLERANCE.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eGEOMETRIC_TOLERANCE`` )
    public var TOLERANCED_SHAPE_ASPECT: sGEOMETRIC_TOLERANCE_TARGET {
      get {
        return SDAI.UNWRAP( super_eGEOMETRIC_TOLERANCE.partialEntity._toleranced_shape_aspect )
      }
      set(newValue) {
        let partial = super_eGEOMETRIC_TOLERANCE.partialEntity
        partial._toleranced_shape_aspect = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_geometric_tolerance_with_defined_area_unit.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eGEOMETRIC_TOLERANCE.self) else { return nil }
      self.super_eGEOMETRIC_TOLERANCE = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_TOLERANCE_WITH_DEFINED_UNIT.self) else { return nil }
      self.super_eGEOMETRIC_TOLERANCE_WITH_DEFINED_UNIT = super2

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
      result[prefix2 + " .WHERE_wr1"] = _geometric_tolerance_with_defined_area_unit.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _geometric_tolerance_with_defined_area_unit.WHERE_wr2(SELF: instance)
      result[prefix2 + " .WHERE_wr3"] = _geometric_tolerance_with_defined_area_unit.WHERE_wr3(SELF: instance)
      result[prefix2 + " .WHERE_wr4"] = _geometric_tolerance_with_defined_area_unit.WHERE_wr4(SELF: instance)
      result[prefix2 + " .WHERE_wr5"] = _geometric_tolerance_with_defined_area_unit.WHERE_wr5(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "GEOMETRIC_TOLERANCE_WITH_DEFINED_AREA_UNIT", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eGEOMETRIC_TOLERANCE.self)
      entityDef.add(supertype: eGEOMETRIC_TOLERANCE_WITH_DEFINED_UNIT.self)
      entityDef.add(supertype: eGEOMETRIC_TOLERANCE_WITH_DEFINED_AREA_UNIT.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eGEOMETRIC_TOLERANCE_WITH_DEFINED_AREA_UNIT.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "TOLERANCE_RELATIONSHIP", keyPath: \eGEOMETRIC_TOLERANCE_WITH_DEFINED_AREA_UNIT.TOLERANCE_RELATIONSHIP, 
        kind: .inverse, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "AUXILIARY_CLASSIFICATION", keyPath: \eGEOMETRIC_TOLERANCE_WITH_DEFINED_AREA_UNIT.AUXILIARY_CLASSIFICATION, 
        kind: .inverse, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "UNIT_SIZE", keyPath: \eGEOMETRIC_TOLERANCE_WITH_DEFINED_AREA_UNIT.UNIT_SIZE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "MAGNITUDE", keyPath: \eGEOMETRIC_TOLERANCE_WITH_DEFINED_AREA_UNIT.MAGNITUDE, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ID", keyPath: \eGEOMETRIC_TOLERANCE_WITH_DEFINED_AREA_UNIT.ID, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "AREA_TYPE", keyPath: \eGEOMETRIC_TOLERANCE_WITH_DEFINED_AREA_UNIT.AREA_TYPE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "CONTROLLING_SHAPE", keyPath: \eGEOMETRIC_TOLERANCE_WITH_DEFINED_AREA_UNIT.CONTROLLING_SHAPE, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "SECOND_UNIT_SIZE", keyPath: \eGEOMETRIC_TOLERANCE_WITH_DEFINED_AREA_UNIT.SECOND_UNIT_SIZE, 
        kind: .explicitOptional, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eGEOMETRIC_TOLERANCE_WITH_DEFINED_AREA_UNIT.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "TOLERANCED_SHAPE_ASPECT", keyPath: \eGEOMETRIC_TOLERANCE_WITH_DEFINED_AREA_UNIT.TOLERANCED_SHAPE_ASPECT, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
