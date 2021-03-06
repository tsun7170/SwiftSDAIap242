/* file: gps_filter.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY gps_filter;
      filter_type  : gps_filtration_type;
      filter_data  : LIST [1 : ?] OF measure_with_unit;
    INVERSE
      owner : gps_filtration_specification FOR filter_data -- defined in ENTITY: gps_filtration_specification;
    WHERE
      wr1: ( ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.GEOMETRIC_TOLERANCE_WITH_MODIFIERS' IN 
               TYPEOF( owner\gps_filtration_specification.base_target ) ) ) OR ( SIZEOF( [
               geometric_tolerance_modifier.reference_minimax_feature_without_constraint, 
               geometric_tolerance_modifier.reference_minimax_feature_with_external_material_constraint, 
               geometric_tolerance_modifier.reference_minimax_feature_with_internal_material_constraint, 
               geometric_tolerance_modifier.reference_least_square_feature_without_constraint, 
               geometric_tolerance_modifier.reference_least_square_feature_with_external_material_constraint, 
               geometric_tolerance_modifier.reference_least_square_feature_with_internal_material_constraint, 
               geometric_tolerance_modifier.reference_minimum_circumscribed_feature, 
               geometric_tolerance_modifier.reference_maximum_inscribed_feature, geometric_tolerance_modifier
               .total_range_deviations, geometric_tolerance_modifier.peak_height, 
               geometric_tolerance_modifier.valley_depth, geometric_tolerance_modifier.standard_deviation] * 
               owner\gps_filtration_specification.base_target\geometric_tolerance_with_modifiers.modifiers ) 
               <> 0 ) );
  END_ENTITY; -- gps_filter (line:17313 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  ENTITY(SELF)	gps_filter
    ATTR:  filter_type,	TYPE: gps_filtration_type -- EXPLICIT

    ATTR:  filter_data,	TYPE: LIST [1 : ?] OF measure_with_unit -- EXPLICIT

    ATTR:  owner,	TYPE: gps_filtration_specification -- INVERSE
      FOR filter_data;


*/


//MARK: - Partial Entity
  public final class _gps_filter : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eGPS_FILTER.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _filter_type: sGPS_FILTRATION_TYPE // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _filter_data: SDAI.LIST<eMEASURE_WITH_UNIT>/*[1:nil]*/  // PLAIN EXPLICIT ATTRIBUTE

    /// INVERSE SIMPLE ATTRIBUTE
    /// observing _gps_filtration_specification ._filter_data
    internal private(set) weak var _owner: eGPS_FILTRATION_SPECIFICATION?
    /// INVERSE SIMPLE ATTR SUPPORT(ADDER)
    internal func _owner__observeAddedReference(in complex: SDAI.ComplexEntity) {
      guard let newSource = complex.entityReference(eGPS_FILTRATION_SPECIFICATION.self) else { return }
      self._owner = newSource
    }
    /// INVERSE SIMPLE ATTR SUPPORT(REMOVER)
    internal func _owner__observeRemovedReference(in complex: SDAI.ComplexEntity) {
      guard let _ = complex.entityReference(eGPS_FILTRATION_SPECIFICATION.self) else { return }
      self._owner = nil
    }
    /// INVERSE SIMPLE ATTR SUPPORT(LEAVING REFERENCE OWNER)
    internal func _owner__observe(leavingReferencerOwner complex: SDAI.ComplexEntity) {
      guard let _ = complex.entityReference(eGPS_FILTRATION_SPECIFICATION.self) else { return }
      self._owner = nil
    }

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._filter_type.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._filter_data.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._filter_type.value.isValueEqualOptionally(to: rhs._filter_type.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._filter_data.value.isValueEqualOptionally(to: rhs._filter_data.value, visited: &comppairs)	{
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
      if let comp = self._filter_type.value.isValueEqualOptionally(to: rhs._filter_type.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._filter_data.value.isValueEqualOptionally(to: rhs._filter_data.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eGPS_FILTER?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF.OWNER?.GROUP_REF(eGPS_FILTRATION_SPECIFICATION.self)?.BASE_TARGET, 
        IS: eGEOMETRIC_TOLERANCE_WITH_MODIFIERS.self)
      let _TEMP2 =  !_TEMP1
      let _TEMP3 = nGEOMETRIC_TOLERANCE_MODIFIER.REFERENCE_MINIMAX_FEATURE_WITHOUT_CONSTRAINT
      let _TEMP4 = nGEOMETRIC_TOLERANCE_MODIFIER.REFERENCE_MINIMAX_FEATURE_WITH_EXTERNAL_MATERIAL_CONSTRAINT
      let _TEMP5 = nGEOMETRIC_TOLERANCE_MODIFIER.REFERENCE_MINIMAX_FEATURE_WITH_INTERNAL_MATERIAL_CONSTRAINT
      let _TEMP6 = nGEOMETRIC_TOLERANCE_MODIFIER.REFERENCE_LEAST_SQUARE_FEATURE_WITHOUT_CONSTRAINT
      let _TEMP7 = nGEOMETRIC_TOLERANCE_MODIFIER.REFERENCE_LEAST_SQUARE_FEATURE_WITH_EXTERNAL_MATERIAL_CONSTRAINT
      let _TEMP8 = nGEOMETRIC_TOLERANCE_MODIFIER.REFERENCE_LEAST_SQUARE_FEATURE_WITH_INTERNAL_MATERIAL_CONSTRAINT
      let _TEMP9 = nGEOMETRIC_TOLERANCE_MODIFIER.REFERENCE_MINIMUM_CIRCUMSCRIBED_FEATURE
      let _TEMP10 = nGEOMETRIC_TOLERANCE_MODIFIER.REFERENCE_MAXIMUM_INSCRIBED_FEATURE
      let _TEMP11 = nGEOMETRIC_TOLERANCE_MODIFIER.TOTAL_RANGE_DEVIATIONS
      let _TEMP12 = nGEOMETRIC_TOLERANCE_MODIFIER.PEAK_HEIGHT
      let _TEMP13 = nGEOMETRIC_TOLERANCE_MODIFIER.VALLEY_DEPTH
      let _TEMP14 = nGEOMETRIC_TOLERANCE_MODIFIER.STANDARD_DEVIATION
      let _TEMP15 = ([SDAI.AIE(_TEMP3), 
        SDAI.AIE(_TEMP4), SDAI.AIE(_TEMP5), 
        SDAI.AIE(_TEMP6), SDAI.AIE(_TEMP7), 
        SDAI.AIE(_TEMP8), SDAI.AIE(_TEMP9), 
        SDAI.AIE(_TEMP10), SDAI.AIE(_TEMP11), 
        SDAI.AIE(_TEMP12), SDAI.AIE(_TEMP13), 
        SDAI.AIE(_TEMP14)] as [SDAI.AggregationInitializerElement<nGEOMETRIC_TOLERANCE_MODIFIER>])
      let _TEMP16 = SELF.OWNER?.GROUP_REF(eGPS_FILTRATION_SPECIFICATION.self)
      let _TEMP17 = _TEMP16?.BASE_TARGET
      let _TEMP18 = _TEMP17?.GROUP_REF(eGEOMETRIC_TOLERANCE_WITH_MODIFIERS.self)
      let _TEMP19 = _TEMP18?.MODIFIERS
      let _TEMP20 = SDAI.FORCE_OPTIONAL(_TEMP15) * _TEMP19
      let _TEMP21 = SDAI.SIZEOF(_TEMP20)
      let _TEMP22 = _TEMP21 .!=. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      let _TEMP23 = _TEMP2 || _TEMP22
      return _TEMP23
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(FILTER_TYPE: sGPS_FILTRATION_TYPE, FILTER_DATA: SDAI.LIST<eMEASURE_WITH_UNIT>/*[1:nil]*/ ) {
      self._filter_type = FILTER_TYPE
      self._filter_data = FILTER_DATA
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: sGPS_FILTRATION_TYPE.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: SDAI.LIST<
        eMEASURE_WITH_UNIT>.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( FILTER_TYPE: p0, FILTER_DATA: p1 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY gps_filter;
      filter_type  : gps_filtration_type;
      filter_data  : LIST [1 : ?] OF measure_with_unit;
    INVERSE
      owner : gps_filtration_specification FOR filter_data -- defined in ENTITY: gps_filtration_specification;
    WHERE
      wr1: ( ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.GEOMETRIC_TOLERANCE_WITH_MODIFIERS' IN 
               TYPEOF( owner\gps_filtration_specification.base_target ) ) ) OR ( SIZEOF( [
               geometric_tolerance_modifier.reference_minimax_feature_without_constraint, 
               geometric_tolerance_modifier.reference_minimax_feature_with_external_material_constraint, 
               geometric_tolerance_modifier.reference_minimax_feature_with_internal_material_constraint, 
               geometric_tolerance_modifier.reference_least_square_feature_without_constraint, 
               geometric_tolerance_modifier.reference_least_square_feature_with_external_material_constraint, 
               geometric_tolerance_modifier.reference_least_square_feature_with_internal_material_constraint, 
               geometric_tolerance_modifier.reference_minimum_circumscribed_feature, 
               geometric_tolerance_modifier.reference_maximum_inscribed_feature, geometric_tolerance_modifier
               .total_range_deviations, geometric_tolerance_modifier.peak_height, 
               geometric_tolerance_modifier.valley_depth, geometric_tolerance_modifier.standard_deviation] * 
               owner\gps_filtration_specification.base_target\geometric_tolerance_with_modifiers.modifiers ) 
               <> 0 ) );
  END_ENTITY; -- gps_filter (line:17313 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eGPS_FILTER : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _gps_filter.self
    }
    public let partialEntity: _gps_filter

    //MARK: SUPERTYPES
    public var super_eGPS_FILTER: eGPS_FILTER { return self } 	// [1]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eGPS_FILTER`` )
    public var FILTER_DATA: SDAI.LIST<eMEASURE_WITH_UNIT>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._filter_data )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._filter_data = SDAI.UNWRAP(newValue)
      }
    }

    /// __INVERSE__ attribute
    /// observing eGPS_FILTRATION_SPECIFICATION .FILTER_DATA
    /// - origin: SELF( ``eGPS_FILTER`` )
    public var OWNER: eGPS_FILTRATION_SPECIFICATION?  {
      get {
        return self.partialEntity._owner
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eGPS_FILTER`` )
    public var FILTER_TYPE: sGPS_FILTRATION_TYPE {
      get {
        return SDAI.UNWRAP( self.partialEntity._filter_type )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._filter_type = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_gps_filter.self) else { return nil }
      self.partialEntity = partial

      super.init(complex: complexEntity)
    }

    public required convenience init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let entityRef = generic?.entityReference else { return nil }
      self.init(complex: entityRef.complexEntity)
    }

    public convenience init?<S: SDAISelectType>(_ select: S?) { self.init(possiblyFrom: select) }
    public convenience init?(_ complex: SDAI.ComplexEntity?) { self.init(complex: complex) }

    //SIMPLE ENTITY REFERENCE
    public convenience init?(_ partial:_gps_filter) {
      let complex = SDAI.ComplexEntity(entities:[partial])
      self.init(complex: complex)
    }


    //MARK: WHERE RULE VALIDATION (ENTITY)
    public override class func validateWhereRules(instance:SDAI.EntityReference?, prefix:SDAI.WhereLabel) -> [SDAI.WhereLabel:SDAI.LOGICAL] {
      guard let instance = instance as? Self else { return [:] }

      let prefix2 = prefix + " \(instance)"

      var result = super.validateWhereRules(instance:instance, prefix:prefix2)
      result[prefix2 + " .WHERE_wr1"] = _gps_filter.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "GPS_FILTER", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eGPS_FILTER.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "FILTER_DATA", keyPath: \eGPS_FILTER.FILTER_DATA, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "OWNER", keyPath: \eGPS_FILTER.OWNER, 
        kind: .inverse, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "FILTER_TYPE", keyPath: \eGPS_FILTER.FILTER_TYPE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
